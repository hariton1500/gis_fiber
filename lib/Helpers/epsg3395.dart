import 'dart:math' as math;
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong2/latlong.dart';

class Epsg3395 extends Earth {
  @override
  final String code = 'EPSG:3395';

  @override
  final Projection projection = const Mercator();

  @override
  final Transformation transformation =
      const Transformation(_scale, 0.5, -_scale, 0.5);

  static const num _scale = 0.5 / (math.pi * Mercator.r);

  const Epsg3395() : super();
}

class Mercator extends Projection {
  static const int r = 6378137;
  static const double rMinor = 6356752.314245179;
  static final Bounds<double> _bounds = Bounds<double>(
    const CustomPoint<double>(-20037508.34279, -15496570.73972),
    const CustomPoint<double>(20037508.34279, 18764656.23138),
  );

  const Mercator() : super();

  @override
  Bounds<double> get bounds => _bounds;

  @override
  CustomPoint project(LatLng latlng) {
    var d = math.pi / 180;
    var y = latlng.latitude * d;
    var tmp = rMinor / r;
    var e = math.sqrt(1 - tmp * tmp);
    var con = e * math.sin(y);

    var ts =
        math.tan(math.pi / 4 - y / 2) / math.pow((1 - con) / (1 + con), e / 2);
    y = -r * math.log(math.max(ts, 1E-10));

    return CustomPoint(latlng.longitude * d * r, y);
  }

  @override
  LatLng unproject(CustomPoint point) {
    var d = 180 / math.pi;
    var tmp = rMinor / r;
    var e = math.sqrt(1 - tmp * tmp);
    var ts = math.exp(-point.y / r);
    var phi = math.pi / 2 - 2 * math.atan(ts);

    // ignore: prefer_typing_uninitialized_variables
    for (var i = 0, dphi = 0.1, con; i < 15 && dphi.abs() > 1e-7; i++) {
      con = e * math.sin(phi);
      con = math.pow((1 - con) / (1 + con), e / 2);
      dphi = math.pi / 2 - 2 * math.atan(ts * con) - phi;
      phi += dphi;
    }

    return LatLng(phi * d, point.x * d / r);
  }
}
