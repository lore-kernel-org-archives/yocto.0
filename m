Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.7079.1608124169398387373
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Dec 2020 05:09:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=MOF1kj/F;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: hongxu.jia@windriver.com)
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (mail-eopbgr690065.outbound.protection.outlook.com [40.107.69.65])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 3E35238C065D
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2020 13:09:29 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KCVq4mh0oy160hm2kwsFIENBZLVJR/kIgi83yg+QzV+3JSZHo5RGf+CgikEF2jIJT08Mi8wAkrYAUU5nS8WEGeUWK+OaQgOr2zkcaok1cHuzgBwVMVk4sHZMKN1KUs6r18WNyaLTTY2IxB/xYqyEyR1ZH2hSDyLc7pyKS4CoW+F3BDCJY5BUpaBUiVuj1Q58l8K758VqPWt0n0qp8P2jbq8wNgAKaxYdP/Rv71BUWzTBGq7ySncbJdrUArNOJn7GtWMX8PWjE5xq6zMapTIjS12RP7hQLnJgq5XfEWvgbKICpOxCEDCc/j3yNmVu5+E6z88j+WcH88LKhvRgNq+VnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KtDIJgmypukq4jv/qriYNzbLkBR3wQWuN7hWw0Nu7fY=;
 b=JGp3OTSPOoikPjowNGymdCe88EBoxzMGKTTgZkorAZUUW8HrujZWENGy81TEs490OnAyg5Ar3p0J7wpXtlZADFr1Qn07fN7pvCqCh+nlUlax7JR7CkgwmMwtvpvEVw7Yorf633mkE3W9MuGHqIkiZ30F5dslaPf7JzLI9AepCm6ysBhaxK/k/B+RdHI/lZeFgZem7J+uLQ4LUOuOJILzLb5XvVUTiiaFwA3MGrw3FiXb0nAzszStXkU92DF5yiNam7mVHg+JGJ9vZhl61/mYhMmo7sibRpUkHqsIk0OwUo1e4gjwfdB2sd0RaFpfSr9jiFKL08LRXBe9EPH2DSRi/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KtDIJgmypukq4jv/qriYNzbLkBR3wQWuN7hWw0Nu7fY=;
 b=MOF1kj/FHHZAMxnmu8oEt3mADMDdwqhvv1RjEXw0PM4LJXj7ulX+YBXmndL2Iw0l9IV43HmXlOvlXX8q64OAE75PzV0icyaPHfeH252heS++gNRvX//5vjcI+erYb17JcDTivhR+0sD61ItVY89FFjDJenbEfPi8rTvAG6vTRLQ=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB4380.namprd11.prod.outlook.com (2603:10b6:5:14e::20)
 by DM6PR11MB4577.namprd11.prod.outlook.com (2603:10b6:5:2a1::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.20; Wed, 16 Dec
 2020 13:09:28 +0000
Received: from DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8]) by DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8%7]) with mapi id 15.20.3654.017; Wed, 16 Dec 2020
 13:09:28 +0000
From: "hongxu" <hongxu.jia@windriver.com>
To: randy.macleod@windriver.com,
	philip@balister.org,
	akuster808@gmail.com,
	marek.belisko@gmail.com,
	yocto@yoctoproject.org
Subject: [meta-tensorflow][PATCH 19/25] tensorflow: clean up CROSSTOOL.tpl
Date: Wed, 16 Dec 2020 21:08:16 +0800
Message-Id: <20201216130822.28476-20-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.18.2
In-Reply-To: <20201216130822.28476-1-hongxu.jia@windriver.com>
References: <20201216130822.28476-1-hongxu.jia@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR04CA0085.apcprd04.prod.outlook.com
 (2603:1096:202:15::29) To DM6PR11MB4380.namprd11.prod.outlook.com
 (2603:10b6:5:14e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp1.wrs.com (60.247.85.82) by HK2PR04CA0085.apcprd04.prod.outlook.com (2603:1096:202:15::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Wed, 16 Dec 2020 13:09:26 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6dd61442-cb68-443a-f0f4-08d8a1c3d1cf
X-MS-TrafficTypeDiagnostic: DM6PR11MB4577:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB457734EB1E1341E39DC419E394C50@DM6PR11MB4577.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4125;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	qnrQZ2F7Mp14y+doqthD4qjESwK03aKZ8kqwgVLiWLdZOBiCNQSb7QF5QViEduWotbl/vzzX1Mt8ULvCpHQRWc7e4SWiWcMLl6s2WiflkzroqssOTB00nRO5e4KFvh5DvlKSB6A5YegWXYba7aL27sXlfMTBO+evYsCFGTWAHJjnW6CQsPxjHPAxQpbnm2j4Vs5L84YuKrzufmk1TolOILR6Mq6mpqeNbhM5xzwNrCOgEy4C/4tTT0wHu5+5PECZeVT0NArq4XiQ6bkjec4RrUaD0yew6ADjvFJ6TxByNDt9avCmbD9WGcvVw+nt3XnQFJ1H2r/4auSj8+F7p8c177lMxbFMfOrfriLkHdRNGbdcNSGja9IFLYlohaUo4pyREYbmRLNzVlb5WCV2WrtMAQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4380.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(396003)(366004)(346002)(376002)(36756003)(478600001)(2616005)(83380400001)(5660300002)(6512007)(44832011)(6486002)(52116002)(6666004)(30864003)(26005)(186003)(956004)(316002)(66556008)(8936002)(8676002)(966005)(2906002)(6506007)(1076003)(16526019)(86362001)(66476007)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?1EpWVvzCqKLDZOh7tG/TFBjMwt7BhALRDoDXVpMFvZ839LabeLVakc1BDZ0j?=
 =?us-ascii?Q?38L402di2mfUfgjpjk34p5hZNLowX+XWClmOwG5bL+GsPs4EfiVY2/5nWyc1?=
 =?us-ascii?Q?U6fRSMwB8AwHQDJbwZFE3p0YI8mevdIsX9cjN15+ttlfRLRI4KWPPQwKbEh2?=
 =?us-ascii?Q?/7CNo/ikUKDjRrwcFCeb/rTJT72GrtfErlOGPaBMNoTKOn17yXVi0nbeWRo+?=
 =?us-ascii?Q?dujbgj3QqEtjuL6NXAraZ0qoU2yn8ZpqfugE+5jDcNGzCVtl9dFLYXmJENFz?=
 =?us-ascii?Q?hkKJnxLk7kzeYXmGnZpI6O4/xhjrrL613cfzrSypDokv3RroJgxWSmmfiI/K?=
 =?us-ascii?Q?UtCQNCVsopqq5mB2en4PoLakZLR79GlQD7FJGT+lZ/Gvor25eKBIUmnpcV/Z?=
 =?us-ascii?Q?tRxki0Q41+HF1Yc/ynHp1JZK+0b50GEwz5ENu7tgKdbHOaLSK1n9ga8f9Mlb?=
 =?us-ascii?Q?VxZtp+c52sdfLa7ZPGOt9iVoPLY6Ffi9SZ8allFqDSUtYQHKWNV/yMt6ordS?=
 =?us-ascii?Q?E4D35uns1E4LljAX7QBAuYNUzkypdr6MtPUBF0aZz7ydcHDhhBeDP71UZq4r?=
 =?us-ascii?Q?2taHtptdF9v54n9yrcpjJAtXiQCm3zoAH0EyNQW8R4972gIFAul/1xpcuj0j?=
 =?us-ascii?Q?AZBx7fgPV/WYOwXREVnHkayZAuIihg6zGTufABn/zhbFMIZuKPsVmoz22Av0?=
 =?us-ascii?Q?iJLrh8T2SOsWDP0A4wM49uOSRczwQYOJRGNNxUy2WTTXJSynfsjud9r0Kwog?=
 =?us-ascii?Q?+LFrwy2PzEJKvkRn8QvxBoj6etcXtsW32L2AjLRtQasFNRpP50Qz0b/XQo9j?=
 =?us-ascii?Q?VvxBAp3if/f2DXc5SxZlv8/7OgaiCMc6iA4ZejCuKHpBXJ/RY3RFw7xK2bc5?=
 =?us-ascii?Q?/T0+MJYL2xrQLf6/WvMVyJoGGxaBi/NcpeCukqKd7uFmoJlMnyc9sWzylwYh?=
 =?us-ascii?Q?zfINPFer9lzHR24lbkX0IMn5aIRviBeMNmvO53jBEZIwZR0R8g5Gie5TpnRM?=
 =?us-ascii?Q?j/aw?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4380.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2020 13:09:28.2466
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 6dd61442-cb68-443a-f0f4-08d8a1c3d1cf
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rcv0UuVwb+rQsUxLM8cdPDNcCB8f4/p9UjtxqiBbAkMsuSJmdgVrres5wQhQBOmYLOBbHnHG649bCardTyP2121Yi7E0a2oj8CQUCuMFEeA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4577
Content-Type: text/plain

CROSSTOOL files are no longer supported after Bazel v0.26+

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 .../tensorflow/files/CROSSTOOL.tpl            | 230 ------------------
 .../tensorflow/tensorflow_2.4.0.bb            |   3 -
 2 files changed, 233 deletions(-)
 delete mode 100644 recipes-framework/tensorflow/files/CROSSTOOL.tpl

diff --git a/recipes-framework/tensorflow/files/CROSSTOOL.tpl b/recipes-framework/tensorflow/files/CROSSTOOL.tpl
deleted file mode 100644
index 753898a..0000000
--- a/recipes-framework/tensorflow/files/CROSSTOOL.tpl
+++ /dev/null
@@ -1,230 +0,0 @@
-major_version: "local"
-minor_version: ""
-default_target_cpu: "same_as_host"
-
-toolchain {
-  abi_version: "armeabi"
-  abi_libc_version: "armeabi"
-  builtin_sysroot: ""
-  compiler: "compiler"
-  host_system_name: "armeabi"
-  needsPic: true
-  supports_gold_linker: false
-  supports_incremental_linker: false
-  supports_fission: false
-  supports_interface_shared_objects: false
-  supports_normalizing_ar: false
-  supports_start_end_lib: false
-  target_libc: "armeabi"
-  target_cpu: "armeabi"
-  target_system_name: "armeabi"
-  toolchain_identifier: "yocto-linux-gnueabihf"
-
-  tool_path { name: "ar" path:        "%%YOCTO_COMPILER_PATH%%/recipe-sysroot-native/usr/bin/%%CT_NAME%%/%%CT_NAME%%-ar" }
-  tool_path { name: "compat-ld" path: "/bin/false" }
-  tool_path { name: "cpp" path:       "%%YOCTO_COMPILER_PATH%%/recipe-sysroot-native/usr/bin/%%CT_NAME%%/%%CT_NAME%%-cpp" }
-  tool_path { name: "dwp" path:       "%%YOCTO_COMPILER_PATH%%/recipe-sysroot-native/usr/bin/%%CT_NAME%%/%%CT_NAME%%-dwp" }
-  tool_path { name: "gcc" path:       "%%YOCTO_COMPILER_PATH%%/recipe-sysroot-native/usr/bin/%%CT_NAME%%/%%CT_NAME%%-gcc" }
-  tool_path { name: "gcov" path:      "%%YOCTO_COMPILER_PATH%%/recipe-sysroot-native/usr/bin/%%CT_NAME%%/%%CT_NAME%%-gcov" }
-  tool_path { name: "ld" path:        "%%YOCTO_COMPILER_PATH%%/recipe-sysroot-native/usr/bin/%%CT_NAME%%/%%CT_NAME%%-ld" }
-
-  tool_path { name: "nm" path:        "%%YOCTO_COMPILER_PATH%%/recipe-sysroot-native/usr/bin/%%CT_NAME%%/%%CT_NAME%%-nm" }
-  tool_path { name: "objcopy" path:   "%%YOCTO_COMPILER_PATH%%/recipe-sysroot-native/usr/bin/%%CT_NAME%%/%%CT_NAME%%-objcopy" }
-  tool_path { name: "objdump" path:   "%%YOCTO_COMPILER_PATH%%/recipe-sysroot-native/usr/bin/%%CT_NAME%%/%%CT_NAME%%-objdump" }
-  tool_path { name: "strip" path:     "%%YOCTO_COMPILER_PATH%%/recipe-sysroot-native/usr/bin/%%CT_NAME%%/%%CT_NAME%%-strip" }
-
-
-  cxx_builtin_include_directory: "%%YOCTO_COMPILER_PATH%%"
-
-  compiler_flag: "--sysroot=%%YOCTO_COMPILER_PATH%%/recipe-sysroot"
-
-  # The path below must match the one used in
-  # tensorflow/tools/ci_build/pi/build_raspberry_pi.sh.
-  cxx_builtin_include_directory: "/tmp/openblas_install/include/"
-  cxx_flag: "-std=c++11"
-  # The cxx_builtin_include_directory directives don't seem to be adding these, so
-  # explicitly set them as flags. There's a query to the Bazel team outstanding about
-  # why this is necessary.
-  linker_flag: "-lstdc++"
-
-  unfiltered_cxx_flag: "-Wno-builtin-macro-redefined"
-  unfiltered_cxx_flag: "-D__DATE__=\"redacted\""
-  unfiltered_cxx_flag: "-D__TIMESTAMP__=\"redacted\""
-  unfiltered_cxx_flag: "-D__TIME__=\"redacted\""
-
-  unfiltered_cxx_flag: "-no-canonical-prefixes"
-  unfiltered_cxx_flag: "-fno-canonical-system-headers"
-
-  # Include target pyconfig.h
-  compiler_flag: "-D_PYTHON_INCLUDE_TARGET"
-
-  compiler_flag: "-U_FORTIFY_SOURCE"
-  compiler_flag: "-D_FORTIFY_SOURCE=1"
-  compiler_flag: "-fstack-protector"
-  compiler_flag: "-DRASPBERRY_PI"  # To differentiate from mobile builds.
-  linker_flag: "-Wl,-z,relro,-z,now"
-
-  linker_flag: "-no-canonical-prefixes"
-  linker_flag: "-pass-exit-codes"
-
-  linker_flag: "-Wl,--build-id=md5"
-
-  compilation_mode_flags {
-    mode: DBG
-    # Enable debug symbols.
-    compiler_flag: "-g"
-  }
-  compilation_mode_flags {
-    mode: OPT
-
-    # No debug symbols.
-    # Maybe we should enable https://gcc.gnu.org/wiki/DebugFission for opt or
-    # even generally? However, that can't happen here, as it requires special
-    # handling in Bazel.
-    compiler_flag: "-g0"
-
-    # Conservative choice for -O
-    # -O3 can increase binary size and even slow down the resulting binaries.
-    # Profile first and / or use FDO if you need better performance than this.
-    compiler_flag: "-O2"
-
-    # Disable assertions
-    compiler_flag: "-DNDEBUG"
-
-    # Removal of unused code and data at link time (can this increase binary size in some cases?).
-    compiler_flag: "-ffunction-sections"
-    compiler_flag: "-fdata-sections"
-    linker_flag: "-Wl,--gc-sections"
-  }
-  linking_mode_flags { mode: DYNAMIC }
-
-}
-
-toolchain {
-  abi_version: "local"
-  abi_libc_version: "local"
-  builtin_sysroot: ""
-  compiler: "compiler"
-  host_system_name: "local"
-  needsPic: true
-  supports_gold_linker: false
-  supports_incremental_linker: false
-  supports_fission: false
-  supports_interface_shared_objects: false
-  supports_normalizing_ar: false
-  supports_start_end_lib: false
-  target_libc: "local"
-  target_cpu: "local"
-  target_system_name: "local"
-  toolchain_identifier: "local_linux"
-
-  tool_path { name: "ar" path: "/usr/bin/ar" }
-  tool_path { name: "compat-ld" path: "/usr/bin/ld" }
-  tool_path { name: "cpp" path: "/usr/bin/cpp" }
-  tool_path { name: "dwp" path: "/usr/bin/dwp" }
-  tool_path { name: "gcc" path: "/usr/bin/gcc" }
-  cxx_flag: "-std=c++0x"
-  linker_flag: "-lstdc++"
-  linker_flag: "-B/usr/bin/"
-
-  # TODO(bazel-team): In theory, the path here ought to exactly match the path
-  # used by gcc. That works because bazel currently doesn't track files at
-  # absolute locations and has no remote execution, yet. However, this will need
-  # to be fixed, maybe with auto-detection?
-  cxx_builtin_include_directory: "/usr/lib/gcc/"
-  cxx_builtin_include_directory: "/usr/lib64/gcc/"
-  cxx_builtin_include_directory: "/usr/local/include"
-  cxx_builtin_include_directory: "/usr/include"
-  cxx_builtin_include_directory: "%%YOCTO_COMPILER_PATH%%/recipe-sysroot-native/usr/include"
-
-  tool_path { name: "gcov" path: "/usr/bin/gcov" }
-
-  # C(++) compiles invoke the compiler (as that is the one knowing where
-  # to find libraries), but we provide LD so other rules can invoke the linker.
-  tool_path { name: "ld" path: "/usr/bin/ld" }
-
-  tool_path { name: "nm" path: "/usr/bin/nm" }
-  tool_path { name: "objcopy" path: "/usr/bin/objcopy" }
-  objcopy_embed_flag: "-I"
-  objcopy_embed_flag: "binary"
-  tool_path { name: "objdump" path: "/usr/bin/objdump" }
-  tool_path { name: "strip" path: "/usr/bin/strip" }
-
-  # Anticipated future default.
-  unfiltered_cxx_flag: "-no-canonical-prefixes"
-  unfiltered_cxx_flag: "-fno-canonical-system-headers"
-
-  # Make C++ compilation deterministic. Use linkstamping instead of these
-  # compiler symbols.
-  unfiltered_cxx_flag: "-Wno-builtin-macro-redefined"
-  unfiltered_cxx_flag: "-D__DATE__=\"redacted\""
-  unfiltered_cxx_flag: "-D__TIMESTAMP__=\"redacted\""
-  unfiltered_cxx_flag: "-D__TIME__=\"redacted\""
-
-  # Security hardening on by default.
-  # Conservative choice; -D_FORTIFY_SOURCE=2 may be unsafe in some cases.
-  # We need to undef it before redefining it as some distributions now have
-  # it enabled by default.
-  compiler_flag: "-U_FORTIFY_SOURCE"
-  compiler_flag: "-D_FORTIFY_SOURCE=1"
-  compiler_flag: "-fstack-protector"
-  linker_flag: "-Wl,-z,relro,-z,now"
-
-  # Include native pyconfig.h
-  compiler_flag: "-D_PYTHON_INCLUDE_NATIVE"
-
-  # Enable coloring even if there's no attached terminal. Bazel removes the
-  # escape sequences if --nocolor is specified. This isn't supported by gcc
-  # on Ubuntu 14.04.
-  # compiler_flag: "-fcolor-diagnostics"
-
-  # All warnings are enabled. Maybe enable -Werror as well?
-  compiler_flag: "-Wall"
-  # Enable a few more warnings that aren't part of -Wall.
-  compiler_flag: "-Wunused-but-set-parameter"
-  # But disable some that are problematic.
-  compiler_flag: "-Wno-free-nonheap-object" # has false positives
-
-  # Keep stack frames for debugging, even in opt mode.
-  compiler_flag: "-fno-omit-frame-pointer"
-
-  # Anticipated future default.
-  linker_flag: "-no-canonical-prefixes"
-  # Have gcc return the exit code from ld.
-  linker_flag: "-pass-exit-codes"
-  # Stamp the binary with a unique identifier.
-  linker_flag: "-Wl,--build-id=md5"
-  linker_flag: "-Wl,--hash-style=gnu"
-  # Gold linker only? Can we enable this by default?
-  # linker_flag: "-Wl,--warn-execstack"
-  # linker_flag: "-Wl,--detect-odr-violations"
-
-  compilation_mode_flags {
-    mode: DBG
-    # Enable debug symbols.
-    compiler_flag: "-g"
-  }
-  compilation_mode_flags {
-    mode: OPT
-
-    # No debug symbols.
-    # Maybe we should enable https://gcc.gnu.org/wiki/DebugFission for opt or
-    # even generally? However, that can't happen here, as it requires special
-    # handling in Bazel.
-    compiler_flag: "-g0"
-
-    # Conservative choice for -O
-    # -O3 can increase binary size and even slow down the resulting binaries.
-    # Profile first and / or use FDO if you need better performance than this.
-    compiler_flag: "-O2"
-
-    # Disable assertions
-    compiler_flag: "-DNDEBUG"
-
-    # Removal of unused code and data at link time (can this increase binary size in some cases?).
-    compiler_flag: "-ffunction-sections"
-    compiler_flag: "-fdata-sections"
-    linker_flag: "-Wl,--gc-sections"
-  }
-  linking_mode_flags { mode: DYNAMIC }
-}
diff --git a/recipes-framework/tensorflow/tensorflow_2.4.0.bb b/recipes-framework/tensorflow/tensorflow_2.4.0.bb
index af66397..49c868e 100644
--- a/recipes-framework/tensorflow/tensorflow_2.4.0.bb
+++ b/recipes-framework/tensorflow/tensorflow_2.4.0.bb
@@ -9,7 +9,6 @@ SRC_URI += " \
            file://0001-support-32-bit-x64-and-arm-for-yocto.patch \
            file://BUILD.in \
            file://BUILD.yocto_compiler \
-           file://CROSSTOOL.tpl \
            file://cc_config.bzl.tpl \
            file://yocto_compiler_configure.bzl \
           "
@@ -71,7 +70,6 @@ ENDOF
     mkdir -p ${S}/third_party/toolchains/yocto/
     sed "s#%%CPU%%#${BAZEL_TARGET_CPU}#g" ${WORKDIR}/BUILD.in  > ${S}/third_party/toolchains/yocto/BUILD
     chmod 644 ${S}/third_party/toolchains/yocto/BUILD
-    install -m 644 ${WORKDIR}/CROSSTOOL.tpl ${S}/third_party/toolchains/yocto/
     install -m 644 ${WORKDIR}/cc_config.bzl.tpl ${S}/third_party/toolchains/yocto/
     install -m 644 ${WORKDIR}/yocto_compiler_configure.bzl ${S}/third_party/toolchains/yocto/
     install -m 644 ${WORKDIR}/BUILD.yocto_compiler ${S}
@@ -82,7 +80,6 @@ ENDOF
     SED_COMMAND="${SED_COMMAND}; s#%%YOCTO_COMPILER_PATH%%#${BAZEL_OUTPUTBASE_DIR}/external/yocto_compiler#g"
 
     sed -i "${SED_COMMAND}" ${S}/BUILD.yocto_compiler \
-                            ${S}/third_party/toolchains/yocto/CROSSTOOL.tpl \
                             ${S}/WORKSPACE
 
     ${TF_CONFIG} \
-- 
2.21.0

