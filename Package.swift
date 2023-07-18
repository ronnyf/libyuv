// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "libyuv",
    products: [
        .library(
			name: "libyuv",
			type: .static,
			targets: ["libyuv"]
		),
		.library(
			name: "dylibyuv",
			type:.dynamic,
			targets: ["libyuv"]
		),
    ],
    targets: [
        .target(
            name: "libyuv",
			path: "source",
			sources: [
				"compare.cc",
				"compare_common.cc",
				"compare_gcc.cc",
				"compare_msa.cc",
				"compare_neon.cc",
				"compare_neon64.cc",
				"compare_win.cc",
				"convert.cc",
				"convert_argb.cc",
				"convert_from.cc",
				"convert_from_argb.cc",
				"convert_jpeg.cc",
				"convert_to_argb.cc",
				"convert_to_i420.cc",
				"cpu_id.cc",
				"mjpeg_decoder.cc",
				"mjpeg_validate.cc",
				"planar_functions.cc",
				"rotate.cc",
				"rotate_any.cc",
				"rotate_argb.cc",
				"rotate_common.cc",
				"rotate_gcc.cc",
				"rotate_lsx.cc",
				"rotate_msa.cc",
				"rotate_neon.cc",
				"rotate_neon64.cc",
				"rotate_win.cc",
				"row_any.cc",
				"row_common.cc",
				"row_gcc.cc",
				"row_lasx.cc",
				"row_lsx.cc",
				"row_msa.cc",
				"row_neon.cc",
				"row_neon64.cc",
				"row_rvv.cc",
				"row_win.cc",
				"scale.cc",
				"scale_any.cc",
				"scale_argb.cc",
				"scale_common.cc",
				"scale_gcc.cc",
				"scale_lsx.cc",
				"scale_msa.cc",
				"scale_neon.cc",
				"scale_neon64.cc",
				"scale_rgb.cc",
				"scale_rvv.cc",
				"scale_uv.cc",
				"scale_win.cc",
				"video_common.cc",
			],
			publicHeadersPath: "include"
		)
    ],
	cLanguageStandard: .gnu11,
	cxxLanguageStandard: .gnucxx20
)
