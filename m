Return-Path: <scott.murray@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE489C7EE2A
	for <webhook@archiver.kernel.org>; Sun,  7 May 2023 17:17:43 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
 by mx.groups.io with SMTP id smtpd.web11.70040.1683479856416140729
 for <yocto@lists.yoctoproject.org>;
 Sun, 07 May 2023 10:17:40 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@konsulko.com header.s=google header.b=ecIev1JS;
 spf=pass (domain: konsulko.com, ip: 209.85.219.48, mailfrom: scott.murray@konsulko.com)
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-61a80fcc4c9so17443496d6.2
        for <yocto@lists.yoctoproject.org>; Sun, 07 May 2023 10:17:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1683479859; x=1686071859;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WRb2F1f7NVhvFaDF7DD/2pjRyQx2l+lRXSEgAemcA7I=;
        b=ecIev1JSscM363VuAjTG5nDDakhyUWAMpgVdted5KWKPAvLbrziL5PmppY9tVFOiAp
         Uax7xjx9lkiT7bElGP0T2pS8tQULCcBaHXoDRMEtAmMtu+oOR16DoUHiQbMUPzXJQse6
         /le1Y1FaqWj63CNP+DOWx+HJS7wkqgrVxbCNg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683479859; x=1686071859;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WRb2F1f7NVhvFaDF7DD/2pjRyQx2l+lRXSEgAemcA7I=;
        b=HRV25+OXII1gbyKsi3kTGjc0czGaVOnrTcyXrBP+2y09Su6jEOFUPOT9RHX4OsPXTl
         Jm+7a2ewuVTioBzsGrmXcymq0hah5i3yEboq1rA7YlnOFBUtAWeZVzdn8Ok40GbgvDFR
         MHRgcMI4rKdlfZjLSDUKeT8geOcbvNaJ7vWGL6+In2oQuo1n0ynLjS8igBe33RaTTkhD
         tqTUJBLwC9kKjviy5rAP9nIasOjerbaUyrY4ykLV1sM7xJW8f8bmp3KjlBoeR67eeK7B
         nbKwa4Zk3vMJ1bQ+W9POs0wRu0c3Sf/gdtJEYMg8RSmmHhnkT7Hors4TiQD47J8TBNPX
         E1hA==
X-Gm-Message-State: AC+VfDzzfKs9QC25ymh+JEp5EBE0DGrH7n3XMVQuSdj5/g2mTKU+LzC+
	T3KW4RwX/b4RSC/FwOy+fhjwZuR9bFnb55llbV4=
X-Google-Smtp-Source: ACHHUZ7Q5I9BN4kkYpjxiOWivG6q406rD+/S9wQMUab/6K4j/w03TsmN/uyUNsKDXtQdD72dVMioEw==
X-Received: by 2002:a05:6214:1242:b0:5ef:56e4:f630 with SMTP id r2-20020a056214124200b005ef56e4f630mr13546194qvv.41.1683479856650;
        Sun, 07 May 2023 10:17:36 -0700 (PDT)
Received: from ghidorah.spiteful.org (192-0-174-82.cpe.teksavvy.com. [192.0.174.82])
        by smtp.gmail.com with ESMTPSA id o6-20020a05620a130600b0074e4cf13d40sm2012908qkj.57.2023.05.07.10.17.35
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 May 2023 10:17:35 -0700 (PDT)
From: Scott Murray <scott.murray@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-lts-mixins][kirkstone/rust-1.68 RFC v2 PATCH 1/2] Initial check-in
Date: Sun,  7 May 2023 13:17:22 -0400
Message-Id: <f599070293755d2b6f61a452472268ad2fef3747.1683479537.git.scott.murray@konsulko.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1683479537.git.scott.murray@konsulko.com>
References: <cover.1683479537.git.scott.murray@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 07 May 2023 17:17:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59896

Backport Rust 1.68.1 toolchain from oe-core mickledore branch as of
commit 7692dce8, including the updated rust and cargo bbclasses with
the rust-target-config changes added in Langdale.  The newer librsvg
recipe has been backported as well to reduce maintenance effort.
See the README file for more details.

Signed-off-by: Scott Murray <scott.murray@konsulko.com>
---
 LICENSE.MIT                                   |  25 +
 README                                        |  32 ++
 classes/cargo.bbclass                         |  96 ++++
 classes/cargo_common.bbclass                  | 172 +++++++
 classes/python_pyo3.bbclass                   |  36 ++
 classes/rust-common.bbclass                   | 190 ++++++++
 classes/rust-target-config.bbclass            | 433 ++++++++++++++++++
 classes/rust.bbclass                          |  51 +++
 conf/layer.conf                               |  25 +
 .../packagegroup-rust-cross-canadian.bb       |  21 +
 recipes-devtools/rust/README-rust.md          |  38 ++
 recipes-devtools/rust/cargo_1.68.1.bb         |  73 +++
 ...-Do-not-use-LFS64-on-linux-with-musl.patch | 168 +++++++
 .../rust/files/crossbeam_atomic.patch         |  50 ++
 .../rust/files/getrandom-open64.patch         |  46 ++
 .../rust/files/hardcodepaths.patch            |  58 +++
 .../rust/files/target-rust-ccld.c             |  19 +
 .../rust/files/zlib-off64_t.patch             |  31 ++
 recipes-devtools/rust/libstd-rs_1.68.1.bb     |  47 ++
 recipes-devtools/rust/rust-cross-canadian.inc |  85 ++++
 .../rust/rust-cross-canadian_1.68.1.bb        |   2 +
 ...r-sort-ClassInfo-lists-by-name-as-we.patch |  31 ++
 ...-llvm-allow-env-override-of-exe-path.patch |  33 ++
 .../0003-llvm-fix-include-benchmarks.patch    |  25 +
 ...e-64bit-off_t-on-32bit-glibc-systems.patch |  79 ++++
 recipes-devtools/rust/rust-llvm_1.68.1.bb     |  84 ++++
 recipes-devtools/rust/rust-snapshot.inc       |  63 +++
 recipes-devtools/rust/rust-source.inc         |  23 +
 recipes-devtools/rust/rust_1.68.1.bb          | 352 ++++++++++++++
 ...-rust-target-to-cargo-also-when-not-.patch |  47 ++
 ...lib.rs-do-not-probe-into-harcoded-li.patch |  51 +++
 recipes-gnome/librsvg/librsvg_2.54.5.bb       |  77 ++++
 32 files changed, 2563 insertions(+)
 create mode 100644 LICENSE.MIT
 create mode 100644 README
 create mode 100644 classes/cargo.bbclass
 create mode 100644 classes/cargo_common.bbclass
 create mode 100644 classes/python_pyo3.bbclass
 create mode 100644 classes/rust-common.bbclass
 create mode 100644 classes/rust-target-config.bbclass
 create mode 100644 classes/rust.bbclass
 create mode 100644 conf/layer.conf
 create mode 100644 recipes-core/packagegroups/packagegroup-rust-cross-cana=
dian.bb
 create mode 100644 recipes-devtools/rust/README-rust.md
 create mode 100644 recipes-devtools/rust/cargo_1.68.1.bb
 create mode 100644 recipes-devtools/rust/files/0001-Do-not-use-LFS64-on-li=
nux-with-musl.patch
 create mode 100644 recipes-devtools/rust/files/crossbeam_atomic.patch
 create mode 100644 recipes-devtools/rust/files/getrandom-open64.patch
 create mode 100644 recipes-devtools/rust/files/hardcodepaths.patch
 create mode 100644 recipes-devtools/rust/files/target-rust-ccld.c
 create mode 100644 recipes-devtools/rust/files/zlib-off64_t.patch
 create mode 100644 recipes-devtools/rust/libstd-rs_1.68.1.bb
 create mode 100644 recipes-devtools/rust/rust-cross-canadian.inc
 create mode 100644 recipes-devtools/rust/rust-cross-canadian_1.68.1.bb
 create mode 100644 recipes-devtools/rust/rust-llvm/0001-AsmMatcherEmitter-=
sort-ClassInfo-lists-by-name-as-we.patch
 create mode 100644 recipes-devtools/rust/rust-llvm/0002-llvm-allow-env-ove=
rride-of-exe-path.patch
 create mode 100644 recipes-devtools/rust/rust-llvm/0003-llvm-fix-include-b=
enchmarks.patch
 create mode 100644 recipes-devtools/rust/rust-llvm/0035-cmake-Enable-64bit=
-off_t-on-32bit-glibc-systems.patch
 create mode 100644 recipes-devtools/rust/rust-llvm_1.68.1.bb
 create mode 100644 recipes-devtools/rust/rust-snapshot.inc
 create mode 100644 recipes-devtools/rust/rust-source.inc
 create mode 100644 recipes-devtools/rust/rust_1.68.1.bb
 create mode 100644 recipes-gnome/librsvg/librsvg/0001-Makefile.am-pass-rus=
t-target-to-cargo-also-when-not-.patch
 create mode 100644 recipes-gnome/librsvg/librsvg/0001-system-deps-src-lib.=
rs-do-not-probe-into-harcoded-li.patch
 create mode 100644 recipes-gnome/librsvg/librsvg_2.54.5.bb

diff --git a/LICENSE.MIT b/LICENSE.MIT
new file mode 100644
index 0000000..a6919eb
--- /dev/null
+++ b/LICENSE.MIT
@@ -0,0 +1,25 @@
+Permission is hereby granted, free of charge, to any person obtaining a co=
py
+of this software and associated documentation files (the "Software"), to d=
eal
+in the Software without restriction, including without limitation the righ=
ts
+to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
+copies of the Software, and to permit persons to whom the Software is
+furnished to do so, subject to the following conditions:
+
+The above copyright notice and this permission notice shall be included in
+all copies or substantial portions of the Software.
+
+THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
+AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FR=
OM,
+OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN =
THE
+SOFTWARE.
+
+Note:
+Individual files contain the following tag instead of the full license tex=
t.
+
+    SPDX-License-Identifier: MIT
+
+This enables machine processing of license information based on the SPDX
+License Identifiers that are here available: http://spdx.org/licenses/
diff --git a/README b/README
new file mode 100644
index 0000000..d7afefa
--- /dev/null
+++ b/README
@@ -0,0 +1,32 @@
+"Mixin" layer for adding Rust 1.68.x toolchain into the Yocto Project LTS.
+
+At the time Kirkstone was released in May 2022 it included Rust 1.59.0,
+and officially Kirkstone supports only that. This thin special-purpose
+mixin layer is meant to provide a working Rust 1.68.x toolchain for
+Kirkstone by backporting the appropriate recipes from the mickledore
+branch of openembedded-core.
+
+Notes:
+- cargo-update-recipe-crates.bbclass has been left out of the backport
+  since it would bump the Python requirement to 3.10, and that is a
+  bigger can of worms than this mixin attempts to address.  It is
+  recommended that recipe crates .inc files are updated using a newer
+  YP release and backported.
+- The newer version of librsvg from mickledore has been backported since
+  there is not a straightforward way to update the existing one via
+  bbappend.  Backporting a working recipe should be easier to maintain
+  than developing an update of the older recipe in kirkstone.  There are
+  no breaking API changes mentioned in the librsvg release notes between
+  the two versions.
+- python3-cryptography has been left alone since the recipe in kirkstone
+  still works with the newer toolchain, and updating it seems to have
+  more potential impact due to upstream API changes and its known to be
+  finicky build.  This may change if sufficient rationale for doing the
+  backport becomes apparent.
+- The intent is to just track any further 1.68.x upgrades that occur in
+  the mickledore branch of oe-core.  Supporting newer versions of Rust
+  or trying to support more than one version of Rust should use a
+  different mixin layer.
+
+Maintainers:
+Scott Murray <scott.murray@konsulko.com>
diff --git a/classes/cargo.bbclass b/classes/cargo.bbclass
new file mode 100644
index 0000000..7a8cc1e
--- /dev/null
+++ b/classes/cargo.bbclass
@@ -0,0 +1,96 @@
+#
+# Copyright OpenEmbedded Contributors
+#
+# SPDX-License-Identifier: MIT
+#
+
+##
+## Purpose:
+## This class is used by any recipes that are built using
+## Cargo.
+
+inherit cargo_common
+inherit rust-target-config
+
+# the binary we will use
+CARGO =3D "cargo"
+
+# We need cargo to compile for the target
+BASEDEPENDS:append =3D " cargo-native"
+
+# Ensure we get the right rust variant
+DEPENDS:append:class-target =3D " rust-native ${RUSTLIB_DEP}"
+DEPENDS:append:class-nativesdk =3D " rust-native ${RUSTLIB_DEP}"
+DEPENDS:append:class-native =3D " rust-native"
+
+# Enable build separation
+B =3D "${WORKDIR}/build"
+
+# In case something fails in the build process, give a bit more feedback on
+# where the issue occured
+export RUST_BACKTRACE =3D "1"
+
+# The directory of the Cargo.toml relative to the root directory, per defa=
ult
+# assume there's a Cargo.toml directly in the root directory
+CARGO_SRC_DIR ??=3D ""
+
+# The actual path to the Cargo.toml
+MANIFEST_PATH ??=3D "${S}/${CARGO_SRC_DIR}/Cargo.toml"
+
+RUSTFLAGS ??=3D ""
+BUILD_MODE =3D "${@['--release', ''][d.getVar('DEBUG_BUILD') =3D=3D '1']}"
+CARGO_BUILD_FLAGS =3D "-v --offline --target ${RUST_HOST_SYS} ${BUILD_MODE=
} --manifest-path=3D${MANIFEST_PATH}"
+
+# This is based on the content of CARGO_BUILD_FLAGS and generally will nee=
d to
+# change if CARGO_BUILD_FLAGS changes.
+BUILD_DIR =3D "${@['release', 'debug'][d.getVar('DEBUG_BUILD') =3D=3D '1']=
}"
+CARGO_TARGET_SUBDIR=3D"${RUST_HOST_SYS}/${BUILD_DIR}"
+oe_cargo_build () {
+	export RUSTFLAGS=3D"${RUSTFLAGS}"
+	bbnote "Using rust targets from ${RUST_TARGET_PATH}"
+	bbnote "cargo =3D $(which ${CARGO})"
+	bbnote "${CARGO} build ${CARGO_BUILD_FLAGS} $@"
+	"${CARGO}" build ${CARGO_BUILD_FLAGS} "$@"
+}
+
+do_compile[progress] =3D "outof:\s+(\d+)/(\d+)"
+cargo_do_compile () {
+	oe_cargo_fix_env
+	oe_cargo_build
+}
+
+cargo_do_install () {
+	local have_installed=3Dfalse
+	for tgt in "${B}/target/${CARGO_TARGET_SUBDIR}/"*; do
+		case $tgt in
+		*.so|*.rlib)
+			install -d "${D}${rustlibdir}"
+			install -m755 "$tgt" "${D}${rustlibdir}"
+			have_installed=3Dtrue
+			;;
+		*examples)
+			if [ -d "$tgt" ]; then
+				for example in "$tgt/"*; do
+					if [ -f "$example" ] && [ -x "$example" ]; then
+						install -d "${D}${bindir}"
+						install -m755 "$example" "${D}${bindir}"
+						have_installed=3Dtrue
+					fi
+				done
+			fi
+			;;
+		*)
+			if [ -f "$tgt" ] && [ -x "$tgt" ]; then
+				install -d "${D}${bindir}"
+				install -m755 "$tgt" "${D}${bindir}"
+				have_installed=3Dtrue
+			fi
+			;;
+		esac
+	done
+	if ! $have_installed; then
+		die "Did not find anything to install"
+	fi
+}
+
+EXPORT_FUNCTIONS do_compile do_install
diff --git a/classes/cargo_common.bbclass b/classes/cargo_common.bbclass
new file mode 100644
index 0000000..82ab25b
--- /dev/null
+++ b/classes/cargo_common.bbclass
@@ -0,0 +1,172 @@
+#
+# Copyright OpenEmbedded Contributors
+#
+# SPDX-License-Identifier: MIT
+#
+
+##
+## Purpose:
+## This class is to support building with cargo. It
+## must be different than cargo.bbclass because Rust
+## now builds with Cargo but cannot use cargo.bbclass
+## due to dependencies and assumptions in cargo.bbclass
+## that Rust & Cargo are already installed. So this
+## is used by cargo.bbclass and Rust
+##
+
+# add crate fetch support
+inherit rust-common
+
+# Where we download our registry and dependencies to
+export CARGO_HOME =3D "${WORKDIR}/cargo_home"
+
+# The pkg-config-rs library used by cargo build scripts disables itself wh=
en
+# cross compiling unless this is defined. We set up pkg-config appropriate=
ly
+# for cross compilation, so tell it we know better than it.
+export PKG_CONFIG_ALLOW_CROSS =3D "1"
+
+# Don't instruct cargo to use crates downloaded by bitbake. Some rust pack=
ages,
+# for example the rust compiler itself, come with their own vendored sourc=
es.
+# Specifying two [source.crates-io] will not work.
+CARGO_DISABLE_BITBAKE_VENDORING ?=3D "0"
+
+# Used by libstd-rs to point to the vendor dir included in rustc src
+CARGO_VENDORING_DIRECTORY ?=3D "${CARGO_HOME}/bitbake"
+
+CARGO_RUST_TARGET_CCLD ?=3D "${RUST_TARGET_CCLD}"
+cargo_common_do_configure () {
+	mkdir -p ${CARGO_HOME}/bitbake
+
+	cat <<- EOF > ${CARGO_HOME}/config
+	# EXTRA_OECARGO_PATHS
+	paths =3D [
+	$(for p in ${EXTRA_OECARGO_PATHS}; do echo \"$p\",; done)
+	]
+	EOF
+
+	cat <<- EOF >> ${CARGO_HOME}/config
+
+	# Local mirror vendored by bitbake
+	[source.bitbake]
+	directory =3D "${CARGO_VENDORING_DIRECTORY}"
+	EOF
+
+	if [ ${CARGO_DISABLE_BITBAKE_VENDORING} =3D "0" ]; then
+		cat <<- EOF >> ${CARGO_HOME}/config
+
+		[source.crates-io]
+		replace-with =3D "bitbake"
+		local-registry =3D "/nonexistent"
+		EOF
+	fi
+
+	cat <<- EOF >> ${CARGO_HOME}/config
+
+	[http]
+	# Multiplexing can't be enabled because http2 can't be enabled
+	# in curl-native without dependency loops
+	multiplexing =3D false
+
+	# Ignore the hard coded and incorrect path to certificates
+	cainfo =3D "${STAGING_ETCDIR_NATIVE}/ssl/certs/ca-certificates.crt"
+
+	EOF
+
+	cat <<- EOF >> ${CARGO_HOME}/config
+
+	# HOST_SYS
+	[target.${RUST_HOST_SYS}]
+	linker =3D "${CARGO_RUST_TARGET_CCLD}"
+	EOF
+
+	if [ "${RUST_HOST_SYS}" !=3D "${RUST_BUILD_SYS}" ]; then
+		cat <<- EOF >> ${CARGO_HOME}/config
+
+		# BUILD_SYS
+		[target.${RUST_BUILD_SYS}]
+		linker =3D "${RUST_BUILD_CCLD}"
+		EOF
+	fi
+
+	if [ "${RUST_TARGET_SYS}" !=3D "${RUST_BUILD_SYS}" -a "${RUST_TARGET_SYS}=
" !=3D "${RUST_HOST_SYS}" ]; then
+		cat <<- EOF >> ${CARGO_HOME}/config
+
+		# TARGET_SYS
+		[target.${RUST_TARGET_SYS}]
+		linker =3D "${RUST_TARGET_CCLD}"
+		EOF
+	fi
+
+	# Put build output in build directory preferred by bitbake instead of
+	# inside source directory unless they are the same
+	if [ "${B}" !=3D "${S}" ]; then
+		cat <<- EOF >> ${CARGO_HOME}/config
+
+		[build]
+		# Use out of tree build destination to avoid polluting the source tree
+		target-dir =3D "${B}/target"
+		EOF
+	fi
+
+	cat <<- EOF >> ${CARGO_HOME}/config
+
+	[term]
+	progress.when =3D 'always'
+	progress.width =3D 80
+	EOF
+}
+
+python cargo_common_do_patch_paths() {
+    cargo_config =3D os.path.join(d.getVar("CARGO_HOME"), "config")
+    if not os.path.exists(cargo_config):
+        return
+
+    src_uri =3D (d.getVar('SRC_URI') or "").split()
+    if len(src_uri) =3D=3D 0:
+        return
+
+    patches =3D dict()
+    workdir =3D d.getVar('WORKDIR')
+    fetcher =3D bb.fetch2.Fetch(src_uri, d)
+    for url in fetcher.urls:
+        ud =3D fetcher.ud[url]
+        if ud.type =3D=3D 'git':
+            name =3D ud.parm.get('name')
+            destsuffix =3D ud.parm.get('destsuffix')
+            if name is not None and destsuffix is not None:
+                if ud.user:
+                    repo =3D '%s://%s@%s%s' % (ud.proto, ud.user, ud.host,=
 ud.path)
+                else:
+                    repo =3D '%s://%s%s' % (ud.proto, ud.host, ud.path)
+                path =3D '%s =3D { path =3D "%s" }' % (name, os.path.join(=
workdir, destsuffix))
+                patches.setdefault(repo, []).append(path)
+
+    with open(cargo_config, "a+") as config:
+        for k, v in patches.items():
+            print('\n[patch."%s"]' % k, file=3Dconfig)
+            for name in v:
+                print(name, file=3Dconfig)
+}
+do_configure[postfuncs] +=3D "cargo_common_do_patch_paths"
+
+oe_cargo_fix_env () {
+	export CC=3D"${RUST_TARGET_CC}"
+	export CXX=3D"${RUST_TARGET_CXX}"
+	export CFLAGS=3D"${CFLAGS}"
+	export CXXFLAGS=3D"${CXXFLAGS}"
+	export AR=3D"${AR}"
+	export TARGET_CC=3D"${RUST_TARGET_CC}"
+	export TARGET_CXX=3D"${RUST_TARGET_CXX}"
+	export TARGET_CFLAGS=3D"${CFLAGS}"
+	export TARGET_CXXFLAGS=3D"${CXXFLAGS}"
+	export TARGET_AR=3D"${AR}"
+	export HOST_CC=3D"${RUST_BUILD_CC}"
+	export HOST_CXX=3D"${RUST_BUILD_CXX}"
+	export HOST_CFLAGS=3D"${BUILD_CFLAGS}"
+	export HOST_CXXFLAGS=3D"${BUILD_CXXFLAGS}"
+	export HOST_AR=3D"${BUILD_AR}"
+}
+
+EXTRA_OECARGO_PATHS ??=3D ""
+
+EXPORT_FUNCTIONS do_configure
diff --git a/classes/python_pyo3.bbclass b/classes/python_pyo3.bbclass
new file mode 100644
index 0000000..9a32eac
--- /dev/null
+++ b/classes/python_pyo3.bbclass
@@ -0,0 +1,36 @@
+#
+# Copyright OpenEmbedded Contributors
+#
+# SPDX-License-Identifier: MIT
+#
+
+#
+# This class helps make sure that Python extensions built with PyO3
+# and setuptools_rust properly set up the environment for cross compilation
+#
+
+inherit cargo python3-dir siteinfo
+
+export PYO3_CROSS=3D"1"
+export PYO3_CROSS_PYTHON_VERSION=3D"${PYTHON_BASEVERSION}"
+export PYO3_CROSS_LIB_DIR=3D"${STAGING_LIBDIR}"
+export CARGO_BUILD_TARGET=3D"${RUST_HOST_SYS}"
+export RUSTFLAGS
+export PYO3_PYTHON=3D"${PYTHON}"
+export PYO3_CONFIG_FILE=3D"${WORKDIR}/pyo3.config"
+
+python_pyo3_do_configure () {
+    cat > ${WORKDIR}/pyo3.config << EOF
+implementation=3DCPython
+version=3D${PYTHON_BASEVERSION}
+shared=3Dtrue
+abi3=3Dfalse
+lib_name=3D${PYTHON_DIR}
+lib_dir=3D${STAGING_LIBDIR}
+pointer_width=3D${SITEINFO_BITS}
+build_flags=3DWITH_THREAD
+suppress_build_script_link_lines=3Dfalse
+EOF
+}
+
+EXPORT_FUNCTIONS do_configure
diff --git a/classes/rust-common.bbclass b/classes/rust-common.bbclass
new file mode 100644
index 0000000..e0cedd7
--- /dev/null
+++ b/classes/rust-common.bbclass
@@ -0,0 +1,190 @@
+#
+# Copyright OpenEmbedded Contributors
+#
+# SPDX-License-Identifier: MIT
+#
+
+inherit python3native
+inherit rust-target-config
+
+# Common variables used by all Rust builds
+export rustlibdir =3D "${libdir}/rustlib/${RUST_HOST_SYS}/lib"
+FILES:${PN} +=3D "${rustlibdir}/*.so"
+FILES:${PN}-dev +=3D "${rustlibdir}/*.rlib ${rustlibdir}/*.rmeta"
+FILES:${PN}-dbg +=3D "${rustlibdir}/.debug"
+
+RUSTLIB =3D "-L ${STAGING_DIR_HOST}${rustlibdir}"
+RUST_DEBUG_REMAP =3D "--remap-path-prefix=3D${WORKDIR}=3D/usr/src/debug/${=
PN}/${EXTENDPE}${PV}-${PR}"
+RUSTFLAGS +=3D "${RUSTLIB} ${RUST_DEBUG_REMAP}"
+RUSTLIB_DEP ?=3D "libstd-rs"
+RUST_PANIC_STRATEGY ?=3D "unwind"
+
+def target_is_armv7(d):
+    '''Determine if target is armv7'''
+    # TUNE_FEATURES may include arm* even if the target is not arm
+    # in the case of *-native packages
+    if d.getVar('TARGET_ARCH') !=3D 'arm':
+        return False
+
+    feat =3D d.getVar('TUNE_FEATURES')
+    feat =3D frozenset(feat.split())
+    mach_overrides =3D d.getVar('MACHINEOVERRIDES')
+    mach_overrides =3D frozenset(mach_overrides.split(':'))
+
+    v7=3Dfrozenset(['armv7a', 'armv7r', 'armv7m', 'armv7ve'])
+    if mach_overrides.isdisjoint(v7) and feat.isdisjoint(v7):
+        return False
+    else:
+        return True
+target_is_armv7[vardepvalue] =3D "${@target_is_armv7(d)}"
+
+# Responsible for taking Yocto triples and converting it to Rust triples
+def rust_base_triple(d, thing):
+    '''
+    Mangle bitbake's *_SYS into something that rust might support (see
+    rust/mk/cfg/* for a list)
+
+    Note that os is assumed to be some linux form
+    '''
+
+    # The llvm-target for armv7 is armv7-unknown-linux-gnueabihf
+    if d.getVar('{}_ARCH'.format(thing)) =3D=3D d.getVar('TARGET_ARCH') an=
d target_is_armv7(d):
+        arch =3D "armv7"
+    else:
+        arch =3D oe.rust.arch_to_rust_arch(d.getVar('{}_ARCH'.format(thing=
)))
+
+    # Substituting "unknown" when vendor is empty will match rust's standa=
rd
+    # targets when building native recipes (including rust-native itself)
+    vendor =3D d.getVar('{}_VENDOR'.format(thing)) or "-unknown"
+
+    # Default to glibc
+    libc =3D "-gnu"
+    os =3D d.getVar('{}_OS'.format(thing))
+    # This catches ARM targets and appends the necessary hard float bits
+    if os =3D=3D "linux-gnueabi" or os =3D=3D "linux-musleabi":
+        libc =3D bb.utils.contains('TUNE_FEATURES', 'callconvention-hard',=
 'hf', '', d)
+    elif "musl" in os:
+        libc =3D "-musl"
+        os =3D "linux"
+    elif "elf" in os:
+        libc =3D "-elf"
+        os =3D "none"
+    elif "eabi" in os:
+        libc =3D "-eabi"
+        os =3D "none"
+
+    return arch + vendor + '-' + os + libc
+
+
+# In some cases uname and the toolchain differ on their idea of the arch n=
ame
+RUST_BUILD_ARCH =3D "${@oe.rust.arch_to_rust_arch(d.getVar('BUILD_ARCH'))}"
+
+# Naming explanation
+# Yocto
+# - BUILD_SYS - Yocto triple of the build environment
+# - HOST_SYS - What we're building for in Yocto
+# - TARGET_SYS - What we're building for in Yocto
+#
+# So when building '-native' packages BUILD_SYS =3D=3D HOST_SYS =3D=3D TAR=
GET_SYS
+# When building packages for the image HOST_SYS =3D=3D TARGET_SYS
+# This is a gross over simplification as there are other modes but
+# currently this is all that's supported.
+#
+# Rust
+# - TARGET - the system where the binary will run
+# - HOST - the system where the binary is being built
+#
+# Rust additionally will use two additional cases:
+# - undecorated (e.g. CC) - equivalent to TARGET
+# - triple suffix (e.g. CC:x86_64_unknown_linux_gnu) - both
+#   see: https://github.com/rust-lang/cc-rs
+# The way that Rust's internal triples and Yocto triples are mapped togeth=
er
+# its likely best to not use the triple suffix due to potential confusion.
+
+RUST_BUILD_SYS =3D "${@rust_base_triple(d, 'BUILD')}"
+RUST_BUILD_SYS[vardepvalue] =3D "${RUST_BUILD_SYS}"
+RUST_HOST_SYS =3D "${@rust_base_triple(d, 'HOST')}"
+RUST_HOST_SYS[vardepvalue] =3D "${RUST_HOST_SYS}"
+RUST_TARGET_SYS =3D "${@rust_base_triple(d, 'TARGET')}"
+RUST_TARGET_SYS[vardepvalue] =3D "${RUST_TARGET_SYS}"
+
+# wrappers to get around the fact that Rust needs a single
+# binary but Yocto's compiler and linker commands have
+# arguments. Technically the archiver is always one command but
+# this is necessary for builds that determine the prefix and then
+# use those commands based on the prefix.
+WRAPPER_DIR =3D "${WORKDIR}/wrapper"
+RUST_BUILD_CC =3D "${WRAPPER_DIR}/build-rust-cc"
+RUST_BUILD_CXX =3D "${WRAPPER_DIR}/build-rust-cxx"
+RUST_BUILD_CCLD =3D "${WRAPPER_DIR}/build-rust-ccld"
+RUST_BUILD_AR =3D "${WRAPPER_DIR}/build-rust-ar"
+RUST_TARGET_CC =3D "${WRAPPER_DIR}/target-rust-cc"
+RUST_TARGET_CXX =3D "${WRAPPER_DIR}/target-rust-cxx"
+RUST_TARGET_CCLD =3D "${WRAPPER_DIR}/target-rust-ccld"
+RUST_TARGET_AR =3D "${WRAPPER_DIR}/target-rust-ar"
+
+create_wrapper_rust () {
+	file=3D"$1"
+	shift
+	extras=3D"$1"
+	shift
+	crate_cc_extras=3D"$1"
+	shift
+
+	cat <<- EOF > "${file}"
+	#!/usr/bin/env python3
+	import os, sys
+	orig_binary =3D "$@"
+	extras =3D "${extras}"
+
+	# Apply a required subset of CC crate compiler flags
+	# when we build a target recipe for a non-bare-metal target.
+	# https://github.com/rust-lang/cc-rs/blob/main/src/lib.rs#L1614
+	if "CRATE_CC_NO_DEFAULTS" in os.environ.keys() and \
+	   "TARGET" in os.environ.keys() and not "-none-" in os.environ["TARGET"]:
+	    orig_binary +=3D "${crate_cc_extras}"
+
+	binary =3D orig_binary.split()[0]
+	args =3D orig_binary.split() + sys.argv[1:]
+	if extras:
+	    args.append(extras)
+	os.execvp(binary, args)
+	EOF
+	chmod +x "${file}"
+}
+
+WRAPPER_TARGET_CC =3D "${CC}"
+WRAPPER_TARGET_CXX =3D "${CXX}"
+WRAPPER_TARGET_CCLD =3D "${CCLD}"
+WRAPPER_TARGET_LDFLAGS =3D "${LDFLAGS}"
+WRAPPER_TARGET_EXTRALD =3D ""
+WRAPPER_TARGET_AR =3D "${AR}"
+
+# compiler is used by gcc-rs
+# linker is used by rustc/cargo
+# archiver is used by the build of libstd-rs
+do_rust_create_wrappers () {
+	mkdir -p "${WRAPPER_DIR}"
+
+	# Yocto Build / Rust Host C compiler
+	create_wrapper_rust "${RUST_BUILD_CC}" "" "${CRATE_CC_FLAGS}" "${BUILD_CC=
}"
+	# Yocto Build / Rust Host C++ compiler
+	create_wrapper_rust "${RUST_BUILD_CXX}" "" "${CRATE_CC_FLAGS}" "${BUILD_C=
XX}"
+	# Yocto Build / Rust Host linker
+	create_wrapper_rust "${RUST_BUILD_CCLD}" "" "" "${BUILD_CCLD}" "${BUILD_L=
DFLAGS}"
+	# Yocto Build / Rust Host archiver
+	create_wrapper_rust "${RUST_BUILD_AR}" "" "" "${BUILD_AR}"
+
+	# Yocto Target / Rust Target C compiler
+	create_wrapper_rust "${RUST_TARGET_CC}" "${WRAPPER_TARGET_EXTRALD}" "${CR=
ATE_CC_FLAGS}" "${WRAPPER_TARGET_CC}" "${WRAPPER_TARGET_LDFLAGS}"
+	# Yocto Target / Rust Target C++ compiler
+	create_wrapper_rust "${RUST_TARGET_CXX}" "${WRAPPER_TARGET_EXTRALD}" "${C=
RATE_CC_FLAGS}" "${WRAPPER_TARGET_CXX}" "${CXXFLAGS}"
+	# Yocto Target / Rust Target linker
+	create_wrapper_rust "${RUST_TARGET_CCLD}" "${WRAPPER_TARGET_EXTRALD}" "" =
"${WRAPPER_TARGET_CCLD}" "${WRAPPER_TARGET_LDFLAGS}"
+	# Yocto Target / Rust Target archiver
+	create_wrapper_rust "${RUST_TARGET_AR}" "" "" "${WRAPPER_TARGET_AR}"
+
+}
+
+addtask rust_create_wrappers before do_configure after do_patch do_prepare=
_recipe_sysroot
+do_rust_create_wrappers[dirs] +=3D "${WRAPPER_DIR}"
diff --git a/classes/rust-target-config.bbclass b/classes/rust-target-confi=
g.bbclass
new file mode 100644
index 0000000..21a56ed
--- /dev/null
+++ b/classes/rust-target-config.bbclass
@@ -0,0 +1,433 @@
+#
+# Copyright OpenEmbedded Contributors
+#
+# SPDX-License-Identifier: MIT
+#
+
+# Right now this is focused on arm-specific tune features.
+# We get away with this for now as one can only use x86-64 as the build ho=
st
+# (not arm).
+# Note that TUNE_FEATURES is _always_ refering to the target, so we really
+# don't want to use this for the host/build.
+def llvm_features_from_tune(d):
+    f =3D []
+    feat =3D d.getVar('TUNE_FEATURES')
+    if not feat:
+        return []
+    feat =3D frozenset(feat.split())
+
+    mach_overrides =3D d.getVar('MACHINEOVERRIDES')
+    mach_overrides =3D frozenset(mach_overrides.split(':'))
+
+    if 'vfpv4' in feat:
+        f.append("+vfp4")
+    if 'vfpv3' in feat:
+        f.append("+vfp3")
+    if 'vfpv3d16' in feat:
+        f.append("+d16")
+
+    if 'vfpv2' in feat or 'vfp' in feat:
+        f.append("+vfp2")
+
+    if 'neon' in feat:
+        f.append("+neon")
+
+    if 'mips32' in feat:
+        f.append("+mips32")
+
+    if 'mips32r2' in feat:
+        f.append("+mips32r2")
+
+    if target_is_armv7(d):
+        f.append('+v7')
+
+    if ('armv6' in mach_overrides) or ('armv6' in feat):
+        f.append("+v6")
+    if 'armv5te' in feat:
+        f.append("+strict-align")
+        f.append("+v5te")
+    elif 'armv5' in feat:
+        f.append("+strict-align")
+        f.append("+v5")
+
+    if ('armv4' in mach_overrides) or ('armv4' in feat):
+        f.append("+strict-align")
+
+    if 'dsp' in feat:
+        f.append("+dsp")
+
+    if 'thumb' in feat:
+        if d.getVar('ARM_THUMB_OPT') =3D=3D "thumb":
+            if target_is_armv7(d):
+                f.append('+thumb2')
+            f.append("+thumb-mode")
+
+    if 'cortexa5' in feat:
+        f.append("+a5")
+    if 'cortexa7' in feat:
+        f.append("+a7")
+    if 'cortexa9' in feat:
+        f.append("+a9")
+    if 'cortexa15' in feat:
+        f.append("+a15")
+    if 'cortexa17' in feat:
+        f.append("+a17")
+    if ('riscv64' in feat) or ('riscv32' in feat):
+        f.append("+a,+c,+d,+f,+m")
+    return f
+llvm_features_from_tune[vardepvalue] =3D "${@llvm_features_from_tune(d)}"
+
+# TARGET_CC_ARCH changes from build/cross/target so it'll do the right thi=
ng
+# this should go away when https://github.com/rust-lang/rust/pull/31709 is
+# stable (1.9.0?)
+def llvm_features_from_cc_arch(d):
+    f =3D []
+    feat =3D d.getVar('TARGET_CC_ARCH')
+    if not feat:
+        return []
+    feat =3D frozenset(feat.split())
+
+    if '-mmmx' in feat:
+        f.append("+mmx")
+    if '-msse' in feat:
+        f.append("+sse")
+    if '-msse2' in feat:
+        f.append("+sse2")
+    if '-msse3' in feat:
+        f.append("+sse3")
+    if '-mssse3' in feat:
+        f.append("+ssse3")
+    if '-msse4.1' in feat:
+        f.append("+sse4.1")
+    if '-msse4.2' in feat:
+        f.append("+sse4.2")
+    if '-msse4a' in feat:
+        f.append("+sse4a")
+    if '-mavx' in feat:
+        f.append("+avx")
+    if '-mavx2' in feat:
+        f.append("+avx2")
+
+    return f
+
+def llvm_features_from_target_fpu(d):
+    # TARGET_FPU can be hard or soft. +soft-float tell llvm to use soft fl=
oat
+    # ABI. There is no option for hard.
+
+    fpu =3D d.getVar('TARGET_FPU')
+    return ["+soft-float"] if fpu =3D=3D "soft" else []
+
+def llvm_features(d):
+    return ','.join(llvm_features_from_tune(d) +
+                    llvm_features_from_cc_arch(d) +
+                    llvm_features_from_target_fpu(d))
+
+llvm_features[vardepvalue] =3D "${@llvm_features(d)}"
+
+## arm-unknown-linux-gnueabihf
+DATA_LAYOUT[arm-eabi] =3D "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
+TARGET_ENDIAN[arm-eabi] =3D "little"
+TARGET_POINTER_WIDTH[arm-eabi] =3D "32"
+TARGET_C_INT_WIDTH[arm-eabi] =3D "32"
+MAX_ATOMIC_WIDTH[arm-eabi] =3D "64"
+FEATURES[arm-eabi] =3D "+v6,+vfp2"
+
+## armv7-unknown-linux-gnueabihf
+DATA_LAYOUT[armv7-eabi] =3D "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S=
64"
+TARGET_ENDIAN[armv7-eabi] =3D "little"
+TARGET_POINTER_WIDTH[armv7-eabi] =3D "32"
+TARGET_C_INT_WIDTH[armv7-eabi] =3D "32"
+MAX_ATOMIC_WIDTH[armv7-eabi] =3D "64"
+FEATURES[armv7-eabi] =3D "+v7,+vfp2,+thumb2"
+
+## aarch64-unknown-linux-{gnu, musl}
+DATA_LAYOUT[aarch64] =3D "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S=
128"
+TARGET_ENDIAN[aarch64] =3D "little"
+TARGET_POINTER_WIDTH[aarch64] =3D "64"
+TARGET_C_INT_WIDTH[aarch64] =3D "32"
+MAX_ATOMIC_WIDTH[aarch64] =3D "128"
+
+## x86_64-unknown-linux-{gnu, musl}
+DATA_LAYOUT[x86_64] =3D "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
+TARGET_ENDIAN[x86_64] =3D "little"
+TARGET_POINTER_WIDTH[x86_64] =3D "64"
+TARGET_C_INT_WIDTH[x86_64] =3D "32"
+MAX_ATOMIC_WIDTH[x86_64] =3D "64"
+
+## x86_64-unknown-linux-gnux32
+DATA_LAYOUT[x86_64-x32] =3D "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:6=
4-i64:64-f80:128-n8:16:32:64-S128"
+TARGET_ENDIAN[x86_64-x32] =3D "little"
+TARGET_POINTER_WIDTH[x86_64-x32] =3D "32"
+TARGET_C_INT_WIDTH[x86_64-x32] =3D "32"
+MAX_ATOMIC_WIDTH[x86_64-x32] =3D "64"
+
+## i686-unknown-linux-{gnu, musl}
+DATA_LAYOUT[i686] =3D "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
+TARGET_ENDIAN[i686] =3D "little"
+TARGET_POINTER_WIDTH[i686] =3D "32"
+TARGET_C_INT_WIDTH[i686] =3D "32"
+MAX_ATOMIC_WIDTH[i686] =3D "64"
+
+## XXX: a bit of a hack so qemux86 builds, clone of i686-unknown-linux-{gn=
u, musl} above
+DATA_LAYOUT[i586] =3D "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
+TARGET_ENDIAN[i586] =3D "little"
+TARGET_POINTER_WIDTH[i586] =3D "32"
+TARGET_C_INT_WIDTH[i586] =3D "32"
+MAX_ATOMIC_WIDTH[i586] =3D "64"
+
+## mips-unknown-linux-{gnu, musl}
+DATA_LAYOUT[mips] =3D "E-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
+TARGET_ENDIAN[mips] =3D "big"
+TARGET_POINTER_WIDTH[mips] =3D "32"
+TARGET_C_INT_WIDTH[mips] =3D "32"
+MAX_ATOMIC_WIDTH[mips] =3D "32"
+
+## mipsel-unknown-linux-{gnu, musl}
+DATA_LAYOUT[mipsel] =3D "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
+TARGET_ENDIAN[mipsel] =3D "little"
+TARGET_POINTER_WIDTH[mipsel] =3D "32"
+TARGET_C_INT_WIDTH[mipsel] =3D "32"
+MAX_ATOMIC_WIDTH[mipsel] =3D "32"
+
+## mips64-unknown-linux-{gnu, musl}
+DATA_LAYOUT[mips64] =3D "E-m:e-i8:8:32-i16:16:32-i64:64-n32:64-S128"
+TARGET_ENDIAN[mips64] =3D "big"
+TARGET_POINTER_WIDTH[mips64] =3D "64"
+TARGET_C_INT_WIDTH[mips64] =3D "64"
+MAX_ATOMIC_WIDTH[mips64] =3D "64"
+
+## mips64-n32-unknown-linux-{gnu, musl}
+DATA_LAYOUT[mips64-n32] =3D "E-m:e-p:32:32-i8:8:32-i16:16:32-i64:64-n32:64=
-S128"
+TARGET_ENDIAN[mips64-n32] =3D "big"
+TARGET_POINTER_WIDTH[mips64-n32] =3D "32"
+TARGET_C_INT_WIDTH[mips64-n32] =3D "32"
+MAX_ATOMIC_WIDTH[mips64-n32] =3D "64"
+
+## mips64el-unknown-linux-{gnu, musl}
+DATA_LAYOUT[mips64el] =3D "e-m:e-i8:8:32-i16:16:32-i64:64-n32:64-S128"
+TARGET_ENDIAN[mips64el] =3D "little"
+TARGET_POINTER_WIDTH[mips64el] =3D "64"
+TARGET_C_INT_WIDTH[mips64el] =3D "64"
+MAX_ATOMIC_WIDTH[mips64el] =3D "64"
+
+## powerpc-unknown-linux-{gnu, musl}
+DATA_LAYOUT[powerpc] =3D "E-m:e-p:32:32-i64:64-n32"
+TARGET_ENDIAN[powerpc] =3D "big"
+TARGET_POINTER_WIDTH[powerpc] =3D "32"
+TARGET_C_INT_WIDTH[powerpc] =3D "32"
+MAX_ATOMIC_WIDTH[powerpc] =3D "32"
+
+## powerpc64-unknown-linux-{gnu, musl}
+DATA_LAYOUT[powerpc64] =3D "E-m:e-i64:64-n32:64-S128-v256:256:256-v512:512=
:512"
+TARGET_ENDIAN[powerpc64] =3D "big"
+TARGET_POINTER_WIDTH[powerpc64] =3D "64"
+TARGET_C_INT_WIDTH[powerpc64] =3D "64"
+MAX_ATOMIC_WIDTH[powerpc64] =3D "64"
+
+## powerpc64le-unknown-linux-{gnu, musl}
+DATA_LAYOUT[powerpc64le] =3D "e-m:e-i64:64-n32:64-v256:256:256-v512:512:51=
2"
+TARGET_ENDIAN[powerpc64le] =3D "little"
+TARGET_POINTER_WIDTH[powerpc64le] =3D "64"
+TARGET_C_INT_WIDTH[powerpc64le] =3D "64"
+MAX_ATOMIC_WIDTH[powerpc64le] =3D "64"
+
+## riscv32gc-unknown-linux-{gnu, musl}
+DATA_LAYOUT[riscv32gc] =3D "e-m:e-p:32:32-i64:64-n32-S128"
+TARGET_ENDIAN[riscv32gc] =3D "little"
+TARGET_POINTER_WIDTH[riscv32gc] =3D "32"
+TARGET_C_INT_WIDTH[riscv32gc] =3D "32"
+MAX_ATOMIC_WIDTH[riscv32gc] =3D "32"
+
+## riscv64gc-unknown-linux-{gnu, musl}
+DATA_LAYOUT[riscv64gc] =3D "e-m:e-p:64:64-i64:64-i128:128-n64-S128"
+TARGET_ENDIAN[riscv64gc] =3D "little"
+TARGET_POINTER_WIDTH[riscv64gc] =3D "64"
+TARGET_C_INT_WIDTH[riscv64gc] =3D "64"
+MAX_ATOMIC_WIDTH[riscv64gc] =3D "64"
+
+## loongarch64-unknown-linux-{gnu, musl}
+DATA_LAYOUT[loongarch64] =3D "e-m:e-i8:8:32-i16:16:32-i64:64-n32:64-S128"
+TARGET_ENDIAN[loongarch64] =3D "little"
+TARGET_POINTER_WIDTH[loongarch64] =3D "64"
+TARGET_C_INT_WIDTH[loongarch64] =3D "32"
+MAX_ATOMIC_WIDTH[loongarch64] =3D "64"
+FEATURES[loongarch64] =3D "+d"
+
+# Convert a normal arch (HOST_ARCH, TARGET_ARCH, BUILD_ARCH, etc) to somet=
hing
+# rust's internals won't choke on.
+def arch_to_rust_target_arch(arch):
+    if arch =3D=3D "i586" or arch =3D=3D "i686":
+        return "x86"
+    elif arch =3D=3D "mipsel":
+        return "mips"
+    elif arch =3D=3D "mip64sel":
+        return "mips64"
+    elif arch =3D=3D "armv7":
+        return "arm"
+    elif arch =3D=3D "powerpc64le":
+        return "powerpc64"
+    elif arch =3D=3D "riscv32gc":
+        return "riscv32"
+    elif arch =3D=3D "riscv64gc":
+        return "riscv64"
+    else:
+        return arch
+
+# Convert a rust target string to a llvm-compatible triplet
+def rust_sys_to_llvm_target(sys):
+    if sys.startswith('riscv32gc-'):
+        return sys.replace('riscv32gc-', 'riscv32-', 1)
+    if sys.startswith('riscv64gc-'):
+        return sys.replace('riscv64gc-', 'riscv64-', 1)
+    return sys
+
+# generates our target CPU value
+def llvm_cpu(d):
+    cpu =3D d.getVar('PACKAGE_ARCH')
+    target =3D d.getVar('TRANSLATED_TARGET_ARCH')
+
+    trans =3D {}
+    trans['corei7-64'] =3D "corei7"
+    trans['core2-32'] =3D "core2"
+    trans['x86-64'] =3D "x86-64"
+    trans['i686'] =3D "i686"
+    trans['i586'] =3D "i586"
+    trans['mips64'] =3D "mips64"
+    trans['mips64el'] =3D "mips64"
+    trans['riscv64'] =3D "generic-rv64"
+    trans['riscv32'] =3D "generic-rv32"
+    trans['loongarch64'] =3D "la464"
+
+    if target in ["mips", "mipsel", "powerpc"]:
+        feat =3D frozenset(d.getVar('TUNE_FEATURES').split())
+        if "mips32r2" in feat:
+            trans['mipsel'] =3D "mips32r2"
+            trans['mips'] =3D "mips32r2"
+        elif "mips32" in feat:
+            trans['mipsel'] =3D "mips32"
+            trans['mips'] =3D "mips32"
+        elif "ppc7400" in feat:
+            trans['powerpc'] =3D "7400"
+
+    try:
+        return trans[cpu]
+    except:
+        return trans.get(target, "generic")
+
+llvm_cpu[vardepvalue] =3D "${@llvm_cpu(d)}"
+
+def rust_gen_target(d, thing, wd, arch):
+    import json
+
+    build_sys =3D d.getVar('BUILD_SYS')
+    target_sys =3D d.getVar('TARGET_SYS')
+
+    sys =3D d.getVar('{}_SYS'.format(thing))
+    prefix =3D d.getVar('{}_PREFIX'.format(thing))
+    rustsys =3D d.getVar('RUST_{}_SYS'.format(thing))
+
+    abi =3D None
+    cpu =3D "generic"
+    features =3D ""
+
+    # Need to apply the target tuning consitently, only if the triplet app=
lies to the target
+    # and not in the native case
+    if sys =3D=3D target_sys and sys !=3D build_sys:
+        abi =3D d.getVar('ABIEXTENSION')
+        cpu =3D llvm_cpu(d)
+        if bb.data.inherits_class('native', d):
+            features =3D ','.join(llvm_features_from_cc_arch(d))
+        else:
+            features =3D llvm_features(d) or ""
+        # arm and armv7 have different targets in llvm
+        if arch =3D=3D "arm" and target_is_armv7(d):
+            arch =3D 'armv7'
+
+    rust_arch =3D oe.rust.arch_to_rust_arch(arch)
+
+    if abi:
+        arch_abi =3D "{}-{}".format(rust_arch, abi)
+    else:
+        arch_abi =3D rust_arch
+
+    features =3D features or d.getVarFlag('FEATURES', arch_abi) or ""
+    features =3D features.strip()
+
+    # build tspec
+    tspec =3D {}
+    tspec['llvm-target'] =3D rust_sys_to_llvm_target(rustsys)
+    tspec['data-layout'] =3D d.getVarFlag('DATA_LAYOUT', arch_abi)
+    if tspec['data-layout'] is None:
+        bb.fatal("No rust target defined for %s" % arch_abi)
+    tspec['max-atomic-width'] =3D int(d.getVarFlag('MAX_ATOMIC_WIDTH', arc=
h_abi))
+    tspec['target-pointer-width'] =3D d.getVarFlag('TARGET_POINTER_WIDTH',=
 arch_abi)
+    tspec['target-c-int-width'] =3D d.getVarFlag('TARGET_C_INT_WIDTH', arc=
h_abi)
+    tspec['target-endian'] =3D d.getVarFlag('TARGET_ENDIAN', arch_abi)
+    tspec['arch'] =3D arch_to_rust_target_arch(rust_arch)
+    if "baremetal" in d.getVar('TCLIBC'):
+        tspec['os'] =3D "none"
+    else:
+        tspec['os'] =3D "linux"
+    if "musl" in tspec['llvm-target']:
+        tspec['env'] =3D "musl"
+    else:
+        tspec['env'] =3D "gnu"
+    if "riscv64" in tspec['llvm-target']:
+        tspec['llvm-abiname'] =3D "lp64d"
+    if "riscv32" in tspec['llvm-target']:
+        tspec['llvm-abiname'] =3D "ilp32d"
+    if "loongarch64" in tspec['llvm-target']:
+        tspec['llvm-abiname'] =3D "lp64d"
+    tspec['vendor'] =3D "unknown"
+    tspec['target-family'] =3D "unix"
+    tspec['linker'] =3D "{}{}gcc".format(d.getVar('CCACHE'), prefix)
+    tspec['cpu'] =3D cpu
+    if features !=3D "":
+        tspec['features'] =3D features
+    tspec['dynamic-linking'] =3D True
+    tspec['executables'] =3D True
+    tspec['linker-is-gnu'] =3D True
+    tspec['linker-flavor'] =3D "gcc"
+    tspec['has-rpath'] =3D True
+    tspec['position-independent-executables'] =3D True
+    tspec['panic-strategy'] =3D d.getVar("RUST_PANIC_STRATEGY")
+
+    # write out the target spec json file
+    with open(wd + rustsys + '.json', 'w') as f:
+        json.dump(tspec, f, indent=3D4)
+
+# These are accounted for in tmpdir path names so don't need to be in the =
task sig
+rust_gen_target[vardepsexclude] +=3D "ABIEXTENSION llvm_cpu"
+
+do_rust_gen_targets[vardeps] +=3D "DATA_LAYOUT TARGET_ENDIAN TARGET_POINTE=
R_WIDTH TARGET_C_INT_WIDTH MAX_ATOMIC_WIDTH FEATURES"
+
+RUST_TARGETS_DIR =3D "${WORKDIR}/rust-targets/"
+export RUST_TARGET_PATH =3D "${RUST_TARGETS_DIR}"
+
+python do_rust_gen_targets () {
+    wd =3D d.getVar('RUST_TARGETS_DIR')
+    # Order of BUILD, HOST, TARGET is important in case the files overwrit=
e, most specific last
+    rust_gen_target(d, 'BUILD', wd, d.getVar('BUILD_ARCH'))
+    rust_gen_target(d, 'HOST', wd, d.getVar('HOST_ARCH'))
+    rust_gen_target(d, 'TARGET', wd, d.getVar('TARGET_ARCH'))
+}
+
+addtask rust_gen_targets after do_patch before do_compile
+do_rust_gen_targets[dirs] +=3D "${RUST_TARGETS_DIR}"
+
+# For building target C dependecies use only compiler parameters defined i=
n OE
+# and ignore the CC crate defaults which conflicts with OE ones in some ca=
ses.
+# https://github.com/rust-lang/cc-rs#external-configuration-via-environmen=
t-variables
+# Some CC crate compiler flags are still required.
+# We apply them conditionally in rust wrappers.
+
+CRATE_CC_FLAGS:class-native =3D ""
+CRATE_CC_FLAGS:class-nativesdk =3D ""
+CRATE_CC_FLAGS:class-target =3D " -ffunction-sections -fdata-sections -fPI=
C"
+
+do_compile:prepend:class-target() {
+    export CRATE_CC_NO_DEFAULTS=3D1
+}
+do_install:prepend:class-target() {
+    export CRATE_CC_NO_DEFAULTS=3D1
+}
diff --git a/classes/rust.bbclass b/classes/rust.bbclass
new file mode 100644
index 0000000..dae25ca
--- /dev/null
+++ b/classes/rust.bbclass
@@ -0,0 +1,51 @@
+#
+# Copyright OpenEmbedded Contributors
+#
+# SPDX-License-Identifier: MIT
+#
+
+inherit rust-common
+
+RUSTC =3D "rustc"
+
+RUSTC_ARCHFLAGS +=3D "--target=3D${RUST_HOST_SYS} ${RUSTFLAGS}"
+
+def rust_base_dep(d):
+    # Taken from meta/classes/base.bbclass `base_dep_prepend` and modified=
 to
+    # use rust instead of gcc
+    deps =3D ""
+    if not d.getVar('INHIBIT_DEFAULT_RUST_DEPS'):
+        if (d.getVar('HOST_SYS') !=3D d.getVar('BUILD_SYS')):
+            deps +=3D " rust-native ${RUSTLIB_DEP}"
+        else:
+            deps +=3D " rust-native"
+    return deps
+
+DEPENDS:append =3D " ${@rust_base_dep(d)}"
+
+# BUILD_LDFLAGS
+# 	${STAGING_LIBDIR_NATIVE}
+# 	${STAGING_BASE_LIBDIR_NATIVE}
+# BUILDSDK_LDFLAGS
+# 	${STAGING_LIBDIR}
+# 	#{STAGING_DIR_HOST}
+# TARGET_LDFLAGS ?????
+#RUSTC_BUILD_LDFLAGS =3D "\
+#	--sysroot ${STAGING_DIR_NATIVE} \
+#	-L${STAGING_LIBDIR_NATIVE}	\
+#	-L${STAGING_BASE_LIBDIR_NATIVE}	\
+#"
+
+# XXX: for some reason bitbake sets BUILD_* & TARGET_* but uses the bare
+# variables for HOST. Alias things to make it easier for us.
+HOST_LDFLAGS  ?=3D "${LDFLAGS}"
+HOST_CFLAGS   ?=3D "${CFLAGS}"
+HOST_CXXFLAGS ?=3D "${CXXFLAGS}"
+HOST_CPPFLAGS ?=3D "${CPPFLAGS}"
+
+rustlib_suffix=3D"${TUNE_ARCH}${TARGET_VENDOR}-${TARGET_OS}/rustlib/${RUST=
_HOST_SYS}/lib"
+# Native sysroot standard library path
+rustlib_src=3D"${prefix}/lib/${rustlib_suffix}"
+# Host sysroot standard library path
+rustlib=3D"${libdir}/${rustlib_suffix}"
+rustlib:class-native=3D"${libdir}/rustlib/${BUILD_SYS}/lib"
diff --git a/conf/layer.conf b/conf/layer.conf
new file mode 100644
index 0000000..b057c77
--- /dev/null
+++ b/conf/layer.conf
@@ -0,0 +1,25 @@
+# We have a conf and classes directory, but we have classes that should
+# override those in oe-core, so prepend to BBPATH
+BBPATH =3D. "${LAYERDIR}:"
+
+# We have a recipes directory, add to BBFILES
+BBFILES +=3D "${LAYERDIR}/recipes*/*/*.bb ${LAYERDIR}/recipes*/*/*.bbappen=
d"
+
+BBFILE_COLLECTIONS +=3D "lts-rust-mixin"
+BBFILE_PATTERN_lts-rust-mixin :=3D "^${LAYERDIR}/"
+BBFILE_PRIORITY_lts-rust-mixin =3D "6"
+
+LAYERSERIES_COMPAT_lts-rust-mixin =3D "kirkstone"
+
+LAYERDEPENDS_lts-rust-mixin =3D "core"
+
+RUSTVERSION ?=3D "1.68%"
+
+# This is not ideal, but it seems better to mask out the older oe-core
+# recipes completely since they will not work with this layer on top,
+# and several of them result in parse warnings.
+BBMASK:append =3D " meta/recipes-devtools/cargo/ meta/recipes-devtools/rus=
t/ meta/recipes-gnome/librsvg"
+
+# These are in bitbake.conf in langdale and up, adding them here to make
+# using the layer more turn-key seems reasonable.
+BB_BASEHASH_IGNORE_VARS:append =3D " RUST_BUILD_SYS RUST_HOST_SYS RUST_TAR=
GET_SYS"
diff --git a/recipes-core/packagegroups/packagegroup-rust-cross-canadian.bb=
 b/recipes-core/packagegroups/packagegroup-rust-cross-canadian.bb
new file mode 100644
index 0000000..bb10a2d
--- /dev/null
+++ b/recipes-core/packagegroups/packagegroup-rust-cross-canadian.bb
@@ -0,0 +1,21 @@
+SUMMARY =3D "Host SDK package for Rust cross canadian toolchain"
+PN =3D "packagegroup-rust-cross-canadian-${MACHINE}"
+
+inherit cross-canadian packagegroup
+
+PACKAGEGROUP_DISABLE_COMPLEMENTARY =3D "1"
+
+RUST=3D"rust-cross-canadian-${TRANSLATED_TARGET_ARCH}"
+
+RDEPENDS:${PN} =3D " \
+    ${@all_multilib_tune_values(d, 'RUST')} \
+    nativesdk-binutils \
+    nativesdk-gcc \
+    nativesdk-glibc-dev \
+    nativesdk-libgcc-dev \
+    nativesdk-rust \
+    nativesdk-cargo \
+    nativesdk-rust-tools-clippy \
+    nativesdk-rust-tools-rustfmt \
+"
+
diff --git a/recipes-devtools/rust/README-rust.md b/recipes-devtools/rust/R=
EADME-rust.md
new file mode 100644
index 0000000..209836a
--- /dev/null
+++ b/recipes-devtools/rust/README-rust.md
@@ -0,0 +1,38 @@
+## Introduction
+
+This provides the Rust compiler, tools for building packages (cargo), and=
=20
+a few example projects.
+
+## Building a rust package
+
+When building a rust package in bitbake, it's usually easiest to build with
+cargo using cargo.bbclass.  If the package already has a Cargo.toml file (=
most
+rust packages do), then it's especially easy.  Otherwise you should probab=
ly
+get the code building in cargo first.=20
+
+Once your package builds in cargo, you can use
+[cargo-bitbake](https://github.com/cardoe/cargo-bitbake) to generate a bit=
bake
+recipe for it.  This allows bitbake to fetch all the necessary dependent
+crates, as well as a pegged version of the crates.io index, to ensure maxi=
mum
+reproducibility. Once the Rust SDK support is added to oe-core, cargo-bitb=
ake
+may also be added to the SDK.
+
+NOTE: You will have to edit the generated recipe based on the comments
+contained within it
+
+## Pitfalls
+
+ - TARGET_SYS _must_ be different from BUILD_SYS. This is due to the way R=
ust
+ configuration options are tracked for different targets. This is the reas=
on=20
+ we use the Yocto triples instead of the native Rust triples. See rust-lan=
g/cargo#3349.
+
+## Dependencies
+
+On the host:
+ - Any `-sys` packages your project might need must have RDEPENDs for
+ the native library.
+
+On the target:
+ - Any `-sys` packages your project might need must have RDEPENDs for
+ the native library.
+
diff --git a/recipes-devtools/rust/cargo_1.68.1.bb b/recipes-devtools/rust/=
cargo_1.68.1.bb
new file mode 100644
index 0000000..2b2394e
--- /dev/null
+++ b/recipes-devtools/rust/cargo_1.68.1.bb
@@ -0,0 +1,73 @@
+SUMMARY ?=3D "Cargo, a package manager for Rust."
+HOMEPAGE =3D "https://crates.io"
+LICENSE =3D "MIT | Apache-2.0"
+SECTION =3D "devel"
+
+DEPENDS =3D "openssl zlib curl ca-certificates libssh2"
+
+LIC_FILES_CHKSUM =3D " \
+    file://LICENSE-MIT;md5=3Db377b220f43d747efdec40d69fcaa69d \
+    file://LICENSE-APACHE;md5=3D71b224ca933f0676e26d5c2e2271331c \
+    file://LICENSE-THIRD-PARTY;md5=3Df257ad009884cb88a3a87d6920e7180a \
+"
+
+require rust-source.inc
+require rust-snapshot.inc
+
+S =3D "${RUSTSRC}/src/tools/cargo"
+CARGO_VENDORING_DIRECTORY =3D "${RUSTSRC}/vendor"
+
+inherit cargo pkgconfig
+
+DEBUG_PREFIX_MAP +=3D "-fdebug-prefix-map=3D${RUSTSRC}/vendor=3D/usr/src/d=
ebug/${PN}/${EXTENDPE}${PV}-${PR}"
+
+do_cargo_setup_snapshot () {
+	${WORKDIR}/rust-snapshot-components/${CARGO_SNAPSHOT}/install.sh --prefix=
=3D"${WORKDIR}/${CARGO_SNAPSHOT}" --disable-ldconfig
+	# Need to use uninative's loader if enabled/present since the library pat=
hs
+	# are used internally by rust and result in symbol mismatches if we don't
+	if [ ! -z "${UNINATIVE_LOADER}" -a -e "${UNINATIVE_LOADER}" ]; then
+		patchelf-uninative ${WORKDIR}/${CARGO_SNAPSHOT}/bin/cargo --set-interpre=
ter ${UNINATIVE_LOADER}
+	fi
+}
+
+addtask cargo_setup_snapshot after do_unpack before do_configure
+do_cargo_setup_snapshot[dirs] +=3D "${WORKDIR}/${CARGO_SNAPSHOT}"
+do_cargo_setup_snapshot[vardepsexclude] +=3D "UNINATIVE_LOADER"
+
+
+do_compile:prepend () {
+	export RUSTC_BOOTSTRAP=3D"1"
+}
+
+do_install () {
+	install -d "${D}${bindir}"
+	install -m 755 "${B}/target/${CARGO_TARGET_SUBDIR}/cargo" "${D}${bindir}"
+}
+
+do_install:append:class-nativesdk() {
+	# To quote the cargo docs, "Cargo also sets the dynamic library path when=
 compiling
+	# and running binaries with commands like `cargo run` and `cargo test`". =
Sadly it
+	# sets to libdir but not base_libdir leading to symbol mismatches dependi=
ng on the
+	# host OS. Fully set LD_LIBRARY_PATH to contain both to avoid this.
+	create_wrapper ${D}/${bindir}/cargo LD_LIBRARY_PATH=3D${libdir}:${base_li=
bdir}
+}
+
+# Disabled due to incompatibility with libgit2 0.28.x (https://github.com/=
rust-lang/git2-rs/issues/458, https://bugs.gentoo.org/707746#c1)
+# as shipped by Yocto Dunfell.
+# According to https://github.com/rust-lang/git2-rs/issues/458#issuecommen=
t-522567539, there are no compatibility guarantees between
+# libgit2-sys and arbitrary system libgit2 versions, so better keep this t=
urned off.
+#export LIBGIT2_SYS_USE_PKG_CONFIG =3D "1"
+
+# Needed for pkg-config to be used
+export LIBSSH2_SYS_USE_PKG_CONFIG =3D "1"
+
+# When building cargo-native we don't have cargo-native to use and depend =
on,
+# so we must use the locally set up snapshot to bootstrap the build.
+BASEDEPENDS:remove:class-native =3D "cargo-native"
+CARGO:class-native =3D "${WORKDIR}/${CARGO_SNAPSHOT}/bin/cargo"
+
+DEPENDS:append:class-nativesdk =3D " nativesdk-rust"
+RUSTLIB:append:class-nativesdk =3D " -L ${STAGING_DIR_HOST}/${SDKPATHNATIV=
E}/usr/lib/rustlib/${RUST_HOST_SYS}/lib"
+RUSTLIB_DEP:class-nativesdk =3D ""
+
+BBCLASSEXTEND =3D "native nativesdk"
diff --git a/recipes-devtools/rust/files/0001-Do-not-use-LFS64-on-linux-wit=
h-musl.patch b/recipes-devtools/rust/files/0001-Do-not-use-LFS64-on-linux-w=
ith-musl.patch
new file mode 100644
index 0000000..da72665
--- /dev/null
+++ b/recipes-devtools/rust/files/0001-Do-not-use-LFS64-on-linux-with-musl.=
patch
@@ -0,0 +1,168 @@
+From 3ecce665198e3420d70139d86ed22e74804c9379 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Wed, 28 Dec 2022 22:35:55 -0800
+Subject: [PATCH] Do not use LFS64 on linux with musl
+
+glibc is providing open64 and other lfs64 functions but musl aliases
+them to normal equivalents since off_t is always 64-bit on musl,
+therefore check for target env along when target OS is linux before
+using open64, this is more available. Latest Musl has made these
+namespace changes [1]
+
+[1] https://git.musl-libc.org/cgit/musl/commit/?id=3D246f1c811448f37a44b41=
cd8df8d0ef9736d95f4
+
+Upstream-Status: Submitted [https://github.com/rust-lang/rust/pull/106246]
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ library/std/src/os/linux/fs.rs |  9 ++++++++-
+ library/std/src/sys/unix/fd.rs | 14 ++++++++++----
+ library/std/src/sys/unix/fs.rs | 27 ++++++++++++++++++++-------
+ 3 files changed, 38 insertions(+), 12 deletions(-)
+
+diff --git a/library/std/src/os/linux/fs.rs b/library/std/src/os/linux/fs.=
rs
+index 479bbcc17a8..ab0b2a3eda3 100644
+--- a/library/std/src/os/linux/fs.rs
++++ b/library/std/src/os/linux/fs.rs
+@@ -329,7 +329,14 @@ pub trait MetadataExt {
+ impl MetadataExt for Metadata {
+     #[allow(deprecated)]
+     fn as_raw_stat(&self) -> &raw::stat {
+-        unsafe { &*(self.as_inner().as_inner() as *const libc::stat64 as =
*const raw::stat) }
++        #[cfg(target_env =3D "musl")]
++        unsafe {
++            &*(self.as_inner().as_inner() as *const libc::stat as *const =
raw::stat)
++        }
++        #[cfg(not(target_env =3D "musl"))]
++        unsafe {
++            &*(self.as_inner().as_inner() as *const libc::stat64 as *cons=
t raw::stat)
++        }
+     }
+     fn st_dev(&self) -> u64 {
+         self.as_inner().as_inner().st_dev as u64
+diff --git a/library/std/src/sys/unix/fd.rs b/library/std/src/sys/unix/fd.=
rs
+index dbaa3c33e2e..5d31557bd11 100644
+--- a/library/std/src/sys/unix/fd.rs
++++ b/library/std/src/sys/unix/fd.rs
+@@ -115,9 +115,12 @@ pub fn read_to_end(&self, buf: &mut Vec<u8>) -> io::R=
esult<usize> {
+     }
+=20
+     pub fn read_at(&self, buf: &mut [u8], offset: u64) -> io::Result<usiz=
e> {
+-        #[cfg(not(any(target_os =3D "linux", target_os =3D "android")))]
++        #[cfg(not(any(
++            all(target_os =3D "linux", not(target_env =3D "musl")),
++            target_os =3D "android"
++        )))]
+         use libc::pread as pread64;
+-        #[cfg(any(target_os =3D "linux", target_os =3D "android"))]
++        #[cfg(any(all(target_os =3D "linux", not(target_env =3D "musl")),=
 target_os =3D "android"))]
+         use libc::pread64;
+=20
+         unsafe {
+@@ -181,9 +184,12 @@ pub fn is_write_vectored(&self) -> bool {
+     }
+=20
+     pub fn write_at(&self, buf: &[u8], offset: u64) -> io::Result<usize> {
+-        #[cfg(not(any(target_os =3D "linux", target_os =3D "android")))]
++        #[cfg(not(any(
++            all(target_os =3D "linux", not(target_env =3D "musl")),
++            target_os =3D "android"
++        )))]
+         use libc::pwrite as pwrite64;
+-        #[cfg(any(target_os =3D "linux", target_os =3D "android"))]
++        #[cfg(any(all(target_os =3D "linux", not(target_env =3D "musl")),=
 target_os =3D "android"))]
+         use libc::pwrite64;
+=20
+         unsafe {
+diff --git a/library/std/src/sys/unix/fs.rs b/library/std/src/sys/unix/fs.=
rs
+index aea0c26ee8b..e7be4729ca6 100644
+--- a/library/std/src/sys/unix/fs.rs
++++ b/library/std/src/sys/unix/fs.rs
+@@ -45,19 +45,24 @@
+     all(target_os =3D "linux", target_env =3D "gnu")
+ ))]
+ use libc::c_char;
+-#[cfg(any(target_os =3D "linux", target_os =3D "emscripten", target_os =
=3D "android"))]
++#[cfg(any(
++    all(target_os =3D "linux", not(target_env =3D "musl")),
++    target_os =3D "emscripten",
++    target_os =3D "android"
++))]
+ use libc::dirfd;
+-#[cfg(any(target_os =3D "linux", target_os =3D "emscripten"))]
++#[cfg(any(not(target_env =3D "musl"), target_os =3D "emscripten"))]
+ use libc::fstatat64;
+ #[cfg(any(
+     target_os =3D "android",
+     target_os =3D "solaris",
+     target_os =3D "fuchsia",
+     target_os =3D "redox",
+-    target_os =3D "illumos"
++    target_os =3D "illumos",
++    target_env =3D "musl"
+ ))]
+ use libc::readdir as readdir64;
+-#[cfg(target_os =3D "linux")]
++#[cfg(all(target_os =3D "linux", not(target_env =3D "musl")))]
+ use libc::readdir64;
+ #[cfg(any(target_os =3D "emscripten", target_os =3D "l4re"))]
+ use libc::readdir64_r;
+@@ -77,7 +82,13 @@
+     dirent as dirent64, fstat as fstat64, fstatat as fstatat64, ftruncate=
64, lseek64,
+     lstat as lstat64, off64_t, open as open64, stat as stat64,
+ };
++#[cfg(target_env =3D "musl")]
++use libc::{
++    dirent as dirent64, fstat as fstat64, ftruncate as ftruncate64, lseek=
 as lseek64,
++    lstat as lstat64, off_t as off64_t, open as open64, stat as stat64,
++};
+ #[cfg(not(any(
++    target_env =3D "musl",
+     target_os =3D "linux",
+     target_os =3D "emscripten",
+     target_os =3D "l4re",
+@@ -87,7 +98,7 @@
+     dirent as dirent64, fstat as fstat64, ftruncate as ftruncate64, lseek=
 as lseek64,
+     lstat as lstat64, off_t as off64_t, open as open64, stat as stat64,
+ };
+-#[cfg(any(target_os =3D "linux", target_os =3D "emscripten", target_os =
=3D "l4re"))]
++#[cfg(any(not(target_env =3D "musl"), target_os =3D "emscripten", target_=
os =3D "l4re"))]
+ use libc::{dirent64, fstat64, ftruncate64, lseek64, lstat64, off64_t, ope=
n64, stat64};
+=20
+ pub use crate::sys_common::fs::try_exists;
+@@ -260,6 +271,7 @@ unsafe impl Sync for Dir {}
+ #[cfg(any(
+     target_os =3D "android",
+     target_os =3D "linux",
++    not(target_env =3D "musl"),
+     target_os =3D "solaris",
+     target_os =3D "illumos",
+     target_os =3D "fuchsia",
+@@ -292,6 +304,7 @@ struct dirent64_min {
+ }
+=20
+ #[cfg(not(any(
++    target_env =3D "musl",
+     target_os =3D "android",
+     target_os =3D "linux",
+     target_os =3D "solaris",
+@@ -745,7 +758,7 @@ pub fn file_name(&self) -> OsString {
+     }
+=20
+     #[cfg(all(
+-        any(target_os =3D "linux", target_os =3D "emscripten", target_os =
=3D "android"),
++        any(not(target_env =3D "musl"), target_os =3D "emscripten", targe=
t_os =3D "android"),
+         not(miri)
+     ))]
+     pub fn metadata(&self) -> io::Result<FileAttr> {
+@@ -769,7 +782,7 @@ pub fn metadata(&self) -> io::Result<FileAttr> {
+     }
+=20
+     #[cfg(any(
+-        not(any(target_os =3D "linux", target_os =3D "emscripten", target=
_os =3D "android")),
++        not(any(not(target_env =3D "musl"), target_os =3D "emscripten", t=
arget_os =3D "android")),
+         miri
+     ))]
+     pub fn metadata(&self) -> io::Result<FileAttr> {
+--=20
+2.39.0
+
diff --git a/recipes-devtools/rust/files/crossbeam_atomic.patch b/recipes-d=
evtools/rust/files/crossbeam_atomic.patch
new file mode 100644
index 0000000..0a29103
--- /dev/null
+++ b/recipes-devtools/rust/files/crossbeam_atomic.patch
@@ -0,0 +1,50 @@
+crossbeam-utils is taking the target triplet and comparing it against a
+known list of platforms that have issues either with any atomics or with
+64 bit atomics. Since OE encodes TARGET_VENDOR into the rust triplet (to
+differentiate host vs. target) this means that platforms that should match,
+don't.
+
+We could make a list of platforms and pass in configuration values but
+having one list in rust and another in our recipes is likely to cause
+problems in the future. We do already have this issue in the librsvg recip=
e.
+Instead, switch out the value of TARGET_VENDOR for "-unknown" which
+them makes the list in no_atomics.rs work correctly.
+
+Someone with more rust knowledge could split up the triplets in no_atmoics=
.rs
+and compare against the architecture/processor, or replace -unknown with a=
 glob
+to create a patch that upstream might accept.
+
+Upstream-Status: Submitted [https://github.com/crossbeam-rs/crossbeam/pull=
/922]
+Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
+
+Index: rustc-1.66.0-src/vendor/crossbeam-utils-0.8.12/build.rs
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
+--- rustc-1.66.0-src.orig/vendor/crossbeam-utils-0.8.12/build.rs
++++ rustc-1.66.0-src/vendor/crossbeam-utils-0.8.12/build.rs
+@@ -29,7 +29,7 @@ use std::env;
+ include!("no_atomic.rs");
+=20
+ fn main() {
+-    let target =3D match env::var("TARGET") {
++    let mut target =3D match env::var("TARGET") {
+         Ok(target) =3D> target,
+         Err(e) =3D> {
+             println!(
+@@ -40,6 +40,8 @@ fn main() {
+             return;
+         }
+     };
++    let vendor =3D env::var("TARGET_VENDOR").unwrap();
++    target =3D target.replace(&vendor, "-unknown");
+=20
+     // Note that this is `no_`*, not `has_*`. This allows treating as the=
 latest
+     // stable rustc is used when the build script doesn't run. This is us=
eful
+Index: rustc-1.66.0-src/vendor/crossbeam-utils-0.8.12/.cargo-checksum.json
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
+--- rustc-1.66.0-src.orig/vendor/crossbeam-utils-0.8.12/.cargo-checksum.js=
on
++++ rustc-1.66.0-src/vendor/crossbeam-utils-0.8.12/.cargo-checksum.json
+@@ -1 +1 @@
+-{"files":{"CHANGELOG.md":"65d3e11edf9498bdbc930c8c3878b7d3a90c1a0b1698597=
dc4a396a547fa0948","Cargo.toml":"1e4259a5a47271e8ae040b91e17652b5a4e0e7e45c=
3f22de5008db276f3a50bf","LICENSE-APACHE":"a60eea817514531668d7e00765731449f=
e14d059d3249e0bc93b36de45f759f2","LICENSE-MIT":"5734ed989dfca1f625b40281ee9=
f4530f91b2411ec01cb748223e7eb87e201ab","README.md":"2a19af38a52dd965c2d66bb=
39f90a85b430b51ee9ccb29e9e1978ee7091e5087","benches/atomic_cell.rs":"c927eb=
3cd1e5ecc4b91adbc3bde98af15ffab4086190792ba64d5cde0e24df3d","build.rs":"485=
9f9c926c230023e861bf01c4b225b460035faf8cf6240108530efedbb747f","no_atomic.r=
s":"f58085b9d0666ccf62e0ae17fb5dae937c0a86fcc55dc0ae04ad8659e696a49c","src/=
atomic/atomic_cell.rs":"0fc99463e633144c5d59d39c35b5477da1f1b90f5448cadc374=
54b7f4b97707e","src/atomic/consume.rs":"7a7736fcd64f6473dfea7653559ffc5e1a2=
a234df43835f8aa8734862145ac15","src/atomic/mod.rs":"94193895fa03cece415e8d7=
be700b73a9a8a7015774ca821253438607f9b0736","src/atomic/seq_lock.rs":"27182e=
6b87a9db73c5f6831759f8625f9fcdec3c2828204c444aef04f427735a","src/atomic/seq=
_lock_wide.rs":"9888dd03116bb89ca36d4ab8d5a0b5032107a2983a7eb8024454263b090=
80088","src/backoff.rs":"8fd5e3dcccc05860680e49c8498de8096bee9140bcfee8723d=
97117106a020d0","src/cache_padded.rs":"8bb8925e2df44224ffa29f31a2f9c08d88d8=
bd3df6c1ce47003598225055fdb5","src/lib.rs":"6f1bcf157abe06ad8458a53e865bf8e=
fab9fad4a9424790147cee8fefb3795d8","src/sync/mod.rs":"eca73c04f821859b8434d=
2b93db87d160dc6a3f65498ca201cd40d732ca4c134","src/sync/once_lock.rs":"c03dc=
9c05a817e087dccf8b682f7307501542805533551da3c2bab442bc40743","src/sync/park=
er.rs":"91f3a7d4ee8d9e06b6558d180e8a0df08ff5c6cef612b4ce4790f9f75cb34f84","=
src/sync/sharded_lock.rs":"6391b3b99b194b8e0888446c2dec340e4fb095753bcf0c1a=
80bc654f9c8be0e3","src/sync/wait_group.rs":"3e339aab014f50e214fea535c841755=
113ea058153378ed54e50a4acb403c937","src/thread.rs":"21cf9b3e965529e5c0a6ff8=
fc1ec846bfe0006c41deb238a149be8d07384e955","tests/atomic_cell.rs":"bf8bc869=
c922a1cbf929c3b741bae0cae98f2157f572b5a4eb2873d20a407c22","tests/cache_padd=
ed.rs":"1bfaff8354c8184e1ee1f902881ca9400b60effb273b0d3f752801a483d2b66d","=
tests/parker.rs":"6def4721287d9d70b1cfd63ebb34e1c83fbb3376edbad2bc8aac6ef69=
dd99d20","tests/sharded_lock.rs":"314adeb8a651a28935f7a49c9a261b8fa1fd82bf6=
a16c865a5aced6216d7e40b","tests/thread.rs":"9a7d7d3028c552fd834c68598b04a1c=
c252a816bc20ab62cec060d6cd09cab10","tests/wait_group.rs":"02661c2a820a5abe8=
b0c8fe15a6650aead707b57cdda0610d1b09a2680ed6969"},"package":"edbafec5fa1f19=
6ca66527c1b12c2ec4745ca14b50f1ad8f9f6f720b55d11fac"}
+\ No newline at end of file
++{"files":{"CHANGELOG.md":"65d3e11edf9498bdbc930c8c3878b7d3a90c1a0b1698597=
dc4a396a547fa0948","Cargo.toml":"1e4259a5a47271e8ae040b91e17652b5a4e0e7e45c=
3f22de5008db276f3a50bf","LICENSE-APACHE":"a60eea817514531668d7e00765731449f=
e14d059d3249e0bc93b36de45f759f2","LICENSE-MIT":"5734ed989dfca1f625b40281ee9=
f4530f91b2411ec01cb748223e7eb87e201ab","README.md":"2a19af38a52dd965c2d66bb=
39f90a85b430b51ee9ccb29e9e1978ee7091e5087","benches/atomic_cell.rs":"c927eb=
3cd1e5ecc4b91adbc3bde98af15ffab4086190792ba64d5cde0e24df3d","build.rs":"108=
ba75398e3169c35b0e9754782391e4e4a9f9bf0ae2b216b55d836c4ac9ba8","no_atomic.r=
s":"f58085b9d0666ccf62e0ae17fb5dae937c0a86fcc55dc0ae04ad8659e696a49c","src/=
atomic/atomic_cell.rs":"0fc99463e633144c5d59d39c35b5477da1f1b90f5448cadc374=
54b7f4b97707e","src/atomic/consume.rs":"7a7736fcd64f6473dfea7653559ffc5e1a2=
a234df43835f8aa8734862145ac15","src/atomic/mod.rs":"94193895fa03cece415e8d7=
be700b73a9a8a7015774ca821253438607f9b0736","src/atomic/seq_lock.rs":"27182e=
6b87a9db73c5f6831759f8625f9fcdec3c2828204c444aef04f427735a","src/atomic/seq=
_lock_wide.rs":"9888dd03116bb89ca36d4ab8d5a0b5032107a2983a7eb8024454263b090=
80088","src/backoff.rs":"8fd5e3dcccc05860680e49c8498de8096bee9140bcfee8723d=
97117106a020d0","src/cache_padded.rs":"8bb8925e2df44224ffa29f31a2f9c08d88d8=
bd3df6c1ce47003598225055fdb5","src/lib.rs":"6f1bcf157abe06ad8458a53e865bf8e=
fab9fad4a9424790147cee8fefb3795d8","src/sync/mod.rs":"eca73c04f821859b8434d=
2b93db87d160dc6a3f65498ca201cd40d732ca4c134","src/sync/once_lock.rs":"c03dc=
9c05a817e087dccf8b682f7307501542805533551da3c2bab442bc40743","src/sync/park=
er.rs":"91f3a7d4ee8d9e06b6558d180e8a0df08ff5c6cef612b4ce4790f9f75cb34f84","=
src/sync/sharded_lock.rs":"6391b3b99b194b8e0888446c2dec340e4fb095753bcf0c1a=
80bc654f9c8be0e3","src/sync/wait_group.rs":"3e339aab014f50e214fea535c841755=
113ea058153378ed54e50a4acb403c937","src/thread.rs":"21cf9b3e965529e5c0a6ff8=
fc1ec846bfe0006c41deb238a149be8d07384e955","tests/atomic_cell.rs":"bf8bc869=
c922a1cbf929c3b741bae0cae98f2157f572b5a4eb2873d20a407c22","tests/cache_padd=
ed.rs":"1bfaff8354c8184e1ee1f902881ca9400b60effb273b0d3f752801a483d2b66d","=
tests/parker.rs":"6def4721287d9d70b1cfd63ebb34e1c83fbb3376edbad2bc8aac6ef69=
dd99d20","tests/sharded_lock.rs":"314adeb8a651a28935f7a49c9a261b8fa1fd82bf6=
a16c865a5aced6216d7e40b","tests/thread.rs":"9a7d7d3028c552fd834c68598b04a1c=
c252a816bc20ab62cec060d6cd09cab10","tests/wait_group.rs":"02661c2a820a5abe8=
b0c8fe15a6650aead707b57cdda0610d1b09a2680ed6969"},"package":"edbafec5fa1f19=
6ca66527c1b12c2ec4745ca14b50f1ad8f9f6f720b55d11fac"}
+\ No newline at end of file
diff --git a/recipes-devtools/rust/files/getrandom-open64.patch b/recipes-d=
evtools/rust/files/getrandom-open64.patch
new file mode 100644
index 0000000..b35195e
--- /dev/null
+++ b/recipes-devtools/rust/files/getrandom-open64.patch
@@ -0,0 +1,46 @@
+Do not use open64 on linux with musl
+
+glibc is providing open64 and other lfs64 functions but musl aliases
+them to normal equivalents since off_t is always 64-bit on musl,
+therefore check for target env along when target OS is linux before
+using open64, this is more available. Latest Musl has made these
+namespace changes [1]
+
+There is no need for using LFS64 open explicitly as we are only using it
+for opening device files and not real files
+
+[1] https://git.musl-libc.org/cgit/musl/commit/?id=3D246f1c811448f37a44b41=
cd8df8d0ef9736d95f4
+
+Upstream-Status: Backport [https://github.com/rust-random/getrandom/commit=
/7f73e3ccc1f53bfc419e4ddcfd343766aa5837b6]
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+Signed-off-by: Alex Kiernan <alex.kiernan@gmail.com>
+--- a/vendor/getrandom/.cargo-checksum.json
++++ b/vendor/getrandom/.cargo-checksum.json
+@@ -1 +1 @@
+-{"files":{"CHANGELOG.md":"cb054908f44d0e7f229dcc4580bcc4f2c3e2da198c84292=
710f730b33cc3d5f6","Cargo.toml":"708a5d9c89443b937aa50260e26a01f9ebfdd50a7a=
e312956795834e3187baf3","LICENSE-APACHE":"aaff376532ea30a0cd5330b9502ad4a4c=
8bf769c539c87ffe78819d188a18ebf","LICENSE-MIT":"209fbbe0ad52d9235e37badf9ca=
dfe4dbdc87203179c0899e738b39ade42177b","README.md":"7ae74633326a22fd6298d7f=
209fb14884277bd98049795f444945acbb2b0dfbd","benches/mod.rs":"c01b05c6d690a4=
b8937d25252f1385a6bff378517318ce832ea520036aabd571","src/3ds.rs":"0f48fc15f=
89b518fb92e06aaa4838b62dc073598e8f288df56ad1e5a9251af1e","src/bsd_arandom.r=
s":"d90c419d4def20f83e7535cd3f5ec07035045011a50c3652951d196a120c5d3e","src/=
custom.rs":"ce4640776d36872dbbd5e194bf29f6bcda3ef4549ca04fe59f5aeab1dea1d82=
1","src/dragonfly.rs":"47f933eac189f6ea48ecf021efd0747ebce1b43d1bece6bbf72a=
951bab705987","src/error.rs":"ff09a7e02d7aff3e45eca6bbef6c686cc46f3c2371a08=
97a856e4dec4b942e46","src/error_impls.rs":"9c34832ebb99cd5e31bc5c8ffc5beb5b=
3fa6f7ff0226aaa1cdf8e10e6d64b324","src/espidf.rs":"19f101486584fde6dad962f4=
d9792de168658047312106641a5caf6866a5bbcf","src/fuchsia.rs":"470d8509deb5b06=
fa6417f294c0a49e0e35a580249a5d8944c3be5aa746f64ea","src/ios.rs":"4bad4f5c09=
6a50338b86aeac91a937c18bc55b9555e6f34806ad13732e64523d","src/js.rs":"370610=
a19045012c87c986279aad6b150cd728a44015dcc5779256e4a2e6629b","src/lib.rs":"8=
e5c2c8edcbdbf2cee46b86d96d951cc6d5c00f7c11cfc9c27de27e756b5c4cc","src/linux=
_android.rs":"ec24575aa4ae71b6991290dadfdea931b05397c3faababf24bd794f1a9624=
835","src/macos.rs":"6c09827ad5292cd022e063efa79523bfdb50ed08b9867ebaa007cd=
321b8d218e","src/openbsd.rs":"450a23ead462d4a840fee4aa0bfdab1e3d88c8f48e4bb=
608d457429ddeca69c0","src/rdrand.rs":"79d23183b1905d61bd9df9729dc798505a2ed=
750d3339e342ab144e1709827e4","src/solaris_illumos.rs":"d52fee9dd7d661f960c0=
1894edd563c1ff8a512c111f7803092d9aa2ff98718e","src/solid.rs":"997035d54c976=
2d22a5a14f54e7fbed4dd266cdeacbdf6aab7d8aee05537e8ba","src/use_file.rs":"16e=
42eb0a56e375c330c1ca8eb58c444e82ef3ad35230b961fdba96a02a68804","src/util.rs=
":"da6964dc1523f1cb8d26365fa6a8ece46360587e6974931624b271f0c72cda8b","src/u=
til_libc.rs":"2a63ac0e6dab16b85c4728b79a16e0640301e8b876f151b0a1db0b4394fa2=
19f","src/vxworks.rs":"a5aa0e40f890e0f35626458bb656a3340b8af3111e4bacd2e125=
05a8d50a3505","src/wasi.rs":"dfdd0a870581948bd03abe64d49ca4295d9cfa26e09b97=
a526fd5e17148ad9ca","src/windows.rs":"d0b4f2afd1959660aa9abcd9477764bd7dc0b=
7d7048aee748804b37963c77c6f","tests/common/mod.rs":"b6beee8f535d2d094a65711=
fe0af91a6fc220aa09729ed7269fe33cafdc9177f","tests/custom.rs":"9f2c0193193f6=
bcf641116ca0b3653b33d2015e0e98ce107ee1d1f60c5eeae3a","tests/normal.rs":"9e1=
c4b1e468a09ed0225370dfb6608f8b8135e0fabb09bbc1a718105164aade6","tests/rdran=
d.rs":"4474ccebf9d33c89288862a7e367018405968dddc55c7c6f97e21b5fe2264601"},"=
package":"c05aeb6a22b8f62540c194aac980f2115af067bfe15a0734d7277a768d396b31"}
+\ No newline at end of file
++{"files":{"CHANGELOG.md":"cb054908f44d0e7f229dcc4580bcc4f2c3e2da198c84292=
710f730b33cc3d5f6","Cargo.toml":"708a5d9c89443b937aa50260e26a01f9ebfdd50a7a=
e312956795834e3187baf3","LICENSE-APACHE":"aaff376532ea30a0cd5330b9502ad4a4c=
8bf769c539c87ffe78819d188a18ebf","LICENSE-MIT":"209fbbe0ad52d9235e37badf9ca=
dfe4dbdc87203179c0899e738b39ade42177b","README.md":"7ae74633326a22fd6298d7f=
209fb14884277bd98049795f444945acbb2b0dfbd","benches/mod.rs":"c01b05c6d690a4=
b8937d25252f1385a6bff378517318ce832ea520036aabd571","src/3ds.rs":"0f48fc15f=
89b518fb92e06aaa4838b62dc073598e8f288df56ad1e5a9251af1e","src/bsd_arandom.r=
s":"d90c419d4def20f83e7535cd3f5ec07035045011a50c3652951d196a120c5d3e","src/=
custom.rs":"ce4640776d36872dbbd5e194bf29f6bcda3ef4549ca04fe59f5aeab1dea1d82=
1","src/dragonfly.rs":"47f933eac189f6ea48ecf021efd0747ebce1b43d1bece6bbf72a=
951bab705987","src/error.rs":"ff09a7e02d7aff3e45eca6bbef6c686cc46f3c2371a08=
97a856e4dec4b942e46","src/error_impls.rs":"9c34832ebb99cd5e31bc5c8ffc5beb5b=
3fa6f7ff0226aaa1cdf8e10e6d64b324","src/espidf.rs":"19f101486584fde6dad962f4=
d9792de168658047312106641a5caf6866a5bbcf","src/fuchsia.rs":"470d8509deb5b06=
fa6417f294c0a49e0e35a580249a5d8944c3be5aa746f64ea","src/ios.rs":"4bad4f5c09=
6a50338b86aeac91a937c18bc55b9555e6f34806ad13732e64523d","src/js.rs":"370610=
a19045012c87c986279aad6b150cd728a44015dcc5779256e4a2e6629b","src/lib.rs":"8=
e5c2c8edcbdbf2cee46b86d96d951cc6d5c00f7c11cfc9c27de27e756b5c4cc","src/linux=
_android.rs":"ec24575aa4ae71b6991290dadfdea931b05397c3faababf24bd794f1a9624=
835","src/macos.rs":"6c09827ad5292cd022e063efa79523bfdb50ed08b9867ebaa007cd=
321b8d218e","src/openbsd.rs":"450a23ead462d4a840fee4aa0bfdab1e3d88c8f48e4bb=
608d457429ddeca69c0","src/rdrand.rs":"79d23183b1905d61bd9df9729dc798505a2ed=
750d3339e342ab144e1709827e4","src/solaris_illumos.rs":"d52fee9dd7d661f960c0=
1894edd563c1ff8a512c111f7803092d9aa2ff98718e","src/solid.rs":"997035d54c976=
2d22a5a14f54e7fbed4dd266cdeacbdf6aab7d8aee05537e8ba","src/use_file.rs":"16e=
42eb0a56e375c330c1ca8eb58c444e82ef3ad35230b961fdba96a02a68804","src/util.rs=
":"da6964dc1523f1cb8d26365fa6a8ece46360587e6974931624b271f0c72cda8b","src/u=
til_libc.rs":"a47b20e73637fed248405650f56358f3339e511b217b7ba80e32011d8ee2c=
a22","src/vxworks.rs":"a5aa0e40f890e0f35626458bb656a3340b8af3111e4bacd2e125=
05a8d50a3505","src/wasi.rs":"dfdd0a870581948bd03abe64d49ca4295d9cfa26e09b97=
a526fd5e17148ad9ca","src/windows.rs":"d0b4f2afd1959660aa9abcd9477764bd7dc0b=
7d7048aee748804b37963c77c6f","tests/common/mod.rs":"b6beee8f535d2d094a65711=
fe0af91a6fc220aa09729ed7269fe33cafdc9177f","tests/custom.rs":"9f2c0193193f6=
bcf641116ca0b3653b33d2015e0e98ce107ee1d1f60c5eeae3a","tests/normal.rs":"9e1=
c4b1e468a09ed0225370dfb6608f8b8135e0fabb09bbc1a718105164aade6","tests/rdran=
d.rs":"4474ccebf9d33c89288862a7e367018405968dddc55c7c6f97e21b5fe2264601"},"=
package":"c05aeb6a22b8f62540c194aac980f2115af067bfe15a0734d7277a768d396b31"}
+\ No newline at end of file
+--- a/vendor/getrandom/src/util_libc.rs
++++ b/vendor/getrandom/src/util_libc.rs
+@@ -135,19 +135,11 @@ impl Weak {
+     }
+ }
+=20
+-cfg_if! {
+-    if #[cfg(any(target_os =3D "linux", target_os =3D "emscripten"))] {
+-        use libc::open64 as open;
+-    } else {
+-        use libc::open;
+-    }
+-}
+-
+ // SAFETY: path must be null terminated, FD must be manually closed.
+ pub unsafe fn open_readonly(path: &str) -> Result<libc::c_int, Error> {
+     debug_assert_eq!(path.as_bytes().last(), Some(&0));
+     loop {
+-        let fd =3D open(path.as_ptr() as *const _, libc::O_RDONLY | libc:=
:O_CLOEXEC);
++        let fd =3D libc::open(path.as_ptr() as *const _, libc::O_RDONLY |=
 libc::O_CLOEXEC);
+         if fd >=3D 0 {
+             return Ok(fd);
+         }
diff --git a/recipes-devtools/rust/files/hardcodepaths.patch b/recipes-devt=
ools/rust/files/hardcodepaths.patch
new file mode 100644
index 0000000..cb99e8b
--- /dev/null
+++ b/recipes-devtools/rust/files/hardcodepaths.patch
@@ -0,0 +1,58 @@
+When building for the target, some build paths end up embedded in the bina=
ries.=20
+These changes remove that. Further investigation is needed to work out the=
 way
+to resolve these issues properly upstream.
+
+Upstream-Status: Inappropriate [patches need rework]
+Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
+
+Index: rustc-1.66.0-src/compiler/rustc_codegen_llvm/src/context.rs
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
+--- rustc-1.66.0-src.orig/compiler/rustc_codegen_llvm/src/context.rs
++++ rustc-1.66.0-src/compiler/rustc_codegen_llvm/src/context.rs
+@@ -160,46 +160,6 @@ pub unsafe fn create_module<'ll>(
+         }
+     }
+=20
+-    // Ensure the data-layout values hardcoded remain the defaults.
+-    if sess.target.is_builtin {
+-        let tm =3D crate::back::write::create_informational_target_machin=
e(tcx.sess);
+-        llvm::LLVMRustSetDataLayoutFromTargetMachine(llmod, tm);
+-        llvm::LLVMRustDisposeTargetMachine(tm);
+-
+-        let llvm_data_layout =3D llvm::LLVMGetDataLayoutStr(llmod);
+-        let llvm_data_layout =3D str::from_utf8(CStr::from_ptr(llvm_data_=
layout).to_bytes())
+-            .expect("got a non-UTF8 data-layout from LLVM");
+-
+-        // Unfortunately LLVM target specs change over time, and right no=
w we
+-        // don't have proper support to work with any more than one
+-        // `data_layout` than the one that is in the rust-lang/rust repo.=
 If
+-        // this compiler is configured against a custom LLVM, we may have=
 a
+-        // differing data layout, even though we should update our own to=
 use
+-        // that one.
+-        //
+-        // As an interim hack, if CFG_LLVM_ROOT is not an empty string th=
en we
+-        // disable this check entirely as we may be configured with somet=
hing
+-        // that has a different target layout.
+-        //
+-        // Unsure if this will actually cause breakage when rustc is conf=
igured
+-        // as such.
+-        //
+-        // FIXME(#34960)
+-        let cfg_llvm_root =3D option_env!("CFG_LLVM_ROOT").unwrap_or("");
+-        let custom_llvm_used =3D cfg_llvm_root.trim() !=3D "";
+-
+-        if !custom_llvm_used && target_data_layout !=3D llvm_data_layout {
+-            bug!(
+-                "data-layout for target `{rustc_target}`, `{rustc_layout}=
`, \
+-                  differs from LLVM target's `{llvm_target}` default layo=
ut, `{llvm_layout}`",
+-                rustc_target =3D sess.opts.target_triple,
+-                rustc_layout =3D target_data_layout,
+-                llvm_target =3D sess.target.llvm_target,
+-                llvm_layout =3D llvm_data_layout
+-            );
+-        }
+-    }
+-
+     let data_layout =3D SmallCStr::new(&target_data_layout);
+     llvm::LLVMSetDataLayout(llmod, data_layout.as_ptr());
+=20
diff --git a/recipes-devtools/rust/files/target-rust-ccld.c b/recipes-devto=
ols/rust/files/target-rust-ccld.c
new file mode 100644
index 0000000..d3d491f
--- /dev/null
+++ b/recipes-devtools/rust/files/target-rust-ccld.c
@@ -0,0 +1,19 @@
+/*
+*
+* Copyright (C) 2022      Wind River Systems
+*
+* SPDX-License-Identifier: MIT
+*
+*/
+
+#include <string.h>
+#include <stdlib.h>
+#include <unistd.h>
+
+int main (int argc, char *argv[])
+{
+    unsetenv("LD_LIBRARY_PATH");
+    execvp("target-rust-ccld-wrapper", argv);
+
+    return 0;
+}
diff --git a/recipes-devtools/rust/files/zlib-off64_t.patch b/recipes-devto=
ols/rust/files/zlib-off64_t.patch
new file mode 100644
index 0000000..78c8a2a
--- /dev/null
+++ b/recipes-devtools/rust/files/zlib-off64_t.patch
@@ -0,0 +1,31 @@
+Do not undefine _FILE_OFFSET_BITS when
+_LARGEFILE64_SOURCE is defined. This ends up
+causing 64bit time_t to fail the build because
+it needs 64 bit off_t
+
+Upstream-Status: Submitted [https://github.com/madler/zlib/pull/764]
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+--- a/vendor/libz-sys/src/zlib/gzguts.h
++++ b/vendor/libz-sys/src/zlib/gzguts.h
+@@ -3,15 +3,6 @@
+  * For conditions of distribution and use, see copyright notice in zlib.h
+  */
+=20
+-#ifdef _LARGEFILE64_SOURCE
+-#  ifndef _LARGEFILE_SOURCE
+-#    define _LARGEFILE_SOURCE 1
+-#  endif
+-#  ifdef _FILE_OFFSET_BITS
+-#    undef _FILE_OFFSET_BITS
+-#  endif
+-#endif
+-
+ #ifdef HAVE_HIDDEN
+ #  define ZLIB_INTERNAL __attribute__((visibility ("hidden")))
+ #else
+--- a/vendor/libz-sys/.cargo-checksum.json
++++ b/vendor/libz-sys/.cargo-checksum.json
+@@ -1 +1 @@
+-{"files":{"Cargo.toml":"ce67ce7c1f3c4ad7832d58ed198b8dd745abacc620738d575=
c4b1a9ac9e79449","LICENSE-APACHE":"a60eea817514531668d7e00765731449fe14d059=
d3249e0bc93b36de45f759f2","LICENSE-MIT":"34c467b6945a22696d060b8fdd2379d464=
acb3408d4c599d3dc5fe4fa1b4c84f","README.md":"b23e18bdce29fabc3d34e88576219f=
50d1d735a355e427e6d6ebc09254138070","build.rs":"e034f7828ff43a0bb0f7b690e8e=
99b09b8f4e1ae0560b6fb4008006e9cd4d9dd","ci/Dockerfile":"4d479ea63b9e384b386=
4fa1204894bfae4890017d6bf03486274457fe2c26cf8","ci/run-docker.sh":"0ea7a4fd=
c9f6026110e20fa2e25dbadfc1e6dafed9ded5981ae36772ad207e26","ci/set_rust_vers=
ion.bash":"4284f86ac3923a73dd79e89bef2d0b136c6d104d6dae92e24b4a96eaffa28890=
","ci/test.bash":"73a936768549eedf96a7cddb350ada128e058d5d9004244ebf3d99336=
3b69599","src/lib.rs":"40476f4e896c936c21f908396255c7a4951ef8bf93788858ade6=
cace2539927b","src/smoke.c":"10607c81b73811bfcb9718767312bf97ba2ccf7048ea2f=
18a2085aa06ad7f91b","src/zlib-ng/CMakeLists.txt":"60b836817b51e5893b1e3203a=
daf57a98678af17957eccaef679bd96bcf5d90b","src/zlib-ng/FAQ.zlib":"d1777aa057=
caeef50fc291aac7a414363b2186bb3d65bb0f8bfa2bfd61cf0ad5","src/zlib-ng/INDEX.=
md":"989545e90d8e9ac149034f762ce78ed8976ebf9324326228dea37ca190154609","src=
/zlib-ng/LICENSE.md":"d3c80be055d94d798eaa786116e84fa0b010bc11420b5d2060d97=
8ea77845436","src/zlib-ng/Makefile.in":"15027511a77e76b423eccf10ebfe66398ea=
96862cbce2415e5ebac7c7cbb6ab6","src/zlib-ng/PORTING.md":"5cff8c878c7958f6a4=
bada5a403dcc88961c9607826faece1aef202b5d95c550","src/zlib-ng/README.md":"9c=
ac4a98ecf45f50adf5030d4dc58b3cf9f3ae8e3ec78d30fdae4a99a2b4b8d9","src/zlib-n=
g/adler32.c":"82ffa1b4fc4b198ba8004135f79b8819d9f2b28e851c30c0ab41e6d32dfbf=
70d","src/zlib-ng/adler32_p.h":"f56915c59a345baf4558374447385a317e29365a4db=
2fbb38af4de3e1a1a0201","src/zlib-ng/arch/arm/Makefile.in":"95464884ba75a7b1=
2c9ceda5845d8d68d5a7d7dac8a8dc24b27beb2192e5b97b","src/zlib-ng/arch/arm/adl=
er32_neon.c":"3990b8d5570b12c2162218fe0e9bc723a03f1c89b5ed3ba70a74a98976260=
ee7","src/zlib-ng/arch/arm/arm.h":"855adbb02d7b9a5714a17d9dcff493610e7cd2b9=
a1f4e58e1c99626ab536e868","src/zlib-ng/arch/arm/armfeature.c":"dd09ad2712b0=
37e8d52173402f39cc2be1bc89d47fc10259ef81b4c64aef7110","src/zlib-ng/arch/arm=
/chunkset_neon.c":"65b70014888e9fbdb89bfbfa52f23b8953dc015466577da292d4780b=
55c5d95a","src/zlib-ng/arch/arm/crc32_acle.c":"5a96afc594697d1399870d1bfb06=
23a03869eff42caae74013f147cec4aa982e","src/zlib-ng/arch/arm/ctzl.h":"feb70d=
55e66025fff806e30e48002b35cfff79533d352585cfa5f118edbc90b1","src/zlib-ng/ar=
ch/arm/insert_string_acle.c":"d1b1dae5aeada70f2b03c2cbf3112ce55a92401c2d877=
09081b04dcf5992e1ad","src/zlib-ng/arch/arm/slide_neon.c":"19d8cf5c742ac6b82=
164c7a183538ad1129f9f17e9b8bce8b40daac3820fb6c4","src/zlib-ng/arch/generic/=
Makefile.in":"f41a34839986eac8dd52cf91fada0efff4171c059ab5d7db6347c91bd6d9d=
b09","src/zlib-ng/arch/power/Makefile.in":"69644d1a0ff8e7f38005c0a55cdbaf3f=
0d87f42abf8fc4f4136271c4fedfb846","src/zlib-ng/arch/power/adler32_power8.c"=
:"79b75e98ad3a62facbbdd8c0b178d3f993b57f6e34d320bf47eca33aa8c330a1","src/zl=
ib-ng/arch/power/power.c":"0647afb3b3b7ce2a19b4815ec8fdeee0b37c759413e5ef0a=
668a2dba22d94803","src/zlib-ng/arch/power/power.h":"f3f15f94fed98a2f7dd5d45=
68c5172e597228be4141d6895062703c3f70024da","src/zlib-ng/arch/power/slide_ha=
sh_power8.c":"932ea533d25e2f5478afe0c47830e7ef24276cad0d75fd91f2d8c799bd4b5=
d36","src/zlib-ng/arch/s390/Makefile.in":"eef6c3169723f089b0b5f852423ec55bf=
0364caeddd7cda991f2e76bc1682107","src/zlib-ng/arch/s390/README.md":"4f5018c=
b7c8ee217710a90193088889a15f1675d205a104140f6a1ac07ce412c","src/zlib-ng/arc=
h/s390/dfltcc_common.c":"6771ec4457da9f4b00c74bcc0828735e21c74b9162cb37383c=
297c3b5028cddf","src/zlib-ng/arch/s390/dfltcc_common.h":"ed339007feae58d187=
9e096addb30ed86cd5cf11222db22c45f48b47328cf6db","src/zlib-ng/arch/s390/dflt=
cc_deflate.c":"7b3dec7be4055c7748defc626dc91db99787c9f3b70b7d7b40282558bbb4=
78e9","src/zlib-ng/arch/s390/dfltcc_deflate.h":"c4c411f221cc0f6b218326e973f=
ef05c65840ba49878aff052dac0bb38121cbd","src/zlib-ng/arch/s390/dfltcc_detail=
.h":"01dbdfaf5e8ccf522663b4daa76e9138dde514292c35a623be4bcbbf4b82dea2","src=
/zlib-ng/arch/s390/dfltcc_inflate.c":"a96226eba3538d3904893cfe1b08395668e6a=
722b56f28d5b5debb3176161b4b","src/zlib-ng/arch/s390/dfltcc_inflate.h":"d7a4=
a5ae79abd1a5456521926b918becfe86c253a4fc23723fbc09f7c3303128","src/zlib-ng/=
arch/x86/INDEX.md":"c12f9bf0d66743a6472fb756bf46def8eea1dd235be7fca994dcb22=
f693a3524","src/zlib-ng/arch/x86/Makefile.in":"9f6fe7567a99e81aaa3bef8ccfa1=
ad40f524efc285cf8dfe0f497a1530f8016c","src/zlib-ng/arch/x86/adler32_avx.c":=
"99056732c7bd5d53dc108f282811a40bf21570926781af5dc7b17cb9218963de","src/zli=
b-ng/arch/x86/adler32_ssse3.c":"883a5520b4481225d097c90c5359106a3c8eb7b9214=
99c94276e999b7c39adc5","src/zlib-ng/arch/x86/chunkset_avx.c":"15060e7ee487f=
b1daef9be25343ae387392276933921e4b4db0c67831dc0854f","src/zlib-ng/arch/x86/=
chunkset_sse.c":"f7ccb55b67101ddb9def951a6d6f9dd4cb108fdd9e65f0f21d82723d1b=
093a22","src/zlib-ng/arch/x86/compare258_avx.c":"8b2838d168de4608327f25fe52=
d53763a82413ee911d87947d3fcd72c7f9bf26","src/zlib-ng/arch/x86/compare258_ss=
e.c":"b5049722ffd4a43a96868eeba5e000271cfc5fcbf3c2657026ead15b1df28a10","sr=
c/zlib-ng/arch/x86/crc_folding.c":"75199cdd06ec2f8f43bf38583b2c4d98bbbbd924=
e659267fdc1fa5134f1472eb","src/zlib-ng/arch/x86/crc_folding.h":"93921254661=
1917e9e066e8ed30cdda95680ec1f5fe0890cc4865b4e6d7fc215","src/zlib-ng/arch/x8=
6/insert_string_sse.c":"9e84a75b6a565422eb105261b6729d2a02b89133bd14372c949=
d5381b5deed3e","src/zlib-ng/arch/x86/slide_avx.c":"5e448e439ac24e7cb10eee17=
6ca37f2c63f73c135c0a2af040e232bad490997d","src/zlib-ng/arch/x86/slide_sse.c=
":"1946cabb634c905fddef0a22b2fad19dfd99110169567c3beceef71145b2e316","src/z=
lib-ng/arch/x86/x86.c":"1af56e27b2e951e1ad1344e62c2f7a8c49a776fcdd1cb0f4ea9=
d6152118a479e","src/zlib-ng/arch/x86/x86.h":"4d2d20ea0087089141e250e77bb3d4=
19954b9092810028b151581b9115a5fe8c","src/zlib-ng/chunkset.c":"c0dbc7abbdad5=
137a9efb2b0a76a212e77d4bf44beebe721c68359fa83002ff2","src/zlib-ng/chunkset_=
tpl.h":"35d15e97bd72d4e03dcec3ee804a08ea6a74faac2ef835caecc0e38bc9daf0c0","=
src/zlib-ng/cmake/detect-arch.c":"a9509327c2f4395955466b0acce453c29592d4686=
022714cb9e8b411d7e60c29","src/zlib-ng/cmake/detect-arch.cmake":"9cbb09b297f=
79e94b55fffb9acbafbee8d6761e854d818f1a0c686e3fcddf574","src/zlib-ng/cmake/d=
etect-coverage.cmake":"e4e372991ba80a16ad47df2716708a56013cc628aa7ed01573a2=
360c60610125","src/zlib-ng/cmake/detect-install-dirs.cmake":"87031a40428a10=
4f5cf38ecdb8a5028d8c679cfa772a58adde8380c809b34eff","src/zlib-ng/cmake/dete=
ct-sanitizer.cmake":"5e6fe6d2d877540811313f0c8e9884adb21a9ace2e24f23190f0fa=
c1d52dd2b8","src/zlib-ng/cmake/run-and-compare.cmake":"dc45eeb6d3e485404983=
4ec1ec2891342646c7fb803a0b6c2644d6316f89b668","src/zlib-ng/cmake/run-and-re=
direct.cmake":"2de9c784da3e04331465a3c56125b9c7d8e74b898b4cf85353aca196f90e=
a9bb","src/zlib-ng/cmake/test-compress.cmake":"3f37319963a80a31f752fca1c825=
71d552fd4701326bc40fdb02b54ec3f7a3f0","src/zlib-ng/cmake/test-tools.cmake":=
"4dcf099245085ee2b6d8ec41620bca3f7b718365dbb9bb0ad23931e83bf36aeb","src/zli=
b-ng/cmake/toolchain-aarch64.cmake":"8d7ba07ee1cb9fbc7817da1c5e74ce6c85ff81=
c10962a33941f0e24471956e59","src/zlib-ng/cmake/toolchain-arm.cmake":"0b0ab2=
b1093ef851c3dbd6fe53f855628df0778841a488aaef85d2c70f04a257","src/zlib-ng/cm=
ake/toolchain-mingw-i686.cmake":"6551576324fed6ccedffcfe8da762402dc863c20a2=
789a9b0030b9d32e15a15f","src/zlib-ng/cmake/toolchain-mingw-x86_64.cmake":"e=
c7bf5c8640fb61d2e30f8db7b588ca9b66da92d4a59e88ce16c5fc7f9ce02b6","src/zlib-=
ng/cmake/toolchain-powerpc.cmake":"6373abe883a99616aa51422a9b714894dc521211=
be49502463576f58d3d26b2a","src/zlib-ng/cmake/toolchain-powerpc64.cmake":"32=
8d1ea039a30e03ee9a552858b9f180b3da2614b712f618da1a0fa98f30a53b","src/zlib-n=
g/cmake/toolchain-powerpc64le.cmake":"ec90270bd1f4aa649abddddd2618168d399d5=
8a1c1c35b3d8d909e570eb9be1c","src/zlib-ng/cmake/toolchain-s390x.cmake":"cb6=
34252c21c4f55d06cdc49ce522a5546aae592daa0f12aa4282c0aef323828","src/zlib-ng=
/cmake/toolchain-sparc64.cmake":"d70d39760a23886ebd1c5a1a87651bfb47a9b24def=
9e7955ee1cbec60b40925b","src/zlib-ng/compare258.c":"56bfd48d5ff9ca422fbb728=
df7a373436c73796561dff118c7d4039fe70d29e2","src/zlib-ng/compress.c":"1abf5b=
13e3e805becc14f4f16dad9bf816f4fe41754b1abf75f670dcc84567cc","src/zlib-ng/co=
nfigure":"681d5b1303aab0523334c90ff049757e7ee6b2683f2411204b7245ba4adca4b2"=
,"src/zlib-ng/crc32.c":"98440be8a99381151a2d740f2e2228e8c1b23b9193c3642c52a=
4e34799506336","src/zlib-ng/crc32_comb.c":"78cd1a3d31963bfa5bd9d476250b2bb7=
777b12b6ebe0475acf021ca794757165","src/zlib-ng/crc32_comb_tbl.h":"d6615d209=
d6c7d5248c6f7fe4e5dbded13c0eb87997b37693032c2902927407d","src/zlib-ng/crc32=
_p.h":"1fa91375a18e090c0a0dfda39de3df36346a0b1be36c808be6b6c29c32eba922","s=
rc/zlib-ng/crc32_tbl.h":"d629378ba38ff5775095b64e277bcd41c4b89fab9b5647a9fb=
29e15da0db0161","src/zlib-ng/deflate.c":"1a5ff34bf68b88e30f578ce7b15dd996c0=
5fed7bf42f58f4616af470ee18f103","src/zlib-ng/deflate.h":"a074e9a5dd5d689db6=
3655251d6a0948e7a7c0c4a4f6d0ca60bfe18291f3c34f","src/zlib-ng/deflate_fast.c=
":"b3b261b3a02b089599fcd9448965ef5d8e8b0e8e9556857357c9632930c7c748","src/z=
lib-ng/deflate_medium.c":"1c3d95cbac76052d39595ea750c5536541c18302b9abb398c=
27b58955318bba8","src/zlib-ng/deflate_p.h":"95026b1b48aa78204381b32617dd44e=
8c820c9bb21b415ebfcb33e6b5255233e","src/zlib-ng/deflate_quick.c":"280905a19=
1d2b2a7274f2453ac537e01a0fb6e7540a0b212c1514bfb8c9415ea","src/zlib-ng/defla=
te_slow.c":"a2c66723e1e71ffd6ff856407459ab311a4c6546ecf50285081fc7afcd0ccd2=
e","src/zlib-ng/doc/algorithm.txt":"992590931e982c0765286c2d83f6e9ff0a95aab=
b08e28c30c52bae3e8c4bd5ad","src/zlib-ng/doc/rfc1950.txt":"8f0475a5c984657bf=
26277f73df9456c9b97f175084f0c1748f1eb1f0b9b10b9","src/zlib-ng/doc/rfc1951.t=
xt":"5ebf4b5b7fe1c3a0c0ab9aa3ac8c0f3853a7dc484905e76e03b0b0f301350009","src=
/zlib-ng/doc/rfc1952.txt":"164ef0897b4cbec63abf1b57f069f3599bd0fb7c72c2a4de=
e21bd7e03ec9af67","src/zlib-ng/doc/txtvsbin.txt":"47c273bb22c9773248d380549=
a330e5c262266b1292154b0d3014f731cc73f47","src/zlib-ng/fallback_builtins.h":=
"f07e83c5c444554577c4240ff7722057ea2a689f6baa0f9e8bda32b9a46888ca","src/zli=
b-ng/functable.c":"d3747a4674ddbc903ab1d06efe63a1c4b52bf42f7dd38cde3701fa82=
b1d953f0","src/zlib-ng/functable.h":"e5a2d0c10411d23f04295bcb9ddb9889388974=
b723caef65aa5c4ea4739f4aa7","src/zlib-ng/gzguts.h":"cbf2afc8a6183002254a73c=
abe8376e54b1aea2ba042e36138f292c9cdb95d5c","src/zlib-ng/gzlib.c":"5b5bea4f3=
19e5d0a96b92aa431fb33926686cd20686c90d75e42e1481872bbcf","src/zlib-ng/gzrea=
d.c":"fc4a187ba45ceb7b4b50f4f8dedc7685fe8687e6f034638a6437bebf71d51a13","sr=
c/zlib-ng/gzwrite.c":"7c86058ae23f856c099e2663a5676c97cfa4fb5df9b92893c9407=
6ba4aa9a56b","src/zlib-ng/infback.c":"97a35de1a3d3bec50e112853e03bf1628cbed=
3b0fb84459cc423e3f9f61fbea7","src/zlib-ng/inffast.c":"701519ee11d39cdf4e808=
395722415c42ff2be9445f66408fd879370f3242b57","src/zlib-ng/inffast.h":"42e74=
a92b496ab0726be317e8497a12bf3c3cf3d0d533440ce65befd3929c71c","src/zlib-ng/i=
nffixed_tbl.h":"a94225335396245e9f0ccb2e9b4b334fe7ee0111ed8e32a26bcd52187f3=
64314","src/zlib-ng/inflate.c":"a665bf717ee257a16a8ab993241f2cf9e71d49882ad=
dddb9518b88186f82a5cf","src/zlib-ng/inflate.h":"eb25527d1bdedaa45167926dce4=
c39d9aaa3147b0f4a95f38f5916528c30a09b","src/zlib-ng/inflate_p.h":"4a94c5119=
4da119770cf662ef289994f0c78d95184d54d6ae5d50a393e8f5a62","src/zlib-ng/inftr=
ees.c":"d1d88f98f9129c87f3ce1d6de5bea3ec867de23b1b2bdd585257d231aac82a4f","=
src/zlib-ng/inftrees.h":"624c6653a454447c6274adf922430a19c96ef73c7687e4559d=
247ff48970bab5","src/zlib-ng/insert_string.c":"aa22ba53a1e75821499809277f9c=
a0e5ef92b07a618136dd11ae1734e233b7c9","src/zlib-ng/insert_string_tpl.h":"1c=
eba9903324d10aad6e1d83653c4d534a5b06fd09076414a06215482be00bac","src/zlib-n=
g/match_tpl.h":"eeab4c6eea8511a7579738e622af062ad16f4016312e93ad34bc5903d8b=
3c4a1","src/zlib-ng/test/CVE-2002-0059/test.gz":"60bf96b8f433bd7e057ce3496a=
ceaccd70ec80f596a4aa8bcc7786056705ce66","src/zlib-ng/test/CVE-2003-0107.c":=
"1bfbc88dc501cd92b8b26bd8944af6b150b376ebfe7241d90e2b93109be3d68c","src/zli=
b-ng/test/CVE-2004-0797/test.gz":"38caae524705f676bde13a8df9fc8c7d2fe105ba6=
bdbab62a405b0276fd3aa2e","src/zlib-ng/test/CVE-2005-1849/test.gz":"e4d5a606=
17df4b5dd44eda94751ce1eacdb325792bba6e3cc4676719a3adf742","src/zlib-ng/test=
/CVE-2005-2096/test.gz":"8f702d4861aa3ec98ac03a59ff26b430939630cb5cd4266d26=
58d3b836d576f9","src/zlib-ng/test/GH-361/test.txt":"358497d0a7251ea42101dc7=
7b02337f46fd89af09643a8288e2a3082e5d24128","src/zlib-ng/test/GH-364/test.bi=
n":"af5570f5a1810b7af78caf4bc70a660f0df51e42baf91d4de5b2328de0e83dfc","src/=
zlib-ng/test/GH-382/defneg3.dat":"b22bef6b7392401c9e7b079402c4a4074053d7a91=
4d050400e37fd7af6fe26d5","src/zlib-ng/test/GH-751/test.txt":"b83d833803b7bc=
3124fb2a0034081f0b999ad10c33a8dfa3bfd181dc078ae3ee","src/zlib-ng/test/Makef=
ile.in":"c3b6a1ec62838c140a78bc361448d5739756bbfa3bbbf1ffa64c342599949701",=
"src/zlib-ng/test/README.md":"fc485cfaaede6b3d3dc61fdd17cc7eee715c35d6f62e6=
e502f9251fd1b5edac9","src/zlib-ng/test/abi/ignore":"02aa87f77656dbc1fbddd23=
f436cd15465a92df0722da4055cae1bc8bf013097","src/zlib-ng/test/abi/zlib-v1.2.=
11-arm-linux-gnueabihf.abi":"f5e91f25b558a891fecbeb6e2e9575698630ab700d055a=
38f3bc4fe66257f513","src/zlib-ng/test/abi/zlib-v1.2.11-x86_64-linux-gnu.abi=
":"038337383cf780587d810cf5400d632f3a1f8517e63ac4a71b6e5224db8b1413","src/z=
lib-ng/test/abicheck.md":"fa5d6d33ff0fd95eefb7c6c0c7f67351282e6eda20c4e3884=
2235a610cc10382","src/zlib-ng/test/abicheck.sh":"b23ee3678acb24caf36fc8402a=
07452de73c50640ebe641f185c7f9d5ea257e7","src/zlib-ng/test/adler32_test.c":"=
db3e8ad9a4e2ecce0c052b0bfe19834d3ff2fb2e9239cc3438a2c95db00b1d21","src/zlib=
-ng/test/data/fireworks.jpg":"93b986ce7d7e361f0d3840f9d531b5f40fb6ca8c14d6d=
74364150e255f126512","src/zlib-ng/test/data/lcet10.txt":"938e69e61b3411d8a9=
e2e630f4265000d810f3dbf66bac58cac19493753526ec","src/zlib-ng/test/data/pape=
r-100k.pdf":"60f73a051b7ca35bfec44734b2eed7736cb5c0b7f728beb7b97ade6c5e4484=
9b","src/zlib-ng/test/deflate_quick_bi_valid.c":"0e00da0e048c46204c39aff4b8=
fb79890274d3c6183a9409aefd5c93e4e92a48","src/zlib-ng/test/deflate_quick_blo=
ck_open.c":"455bd347bb88debdfacb409846170274991ec9ba71c52b8fd0e526daf57265e=
b","src/zlib-ng/test/example.c":"8bfad1221a8df5b6202e11f6be4bae5dbccd8a24fb=
7bbd8dd88e7ecd318907e7","src/zlib-ng/test/fuzz/checksum_fuzzer.c":"3a15479f=
2cb40b6c5760dadb246328fab7315f3e3b8e28c1bc246c9b9a867c69","src/zlib-ng/test=
/fuzz/compress_fuzzer.c":"1ab70608075c4bc60f89aa2f327cff88362ee7b1d31da88ed=
54ca51e5f99e5c9","src/zlib-ng/test/fuzz/example_dict_fuzzer.c":"04262105305=
0f0fde90a0428cd1afabda8cc7c3fa59e3e0a55c43ab1e03d3988","src/zlib-ng/test/fu=
zz/example_flush_fuzzer.c":"f12246a184dcfe0a19a98cdc742a1fe8da388ad20b40663=
5d63f1fa10d45b9ca","src/zlib-ng/test/fuzz/example_large_fuzzer.c":"f490abcd=
332fb4e7921292adf6876d38d7f71c8d2443212c781ba88957ff9303","src/zlib-ng/test=
/fuzz/example_small_fuzzer.c":"a9b3436b291ace821b6013311a1100e19a9e1c67fefd=
3f97dbd60688f9bf22b1","src/zlib-ng/test/fuzz/minigzip_fuzzer.c":"7b0e7da9b6=
c60f3b3a13f140cc445050d9e8958d4f59cbb9a498c08f3a53adab","src/zlib-ng/test/f=
uzz/standalone_fuzz_target_runner.c":"306e8ac4e08ea72d18ffae8c908abfef8c6fe=
edf83b068a7ec675ade6a5791a8","src/zlib-ng/test/hash_head_0.c":"d88105a80e75=
6b7206a20c7b2490a2e7e743a2ceb1f20d3e433ce9848f054e1b","src/zlib-ng/test/inf=
cover.c":"b9acffc102fdd140941073ca47e30c938aa937b4929061500c36ffba12c86449"=
,"src/zlib-ng/test/minideflate.c":"93de8ffcbe7c414abf3ea36acdf729bcedb40393=
ec7bd10b356ebe225406e173","src/zlib-ng/test/minigzip.c":"291e2ea30778a3e829=
b96cb47211e89494ece036cd74591178710b4276c9b48f","src/zlib-ng/test/pkgcheck.=
sh":"75b3155125f235e27ee434d76b6f72bd825899b55f6d59ef2d032fe67a2896ed","src=
/zlib-ng/test/switchlevels.c":"c30ae3d27ce6041934532553719622e7ed473541aa7b=
dad8d11d0c55e5220f14","src/zlib-ng/test/testCVEinputs.sh":"5de6198444c16726=
f8e0a8f2beb5b89c5ae7e7e3736ce760b9fbc719493e7e4f","src/zlib-ng/tools/codeco=
v-upload.sh":"ec7a8f1405820810e486e3d7e2fda7eb958c17877b0000b93abdf09d87732=
a2f","src/zlib-ng/tools/config.sub":"32186cfeb5db62c99e1dfbfb07f24c1a509774=
47b4c26d2907021c74422a70d2","src/zlib-ng/tools/makecrct.c":"55c8f7b8e29393e=
95988a29de8cb1a1bdf2738a69d53627bd0f9d7bf169bf0a8","src/zlib-ng/tools/makef=
ixed.c":"bffd02540231304f9bcc755b8cb9ae5cfbc48975857bbb4547f1d6acce21ef57",=
"src/zlib-ng/tools/maketrees.c":"2dbfe34691dde327618be496b380fc91daaa304743=
52815773a8b70114b0541a","src/zlib-ng/trees.c":"956ce5b3f3330320cb5baadbf772=
1572259ec41edc4d8c132a20888b7f6f60c3","src/zlib-ng/trees.h":"24174f3543b01e=
e1ef370bbf6d15551a21871cded18b2aadf09a71e7904b6f99","src/zlib-ng/trees_emit=
.h":"f68904e04caee0482c72ea92cc775cabe35a0bf7cffce85566c15ace27666af4","src=
/zlib-ng/trees_tbl.h":"35f4fd0ec080c1ade342e2dd1b0f5cdc7e9f18990faa48d7a8a6=
9bc318ebe607","src/zlib-ng/uncompr.c":"4ebb486b27930f8a6ec4a3cc90a207d0bcf8=
a4779d1dbf3b2184a2b2a5735cd1","src/zlib-ng/win32/DLL_FAQ.txt":"d2ec63cb4a51=
886e0813f75bca49a051bede364d855f938e1a7992ab97a79800","src/zlib-ng/win32/Ma=
kefile.a64":"775d6902373d1583430b5d7467f001746be323610c89be27e02bbfe0205994=
f3","src/zlib-ng/win32/Makefile.arm":"7535e022f482920c3fa7a267e84e39ad790d1=
50f72e5c30414baa156c2fdd9b6","src/zlib-ng/win32/Makefile.msc":"deee44d56248=
90e692d87db311216075e967c3ac8aeea6ffcdcac3d03eea260b","src/zlib-ng/win32/RE=
ADME-WIN32.txt":"a8c2d052960b963a49cee5a2ad891f2ff7b34db038f00985eba4eefc99=
966261","src/zlib-ng/win32/zlib-ng.def":"f240276caf805a10d024fc6a66efe915c4=
35734c69732818d92fb04d08ab350c","src/zlib-ng/win32/zlib-ng1.rc":"b567a27640=
7998bae40aacd48a50beba87c0bfbae470d28e66331ac99eb575c8","src/zlib-ng/win32/=
zlib.def":"d9c371ff2677567350386441a2e3d0258010d6502290bbac5ac42ea168bd5212=
","src/zlib-ng/win32/zlib1.rc":"d7f269379144d65bcd1b67c1065e5d4120579f14ce5=
4ecf246eaba394fa989a5","src/zlib-ng/win32/zlibcompat.def":"73728b9df4379dc7=
0ebd9b2a9f20d6e4ed7c031fa1f351cdeae1de7d1db05bd1","src/zlib-ng/zbuild.h":"f=
73424f5f10370ffe8f45f6e3dc52dd095ea778153832461d712a838e3a01098","src/zlib-=
ng/zconf-ng.h.in":"708106f26c4a0d877e2ea644320a2b48b144524b61429c7490e2e742=
a0c0c1e4","src/zlib-ng/zconf.h.in":"dacec2360fd9607f85bdf651409fa3831dd26f7=
4414d242e812b06c3b9c9926d","src/zlib-ng/zendian.h":"f5cfa865281d2c5d0b097d3=
18500f27daeec346e7882de68e279486d79c52e77","src/zlib-ng/zlib-ng.h":"7a15bda=
0297b2611da695f895cc57ce44c284b030fe98817281e868a1a86ae35","src/zlib-ng/zli=
b-ng.map":"e8202981574d814cb2a9f06bca7900d0959c24766bd86681bd3843ab0e71f8ef=
","src/zlib-ng/zlib.h":"703bead0c02381c8df8d14d805fde913973b2960811f35e2de4=
f4aaf29ad905c","src/zlib-ng/zlib.map":"e3549810f821d433d57f921ca2fceb867457=
4f778485255a7dc691bf26b5281b","src/zlib-ng/zlib.pc.cmakein":"17668e07edbe59=
71043bea26a2f2b92c4c7cf4724620f1156f3ea1436d2aac93","src/zlib-ng/zlib.pc.in=
":"cf94c9aa44878a62e27c2f75354c08326b3bb5250a9b11496855cf59691177bb","src/z=
lib-ng/zutil.c":"7544aa2d2cfce4693d4e2a639f0631c3e8b3e7d0d846313be0e250c477=
e6812c","src/zlib-ng/zutil.h":"c0e9152d078ca1774c93910fd84531b2f593b3a6b103=
5e4d97a0d28b720ec98b","src/zlib-ng/zutil_p.h":"1e5a2fb8d15212ad094e9a5d5f60=
7f11f8191498b54e0af48d722f92d9c71ffd","src/zlib/CMakeLists.txt":"b87275731c=
c3ebdfea144187875cea204f555c343279c0f35f2d46d661bfe34a","src/zlib/ChangeLog=
":"4c9f1a65b9b4be8bf164a97775ef50e4db4e02ea8c9933fdbe629a640691375e","src/z=
lib/FAQ":"1e8a0078be0ff1b60d57561a9e4a8cad72892318a8831946cba1abd30d65521c"=
,"src/zlib/INDEX":"3b4e325d47ae66456d43fcf143ba21ab67a02a4f81be7ef2da480ba3=
0d774266","src/zlib/Makefile":"ef23b08ce01239843f1ded3f373bfc432627a477d62f=
945cbf63b2ac03db118a","src/zlib/Makefile.in":"5021b2bac4164f48b17c91c8a2e3c=
225be7ad31d8bfab1bbaadd90370afe9991","src/zlib/README":"7960b6b1cc63e619abb=
77acaea5427159605afee8c8b362664f4effc7d7f7d15","src/zlib/adler32.c":"d7f1b6=
e44fee20ab41cef1d650776a039a2348935eb96bcbd294a4096139be3a","src/zlib/amiga=
/Makefile.pup":"a65cb3cd40b1b8ec77e288974dd9dc53d91ed78bbe495e94ccc84ddd423=
edf1f","src/zlib/amiga/Makefile.sas":"0e63cf88b505a1a04327bb666af3a985c5e11=
835c0c00aed4058c0dcc315d60e","src/zlib/compress.c":"5c11e1fc22e219cb986f6fa=
9e4ba939315227e84aef042737d38ec668b89b6d2","src/zlib/configure":"86b38f27f3=
1d2fec76d9355872550dc63cb3949774473fd6313c5a3fd1def0e2","src/zlib/contrib/R=
EADME.contrib":"ca39b78bd7ad84f1df7b0da90770c5b3fa4c8e2c75d132e9222812fac88=
39630","src/zlib/contrib/ada/buffer_demo.adb":"469cf566a6965767fee6b987a239=
ed8cedcc66614940d45a9b434331fbb435ce","src/zlib/contrib/ada/mtest.adb":"41b=
6f31684770334afdc4375871eb1408542f37a823a073556fdbfdb63753160","src/zlib/co=
ntrib/ada/read.adb":"fa5b989aef0c5715a3fcb15de93985f7f10aeb0a7f5716745c95ed=
820eb9af9c","src/zlib/contrib/ada/readme.txt":"8fe9e5303f2e8e8b746c78250e74=
b7c4aeb7ce6212fdce751fc3a0ce56a47fe2","src/zlib/contrib/ada/test.adb":"5e3a=
be79b387e09a9a42bd0543105e228f39a335240cffc33d71f0ba66ff2511","src/zlib/con=
trib/ada/zlib-streams.adb":"f45988e2bac76eb25a0dc981f46576e7432c35dde1790bb=
c2b650f0090b7fa72","src/zlib/contrib/ada/zlib-streams.ads":"969e8edb0611810=
fb52159dcb7c40228f4e5da810a7a3576b778116a93038c6b","src/zlib/contrib/ada/zl=
ib-thin.adb":"03d89244ee5ec9771d9b5050e586c609f851af551b2e64eb151f1d5be0b63=
ae9","src/zlib/contrib/ada/zlib-thin.ads":"631ef170bde16c3ca8d412b54a0e5198=
15b80197d208f8f393e6fe017bb0968e","src/zlib/contrib/ada/zlib.adb":"c9ca5dc3=
4fbcdf06e2dc777b7e9dcd0ba31085b772b440eb0e12421323ab672c","src/zlib/contrib=
/ada/zlib.ads":"02634bec0d5e4c69d8d2859124380074a57de8d8bd928398379bfacc514=
236d2","src/zlib/contrib/ada/zlib.gpr":"859bb69dce38dbe9dca06753cf7ae7bd16d=
48f4fece8b87582dab8e30681d3de","src/zlib/contrib/amd64/amd64-match.S":"1660=
07f7e9adb58fe8b83d85bbfe823f5e05858ba1d06edf637b78886caa2c69","src/zlib/con=
trib/asm686/README.686":"c21cc7147c956ecae17dd084cb41a206b086216fa521012871=
fb07fafd203c6d","src/zlib/contrib/asm686/match.S":"873799062495629f21cd3f77=
9ea4b927add7aae0144e32d3594d9ce70185e99d","src/zlib/contrib/blast/Makefile"=
:"17d5d26c24bf51cad51045a38ffb73cc3539d29e89885aa249fcfd45a8659d5c","src/zl=
ib/contrib/blast/README":"baa763ae03d88ef7ece6eb80d9a099b43d0b57639d6d281e1=
c7c6ca79d81daba","src/zlib/contrib/blast/blast.c":"1ab3e479d342bfc144167b80=
8fb00142264bc50f24a110ca88cc774e351c218e","src/zlib/contrib/blast/blast.h":=
"4d4e3e6f893316f0be77bfd642c857a77f1fa2925acb5df9753e543d35aa3a6a","src/zli=
b/contrib/blast/test.pk":"5f5c262c545574a5c221132d5ef832478d222d70b01534179=
5b3860204140d7c","src/zlib/contrib/blast/test.txt":"9679b2c98e1283222d0782b=
25a1c198dc64ba9ebd1addd6dc6f643a45947cda3","src/zlib/contrib/delphi/ZLib.pa=
s":"1b20e173443a68c189cdaa4795620fb1ac165d9e61a27a1ed2cf690f13530d6f","src/=
zlib/contrib/delphi/ZLibConst.pas":"84bcc580bdf397e570f86f3f5a5b8c7bf537828=
f30b4b72648b81911f6bf5095","src/zlib/contrib/delphi/readme.txt":"f7420ed2de=
77d4b498eefbbe6402a1d17dc2d411735289c78a265c7f10fdaee5","src/zlib/contrib/d=
elphi/zlibd32.mak":"850e91b6c9ea05de61a411cbda16fa0f10118cd88bb32c4b7226988=
776f8d511","src/zlib/contrib/dotzlib/DotZLib.build":"b96137097669644ecb9f42=
cdd3399d1fce9c512788374609303f7e50abf597f0","src/zlib/contrib/dotzlib/DotZL=
ib.chm":"20d0e3edd57f849143255a7f0df1cd59d41db464a72c0d5ab42846438a729579",=
"src/zlib/contrib/dotzlib/DotZLib.sln":"a979198c5b8d144c1ac8f993bfb6f4085d1=
35aa58ca9dcf63ebabf52b5c695f7","src/zlib/contrib/dotzlib/DotZLib/AssemblyIn=
fo.cs":"314afcfb339ea95f5431047b7ab24631b11c3532c7ce5dc2094ed0cf80a7c16d","=
src/zlib/contrib/dotzlib/DotZLib/ChecksumImpl.cs":"e7c047a2c3bcf88d3d002ee3=
d2d05af414acf53cb4451efacc0f2e95a474ea0f","src/zlib/contrib/dotzlib/DotZLib=
/CircularBuffer.cs":"be84c9736fe7bdc2bfae70466d8fff582504e928d5b5e110fd7580=
90090c8cb7","src/zlib/contrib/dotzlib/DotZLib/CodecBase.cs":"259bdda1b7d605=
2134e631fa24bfd9dca6e2362563496c8b85257b56c848908c","src/zlib/contrib/dotzl=
ib/DotZLib/Deflater.cs":"06ba6696a3c15c53ba5fd5a1c2bf50b51f217010228fc1e4c8=
495ee578f480de","src/zlib/contrib/dotzlib/DotZLib/DotZLib.cs":"9837fe993fd6=
31233cc5e53ff084d86754b97f05ec77c54b0764c2706f186134","src/zlib/contrib/dot=
zlib/DotZLib/DotZLib.csproj":"21606db31dfef6410dd438b73f1db68856eacabcce6c0=
f0411fc4f17e17001f3","src/zlib/contrib/dotzlib/DotZLib/GZipStream.cs":"8d1d=
e9755c77046b4ac71340a0a54434ebf4fd11b085c44454d7663a9b4df1c5","src/zlib/con=
trib/dotzlib/DotZLib/Inflater.cs":"9016ca73818f5b6a28791abc3af6da7c4d2773b6=
a3804f593f6d5737a62b99ad","src/zlib/contrib/dotzlib/DotZLib/UnitTests.cs":"=
ad66ac08de34d253e9615b96a745f3dfeda93f4a978d65d5d3ddb9d0d9b3e099","src/zlib=
/contrib/dotzlib/LICENSE_1_0.txt":"36266a8fd073568394cb81cdb2b124f7fdae2c64=
c1a7ed09db34b4d22efa2951","src/zlib/contrib/dotzlib/readme.txt":"d04972a91b=
1563fb4b7acab4b9ff2b84e57368953cc0596d5f5ea17d97315fd0","src/zlib/contrib/g=
cc_gvmat64/gvmat64.S":"22ff411b8b1d1b04aeaa8418b68245400267dc43c6f44104f6cc=
d37f0daee89f","src/zlib/contrib/infback9/README":"890288f02bb3b1f9cc654b87a=
07fcea695f90f6b9bd672d25bf6be1da2ec1688","src/zlib/contrib/infback9/infback=
9.c":"0a715c85a1ce3bb8b5a18d60941ffabc0186a886bcc66ba2ee0c4115a8e274e9","sr=
c/zlib/contrib/infback9/infback9.h":"dda2302f28157fe43a6143f84802af17403935=
72c2766559593996fd7a5a3245","src/zlib/contrib/infback9/inffix9.h":"84a2ba47=
27767c18af6505f0e81d9c814489c8b9ed330a25dad433db72997e43","src/zlib/contrib=
/infback9/inflate9.h":"32a907676cc36e27d0fdc0d99adb83a0b23f20ab61896269216d=
40fecf08d349","src/zlib/contrib/infback9/inftree9.c":"0c7f10396703b230c5042=
07fe1595a2f2f8ba9c43158c4bd79d5b22ca36e04e0","src/zlib/contrib/infback9/inf=
tree9.h":"8ae61d52e50d2dbdb0378548ecc54fcd88f108c8b6fc30562a3ebec1ca6a599e"=
,"src/zlib/contrib/inflate86/inffas86.c":"6f266f3c7e0faca653256d0189c0f00d7=
dc0b062d02e25df4e1202e49369595c","src/zlib/contrib/inflate86/inffast.S":"70=
777bd21526680005fc34f086d108af49e2668ad86d1749e8e8100a81bfb288","src/zlib/c=
ontrib/iostream/test.cpp":"0f3c77e013949eb9c91e6b690ea894e19d97944d6b0885b8=
2806fc3ad99680cf","src/zlib/contrib/iostream/zfstream.cpp":"8ebb9b3d521cc33=
92953f27658cf1f6dcb763216079f69a1518ec5ca0e42a63b","src/zlib/contrib/iostre=
am/zfstream.h":"4369c35e66f63f52ca4a5e1759bf720507ccabb8f3f132e2f18e68686c8=
12401","src/zlib/contrib/iostream2/zstream.h":"d0343e0c57ff58008b6f29643d28=
9c72713aa2d653fe3dcd2e939fc77e7e20b6","src/zlib/contrib/iostream2/zstream_t=
est.cpp":"f789df183cc58b78751985466380c656308490a9036eb48a7ef79704c3d3f229"=
,"src/zlib/contrib/iostream3/README":"43ec48ecbd95a8c45db20b107fac73b740bb1=
1595a4737329188f06b713972cc","src/zlib/contrib/iostream3/TODO":"af5ebc83fb8=
8f69706c8af896733784753dead147687e1c046f410c0997fd88b","src/zlib/contrib/io=
stream3/test.cc":"8e17fc48dfdbc6e268838b8b427491b5843b6d18bc97caa6924de9fad=
7abe3da","src/zlib/contrib/iostream3/zfstream.cc":"8cdd67ed0b13c192c11e5ea9=
0e9d5782d6627eb303fbc4aa5ebda2531ec00ff8","src/zlib/contrib/iostream3/zfstr=
eam.h":"1bd74778fac45ee090dfc0f182a23e8a849152deb630606884b2635987b357b1","=
src/zlib/contrib/masmx64/bld_ml64.bat":"1c0561908a07ebdff271b12ed757241e181=
3d3db0f3551501b2595c23f0833aa","src/zlib/contrib/masmx64/gvmat64.asm":"390c=
1e6d63cb615b5ba042842738953f9cdc688b2fe35aaca981fd3fae213f3f","src/zlib/con=
trib/masmx64/inffas8664.c":"f6c585e43e6e524107566b1f10104949d0ef902159ac820=
3e1d98e50d4bedd62","src/zlib/contrib/masmx64/inffasx64.asm":"8448d0041fe6e8=
f4188fe5916181a1b274c6d35d75cfb28da60cf4f1edde44ec","src/zlib/contrib/masmx=
64/readme.txt":"9bb66b5028100855683853f12da0be479c7bccf74365fdbf37da2542edf=
f9927","src/zlib/contrib/masmx86/bld_ml32.bat":"b0b05b62715d4a81a7db5b7ca4a=
372d109ec95634c9d3bef9e0041ff52de22fc","src/zlib/contrib/masmx86/inffas32.a=
sm":"78d2cc88f8ed0e32ef960efc987c257bc1688afe7d031a8ba18761e95a6a7c3f","src=
/zlib/contrib/masmx86/match686.asm":"9e9bea3b5517b089da7d39caded07982746a33=
f94f0907ca7e8afefed7be36b6","src/zlib/contrib/masmx86/readme.txt":"1f29a04e=
0227b74e20ba1b7c764b3ca5bf596dd2c06e89bc19a05fb8f9689778","src/zlib/contrib=
/minizip/Makefile":"087034de3dc0223b29e64bb3a4fc3eda7b948e93d2a9ff154aecf9f=
ed2a1eb5b","src/zlib/contrib/minizip/Makefile.am":"2313a3480a2c3745fa7ce216=
829cd0367058907d3a0902e5832c66c84a2fdfc6","src/zlib/contrib/minizip/MiniZip=
64_Changes.txt":"302c62b328647f5472fb7755249a83459be7f8ffb1fae07e8ba318fce8=
f4126c","src/zlib/contrib/minizip/MiniZip64_info.txt":"122719c32ef1763a5f6b=
a9c8cdefc1d78a76f7156b09e7b6f69b73f968e0dac3","src/zlib/contrib/minizip/con=
figure.ac":"35330dc0c6188127afd339829d91b19739d23bf3b7301bfb04f775a6fcbbdad=
7","src/zlib/contrib/minizip/crypt.h":"8e872b60255b8447da99885c7159c2e1f1bb=
8143523bdbe71784e60f98bfd67b","src/zlib/contrib/minizip/ioapi.c":"66b39c270=
42f6ad12cc12efb0c82cdf100c6640b5fa959b8b866e252966113a9","src/zlib/contrib/=
minizip/ioapi.h":"8655408534b78dc0889a45f9359fc6d2d5c8e8d8443b81ede596f954c=
720ef48","src/zlib/contrib/minizip/iowin32.c":"2c05bc374d3d847c6a9f29eac9d6=
74abba7659d1e91e34e172248fcb5c274d51","src/zlib/contrib/minizip/iowin32.h":=
"586f22b9c3c64da253ce2b518e0fad61f19a7b47b289fc704cc9708242294c49","src/zli=
b/contrib/minizip/make_vms.com":"65736d9c4888f2373d3db0a13864d150c5040453f5=
bc2a5c8784379a7ea67590","src/zlib/contrib/minizip/miniunz.c":"ced49f20c6253=
6a8ffb270b35cfa4994a1dcdce45f8cf059b941c94ca0022666","src/zlib/contrib/mini=
zip/miniunzip.1":"66d8684392167091ef0fe01598d6a0daa26e7e448e2df6c3cb2574877=
35b83f7","src/zlib/contrib/minizip/minizip.1":"5404596e8e5587a52f563906119f=
32ceee30a6d97a966afa5c7afbe4d373e210","src/zlib/contrib/minizip/minizip.c":=
"fdfcf83979ef2324c1455d369e8add8678c804939d412ce53f8b024578ceabad","src/zli=
b/contrib/minizip/minizip.pc.in":"8b6670b42d8e5e519e1cc89db093efc07ba23cb1d=
dfedd3c93ff2df08c3ce8ac","src/zlib/contrib/minizip/mztools.c":"cd887c4af6d2=
0823bd15f24008b10acf01969b4165d7848656bde843a92428d7","src/zlib/contrib/min=
izip/mztools.h":"6f82c52279e8f79165f4446be652e5741a49992ac58632470335aa34c5=
64072a","src/zlib/contrib/minizip/unzip.c":"497adf676b1cae2a7afa834e4aba863=
83f7b697f5fdd03a8179ea9024a431cf9","src/zlib/contrib/minizip/unzip.h":"d8dc=
58fc0121b6a4b98f3028205bb253f956b1ddf791e9ced3cf44892502a01f","src/zlib/con=
trib/minizip/zip.c":"00f403cb7810578b4b2687dd55fb132c850c3630fba2f3704a8ab8=
96fcc8209a","src/zlib/contrib/minizip/zip.h":"96163fc140e4bf08752e014d20a1e=
ac3f5adcdc408366f6d79c1895f2599cf08","src/zlib/contrib/pascal/example.pas":=
"d842d456ecb6ff80e34cee2da31deb2072cc69ca837497bea8b8bee203403474","src/zli=
b/contrib/pascal/readme.txt":"02f997c37991ddae0cb986039f7b4f6fc816b3fd0ffd3=
32cad371d04c12cf1b9","src/zlib/contrib/pascal/zlibd32.mak":"850e91b6c9ea05d=
e61a411cbda16fa0f10118cd88bb32c4b7226988776f8d511","src/zlib/contrib/pascal=
/zlibpas.pas":"28b90aeeb3da8d1f6a98ab9f5f1603d08aba5bfabc50827d3f15e661268a=
51cf","src/zlib/contrib/puff/Makefile":"d9d738030464aaae354196c14fd928adf59=
1832fce7d71ac1977c1d8d4923a4b","src/zlib/contrib/puff/README":"aceca4bc1bce=
7d9445b8bc9b6640c672d95708185f6070d3a3baae7a9d102caf","src/zlib/contrib/puf=
f/puff.c":"6d0eef92e115a42e570b79d8b07a04af5ccbd6b3f3fbca9cbc61c49db9c9df43=
","src/zlib/contrib/puff/puff.h":"969b7be2a930db0cdcb19b0e5b29ae6741f5a8f66=
3b6dba6d647e12ec60cfa8e","src/zlib/contrib/puff/pufftest.c":"8ee0da78a1221a=
3c2036e22eed06c2faa27a671a46565a60e10111d4ee9c30ee","src/zlib/contrib/puff/=
zeros.raw":"b7b0887089f7af1f6d1e0b4c0a1e8eddd10223b23554299455c6c9be71b653a=
3","src/zlib/contrib/testzlib/testzlib.c":"c6c37b35c6ecc9986a9041f86d879cc3=
7a9e4d8315af9d725071eb3b2cade0c5","src/zlib/contrib/testzlib/testzlib.txt":=
"2359bbdc84eb8a04e0f1cd16cd81a2896e957f2ad58dab3ca78ef55b7d0dc577","src/zli=
b/contrib/untgz/Makefile":"8f5ab1564813e091cea8f1bb63da32fd80ac763d029277b0=
cabf50f60aceefe1","src/zlib/contrib/untgz/Makefile.msc":"d0f537de11d9e0e36e=
2a98b3971c537265f4b533b4c48797094365ad9ae8388b","src/zlib/contrib/untgz/unt=
gz.c":"9a12d774301d252dcd38bba07ac369319da4c04c4fef8a50fcbf40aebf29c2a1","s=
rc/zlib/contrib/vstudio/readme.txt":"2a9ca40b68274f4d37649dfab9e5e867a00088=
3592b4ab8fdaec8425a63052c3","src/zlib/contrib/vstudio/vc10/miniunz.vcxproj"=
:"dd607d43c64581172c20c22112821924dfe862f56b2e5eb8780bdd0714d9527b","src/zl=
ib/contrib/vstudio/vc10/miniunz.vcxproj.filters":"c3db9f97952683e688ad83c13=
bb94c816ac3e6b5f277fdea545b0650c125aa6d","src/zlib/contrib/vstudio/vc10/min=
izip.vcxproj":"af73f2cf8ae51e65e85342faeb40849a2310c97bc77def42b38d7070460a=
6cf0","src/zlib/contrib/vstudio/vc10/minizip.vcxproj.filters":"83db58d87f5d=
7ca84b6087aa1f62b15cbc296194c8cf76e47a271f9077b4f3bd","src/zlib/contrib/vst=
udio/vc10/testzlib.vcxproj":"1525ed0893db56db44ec68675c8da3c229dc7867166dfc=
0428816783d16ad43b","src/zlib/contrib/vstudio/vc10/testzlib.vcxproj.filters=
":"d7e04ffa467d417dfa3c0f1c64234cadc84882101bbae483f0a0f5d3d6b566a7","src/z=
lib/contrib/vstudio/vc10/testzlibdll.vcxproj":"3f317d8964f17901c3e68bff5dea=
ec10b6ccc50a572235999e8097292692984c","src/zlib/contrib/vstudio/vc10/testzl=
ibdll.vcxproj.filters":"682a485f0184aabba94e12e1b284499195f37c176d43ecee048=
4f31e4d636f6f","src/zlib/contrib/vstudio/vc10/zlib.rc":"e8b581eb16930e0213d=
37143a5f17868839b22c758b23981a29484e17093c494","src/zlib/contrib/vstudio/vc=
10/zlibstat.vcxproj":"2a38222d6c034d7e0b843c3f0540dc6c53dd48f942ae29f31620c=
a0327248c8e","src/zlib/contrib/vstudio/vc10/zlibstat.vcxproj.filters":"d9a2=
c381e51e4d6f027f3517db7db81656e43cec02ed9abf267a0fde6f360180","src/zlib/con=
trib/vstudio/vc10/zlibvc.def":"0124fea28bfee49c8a19dad0ed5a49277d451018b4af=
fda5a389e64ad15f44d7","src/zlib/contrib/vstudio/vc10/zlibvc.sln":"e659860f7=
05f31b87ea9139a3cb4ebe1561e120bce495383a54614fc82b49990","src/zlib/contrib/=
vstudio/vc10/zlibvc.vcxproj":"3108badf710e2f4a64eab4e7deae6642fb68cc0d94018=
e537149f1761e215133","src/zlib/contrib/vstudio/vc10/zlibvc.vcxproj.filters"=
:"58404ba7703c68025bec64b8a17ff1fc7f3a35d15d17ae3bcc4fa753f1348425","src/zl=
ib/contrib/vstudio/vc11/miniunz.vcxproj":"746e4c11fb8af4bcd6a9d68ba81ed1dc3=
66a5de3bed56b291ee969ad733a7bb0","src/zlib/contrib/vstudio/vc11/minizip.vcx=
proj":"340617cae9cf4fcb003308021d3782ec3639e60d62d79a3aafc0a50bb55b061e","s=
rc/zlib/contrib/vstudio/vc11/testzlib.vcxproj":"589eec6ef6d818564ead938a629=
fda50abb6cbf8054b9f66ea780765c1a1b3db","src/zlib/contrib/vstudio/vc11/testz=
libdll.vcxproj":"583bdef522b0176829f0d8139ea2a88b9cbc14379d1334f3a863989ed3=
df9b67","src/zlib/contrib/vstudio/vc11/zlib.rc":"e8b581eb16930e0213d37143a5=
f17868839b22c758b23981a29484e17093c494","src/zlib/contrib/vstudio/vc11/zlib=
stat.vcxproj":"51aa752698d96df065a9ece02e293492f681b59a8077f036a5a60367dc62=
1e87","src/zlib/contrib/vstudio/vc11/zlibvc.def":"0124fea28bfee49c8a19dad0e=
d5a49277d451018b4affda5a389e64ad15f44d7","src/zlib/contrib/vstudio/vc11/zli=
bvc.sln":"27389b515997defd080519f95aff87e89fcbe8b26d73c5ebb73c544cfef4d60e"=
,"src/zlib/contrib/vstudio/vc11/zlibvc.vcxproj":"c3dd05e56159aba411475b8365=
6275872524cb3c2fd24d690397d8b634e7e0ed","src/zlib/contrib/vstudio/vc12/mini=
unz.vcxproj":"1494af54570f6e93852932956d49a8c25e57b5abc1ac979945605ca9143df=
9f8","src/zlib/contrib/vstudio/vc12/minizip.vcxproj":"9bf128ed6760ca5f01900=
6f178b1c65f4c7ff122dba8d297b64b0eb72feeb120","src/zlib/contrib/vstudio/vc12=
/testzlib.vcxproj":"367a06caa399bd09f6b9cb60706820943dd6a6cf05794275baaf421=
da9c2a0b7","src/zlib/contrib/vstudio/vc12/testzlibdll.vcxproj":"93416510256=
935d79625dc9fd349cfce6968c062d42a138bec404a26b2f92f5e","src/zlib/contrib/vs=
tudio/vc12/zlib.rc":"92d5d3a4938a6350395934153416a7eb74353cdfb2321f45b9ee0b=
9b16257f39","src/zlib/contrib/vstudio/vc12/zlibstat.vcxproj":"744ff6ac0d4e2=
dcdf74c7d33b979fbfd2b18550947eb99bfd46dc6a73eb1c68d","src/zlib/contrib/vstu=
dio/vc12/zlibvc.def":"0124fea28bfee49c8a19dad0ed5a49277d451018b4affda5a389e=
64ad15f44d7","src/zlib/contrib/vstudio/vc12/zlibvc.sln":"162e0faa80a56d89ee=
a71a0b89377708eec2faa0dc72091cc0abb07fbdea49a0","src/zlib/contrib/vstudio/v=
c12/zlibvc.vcxproj":"754671c59d8996a846241af76082cc8be1aa5fc079eff530d91a9a=
b15a0bee5b","src/zlib/contrib/vstudio/vc14/miniunz.vcxproj":"0312511d4a30ce=
a979c4e36edf994a537ed8a9d924f6b5c536cbcd094773c11f","src/zlib/contrib/vstud=
io/vc14/minizip.vcxproj":"9e7bb7a6ac723e4b2db900627c366f9bb93a351381995d9c6=
9a50c0126f64233","src/zlib/contrib/vstudio/vc14/testzlib.vcxproj":"c3a93696=
70af4ebea13d036b452be7418591fbb4c03a675699facac5d8dff5d0","src/zlib/contrib=
/vstudio/vc14/testzlibdll.vcxproj":"69f544898b4275cd3d8e19b8f1f8cb39c1cb98a=
30cdb033242e4b94c57bfa150","src/zlib/contrib/vstudio/vc14/zlib.rc":"92d5d3a=
4938a6350395934153416a7eb74353cdfb2321f45b9ee0b9b16257f39","src/zlib/contri=
b/vstudio/vc14/zlibstat.vcxproj":"9c7c096b47e7875412c98525efcd16db62e094215=
f0011b9cd739a33ab35d48c","src/zlib/contrib/vstudio/vc14/zlibvc.def":"0124fe=
a28bfee49c8a19dad0ed5a49277d451018b4affda5a389e64ad15f44d7","src/zlib/contr=
ib/vstudio/vc14/zlibvc.sln":"47a50bbde8ca6336cecd8c0e4b65e515fc46ae84c7b610=
08ac9864162f777286","src/zlib/contrib/vstudio/vc14/zlibvc.vcxproj":"71fb6ef=
3b079bfdf4182af17e74c3361ead757467edfc591d9cbe303ccc47b52","src/zlib/contri=
b/vstudio/vc9/miniunz.vcproj":"b2b53bd9e704bfbe769b863acdc2a3368692ca149c4b=
4ed2a0761b0cd16c6726","src/zlib/contrib/vstudio/vc9/minizip.vcproj":"80a701=
fb41a61871ce1d25f6b03e571edb6c3abf0aa45375554b6fac52115eb6","src/zlib/contr=
ib/vstudio/vc9/testzlib.vcproj":"05fc5a87682b17690d199f424f57f6ad7767b8dabb=
29a1039bfcb88bca1b302f","src/zlib/contrib/vstudio/vc9/testzlibdll.vcproj":"=
25c1cc5319f1c4b7dbdb595c3cfd6ec3ba217818b03b7055ef5ef440b575a43d","src/zlib=
/contrib/vstudio/vc9/zlib.rc":"e8b581eb16930e0213d37143a5f17868839b22c758b2=
3981a29484e17093c494","src/zlib/contrib/vstudio/vc9/zlibstat.vcproj":"e8653=
eea37f3bef097eec2caa55e1f698c3c74c959689bc4e97568e88d2bbc60","src/zlib/cont=
rib/vstudio/vc9/zlibvc.def":"0124fea28bfee49c8a19dad0ed5a49277d451018b4affd=
a5a389e64ad15f44d7","src/zlib/contrib/vstudio/vc9/zlibvc.sln":"26e58d4b2cfc=
d941c367fb2a18537b3b9f002f2ac1278b700ea1129c50501452","src/zlib/contrib/vst=
udio/vc9/zlibvc.vcproj":"86aa6e33db104c0a0ed4a9f21f0db8572cc7755170217aef18=
219fdd74b75e9d","src/zlib/crc32.c":"a04af273e83ecc351bf3794974ab2098d8d960d=
f4044b7b44734c41443ee26d0","src/zlib/crc32.h":"407af59d0abfea84a6507c603eb2=
9809411797f98249614fe76a661def783ce1","src/zlib/deflate.c":"11fd6b0328b65c4=
ad4b5c204d892a97a9083628a7e77dc47836c8e0c799f8da0","src/zlib/deflate.h":"0c=
a7fb0cf1dd63001c6e9e4ff93c8dbff2fe521199be51a4dda38a11b44919f6","src/zlib/d=
oc/algorithm.txt":"992590931e982c0765286c2d83f6e9ff0a95aabb08e28c30c52bae3e=
8c4bd5ad","src/zlib/doc/rfc1950.txt":"8f0475a5c984657bf26277f73df9456c9b97f=
175084f0c1748f1eb1f0b9b10b9","src/zlib/doc/rfc1951.txt":"5ebf4b5b7fe1c3a0c0=
ab9aa3ac8c0f3853a7dc484905e76e03b0b0f301350009","src/zlib/doc/rfc1952.txt":=
"164ef0897b4cbec63abf1b57f069f3599bd0fb7c72c2a4dee21bd7e03ec9af67","src/zli=
b/doc/txtvsbin.txt":"47c273bb22c9773248d380549a330e5c262266b1292154b0d3014f=
731cc73f47","src/zlib/examples/README.examples":"402d72eb69c2e03a25034f4b3c=
02b110f0f67149ecfa4fa0e4b2bf0ceb49a8b3","src/zlib/examples/enough.c":"704e2=
73f65b62c5d2eb06d5bb10c4ccffba56544aa477f0e3957e2296c501b78","src/zlib/exam=
ples/fitblk.c":"950769163c41aff897ee41746a8685d9aa41073b1307f42da19dabe9d3f=
c8b85","src/zlib/examples/gun.c":"d60ca6eb0a3e62ee7fb4a1ab69e8d1525ff06b06c=
e46889cbdfc13fb8f7534c2","src/zlib/examples/gzappend.c":"4182d38bf97ffbdf11=
10df7f65c0e8fab0b28b1ea36ebba8621c14e8e76f1caa","src/zlib/examples/gzjoin.c=
":"90b9d6c39a5fc91cf1cc9b96b025a508a8015dc502cd9374c754b44078593f57","src/z=
lib/examples/gzlog.c":"433d34b71b4e769ece1cceb8bd7d902d2c0a24ccd7550ab1856a=
5ba87f84f835","src/zlib/examples/gzlog.h":"309556e2d7d39250924946b78e2cce0a=
c927857d6e1a02cab64e438f533c20c3","src/zlib/examples/zlib_how.html":"80fb64=
7be8450bd7a07d8495244e1f061dfbdbdb53172ca24e7ffff8ace9c72f","src/zlib/examp=
les/zpipe.c":"68140a82582ede938159630bca0fb13a93b4bf1cb2e85b08943c26242cf8f=
3a6","src/zlib/examples/zran.c":"840ebeb058cd0ca9e92dcb1db665932462a4695fc6=
49b34e865b8d1ad7c5bf77","src/zlib/gzclose.c":"94446cf8cde67c30e64d0a335b0c9=
41fd3fbad2e77f30180d12e61f9c2a5a6b8","src/zlib/gzguts.h":"1ef4741cf10441fee=
ca5c8dde2b6c754f0cbd96fcae697d54a604757289a5e9b","src/zlib/gzlib.c":"5daf11=
e44149e0aba2956d35f73f04f35dca99c3dfa43f5ad43ec20b336e4a1b","src/zlib/gzrea=
d.c":"6f928512cb1792cfeab31a51ff0b211814d2e455bc75290eb31079dc1e5ad2ec","sr=
c/zlib/gzwrite.c":"ba3b7b7ad2ff7ef0c19319b8408c333491a4cd495da55d0b156bc73d=
9ddb4df4","src/zlib/infback.c":"abe44873b5af2ea68ea1d281d915b2800f1832f846d=
2c05442a4711adbe6f269","src/zlib/inffast.c":"4d496ab2a3d29df5fadc3dbff6067e=
039806aaceae6cfcd09ea77d46c2b848fd","src/zlib/inffast.h":"7d8c1c873ce9bc346=
ad6005bb9d75cce5c6352aaf7395385be216a9452a34908","src/zlib/inffixed.h":"237=
ba710f090e432b62ebf963bee8b302867e9691406b2d3f8ee89ee7bfef9b0","src/zlib/in=
flate.c":"8b6c599c3563c14c447c47db0d7dc9a16e8c246a078ec95a169ddcebaaebd811"=
,"src/zlib/inflate.h":"8ec9ac297790276f7e46a961d4c6f9f944fb1dec92401339ec26=
66973cc5983c","src/zlib/inftrees.c":"1960ca67384376f65b6ce8c08fdb501f8eb339=
23e11ef5f61a855708c6cb0a8a","src/zlib/inftrees.h":"c510b36402784b1f898be3b0=
49b923469aa92701de2d9195aed19f6b65c0dce2","src/zlib/make_vms.com":"3064eb15=
3a7684115f1494364f80759bc5a2c227799fdf08df7b9e6e50884720","src/zlib/msdos/M=
akefile.bor":"292ab363f7ffbc4ae84d37cd9bdffd2dac1003bee52d223a8489844870f20=
702","src/zlib/msdos/Makefile.dj2":"9208450c2ae6dcbfcc25560b5b9ca763f461e72=
46e37b0552474edf8fa898906","src/zlib/msdos/Makefile.emx":"c749d6ec7f88e8e63=
9d4f03bdbdcbbe9d1c304210be4c4be621ceb22961d3d64","src/zlib/msdos/Makefile.m=
sc":"0e021a6f42212415b060e4ad468eb415d0a8c1f343137fb9dff2cb8f9ead3027","src=
/zlib/msdos/Makefile.tc":"2ae12ee2a3e62f7c5a0520d0fbe4adee772bc07fe816002b0=
7ccb43db3daa76a","src/zlib/nintendods/Makefile":"ea5823efe6830132294eddf2f5=
6dbd7db8712244c210bb4968c431b1a91bd066","src/zlib/nintendods/README":"e3624=
26c47b39ff6a7d6c75c6660b20abf076cdfa5e1e421716dc629a71aef95","src/zlib/old/=
Makefile.emx":"d811f032272aae50123a889297af3a02fbd60d1e42bbef11466462f627ff=
7b5b","src/zlib/old/Makefile.riscos":"d1a488b160fbfd53272b68a913283a4be08ba=
9d490796b196dddb2ba535b41e0","src/zlib/old/README":"551a0f4d91fe0f827a31cbd=
fbb4a71d1f3dc4d06564d80a3f526b749dd104d11","src/zlib/old/descrip.mms":"8ff0=
8c35c056df9c986f23c09cf8936db63ccf12c3c42f7d18a48b36f060cff7","src/zlib/old=
/os2/Makefile.os2":"6ad247c00f00ff42fd2d62555e86251cef06e4079378241b5f320c2=
27507d51d","src/zlib/old/os2/zlib.def":"ea9c61876d2e20b67ef2d9495991a32798e=
b40d13ede95859a2f4f03b65b9b61","src/zlib/old/visual-basic.txt":"1727650acbd=
e9a9e6aec9438896377e46a12699cca5d46c5399cef524dedc614","src/zlib/os400/READ=
ME400":"6f95a1beb0fbf943a3312eaa3dd2c279f1cef93062bebbff63dd37ac9e2aa8d6","=
src/zlib/os400/bndsrc":"cfe00b1528d5c27813cd6b1ad7aa34b493fd63d615623fb21fd=
1a7bf99d2255e","src/zlib/os400/make.sh":"143394d1e3876c61c29078c0e47310e726=
e1f5bd42739fe92df9ece65711655f","src/zlib/os400/zlib.inc":"c501c522185ba1f0=
506caf90d72f1088b34b2addc169471e949e443ab65e8a75","src/zlib/qnx/package.qpg=
":"90b5c8364d9dc5ef67405b352c19710ebad2905f3f20b9e56ded74661f96743b","src/z=
lib/test/example.c":"520799662a8286725540d6d5a356efe6f595618e5fe2e591972491=
d719bd99aa","src/zlib/test/infcover.c":"f654f3fcc74b33bd95cda63d13fe0ce589b=
cfe965544e0c17ee597d75efbd090","src/zlib/test/minigzip.c":"91089b21e692797b=
b6208b2b45eeb90f5f1f1e4f6b67b99dea5676f51b811193","src/zlib/treebuild.xml":=
"d816c764c8ec2d5b2ebfa7f053f747097926c13fce7fa8628c5d14c991411421","src/zli=
b/trees.c":"f2a5f949ea70dde7c23a54c793aeed630a03df4bb72417cd3aa008000c44699=
b","src/zlib/trees.h":"bb0a9d3ca88ee00c81adb7c636e73b97085f6ef1b52d6d58edbe=
2b6dc3adeb4d","src/zlib/uncompr.c":"31922aa982ee12fd28d1ce5fe6a94a3f07c2a94=
1c821b566a881ca21845cdfaf","src/zlib/watcom/watcom_f.mak":"7e039b912f9cffaa=
40835281430bb284fa9042b0a0d12f6b34700a06bca6576e","src/zlib/watcom/watcom_l=
.mak":"d11b4064604a034725860e63e3f6d347056372e4b1675b183e20a93533b20cc9","s=
rc/zlib/win32/DLL_FAQ.txt":"9e00778319381e6275691dd3a89410c99065b8c0c5db964=
73abe8c859cbdefd8","src/zlib/win32/Makefile.bor":"e878fed2313417db085fea621=
c110889f6a32233b5b6db46e3c4e824c1d0ed6b","src/zlib/win32/Makefile.gcc":"ea8=
feddce7b9707253b9bf86623cf7ebe5294d7aea2b3b0b1b1c1b8cfd73009d","src/zlib/wi=
n32/Makefile.msc":"7c495d63c5afea1d77d162a41b73bab89cee952c12e4647e9684a7ac=
79bfc3f5","src/zlib/win32/README-WIN32.txt":"b71f1f4e4760812c3a11b2bae6f40d=
1066741a90e6646010a32ce50a0e348cde","src/zlib/win32/VisualC.txt":"9ec0babd4=
6eaa012371dee2d3a8a55d9c7130f7895512c3371c737e4a7f6a997","src/zlib/win32/zl=
ib.def":"24fa6dd00f3f4c0d14507a03ddbfa42707a04e3901bb9ff6f90096037a75185a",=
"src/zlib/win32/zlib1.rc":"8fc5f2b5abee40ad66e6d6cfc9f926c2f446e13a7c9ee7df=
8bf58a266d8cade5","src/zlib/zconf.h":"9c0087f31cd45fe4bfa0ca79b51df2c69d67c=
44f2fbb2223d7cf9ab8d971c360","src/zlib/zconf.h.cmakein":"d740b750e9c98e6a4b=
4529cc2a857a3fa8001514b1ce91e0e1d9d293652bf388","src/zlib/zconf.h.in":"9c00=
87f31cd45fe4bfa0ca79b51df2c69d67c44f2fbb2223d7cf9ab8d971c360","src/zlib/zli=
b.3":"5abef003e545566e5599e5ab2e7528e978be59d54546b19d763d062f7a69bac7","sr=
c/zlib/zlib.3.pdf":"7f0f633641d782e360eff9fe831716c5767faf1000e38382a8a8c65=
b0b67f374","src/zlib/zlib.h":"4ddc82b4af931ab55f44d977bde81bfbc4151b5dcdccc=
03142831a301b5ec3c8","src/zlib/zlib.map":"7eb1070ba6bf12e6895e5da06b84a92af=
683827587afaa72bdd45e80b9d8e4e9","src/zlib/zlib.pc.cmakein":"2f1d0b18ce37c2=
af415a469857f02aee2c41a58877aff21d29e9c6db32b55cb7","src/zlib/zlib.pc.in":"=
04c01cc2e1a0ed123518b5855f585c93a24526dd88982c414111ea1fc9f07997","src/zlib=
/zlib2ansi":"d316e3e79054f5f9fe921d35f4bbf4bf0a37b859d29d2b34ae4d7d92afc3e5=
5c","src/zlib/zutil.c":"f7fdc9ef326a2683eb33c794face54e83c751ec17f3d1ba5818=
47a62af36ddcd","src/zlib/zutil.h":"9a63f6690fac1620aa3cecee5752af618806da43=
8a256b4a047fbcd289cac159"},"package":"de5435b8549c16d423ed0c03dbaafe57cf6c3=
344744f1242520d59c9d8ecec66"}
+\ No newline at end of file
++{"files":{"Cargo.toml":"ce67ce7c1f3c4ad7832d58ed198b8dd745abacc620738d575=
c4b1a9ac9e79449","LICENSE-APACHE":"a60eea817514531668d7e00765731449fe14d059=
d3249e0bc93b36de45f759f2","LICENSE-MIT":"34c467b6945a22696d060b8fdd2379d464=
acb3408d4c599d3dc5fe4fa1b4c84f","README.md":"b23e18bdce29fabc3d34e88576219f=
50d1d735a355e427e6d6ebc09254138070","build.rs":"e034f7828ff43a0bb0f7b690e8e=
99b09b8f4e1ae0560b6fb4008006e9cd4d9dd","ci/Dockerfile":"4d479ea63b9e384b386=
4fa1204894bfae4890017d6bf03486274457fe2c26cf8","ci/run-docker.sh":"0ea7a4fd=
c9f6026110e20fa2e25dbadfc1e6dafed9ded5981ae36772ad207e26","ci/set_rust_vers=
ion.bash":"4284f86ac3923a73dd79e89bef2d0b136c6d104d6dae92e24b4a96eaffa28890=
","ci/test.bash":"73a936768549eedf96a7cddb350ada128e058d5d9004244ebf3d99336=
3b69599","src/lib.rs":"40476f4e896c936c21f908396255c7a4951ef8bf93788858ade6=
cace2539927b","src/smoke.c":"10607c81b73811bfcb9718767312bf97ba2ccf7048ea2f=
18a2085aa06ad7f91b","src/zlib-ng/CMakeLists.txt":"60b836817b51e5893b1e3203a=
daf57a98678af17957eccaef679bd96bcf5d90b","src/zlib-ng/FAQ.zlib":"d1777aa057=
caeef50fc291aac7a414363b2186bb3d65bb0f8bfa2bfd61cf0ad5","src/zlib-ng/INDEX.=
md":"989545e90d8e9ac149034f762ce78ed8976ebf9324326228dea37ca190154609","src=
/zlib-ng/LICENSE.md":"d3c80be055d94d798eaa786116e84fa0b010bc11420b5d2060d97=
8ea77845436","src/zlib-ng/Makefile.in":"15027511a77e76b423eccf10ebfe66398ea=
96862cbce2415e5ebac7c7cbb6ab6","src/zlib-ng/PORTING.md":"5cff8c878c7958f6a4=
bada5a403dcc88961c9607826faece1aef202b5d95c550","src/zlib-ng/README.md":"9c=
ac4a98ecf45f50adf5030d4dc58b3cf9f3ae8e3ec78d30fdae4a99a2b4b8d9","src/zlib-n=
g/adler32.c":"82ffa1b4fc4b198ba8004135f79b8819d9f2b28e851c30c0ab41e6d32dfbf=
70d","src/zlib-ng/adler32_p.h":"f56915c59a345baf4558374447385a317e29365a4db=
2fbb38af4de3e1a1a0201","src/zlib-ng/arch/arm/Makefile.in":"95464884ba75a7b1=
2c9ceda5845d8d68d5a7d7dac8a8dc24b27beb2192e5b97b","src/zlib-ng/arch/arm/adl=
er32_neon.c":"3990b8d5570b12c2162218fe0e9bc723a03f1c89b5ed3ba70a74a98976260=
ee7","src/zlib-ng/arch/arm/arm.h":"855adbb02d7b9a5714a17d9dcff493610e7cd2b9=
a1f4e58e1c99626ab536e868","src/zlib-ng/arch/arm/armfeature.c":"dd09ad2712b0=
37e8d52173402f39cc2be1bc89d47fc10259ef81b4c64aef7110","src/zlib-ng/arch/arm=
/chunkset_neon.c":"65b70014888e9fbdb89bfbfa52f23b8953dc015466577da292d4780b=
55c5d95a","src/zlib-ng/arch/arm/crc32_acle.c":"5a96afc594697d1399870d1bfb06=
23a03869eff42caae74013f147cec4aa982e","src/zlib-ng/arch/arm/ctzl.h":"feb70d=
55e66025fff806e30e48002b35cfff79533d352585cfa5f118edbc90b1","src/zlib-ng/ar=
ch/arm/insert_string_acle.c":"d1b1dae5aeada70f2b03c2cbf3112ce55a92401c2d877=
09081b04dcf5992e1ad","src/zlib-ng/arch/arm/slide_neon.c":"19d8cf5c742ac6b82=
164c7a183538ad1129f9f17e9b8bce8b40daac3820fb6c4","src/zlib-ng/arch/generic/=
Makefile.in":"f41a34839986eac8dd52cf91fada0efff4171c059ab5d7db6347c91bd6d9d=
b09","src/zlib-ng/arch/power/Makefile.in":"69644d1a0ff8e7f38005c0a55cdbaf3f=
0d87f42abf8fc4f4136271c4fedfb846","src/zlib-ng/arch/power/adler32_power8.c"=
:"79b75e98ad3a62facbbdd8c0b178d3f993b57f6e34d320bf47eca33aa8c330a1","src/zl=
ib-ng/arch/power/power.c":"0647afb3b3b7ce2a19b4815ec8fdeee0b37c759413e5ef0a=
668a2dba22d94803","src/zlib-ng/arch/power/power.h":"f3f15f94fed98a2f7dd5d45=
68c5172e597228be4141d6895062703c3f70024da","src/zlib-ng/arch/power/slide_ha=
sh_power8.c":"932ea533d25e2f5478afe0c47830e7ef24276cad0d75fd91f2d8c799bd4b5=
d36","src/zlib-ng/arch/s390/Makefile.in":"eef6c3169723f089b0b5f852423ec55bf=
0364caeddd7cda991f2e76bc1682107","src/zlib-ng/arch/s390/README.md":"4f5018c=
b7c8ee217710a90193088889a15f1675d205a104140f6a1ac07ce412c","src/zlib-ng/arc=
h/s390/dfltcc_common.c":"6771ec4457da9f4b00c74bcc0828735e21c74b9162cb37383c=
297c3b5028cddf","src/zlib-ng/arch/s390/dfltcc_common.h":"ed339007feae58d187=
9e096addb30ed86cd5cf11222db22c45f48b47328cf6db","src/zlib-ng/arch/s390/dflt=
cc_deflate.c":"7b3dec7be4055c7748defc626dc91db99787c9f3b70b7d7b40282558bbb4=
78e9","src/zlib-ng/arch/s390/dfltcc_deflate.h":"c4c411f221cc0f6b218326e973f=
ef05c65840ba49878aff052dac0bb38121cbd","src/zlib-ng/arch/s390/dfltcc_detail=
.h":"01dbdfaf5e8ccf522663b4daa76e9138dde514292c35a623be4bcbbf4b82dea2","src=
/zlib-ng/arch/s390/dfltcc_inflate.c":"a96226eba3538d3904893cfe1b08395668e6a=
722b56f28d5b5debb3176161b4b","src/zlib-ng/arch/s390/dfltcc_inflate.h":"d7a4=
a5ae79abd1a5456521926b918becfe86c253a4fc23723fbc09f7c3303128","src/zlib-ng/=
arch/x86/INDEX.md":"c12f9bf0d66743a6472fb756bf46def8eea1dd235be7fca994dcb22=
f693a3524","src/zlib-ng/arch/x86/Makefile.in":"9f6fe7567a99e81aaa3bef8ccfa1=
ad40f524efc285cf8dfe0f497a1530f8016c","src/zlib-ng/arch/x86/adler32_avx.c":=
"99056732c7bd5d53dc108f282811a40bf21570926781af5dc7b17cb9218963de","src/zli=
b-ng/arch/x86/adler32_ssse3.c":"883a5520b4481225d097c90c5359106a3c8eb7b9214=
99c94276e999b7c39adc5","src/zlib-ng/arch/x86/chunkset_avx.c":"15060e7ee487f=
b1daef9be25343ae387392276933921e4b4db0c67831dc0854f","src/zlib-ng/arch/x86/=
chunkset_sse.c":"f7ccb55b67101ddb9def951a6d6f9dd4cb108fdd9e65f0f21d82723d1b=
093a22","src/zlib-ng/arch/x86/compare258_avx.c":"8b2838d168de4608327f25fe52=
d53763a82413ee911d87947d3fcd72c7f9bf26","src/zlib-ng/arch/x86/compare258_ss=
e.c":"b5049722ffd4a43a96868eeba5e000271cfc5fcbf3c2657026ead15b1df28a10","sr=
c/zlib-ng/arch/x86/crc_folding.c":"75199cdd06ec2f8f43bf38583b2c4d98bbbbd924=
e659267fdc1fa5134f1472eb","src/zlib-ng/arch/x86/crc_folding.h":"93921254661=
1917e9e066e8ed30cdda95680ec1f5fe0890cc4865b4e6d7fc215","src/zlib-ng/arch/x8=
6/insert_string_sse.c":"9e84a75b6a565422eb105261b6729d2a02b89133bd14372c949=
d5381b5deed3e","src/zlib-ng/arch/x86/slide_avx.c":"5e448e439ac24e7cb10eee17=
6ca37f2c63f73c135c0a2af040e232bad490997d","src/zlib-ng/arch/x86/slide_sse.c=
":"1946cabb634c905fddef0a22b2fad19dfd99110169567c3beceef71145b2e316","src/z=
lib-ng/arch/x86/x86.c":"1af56e27b2e951e1ad1344e62c2f7a8c49a776fcdd1cb0f4ea9=
d6152118a479e","src/zlib-ng/arch/x86/x86.h":"4d2d20ea0087089141e250e77bb3d4=
19954b9092810028b151581b9115a5fe8c","src/zlib-ng/chunkset.c":"c0dbc7abbdad5=
137a9efb2b0a76a212e77d4bf44beebe721c68359fa83002ff2","src/zlib-ng/chunkset_=
tpl.h":"35d15e97bd72d4e03dcec3ee804a08ea6a74faac2ef835caecc0e38bc9daf0c0","=
src/zlib-ng/cmake/detect-arch.c":"a9509327c2f4395955466b0acce453c29592d4686=
022714cb9e8b411d7e60c29","src/zlib-ng/cmake/detect-arch.cmake":"9cbb09b297f=
79e94b55fffb9acbafbee8d6761e854d818f1a0c686e3fcddf574","src/zlib-ng/cmake/d=
etect-coverage.cmake":"e4e372991ba80a16ad47df2716708a56013cc628aa7ed01573a2=
360c60610125","src/zlib-ng/cmake/detect-install-dirs.cmake":"87031a40428a10=
4f5cf38ecdb8a5028d8c679cfa772a58adde8380c809b34eff","src/zlib-ng/cmake/dete=
ct-sanitizer.cmake":"5e6fe6d2d877540811313f0c8e9884adb21a9ace2e24f23190f0fa=
c1d52dd2b8","src/zlib-ng/cmake/run-and-compare.cmake":"dc45eeb6d3e485404983=
4ec1ec2891342646c7fb803a0b6c2644d6316f89b668","src/zlib-ng/cmake/run-and-re=
direct.cmake":"2de9c784da3e04331465a3c56125b9c7d8e74b898b4cf85353aca196f90e=
a9bb","src/zlib-ng/cmake/test-compress.cmake":"3f37319963a80a31f752fca1c825=
71d552fd4701326bc40fdb02b54ec3f7a3f0","src/zlib-ng/cmake/test-tools.cmake":=
"4dcf099245085ee2b6d8ec41620bca3f7b718365dbb9bb0ad23931e83bf36aeb","src/zli=
b-ng/cmake/toolchain-aarch64.cmake":"8d7ba07ee1cb9fbc7817da1c5e74ce6c85ff81=
c10962a33941f0e24471956e59","src/zlib-ng/cmake/toolchain-arm.cmake":"0b0ab2=
b1093ef851c3dbd6fe53f855628df0778841a488aaef85d2c70f04a257","src/zlib-ng/cm=
ake/toolchain-mingw-i686.cmake":"6551576324fed6ccedffcfe8da762402dc863c20a2=
789a9b0030b9d32e15a15f","src/zlib-ng/cmake/toolchain-mingw-x86_64.cmake":"e=
c7bf5c8640fb61d2e30f8db7b588ca9b66da92d4a59e88ce16c5fc7f9ce02b6","src/zlib-=
ng/cmake/toolchain-powerpc.cmake":"6373abe883a99616aa51422a9b714894dc521211=
be49502463576f58d3d26b2a","src/zlib-ng/cmake/toolchain-powerpc64.cmake":"32=
8d1ea039a30e03ee9a552858b9f180b3da2614b712f618da1a0fa98f30a53b","src/zlib-n=
g/cmake/toolchain-powerpc64le.cmake":"ec90270bd1f4aa649abddddd2618168d399d5=
8a1c1c35b3d8d909e570eb9be1c","src/zlib-ng/cmake/toolchain-s390x.cmake":"cb6=
34252c21c4f55d06cdc49ce522a5546aae592daa0f12aa4282c0aef323828","src/zlib-ng=
/cmake/toolchain-sparc64.cmake":"d70d39760a23886ebd1c5a1a87651bfb47a9b24def=
9e7955ee1cbec60b40925b","src/zlib-ng/compare258.c":"56bfd48d5ff9ca422fbb728=
df7a373436c73796561dff118c7d4039fe70d29e2","src/zlib-ng/compress.c":"1abf5b=
13e3e805becc14f4f16dad9bf816f4fe41754b1abf75f670dcc84567cc","src/zlib-ng/co=
nfigure":"681d5b1303aab0523334c90ff049757e7ee6b2683f2411204b7245ba4adca4b2"=
,"src/zlib-ng/crc32.c":"98440be8a99381151a2d740f2e2228e8c1b23b9193c3642c52a=
4e34799506336","src/zlib-ng/crc32_comb.c":"78cd1a3d31963bfa5bd9d476250b2bb7=
777b12b6ebe0475acf021ca794757165","src/zlib-ng/crc32_comb_tbl.h":"d6615d209=
d6c7d5248c6f7fe4e5dbded13c0eb87997b37693032c2902927407d","src/zlib-ng/crc32=
_p.h":"1fa91375a18e090c0a0dfda39de3df36346a0b1be36c808be6b6c29c32eba922","s=
rc/zlib-ng/crc32_tbl.h":"d629378ba38ff5775095b64e277bcd41c4b89fab9b5647a9fb=
29e15da0db0161","src/zlib-ng/deflate.c":"1a5ff34bf68b88e30f578ce7b15dd996c0=
5fed7bf42f58f4616af470ee18f103","src/zlib-ng/deflate.h":"a074e9a5dd5d689db6=
3655251d6a0948e7a7c0c4a4f6d0ca60bfe18291f3c34f","src/zlib-ng/deflate_fast.c=
":"b3b261b3a02b089599fcd9448965ef5d8e8b0e8e9556857357c9632930c7c748","src/z=
lib-ng/deflate_medium.c":"1c3d95cbac76052d39595ea750c5536541c18302b9abb398c=
27b58955318bba8","src/zlib-ng/deflate_p.h":"95026b1b48aa78204381b32617dd44e=
8c820c9bb21b415ebfcb33e6b5255233e","src/zlib-ng/deflate_quick.c":"280905a19=
1d2b2a7274f2453ac537e01a0fb6e7540a0b212c1514bfb8c9415ea","src/zlib-ng/defla=
te_slow.c":"a2c66723e1e71ffd6ff856407459ab311a4c6546ecf50285081fc7afcd0ccd2=
e","src/zlib-ng/doc/algorithm.txt":"992590931e982c0765286c2d83f6e9ff0a95aab=
b08e28c30c52bae3e8c4bd5ad","src/zlib-ng/doc/rfc1950.txt":"8f0475a5c984657bf=
26277f73df9456c9b97f175084f0c1748f1eb1f0b9b10b9","src/zlib-ng/doc/rfc1951.t=
xt":"5ebf4b5b7fe1c3a0c0ab9aa3ac8c0f3853a7dc484905e76e03b0b0f301350009","src=
/zlib-ng/doc/rfc1952.txt":"164ef0897b4cbec63abf1b57f069f3599bd0fb7c72c2a4de=
e21bd7e03ec9af67","src/zlib-ng/doc/txtvsbin.txt":"47c273bb22c9773248d380549=
a330e5c262266b1292154b0d3014f731cc73f47","src/zlib-ng/fallback_builtins.h":=
"f07e83c5c444554577c4240ff7722057ea2a689f6baa0f9e8bda32b9a46888ca","src/zli=
b-ng/functable.c":"d3747a4674ddbc903ab1d06efe63a1c4b52bf42f7dd38cde3701fa82=
b1d953f0","src/zlib-ng/functable.h":"e5a2d0c10411d23f04295bcb9ddb9889388974=
b723caef65aa5c4ea4739f4aa7","src/zlib-ng/gzguts.h":"cbf2afc8a6183002254a73c=
abe8376e54b1aea2ba042e36138f292c9cdb95d5c","src/zlib-ng/gzlib.c":"5b5bea4f3=
19e5d0a96b92aa431fb33926686cd20686c90d75e42e1481872bbcf","src/zlib-ng/gzrea=
d.c":"fc4a187ba45ceb7b4b50f4f8dedc7685fe8687e6f034638a6437bebf71d51a13","sr=
c/zlib-ng/gzwrite.c":"7c86058ae23f856c099e2663a5676c97cfa4fb5df9b92893c9407=
6ba4aa9a56b","src/zlib-ng/infback.c":"97a35de1a3d3bec50e112853e03bf1628cbed=
3b0fb84459cc423e3f9f61fbea7","src/zlib-ng/inffast.c":"701519ee11d39cdf4e808=
395722415c42ff2be9445f66408fd879370f3242b57","src/zlib-ng/inffast.h":"42e74=
a92b496ab0726be317e8497a12bf3c3cf3d0d533440ce65befd3929c71c","src/zlib-ng/i=
nffixed_tbl.h":"a94225335396245e9f0ccb2e9b4b334fe7ee0111ed8e32a26bcd52187f3=
64314","src/zlib-ng/inflate.c":"a665bf717ee257a16a8ab993241f2cf9e71d49882ad=
dddb9518b88186f82a5cf","src/zlib-ng/inflate.h":"eb25527d1bdedaa45167926dce4=
c39d9aaa3147b0f4a95f38f5916528c30a09b","src/zlib-ng/inflate_p.h":"4a94c5119=
4da119770cf662ef289994f0c78d95184d54d6ae5d50a393e8f5a62","src/zlib-ng/inftr=
ees.c":"d1d88f98f9129c87f3ce1d6de5bea3ec867de23b1b2bdd585257d231aac82a4f","=
src/zlib-ng/inftrees.h":"624c6653a454447c6274adf922430a19c96ef73c7687e4559d=
247ff48970bab5","src/zlib-ng/insert_string.c":"aa22ba53a1e75821499809277f9c=
a0e5ef92b07a618136dd11ae1734e233b7c9","src/zlib-ng/insert_string_tpl.h":"1c=
eba9903324d10aad6e1d83653c4d534a5b06fd09076414a06215482be00bac","src/zlib-n=
g/match_tpl.h":"eeab4c6eea8511a7579738e622af062ad16f4016312e93ad34bc5903d8b=
3c4a1","src/zlib-ng/test/CVE-2002-0059/test.gz":"60bf96b8f433bd7e057ce3496a=
ceaccd70ec80f596a4aa8bcc7786056705ce66","src/zlib-ng/test/CVE-2003-0107.c":=
"1bfbc88dc501cd92b8b26bd8944af6b150b376ebfe7241d90e2b93109be3d68c","src/zli=
b-ng/test/CVE-2004-0797/test.gz":"38caae524705f676bde13a8df9fc8c7d2fe105ba6=
bdbab62a405b0276fd3aa2e","src/zlib-ng/test/CVE-2005-1849/test.gz":"e4d5a606=
17df4b5dd44eda94751ce1eacdb325792bba6e3cc4676719a3adf742","src/zlib-ng/test=
/CVE-2005-2096/test.gz":"8f702d4861aa3ec98ac03a59ff26b430939630cb5cd4266d26=
58d3b836d576f9","src/zlib-ng/test/GH-361/test.txt":"358497d0a7251ea42101dc7=
7b02337f46fd89af09643a8288e2a3082e5d24128","src/zlib-ng/test/GH-364/test.bi=
n":"af5570f5a1810b7af78caf4bc70a660f0df51e42baf91d4de5b2328de0e83dfc","src/=
zlib-ng/test/GH-382/defneg3.dat":"b22bef6b7392401c9e7b079402c4a4074053d7a91=
4d050400e37fd7af6fe26d5","src/zlib-ng/test/GH-751/test.txt":"b83d833803b7bc=
3124fb2a0034081f0b999ad10c33a8dfa3bfd181dc078ae3ee","src/zlib-ng/test/Makef=
ile.in":"c3b6a1ec62838c140a78bc361448d5739756bbfa3bbbf1ffa64c342599949701",=
"src/zlib-ng/test/README.md":"fc485cfaaede6b3d3dc61fdd17cc7eee715c35d6f62e6=
e502f9251fd1b5edac9","src/zlib-ng/test/abi/ignore":"02aa87f77656dbc1fbddd23=
f436cd15465a92df0722da4055cae1bc8bf013097","src/zlib-ng/test/abi/zlib-v1.2.=
11-arm-linux-gnueabihf.abi":"f5e91f25b558a891fecbeb6e2e9575698630ab700d055a=
38f3bc4fe66257f513","src/zlib-ng/test/abi/zlib-v1.2.11-x86_64-linux-gnu.abi=
":"038337383cf780587d810cf5400d632f3a1f8517e63ac4a71b6e5224db8b1413","src/z=
lib-ng/test/abicheck.md":"fa5d6d33ff0fd95eefb7c6c0c7f67351282e6eda20c4e3884=
2235a610cc10382","src/zlib-ng/test/abicheck.sh":"b23ee3678acb24caf36fc8402a=
07452de73c50640ebe641f185c7f9d5ea257e7","src/zlib-ng/test/adler32_test.c":"=
db3e8ad9a4e2ecce0c052b0bfe19834d3ff2fb2e9239cc3438a2c95db00b1d21","src/zlib=
-ng/test/data/fireworks.jpg":"93b986ce7d7e361f0d3840f9d531b5f40fb6ca8c14d6d=
74364150e255f126512","src/zlib-ng/test/data/lcet10.txt":"938e69e61b3411d8a9=
e2e630f4265000d810f3dbf66bac58cac19493753526ec","src/zlib-ng/test/data/pape=
r-100k.pdf":"60f73a051b7ca35bfec44734b2eed7736cb5c0b7f728beb7b97ade6c5e4484=
9b","src/zlib-ng/test/deflate_quick_bi_valid.c":"0e00da0e048c46204c39aff4b8=
fb79890274d3c6183a9409aefd5c93e4e92a48","src/zlib-ng/test/deflate_quick_blo=
ck_open.c":"455bd347bb88debdfacb409846170274991ec9ba71c52b8fd0e526daf57265e=
b","src/zlib-ng/test/example.c":"8bfad1221a8df5b6202e11f6be4bae5dbccd8a24fb=
7bbd8dd88e7ecd318907e7","src/zlib-ng/test/fuzz/checksum_fuzzer.c":"3a15479f=
2cb40b6c5760dadb246328fab7315f3e3b8e28c1bc246c9b9a867c69","src/zlib-ng/test=
/fuzz/compress_fuzzer.c":"1ab70608075c4bc60f89aa2f327cff88362ee7b1d31da88ed=
54ca51e5f99e5c9","src/zlib-ng/test/fuzz/example_dict_fuzzer.c":"04262105305=
0f0fde90a0428cd1afabda8cc7c3fa59e3e0a55c43ab1e03d3988","src/zlib-ng/test/fu=
zz/example_flush_fuzzer.c":"f12246a184dcfe0a19a98cdc742a1fe8da388ad20b40663=
5d63f1fa10d45b9ca","src/zlib-ng/test/fuzz/example_large_fuzzer.c":"f490abcd=
332fb4e7921292adf6876d38d7f71c8d2443212c781ba88957ff9303","src/zlib-ng/test=
/fuzz/example_small_fuzzer.c":"a9b3436b291ace821b6013311a1100e19a9e1c67fefd=
3f97dbd60688f9bf22b1","src/zlib-ng/test/fuzz/minigzip_fuzzer.c":"7b0e7da9b6=
c60f3b3a13f140cc445050d9e8958d4f59cbb9a498c08f3a53adab","src/zlib-ng/test/f=
uzz/standalone_fuzz_target_runner.c":"306e8ac4e08ea72d18ffae8c908abfef8c6fe=
edf83b068a7ec675ade6a5791a8","src/zlib-ng/test/hash_head_0.c":"d88105a80e75=
6b7206a20c7b2490a2e7e743a2ceb1f20d3e433ce9848f054e1b","src/zlib-ng/test/inf=
cover.c":"b9acffc102fdd140941073ca47e30c938aa937b4929061500c36ffba12c86449"=
,"src/zlib-ng/test/minideflate.c":"93de8ffcbe7c414abf3ea36acdf729bcedb40393=
ec7bd10b356ebe225406e173","src/zlib-ng/test/minigzip.c":"291e2ea30778a3e829=
b96cb47211e89494ece036cd74591178710b4276c9b48f","src/zlib-ng/test/pkgcheck.=
sh":"75b3155125f235e27ee434d76b6f72bd825899b55f6d59ef2d032fe67a2896ed","src=
/zlib-ng/test/switchlevels.c":"c30ae3d27ce6041934532553719622e7ed473541aa7b=
dad8d11d0c55e5220f14","src/zlib-ng/test/testCVEinputs.sh":"5de6198444c16726=
f8e0a8f2beb5b89c5ae7e7e3736ce760b9fbc719493e7e4f","src/zlib-ng/tools/codeco=
v-upload.sh":"ec7a8f1405820810e486e3d7e2fda7eb958c17877b0000b93abdf09d87732=
a2f","src/zlib-ng/tools/config.sub":"32186cfeb5db62c99e1dfbfb07f24c1a509774=
47b4c26d2907021c74422a70d2","src/zlib-ng/tools/makecrct.c":"55c8f7b8e29393e=
95988a29de8cb1a1bdf2738a69d53627bd0f9d7bf169bf0a8","src/zlib-ng/tools/makef=
ixed.c":"bffd02540231304f9bcc755b8cb9ae5cfbc48975857bbb4547f1d6acce21ef57",=
"src/zlib-ng/tools/maketrees.c":"2dbfe34691dde327618be496b380fc91daaa304743=
52815773a8b70114b0541a","src/zlib-ng/trees.c":"956ce5b3f3330320cb5baadbf772=
1572259ec41edc4d8c132a20888b7f6f60c3","src/zlib-ng/trees.h":"24174f3543b01e=
e1ef370bbf6d15551a21871cded18b2aadf09a71e7904b6f99","src/zlib-ng/trees_emit=
.h":"f68904e04caee0482c72ea92cc775cabe35a0bf7cffce85566c15ace27666af4","src=
/zlib-ng/trees_tbl.h":"35f4fd0ec080c1ade342e2dd1b0f5cdc7e9f18990faa48d7a8a6=
9bc318ebe607","src/zlib-ng/uncompr.c":"4ebb486b27930f8a6ec4a3cc90a207d0bcf8=
a4779d1dbf3b2184a2b2a5735cd1","src/zlib-ng/win32/DLL_FAQ.txt":"d2ec63cb4a51=
886e0813f75bca49a051bede364d855f938e1a7992ab97a79800","src/zlib-ng/win32/Ma=
kefile.a64":"775d6902373d1583430b5d7467f001746be323610c89be27e02bbfe0205994=
f3","src/zlib-ng/win32/Makefile.arm":"7535e022f482920c3fa7a267e84e39ad790d1=
50f72e5c30414baa156c2fdd9b6","src/zlib-ng/win32/Makefile.msc":"deee44d56248=
90e692d87db311216075e967c3ac8aeea6ffcdcac3d03eea260b","src/zlib-ng/win32/RE=
ADME-WIN32.txt":"a8c2d052960b963a49cee5a2ad891f2ff7b34db038f00985eba4eefc99=
966261","src/zlib-ng/win32/zlib-ng.def":"f240276caf805a10d024fc6a66efe915c4=
35734c69732818d92fb04d08ab350c","src/zlib-ng/win32/zlib-ng1.rc":"b567a27640=
7998bae40aacd48a50beba87c0bfbae470d28e66331ac99eb575c8","src/zlib-ng/win32/=
zlib.def":"d9c371ff2677567350386441a2e3d0258010d6502290bbac5ac42ea168bd5212=
","src/zlib-ng/win32/zlib1.rc":"d7f269379144d65bcd1b67c1065e5d4120579f14ce5=
4ecf246eaba394fa989a5","src/zlib-ng/win32/zlibcompat.def":"73728b9df4379dc7=
0ebd9b2a9f20d6e4ed7c031fa1f351cdeae1de7d1db05bd1","src/zlib-ng/zbuild.h":"f=
73424f5f10370ffe8f45f6e3dc52dd095ea778153832461d712a838e3a01098","src/zlib-=
ng/zconf-ng.h.in":"708106f26c4a0d877e2ea644320a2b48b144524b61429c7490e2e742=
a0c0c1e4","src/zlib-ng/zconf.h.in":"dacec2360fd9607f85bdf651409fa3831dd26f7=
4414d242e812b06c3b9c9926d","src/zlib-ng/zendian.h":"f5cfa865281d2c5d0b097d3=
18500f27daeec346e7882de68e279486d79c52e77","src/zlib-ng/zlib-ng.h":"7a15bda=
0297b2611da695f895cc57ce44c284b030fe98817281e868a1a86ae35","src/zlib-ng/zli=
b-ng.map":"e8202981574d814cb2a9f06bca7900d0959c24766bd86681bd3843ab0e71f8ef=
","src/zlib-ng/zlib.h":"703bead0c02381c8df8d14d805fde913973b2960811f35e2de4=
f4aaf29ad905c","src/zlib-ng/zlib.map":"e3549810f821d433d57f921ca2fceb867457=
4f778485255a7dc691bf26b5281b","src/zlib-ng/zlib.pc.cmakein":"17668e07edbe59=
71043bea26a2f2b92c4c7cf4724620f1156f3ea1436d2aac93","src/zlib-ng/zlib.pc.in=
":"cf94c9aa44878a62e27c2f75354c08326b3bb5250a9b11496855cf59691177bb","src/z=
lib-ng/zutil.c":"7544aa2d2cfce4693d4e2a639f0631c3e8b3e7d0d846313be0e250c477=
e6812c","src/zlib-ng/zutil.h":"c0e9152d078ca1774c93910fd84531b2f593b3a6b103=
5e4d97a0d28b720ec98b","src/zlib-ng/zutil_p.h":"1e5a2fb8d15212ad094e9a5d5f60=
7f11f8191498b54e0af48d722f92d9c71ffd","src/zlib/CMakeLists.txt":"b87275731c=
c3ebdfea144187875cea204f555c343279c0f35f2d46d661bfe34a","src/zlib/ChangeLog=
":"4c9f1a65b9b4be8bf164a97775ef50e4db4e02ea8c9933fdbe629a640691375e","src/z=
lib/FAQ":"1e8a0078be0ff1b60d57561a9e4a8cad72892318a8831946cba1abd30d65521c"=
,"src/zlib/INDEX":"3b4e325d47ae66456d43fcf143ba21ab67a02a4f81be7ef2da480ba3=
0d774266","src/zlib/Makefile":"ef23b08ce01239843f1ded3f373bfc432627a477d62f=
945cbf63b2ac03db118a","src/zlib/Makefile.in":"5021b2bac4164f48b17c91c8a2e3c=
225be7ad31d8bfab1bbaadd90370afe9991","src/zlib/README":"7960b6b1cc63e619abb=
77acaea5427159605afee8c8b362664f4effc7d7f7d15","src/zlib/adler32.c":"d7f1b6=
e44fee20ab41cef1d650776a039a2348935eb96bcbd294a4096139be3a","src/zlib/amiga=
/Makefile.pup":"a65cb3cd40b1b8ec77e288974dd9dc53d91ed78bbe495e94ccc84ddd423=
edf1f","src/zlib/amiga/Makefile.sas":"0e63cf88b505a1a04327bb666af3a985c5e11=
835c0c00aed4058c0dcc315d60e","src/zlib/compress.c":"5c11e1fc22e219cb986f6fa=
9e4ba939315227e84aef042737d38ec668b89b6d2","src/zlib/configure":"86b38f27f3=
1d2fec76d9355872550dc63cb3949774473fd6313c5a3fd1def0e2","src/zlib/contrib/R=
EADME.contrib":"ca39b78bd7ad84f1df7b0da90770c5b3fa4c8e2c75d132e9222812fac88=
39630","src/zlib/contrib/ada/buffer_demo.adb":"469cf566a6965767fee6b987a239=
ed8cedcc66614940d45a9b434331fbb435ce","src/zlib/contrib/ada/mtest.adb":"41b=
6f31684770334afdc4375871eb1408542f37a823a073556fdbfdb63753160","src/zlib/co=
ntrib/ada/read.adb":"fa5b989aef0c5715a3fcb15de93985f7f10aeb0a7f5716745c95ed=
820eb9af9c","src/zlib/contrib/ada/readme.txt":"8fe9e5303f2e8e8b746c78250e74=
b7c4aeb7ce6212fdce751fc3a0ce56a47fe2","src/zlib/contrib/ada/test.adb":"5e3a=
be79b387e09a9a42bd0543105e228f39a335240cffc33d71f0ba66ff2511","src/zlib/con=
trib/ada/zlib-streams.adb":"f45988e2bac76eb25a0dc981f46576e7432c35dde1790bb=
c2b650f0090b7fa72","src/zlib/contrib/ada/zlib-streams.ads":"969e8edb0611810=
fb52159dcb7c40228f4e5da810a7a3576b778116a93038c6b","src/zlib/contrib/ada/zl=
ib-thin.adb":"03d89244ee5ec9771d9b5050e586c609f851af551b2e64eb151f1d5be0b63=
ae9","src/zlib/contrib/ada/zlib-thin.ads":"631ef170bde16c3ca8d412b54a0e5198=
15b80197d208f8f393e6fe017bb0968e","src/zlib/contrib/ada/zlib.adb":"c9ca5dc3=
4fbcdf06e2dc777b7e9dcd0ba31085b772b440eb0e12421323ab672c","src/zlib/contrib=
/ada/zlib.ads":"02634bec0d5e4c69d8d2859124380074a57de8d8bd928398379bfacc514=
236d2","src/zlib/contrib/ada/zlib.gpr":"859bb69dce38dbe9dca06753cf7ae7bd16d=
48f4fece8b87582dab8e30681d3de","src/zlib/contrib/amd64/amd64-match.S":"1660=
07f7e9adb58fe8b83d85bbfe823f5e05858ba1d06edf637b78886caa2c69","src/zlib/con=
trib/asm686/README.686":"c21cc7147c956ecae17dd084cb41a206b086216fa521012871=
fb07fafd203c6d","src/zlib/contrib/asm686/match.S":"873799062495629f21cd3f77=
9ea4b927add7aae0144e32d3594d9ce70185e99d","src/zlib/contrib/blast/Makefile"=
:"17d5d26c24bf51cad51045a38ffb73cc3539d29e89885aa249fcfd45a8659d5c","src/zl=
ib/contrib/blast/README":"baa763ae03d88ef7ece6eb80d9a099b43d0b57639d6d281e1=
c7c6ca79d81daba","src/zlib/contrib/blast/blast.c":"1ab3e479d342bfc144167b80=
8fb00142264bc50f24a110ca88cc774e351c218e","src/zlib/contrib/blast/blast.h":=
"4d4e3e6f893316f0be77bfd642c857a77f1fa2925acb5df9753e543d35aa3a6a","src/zli=
b/contrib/blast/test.pk":"5f5c262c545574a5c221132d5ef832478d222d70b01534179=
5b3860204140d7c","src/zlib/contrib/blast/test.txt":"9679b2c98e1283222d0782b=
25a1c198dc64ba9ebd1addd6dc6f643a45947cda3","src/zlib/contrib/delphi/ZLib.pa=
s":"1b20e173443a68c189cdaa4795620fb1ac165d9e61a27a1ed2cf690f13530d6f","src/=
zlib/contrib/delphi/ZLibConst.pas":"84bcc580bdf397e570f86f3f5a5b8c7bf537828=
f30b4b72648b81911f6bf5095","src/zlib/contrib/delphi/readme.txt":"f7420ed2de=
77d4b498eefbbe6402a1d17dc2d411735289c78a265c7f10fdaee5","src/zlib/contrib/d=
elphi/zlibd32.mak":"850e91b6c9ea05de61a411cbda16fa0f10118cd88bb32c4b7226988=
776f8d511","src/zlib/contrib/dotzlib/DotZLib.build":"b96137097669644ecb9f42=
cdd3399d1fce9c512788374609303f7e50abf597f0","src/zlib/contrib/dotzlib/DotZL=
ib.chm":"20d0e3edd57f849143255a7f0df1cd59d41db464a72c0d5ab42846438a729579",=
"src/zlib/contrib/dotzlib/DotZLib.sln":"a979198c5b8d144c1ac8f993bfb6f4085d1=
35aa58ca9dcf63ebabf52b5c695f7","src/zlib/contrib/dotzlib/DotZLib/AssemblyIn=
fo.cs":"314afcfb339ea95f5431047b7ab24631b11c3532c7ce5dc2094ed0cf80a7c16d","=
src/zlib/contrib/dotzlib/DotZLib/ChecksumImpl.cs":"e7c047a2c3bcf88d3d002ee3=
d2d05af414acf53cb4451efacc0f2e95a474ea0f","src/zlib/contrib/dotzlib/DotZLib=
/CircularBuffer.cs":"be84c9736fe7bdc2bfae70466d8fff582504e928d5b5e110fd7580=
90090c8cb7","src/zlib/contrib/dotzlib/DotZLib/CodecBase.cs":"259bdda1b7d605=
2134e631fa24bfd9dca6e2362563496c8b85257b56c848908c","src/zlib/contrib/dotzl=
ib/DotZLib/Deflater.cs":"06ba6696a3c15c53ba5fd5a1c2bf50b51f217010228fc1e4c8=
495ee578f480de","src/zlib/contrib/dotzlib/DotZLib/DotZLib.cs":"9837fe993fd6=
31233cc5e53ff084d86754b97f05ec77c54b0764c2706f186134","src/zlib/contrib/dot=
zlib/DotZLib/DotZLib.csproj":"21606db31dfef6410dd438b73f1db68856eacabcce6c0=
f0411fc4f17e17001f3","src/zlib/contrib/dotzlib/DotZLib/GZipStream.cs":"8d1d=
e9755c77046b4ac71340a0a54434ebf4fd11b085c44454d7663a9b4df1c5","src/zlib/con=
trib/dotzlib/DotZLib/Inflater.cs":"9016ca73818f5b6a28791abc3af6da7c4d2773b6=
a3804f593f6d5737a62b99ad","src/zlib/contrib/dotzlib/DotZLib/UnitTests.cs":"=
ad66ac08de34d253e9615b96a745f3dfeda93f4a978d65d5d3ddb9d0d9b3e099","src/zlib=
/contrib/dotzlib/LICENSE_1_0.txt":"36266a8fd073568394cb81cdb2b124f7fdae2c64=
c1a7ed09db34b4d22efa2951","src/zlib/contrib/dotzlib/readme.txt":"d04972a91b=
1563fb4b7acab4b9ff2b84e57368953cc0596d5f5ea17d97315fd0","src/zlib/contrib/g=
cc_gvmat64/gvmat64.S":"22ff411b8b1d1b04aeaa8418b68245400267dc43c6f44104f6cc=
d37f0daee89f","src/zlib/contrib/infback9/README":"890288f02bb3b1f9cc654b87a=
07fcea695f90f6b9bd672d25bf6be1da2ec1688","src/zlib/contrib/infback9/infback=
9.c":"0a715c85a1ce3bb8b5a18d60941ffabc0186a886bcc66ba2ee0c4115a8e274e9","sr=
c/zlib/contrib/infback9/infback9.h":"dda2302f28157fe43a6143f84802af17403935=
72c2766559593996fd7a5a3245","src/zlib/contrib/infback9/inffix9.h":"84a2ba47=
27767c18af6505f0e81d9c814489c8b9ed330a25dad433db72997e43","src/zlib/contrib=
/infback9/inflate9.h":"32a907676cc36e27d0fdc0d99adb83a0b23f20ab61896269216d=
40fecf08d349","src/zlib/contrib/infback9/inftree9.c":"0c7f10396703b230c5042=
07fe1595a2f2f8ba9c43158c4bd79d5b22ca36e04e0","src/zlib/contrib/infback9/inf=
tree9.h":"8ae61d52e50d2dbdb0378548ecc54fcd88f108c8b6fc30562a3ebec1ca6a599e"=
,"src/zlib/contrib/inflate86/inffas86.c":"6f266f3c7e0faca653256d0189c0f00d7=
dc0b062d02e25df4e1202e49369595c","src/zlib/contrib/inflate86/inffast.S":"70=
777bd21526680005fc34f086d108af49e2668ad86d1749e8e8100a81bfb288","src/zlib/c=
ontrib/iostream/test.cpp":"0f3c77e013949eb9c91e6b690ea894e19d97944d6b0885b8=
2806fc3ad99680cf","src/zlib/contrib/iostream/zfstream.cpp":"8ebb9b3d521cc33=
92953f27658cf1f6dcb763216079f69a1518ec5ca0e42a63b","src/zlib/contrib/iostre=
am/zfstream.h":"4369c35e66f63f52ca4a5e1759bf720507ccabb8f3f132e2f18e68686c8=
12401","src/zlib/contrib/iostream2/zstream.h":"d0343e0c57ff58008b6f29643d28=
9c72713aa2d653fe3dcd2e939fc77e7e20b6","src/zlib/contrib/iostream2/zstream_t=
est.cpp":"f789df183cc58b78751985466380c656308490a9036eb48a7ef79704c3d3f229"=
,"src/zlib/contrib/iostream3/README":"43ec48ecbd95a8c45db20b107fac73b740bb1=
1595a4737329188f06b713972cc","src/zlib/contrib/iostream3/TODO":"af5ebc83fb8=
8f69706c8af896733784753dead147687e1c046f410c0997fd88b","src/zlib/contrib/io=
stream3/test.cc":"8e17fc48dfdbc6e268838b8b427491b5843b6d18bc97caa6924de9fad=
7abe3da","src/zlib/contrib/iostream3/zfstream.cc":"8cdd67ed0b13c192c11e5ea9=
0e9d5782d6627eb303fbc4aa5ebda2531ec00ff8","src/zlib/contrib/iostream3/zfstr=
eam.h":"1bd74778fac45ee090dfc0f182a23e8a849152deb630606884b2635987b357b1","=
src/zlib/contrib/masmx64/bld_ml64.bat":"1c0561908a07ebdff271b12ed757241e181=
3d3db0f3551501b2595c23f0833aa","src/zlib/contrib/masmx64/gvmat64.asm":"390c=
1e6d63cb615b5ba042842738953f9cdc688b2fe35aaca981fd3fae213f3f","src/zlib/con=
trib/masmx64/inffas8664.c":"f6c585e43e6e524107566b1f10104949d0ef902159ac820=
3e1d98e50d4bedd62","src/zlib/contrib/masmx64/inffasx64.asm":"8448d0041fe6e8=
f4188fe5916181a1b274c6d35d75cfb28da60cf4f1edde44ec","src/zlib/contrib/masmx=
64/readme.txt":"9bb66b5028100855683853f12da0be479c7bccf74365fdbf37da2542edf=
f9927","src/zlib/contrib/masmx86/bld_ml32.bat":"b0b05b62715d4a81a7db5b7ca4a=
372d109ec95634c9d3bef9e0041ff52de22fc","src/zlib/contrib/masmx86/inffas32.a=
sm":"78d2cc88f8ed0e32ef960efc987c257bc1688afe7d031a8ba18761e95a6a7c3f","src=
/zlib/contrib/masmx86/match686.asm":"9e9bea3b5517b089da7d39caded07982746a33=
f94f0907ca7e8afefed7be36b6","src/zlib/contrib/masmx86/readme.txt":"1f29a04e=
0227b74e20ba1b7c764b3ca5bf596dd2c06e89bc19a05fb8f9689778","src/zlib/contrib=
/minizip/Makefile":"087034de3dc0223b29e64bb3a4fc3eda7b948e93d2a9ff154aecf9f=
ed2a1eb5b","src/zlib/contrib/minizip/Makefile.am":"2313a3480a2c3745fa7ce216=
829cd0367058907d3a0902e5832c66c84a2fdfc6","src/zlib/contrib/minizip/MiniZip=
64_Changes.txt":"302c62b328647f5472fb7755249a83459be7f8ffb1fae07e8ba318fce8=
f4126c","src/zlib/contrib/minizip/MiniZip64_info.txt":"122719c32ef1763a5f6b=
a9c8cdefc1d78a76f7156b09e7b6f69b73f968e0dac3","src/zlib/contrib/minizip/con=
figure.ac":"35330dc0c6188127afd339829d91b19739d23bf3b7301bfb04f775a6fcbbdad=
7","src/zlib/contrib/minizip/crypt.h":"8e872b60255b8447da99885c7159c2e1f1bb=
8143523bdbe71784e60f98bfd67b","src/zlib/contrib/minizip/ioapi.c":"66b39c270=
42f6ad12cc12efb0c82cdf100c6640b5fa959b8b866e252966113a9","src/zlib/contrib/=
minizip/ioapi.h":"8655408534b78dc0889a45f9359fc6d2d5c8e8d8443b81ede596f954c=
720ef48","src/zlib/contrib/minizip/iowin32.c":"2c05bc374d3d847c6a9f29eac9d6=
74abba7659d1e91e34e172248fcb5c274d51","src/zlib/contrib/minizip/iowin32.h":=
"586f22b9c3c64da253ce2b518e0fad61f19a7b47b289fc704cc9708242294c49","src/zli=
b/contrib/minizip/make_vms.com":"65736d9c4888f2373d3db0a13864d150c5040453f5=
bc2a5c8784379a7ea67590","src/zlib/contrib/minizip/miniunz.c":"ced49f20c6253=
6a8ffb270b35cfa4994a1dcdce45f8cf059b941c94ca0022666","src/zlib/contrib/mini=
zip/miniunzip.1":"66d8684392167091ef0fe01598d6a0daa26e7e448e2df6c3cb2574877=
35b83f7","src/zlib/contrib/minizip/minizip.1":"5404596e8e5587a52f563906119f=
32ceee30a6d97a966afa5c7afbe4d373e210","src/zlib/contrib/minizip/minizip.c":=
"fdfcf83979ef2324c1455d369e8add8678c804939d412ce53f8b024578ceabad","src/zli=
b/contrib/minizip/minizip.pc.in":"8b6670b42d8e5e519e1cc89db093efc07ba23cb1d=
dfedd3c93ff2df08c3ce8ac","src/zlib/contrib/minizip/mztools.c":"cd887c4af6d2=
0823bd15f24008b10acf01969b4165d7848656bde843a92428d7","src/zlib/contrib/min=
izip/mztools.h":"6f82c52279e8f79165f4446be652e5741a49992ac58632470335aa34c5=
64072a","src/zlib/contrib/minizip/unzip.c":"497adf676b1cae2a7afa834e4aba863=
83f7b697f5fdd03a8179ea9024a431cf9","src/zlib/contrib/minizip/unzip.h":"d8dc=
58fc0121b6a4b98f3028205bb253f956b1ddf791e9ced3cf44892502a01f","src/zlib/con=
trib/minizip/zip.c":"00f403cb7810578b4b2687dd55fb132c850c3630fba2f3704a8ab8=
96fcc8209a","src/zlib/contrib/minizip/zip.h":"96163fc140e4bf08752e014d20a1e=
ac3f5adcdc408366f6d79c1895f2599cf08","src/zlib/contrib/pascal/example.pas":=
"d842d456ecb6ff80e34cee2da31deb2072cc69ca837497bea8b8bee203403474","src/zli=
b/contrib/pascal/readme.txt":"02f997c37991ddae0cb986039f7b4f6fc816b3fd0ffd3=
32cad371d04c12cf1b9","src/zlib/contrib/pascal/zlibd32.mak":"850e91b6c9ea05d=
e61a411cbda16fa0f10118cd88bb32c4b7226988776f8d511","src/zlib/contrib/pascal=
/zlibpas.pas":"28b90aeeb3da8d1f6a98ab9f5f1603d08aba5bfabc50827d3f15e661268a=
51cf","src/zlib/contrib/puff/Makefile":"d9d738030464aaae354196c14fd928adf59=
1832fce7d71ac1977c1d8d4923a4b","src/zlib/contrib/puff/README":"aceca4bc1bce=
7d9445b8bc9b6640c672d95708185f6070d3a3baae7a9d102caf","src/zlib/contrib/puf=
f/puff.c":"6d0eef92e115a42e570b79d8b07a04af5ccbd6b3f3fbca9cbc61c49db9c9df43=
","src/zlib/contrib/puff/puff.h":"969b7be2a930db0cdcb19b0e5b29ae6741f5a8f66=
3b6dba6d647e12ec60cfa8e","src/zlib/contrib/puff/pufftest.c":"8ee0da78a1221a=
3c2036e22eed06c2faa27a671a46565a60e10111d4ee9c30ee","src/zlib/contrib/puff/=
zeros.raw":"b7b0887089f7af1f6d1e0b4c0a1e8eddd10223b23554299455c6c9be71b653a=
3","src/zlib/contrib/testzlib/testzlib.c":"c6c37b35c6ecc9986a9041f86d879cc3=
7a9e4d8315af9d725071eb3b2cade0c5","src/zlib/contrib/testzlib/testzlib.txt":=
"2359bbdc84eb8a04e0f1cd16cd81a2896e957f2ad58dab3ca78ef55b7d0dc577","src/zli=
b/contrib/untgz/Makefile":"8f5ab1564813e091cea8f1bb63da32fd80ac763d029277b0=
cabf50f60aceefe1","src/zlib/contrib/untgz/Makefile.msc":"d0f537de11d9e0e36e=
2a98b3971c537265f4b533b4c48797094365ad9ae8388b","src/zlib/contrib/untgz/unt=
gz.c":"9a12d774301d252dcd38bba07ac369319da4c04c4fef8a50fcbf40aebf29c2a1","s=
rc/zlib/contrib/vstudio/readme.txt":"2a9ca40b68274f4d37649dfab9e5e867a00088=
3592b4ab8fdaec8425a63052c3","src/zlib/contrib/vstudio/vc10/miniunz.vcxproj"=
:"dd607d43c64581172c20c22112821924dfe862f56b2e5eb8780bdd0714d9527b","src/zl=
ib/contrib/vstudio/vc10/miniunz.vcxproj.filters":"c3db9f97952683e688ad83c13=
bb94c816ac3e6b5f277fdea545b0650c125aa6d","src/zlib/contrib/vstudio/vc10/min=
izip.vcxproj":"af73f2cf8ae51e65e85342faeb40849a2310c97bc77def42b38d7070460a=
6cf0","src/zlib/contrib/vstudio/vc10/minizip.vcxproj.filters":"83db58d87f5d=
7ca84b6087aa1f62b15cbc296194c8cf76e47a271f9077b4f3bd","src/zlib/contrib/vst=
udio/vc10/testzlib.vcxproj":"1525ed0893db56db44ec68675c8da3c229dc7867166dfc=
0428816783d16ad43b","src/zlib/contrib/vstudio/vc10/testzlib.vcxproj.filters=
":"d7e04ffa467d417dfa3c0f1c64234cadc84882101bbae483f0a0f5d3d6b566a7","src/z=
lib/contrib/vstudio/vc10/testzlibdll.vcxproj":"3f317d8964f17901c3e68bff5dea=
ec10b6ccc50a572235999e8097292692984c","src/zlib/contrib/vstudio/vc10/testzl=
ibdll.vcxproj.filters":"682a485f0184aabba94e12e1b284499195f37c176d43ecee048=
4f31e4d636f6f","src/zlib/contrib/vstudio/vc10/zlib.rc":"e8b581eb16930e0213d=
37143a5f17868839b22c758b23981a29484e17093c494","src/zlib/contrib/vstudio/vc=
10/zlibstat.vcxproj":"2a38222d6c034d7e0b843c3f0540dc6c53dd48f942ae29f31620c=
a0327248c8e","src/zlib/contrib/vstudio/vc10/zlibstat.vcxproj.filters":"d9a2=
c381e51e4d6f027f3517db7db81656e43cec02ed9abf267a0fde6f360180","src/zlib/con=
trib/vstudio/vc10/zlibvc.def":"0124fea28bfee49c8a19dad0ed5a49277d451018b4af=
fda5a389e64ad15f44d7","src/zlib/contrib/vstudio/vc10/zlibvc.sln":"e659860f7=
05f31b87ea9139a3cb4ebe1561e120bce495383a54614fc82b49990","src/zlib/contrib/=
vstudio/vc10/zlibvc.vcxproj":"3108badf710e2f4a64eab4e7deae6642fb68cc0d94018=
e537149f1761e215133","src/zlib/contrib/vstudio/vc10/zlibvc.vcxproj.filters"=
:"58404ba7703c68025bec64b8a17ff1fc7f3a35d15d17ae3bcc4fa753f1348425","src/zl=
ib/contrib/vstudio/vc11/miniunz.vcxproj":"746e4c11fb8af4bcd6a9d68ba81ed1dc3=
66a5de3bed56b291ee969ad733a7bb0","src/zlib/contrib/vstudio/vc11/minizip.vcx=
proj":"340617cae9cf4fcb003308021d3782ec3639e60d62d79a3aafc0a50bb55b061e","s=
rc/zlib/contrib/vstudio/vc11/testzlib.vcxproj":"589eec6ef6d818564ead938a629=
fda50abb6cbf8054b9f66ea780765c1a1b3db","src/zlib/contrib/vstudio/vc11/testz=
libdll.vcxproj":"583bdef522b0176829f0d8139ea2a88b9cbc14379d1334f3a863989ed3=
df9b67","src/zlib/contrib/vstudio/vc11/zlib.rc":"e8b581eb16930e0213d37143a5=
f17868839b22c758b23981a29484e17093c494","src/zlib/contrib/vstudio/vc11/zlib=
stat.vcxproj":"51aa752698d96df065a9ece02e293492f681b59a8077f036a5a60367dc62=
1e87","src/zlib/contrib/vstudio/vc11/zlibvc.def":"0124fea28bfee49c8a19dad0e=
d5a49277d451018b4affda5a389e64ad15f44d7","src/zlib/contrib/vstudio/vc11/zli=
bvc.sln":"27389b515997defd080519f95aff87e89fcbe8b26d73c5ebb73c544cfef4d60e"=
,"src/zlib/contrib/vstudio/vc11/zlibvc.vcxproj":"c3dd05e56159aba411475b8365=
6275872524cb3c2fd24d690397d8b634e7e0ed","src/zlib/contrib/vstudio/vc12/mini=
unz.vcxproj":"1494af54570f6e93852932956d49a8c25e57b5abc1ac979945605ca9143df=
9f8","src/zlib/contrib/vstudio/vc12/minizip.vcxproj":"9bf128ed6760ca5f01900=
6f178b1c65f4c7ff122dba8d297b64b0eb72feeb120","src/zlib/contrib/vstudio/vc12=
/testzlib.vcxproj":"367a06caa399bd09f6b9cb60706820943dd6a6cf05794275baaf421=
da9c2a0b7","src/zlib/contrib/vstudio/vc12/testzlibdll.vcxproj":"93416510256=
935d79625dc9fd349cfce6968c062d42a138bec404a26b2f92f5e","src/zlib/contrib/vs=
tudio/vc12/zlib.rc":"92d5d3a4938a6350395934153416a7eb74353cdfb2321f45b9ee0b=
9b16257f39","src/zlib/contrib/vstudio/vc12/zlibstat.vcxproj":"744ff6ac0d4e2=
dcdf74c7d33b979fbfd2b18550947eb99bfd46dc6a73eb1c68d","src/zlib/contrib/vstu=
dio/vc12/zlibvc.def":"0124fea28bfee49c8a19dad0ed5a49277d451018b4affda5a389e=
64ad15f44d7","src/zlib/contrib/vstudio/vc12/zlibvc.sln":"162e0faa80a56d89ee=
a71a0b89377708eec2faa0dc72091cc0abb07fbdea49a0","src/zlib/contrib/vstudio/v=
c12/zlibvc.vcxproj":"754671c59d8996a846241af76082cc8be1aa5fc079eff530d91a9a=
b15a0bee5b","src/zlib/contrib/vstudio/vc14/miniunz.vcxproj":"0312511d4a30ce=
a979c4e36edf994a537ed8a9d924f6b5c536cbcd094773c11f","src/zlib/contrib/vstud=
io/vc14/minizip.vcxproj":"9e7bb7a6ac723e4b2db900627c366f9bb93a351381995d9c6=
9a50c0126f64233","src/zlib/contrib/vstudio/vc14/testzlib.vcxproj":"c3a93696=
70af4ebea13d036b452be7418591fbb4c03a675699facac5d8dff5d0","src/zlib/contrib=
/vstudio/vc14/testzlibdll.vcxproj":"69f544898b4275cd3d8e19b8f1f8cb39c1cb98a=
30cdb033242e4b94c57bfa150","src/zlib/contrib/vstudio/vc14/zlib.rc":"92d5d3a=
4938a6350395934153416a7eb74353cdfb2321f45b9ee0b9b16257f39","src/zlib/contri=
b/vstudio/vc14/zlibstat.vcxproj":"9c7c096b47e7875412c98525efcd16db62e094215=
f0011b9cd739a33ab35d48c","src/zlib/contrib/vstudio/vc14/zlibvc.def":"0124fe=
a28bfee49c8a19dad0ed5a49277d451018b4affda5a389e64ad15f44d7","src/zlib/contr=
ib/vstudio/vc14/zlibvc.sln":"47a50bbde8ca6336cecd8c0e4b65e515fc46ae84c7b610=
08ac9864162f777286","src/zlib/contrib/vstudio/vc14/zlibvc.vcxproj":"71fb6ef=
3b079bfdf4182af17e74c3361ead757467edfc591d9cbe303ccc47b52","src/zlib/contri=
b/vstudio/vc9/miniunz.vcproj":"b2b53bd9e704bfbe769b863acdc2a3368692ca149c4b=
4ed2a0761b0cd16c6726","src/zlib/contrib/vstudio/vc9/minizip.vcproj":"80a701=
fb41a61871ce1d25f6b03e571edb6c3abf0aa45375554b6fac52115eb6","src/zlib/contr=
ib/vstudio/vc9/testzlib.vcproj":"05fc5a87682b17690d199f424f57f6ad7767b8dabb=
29a1039bfcb88bca1b302f","src/zlib/contrib/vstudio/vc9/testzlibdll.vcproj":"=
25c1cc5319f1c4b7dbdb595c3cfd6ec3ba217818b03b7055ef5ef440b575a43d","src/zlib=
/contrib/vstudio/vc9/zlib.rc":"e8b581eb16930e0213d37143a5f17868839b22c758b2=
3981a29484e17093c494","src/zlib/contrib/vstudio/vc9/zlibstat.vcproj":"e8653=
eea37f3bef097eec2caa55e1f698c3c74c959689bc4e97568e88d2bbc60","src/zlib/cont=
rib/vstudio/vc9/zlibvc.def":"0124fea28bfee49c8a19dad0ed5a49277d451018b4affd=
a5a389e64ad15f44d7","src/zlib/contrib/vstudio/vc9/zlibvc.sln":"26e58d4b2cfc=
d941c367fb2a18537b3b9f002f2ac1278b700ea1129c50501452","src/zlib/contrib/vst=
udio/vc9/zlibvc.vcproj":"86aa6e33db104c0a0ed4a9f21f0db8572cc7755170217aef18=
219fdd74b75e9d","src/zlib/crc32.c":"a04af273e83ecc351bf3794974ab2098d8d960d=
f4044b7b44734c41443ee26d0","src/zlib/crc32.h":"407af59d0abfea84a6507c603eb2=
9809411797f98249614fe76a661def783ce1","src/zlib/deflate.c":"11fd6b0328b65c4=
ad4b5c204d892a97a9083628a7e77dc47836c8e0c799f8da0","src/zlib/deflate.h":"0c=
a7fb0cf1dd63001c6e9e4ff93c8dbff2fe521199be51a4dda38a11b44919f6","src/zlib/d=
oc/algorithm.txt":"992590931e982c0765286c2d83f6e9ff0a95aabb08e28c30c52bae3e=
8c4bd5ad","src/zlib/doc/rfc1950.txt":"8f0475a5c984657bf26277f73df9456c9b97f=
175084f0c1748f1eb1f0b9b10b9","src/zlib/doc/rfc1951.txt":"5ebf4b5b7fe1c3a0c0=
ab9aa3ac8c0f3853a7dc484905e76e03b0b0f301350009","src/zlib/doc/rfc1952.txt":=
"164ef0897b4cbec63abf1b57f069f3599bd0fb7c72c2a4dee21bd7e03ec9af67","src/zli=
b/doc/txtvsbin.txt":"47c273bb22c9773248d380549a330e5c262266b1292154b0d3014f=
731cc73f47","src/zlib/examples/README.examples":"402d72eb69c2e03a25034f4b3c=
02b110f0f67149ecfa4fa0e4b2bf0ceb49a8b3","src/zlib/examples/enough.c":"704e2=
73f65b62c5d2eb06d5bb10c4ccffba56544aa477f0e3957e2296c501b78","src/zlib/exam=
ples/fitblk.c":"950769163c41aff897ee41746a8685d9aa41073b1307f42da19dabe9d3f=
c8b85","src/zlib/examples/gun.c":"d60ca6eb0a3e62ee7fb4a1ab69e8d1525ff06b06c=
e46889cbdfc13fb8f7534c2","src/zlib/examples/gzappend.c":"4182d38bf97ffbdf11=
10df7f65c0e8fab0b28b1ea36ebba8621c14e8e76f1caa","src/zlib/examples/gzjoin.c=
":"90b9d6c39a5fc91cf1cc9b96b025a508a8015dc502cd9374c754b44078593f57","src/z=
lib/examples/gzlog.c":"433d34b71b4e769ece1cceb8bd7d902d2c0a24ccd7550ab1856a=
5ba87f84f835","src/zlib/examples/gzlog.h":"309556e2d7d39250924946b78e2cce0a=
c927857d6e1a02cab64e438f533c20c3","src/zlib/examples/zlib_how.html":"80fb64=
7be8450bd7a07d8495244e1f061dfbdbdb53172ca24e7ffff8ace9c72f","src/zlib/examp=
les/zpipe.c":"68140a82582ede938159630bca0fb13a93b4bf1cb2e85b08943c26242cf8f=
3a6","src/zlib/examples/zran.c":"840ebeb058cd0ca9e92dcb1db665932462a4695fc6=
49b34e865b8d1ad7c5bf77","src/zlib/gzclose.c":"94446cf8cde67c30e64d0a335b0c9=
41fd3fbad2e77f30180d12e61f9c2a5a6b8","src/zlib/gzguts.h":"6a54a06d269245d73=
201e76280c0f11c282dc6ec51729ccd9051fe6c9907e851","src/zlib/gzlib.c":"5daf11=
e44149e0aba2956d35f73f04f35dca99c3dfa43f5ad43ec20b336e4a1b","src/zlib/gzrea=
d.c":"6f928512cb1792cfeab31a51ff0b211814d2e455bc75290eb31079dc1e5ad2ec","sr=
c/zlib/gzwrite.c":"ba3b7b7ad2ff7ef0c19319b8408c333491a4cd495da55d0b156bc73d=
9ddb4df4","src/zlib/infback.c":"abe44873b5af2ea68ea1d281d915b2800f1832f846d=
2c05442a4711adbe6f269","src/zlib/inffast.c":"4d496ab2a3d29df5fadc3dbff6067e=
039806aaceae6cfcd09ea77d46c2b848fd","src/zlib/inffast.h":"7d8c1c873ce9bc346=
ad6005bb9d75cce5c6352aaf7395385be216a9452a34908","src/zlib/inffixed.h":"237=
ba710f090e432b62ebf963bee8b302867e9691406b2d3f8ee89ee7bfef9b0","src/zlib/in=
flate.c":"8b6c599c3563c14c447c47db0d7dc9a16e8c246a078ec95a169ddcebaaebd811"=
,"src/zlib/inflate.h":"8ec9ac297790276f7e46a961d4c6f9f944fb1dec92401339ec26=
66973cc5983c","src/zlib/inftrees.c":"1960ca67384376f65b6ce8c08fdb501f8eb339=
23e11ef5f61a855708c6cb0a8a","src/zlib/inftrees.h":"c510b36402784b1f898be3b0=
49b923469aa92701de2d9195aed19f6b65c0dce2","src/zlib/make_vms.com":"3064eb15=
3a7684115f1494364f80759bc5a2c227799fdf08df7b9e6e50884720","src/zlib/msdos/M=
akefile.bor":"292ab363f7ffbc4ae84d37cd9bdffd2dac1003bee52d223a8489844870f20=
702","src/zlib/msdos/Makefile.dj2":"9208450c2ae6dcbfcc25560b5b9ca763f461e72=
46e37b0552474edf8fa898906","src/zlib/msdos/Makefile.emx":"c749d6ec7f88e8e63=
9d4f03bdbdcbbe9d1c304210be4c4be621ceb22961d3d64","src/zlib/msdos/Makefile.m=
sc":"0e021a6f42212415b060e4ad468eb415d0a8c1f343137fb9dff2cb8f9ead3027","src=
/zlib/msdos/Makefile.tc":"2ae12ee2a3e62f7c5a0520d0fbe4adee772bc07fe816002b0=
7ccb43db3daa76a","src/zlib/nintendods/Makefile":"ea5823efe6830132294eddf2f5=
6dbd7db8712244c210bb4968c431b1a91bd066","src/zlib/nintendods/README":"e3624=
26c47b39ff6a7d6c75c6660b20abf076cdfa5e1e421716dc629a71aef95","src/zlib/old/=
Makefile.emx":"d811f032272aae50123a889297af3a02fbd60d1e42bbef11466462f627ff=
7b5b","src/zlib/old/Makefile.riscos":"d1a488b160fbfd53272b68a913283a4be08ba=
9d490796b196dddb2ba535b41e0","src/zlib/old/README":"551a0f4d91fe0f827a31cbd=
fbb4a71d1f3dc4d06564d80a3f526b749dd104d11","src/zlib/old/descrip.mms":"8ff0=
8c35c056df9c986f23c09cf8936db63ccf12c3c42f7d18a48b36f060cff7","src/zlib/old=
/os2/Makefile.os2":"6ad247c00f00ff42fd2d62555e86251cef06e4079378241b5f320c2=
27507d51d","src/zlib/old/os2/zlib.def":"ea9c61876d2e20b67ef2d9495991a32798e=
b40d13ede95859a2f4f03b65b9b61","src/zlib/old/visual-basic.txt":"1727650acbd=
e9a9e6aec9438896377e46a12699cca5d46c5399cef524dedc614","src/zlib/os400/READ=
ME400":"6f95a1beb0fbf943a3312eaa3dd2c279f1cef93062bebbff63dd37ac9e2aa8d6","=
src/zlib/os400/bndsrc":"cfe00b1528d5c27813cd6b1ad7aa34b493fd63d615623fb21fd=
1a7bf99d2255e","src/zlib/os400/make.sh":"143394d1e3876c61c29078c0e47310e726=
e1f5bd42739fe92df9ece65711655f","src/zlib/os400/zlib.inc":"c501c522185ba1f0=
506caf90d72f1088b34b2addc169471e949e443ab65e8a75","src/zlib/qnx/package.qpg=
":"90b5c8364d9dc5ef67405b352c19710ebad2905f3f20b9e56ded74661f96743b","src/z=
lib/test/example.c":"520799662a8286725540d6d5a356efe6f595618e5fe2e591972491=
d719bd99aa","src/zlib/test/infcover.c":"f654f3fcc74b33bd95cda63d13fe0ce589b=
cfe965544e0c17ee597d75efbd090","src/zlib/test/minigzip.c":"91089b21e692797b=
b6208b2b45eeb90f5f1f1e4f6b67b99dea5676f51b811193","src/zlib/treebuild.xml":=
"d816c764c8ec2d5b2ebfa7f053f747097926c13fce7fa8628c5d14c991411421","src/zli=
b/trees.c":"f2a5f949ea70dde7c23a54c793aeed630a03df4bb72417cd3aa008000c44699=
b","src/zlib/trees.h":"bb0a9d3ca88ee00c81adb7c636e73b97085f6ef1b52d6d58edbe=
2b6dc3adeb4d","src/zlib/uncompr.c":"31922aa982ee12fd28d1ce5fe6a94a3f07c2a94=
1c821b566a881ca21845cdfaf","src/zlib/watcom/watcom_f.mak":"7e039b912f9cffaa=
40835281430bb284fa9042b0a0d12f6b34700a06bca6576e","src/zlib/watcom/watcom_l=
.mak":"d11b4064604a034725860e63e3f6d347056372e4b1675b183e20a93533b20cc9","s=
rc/zlib/win32/DLL_FAQ.txt":"9e00778319381e6275691dd3a89410c99065b8c0c5db964=
73abe8c859cbdefd8","src/zlib/win32/Makefile.bor":"e878fed2313417db085fea621=
c110889f6a32233b5b6db46e3c4e824c1d0ed6b","src/zlib/win32/Makefile.gcc":"ea8=
feddce7b9707253b9bf86623cf7ebe5294d7aea2b3b0b1b1c1b8cfd73009d","src/zlib/wi=
n32/Makefile.msc":"7c495d63c5afea1d77d162a41b73bab89cee952c12e4647e9684a7ac=
79bfc3f5","src/zlib/win32/README-WIN32.txt":"b71f1f4e4760812c3a11b2bae6f40d=
1066741a90e6646010a32ce50a0e348cde","src/zlib/win32/VisualC.txt":"9ec0babd4=
6eaa012371dee2d3a8a55d9c7130f7895512c3371c737e4a7f6a997","src/zlib/win32/zl=
ib.def":"24fa6dd00f3f4c0d14507a03ddbfa42707a04e3901bb9ff6f90096037a75185a",=
"src/zlib/win32/zlib1.rc":"8fc5f2b5abee40ad66e6d6cfc9f926c2f446e13a7c9ee7df=
8bf58a266d8cade5","src/zlib/zconf.h":"9c0087f31cd45fe4bfa0ca79b51df2c69d67c=
44f2fbb2223d7cf9ab8d971c360","src/zlib/zconf.h.cmakein":"d740b750e9c98e6a4b=
4529cc2a857a3fa8001514b1ce91e0e1d9d293652bf388","src/zlib/zconf.h.in":"9c00=
87f31cd45fe4bfa0ca79b51df2c69d67c44f2fbb2223d7cf9ab8d971c360","src/zlib/zli=
b.3":"5abef003e545566e5599e5ab2e7528e978be59d54546b19d763d062f7a69bac7","sr=
c/zlib/zlib.3.pdf":"7f0f633641d782e360eff9fe831716c5767faf1000e38382a8a8c65=
b0b67f374","src/zlib/zlib.h":"4ddc82b4af931ab55f44d977bde81bfbc4151b5dcdccc=
03142831a301b5ec3c8","src/zlib/zlib.map":"7eb1070ba6bf12e6895e5da06b84a92af=
683827587afaa72bdd45e80b9d8e4e9","src/zlib/zlib.pc.cmakein":"2f1d0b18ce37c2=
af415a469857f02aee2c41a58877aff21d29e9c6db32b55cb7","src/zlib/zlib.pc.in":"=
04c01cc2e1a0ed123518b5855f585c93a24526dd88982c414111ea1fc9f07997","src/zlib=
/zlib2ansi":"d316e3e79054f5f9fe921d35f4bbf4bf0a37b859d29d2b34ae4d7d92afc3e5=
5c","src/zlib/zutil.c":"f7fdc9ef326a2683eb33c794face54e83c751ec17f3d1ba5818=
47a62af36ddcd","src/zlib/zutil.h":"9a63f6690fac1620aa3cecee5752af618806da43=
8a256b4a047fbcd289cac159"},"package":"de5435b8549c16d423ed0c03dbaafe57cf6c3=
344744f1242520d59c9d8ecec66"}
diff --git a/recipes-devtools/rust/libstd-rs_1.68.1.bb b/recipes-devtools/r=
ust/libstd-rs_1.68.1.bb
new file mode 100644
index 0000000..f4e5abc
--- /dev/null
+++ b/recipes-devtools/rust/libstd-rs_1.68.1.bb
@@ -0,0 +1,47 @@
+SUMMARY =3D "Rust standard libaries"
+HOMEPAGE =3D "http://www.rust-lang.org"
+SECTION =3D "devel"
+LICENSE =3D "(MIT | Apache-2.0) & Unicode-TOU"
+LIC_FILES_CHKSUM =3D "file://../../COPYRIGHT;md5=3Dc2cccf560306876da3913d7=
9062a54b9"
+
+require rust-source.inc
+
+# Building with library/std omits proc_macro from the sysroot. Using
+# library/test causes that to be installed which then allows cargo to
+# build (https://github.com/meta-rust/meta-rust/issues/266)
+S =3D "${RUSTSRC}/library/test"
+
+RUSTLIB_DEP =3D ""
+inherit cargo
+
+DEPENDS:append:libc-musl =3D " libunwind"
+# rv32 does not have libunwind ported yet
+DEPENDS:remove:riscv32 =3D "libunwind"
+DEPENDS:remove:riscv64 =3D "libunwind"
+
+# Embed bitcode in order to allow compiling both with and without LTO
+RUSTFLAGS +=3D "-Cembed-bitcode=3Dyes"
+# Needed so cargo can find libbacktrace
+RUSTFLAGS +=3D "-L ${STAGING_LIBDIR} -C link-arg=3D-Wl,-soname,libstd.so"
+
+CARGO_FEATURES ?=3D "panic-unwind backtrace"
+CARGO_BUILD_FLAGS +=3D "--features '${CARGO_FEATURES}'"
+CARGO_VENDORING_DIRECTORY =3D "${RUSTSRC}/vendor"
+
+do_compile:prepend () {
+    export CARGO_TARGET_DIR=3D"${B}"
+    # For Rust 1.13.0 and newer
+    export RUSTC_BOOTSTRAP=3D"1"
+}
+
+do_install () {
+    mkdir -p ${D}${rustlibdir}
+
+    # With the incremental build support added in 1.24, the libstd deps di=
rectory also includes dependency
+    # files that get installed. Those are really only needed to incrementa=
lly rebuild the libstd library
+    # itself and don't need to be installed.
+    rm -f ${B}/${RUST_TARGET_SYS}/${BUILD_DIR}/deps/*.d
+    cp ${B}/${RUST_TARGET_SYS}/${BUILD_DIR}/deps/* ${D}${rustlibdir}
+}
+
+BBCLASSEXTEND =3D "nativesdk"
diff --git a/recipes-devtools/rust/rust-cross-canadian.inc b/recipes-devtoo=
ls/rust/rust-cross-canadian.inc
new file mode 100644
index 0000000..17f9339
--- /dev/null
+++ b/recipes-devtools/rust/rust-cross-canadian.inc
@@ -0,0 +1,85 @@
+PN =3D "rust-cross-canadian-${TRANSLATED_TARGET_ARCH}"
+
+inherit rust-target-config
+inherit rust-common
+
+LICENSE =3D "MIT"
+
+MODIFYTOS =3D "0"
+
+DEPENDS +=3D "virtual/${SDK_PREFIX}gcc-crosssdk virtual/nativesdk-libc vir=
tual/nativesdk-${SDK_PREFIX}compilerlibs"
+
+SRC_URI +=3D "file://target-rust-ccld.c"
+LIC_FILES_CHKSUM =3D "file://target-rust-ccld.c;md5=3Daf4e0e29f81a34cffe05=
aa07c89e93e9;endline=3D7"
+S =3D "${WORKDIR}"
+
+# Need to use our SDK's sh here, see #14878
+create_sdk_wrapper () {
+        file=3D"$1"
+        shift
+        cat <<- EOF > "${file}"
+		#!/bin/sh
+		\$$1 \$@
+		EOF
+
+        chmod +x "$file"
+}
+
+do_install () {
+    # Rust requires /usr/lib to contain the libs.
+    # The required structure is retained for simplicity.
+    SYS_LIBDIR=3D$(dirname ${D}${libdir})
+    SYS_BINDIR=3D$(dirname ${D}${bindir})
+    RUSTLIB_DIR=3D${SYS_LIBDIR}/${TARGET_SYS}/rustlib
+
+    install -d ${RUSTLIB_DIR}
+    install -m 0644 "${RUST_TARGETS_DIR}/${RUST_HOST_SYS}.json" "${RUSTLIB=
_DIR}"
+    install -m 0644 "${RUST_TARGETS_DIR}/${RUST_TARGET_SYS}.json" "${RUSTL=
IB_DIR}"
+
+    # Uses SDK's CC as linker so linked binaries works out of box.
+    # We have a problem as rust sets LD_LIBRARY_PATH and this will break r=
unning host
+    # binaries (even /bin/sh) in the SDK as they detect a newer glibc from=
 the SDK
+    # in those paths and we hit symbol errors. We saw particular problems =
with symbol
+    # mismatch on ubuntu1804 during development. To avoid this we have an =
SDK built
+    # binary which unsets LD_LIBRARY_PATH, which can then call the wrapper=
 script
+    # where the context is easier to do the env maniupations needed
+    install -d ${SYS_BINDIR}
+    outfile=3D"${SYS_BINDIR}/target-rust-ccld"
+    ${CC} ${WORKDIR}/target-rust-ccld.c -o $outfile
+    chmod +x "$outfile"
+    create_sdk_wrapper "${SYS_BINDIR}/target-rust-ccld-wrapper" "CC"
+
+    ENV_SETUP_DIR=3D${D}${base_prefix}/environment-setup.d
+    mkdir "${ENV_SETUP_DIR}"
+    RUST_ENV_SETUP_SH=3D"${ENV_SETUP_DIR}/rust.sh"
+
+    cat <<- EOF > "${RUST_ENV_SETUP_SH}"
+	export RUSTFLAGS=3D"--sysroot=3D\$OECORE_TARGET_SYSROOT/usr -C link-arg=
=3D--sysroot=3D\$OECORE_TARGET_SYSROOT"
+	export RUST_TARGET_PATH=3D"\$OECORE_NATIVE_SYSROOT/usr/lib/${TARGET_SYS}/=
rustlib"
+	EOF
+
+    chown -R root.root ${D}
+
+    CARGO_ENV_SETUP_SH=3D"${ENV_SETUP_DIR}/cargo.sh"
+    cat <<- EOF > "${CARGO_ENV_SETUP_SH}"
+	export CARGO_HOME=3D"\$OECORE_TARGET_SYSROOT/home/cargo"
+	mkdir -p "\$CARGO_HOME"
+        # Init the default target once, it might be otherwise user modifie=
d.
+	if [ ! -f "\$CARGO_HOME/config" ]; then
+		touch "\$CARGO_HOME/config"
+		echo "[build]" >> "\$CARGO_HOME/config"
+		echo 'target =3D "'${RUST_TARGET_SYS}'"' >> "\$CARGO_HOME/config"
+		echo '# TARGET_SYS' >> "\$CARGO_HOME/config"
+		echo '[target.'${RUST_TARGET_SYS}']' >> "\$CARGO_HOME/config"
+		echo 'linker =3D "target-rust-ccld"' >> "\$CARGO_HOME/config"
+    fi
+
+	# Keep the below off as long as HTTP/2 is disabled.
+	export CARGO_HTTP_MULTIPLEXING=3Dfalse
+
+	export CARGO_HTTP_CAINFO=3D"\$OECORE_NATIVE_SYSROOT/etc/ssl/certs/ca-cert=
ificates.crt"
+	EOF
+}
+
+FILES:${PN} +=3D "${base_prefix}/environment-setup.d"
+
diff --git a/recipes-devtools/rust/rust-cross-canadian_1.68.1.bb b/recipes-=
devtools/rust/rust-cross-canadian_1.68.1.bb
new file mode 100644
index 0000000..5586523
--- /dev/null
+++ b/recipes-devtools/rust/rust-cross-canadian_1.68.1.bb
@@ -0,0 +1,2 @@
+inherit cross-canadian
+require rust-cross-canadian.inc
\ No newline at end of file
diff --git a/recipes-devtools/rust/rust-llvm/0001-AsmMatcherEmitter-sort-Cl=
assInfo-lists-by-name-as-we.patch b/recipes-devtools/rust/rust-llvm/0001-As=
mMatcherEmitter-sort-ClassInfo-lists-by-name-as-we.patch
new file mode 100644
index 0000000..48af6fc
--- /dev/null
+++ b/recipes-devtools/rust/rust-llvm/0001-AsmMatcherEmitter-sort-ClassInfo=
-lists-by-name-as-we.patch
@@ -0,0 +1,31 @@
+From 86940d87026432683fb6741cd8a34d3b9b18e40d Mon Sep 17 00:00:00 2001
+From: Alexander Kanavin <alex.kanavin@gmail.com>
+Date: Fri, 27 Nov 2020 10:11:08 +0000
+Subject: [PATCH] AsmMatcherEmitter: sort ClassInfo lists by name as well
+
+Otherwise, there are instances which are identical in
+every other field and therefore sort non-reproducibly
+(which breaks binary and source reproducibiliy).
+
+Upstream-Status: Submitted [https://reviews.llvm.org/D97477]
+Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
+---
+ llvm/utils/TableGen/AsmMatcherEmitter.cpp | 5 ++++-
+ 1 file changed, 4 insertions(+), 1 deletion(-)
+
+diff --git a/llvm/utils/TableGen/AsmMatcherEmitter.cpp b/llvm/utils/TableG=
en/AsmMatcherEmitter.cpp
+index ccf0959389b..1f801e83b7d 100644
+--- a/llvm/utils/TableGen/AsmMatcherEmitter.cpp
++++ b/llvm/utils/TableGen/AsmMatcherEmitter.cpp
+@@ -359,7 +359,10 @@ public:
+     // name of a class shouldn't be significant. However, some of the bac=
kends
+     // accidentally rely on this behaviour, so it will have to stay like =
this
+     // until they are fixed.
+-    return ValueName < RHS.ValueName;
++    if (ValueName !=3D RHS.ValueName)
++        return ValueName < RHS.ValueName;
++    // All else being equal, we should sort by name, for source and binar=
y reproducibility
++    return Name < RHS.Name;
+   }
+ };
+=20
diff --git a/recipes-devtools/rust/rust-llvm/0002-llvm-allow-env-override-o=
f-exe-path.patch b/recipes-devtools/rust/rust-llvm/0002-llvm-allow-env-over=
ride-of-exe-path.patch
new file mode 100644
index 0000000..9be2667
--- /dev/null
+++ b/recipes-devtools/rust/rust-llvm/0002-llvm-allow-env-override-of-exe-p=
ath.patch
@@ -0,0 +1,33 @@
+From 7111770e8290082530d920e120995bf81431b0aa Mon Sep 17 00:00:00 2001
+From: Martin Kelly <mkelly@xevo.com>
+Date: Fri, 19 May 2017 00:22:57 -0700
+Subject: [PATCH 12/18] llvm: allow env override of exe path
+
+When using a native llvm-config from inside a sysroot, we need llvm-config=
 to
+return the libraries, include directories, etc. from inside the sysroot ra=
ther
+than from the native sysroot. Thus provide an env override for calling
+llvm-config from a target sysroot.
+
+Upstream-Status: Inappropriate [oe-core specific]
+Signed-off-by: Martin Kelly <mkelly@xevo.com>
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ llvm/tools/llvm-config/llvm-config.cpp | 7 +++++++
+ 1 file changed, 7 insertions(+)
+
+--- a/llvm/tools/llvm-config/llvm-config.cpp
++++ b/llvm/tools/llvm-config/llvm-config.cpp
+@@ -226,6 +226,13 @@ Typical components:\n\
+=20
+ /// Compute the path to the main executable.
+ std::string GetExecutablePath(const char *Argv0) {
++  // Hack for Yocto: we need to override the root path when we are using
++  // llvm-config from within a target sysroot.
++  const char *Sysroot =3D std::getenv("YOCTO_ALTERNATE_EXE_PATH");
++  if (Sysroot !=3D nullptr) {
++    return Sysroot;
++  }
++
+   // This just needs to be some symbol in the binary; C++ doesn't
+   // allow taking the address of ::main however.
+   void *P =3D (void *)(intptr_t)GetExecutablePath;
diff --git a/recipes-devtools/rust/rust-llvm/0003-llvm-fix-include-benchmar=
ks.patch b/recipes-devtools/rust/rust-llvm/0003-llvm-fix-include-benchmarks=
.patch
new file mode 100644
index 0000000..ff31c0b
--- /dev/null
+++ b/recipes-devtools/rust/rust-llvm/0003-llvm-fix-include-benchmarks.patch
@@ -0,0 +1,25 @@
+Subject: LLVM_INCLUDE_BENCHMARKS with llvm 14.0.1 failing to build
+
+https://github.com/llvm/llvm-project/issues/54941
+
+The LLVM_INCLUDE_BENCHMARKS is turned OFF to fix the build error as
+per the discussions in the above link. We will work on the issue and
+replace the workaround with actual fix once committed in LLVM.
+
+Please refer the following link for more discussions on the issue:-
+https://github.com/rust-lang/rust/issues/96054
+
+Upstream-Status: Pending
+Signed-off-by: Pgowda <pgowda.cve@gmail.com>
+
+--- a/llvm/CMakeLists.txt	2022-04-22 00:45:30.543445478 -0700
++++ b/llvm/CMakeLists.txt	2022-04-22 00:45:42.095232974 -0700
+@@ -615,7 +615,7 @@ option(LLVM_INCLUDE_GO_TESTS "Include th
+=20
+ option(LLVM_BUILD_BENCHMARKS "Add LLVM benchmark targets to the list of d=
efault
+ targets. If OFF, benchmarks still could be built using Benchmarks target.=
" OFF)
+-option(LLVM_INCLUDE_BENCHMARKS "Generate benchmark targets. If OFF, bench=
marks can't be built." ON)
++option(LLVM_INCLUDE_BENCHMARKS "Generate benchmark targets. If OFF, bench=
marks can't be built." OFF)
+=20
+ option (LLVM_BUILD_DOCS "Build the llvm documentation." OFF)
+ option (LLVM_INCLUDE_DOCS "Generate build targets for llvm documentation.=
" ON)
diff --git a/recipes-devtools/rust/rust-llvm/0035-cmake-Enable-64bit-off_t-=
on-32bit-glibc-systems.patch b/recipes-devtools/rust/rust-llvm/0035-cmake-E=
nable-64bit-off_t-on-32bit-glibc-systems.patch
new file mode 100644
index 0000000..fe98e3e
--- /dev/null
+++ b/recipes-devtools/rust/rust-llvm/0035-cmake-Enable-64bit-off_t-on-32bi=
t-glibc-systems.patch
@@ -0,0 +1,79 @@
+From cd2fa12d715929642513fc441287c402f4560096 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Sun, 25 Dec 2022 15:13:41 -0800
+Subject: [PATCH] build: Enable 64bit off_t on 32bit glibc systems
+
+Pass -D_FILE_OFFSET_BITS=3D64 to compiler flags on 32bit glibc based
+systems. This will make sure that 64bit versions of LFS functions are
+used e.g. lseek will behave same as lseek64. Also revert [1] partially
+because this added a cmake test to detect lseek64 but then forgot to
+pass the needed macro during actual compile, this test was incomplete too
+since libc implementations like musl has 64-bit off_t by default on 32-bit
+systems and does not bundle -D_LARGEFILE64_SOURCE [2] under -D_GNU_SOURCE
+like glibc, which means the compile now fails on musl because the cmake
+check passes but we do not have _LARGEFILE64_SOURCE defined. Moreover,
+Using the *64 function was transitional anyways so use
+-D_FILE_OFFSET_BITS=3D64 instead
+
+[1] https://github.com/llvm/llvm-project/commit/8db7e5e4eed4c4e697dc3164f2=
c9351d8c3e942b
+[2] https://git.musl-libc.org/cgit/musl/commit/?id=3D25e6fee27f4a293728dd1=
5b659170e7b9c7db9bc
+
+Upstream-Status: Submitted [https://reviews.llvm.org/D139752]
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ llvm/cmake/config-ix.cmake                                | 8 +++++---
+ llvm/include/llvm/Config/config.h.cmake                   | 3 ---
+ llvm/lib/Support/raw_ostream.cpp                          | 2 --
+ llvm/utils/gn/secondary/llvm/include/llvm/Config/BUILD.gn | 2 --
+ utils/bazel/llvm-project-overlay/llvm/config.bzl          | 1 -
+ .../llvm/include/llvm/Config/config.h                     | 3 ---
+ utils/bazel/llvm_configs/config.h.cmake                   | 3 ---
+ 7 files changed, 5 insertions(+), 17 deletions(-)
+
+--- a/llvm/cmake/config-ix.cmake
++++ b/llvm/cmake/config-ix.cmake
+@@ -284,9 +284,6 @@ check_symbol_exists(futimes sys/time.h H
+ if( HAVE_SIGNAL_H AND NOT LLVM_USE_SANITIZER MATCHES ".*Address.*" AND NO=
T APPLE )
+   check_symbol_exists(sigaltstack signal.h HAVE_SIGALTSTACK)
+ endif()
+-set(CMAKE_REQUIRED_DEFINITIONS "-D_LARGEFILE64_SOURCE")
+-check_symbol_exists(lseek64 "sys/types.h;unistd.h" HAVE_LSEEK64)
+-set(CMAKE_REQUIRED_DEFINITIONS "")
+ check_symbol_exists(mallctl malloc_np.h HAVE_MALLCTL)
+ check_symbol_exists(mallinfo malloc.h HAVE_MALLINFO)
+ check_symbol_exists(mallinfo2 malloc.h HAVE_MALLINFO2)
+@@ -350,6 +347,11 @@ check_symbol_exists(__GLIBC__ stdio.h LL
+ if( LLVM_USING_GLIBC )
+   add_definitions( -D_GNU_SOURCE )
+   list(APPEND CMAKE_REQUIRED_DEFINITIONS "-D_GNU_SOURCE")
++# enable 64bit off_t on 32bit systems using glibc
++  if (CMAKE_SIZEOF_VOID_P EQUAL 4)
++    add_compile_definitions(_FILE_OFFSET_BITS=3D64)
++    list(APPEND CMAKE_REQUIRED_DEFINITIONS "-D_FILE_OFFSET_BITS=3D64")
++  endif()
+ endif()
+ # This check requires _GNU_SOURCE
+ if (NOT PURE_WINDOWS)
+--- a/llvm/include/llvm/Config/config.h.cmake
++++ b/llvm/include/llvm/Config/config.h.cmake
+@@ -128,9 +128,6 @@
+ /* Define to 1 if you have the <link.h> header file. */
+ #cmakedefine HAVE_LINK_H ${HAVE_LINK_H}
+=20
+-/* Define to 1 if you have the `lseek64' function. */
+-#cmakedefine HAVE_LSEEK64 ${HAVE_LSEEK64}
+-
+ /* Define to 1 if you have the <mach/mach.h> header file. */
+ #cmakedefine HAVE_MACH_MACH_H ${HAVE_MACH_MACH_H}
+=20
+--- a/llvm/lib/Support/raw_ostream.cpp
++++ b/llvm/lib/Support/raw_ostream.cpp
+@@ -804,8 +804,6 @@ uint64_t raw_fd_ostream::seek(uint64_t o
+   flush();
+ #ifdef _WIN32
+   pos =3D ::_lseeki64(FD, off, SEEK_SET);
+-#elif defined(HAVE_LSEEK64)
+-  pos =3D ::lseek64(FD, off, SEEK_SET);
+ #else
+   pos =3D ::lseek(FD, off, SEEK_SET);
+ #endif
diff --git a/recipes-devtools/rust/rust-llvm_1.68.1.bb b/recipes-devtools/r=
ust/rust-llvm_1.68.1.bb
new file mode 100644
index 0000000..6304070
--- /dev/null
+++ b/recipes-devtools/rust/rust-llvm_1.68.1.bb
@@ -0,0 +1,84 @@
+SUMMARY =3D "LLVM compiler framework (packaged with rust)"
+LICENSE ?=3D "Apache-2.0-with-LLVM-exception"
+HOMEPAGE =3D "http://www.rust-lang.org"
+
+# check src/llvm-project/llvm/CMakeLists.txt for llvm version in use
+#
+LLVM_RELEASE =3D "15.0.6"
+
+require rust-source.inc
+
+SRC_URI +=3D "file://0002-llvm-allow-env-override-of-exe-path.patch;stripl=
evel=3D2 \
+            file://0001-AsmMatcherEmitter-sort-ClassInfo-lists-by-name-as-=
we.patch;striplevel=3D2 \
+	    file://0003-llvm-fix-include-benchmarks.patch;striplevel=3D2 \
+	    file://0035-cmake-Enable-64bit-off_t-on-32bit-glibc-systems.patch;str=
iplevel=3D2"
+
+S =3D "${RUSTSRC}/src/llvm-project/llvm"
+
+LIC_FILES_CHKSUM =3D "file://LICENSE.TXT;md5=3D8a15a0759ef07f2682d2ba4b893=
c9afe"
+
+inherit cmake python3native
+
+DEPENDS +=3D "ninja-native rust-llvm-native"
+
+ARM_INSTRUCTION_SET:armv5 =3D "arm"
+ARM_INSTRUCTION_SET:armv4t =3D "arm"
+
+# rustc_llvm with debug info is not recognized as a valid crate that's
+# generated by rust-llvm-native.
+CFLAGS:remove =3D "-g"
+CXXFLAGS:remove =3D "-g"
+
+LLVM_DIR =3D "llvm${LLVM_RELEASE}"
+
+EXTRA_OECMAKE =3D " \
+    -DCMAKE_BUILD_TYPE=3DRelease \
+    -DLLVM_TARGETS_TO_BUILD=3D'ARM;AArch64;Mips;PowerPC;RISCV;X86' \
+    -DLLVM_BUILD_DOCS=3DOFF \
+    -DLLVM_ENABLE_TERMINFO=3DOFF \
+    -DLLVM_ENABLE_ZLIB=3DOFF \
+    -DLLVM_ENABLE_ZSTD=3DOFF \
+    -DLLVM_ENABLE_LIBXML2=3DOFF \
+    -DLLVM_ENABLE_FFI=3DOFF \
+    -DLLVM_INSTALL_UTILS=3DON \
+    -DLLVM_BUILD_EXAMPLES=3DOFF \
+    -DLLVM_INCLUDE_EXAMPLES=3DOFF \
+    -DLLVM_BUILD_TESTS=3DOFF \
+    -DLLVM_INCLUDE_TESTS=3DOFF \
+    -DLLVM_TARGET_ARCH=3D${TARGET_ARCH} \
+    -DCMAKE_INSTALL_PREFIX:PATH=3D${libdir}/llvm-rust \
+"
+EXTRA_OECMAKE:append:class-target =3D "\
+    -DLLVM_BUILD_TOOLS=3DOFF \
+    -DLLVM_TABLEGEN=3D${STAGING_LIBDIR_NATIVE}/llvm-rust/bin/llvm-tblgen \
+    -DLLVM_CONFIG_PATH=3D${STAGING_LIBDIR_NATIVE}/llvm-rust/bin/llvm-confi=
g \
+"
+
+EXTRA_OECMAKE:append:class-nativesdk =3D "\
+    -DLLVM_BUILD_TOOLS=3DOFF \
+    -DLLVM_TABLEGEN=3D${STAGING_LIBDIR_NATIVE}/llvm-rust/bin/llvm-tblgen \
+    -DLLVM_CONFIG_PATH=3D${STAGING_LIBDIR_NATIVE}/llvm-rust/bin/llvm-confi=
g \
+"
+
+# The debug symbols are huge here (>2GB) so suppress them since they
+# provide almost no value. If you really need them then override this
+INHIBIT_PACKAGE_DEBUG_SPLIT =3D "1"
+
+export YOCTO_ALTERNATE_EXE_PATH =3D "${STAGING_LIBDIR}/llvm-rust/bin/llvm-=
config"
+
+do_install:append () {
+    # we don't need any of this stuff to build Rust
+    rm -rf "${D}/usr/lib/cmake"
+}
+
+PACKAGES =3D+ "${PN}-bugpointpasses ${PN}-llvmhello ${PN}-liblto"
+
+# Add the extra locations to avoid the complaints about unpackaged files
+FILES:${PN}-bugpointpasses =3D "${libdir}/llvm-rust/lib/BugpointPasses.so"
+FILES:${PN}-llvmhello =3D "${libdir}/llvm-rust/lib/LLVMHello.so"
+FILES:${PN}-liblto =3D "${libdir}/llvm-rust/lib/libLTO.so.*"
+FILES:${PN}-staticdev =3D+ "${libdir}/llvm-rust/*/*.a"
+FILES:${PN} +=3D "${libdir}/libLLVM*.so.* ${libdir}/llvm-rust/lib/*.so.* $=
{libdir}/llvm-rust/bin"
+FILES:${PN}-dev +=3D "${datadir}/llvm ${libdir}/llvm-rust/lib/*.so ${libdi=
r}/llvm-rust/include ${libdir}/llvm-rust/share ${libdir}/llvm-rust/lib/cmak=
e"
+
+BBCLASSEXTEND =3D "native nativesdk"
diff --git a/recipes-devtools/rust/rust-snapshot.inc b/recipes-devtools/rus=
t/rust-snapshot.inc
new file mode 100644
index 0000000..cb49d8e
--- /dev/null
+++ b/recipes-devtools/rust/rust-snapshot.inc
@@ -0,0 +1,63 @@
+## This is information on the rust-snapshot (binary) used to build our cur=
rent release.
+## snapshot info is taken from rust/src/stage0.json
+## Rust is self-hosting and bootstraps itself with a pre-built previous ve=
rsion of itself.
+## The exact (previous) version that has been used is specified in the sou=
rce tarball.
+## The version is replicated here.
+
+SNAPSHOT_VERSION =3D "1.67.1"
+
+SRC_URI[cargo-snapshot-aarch64.sha256sum] =3D "b04e33d9beb3cd97501399c17ca=
297f0adc12a7c0ea16351b8821fc9228de477"
+SRC_URI[rust-std-snapshot-aarch64.sha256sum] =3D "35027409400faaaa38ea2855=
b92dea6b553b2e656dff735da730f67ac02e57e6"
+SRC_URI[rustc-snapshot-aarch64.sha256sum] =3D "053ccc4ab81ea9c16906205c2b6=
53a93b5b44fe4f67f9e45153a2687b7efb65a"
+
+SRC_URI[cargo-snapshot-i686.sha256sum] =3D "36db46e19e8573ea113c38d88f66de=
f5fad848721b3c6dd69361f197b7a02f80"
+SRC_URI[rust-std-snapshot-i686.sha256sum] =3D "aab2d7aa76793e78c9c8810e93e=
d8978f6422843b1277e9c60337b0f943a4409"
+SRC_URI[rustc-snapshot-i686.sha256sum] =3D "0c77fde6daa80825f8cb81a5525c99=
db238a3ab4f0b226470964062e74603dd6"
+
+SRC_URI[cargo-snapshot-mips.sha256sum] =3D "06778d8aedd8e7850f0175483efa01=
5cc2eeb69e6027e3d94352d89d2a510fc5"
+SRC_URI[rust-std-snapshot-mips.sha256sum] =3D "048b3da190212b742f7a052618b=
57683dc96ee2b6c25fc7f5ae751143cb79bad"
+SRC_URI[rustc-snapshot-mips.sha256sum] =3D "d3b7501acdfda6e4e9d8ee64d9de71=
6579791d567c66f1273e601a55c2e23ca8"
+
+SRC_URI[cargo-snapshot-mipsel.sha256sum] =3D "7bf800ddd0ee6b69bb66fb7cdf12=
ae045db025fdb866e00c62b63a1eb99f7d64"
+SRC_URI[rust-std-snapshot-mipsel.sha256sum] =3D "94410897626546dde806a1142=
99c3c32abb6b4b294af5daea5c4d136751fe063"
+SRC_URI[rustc-snapshot-mipsel.sha256sum] =3D "eb34b5d901807e1e47fb6ac68657=
1f21b2a80ad831583485872c9e9c59291776"
+
+SRC_URI[cargo-snapshot-powerpc.sha256sum] =3D "b134c63817805f59821024d3771=
96f2821ae53f88d0a4a2ebdbd8152433984b0"
+SRC_URI[rust-std-snapshot-powerpc.sha256sum] =3D "26efe78c09ed36da34964c0d=
023cf9aa404766ab790a94d9becd373b8879cb5a"
+SRC_URI[rustc-snapshot-powerpc.sha256sum] =3D "8f6212756d152f6876a6456f4d3=
f93ef8b4b7e5c93b96fe515cb8183c0612d7b"
+
+SRC_URI[cargo-snapshot-powerpc64.sha256sum] =3D "2cd84deb15ed16fc4a1d8a9de=
45577ba4d9f245de4f7efb3dc6611eec437eef3"
+SRC_URI[rust-std-snapshot-powerpc64.sha256sum] =3D "135f5e6ab6d8f077a14521=
d387d3f31831abdb840ca4e6a15b6f0d0d5b7dbc81"
+SRC_URI[rustc-snapshot-powerpc64.sha256sum] =3D "bdb08b549df5d7a421637efb0=
be00211b5ca9cf1e4214d66eb762b92e0f9b3fe"
+
+SRC_URI[cargo-snapshot-powerpc64le.sha256sum] =3D "fbad853a30437653f09001d=
0de797823dfa32d537163841bec1792c3267f5eab"
+SRC_URI[rust-std-snapshot-powerpc64le.sha256sum] =3D "364c47ed22e4268edf23=
8d221c40007d7d8792a66ca325d3937596a9c911ea48"
+SRC_URI[rustc-snapshot-powerpc64le.sha256sum] =3D "4a2368996acd1741200d720=
674101323fa951dfa580b64c8b2e9fdc09bb22534"
+
+SRC_URI[cargo-snapshot-riscv64gc.sha256sum] =3D "3381af9ba39068b9c5e625361=
25a3abb582aef15932f63cd4f90df0cccb05ac7"
+SRC_URI[rust-std-snapshot-riscv64gc.sha256sum] =3D "63a7e6a6c889a3d01bb3c6=
6a3def3e41963511ea52e13906669da5b29b2fd9da"
+SRC_URI[rustc-snapshot-riscv64gc.sha256sum] =3D "916d204d727f485abbadeef91=
4ee881cf61fa3c167741a9ed29c9f4042c99e25"
+
+SRC_URI[cargo-snapshot-s390x.sha256sum] =3D "78d7c2714015ecb7283b417cb265d=
4d604379d0720aab5f611ca1c113987c283"
+SRC_URI[rust-std-snapshot-s390x.sha256sum] =3D "04573298d9e815c1e8c47a2f95=
48ea55d4a2afc538eceaa6a704d44a5e1f7e3e"
+SRC_URI[rustc-snapshot-s390x.sha256sum] =3D "e786d34e10069dc00774fe53bca09=
2e537e96db6c9d5258a8b0221e4fa5a2caf"
+
+SRC_URI[cargo-snapshot-x86_64.sha256sum] =3D "e744dad75de8419e7fea530c29bd=
56cf931b4d4de62eb4bd442bfac7b54e61ed"
+SRC_URI[rust-std-snapshot-x86_64.sha256sum] =3D "f4dc8468dfc1dbd86f865b10f=
06e0e4b4e76f5a3a1cc27317a520ab1660844e9"
+SRC_URI[rustc-snapshot-x86_64.sha256sum] =3D "e27ec0c6d1a2b2b38e5258904c37=
41ddb246bff5715aa95e595f818aa77f7bee"
+
+SRC_URI[rust-std-snapshot-i586.sha256sum] =3D "22cbbf0b22d9b0894cfbd6e1dd6=
b95b71c7ad02cee4e477d375dcf81af8d1337"
+
+SRC_URI[rust-std-snapshot-sparc64.sha256sum] =3D "addf0b0beb1966787e599f32=
849f18c28d5cb65515272b7d9608d4a1dddee2e7"
+
+SRC_URI +=3D " \
+    ${RUST_DIST_SERVER}/dist/${RUST_STD_SNAPSHOT}.tar.xz;name=3Drust-std-s=
napshot-${RUST_BUILD_ARCH};subdir=3Drust-snapshot-components \
+    ${RUST_DIST_SERVER}/dist/${RUSTC_SNAPSHOT}.tar.xz;name=3Drustc-snapsho=
t-${RUST_BUILD_ARCH};subdir=3Drust-snapshot-components \
+    ${RUST_DIST_SERVER}/dist/${CARGO_SNAPSHOT}.tar.xz;name=3Dcargo-snapsho=
t-${RUST_BUILD_ARCH};subdir=3Drust-snapshot-components \
+"
+
+RUST_DIST_SERVER =3D "https://static.rust-lang.org"
+
+RUST_STD_SNAPSHOT =3D "rust-std-${SNAPSHOT_VERSION}-${RUST_BUILD_ARCH}-unk=
nown-linux-gnu"
+RUSTC_SNAPSHOT =3D "rustc-${SNAPSHOT_VERSION}-${RUST_BUILD_ARCH}-unknown-l=
inux-gnu"
+CARGO_SNAPSHOT =3D "cargo-${SNAPSHOT_VERSION}-${RUST_BUILD_ARCH}-unknown-l=
inux-gnu"
diff --git a/recipes-devtools/rust/rust-source.inc b/recipes-devtools/rust/=
rust-source.inc
new file mode 100644
index 0000000..c8f5a5a
--- /dev/null
+++ b/recipes-devtools/rust/rust-source.inc
@@ -0,0 +1,23 @@
+RUST_VERSION ?=3D "${@d.getVar('PV').split('-')[0]}"
+
+SRC_URI +=3D "https://static.rust-lang.org/dist/rustc-${RUST_VERSION}-src.=
tar.xz;name=3Drust \
+            file://crossbeam_atomic.patch;patchdir=3D${RUSTSRC} \
+            file://hardcodepaths.patch;patchdir=3D${RUSTSRC} \
+            file://getrandom-open64.patch;patchdir=3D${RUSTSRC} \
+            file://0001-Do-not-use-LFS64-on-linux-with-musl.patch;patchdir=
=3D${RUSTSRC} \
+            file://zlib-off64_t.patch;patchdir=3D${RUSTSRC} \
+"
+SRC_URI[rust.sha256sum] =3D "5b8ea94085b65e75c1fa6310e2f90bd706fa80bfcb354=
4fe26f4037b911d9fb2"
+
+RUSTSRC =3D "${WORKDIR}/rustc-${RUST_VERSION}-src"
+
+# Used by crossbeam_atomic.patch
+export TARGET_VENDOR
+
+UPSTREAM_CHECK_URI =3D "https://forge.rust-lang.org/infra/other-installati=
on-methods.html"
+UPSTREAM_CHECK_REGEX =3D "rustc-(?P<pver>\d+(\.\d+)+)-src"
+
+# see recipes-devtools/gcc/gcc/0018-Add-ssp_nonshared-to-link-commandline-=
for-musl-targe.patch
+# we need to link with ssp_nonshared on musl to avoid "undefined reference=
 to `__stack_chk_fail_local'"
+# when building MACHINE=3Dqemux86 for musl
+WRAPPER_TARGET_EXTRALD:libc-musl =3D "-lssp_nonshared"
diff --git a/recipes-devtools/rust/rust_1.68.1.bb b/recipes-devtools/rust/r=
ust_1.68.1.bb
new file mode 100644
index 0000000..83f9bec
--- /dev/null
+++ b/recipes-devtools/rust/rust_1.68.1.bb
@@ -0,0 +1,352 @@
+SUMMARY =3D "Rust compiler and runtime libaries"
+HOMEPAGE =3D "http://www.rust-lang.org"
+SECTION =3D "devel"
+LICENSE =3D "(MIT | Apache-2.0) & Unicode-TOU"
+LIC_FILES_CHKSUM =3D "file://COPYRIGHT;md5=3Dc2cccf560306876da3913d79062a5=
4b9"
+
+inherit rust
+inherit cargo_common
+
+DEPENDS +=3D "file-native python3-native"
+DEPENDS:append:class-native =3D " rust-llvm-native"
+DEPENDS:append:class-nativesdk =3D " nativesdk-rust-llvm"
+
+DEPENDS +=3D "rust-llvm (=3D${PV})"
+
+RDEPENDS:${PN}:append:class-target =3D " gcc g++ binutils"
+
+# Otherwise we'll depend on what we provide
+INHIBIT_DEFAULT_RUST_DEPS:class-native =3D "1"
+# We don't need to depend on gcc-native because yocto assumes it exists
+PROVIDES:class-native =3D "virtual/${TARGET_PREFIX}rust"
+
+S =3D "${RUSTSRC}"
+
+# Use at your own risk, accepted values are stable, beta and nightly
+RUST_CHANNEL ?=3D "stable"
+PV .=3D "${@bb.utils.contains('RUST_CHANNEL', 'stable', '', '-${RUST_CHANN=
EL}', d)}"
+
+export FORCE_CRATE_HASH=3D"${BB_TASKHASH}"
+
+RUST_ALTERNATE_EXE_PATH ?=3D "${STAGING_LIBDIR}/llvm-rust/bin/llvm-config"
+RUST_ALTERNATE_EXE_PATH_NATIVE =3D "${STAGING_LIBDIR_NATIVE}/llvm-rust/bin=
/llvm-config"
+
+# We don't want to use bitbakes vendoring because the rust sources do their
+# own vendoring.
+CARGO_DISABLE_BITBAKE_VENDORING =3D "1"
+
+# We can't use RUST_BUILD_SYS here because that may be "musl" if
+# TCLIBC=3D"musl". Snapshots are always -unknown-linux-gnu
+setup_cargo_environment () {
+    # The first step is to build bootstrap and some early stage tools,
+    # these are build for the same target as the snapshot, e.g.
+    # x86_64-unknown-linux-gnu.
+    # Later stages are build for the native target (i.e. target.x86_64-lin=
ux)
+    cargo_common_do_configure
+}
+
+inherit rust-target-config
+
+do_rust_setup_snapshot () {
+    for installer in "${WORKDIR}/rust-snapshot-components/"*"/install.sh";=
 do
+        "${installer}" --prefix=3D"${WORKDIR}/rust-snapshot" --disable-ldc=
onfig
+    done
+
+    # Some versions of rust (e.g. 1.18.0) tries to find cargo in stage0/bi=
n/cargo
+    # and fail without it there.
+    mkdir -p ${RUSTSRC}/build/${BUILD_SYS}
+    ln -sf ${WORKDIR}/rust-snapshot/ ${RUSTSRC}/build/${BUILD_SYS}/stage0
+
+    # Need to use uninative's loader if enabled/present since the library =
paths
+    # are used internally by rust and result in symbol mismatches if we do=
n't
+    if [ ! -z "${UNINATIVE_LOADER}" -a -e "${UNINATIVE_LOADER}" ]; then
+        for bin in cargo rustc rustdoc; do
+            patchelf-uninative ${WORKDIR}/rust-snapshot/bin/$bin --set-int=
erpreter ${UNINATIVE_LOADER}
+        done
+    fi
+}
+addtask rust_setup_snapshot after do_unpack before do_configure
+do_rust_setup_snapshot[dirs] +=3D "${WORKDIR}/rust-snapshot"
+do_rust_setup_snapshot[vardepsexclude] +=3D "UNINATIVE_LOADER"
+
+python do_configure() {
+    import json
+    try:
+        import configparser
+    except ImportError:
+        import ConfigParser as configparser
+
+    # toml is rather similar to standard ini like format except it likes v=
alues
+    # that look more JSON like. So for our purposes simply escaping all va=
lues
+    # as JSON seem to work fine.
+
+    e =3D lambda s: json.dumps(s)
+
+    config =3D configparser.RawConfigParser()
+
+    # [target.ARCH-poky-linux]
+    host_section =3D "target.{}".format(d.getVar('RUST_HOST_SYS'))
+    config.add_section(host_section)
+
+    llvm_config_target =3D d.expand("${RUST_ALTERNATE_EXE_PATH}")
+    llvm_config_build =3D d.expand("${RUST_ALTERNATE_EXE_PATH_NATIVE}")
+    config.set(host_section, "llvm-config", e(llvm_config_target))
+
+    config.set(host_section, "cxx", e(d.expand("${RUST_TARGET_CXX}")))
+    config.set(host_section, "cc", e(d.expand("${RUST_TARGET_CC}")))
+    config.set(host_section, "linker", e(d.expand("${RUST_TARGET_CCLD}")))
+    if "musl" in host_section:
+        config.set(host_section, "musl-root", e(d.expand("${STAGING_DIR_HO=
ST}${exec_prefix}")))
+
+    # If we don't do this rust-native will compile it's own llvm for BUILD.
+    # [target.${BUILD_ARCH}-unknown-linux-gnu]
+    build_section =3D "target.{}".format(d.getVar('RUST_BUILD_SYS'))
+    if build_section !=3D host_section:
+        config.add_section(build_section)
+
+        config.set(build_section, "llvm-config", e(llvm_config_build))
+
+        config.set(build_section, "cxx", e(d.expand("${RUST_BUILD_CXX}")))
+        config.set(build_section, "cc", e(d.expand("${RUST_BUILD_CC}")))
+        config.set(build_section, "linker", e(d.expand("${RUST_BUILD_CCLD}=
")))
+
+    target_section =3D "target.{}".format(d.getVar('RUST_TARGET_SYS'))
+    if target_section !=3D host_section and target_section !=3D build_sect=
ion:
+        config.add_section(target_section)
+
+        config.set(target_section, "llvm-config", e(llvm_config_target))
+
+        config.set(target_section, "cxx", e(d.expand("${RUST_TARGET_CXX}")=
))
+        config.set(target_section, "cc", e(d.expand("${RUST_TARGET_CC}")))
+        config.set(target_section, "linker", e(d.expand("${RUST_TARGET_CCL=
D}")))
+
+    # [llvm]
+    config.add_section("llvm")
+    config.set("llvm", "static-libstdcpp", e(False))
+    if "llvm" in (d.getVar('TC_CXX_RUNTIME') or ""):
+        config.set("llvm", "use-libcxx", e(True))
+
+    # [rust]
+    config.add_section("rust")
+    config.set("rust", "rpath", e(True))
+    config.set("rust", "channel", e(d.expand("${RUST_CHANNEL}")))
+
+    # Whether or not to optimize the compiler and standard library
+    config.set("rust", "optimize", e(True))
+
+    # Emits extraneous output from tests to ensure that failures of the te=
st
+    # harness are debuggable just from logfiles
+    config.set("rust", "verbose-tests", e(True))
+
+    # [build]
+    config.add_section("build")
+    config.set("build", "submodules", e(False))
+    config.set("build", "docs", e(False))
+
+    rustc =3D d.expand("${WORKDIR}/rust-snapshot/bin/rustc")
+    config.set("build", "rustc", e(rustc))
+
+    # Support for the profiler runtime to generate e.g. coverage report,
+    # PGO etc.
+    config.set("build", "profiler", e(True))
+
+    cargo =3D d.expand("${WORKDIR}/rust-snapshot/bin/cargo")
+    config.set("build", "cargo", e(cargo))
+
+    config.set("build", "vendor", e(True))
+
+    if not "targets" in locals():
+        targets =3D [d.getVar("RUST_TARGET_SYS")]
+    config.set("build", "target", e(targets))
+
+    if not "hosts" in locals():
+        hosts =3D [d.getVar("RUST_HOST_SYS")]
+    config.set("build", "host", e(hosts))
+
+    # We can't use BUILD_SYS since that is something the rust snapshot kno=
ws
+    # nothing about when trying to build some stage0 tools (like fabricate)
+    config.set("build", "build", e(d.getVar("RUST_BUILD_SYS")))
+
+    # [install]
+    config.add_section("install")
+    # ./x.py install doesn't have any notion of "destdir"
+    # but we can prepend ${D} to all the directories instead
+    config.set("install", "prefix",  e(d.getVar("D") + d.getVar("prefix")))
+    config.set("install", "bindir",  e(d.getVar("D") + d.getVar("bindir")))
+    config.set("install", "libdir",  e(d.getVar("D") + d.getVar("libdir")))
+    config.set("install", "datadir", e(d.getVar("D") + d.getVar("datadir")=
))
+    config.set("install", "mandir",  e(d.getVar("D") + d.getVar("mandir")))
+
+    with open("config.toml", "w") as f:
+        f.write('changelog-seen =3D 2\n\n')
+        config.write(f)
+
+    # set up ${WORKDIR}/cargo_home
+    bb.build.exec_func("setup_cargo_environment", d)
+}
+
+rust_runx () {
+    echo "COMPILE ${PN}" "$@"
+
+    # CFLAGS, LDFLAGS, CXXFLAGS, CPPFLAGS are used by rust's build for a
+    # wide range of targets (not just TARGET). Yocto's settings for them w=
ill
+    # be inappropriate, avoid using.
+    unset CFLAGS
+    unset LDFLAGS
+    unset CXXFLAGS
+    unset CPPFLAGS
+
+    export RUSTFLAGS=3D"${RUST_DEBUG_REMAP}"
+
+    # Copy the natively built llvm-config into the target so we can run it=
. Horrible,
+    # but works!
+    if [ ${RUST_ALTERNATE_EXE_PATH_NATIVE} !=3D ${RUST_ALTERNATE_EXE_PATH}=
 -a ! -f ${RUST_ALTERNATE_EXE_PATH} ]; then
+        mkdir -p `dirname ${RUST_ALTERNATE_EXE_PATH}`
+        cp ${RUST_ALTERNATE_EXE_PATH_NATIVE} ${RUST_ALTERNATE_EXE_PATH}
+        chrpath -d ${RUST_ALTERNATE_EXE_PATH}
+    fi
+
+    oe_cargo_fix_env
+
+    python3 src/bootstrap/bootstrap.py ${@oe.utils.parallel_make_argument(=
d, '-j %d')} "$@" --verbose
+}
+rust_runx[vardepsexclude] +=3D "PARALLEL_MAKE"
+
+require rust-source.inc
+require rust-snapshot.inc
+
+INSANE_SKIP:${PN}:class-native =3D "already-stripped"
+FILES:${PN} +=3D "${libdir}/rustlib"
+FILES:${PN} +=3D "${libdir}/*.so"
+FILES:${PN}-dev =3D ""
+
+do_compile () {
+}
+
+ALLOW_EMPTY:${PN} =3D "1"
+
+PACKAGES =3D+ "${PN}-tools-clippy ${PN}-tools-rustfmt"
+FILES:${PN}-tools-clippy =3D "${bindir}/cargo-clippy ${bindir}/clippy-driv=
er"
+FILES:${PN}-tools-rustfmt =3D "${bindir}/rustfmt"
+RDEPENDS:${PN}-tools-clippy =3D "${PN}"
+RDEPENDS:${PN}-tools-rustfmt =3D "${PN}"
+
+SUMMARY:${PN}-tools-clippy =3D "A collection of lints to catch common mist=
akes and improve your Rust code"
+SUMMARY:${PN}-tools-rustfmt =3D "A tool for formatting Rust code according=
 to style guidelines"
+
+do_install () {
+    rust_do_install
+}
+
+rust_do_install() {
+    rust_runx install
+}
+
+rust_do_install:class-nativesdk() {
+    export PSEUDO_UNLOAD=3D1
+    rust_runx install
+    rust_runx install clippy
+    rust_runx install rustfmt
+    unset PSEUDO_UNLOAD
+
+    install -d ${D}${bindir}
+    for i in cargo-clippy clippy-driver rustfmt; do
+        cp build/${RUST_BUILD_SYS}/stage2-tools/${RUST_HOST_SYS}/release/$=
i ${D}${bindir}
+        chrpath -r "\$ORIGIN/../lib" ${D}${bindir}/$i
+    done
+
+    chown root:root ${D}/ -R
+    rm ${D}${libdir}/rustlib/uninstall.sh
+    rm ${D}${libdir}/rustlib/install.log
+    rm ${D}${libdir}/rustlib/manifest*
+}
+
+EXTRA_TOOLS ?=3D "cargo-clippy clippy-driver rustfmt"
+rust_do_install:class-target() {
+    export PSEUDO_UNLOAD=3D1
+    rust_runx install
+    rust_runx install clippy
+    rust_runx install rustfmt
+    unset PSEUDO_UNLOAD
+
+    install -d ${D}${bindir}
+    for i in ${EXTRA_TOOLS}; do
+        cp build/${RUST_BUILD_SYS}/stage2-tools/${RUST_HOST_SYS}/release/$=
i ${D}${bindir}
+        chrpath -r "\$ORIGIN/../lib" ${D}${bindir}/$i
+    done
+
+    install -d ${D}${libdir}/rustlib/${RUST_HOST_SYS}
+    install -m 0644 ${WORKDIR}/rust-targets/${RUST_HOST_SYS}.json ${D}${li=
bdir}/rustlib/${RUST_HOST_SYS}/target.json
+
+    chown root:root ${D}/ -R
+    rm ${D}${libdir}/rustlib/uninstall.sh
+    rm ${D}${libdir}/rustlib/install.log
+    rm ${D}${libdir}/rustlib/manifest*
+}
+
+addtask do_update_snapshot after do_patch
+do_update_snapshot[nostamp] =3D "1"
+
+# Run with `bitbake -c update_snapshot rust` to update `rust-snapshot.inc`
+# with the checksums for the rust snapshot associated with this rustc-src
+# tarball.
+python do_update_snapshot() {
+    import json
+    import re
+    import sys
+
+    from collections import defaultdict
+
+    with open(os.path.join(d.getVar("S"), "src", "stage0.json")) as f:
+        j =3D json.load(f)
+
+    config_dist_server =3D j['config']['dist_server']
+    compiler_date =3D j['compiler']['date']
+    compiler_version =3D j['compiler']['version']
+
+    src_uri =3D defaultdict(list)
+    for k, v in j['checksums_sha256'].items():
+        m =3D re.search(f"dist/{compiler_date}/(?P<component>.*)-{compiler=
_version}-(?P<arch>.*)-unknown-linux-gnu\\.tar\\.xz", k)
+        if m:
+            component =3D m.group('component')
+            arch =3D m.group('arch')
+            src_uri[arch].append(f"SRC_URI[{component}-snapshot-{arch}.sha=
256sum] =3D \"{v}\"")
+
+    snapshot =3D """\
+## This is information on the rust-snapshot (binary) used to build our cur=
rent release.
+## snapshot info is taken from rust/src/stage0.json
+## Rust is self-hosting and bootstraps itself with a pre-built previous ve=
rsion of itself.
+## The exact (previous) version that has been used is specified in the sou=
rce tarball.
+## The version is replicated here.
+
+SNAPSHOT_VERSION =3D "%s"
+
+""" % compiler_version
+
+    for arch, components in src_uri.items():
+        snapshot +=3D "\n".join(components) + "\n\n"
+
+    snapshot +=3D """\
+SRC_URI +=3D " \\
+    ${RUST_DIST_SERVER}/dist/${RUST_STD_SNAPSHOT}.tar.xz;name=3Drust-std-s=
napshot-${RUST_BUILD_ARCH};subdir=3Drust-snapshot-components \\
+    ${RUST_DIST_SERVER}/dist/${RUSTC_SNAPSHOT}.tar.xz;name=3Drustc-snapsho=
t-${RUST_BUILD_ARCH};subdir=3Drust-snapshot-components \\
+    ${RUST_DIST_SERVER}/dist/${CARGO_SNAPSHOT}.tar.xz;name=3Dcargo-snapsho=
t-${RUST_BUILD_ARCH};subdir=3Drust-snapshot-components \\
+"
+
+RUST_DIST_SERVER =3D "%s"
+
+RUST_STD_SNAPSHOT =3D "rust-std-${SNAPSHOT_VERSION}-${RUST_BUILD_ARCH}-unk=
nown-linux-gnu"
+RUSTC_SNAPSHOT =3D "rustc-${SNAPSHOT_VERSION}-${RUST_BUILD_ARCH}-unknown-l=
inux-gnu"
+CARGO_SNAPSHOT =3D "cargo-${SNAPSHOT_VERSION}-${RUST_BUILD_ARCH}-unknown-l=
inux-gnu"
+""" % config_dist_server
+
+    with open(os.path.join(d.getVar("THISDIR"), "rust-snapshot.inc"), "w")=
 as f:
+        f.write(snapshot)
+}
+
+RUSTLIB_DEP:class-nativesdk =3D ""
+
+# musl builds include libunwind.a
+INSANE_SKIP:${PN} =3D "staticdev"
+
+BBCLASSEXTEND =3D "native nativesdk"
diff --git a/recipes-gnome/librsvg/librsvg/0001-Makefile.am-pass-rust-targe=
t-to-cargo-also-when-not-.patch b/recipes-gnome/librsvg/librsvg/0001-Makefi=
le.am-pass-rust-target-to-cargo-also-when-not-.patch
new file mode 100644
index 0000000..d7487c2
--- /dev/null
+++ b/recipes-gnome/librsvg/librsvg/0001-Makefile.am-pass-rust-target-to-ca=
rgo-also-when-not-.patch
@@ -0,0 +1,47 @@
+From 95b2cd0169cb1b4694c2bce67169b1aa1d5e2be0 Mon Sep 17 00:00:00 2001
+From: Alexander Kanavin <alex@linutronix.de>
+Date: Tue, 21 Sep 2021 16:27:14 +0200
+Subject: [PATCH] Makefile.am: pass rust target to cargo also when not cross
+ compiling
+
+Otherwise oe-core's native build doesn't work either.
+
+Upstream-Status: Inappropriate [oe-core specific]
+Signed-off-by: Alexander Kanavin <alex@linutronix.de>
+---
+ Makefile.am  | 2 --
+ configure.ac | 4 +---
+ 2 files changed, 1 insertion(+), 5 deletions(-)
+
+diff --git a/Makefile.am b/Makefile.am
+index e93714e..effe5d3 100644
+--- a/Makefile.am
++++ b/Makefile.am
+@@ -137,9 +137,7 @@ else
+ CARGO_RELEASE_ARGS=3D--release
+ endif
+=20
+-if CROSS_COMPILING
+ CARGO_TARGET_ARGS=3D--target=3D$(RUST_TARGET)
+-endif
+=20
+ CARGO_VERBOSE =3D $(cargo_verbose_$(V))
+ cargo_verbose_ =3D $(cargo_verbose_$(AM_DEFAULT_VERBOSITY))
+diff --git a/configure.ac b/configure.ac
+index 41590ca..84cd56b 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -255,9 +255,7 @@ AC_ARG_VAR(RUST_TARGET, [Set rust target (default=3D$h=
ost)])
+ : ${RUST_TARGET:=3D$host}
+=20
+ AM_CONDITIONAL([CROSS_COMPILING], [test "x$cross_compiling" =3D xyes])
+-AS_IF([test "x$cross_compiling" =3D "xyes"], [
+-	RUST_TARGET_SUBDIR=3D"$RUST_TARGET/$RUST_TARGET_SUBDIR"
+-])
++RUST_TARGET_SUBDIR=3D"$RUST_TARGET/$RUST_TARGET_SUBDIR"
+ AC_SUBST([RUST_TARGET_SUBDIR])
+=20
+ dnl =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
+--=20
+2.20.1
+
diff --git a/recipes-gnome/librsvg/librsvg/0001-system-deps-src-lib.rs-do-n=
ot-probe-into-harcoded-li.patch b/recipes-gnome/librsvg/librsvg/0001-system=
-deps-src-lib.rs-do-not-probe-into-harcoded-li.patch
new file mode 100644
index 0000000..992ff8d
--- /dev/null
+++ b/recipes-gnome/librsvg/librsvg/0001-system-deps-src-lib.rs-do-not-prob=
e-into-harcoded-li.patch
@@ -0,0 +1,51 @@
+From c0b0ef51b3c997a1c20ef9381ba2201ed477f609 Mon Sep 17 00:00:00 2001
+From: Alexander Kanavin <alex@linutronix.de>
+Date: Tue, 21 Sep 2021 16:54:23 +0200
+Subject: [PATCH] system-deps/src/lib.rs: do not probe into harcoded list of
+ targets
+
+Oe-core defines custom targets, and this probe fails.
+
+Upstream-Status: Inappropriate [oe-core specific]
+Signed-off-by: Alexander Kanavin <alex@linutronix.de>
+
+---
+ vendor/system-deps/.cargo-checksum.json |  2 +-
+ vendor/system-deps/src/lib.rs           | 16 +---------------
+ 2 files changed, 2 insertions(+), 16 deletions(-)
+
+diff --git a/vendor/system-deps/.cargo-checksum.json b/vendor/system-deps/=
.cargo-checksum.json
+index 862df8b..931748e 100644
+--- a/vendor/system-deps/.cargo-checksum.json
++++ b/vendor/system-deps/.cargo-checksum.json
+@@ -1 +1 @@
+-{"files":{"Cargo.toml":"927df7476ebf5f5983169cfd973f4c95b84da17caeb20d33c=
ccf50e326af5316","LICENSE-APACHE":"a60eea817514531668d7e00765731449fe14d059=
d3249e0bc93b36de45f759f2","LICENSE-MIT":"23f18e03dc49df91622fe2a76176497404=
e46ced8a715d9d2b67a7446571cca3","README.md":"3fe7396637bf9233908f41c6001cfc=
b00a379225e06e36e508c8b3d7264a8aae","src/lib.rs":"c38fd96ca3233ebee3bb7e37c=
a8f8a7a2685cdd7fcccf0210eaa879aa91dc684","src/metadata.rs":"657bc1b77e949e4=
800f9dd808790ffa535820e1658d412121a1da548e0cdd02c","src/test.rs":"9d5f8c1fb=
7a821352d6ba75cb005ead3e36b4f359e61feb605ab8a36d4fd31f8","src/tests/lib/lib=
teststatic.a":"e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852=
b855","src/tests/testanotherlib.pc":"bb4fd942324e6d49ce3becd827aa5c948d1924=
ca6681904a3695c19b1424eb3c","src/tests/testdata.pc":"43f481e989c03674fed5ef=
78c6420b3f8d36a2ce001928d86c418d1844acd5e7","src/tests/testlib-2.0.pc":"152=
eb0c70c14c3d948118408f3d1fd3bb7531b02aa792db85bd957f7db90b45b","src/tests/t=
estlib-3.0.pc":"cd39c2ef88f6828c9291150cc4b624e769abef484674eaebaa4f6797950=
1315f","src/tests/testlib.pc":"75c0d8a5345f65794f583c83e1cf0dbf3385af6e6abe=
a1d61bb86eef707a52db","src/tests/teststaticlib.pc":"77df23f6c7c1d47aff18453=
b47c87e53ec8a96017546e0a55c8c4d1e13b70134","src/tests/toml-missing-file/no-=
cargo-toml-here":"6ab4da4b56f15315df6538610cfcd2ba3d0f9a7a8414678ff00ab5a78=
f7d41fa"},"package":"a1a45a1c4c9015217e12347f2a411b57ce2c4fc543913b14b6fe40=
483328e709"}
+\ No newline at end of file
++{"files":{"Cargo.toml":"927df7476ebf5f5983169cfd973f4c95b84da17caeb20d33c=
ccf50e326af5316","LICENSE-APACHE":"a60eea817514531668d7e00765731449fe14d059=
d3249e0bc93b36de45f759f2","LICENSE-MIT":"23f18e03dc49df91622fe2a76176497404=
e46ced8a715d9d2b67a7446571cca3","README.md":"3fe7396637bf9233908f41c6001cfc=
b00a379225e06e36e508c8b3d7264a8aae","src/lib.rs":"534efc2f977d8c67d5be3a4c3=
e81093a6c00ab2de1102404166b1573ad96dbd2","src/metadata.rs":"657bc1b77e949e4=
800f9dd808790ffa535820e1658d412121a1da548e0cdd02c","src/test.rs":"9d5f8c1fb=
7a821352d6ba75cb005ead3e36b4f359e61feb605ab8a36d4fd31f8","src/tests/lib/lib=
teststatic.a":"e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852=
b855","src/tests/testanotherlib.pc":"bb4fd942324e6d49ce3becd827aa5c948d1924=
ca6681904a3695c19b1424eb3c","src/tests/testdata.pc":"43f481e989c03674fed5ef=
78c6420b3f8d36a2ce001928d86c418d1844acd5e7","src/tests/testlib-2.0.pc":"152=
eb0c70c14c3d948118408f3d1fd3bb7531b02aa792db85bd957f7db90b45b","src/tests/t=
estlib-3.0.pc":"cd39c2ef88f6828c9291150cc4b624e769abef484674eaebaa4f6797950=
1315f","src/tests/testlib.pc":"75c0d8a5345f65794f583c83e1cf0dbf3385af6e6abe=
a1d61bb86eef707a52db","src/tests/teststaticlib.pc":"77df23f6c7c1d47aff18453=
b47c87e53ec8a96017546e0a55c8c4d1e13b70134","src/tests/toml-missing-file/no-=
cargo-toml-here":"6ab4da4b56f15315df6538610cfcd2ba3d0f9a7a8414678ff00ab5a78=
f7d41fa"},"package":"a1a45a1c4c9015217e12347f2a411b57ce2c4fc543913b14b6fe40=
483328e709"}
+diff --git a/vendor/system-deps/src/lib.rs b/vendor/system-deps/src/lib.rs
+index 45ab1ce..f87d1ec 100644
+--- a/vendor/system-deps/src/lib.rs
++++ b/vendor/system-deps/src/lib.rs
+@@ -800,21 +800,7 @@ impl Config {
+     }
+=20
+     fn check_cfg(&self, cfg: &cfg_expr::Expression) -> Result<bool, Error=
> {
+-        use cfg_expr::{targets::get_builtin_target_by_triple, Predicate};
+-
+-        let target =3D self
+-            .env
+-            .get("TARGET")
+-            .expect("no TARGET env variable defined");
+-        let target =3D get_builtin_target_by_triple(&target)
+-            .unwrap_or_else(|| panic!("Invalid TARGET: {}", target));
+-
+-        let res =3D cfg.eval(|pred| match pred {
+-            Predicate::Target(tp) =3D> Some(tp.matches(target)),
+-            _ =3D> None,
+-        });
+-
+-        res.ok_or_else(|| Error::UnsupportedCfg(cfg.original().to_string(=
)))
++        Ok(true)
+     }
+ }
+=20
diff --git a/recipes-gnome/librsvg/librsvg_2.54.5.bb b/recipes-gnome/librsv=
g/librsvg_2.54.5.bb
new file mode 100644
index 0000000..59278d1
--- /dev/null
+++ b/recipes-gnome/librsvg/librsvg_2.54.5.bb
@@ -0,0 +1,77 @@
+SUMMARY =3D "Library for rendering SVG files"
+DESCRIPTION =3D "A small library to render Scalable Vector Graphics (SVG),=
 \
+associated with the GNOME Project. It renders SVG files to Cairo surfaces.=
 \
+Cairo is the 2D, antialiased drawing library that GNOME uses to draw thing=
s to \
+the screen or to generate output for printing."
+HOMEPAGE =3D "https://gitlab.gnome.org/GNOME/librsvg"
+BUGTRACKER =3D "https://gitlab.gnome.org/GNOME/librsvg/issues"
+
+LICENSE =3D "LGPL-2.1-or-later"
+LIC_FILES_CHKSUM =3D "file://COPYING.LIB;md5=3D4fbd65380cdd255951079008b36=
4516c \
+                   "
+
+SECTION =3D "x11/utils"
+DEPENDS =3D "cairo gdk-pixbuf glib-2.0 libxml2 pango python3-docutils-nati=
ve"
+BBCLASSEXTEND =3D "native nativesdk"
+
+inherit cargo_common gnomebase pixbufcache upstream-version-is-even gobjec=
t-introspection rust vala gi-docgen
+
+SRC_URI +=3D "file://0001-Makefile.am-pass-rust-target-to-cargo-also-when-=
not-.patch \
+           file://0001-system-deps-src-lib.rs-do-not-probe-into-harcoded-l=
i.patch \
+           "
+
+SRC_URI[archive.sha256sum] =3D "4f03190f45324d1fa1f52a79dfcded1f64eaf49b3a=
e2f88eedab0c07617cae6e"
+
+# librsvg is still autotools-based, but is calling cargo from its automake=
-driven makefiles
+# so we cannot use cargo class directly, but still need bits and pieces fr=
om it=20
+# for cargo to be happy
+BASEDEPENDS:append =3D " cargo-native"
+
+export RUST_BACKTRACE =3D "full"
+export RUSTFLAGS
+
+export RUST_TARGET =3D "${RUST_HOST_SYS}"
+
+RUSTFLAGS:append:mips =3D " --cfg crossbeam_no_atomic_64"
+RUSTFLAGS:append:mipsel =3D " --cfg crossbeam_no_atomic_64"
+RUSTFLAGS:append:powerpc =3D " --cfg crossbeam_no_atomic_64"
+RUSTFLAGS:append:riscv32 =3D " --cfg crossbeam_no_atomic_64"
+
+CARGO_DISABLE_BITBAKE_VENDORING =3D "1"
+do_configure[postfuncs] +=3D "cargo_common_do_configure"
+
+inherit rust-target-config
+
+# rust-cross writes the target linker binary into target json definition w=
ithout any flags.
+# This breaks here because the linker isn't going to work without at least=
 knowing where
+# the sysroot is. So copy the json to workdir, and patch in the path to wr=
apper from rust class
+# which supplies the needed flags.
+do_compile:prepend() {
+    sed -ie 's,"linker": ".*","linker": "${RUST_TARGET_CC}",g' ${RUST_TARG=
ETS_DIR}/${RUST_HOST_SYS}.json
+}
+
+# Issue only on windows
+CVE_CHECK_IGNORE +=3D "CVE-2018-1000041"
+
+CACHED_CONFIGUREVARS =3D "ac_cv_path_GDK_PIXBUF_QUERYLOADERS=3D${STAGING_L=
IBDIR_NATIVE}/gdk-pixbuf-2.0/gdk-pixbuf-query-loaders"
+
+PACKAGECONFIG ??=3D "gdkpixbuf"
+PACKAGECONFIG:append:class-target =3D " ${@bb.utils.contains('GI_DATA_ENAB=
LED', 'True', 'vala', '', d)}"
+# The gdk-pixbuf loader
+PACKAGECONFIG[gdkpixbuf] =3D "--enable-pixbuf-loader,--disable-pixbuf-load=
er,gdk-pixbuf-native"
+PACKAGECONFIG[vala] =3D "--enable-vala,--disable-vala"
+
+do_install:append() {
+	# Loadable modules don't need .a or .la on Linux
+	rm -f ${D}${libdir}/gdk-pixbuf-2.0/*/loaders/*.a ${D}${libdir}/gdk-pixbuf=
-2.0/*/loaders/*.la
+}
+
+PACKAGES =3D+ "librsvg-gtk rsvg"
+FILES:rsvg =3D "${bindir}/rsvg* \
+	      ${datadir}/pixmaps/svg-viewer.svg \
+	      ${datadir}/themes"
+FILES:librsvg-gtk =3D "${libdir}/gdk-pixbuf-2.0/*/*/*.so \
+                     ${datadir}/thumbnailers/librsvg.thumbnailer"
+RRECOMMENDS:librsvg-gtk =3D "gdk-pixbuf-bin"
+
+PIXBUF_PACKAGES =3D "librsvg-gtk"
--=20
2.39.2


