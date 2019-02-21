Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F961E00CE7; Thu, 21 Feb 2019 03:40:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3A2BE00D05
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2019 03:39:59 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x1LBdtBR022796
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 21 Feb 2019 03:39:55 -0800 (PST)
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.435.0;
	Thu, 21 Feb 2019 03:39:54 -0800
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <richard.purdie@linuxfoundation.org>, <mhalstead@linuxfoundation.org>,
	<ross.burton@intel.com>, <raj.khem@gmail.com>,
	<paul.eggleton@linux.intel.com>, <yocto@yoctoproject.org>
Date: Thu, 21 Feb 2019 06:37:13 -0500
Message-ID: <1550749039-67320-8-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
References: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Cc: lpd-cdc-core-dev@windriver.com, Zhangle.Yang@windriver.com
Subject: [meta-tensorflow][PATCH 07/13] Customize Yocto toolchain for cross compiling
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 21 Feb 2019 11:40:01 -0000
Content-Type: text/plain

The idea comes from upstream arm compiler which `Build from
source for the Raspberry Pi'

$ ls <TensorFlow source code>/third_party/toolchains/cpus/arm/
arm_compiler_configure.bzl  BUILD  CROSSTOOL.tpl

https://www.tensorflow.org/install/source_rpi

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 recipes-framework/tensorflow/files/BUILD           |  56 +++++
 .../tensorflow/files/BUILD.yocto_compiler          |  82 ++++++++
 recipes-framework/tensorflow/files/CROSSTOOL.tpl   | 229 +++++++++++++++++++++
 .../tensorflow/files/yocto_compiler_configure.bzl  |  24 +++
 4 files changed, 391 insertions(+)
 create mode 100644 recipes-framework/tensorflow/files/BUILD
 create mode 100644 recipes-framework/tensorflow/files/BUILD.yocto_compiler
 create mode 100644 recipes-framework/tensorflow/files/CROSSTOOL.tpl
 create mode 100644 recipes-framework/tensorflow/files/yocto_compiler_configure.bzl

diff --git a/recipes-framework/tensorflow/files/BUILD b/recipes-framework/tensorflow/files/BUILD
new file mode 100644
index 0000000..fd1f99a
--- /dev/null
+++ b/recipes-framework/tensorflow/files/BUILD
@@ -0,0 +1,56 @@
+package(default_visibility = ["//visibility:public"])
+
+cc_toolchain_suite(
+    name = "toolchain",
+    toolchains = {
+        "armeabi|compiler": ":cc-compiler-armeabi",
+        "local|compiler": ":cc-compiler-local",
+        "armeabi": ":cc-compiler-armeabi",
+        "k8": ":cc-compiler-local",
+        "piii": ":cc-compiler-local",
+        "arm": ":cc-compiler-local",
+        "s390x": ":cc-compiler-local",
+    },
+)
+
+filegroup(
+    name = "empty",
+    srcs = [],
+)
+
+filegroup(
+    name = "arm_linux_all_files",
+    srcs = [
+        "@yocto_compiler//:compiler_pieces",
+    ],
+)
+
+cc_toolchain(
+    name = "cc-compiler-local",
+    all_files = ":empty",
+    compiler_files = ":empty",
+    cpu = "local",
+    dwp_files = ":empty",
+    dynamic_runtime_libs = [":empty"],
+    linker_files = ":empty",
+    objcopy_files = ":empty",
+    static_runtime_libs = [":empty"],
+    strip_files = ":empty",
+    supports_param_files = 1,
+    toolchain_identifier = "local_linux",
+)
+
+cc_toolchain(
+    name = "cc-compiler-armeabi",
+    all_files = ":arm_linux_all_files",
+    compiler_files = ":arm_linux_all_files",
+    cpu = "armeabi",
+    dwp_files = ":empty",
+    dynamic_runtime_libs = [":empty"],
+    linker_files = ":arm_linux_all_files",
+    objcopy_files = "arm_linux_all_files",
+    static_runtime_libs = [":empty"],
+    strip_files = "arm_linux_all_files",
+    supports_param_files = 1,
+    toolchain_identifier = "yocto-linux-gnueabihf",
+)
diff --git a/recipes-framework/tensorflow/files/BUILD.yocto_compiler b/recipes-framework/tensorflow/files/BUILD.yocto_compiler
new file mode 100644
index 0000000..0dd84d3
--- /dev/null
+++ b/recipes-framework/tensorflow/files/BUILD.yocto_compiler
@@ -0,0 +1,82 @@
+package(default_visibility = ['//visibility:public'])
+
+filegroup(
+  name = 'gcc',
+  srcs = [
+    'recipe-sysroot-native/usr/bin/%%CT_NAME%%/%%CT_NAME%%-gcc',
+  ],
+)
+
+filegroup(
+  name = 'ar',
+  srcs = [
+    'recipe-sysroot-native/usr/bin/%%CT_NAME%%/%%CT_NAME%%-ar',
+  ],
+)
+
+filegroup(
+  name = 'ld',
+  srcs = [
+    'recipe-sysroot-native/usr/bin/%%CT_NAME%%/%%CT_NAME%%-ld',
+  ],
+)
+
+filegroup(
+  name = 'nm',
+  srcs = [
+    'recipe-sysroot-native/usr/bin/%%CT_NAME%%/%%CT_NAME%%-nm',
+  ],
+)
+
+filegroup(
+  name = 'objcopy',
+  srcs = [
+    'recipe-sysroot-native/usr/bin/%%CT_NAME%%/%%CT_NAME%%-objcopy',
+  ],
+)
+
+filegroup(
+  name = 'objdump',
+  srcs = [
+    'recipe-sysroot-native/usr/bin/%%CT_NAME%%/%%CT_NAME%%-objdump',
+  ],
+)
+
+filegroup(
+  name = 'strip',
+  srcs = [
+    'recipe-sysroot-native/usr/bin/%%CT_NAME%%/%%CT_NAME%%-strip',
+  ],
+)
+
+filegroup(
+  name = 'as',
+  srcs = [
+    'recipe-sysroot-native/usr/bin/%%CT_NAME%%/%%CT_NAME%%-as',
+  ],
+)
+
+filegroup(
+  name = 'compiler_pieces',
+  srcs = glob([
+    'recipe-sysroot-native/usr/include/**',
+    'recipe-sysroot-native/usr/lib/%%CT_NAME%%/**',
+    'recipe-sysroot-native/usr/lib/%%CT_NAME%%/gcc/**',
+    'recipe-sysroot-native/usr/libexec/%%CT_NAME%%/**',
+    'recipe-sysroot/usr/include/**',
+  ]),
+)
+
+filegroup(
+  name = 'compiler_components',
+  srcs = [
+    ':gcc',
+    ':ar',
+    ':ld',
+    ':nm',
+    ':objcopy',
+    ':objdump',
+    ':strip',
+    ':as',
+  ],
+)
diff --git a/recipes-framework/tensorflow/files/CROSSTOOL.tpl b/recipes-framework/tensorflow/files/CROSSTOOL.tpl
new file mode 100644
index 0000000..296d6a6
--- /dev/null
+++ b/recipes-framework/tensorflow/files/CROSSTOOL.tpl
@@ -0,0 +1,229 @@
+major_version: "local"
+minor_version: ""
+default_target_cpu: "same_as_host"
+
+toolchain {
+  abi_version: "armeabi"
+  abi_libc_version: "armeabi"
+  builtin_sysroot: ""
+  compiler: "compiler"
+  host_system_name: "armeabi"
+  needsPic: true
+  supports_gold_linker: false
+  supports_incremental_linker: false
+  supports_fission: false
+  supports_interface_shared_objects: false
+  supports_normalizing_ar: false
+  supports_start_end_lib: false
+  target_libc: "armeabi"
+  target_cpu: "armeabi"
+  target_system_name: "armeabi"
+  toolchain_identifier: "yocto-linux-gnueabihf"
+
+  tool_path { name: "ar" path:        "%%YOCTO_COMPILER_PATH%%/recipe-sysroot-native/usr/bin/%%CT_NAME%%/%%CT_NAME%%-ar" }
+  tool_path { name: "compat-ld" path: "/bin/false" }
+  tool_path { name: "cpp" path:       "%%YOCTO_COMPILER_PATH%%/recipe-sysroot-native/usr/bin/%%CT_NAME%%/%%CT_NAME%%-cpp" }
+  tool_path { name: "dwp" path:       "%%YOCTO_COMPILER_PATH%%/recipe-sysroot-native/usr/bin/%%CT_NAME%%/%%CT_NAME%%-dwp" }
+  tool_path { name: "gcc" path:       "%%YOCTO_COMPILER_PATH%%/recipe-sysroot-native/usr/bin/%%CT_NAME%%/%%CT_NAME%%-gcc" }
+  tool_path { name: "gcov" path:      "%%YOCTO_COMPILER_PATH%%/recipe-sysroot-native/usr/bin/%%CT_NAME%%/%%CT_NAME%%-gcov" }
+  tool_path { name: "ld" path:        "%%YOCTO_COMPILER_PATH%%/recipe-sysroot-native/usr/bin/%%CT_NAME%%/%%CT_NAME%%-ld" }
+
+  tool_path { name: "nm" path:        "%%YOCTO_COMPILER_PATH%%/recipe-sysroot-native/usr/bin/%%CT_NAME%%/%%CT_NAME%%-nm" }
+  tool_path { name: "objcopy" path:   "%%YOCTO_COMPILER_PATH%%/recipe-sysroot-native/usr/bin/%%CT_NAME%%/%%CT_NAME%%-objcopy" }
+  tool_path { name: "objdump" path:   "%%YOCTO_COMPILER_PATH%%/recipe-sysroot-native/usr/bin/%%CT_NAME%%/%%CT_NAME%%-objdump" }
+  tool_path { name: "strip" path:     "%%YOCTO_COMPILER_PATH%%/recipe-sysroot-native/usr/bin/%%CT_NAME%%/%%CT_NAME%%-strip" }
+
+
+  cxx_builtin_include_directory: "%%YOCTO_COMPILER_PATH%%"
+
+  compiler_flag: "--sysroot=%%YOCTO_COMPILER_PATH%%/recipe-sysroot"
+
+  # The path below must match the one used in
+  # tensorflow/tools/ci_build/pi/build_raspberry_pi.sh.
+  cxx_builtin_include_directory: "/tmp/openblas_install/include/"
+  cxx_flag: "-std=c++11"
+  # The cxx_builtin_include_directory directives don't seem to be adding these, so
+  # explicitly set them as flags. There's a query to the Bazel team outstanding about
+  # why this is necessary.
+  linker_flag: "-lstdc++"
+
+  unfiltered_cxx_flag: "-Wno-builtin-macro-redefined"
+  unfiltered_cxx_flag: "-D__DATE__=\"redacted\""
+  unfiltered_cxx_flag: "-D__TIMESTAMP__=\"redacted\""
+  unfiltered_cxx_flag: "-D__TIME__=\"redacted\""
+
+  unfiltered_cxx_flag: "-no-canonical-prefixes"
+  unfiltered_cxx_flag: "-fno-canonical-system-headers"
+
+  # Include target pyconfig.h
+  compiler_flag: "-D_PYTHON_INCLUDE_TARGET"
+
+  compiler_flag: "-U_FORTIFY_SOURCE"
+  compiler_flag: "-D_FORTIFY_SOURCE=1"
+  compiler_flag: "-fstack-protector"
+  compiler_flag: "-DRASPBERRY_PI"  # To differentiate from mobile builds.
+  linker_flag: "-Wl,-z,relro,-z,now"
+
+  linker_flag: "-no-canonical-prefixes"
+  linker_flag: "-pass-exit-codes"
+
+  linker_flag: "-Wl,--build-id=md5"
+
+  compilation_mode_flags {
+    mode: DBG
+    # Enable debug symbols.
+    compiler_flag: "-g"
+  }
+  compilation_mode_flags {
+    mode: OPT
+
+    # No debug symbols.
+    # Maybe we should enable https://gcc.gnu.org/wiki/DebugFission for opt or
+    # even generally? However, that can't happen here, as it requires special
+    # handling in Bazel.
+    compiler_flag: "-g0"
+
+    # Conservative choice for -O
+    # -O3 can increase binary size and even slow down the resulting binaries.
+    # Profile first and / or use FDO if you need better performance than this.
+    compiler_flag: "-O2"
+
+    # Disable assertions
+    compiler_flag: "-DNDEBUG"
+
+    # Removal of unused code and data at link time (can this increase binary size in some cases?).
+    compiler_flag: "-ffunction-sections"
+    compiler_flag: "-fdata-sections"
+    linker_flag: "-Wl,--gc-sections"
+  }
+  linking_mode_flags { mode: DYNAMIC }
+
+}
+
+toolchain {
+  abi_version: "local"
+  abi_libc_version: "local"
+  builtin_sysroot: ""
+  compiler: "compiler"
+  host_system_name: "local"
+  needsPic: true
+  supports_gold_linker: false
+  supports_incremental_linker: false
+  supports_fission: false
+  supports_interface_shared_objects: false
+  supports_normalizing_ar: false
+  supports_start_end_lib: false
+  target_libc: "local"
+  target_cpu: "local"
+  target_system_name: "local"
+  toolchain_identifier: "local_linux"
+
+  tool_path { name: "ar" path: "/usr/bin/ar" }
+  tool_path { name: "compat-ld" path: "/usr/bin/ld" }
+  tool_path { name: "cpp" path: "/usr/bin/cpp" }
+  tool_path { name: "dwp" path: "/usr/bin/dwp" }
+  tool_path { name: "gcc" path: "/usr/bin/gcc" }
+  cxx_flag: "-std=c++0x"
+  linker_flag: "-lstdc++"
+  linker_flag: "-B/usr/bin/"
+
+  # TODO(bazel-team): In theory, the path here ought to exactly match the path
+  # used by gcc. That works because bazel currently doesn't track files at
+  # absolute locations and has no remote execution, yet. However, this will need
+  # to be fixed, maybe with auto-detection?
+  cxx_builtin_include_directory: "/usr/lib/gcc/"
+  cxx_builtin_include_directory: "/usr/local/include"
+  cxx_builtin_include_directory: "/usr/include"
+  cxx_builtin_include_directory: "%%YOCTO_COMPILER_PATH%%/recipe-sysroot-native/usr/include"
+
+  tool_path { name: "gcov" path: "/usr/bin/gcov" }
+
+  # C(++) compiles invoke the compiler (as that is the one knowing where
+  # to find libraries), but we provide LD so other rules can invoke the linker.
+  tool_path { name: "ld" path: "/usr/bin/ld" }
+
+  tool_path { name: "nm" path: "/usr/bin/nm" }
+  tool_path { name: "objcopy" path: "/usr/bin/objcopy" }
+  objcopy_embed_flag: "-I"
+  objcopy_embed_flag: "binary"
+  tool_path { name: "objdump" path: "/usr/bin/objdump" }
+  tool_path { name: "strip" path: "/usr/bin/strip" }
+
+  # Anticipated future default.
+  unfiltered_cxx_flag: "-no-canonical-prefixes"
+  unfiltered_cxx_flag: "-fno-canonical-system-headers"
+
+  # Make C++ compilation deterministic. Use linkstamping instead of these
+  # compiler symbols.
+  unfiltered_cxx_flag: "-Wno-builtin-macro-redefined"
+  unfiltered_cxx_flag: "-D__DATE__=\"redacted\""
+  unfiltered_cxx_flag: "-D__TIMESTAMP__=\"redacted\""
+  unfiltered_cxx_flag: "-D__TIME__=\"redacted\""
+
+  # Security hardening on by default.
+  # Conservative choice; -D_FORTIFY_SOURCE=2 may be unsafe in some cases.
+  # We need to undef it before redefining it as some distributions now have
+  # it enabled by default.
+  compiler_flag: "-U_FORTIFY_SOURCE"
+  compiler_flag: "-D_FORTIFY_SOURCE=1"
+  compiler_flag: "-fstack-protector"
+  linker_flag: "-Wl,-z,relro,-z,now"
+
+  # Include native pyconfig.h
+  compiler_flag: "-D_PYTHON_INCLUDE_NATIVE"
+
+  # Enable coloring even if there's no attached terminal. Bazel removes the
+  # escape sequences if --nocolor is specified. This isn't supported by gcc
+  # on Ubuntu 14.04.
+  # compiler_flag: "-fcolor-diagnostics"
+
+  # All warnings are enabled. Maybe enable -Werror as well?
+  compiler_flag: "-Wall"
+  # Enable a few more warnings that aren't part of -Wall.
+  compiler_flag: "-Wunused-but-set-parameter"
+  # But disable some that are problematic.
+  compiler_flag: "-Wno-free-nonheap-object" # has false positives
+
+  # Keep stack frames for debugging, even in opt mode.
+  compiler_flag: "-fno-omit-frame-pointer"
+
+  # Anticipated future default.
+  linker_flag: "-no-canonical-prefixes"
+  # Have gcc return the exit code from ld.
+  linker_flag: "-pass-exit-codes"
+  # Stamp the binary with a unique identifier.
+  linker_flag: "-Wl,--build-id=md5"
+  linker_flag: "-Wl,--hash-style=gnu"
+  # Gold linker only? Can we enable this by default?
+  # linker_flag: "-Wl,--warn-execstack"
+  # linker_flag: "-Wl,--detect-odr-violations"
+
+  compilation_mode_flags {
+    mode: DBG
+    # Enable debug symbols.
+    compiler_flag: "-g"
+  }
+  compilation_mode_flags {
+    mode: OPT
+
+    # No debug symbols.
+    # Maybe we should enable https://gcc.gnu.org/wiki/DebugFission for opt or
+    # even generally? However, that can't happen here, as it requires special
+    # handling in Bazel.
+    compiler_flag: "-g0"
+
+    # Conservative choice for -O
+    # -O3 can increase binary size and even slow down the resulting binaries.
+    # Profile first and / or use FDO if you need better performance than this.
+    compiler_flag: "-O2"
+
+    # Disable assertions
+    compiler_flag: "-DNDEBUG"
+
+    # Removal of unused code and data at link time (can this increase binary size in some cases?).
+    compiler_flag: "-ffunction-sections"
+    compiler_flag: "-fdata-sections"
+    linker_flag: "-Wl,--gc-sections"
+  }
+  linking_mode_flags { mode: DYNAMIC }
+}
diff --git a/recipes-framework/tensorflow/files/yocto_compiler_configure.bzl b/recipes-framework/tensorflow/files/yocto_compiler_configure.bzl
new file mode 100644
index 0000000..19c7cd1
--- /dev/null
+++ b/recipes-framework/tensorflow/files/yocto_compiler_configure.bzl
@@ -0,0 +1,24 @@
+# -*- Python -*-
+"""Yocto rule for yocto compiler autoconfiguration."""
+
+def _tpl(repository_ctx, tpl, substitutions={}, out=None):
+  if not out:
+    out = tpl
+  repository_ctx.template(
+      out,
+      Label("//third_party/toolchains/yocto:%s.tpl" % tpl),
+      substitutions)
+
+
+def _yocto_compiler_configure_impl(repository_ctx):
+  _tpl(repository_ctx, "CROSSTOOL")
+  repository_ctx.symlink(repository_ctx.attr.build_file, "BUILD")
+
+
+yocto_compiler_configure = repository_rule(
+    implementation = _yocto_compiler_configure_impl,
+    attrs = {
+        "remote_config_repo": attr.string(mandatory = False, default =""),
+        "build_file": attr.label(),
+    },
+)
-- 
2.8.1


