// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "libyuv",
    products: [
        .library(
			name: "libyuv",
			type: .static,
			targets: ["yuv"]
		),
		.library(
			name: "dylibyuv",
			type:.dynamic,
			targets: ["yuv"]
		),
		.executable(name: "cpuid", targets: ["cpuid"]),
		.executable(name: "yuvconstants", targets: ["yuvconstants"]),
		.executable(name: "yuvconvert", targets: ["yuvconvert"]),
    ],
    targets: [
		.target(
			name: "yuv",
			path: ".",
			sources: [
				"source/compare.cc",
				"source/compare_common.cc",
				"source/compare_gcc.cc",
				"source/compare_win.cc",
				"source/convert.cc",
				"source/convert_argb.cc",
				"source/convert_from.cc",
				"source/convert_from_argb.cc",
				"source/convert_jpeg.cc",
				"source/convert_to_argb.cc",
				"source/convert_to_i420.cc",
				"source/cpu_id.cc",
				"source/mjpeg_decoder.cc",
				"source/mjpeg_validate.cc",
				"source/planar_functions.cc",
				"source/rotate.cc",
				"source/rotate_any.cc",
				"source/rotate_argb.cc",
				"source/rotate_common.cc",
				"source/rotate_gcc.cc",
				"source/rotate_win.cc",
				"source/row_any.cc",
				"source/row_common.cc",
				"source/row_gcc.cc",
				"source/row_rvv.cc",
				"source/row_win.cc",
				"source/scale.cc",
				"source/scale_any.cc",
				"source/scale_argb.cc",
				"source/scale_common.cc",
				"source/scale_gcc.cc",
				"source/scale_rgb.cc",
				"source/scale_rvv.cc",
				"source/scale_uv.cc",
				"source/scale_win.cc",
				"source/video_common.cc",
				// ARM sources
				"source/compare_neon.cc",
				"source/compare_neon64.cc",
				"source/rotate_neon.cc",
				"source/rotate_neon64.cc",
				"source/row_neon.cc",
				"source/row_neon64.cc",
				"source/scale_neon.cc",
				"source/scale_neon64.cc",
			],
			publicHeadersPath: "include"
		),
		.executableTarget(
			name: "cpuid",
			dependencies: ["yuv"],
			path: ".",
			sources: [
				"util/cpuid.c"
			],
			publicHeadersPath: "include"
		),
		.executableTarget(
			name: "yuvconstants",
			dependencies: ["yuv"],
			path: ".",
			sources: [
				"util/yuvconstants.c"
			],
			publicHeadersPath: "include"
		),
		.executableTarget(
			name: "yuvconvert",
			dependencies: ["yuv"],
			path: ".",
			sources: [
				"util/yuvconvert.cc"
			],
			publicHeadersPath: "include"
		)
    ],
	cLanguageStandard: .gnu11,
	cxxLanguageStandard: .gnucxx20
)
