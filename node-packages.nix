# This file has been generated by node2nix 1.11.1. Do not edit!

{nodeEnv, fetchurl, fetchgit, nix-gitignore, stdenv, lib, globalBuildInputs, nativeBuildInputs ? []}:

let
  sources = {
    "color-4.2.3" = {
      name = "color";
      packageName = "color";
      version = "4.2.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/color/-/color-4.2.3.tgz";
        sha512 = "1rXeuUUiGGrykh+CeBdu5Ie7OJwinCgQY0bc7GCRxy5xVHy+moaqkpL/jqQq0MtQOeYcrqEz4abc5f0KtU7W4A==";
      };
    };
    "color-convert-2.0.1" = {
      name = "color-convert";
      packageName = "color-convert";
      version = "2.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/color-convert/-/color-convert-2.0.1.tgz";
        sha512 = "RRECPsj7iu/xb5oKYcsFHSppFNnsj/52OVTRKb4zP5onXwVF3zVmmToNcOfGC+CRDpfK/U584fMg38ZHCaElKQ==";
      };
    };
    "color-name-1.1.4" = {
      name = "color-name";
      packageName = "color-name";
      version = "1.1.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/color-name/-/color-name-1.1.4.tgz";
        sha512 = "dOy+3AuW3a2wNbZHIuMZpTcgjGuLU/uBL/ubcZF9OXbDo8ff4O8yVp5Bf0efS8uEoYo5q4Fx7dY9OgQGXgAsQA==";
      };
    };
    "color-string-1.9.1" = {
      name = "color-string";
      packageName = "color-string";
      version = "1.9.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/color-string/-/color-string-1.9.1.tgz";
        sha512 = "shrVawQFojnZv6xM40anx4CkoDP+fZsw/ZerEMsW/pyzsRbElpsL/DBVW7q3ExxwusdNXI3lXpuhEZkzs8p5Eg==";
      };
    };
    "detect-libc-2.0.3" = {
      name = "detect-libc";
      packageName = "detect-libc";
      version = "2.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/detect-libc/-/detect-libc-2.0.3.tgz";
        sha512 = "bwy0MGW55bG41VqxxypOsdSdGqLwXPI/focwgTYCFMbdUiBAxLg9CFzG08sz2aqzknwiX7Hkl0bQENjg8iLByw==";
      };
    };
    "is-arrayish-0.3.2" = {
      name = "is-arrayish";
      packageName = "is-arrayish";
      version = "0.3.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-arrayish/-/is-arrayish-0.3.2.tgz";
        sha512 = "eVRqCvVlZbuw3GrM63ovNSNAeA1K16kaR/LRY/92w0zxQ5/1YzwblUX652i4Xs9RwAGjW9d9y6X88t8OaAJfWQ==";
      };
    };
    "semver-7.6.2" = {
      name = "semver";
      packageName = "semver";
      version = "7.6.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/semver/-/semver-7.6.2.tgz";
        sha512 = "FNAIBWCx9qcRhoHcgcJ0gvU7SN1lYU2ZXuSfl04bSC5OpvDHFyJCjdNHomPXxjQlCBU67YW64PzY7/VIEH7F2w==";
      };
    };
    "simple-swizzle-0.2.2" = {
      name = "simple-swizzle";
      packageName = "simple-swizzle";
      version = "0.2.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/simple-swizzle/-/simple-swizzle-0.2.2.tgz";
        sha512 = "JA//kQgZtbuY83m+xT+tXJkmJncGMTFT+C+g2h2R9uxkYIrE2yy9sgmcLhCnw57/WSD+Eh3J97FPEDFnbXnDUg==";
      };
    };
  };
in
{
  sharp = nodeEnv.buildNodePackage {
    name = "sharp";
    packageName = "sharp";
    version = "0.33.4";
    src = fetchurl {
      url = "https://registry.npmjs.org/sharp/-/sharp-0.33.4.tgz";
      sha512 = "7i/dt5kGl7qR4gwPRD2biwD2/SvBn3O04J77XKFgL2OnZtQw+AG9wnuS/csmu80nPRHLYE9E41fyEiG8nhH6/Q==";
    };
    dependencies = [
      sources."color-4.2.3"
      sources."color-convert-2.0.1"
      sources."color-name-1.1.4"
      sources."color-string-1.9.1"
      sources."detect-libc-2.0.3"
      sources."is-arrayish-0.3.2"
      sources."semver-7.6.2"
      sources."simple-swizzle-0.2.2"
    ];
    buildInputs = globalBuildInputs;
    meta = {
      description = "High performance Node.js image processing, the fastest module to resize JPEG, PNG, WebP, GIF, AVIF and TIFF images";
      homepage = "https://sharp.pixelplumbing.com";
      license = "Apache-2.0";
    };
    production = true;
    bypassCache = true;
    reconstructLock = true;
  };
}
