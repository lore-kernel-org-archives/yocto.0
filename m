Return-Path: <quaresma.jose@gmail.com>
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A05E1C4167B
	for <webhook@archiver.kernel.org>; Tue,  5 Dec 2023 10:33:09 +0000 (UTC)
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
 by mx.groups.io with SMTP id smtpd.web11.96546.1701772382320808855
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Dec 2023 02:33:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Ul60NIf9;
 spf=pass (domain: gmail.com, ip: 209.85.221.176, mailfrom: quaresma.jose@gmail.com)
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-4b2eee90c9fso303269e0c.3
        for <yocto@lists.yoctoproject.org>; Tue, 05 Dec 2023 02:33:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701772381; x=1702377181; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GUjTXz9PfI5S2+hb3ewqtjCgzvJDq1wu4unRkbvdmhg=;
        b=Ul60NIf9AlXky8WMnwx9Tmjh741XeptYXAzZks61Q9S/evYkIGdskNylB6t+MNwfj7
         OgNgM2ZXK42yb6+d4u1NygtuCrgNcbUp9rvwLhr9+bS/m3MwytfPzL+GS5IiCXMg7riS
         dc7O9Xx6n7OAHUuhsGvfpGbvzlhQw+Z8dtFYagSGn4utlnU9lNXNPg4yv2WN3MR1wmm0
         tY/p32Z48hKaWM1K4JRKSKvr1BVCMp9cK6mDs/npVXy8/fyLAZv1/Fd5V+IksPH8CXBP
         BzxhXz2vfZf714h9eAgvyAEfPG86MgFL69Vluu7VhcK6Fp/Ylgj8B/otewcwLflo3m5d
         H33g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701772381; x=1702377181;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GUjTXz9PfI5S2+hb3ewqtjCgzvJDq1wu4unRkbvdmhg=;
        b=Bs81mpRsKnytsGyqZYIGDIw8pjPFvsa2rhg30RMCoZ6MUrFY1gm9b38TJoEFSWBdBa
         ilpGuRET1RK1aSEIPesorn/D8ArKEc3AgNJHfkVr2fWDRHZHTPXUti9hm5C0O3g9cal2
         c+LrCopayywsVNvzVazdh7Jc5EuMynyfHol+6QTH5+z0yVv5qm/a9LInRvGLEdQLQHeV
         0KZInOyYjt944KdO8K8yYjuFi5Gu3u6j7lPlJBrKzNG9nunsciJ4p6pfFJG0Y/VHvhgU
         xPWGTEi0utJHfEDEuIXRNdMqONa4KKWc5ft4+wkZPlpAAlO4oBZXX7cxZd8GYJzrTOi5
         wj+w==
X-Gm-Message-State: AOJu0YxDb2u36xt566JL8Nm4sf++d+4H2alGJk13Aa7vlzJHVBIzHwrT
	mMtbSlXGRQjaJrLTgOzokcKf+zt7usNtV1POkDY=
X-Google-Smtp-Source: AGHT+IFEtXxvKkwUnxZAVOFQLSZvTHRvA0vs1kbKJ2R6AeHJjqvk6XAHO4UdaMHzhk++Kih6Y6DplFHsQ/+OB6CxV1U=
X-Received: by 2002:a05:6122:1792:b0:4a0:8a35:6686 with SMTP id
 o18-20020a056122179200b004a08a356686mr2449813vkf.11.1701772380341; Tue, 05
 Dec 2023 02:33:00 -0800 (PST)
MIME-Version: 1.0
References: <20231204183055.29931-1-antonio@amsobr.com> <20231204183055.29931-2-antonio@amsobr.com>
In-Reply-To: <20231204183055.29931-2-antonio@amsobr.com>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Tue, 5 Dec 2023 10:32:48 +0000
Message-ID: <CANPvuRk=EYMBbWFQKCDPDFnGBSA2OX=km4VUTjdPO0yaC+tMgg@mail.gmail.com>
Subject: Re: [yocto] [RFC PATCH 1/1] initial commit
To: antonio@amsobr.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000380c17060bc0c2d3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Dec 2023 10:33:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61801

--000000000000380c17060bc0c2d3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ant=C3=B3nio Oliveira <antonio@amsobr.com> escreveu no dia segunda, 4/12/20=
23
=C3=A0(s) 18:31:

> * Added nodejs-20.8.1 from master, nodejs-18.17.1 from Mickledore
> * added layer config, readme and license
>
> Signed-off-by: Ant=C3=B3nio Oliveira <antonio@amsobr.com>
> ---
>  COPYING.MIT                                   |   17 +
>  README                                        |   22 +
>  conf/layer.conf                               |   20 +
>  ...e-running-gyp-files-for-bundled-deps.patch |   51 +
>  .../0001-Using-native-binaries.patch          |   77 +
>  ...-liftoff-Correct-function-signatures.patch |   85 +
>  ...Use-32bit-cast-for-operand-on-mips32.patch |   34 +
>  ...4-Do-not-use-mminimal-toc-with-clang.patch |   23 +
>  .../0004-v8-don-t-override-ARM-CFLAGS.patch   |  102 +
>  .../nodejs/nodejs-18.17.1/big-endian.patch    |   18 +
>  .../nodejs/nodejs-18.17.1/libatomic.patch     |   21 +
>  .../nodejs-18.17.1/mips-less-memory.patch     |   37 +
>  .../nodejs/nodejs-18.17.1/run-ptest           |    3 +
>  .../nodejs/nodejs-18.17.1/system-c-ares.patch |   24 +
>  ...e-running-gyp-files-for-bundled-deps.patch |   46 +
>  ...t-io_uring-changes-from-libuv-1.46.0.patch | 3414 +++++++++++++++++
>  .../0001-Using-native-binaries.patch          |   94 +
>  ...-liftoff-Correct-function-signatures.patch |   71 +
>  ...4-Do-not-use-mminimal-toc-with-clang.patch |   25 +
>  ...t-io_uring-changes-from-libuv-1.45.0.patch | 1803 +++++++++
>  .../0004-v8-don-t-override-ARM-CFLAGS.patch   |  102 +
>  .../nodejs/nodejs-20.8.1/libatomic.patch      |   21 +
>  .../nodejs/nodejs-20.8.1/run-ptest            |    8 +
>  .../nodejs/nodejs-20.8.1/system-c-ares.patch  |   24 +
>  .../nodejs/nodejs-oe-cache-18.17/oe-npm-cache |   77 +
>  .../nodejs/nodejs-oe-cache-20.5/oe-npm-cache  |   77 +
>  .../nodejs/nodejs-oe-cache-native_18.17.bb    |   21 +
>  .../nodejs/nodejs-oe-cache-native_20.5.bb     |   21 +
>  recipes-devtools/nodejs/nodejs_18.17.1.bb     |  185 +
>  recipes-devtools/nodejs/nodejs_20.8.1.bb      |  182 +
>  30 files changed, 6705 insertions(+)
>  create mode 100644 COPYING.MIT
>  create mode 100644 README
>  create mode 100644 conf/layer.conf
>  create mode 100644
> recipes-devtools/nodejs/nodejs-18.17.1/0001-Disable-running-gyp-files-for=
-bundled-deps.patch
>  create mode 100644
> recipes-devtools/nodejs/nodejs-18.17.1/0001-Using-native-binaries.patch
>  create mode 100644
> recipes-devtools/nodejs/nodejs-18.17.1/0001-liftoff-Correct-function-sign=
atures.patch
>  create mode 100644
> recipes-devtools/nodejs/nodejs-18.17.1/0001-mips-Use-32bit-cast-for-opera=
nd-on-mips32.patch
>  create mode 100644
> recipes-devtools/nodejs/nodejs-18.17.1/0001-ppc64-Do-not-use-mminimal-toc=
-with-clang.patch
>  create mode 100644
> recipes-devtools/nodejs/nodejs-18.17.1/0004-v8-don-t-override-ARM-CFLAGS.=
patch
>  create mode 100644 recipes-devtools/nodejs/nodejs-18.17.1/big-endian.pat=
ch
>  create mode 100644 recipes-devtools/nodejs/nodejs-18.17.1/libatomic.patc=
h
>  create mode 100644
> recipes-devtools/nodejs/nodejs-18.17.1/mips-less-memory.patch
>  create mode 100755 recipes-devtools/nodejs/nodejs-18.17.1/run-ptest
>  create mode 100644
> recipes-devtools/nodejs/nodejs-18.17.1/system-c-ares.patch
>  create mode 100644
> recipes-devtools/nodejs/nodejs-20.8.1/0001-Disable-running-gyp-files-for-=
bundled-deps.patch
>  create mode 100644
> recipes-devtools/nodejs/nodejs-20.8.1/0001-Revert-io_uring-changes-from-l=
ibuv-1.46.0.patch
>  create mode 100644
> recipes-devtools/nodejs/nodejs-20.8.1/0001-Using-native-binaries.patch
>  create mode 100644
> recipes-devtools/nodejs/nodejs-20.8.1/0001-liftoff-Correct-function-signa=
tures.patch
>  create mode 100644
> recipes-devtools/nodejs/nodejs-20.8.1/0001-ppc64-Do-not-use-mminimal-toc-=
with-clang.patch
>  create mode 100644
> recipes-devtools/nodejs/nodejs-20.8.1/0002-Revert-io_uring-changes-from-l=
ibuv-1.45.0.patch
>  create mode 100644
> recipes-devtools/nodejs/nodejs-20.8.1/0004-v8-don-t-override-ARM-CFLAGS.p=
atch
>  create mode 100644 recipes-devtools/nodejs/nodejs-20.8.1/libatomic.patch
>  create mode 100755 recipes-devtools/nodejs/nodejs-20.8.1/run-ptest
>  create mode 100644
> recipes-devtools/nodejs/nodejs-20.8.1/system-c-ares.patch
>  create mode 100755
> recipes-devtools/nodejs/nodejs-oe-cache-18.17/oe-npm-cache
>  create mode 100755
> recipes-devtools/nodejs/nodejs-oe-cache-20.5/oe-npm-cache
>  create mode 100644 recipes-devtools/nodejs/
> nodejs-oe-cache-native_18.17.bb
>  create mode 100644 recipes-devtools/nodejs/nodejs-oe-cache-native_20.5.b=
b
>  create mode 100644 recipes-devtools/nodejs/nodejs_18.17.1.bb
>  create mode 100644 recipes-devtools/nodejs/nodejs_20.8.1.bb
>
> diff --git a/COPYING.MIT b/COPYING.MIT
> new file mode 100644
> index 0000000..fb950dc
> --- /dev/null
> +++ b/COPYING.MIT
> @@ -0,0 +1,17 @@
> +Permission is hereby granted, free of charge, to any person obtaining a
> copy
> +of this software and associated documentation files (the "Software"), to
> deal
> +in the Software without restriction, including without limitation the
> rights
> +to use, copy, modify, merge, publish, distribute, sublicense, and/or sel=
l
> +copies of the Software, and to permit persons to whom the Software is
> +furnished to do so, subject to the following conditions:
> +
> +The above copyright notice and this permission notice shall be included
> in
> +all copies or substantial portions of the Software.
> +
> +THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
> OR
> +IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> +FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
> THE
> +AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> +LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
> FROM,
> +OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS I=
N
> +THE SOFTWARE.
> diff --git a/README b/README
> new file mode 100644
> index 0000000..57433de
> --- /dev/null
> +++ b/README
> @@ -0,0 +1,22 @@
> +"Mixin" layer for adding latest nodejs-18.x into the Yocto Project LTS.
> +
> +At the time Kirkstone was released in May 2022, nodejs v16 was the lates=
t
> +version and officially it's the only nodejs version supported by
> Kirkstone.
> +Kirkstone will be supported until April 2026 but nodejs-16 is EOL as of
> October
> +2023, making it unsuitable for projects during the lifetimg of Kirkstone=
.
> +
> +This mixin layer is meant to address this issue by backporting nodejs-18
> and
> +nodejs-20 versions from the mickledore and master branches of
> meta-openembedded,
> +respectively.
> +
> +The actual versions of nodejs that are available can be found by
> inspecting the
> +contents of recipes-devtools/nodejs.
> +
> +Including the layer automatically picks up the latest nodejs version;
> different
> +versions must be set explicitly by adding the following line to your
> distro
> +config or local.conf:
> +
> +NODE_VERSION =3D "20%"
> +
> +Maintainers:
> +Ant=C3=B3nio Oliveira <antonio@amsobr.com>
> diff --git a/conf/layer.conf b/conf/layer.conf
> new file mode 100644
> index 0000000..4ef1e91
> --- /dev/null
> +++ b/conf/layer.conf
> @@ -0,0 +1,20 @@
> +# We have a conf and classes directory, append to BBPATH
> +BBPATH .=3D ":${LAYERDIR}"
> +
> +# We have a recipes directory, add to BBFILES
> +BBFILES +=3D "${LAYERDIR}/recipes*/*/*.bb ${LAYERDIR}/recipes*/*/*.bbapp=
end"
> +
> +BBFILE_COLLECTIONS +=3D "lts-nodejs-mixin"
> +BBFILE_PATTERN_lts-nodejs-mixin :=3D "^${LAYERDIR}/"
> +BBFILE_PRIORITY_lts-nodejs-mixin =3D "6"
> +
> +LAYERSERIES_COMPAT_lts-nodejs-mixin =3D "kirkstone"
> +
> +LAYERDEPENDS_lts-nodejs-mixin =3D " \
> +    core \
> +"
>

Hi Antonio,

Looks like the recipe recipes-devtools/nodejs/nodejs_20.8.1.bb
have ares and brotli enabled by default in PACKAGECONFIG and they
will pull in dependencies from the openembedded-layer at
meta-openembedded/meta-oe.
So the layer 'openembedded-layer' should be also included
in LAYERDEPENDS_lts-nodejs-mixin.

+PACKAGECONFIG ??=3D "ares brotli icu zlib"
+
+PACKAGECONFIG[ares] =3D "--shared-cares,,c-ares"
+PACKAGECONFIG[brotli] =3D "--shared-brotli,,brotli"

meta-openembedded/meta-oe/recipes-extended/brotli/brotli_1.1.0.bb
meta-openembedded/meta-oe/recipes-support/c-ares/c-ares_1.22.1.bb

Jose

+
> +NODE_VERSION ??=3D "20.%"
> +
> +PREFERRED_VERSION_nodejs ??=3D "${NODE_VERSION}"
> +PREFERRED_VERSION_nodejs-oe-cache-native ??=3D "${NODE_VERSION}"
> diff --git
> a/recipes-devtools/nodejs/nodejs-18.17.1/0001-Disable-running-gyp-files-f=
or-bundled-deps.patch
> b/recipes-devtools/nodejs/nodejs-18.17.1/0001-Disable-running-gyp-files-f=
or-bundled-deps.patch
> new file mode 100644
> index 0000000..059b5cc
> --- /dev/null
> +++
> b/recipes-devtools/nodejs/nodejs-18.17.1/0001-Disable-running-gyp-files-f=
or-bundled-deps.patch
> @@ -0,0 +1,51 @@
> +From 7d94bfe53beeb2d25eb5f2ff6b1d509df7e6ab80 Mon Sep 17 00:00:00 2001
> +From: Zuzana Svetlikova <zsvetlik@redhat.com>
> +Date: Thu, 27 Apr 2017 14:25:42 +0200
> +Subject: [PATCH] Disable running gyp on shared deps
> +
> +Upstream-Status: Inappropriate [embedded specific]
> +
> +Probably imported from:
> +
> https://src.fedoraproject.org/rpms/nodejs/c/41af04f2a3c050fb44628e91ac65f=
d225b927acb?branch=3D22609d8c1bfeaa21fe0057645af20b3a2ccc7f53
> +which is probably based on dont-run-gyp-files-for-bundled-deps.patch
> added in:
> +
> https://github.com/alpinelinux/aports/commit/6662eb3199902e8451fb20dce825=
54ad96f796bb
> +
> +We also explicitly prune some dependencies from source in the bitbake
> recipe:
> +
> +python prune_sources() {
> +    import shutil
> +
> +    shutil.rmtree(d.getVar('S') + '/deps/openssl')
> +    if 'ares' in d.getVar('PACKAGECONFIG'):
> +        shutil.rmtree(d.getVar('S') + '/deps/cares')
> +    if 'brotli' in d.getVar('PACKAGECONFIG'):
> +        shutil.rmtree(d.getVar('S') + '/deps/brotli')
> +    if 'libuv' in d.getVar('PACKAGECONFIG'):
> +        shutil.rmtree(d.getVar('S') + '/deps/uv')
> +    if 'nghttp2' in d.getVar('PACKAGECONFIG'):
> +        shutil.rmtree(d.getVar('S') + '/deps/nghttp2')
> +    if 'zlib' in d.getVar('PACKAGECONFIG'):
> +        shutil.rmtree(d.getVar('S') + '/deps/zlib')
> +}
> +do_unpack[postfuncs] +=3D "prune_sources"
> +
> +Signed-off-by: Archana Polampalli <archana.polampalli@windriver.com>
> +---
> + Makefile | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +diff --git a/Makefile b/Makefile
> +index 0be0659d..3c442014 100644
> +--- a/Makefile
> ++++ b/Makefile
> +@@ -169,7 +169,7 @@ with-code-cache test-code-cache:
> +       $(warning '$@' target is a noop)
> +
> + out/Makefile: config.gypi common.gypi node.gyp \
> +-      deps/uv/uv.gyp deps/llhttp/llhttp.gyp deps/zlib/zlib.gyp \
> ++      deps/llhttp/llhttp.gyp \
> +       deps/simdutf/simdutf.gyp deps/ada/ada.gyp \
> +       tools/v8_gypfiles/toolchain.gypi tools/v8_gypfiles/features.gypi =
\
> +       tools/v8_gypfiles/inspector.gypi tools/v8_gypfiles/v8.gyp
> +--
> +2.40.0
> diff --git
> a/recipes-devtools/nodejs/nodejs-18.17.1/0001-Using-native-binaries.patch
> b/recipes-devtools/nodejs/nodejs-18.17.1/0001-Using-native-binaries.patch
> new file mode 100644
> index 0000000..66e10a0
> --- /dev/null
> +++
> b/recipes-devtools/nodejs/nodejs-18.17.1/0001-Using-native-binaries.patch
> @@ -0,0 +1,77 @@
> +From 6c3ac20477a4bac643088f24df3c042e627fafa9 Mon Sep 17 00:00:00 2001
> +From: Guillaume Burel <guillaume.burel@stormshield.eu>
> +Date: Fri, 3 Jan 2020 11:25:54 +0100
> +Subject: [PATCH] Using native binaries
> +
> +Upstream-Status: Inappropriate [embedded specific]
> +
> +Originally added in:
> +
> https://git.openembedded.org/meta-openembedded/commit/?id=3D1c8e4a679ae38=
2f953b2e5c7a4966a4646314f3e
> +later extended and renamed in:
> +
> https://git.openembedded.org/meta-openembedded/commit/?id=3Dfeeb172d1a8bf=
010490d22b8df9448b20d9d2aed
> +
> +Signed-off-by: Archana Polampalli <archana.polampalli@windriver.com>
> +---
> + node.gyp                 | 1 +
> + tools/v8_gypfiles/v8.gyp | 5 +++++
> + 2 files changed, 6 insertions(+)
> +
> +diff --git a/node.gyp b/node.gyp
> +index e8e1d9f9..e60ccc10 100644
> +--- a/node.gyp
> ++++ b/node.gyp
> +@@ -320,6 +320,7 @@
> +                   'action_name': 'node_mksnapshot',
> +                   'process_outputs_as_sources': 1,
> +                   'inputs': [
> ++                    '<(PRODUCT_DIR)/v8-qemu-wrapper.sh',
> +                     '<(node_mksnapshot_exec)',
> +                     '<(node_snapshot_main)',
> +                   ],
> +diff --git a/tools/v8_gypfiles/v8.gyp b/tools/v8_gypfiles/v8.gyp
> +index 42e26cd9..bc721991 100644
> +--- a/tools/v8_gypfiles/v8.gyp
> ++++ b/tools/v8_gypfiles/v8.gyp
> +@@ -68,6 +68,7 @@
> +         {
> +           'action_name': 'run_torque_action',
> +           'inputs': [  # Order matters.
> ++            '<(PRODUCT_DIR)/v8-qemu-wrapper.sh',
> +
>  '<(PRODUCT_DIR)/<(EXECUTABLE_PREFIX)torque<(EXECUTABLE_SUFFIX)',
> +             '<@(torque_files)',
> +           ],
> +@@ -99,6 +100,7 @@
> +             '<@(torque_outputs_inc)',
> +           ],
> +           'action': [
> ++            '<(PRODUCT_DIR)/v8-qemu-wrapper.sh',
> +
>  '<(PRODUCT_DIR)/<(EXECUTABLE_PREFIX)torque<(EXECUTABLE_SUFFIX)',
> +             '-o', '<(SHARED_INTERMEDIATE_DIR)/torque-generated',
> +             '-v8-root', '<(V8_ROOT)',
> +@@ -211,6 +213,7 @@
> +         {
> +           'action_name': 'generate_bytecode_builtins_list_action',
> +           'inputs': [
> ++            '<(PRODUCT_DIR)/v8-qemu-wrapper.sh',
> +
>  '<(PRODUCT_DIR)/<(EXECUTABLE_PREFIX)bytecode_builtins_list_generator<(EX=
ECUTABLE_SUFFIX)',
> +           ],
> +           'outputs': [
> +@@ -400,6 +403,7 @@
> +             ],
> +           },
> +           'inputs': [
> ++            '<(PRODUCT_DIR)/v8-qemu-wrapper.sh',
> +             '<(mksnapshot_exec)',
> +           ],
> +           'outputs': [
> +@@ -1539,6 +1543,7 @@
> +         {
> +           'action_name': 'run_gen-regexp-special-case_action',
> +           'inputs': [
> ++            '<(PRODUCT_DIR)/v8-qemu-wrapper.sh',
> +
>  '<(PRODUCT_DIR)/<(EXECUTABLE_PREFIX)gen-regexp-special-case<(EXECUTABLE_=
SUFFIX)',
> +           ],
> +           'outputs': [
> +--
> +2.34.1
> +
> diff --git
> a/recipes-devtools/nodejs/nodejs-18.17.1/0001-liftoff-Correct-function-si=
gnatures.patch
> b/recipes-devtools/nodejs/nodejs-18.17.1/0001-liftoff-Correct-function-si=
gnatures.patch
> new file mode 100644
> index 0000000..c9a522d
> --- /dev/null
> +++
> b/recipes-devtools/nodejs/nodejs-18.17.1/0001-liftoff-Correct-function-si=
gnatures.patch
> @@ -0,0 +1,85 @@
> +From dc3652c0abcdf8573fd044907b19d8eda7ca1124 Mon Sep 17 00:00:00 2001
> +From: Khem Raj <raj.khem@gmail.com>
> +Date: Wed, 20 Oct 2021 12:49:58 -0700
> +Subject: [PATCH] [liftoff] Correct function signatures
> +
> +Fixes builds on mips where clang reports an error
> +../deps/v8/src/wasm/baseline/mips/liftoff-assembler-mips.h:661:5: error:
> no matching member function for call to 'Move'
> +    Move(tmp, src, type.value_type());
> +    ^~~~
> +
> +Upstream-Status: Submitted [
> https://chromium-review.googlesource.com/c/v8/v8/+/3235674]
> +
> +Signed-off-by: Archana Polampalli <archana.polampalli@windriver.com>
> +---
> + deps/v8/src/wasm/baseline/liftoff-assembler.h               | 6 +++---
> + deps/v8/src/wasm/baseline/mips/liftoff-assembler-mips.h     | 2 +-
> + deps/v8/src/wasm/baseline/mips64/liftoff-assembler-mips64.h | 2 +-
> + .../src/wasm/baseline/riscv64/liftoff-assembler-riscv64.h   | 2 +-
> + 4 files changed, 6 insertions(+), 6 deletions(-)
> +
> +diff --git a/deps/v8/src/wasm/baseline/liftoff-assembler.h
> b/deps/v8/src/wasm/baseline/liftoff-assembler.h
> +index 22c7f73a..db4cb168 100644
> +--- a/deps/v8/src/wasm/baseline/liftoff-assembler.h
> ++++ b/deps/v8/src/wasm/baseline/liftoff-assembler.h
> +@@ -646,7 +646,7 @@ class LiftoffAssembler : public TurboAssembler {
> +   void FinishCall(const ValueKindSig*, compiler::CallDescriptor*);
> +
> +   // Move {src} into {dst}. {src} and {dst} must be different.
> +-  void Move(LiftoffRegister dst, LiftoffRegister src, ValueKind);
> ++  void Move(LiftoffRegister dst, LiftoffRegister src, ValueKind kind);
> +
> +   // Parallel register move: For a list of tuples <dst, src, kind>, mov=
e
> the
> +   // {src} register of kind {kind} into {dst}. If {src} equals {dst},
> ignore
> +@@ -795,8 +795,8 @@ class LiftoffAssembler : public TurboAssembler {
> +   inline void MoveStackValue(uint32_t dst_offset, uint32_t src_offset,
> +                              ValueKind);
> +
> +-  inline void Move(Register dst, Register src, ValueKind);
> +-  inline void Move(DoubleRegister dst, DoubleRegister src, ValueKind);
> ++  inline void Move(Register dst, Register src, ValueKind kind);
> ++  inline void Move(DoubleRegister dst, DoubleRegister src, ValueKind
> kind);
> +
> +   inline void Spill(int offset, LiftoffRegister, ValueKind);
> +   inline void Spill(int offset, WasmValue);
> +diff --git a/deps/v8/src/wasm/baseline/mips/liftoff-assembler-mips.h
> b/deps/v8/src/wasm/baseline/mips/liftoff-assembler-mips.h
> +index c76fd2f4..0fffe231 100644
> +--- a/deps/v8/src/wasm/baseline/mips/liftoff-assembler-mips.h
> ++++ b/deps/v8/src/wasm/baseline/mips/liftoff-assembler-mips.h
> +@@ -661,7 +661,7 @@ void LiftoffAssembler::Store(Register dst_addr,
> Register offset_reg,
> +     pinned =3D pinned | LiftoffRegList{dst_op.rm(), src};
> +     LiftoffRegister tmp =3D GetUnusedRegister(src.reg_class(), pinned);
> +     // Save original value.
> +-    Move(tmp, src, type.value_type());
> ++    Move(tmp, src, type.value_type().kind());
> +
> +     src =3D tmp;
> +     pinned.set(tmp);
> +diff --git a/deps/v8/src/wasm/baseline/mips64/liftoff-assembler-mips64.h
> b/deps/v8/src/wasm/baseline/mips64/liftoff-assembler-mips64.h
> +index 36413545..48207337 100644
> +--- a/deps/v8/src/wasm/baseline/mips64/liftoff-assembler-mips64.h
> ++++ b/deps/v8/src/wasm/baseline/mips64/liftoff-assembler-mips64.h
> +@@ -593,7 +593,7 @@ void LiftoffAssembler::Store(Register dst_addr,
> Register offset_reg,
> +     pinned.set(dst_op.rm());
> +     LiftoffRegister tmp =3D GetUnusedRegister(src.reg_class(), pinned);
> +     // Save original value.
> +-    Move(tmp, src, type.value_type());
> ++    Move(tmp, src, type.value_type().kind());
> +
> +     src =3D tmp;
> +     pinned.set(tmp);
> +diff --git
> a/deps/v8/src/wasm/baseline/riscv64/liftoff-assembler-riscv64.h
> b/deps/v8/src/wasm/baseline/riscv64/liftoff-assembler-riscv64.h
> +index 642a7d2a..56ffcc2a 100644
> +--- a/deps/v8/src/wasm/baseline/riscv64/liftoff-assembler-riscv64.h
> ++++ b/deps/v8/src/wasm/baseline/riscv64/liftoff-assembler-riscv64.h
> +@@ -589,7 +589,7 @@ void LiftoffAssembler::Store(Register dst_addr,
> Register offset_reg,
> +     pinned.set(dst_op.rm());
> +     LiftoffRegister tmp =3D GetUnusedRegister(src.reg_class(), pinned);
> +     // Save original value.
> +-    Move(tmp, src, type.value_type());
> ++    Move(tmp, src, type.value_type().kind());
> +
> +     src =3D tmp;
> +     pinned.set(tmp);
> +--
> +2.34.1
> diff --git
> a/recipes-devtools/nodejs/nodejs-18.17.1/0001-mips-Use-32bit-cast-for-ope=
rand-on-mips32.patch
> b/recipes-devtools/nodejs/nodejs-18.17.1/0001-mips-Use-32bit-cast-for-ope=
rand-on-mips32.patch
> new file mode 100644
> index 0000000..a0242d8
> --- /dev/null
> +++
> b/recipes-devtools/nodejs/nodejs-18.17.1/0001-mips-Use-32bit-cast-for-ope=
rand-on-mips32.patch
> @@ -0,0 +1,34 @@
> +From e65dde8db17da5acddeef7eb9316199c4e5e0811 Mon Sep 17 00:00:00 2001
> +From: Khem Raj <raj.khem@gmail.com>
> +Date: Tue, 19 Apr 2022 12:40:25 -0700
> +Subject: [PATCH] mips: Use 32bit cast for operand on mips32
> +
> +Fixes
> +deps/v8/src/compiler/backend/mips/code-generator-mips.cc: In member
> function 'void
> v8::internal::compiler::CodeGenerator::AssembleReturn(v8::internal::compi=
ler::InstructionOperand*)':
> +../deps/v8/src/compiler/backend/mips/code-generator-mips.cc:4233:48:
> error: call of overloaded 'Operand(int64_t)' is ambiguous
> + 4233 |                 Operand(static_cast<int64_t>(0)));
> +      |                                                ^
> +
> +Upstream-Status: Pending
> +
> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
> +---
> + deps/v8/src/compiler/backend/mips/code-generator-mips.cc | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +diff --git a/deps/v8/src/compiler/backend/mips/code-generator-mips.cc
> b/deps/v8/src/compiler/backend/mips/code-generator-mips.cc
> +index 2b8197e..b226140 100644
> +--- a/deps/v8/src/compiler/backend/mips/code-generator-mips.cc
> ++++ b/deps/v8/src/compiler/backend/mips/code-generator-mips.cc
> +@@ -4230,7 +4230,7 @@ void
> CodeGenerator::AssembleReturn(InstructionOperand* additional_pop_count) {
> +     } else if (FLAG_debug_code) {
> +       __ Assert(eq, AbortReason::kUnexpectedAdditionalPopValue,
> +                 g.ToRegister(additional_pop_count),
> +-                Operand(static_cast<int64_t>(0)));
> ++                Operand(static_cast<int32_t>(0)));
> +     }
> +   }
> +   // Functions with JS linkage have at least one parameter (the
> receiver).
> +--
> +2.36.0
> +
> diff --git
> a/recipes-devtools/nodejs/nodejs-18.17.1/0001-ppc64-Do-not-use-mminimal-t=
oc-with-clang.patch
> b/recipes-devtools/nodejs/nodejs-18.17.1/0001-ppc64-Do-not-use-mminimal-t=
oc-with-clang.patch
> new file mode 100644
> index 0000000..4773f05
> --- /dev/null
> +++
> b/recipes-devtools/nodejs/nodejs-18.17.1/0001-ppc64-Do-not-use-mminimal-t=
oc-with-clang.patch
> @@ -0,0 +1,23 @@
> +From 0976af0f3b328436ea44a74a406f311adb2ab211 Mon Sep 17 00:00:00 2001
> +From: Khem Raj <raj.khem@gmail.com>
> +Date: Tue, 15 Jun 2021 19:01:31 -0700
> +Subject: [PATCH] ppc64: Do not use -mminimal-toc with clang
> +
> +clang does not support this option
> +
> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
> +---
> + common.gypi | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +--- a/common.gypi
> ++++ b/common.gypi
> +@@ -417,7 +417,7 @@
> +             'ldflags': [ '-m32' ],
> +           }],
> +           [ 'target_arch=3D=3D"ppc64" and OS!=3D"aix"', {
> +-            'cflags': [ '-m64', '-mminimal-toc' ],
> ++            'cflags': [ '-m64' ],
> +             'ldflags': [ '-m64' ],
> +           }],
> +           [ 'target_arch=3D=3D"s390x"', {
> diff --git
> a/recipes-devtools/nodejs/nodejs-18.17.1/0004-v8-don-t-override-ARM-CFLAG=
S.patch
> b/recipes-devtools/nodejs/nodejs-18.17.1/0004-v8-don-t-override-ARM-CFLAG=
S.patch
> new file mode 100644
> index 0000000..97ed972
> --- /dev/null
> +++
> b/recipes-devtools/nodejs/nodejs-18.17.1/0004-v8-don-t-override-ARM-CFLAG=
S.patch
> @@ -0,0 +1,102 @@
> +From 47ee5cc5501289205d3e8e9f27ea9daf18cebac1 Mon Sep 17 00:00:00 2001
> +From: =3D?UTF-8?q?Andr=3DC3=3DA9=3D20Draszik?=3D <git@andred.net>
> +Date: Sat, 9 Nov 2019 14:45:30 +0000
> +Subject: [PATCH] v8: don't override ARM CFLAGS
> +MIME-Version: 1.0
> +Content-Type: text/plain; charset=3DUTF-8
> +Content-Transfer-Encoding: 8bit
> +
> +This overrides yocto-provided build flags with its own, e.g we get
> +    arm-poky-linux-musleabi-g++  -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard
> -mcpu=3Dcortex-a7 \
> +                                 ... \
> +                                  -march=3Darmv7-a -mfpu=3Dneon
> -mfloat-abi=3Dhard -marm
> +
> +Causing the latter to override the former, and compiler warnings:
> +    cc1plus: warning: switch '-mcpu=3Dcortex-a7' conflicts with
> '-march=3Darmv7-a' switch
> +
> +Patch this out, so that yocto-provided flags take precedence.
> +Note that in reality the same should probably be done for all the other
> +supported architectures, too.
> +
> +Note that this also switches to Thumb(2) mode (in my case). No obvious
> +problems have been noted during compilation or runtime.
> +
> +Upstream-Status: Inappropriate [oe-specific]
> +Signed-off-by: Andr=C3=A9 Draszik <git@andred.net>
> +---
> + tools/v8_gypfiles/toolchain.gypi | 52 ++------------------------------
> + 1 file changed, 2 insertions(+), 50 deletions(-)
> +
> +diff --git a/tools/v8_gypfiles/toolchain.gypi
> b/tools/v8_gypfiles/toolchain.gypi
> +index 264b3e478e..0b41848145 100644
> +--- a/tools/v8_gypfiles/toolchain.gypi
> ++++ b/tools/v8_gypfiles/toolchain.gypi
> +@@ -211,31 +211,7 @@
> +         'target_conditions': [
> +           ['_toolset=3D=3D"host"', {
> +             'conditions': [
> +-              ['v8_target_arch=3D=3Dhost_arch', {
> +-                # Host built with an Arm CXX compiler.
> +-                'conditions': [
> +-                  [ 'arm_version=3D=3D7', {
> +-                    'cflags': ['-march=3Darmv7-a',],
> +-                  }],
> +-                  [ 'arm_version=3D=3D7 or arm_version=3D=3D"default"',=
 {
> +-                    'conditions': [
> +-                      [ 'arm_fpu!=3D"default"', {
> +-                        'cflags': ['-mfpu=3D<(arm_fpu)',],
> +-                      }],
> +-                    ],
> +-                  }],
> +-                  [ 'arm_float_abi!=3D"default"', {
> +-                    'cflags': ['-mfloat-abi=3D<(arm_float_abi)',],
> +-                  }],
> +-                  [ 'arm_thumb=3D=3D1', {
> +-                    'cflags': ['-mthumb',],
> +-                  }],
> +-                  [ 'arm_thumb=3D=3D0', {
> +-                    'cflags': ['-marm',],
> +-                  }],
> +-                ],
> +-              }, {
> +-                # 'v8_target_arch!=3Dhost_arch'
> ++              ['v8_target_arch!=3Dhost_arch', {
> +                 # Host not built with an Arm CXX compiler (simulator
> build).
> +                 'conditions': [
> +                   [ 'arm_float_abi=3D=3D"hard"', {
> +@@ -254,31 +230,7 @@
> +           }],  # _toolset=3D=3D"host"
> +           ['_toolset=3D=3D"target"', {
> +             'conditions': [
> +-              ['v8_target_arch=3D=3Dtarget_arch', {
> +-                # Target built with an Arm CXX compiler.
> +-                'conditions': [
> +-                  [ 'arm_version=3D=3D7', {
> +-                    'cflags': ['-march=3Darmv7-a',],
> +-                  }],
> +-                  [ 'arm_version=3D=3D7 or arm_version=3D=3D"default"',=
 {
> +-                    'conditions': [
> +-                      [ 'arm_fpu!=3D"default"', {
> +-                        'cflags': ['-mfpu=3D<(arm_fpu)',],
> +-                      }],
> +-                    ],
> +-                  }],
> +-                  [ 'arm_float_abi!=3D"default"', {
> +-                    'cflags': ['-mfloat-abi=3D<(arm_float_abi)',],
> +-                  }],
> +-                  [ 'arm_thumb=3D=3D1', {
> +-                    'cflags': ['-mthumb',],
> +-                  }],
> +-                  [ 'arm_thumb=3D=3D0', {
> +-                    'cflags': ['-marm',],
> +-                  }],
> +-                ],
> +-              }, {
> +-                # 'v8_target_arch!=3Dtarget_arch'
> ++              ['v8_target_arch!=3Dtarget_arch', {
> +                 # Target not built with an Arm CXX compiler (simulator
> build).
> +                 'conditions': [
> +                   [ 'arm_float_abi=3D=3D"hard"', {
> +--
> +2.20.1
> +
> diff --git a/recipes-devtools/nodejs/nodejs-18.17.1/big-endian.patch
> b/recipes-devtools/nodejs/nodejs-18.17.1/big-endian.patch
> new file mode 100644
> index 0000000..5293818
> --- /dev/null
> +++ b/recipes-devtools/nodejs/nodejs-18.17.1/big-endian.patch
> @@ -0,0 +1,18 @@
> +
> +https://github.com/v8/v8/commit/878ccb33bd3cf0e6dc018ff8d15843f585ac07be
> +
> +did some automated cleanups but it missed big-endian code.
> +
> +Upstream-Status: Pending
> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
> +--- a/deps/v8/src/runtime/runtime-utils.h
> ++++ b/deps/v8/src/runtime/runtime-utils.h
> +@@ -126,7 +126,7 @@ static inline ObjectPair MakePair(Object
> + #if defined(V8_TARGET_LITTLE_ENDIAN)
> +   return x.ptr() | (static_cast<ObjectPair>(y.ptr()) << 32);
> + #elif defined(V8_TARGET_BIG_ENDIAN)
> +-  return y->ptr() | (static_cast<ObjectPair>(x->ptr()) << 32);
> ++  return y.ptr() | (static_cast<ObjectPair>(x.ptr()) << 32);
> + #else
> + #error Unknown endianness
> + #endif
> diff --git a/recipes-devtools/nodejs/nodejs-18.17.1/libatomic.patch
> b/recipes-devtools/nodejs/nodejs-18.17.1/libatomic.patch
> new file mode 100644
> index 0000000..cb02373
> --- /dev/null
> +++ b/recipes-devtools/nodejs/nodejs-18.17.1/libatomic.patch
> @@ -0,0 +1,21 @@
> +Link mksnapshot with libatomic on x86
> +
> +Clang-12 on x86 emits atomic builtins
> +
> +Fixes
> +|
> module-compiler.cc:(.text._ZN2v88internal4wasm12_GLOBAL__N_123ExecuteComp=
ilationUnitsERKSt10shared_ptrINS2_22BackgroundCompileTokenEEPNS0_8CountersE=
iNS2_19CompileBaselineOnlyE+0x558):
> un
> +defined reference to `__atomic_load'
> +
> +Upstream-Status: Pending
> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
> +
> +--- a/tools/v8_gypfiles/v8.gyp
> ++++ b/tools/v8_gypfiles/v8.gyp
> +@@ -1436,6 +1436,7 @@
> +     {
> +       'target_name': 'mksnapshot',
> +       'type': 'executable',
> ++      'libraries': [ '-latomic' ],
> +       'dependencies': [
> +         'v8_base_without_compiler',
> +         'v8_compiler_for_mksnapshot',
> diff --git a/recipes-devtools/nodejs/nodejs-18.17.1/mips-less-memory.patc=
h
> b/recipes-devtools/nodejs/nodejs-18.17.1/mips-less-memory.patch
> new file mode 100644
> index 0000000..16776cb
> --- /dev/null
> +++ b/recipes-devtools/nodejs/nodejs-18.17.1/mips-less-memory.patch
> @@ -0,0 +1,37 @@
> +Description: mksnapshot uses too much memory on 32-bit mipsel
> +Author: J=C3=A9r=C3=A9my Lal <kapouer@melix.org>
> +Last-Update: 2020-06-03
> +Forwarded: https://bugs.chromium.org/p/v8/issues/detail?id=3D10586
> +
> +This ensures that we reserve 500M instead of 2G range for codegen
> +ensures that qemu-mips can allocate such large ranges
> +
> +Upstream-Status: Inappropriate [embedded specific]
> +
> +Imported from debian
> https://salsa.debian.org/js-team/nodejs/-/blob/master-12.x/debian/patches=
/mips-less-memory.patch
> +
> https://buildd.debian.org/status/fetch.php?pkg=3Dnodejs&arch=3Dmipsel&ver=
=3D12.17.0~dfsg-2&stamp=3D1591050388&raw=3D0
> +
> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
> +
> +--- a/deps/v8/src/common/globals.h
> ++++ b/deps/v8/src/common/globals.h
> +@@ -224,7 +224,7 @@ constexpr size_t kMinimumCodeRangeSize =3D
> + constexpr size_t kMinExpectedOSPageSize =3D 64 * KB;  // OS page on PPC
> Linux
> + #elif V8_TARGET_ARCH_MIPS
> + constexpr bool kPlatformRequiresCodeRange =3D false;
> +-constexpr size_t kMaximalCodeRangeSize =3D 2048LL * MB;
> ++constexpr size_t kMaximalCodeRangeSize =3D 512 * MB;
> + constexpr size_t kMinimumCodeRangeSize =3D 0 * MB;
> + constexpr size_t kMinExpectedOSPageSize =3D 4 * KB;  // OS page.
> + #else
> +--- a/deps/v8/src/codegen/mips/constants-mips.h
> ++++ b/deps/v8/src/codegen/mips/constants-mips.h
> +@@ -140,7 +140,7 @@ const uint32_t kLeastSignificantByteInIn
> + namespace v8 {
> + namespace internal {
> +
> +-constexpr size_t kMaxPCRelativeCodeRangeInMB =3D 4096;
> ++constexpr size_t kMaxPCRelativeCodeRangeInMB =3D 1024;
> +
> + //
> -------------------------------------------------------------------------=
----
> + // Registers and FPURegisters.
> diff --git a/recipes-devtools/nodejs/nodejs-18.17.1/run-ptest
> b/recipes-devtools/nodejs/nodejs-18.17.1/run-ptest
> new file mode 100755
> index 0000000..07a8f2a
> --- /dev/null
> +++ b/recipes-devtools/nodejs/nodejs-18.17.1/run-ptest
> @@ -0,0 +1,3 @@
> +#!/bin/sh
> +
> +./cctest
> diff --git a/recipes-devtools/nodejs/nodejs-18.17.1/system-c-ares.patch
> b/recipes-devtools/nodejs/nodejs-18.17.1/system-c-ares.patch
> new file mode 100644
> index 0000000..141889a
> --- /dev/null
> +++ b/recipes-devtools/nodejs/nodejs-18.17.1/system-c-ares.patch
> @@ -0,0 +1,24 @@
> +keep nodejs compatible with c-ares 1.17.1
> +
> +Upstream-Status: Inappropriate [c-ares specific]
> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
> +
> +--- a/src/cares_wrap.h
> ++++ b/src/cares_wrap.h
> +@@ -22,7 +22,15 @@
> + # include <netdb.h>
> + #endif  // __POSIX__
> +
> +-# include <ares_nameser.h>
> ++#if defined(__ANDROID__) || \
> ++    defined(__MINGW32__) || \
> ++    defined(__OpenBSD__) || \
> ++    defined(_MSC_VER)
> ++
> ++# include <nameser.h>
> ++#else
> ++# include <arpa/nameser.h>
> ++#endif
> +
> + namespace node {
> + namespace cares_wrap {
> diff --git
> a/recipes-devtools/nodejs/nodejs-20.8.1/0001-Disable-running-gyp-files-fo=
r-bundled-deps.patch
> b/recipes-devtools/nodejs/nodejs-20.8.1/0001-Disable-running-gyp-files-fo=
r-bundled-deps.patch
> new file mode 100644
> index 0000000..12f6cd8
> --- /dev/null
> +++
> b/recipes-devtools/nodejs/nodejs-20.8.1/0001-Disable-running-gyp-files-fo=
r-bundled-deps.patch
> @@ -0,0 +1,46 @@
> +From 7d94bfe53beeb2d25eb5f2ff6b1d509df7e6ab80 Mon Sep 17 00:00:00 2001
> +From: Zuzana Svetlikova <zsvetlik@redhat.com>
> +Date: Thu, 27 Apr 2017 14:25:42 +0200
> +Subject: [PATCH] Disable running gyp on shared deps
> +
> +Upstream-Status: Inappropriate [embedded specific]
> +
> +Probably imported from:
> +
> https://src.fedoraproject.org/rpms/nodejs/c/41af04f2a3c050fb44628e91ac65f=
d225b927acb?branch=3D22609d8c1bfeaa21fe0057645af20b3a2ccc7f53
> +which is probably based on dont-run-gyp-files-for-bundled-deps.patch
> added in:
> +
> https://github.com/alpinelinux/aports/commit/6662eb3199902e8451fb20dce825=
54ad96f796bb
> +
> +We also explicitly prune some dependencies from source in the bitbake
> recipe:
> +
> +python prune_sources() {
> +    import shutil
> +
> +    shutil.rmtree(d.getVar('S') + '/deps/openssl')
> +    if 'ares' in d.getVar('PACKAGECONFIG'):
> +        shutil.rmtree(d.getVar('S') + '/deps/cares')
> +    if 'brotli' in d.getVar('PACKAGECONFIG'):
> +        shutil.rmtree(d.getVar('S') + '/deps/brotli')
> +    if 'libuv' in d.getVar('PACKAGECONFIG'):
> +        shutil.rmtree(d.getVar('S') + '/deps/uv')
> +    if 'nghttp2' in d.getVar('PACKAGECONFIG'):
> +        shutil.rmtree(d.getVar('S') + '/deps/nghttp2')
> +    if 'zlib' in d.getVar('PACKAGECONFIG'):
> +        shutil.rmtree(d.getVar('S') + '/deps/zlib')
> +}
> +do_unpack[postfuncs] +=3D "prune_sources"
> +
> +---
> + Makefile | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +--- a/Makefile
> ++++ b/Makefile
> +@@ -169,7 +169,7 @@ with-code-cache test-code-cache:
> +       $(warning '$@' target is a noop)
> +
> + out/Makefile: config.gypi common.gypi node.gyp \
> +-      deps/uv/uv.gyp deps/llhttp/llhttp.gyp deps/zlib/zlib.gyp \
> ++      deps/llhttp/llhttp.gyp \
> +       deps/simdutf/simdutf.gyp deps/ada/ada.gyp \
> +       tools/v8_gypfiles/toolchain.gypi tools/v8_gypfiles/features.gypi =
\
> +       tools/v8_gypfiles/inspector.gypi tools/v8_gypfiles/v8.gyp
> diff --git
> a/recipes-devtools/nodejs/nodejs-20.8.1/0001-Revert-io_uring-changes-from=
-libuv-1.46.0.patch
> b/recipes-devtools/nodejs/nodejs-20.8.1/0001-Revert-io_uring-changes-from=
-libuv-1.46.0.patch
> new file mode 100644
> index 0000000..d98463d
> --- /dev/null
> +++
> b/recipes-devtools/nodejs/nodejs-20.8.1/0001-Revert-io_uring-changes-from=
-libuv-1.46.0.patch
> @@ -0,0 +1,3414 @@
> +From 937dfa70104b7401a7570a98cf6e0a534e250557 Mon Sep 17 00:00:00 2001
> +From: Martin Jansa <martin.jansa@gmail.com>
> +Date: Wed, 18 Oct 2023 22:43:55 +0200
> +Subject: [PATCH] Revert io_uring changes from libuv-1.46.0
> +
> +Included in nodejs-20.4.0 with the libuv upgrade to 1.46.0 in:
> +
> https://github.com/nodejs/node/commit/6199e1946c9abd59bd71a61870a4f6c85e1=
00b18
> +
> +Revert "linux: work around io_uring IORING_OP_CLOSE bug (#4059)"
> +This reverts commit 1752791c9ea89dbf54e2a20a9d9f899119a2d179.
> +Revert "linux: fs_read to use io_uring if iovcnt > IOV_MAX (#4023)"
> +This reverts commit e7b96331703e929e75d93c574573c9736e34b0c0.
> +Revert "linux: add some more iouring backed fs ops (#4012)"
> +This reverts commit 962b8e626ceaaf296eecab1d008e8b70dc6da5e7.
> +Revert "android: disable io_uring support (#4016)"
> +This reverts commit 281e6185cc9e77c582ff6ca9e4c00d57e6b90d95.
> +Revert "unix,win: replace QUEUE with struct uv__queue (#4022)"
> +This reverts commit 1b01b786c0180d29f07dccbb98001a2b3148828a.
> +Revert "fs: use WTF-8 on Windows (#2970)"
> +This reverts commit 8f32a14afaaa47514a7d28e1e069a8329e2dd939.
> +
> +Dropped deps/uv/docs deps/uv/test changes as these dirs aren't included
> +in nodejs tarballs.
> +
> +Signed-off-by: Martin Jansa <martin.jansa@gmail.com>
> +---
> +Upstream-Status: Inappropriate [OE specific]
> +
> + deps/uv/include/uv.h                     |  10 +-
> + deps/uv/include/uv/darwin.h              |   6 +-
> + deps/uv/include/uv/linux.h               |   2 +-
> + deps/uv/include/uv/threadpool.h          |   2 +-
> + deps/uv/include/uv/unix.h                |  44 ++--
> + deps/uv/include/uv/win.h                 |   4 +-
> + deps/uv/src/queue.h                      | 154 ++++++-----
> + deps/uv/src/threadpool.c                 |  72 +++---
> + deps/uv/src/unix/aix.c                   |  14 +-
> + deps/uv/src/unix/async.c                 |  52 ++--
> + deps/uv/src/unix/core.c                  |  53 ++--
> + deps/uv/src/unix/fs.c                    |  41 +--
> + deps/uv/src/unix/fsevents.c              |  84 +++---
> + deps/uv/src/unix/internal.h              |  11 -
> + deps/uv/src/unix/kqueue.c                |  18 +-
> + deps/uv/src/unix/linux.c                 | 257 +++----------------
> + deps/uv/src/unix/loop-watcher.c          |  20 +-
> + deps/uv/src/unix/loop.c                  |  28 +-
> + deps/uv/src/unix/os390-syscalls.c        |  24 +-
> + deps/uv/src/unix/os390-syscalls.h        |   2 +-
> + deps/uv/src/unix/os390.c                 |  14 +-
> + deps/uv/src/unix/pipe.c                  |   2 +-
> + deps/uv/src/unix/posix-poll.c            |  14 +-
> + deps/uv/src/unix/process.c               |  38 +--
> + deps/uv/src/unix/signal.c                |   8 +-
> + deps/uv/src/unix/stream.c                |  56 ++--
> + deps/uv/src/unix/sunos.c                 |  18 +-
> + deps/uv/src/unix/tcp.c                   |   4 +-
> + deps/uv/src/unix/tty.c                   |   2 +-
> + deps/uv/src/unix/udp.c                   |  76 +++---
> + deps/uv/src/uv-common.c                  |  28 +-
> + deps/uv/src/uv-common.h                  |   3 +-
> + deps/uv/src/win/core.c                   |   6 +-
> + deps/uv/src/win/fs.c                     | 311 ++++++++---------------
> + deps/uv/src/win/handle-inl.h             |   2 +-
> + deps/uv/src/win/pipe.c                   |  26 +-
> + deps/uv/src/win/tcp.c                    |   4 +-
> + deps/uv/src/win/udp.c                    |   4 +-
> + deps/uv/test/test-fs.c                   |  53 ----
> + deps/uv/test/test-list.h                 |   2 -
> + deps/uv/test/test-queue-foreach-delete.c |   5 +-
> + deps/uv/test/test-threadpool-cancel.c    |   5 -
> + 42 files changed, 625 insertions(+), 954 deletions(-)
> +
> +diff --git a/deps/uv/include/uv.h b/deps/uv/include/uv.h
> +index 02397dd0fdd..1af95289776 100644
> +--- a/deps/uv/include/uv.h
> ++++ b/deps/uv/include/uv.h
> +@@ -59,12 +59,6 @@ extern "C" {
> + #include <stdio.h>
> + #include <stdint.h>
> +
> +-/* Internal type, do not use. */
> +-struct uv__queue {
> +-  struct uv__queue* next;
> +-  struct uv__queue* prev;
> +-};
> +-
> + #if defined(_WIN32)
> + # include "uv/win.h"
> + #else
> +@@ -466,7 +460,7 @@ struct uv_shutdown_s {
> +   uv_handle_type type;
>       \
> +   /* private */
>      \
> +   uv_close_cb close_cb;
>      \
> +-  struct uv__queue handle_queue;
>       \
> ++  void* handle_queue[2];
>       \
> +   union {
>      \
> +     int fd;
>      \
> +     void* reserved[4];
>       \
> +@@ -1870,7 +1864,7 @@ struct uv_loop_s {
> +   void* data;
> +   /* Loop reference counting. */
> +   unsigned int active_handles;
> +-  struct uv__queue handle_queue;
> ++  void* handle_queue[2];
> +   union {
> +     void* unused;
> +     unsigned int count;
> +diff --git a/deps/uv/include/uv/darwin.h b/deps/uv/include/uv/darwin.h
> +index 06962bfda80..d226415820b 100644
> +--- a/deps/uv/include/uv/darwin.h
> ++++ b/deps/uv/include/uv/darwin.h
> +@@ -40,7 +40,7 @@
> +   void* cf_state;
>      \
> +   uv_mutex_t cf_mutex;
>       \
> +   uv_sem_t cf_sem;
>       \
> +-  struct uv__queue cf_signals;
>       \
> ++  void* cf_signals[2];
>       \
> +
> + #define UV_PLATFORM_FS_EVENT_FIELDS
>      \
> +   uv__io_t event_watcher;
>      \
> +@@ -48,8 +48,8 @@
> +   int realpath_len;
>      \
> +   int cf_flags;
>      \
> +   uv_async_t* cf_cb;
>       \
> +-  struct uv__queue cf_events;
>      \
> +-  struct uv__queue cf_member;
>      \
> ++  void* cf_events[2];
>      \
> ++  void* cf_member[2];
>      \
> +   int cf_error;
>      \
> +   uv_mutex_t cf_mutex;
>       \
> +
> +diff --git a/deps/uv/include/uv/linux.h b/deps/uv/include/uv/linux.h
> +index 9f22f8cf726..9b38405a190 100644
> +--- a/deps/uv/include/uv/linux.h
> ++++ b/deps/uv/include/uv/linux.h
> +@@ -28,7 +28,7 @@
> +   int inotify_fd;
>      \
> +
> + #define UV_PLATFORM_FS_EVENT_FIELDS
>      \
> +-  struct uv__queue watchers;
>       \
> ++  void* watchers[2];
>       \
> +   int wd;
>      \
> +
> + #endif /* UV_LINUX_H */
> +diff --git a/deps/uv/include/uv/threadpool.h
> b/deps/uv/include/uv/threadpool.h
> +index 24ce916fda4..9708ebdd530 100644
> +--- a/deps/uv/include/uv/threadpool.h
> ++++ b/deps/uv/include/uv/threadpool.h
> +@@ -31,7 +31,7 @@ struct uv__work {
> +   void (*work)(struct uv__work *w);
> +   void (*done)(struct uv__work *w, int status);
> +   struct uv_loop_s* loop;
> +-  struct uv__queue wq;
> ++  void* wq[2];
> + };
> +
> + #endif /* UV_THREADPOOL_H_ */
> +diff --git a/deps/uv/include/uv/unix.h b/deps/uv/include/uv/unix.h
> +index 09f88a56742..95447b8dd67 100644
> +--- a/deps/uv/include/uv/unix.h
> ++++ b/deps/uv/include/uv/unix.h
> +@@ -92,8 +92,8 @@ typedef struct uv__io_s uv__io_t;
> +
> + struct uv__io_s {
> +   uv__io_cb cb;
> +-  struct uv__queue pending_queue;
> +-  struct uv__queue watcher_queue;
> ++  void* pending_queue[2];
> ++  void* watcher_queue[2];
> +   unsigned int pevents; /* Pending event mask i.e. mask at next tick. *=
/
> +   unsigned int events;  /* Current event mask. */
> +   int fd;
> +@@ -220,21 +220,21 @@ typedef struct {
> + #define UV_LOOP_PRIVATE_FIELDS
>       \
> +   unsigned long flags;
>       \
> +   int backend_fd;
>      \
> +-  struct uv__queue pending_queue;
>      \
> +-  struct uv__queue watcher_queue;
>      \
> ++  void* pending_queue[2];
>      \
> ++  void* watcher_queue[2];
>      \
> +   uv__io_t** watchers;
>       \
> +   unsigned int nwatchers;
>      \
> +   unsigned int nfds;
>       \
> +-  struct uv__queue wq;
>       \
> ++  void* wq[2];
>       \
> +   uv_mutex_t wq_mutex;
>       \
> +   uv_async_t wq_async;
>       \
> +   uv_rwlock_t cloexec_lock;
>      \
> +   uv_handle_t* closing_handles;
>      \
> +-  struct uv__queue process_handles;
>      \
> +-  struct uv__queue prepare_handles;
>      \
> +-  struct uv__queue check_handles;
>      \
> +-  struct uv__queue idle_handles;
>       \
> +-  struct uv__queue async_handles;
>      \
> ++  void* process_handles[2];
>      \
> ++  void* prepare_handles[2];
>      \
> ++  void* check_handles[2];
>      \
> ++  void* idle_handles[2];
>       \
> ++  void* async_handles[2];
>      \
> +   void (*async_unused)(void);  /* TODO(bnoordhuis) Remove in libuv v2.
> */     \
> +   uv__io_t async_io_watcher;
>       \
> +   int async_wfd;
>       \
> +@@ -257,7 +257,7 @@ typedef struct {
> + #define UV_PRIVATE_REQ_TYPES /* empty */
> +
> + #define UV_WRITE_PRIVATE_FIELDS
>      \
> +-  struct uv__queue queue;
>      \
> ++  void* queue[2];
>      \
> +   unsigned int write_index;
>      \
> +   uv_buf_t* bufs;
>      \
> +   unsigned int nbufs;
>      \
> +@@ -265,12 +265,12 @@ typedef struct {
> +   uv_buf_t bufsml[4];
>      \
> +
> + #define UV_CONNECT_PRIVATE_FIELDS
>      \
> +-  struct uv__queue queue;
>      \
> ++  void* queue[2];
>      \
> +
> + #define UV_SHUTDOWN_PRIVATE_FIELDS /* empty */
> +
> + #define UV_UDP_SEND_PRIVATE_FIELDS
>       \
> +-  struct uv__queue queue;
>      \
> ++  void* queue[2];
>      \
> +   struct sockaddr_storage addr;
>      \
> +   unsigned int nbufs;
>      \
> +   uv_buf_t* bufs;
>      \
> +@@ -286,8 +286,8 @@ typedef struct {
> +   uv_connect_t *connect_req;
>       \
> +   uv_shutdown_t *shutdown_req;
>       \
> +   uv__io_t io_watcher;
>       \
> +-  struct uv__queue write_queue;
>      \
> +-  struct uv__queue write_completed_queue;
>      \
> ++  void* write_queue[2];
>      \
> ++  void* write_completed_queue[2];
>      \
> +   uv_connection_cb connection_cb;
>      \
> +   int delayed_error;
>       \
> +   int accepted_fd;
>       \
> +@@ -300,8 +300,8 @@ typedef struct {
> +   uv_alloc_cb alloc_cb;
>      \
> +   uv_udp_recv_cb recv_cb;
>      \
> +   uv__io_t io_watcher;
>       \
> +-  struct uv__queue write_queue;
>      \
> +-  struct uv__queue write_completed_queue;
>      \
> ++  void* write_queue[2];
>      \
> ++  void* write_completed_queue[2];
>      \
> +
> + #define UV_PIPE_PRIVATE_FIELDS
>       \
> +   const char* pipe_fname; /* NULL or strdup'ed */
> +@@ -311,19 +311,19 @@ typedef struct {
> +
> + #define UV_PREPARE_PRIVATE_FIELDS
>      \
> +   uv_prepare_cb prepare_cb;
>      \
> +-  struct uv__queue queue;
>      \
> ++  void* queue[2];
>      \
> +
> + #define UV_CHECK_PRIVATE_FIELDS
>      \
> +   uv_check_cb check_cb;
>      \
> +-  struct uv__queue queue;
>      \
> ++  void* queue[2];
>      \
> +
> + #define UV_IDLE_PRIVATE_FIELDS
>       \
> +   uv_idle_cb idle_cb;
>      \
> +-  struct uv__queue queue;
>      \
> ++  void* queue[2];
>      \
> +
> + #define UV_ASYNC_PRIVATE_FIELDS
>      \
> +   uv_async_cb async_cb;
>      \
> +-  struct uv__queue queue;
>      \
> ++  void* queue[2];
>      \
> +   int pending;
>       \
> +
> + #define UV_TIMER_PRIVATE_FIELDS
>      \
> +@@ -352,7 +352,7 @@ typedef struct {
> +   int retcode;
> +
> + #define UV_PROCESS_PRIVATE_FIELDS
>      \
> +-  struct uv__queue queue;
>      \
> ++  void* queue[2];
>      \
> +   int status;
>      \
> +
> + #define UV_FS_PRIVATE_FIELDS
>       \
> +diff --git a/deps/uv/include/uv/win.h b/deps/uv/include/uv/win.h
> +index 6f8c47298e4..92a95fa15f1 100644
> +--- a/deps/uv/include/uv/win.h
> ++++ b/deps/uv/include/uv/win.h
> +@@ -357,7 +357,7 @@ typedef struct {
> +   /* Counter to started timer */
>       \
> +   uint64_t timer_counter;
>      \
> +   /* Threadpool */
>       \
> +-  struct uv__queue wq;
>       \
> ++  void* wq[2];
>       \
> +   uv_mutex_t wq_mutex;
>       \
> +   uv_async_t wq_async;
> +
> +@@ -486,7 +486,7 @@ typedef struct {
> +     uint32_t payload_remaining;
>      \
> +     uint64_t dummy; /* TODO: retained for ABI compat; remove this in
> v2.x. */ \
> +   } ipc_data_frame;
>      \
> +-  struct uv__queue ipc_xfer_queue;
>       \
> ++  void* ipc_xfer_queue[2];
>       \
> +   int ipc_xfer_queue_length;
>       \
> +   uv_write_t* non_overlapped_writes_tail;
>      \
> +   CRITICAL_SECTION readfile_thread_lock;
>       \
> +diff --git a/deps/uv/src/queue.h b/deps/uv/src/queue.h
> +index 5f8489e9bc5..ff3540a0a51 100644
> +--- a/deps/uv/src/queue.h
> ++++ b/deps/uv/src/queue.h
> +@@ -18,73 +18,91 @@
> +
> + #include <stddef.h>
> +
> +-#define uv__queue_data(pointer, type, field)
>       \
> +-  ((type*) ((char*) (pointer) - offsetof(type, field)))
> +-
> +-#define uv__queue_foreach(q, h)
>      \
> +-  for ((q) =3D (h)->next; (q) !=3D (h); (q) =3D (q)->next)
> +-
> +-static inline void uv__queue_init(struct uv__queue* q) {
> +-  q->next =3D q;
> +-  q->prev =3D q;
> +-}
> +-
> +-static inline int uv__queue_empty(const struct uv__queue* q) {
> +-  return q =3D=3D q->next;
> +-}
> +-
> +-static inline struct uv__queue* uv__queue_head(const struct uv__queue*
> q) {
> +-  return q->next;
> +-}
> +-
> +-static inline struct uv__queue* uv__queue_next(const struct uv__queue*
> q) {
> +-  return q->next;
> +-}
> +-
> +-static inline void uv__queue_add(struct uv__queue* h, struct uv__queue*
> n) {
> +-  h->prev->next =3D n->next;
> +-  n->next->prev =3D h->prev;
> +-  h->prev =3D n->prev;
> +-  h->prev->next =3D h;
> +-}
> +-
> +-static inline void uv__queue_split(struct uv__queue* h,
> +-                                   struct uv__queue* q,
> +-                                   struct uv__queue* n) {
> +-  n->prev =3D h->prev;
> +-  n->prev->next =3D n;
> +-  n->next =3D q;
> +-  h->prev =3D q->prev;
> +-  h->prev->next =3D h;
> +-  q->prev =3D n;
> +-}
> +-
> +-static inline void uv__queue_move(struct uv__queue* h, struct uv__queue=
*
> n) {
> +-  if (uv__queue_empty(h))
> +-    uv__queue_init(n);
> +-  else
> +-    uv__queue_split(h, h->next, n);
> +-}
> +-
> +-static inline void uv__queue_insert_head(struct uv__queue* h,
> +-                                         struct uv__queue* q) {
> +-  q->next =3D h->next;
> +-  q->prev =3D h;
> +-  q->next->prev =3D q;
> +-  h->next =3D q;
> +-}
> +-
> +-static inline void uv__queue_insert_tail(struct uv__queue* h,
> +-                                         struct uv__queue* q) {
> +-  q->next =3D h;
> +-  q->prev =3D h->prev;
> +-  q->prev->next =3D q;
> +-  h->prev =3D q;
> +-}
> +-
> +-static inline void uv__queue_remove(struct uv__queue* q) {
> +-  q->prev->next =3D q->next;
> +-  q->next->prev =3D q->prev;
> +-}
> ++typedef void *QUEUE[2];
> ++
> ++/* Private macros. */
> ++#define QUEUE_NEXT(q)       (*(QUEUE **) &((*(q))[0]))
> ++#define QUEUE_PREV(q)       (*(QUEUE **) &((*(q))[1]))
> ++#define QUEUE_PREV_NEXT(q)  (QUEUE_NEXT(QUEUE_PREV(q)))
> ++#define QUEUE_NEXT_PREV(q)  (QUEUE_PREV(QUEUE_NEXT(q)))
> ++
> ++/* Public macros. */
> ++#define QUEUE_DATA(ptr, type, field)
>       \
> ++  ((type *) ((char *) (ptr) - offsetof(type, field)))
> ++
> ++/* Important note: mutating the list while QUEUE_FOREACH is
> ++ * iterating over its elements results in undefined behavior.
> ++ */
> ++#define QUEUE_FOREACH(q, h)
>      \
> ++  for ((q) =3D QUEUE_NEXT(h); (q) !=3D (h); (q) =3D QUEUE_NEXT(q))
> ++
> ++#define QUEUE_EMPTY(q)
>       \
> ++  ((const QUEUE *) (q) =3D=3D (const QUEUE *) QUEUE_NEXT(q))
> ++
> ++#define QUEUE_HEAD(q)
>      \
> ++  (QUEUE_NEXT(q))
> ++
> ++#define QUEUE_INIT(q)
>      \
> ++  do {
>       \
> ++    QUEUE_NEXT(q) =3D (q);
>       \
> ++    QUEUE_PREV(q) =3D (q);
>       \
> ++  }
>      \
> ++  while (0)
> ++
> ++#define QUEUE_ADD(h, n)
>      \
> ++  do {
>       \
> ++    QUEUE_PREV_NEXT(h) =3D QUEUE_NEXT(n);
>      \
> ++    QUEUE_NEXT_PREV(n) =3D QUEUE_PREV(h);
>      \
> ++    QUEUE_PREV(h) =3D QUEUE_PREV(n);
>       \
> ++    QUEUE_PREV_NEXT(h) =3D (h);
>      \
> ++  }
>      \
> ++  while (0)
> ++
> ++#define QUEUE_SPLIT(h, q, n)
>       \
> ++  do {
>       \
> ++    QUEUE_PREV(n) =3D QUEUE_PREV(h);
>       \
> ++    QUEUE_PREV_NEXT(n) =3D (n);
>      \
> ++    QUEUE_NEXT(n) =3D (q);
>       \
> ++    QUEUE_PREV(h) =3D QUEUE_PREV(q);
>       \
> ++    QUEUE_PREV_NEXT(h) =3D (h);
>      \
> ++    QUEUE_PREV(q) =3D (n);
>       \
> ++  }
>      \
> ++  while (0)
> ++
> ++#define QUEUE_MOVE(h, n)
>       \
> ++  do {
>       \
> ++    if (QUEUE_EMPTY(h))
>      \
> ++      QUEUE_INIT(n);
>       \
> ++    else {
>       \
> ++      QUEUE* q =3D QUEUE_HEAD(h);
>      \
> ++      QUEUE_SPLIT(h, q, n);
>      \
> ++    }
>      \
> ++  }
>      \
> ++  while (0)
> ++
> ++#define QUEUE_INSERT_HEAD(h, q)
>      \
> ++  do {
>       \
> ++    QUEUE_NEXT(q) =3D QUEUE_NEXT(h);
>       \
> ++    QUEUE_PREV(q) =3D (h);
>       \
> ++    QUEUE_NEXT_PREV(q) =3D (q);
>      \
> ++    QUEUE_NEXT(h) =3D (q);
>       \
> ++  }
>      \
> ++  while (0)
> ++
> ++#define QUEUE_INSERT_TAIL(h, q)
>      \
> ++  do {
>       \
> ++    QUEUE_NEXT(q) =3D (h);
>       \
> ++    QUEUE_PREV(q) =3D QUEUE_PREV(h);
>       \
> ++    QUEUE_PREV_NEXT(q) =3D (q);
>      \
> ++    QUEUE_PREV(h) =3D (q);
>       \
> ++  }
>      \
> ++  while (0)
> ++
> ++#define QUEUE_REMOVE(q)
>      \
> ++  do {
>       \
> ++    QUEUE_PREV_NEXT(q) =3D QUEUE_NEXT(q);
>      \
> ++    QUEUE_NEXT_PREV(q) =3D QUEUE_PREV(q);
>      \
> ++  }
>      \
> ++  while (0)
> +
> + #endif /* QUEUE_H_ */
> +diff --git a/deps/uv/src/threadpool.c b/deps/uv/src/threadpool.c
> +index dbef67f2f10..51962bf0021 100644
> +--- a/deps/uv/src/threadpool.c
> ++++ b/deps/uv/src/threadpool.c
> +@@ -37,10 +37,10 @@ static unsigned int slow_io_work_running;
> + static unsigned int nthreads;
> + static uv_thread_t* threads;
> + static uv_thread_t default_threads[4];
> +-static struct uv__queue exit_message;
> +-static struct uv__queue wq;
> +-static struct uv__queue run_slow_work_message;
> +-static struct uv__queue slow_io_pending_wq;
> ++static QUEUE exit_message;
> ++static QUEUE wq;
> ++static QUEUE run_slow_work_message;
> ++static QUEUE slow_io_pending_wq;
> +
> + static unsigned int slow_work_thread_threshold(void) {
> +   return (nthreads + 1) / 2;
> +@@ -56,7 +56,7 @@ static void uv__cancelled(struct uv__work* w) {
> +  */
> + static void worker(void* arg) {
> +   struct uv__work* w;
> +-  struct uv__queue* q;
> ++  QUEUE* q;
> +   int is_slow_work;
> +
> +   uv_sem_post((uv_sem_t*) arg);
> +@@ -68,49 +68,49 @@ static void worker(void* arg) {
> +
> +     /* Keep waiting while either no work is present or only slow I/O
> +        and we're at the threshold for that. */
> +-    while (uv__queue_empty(&wq) ||
> +-           (uv__queue_head(&wq) =3D=3D &run_slow_work_message &&
> +-            uv__queue_next(&run_slow_work_message) =3D=3D &wq &&
> ++    while (QUEUE_EMPTY(&wq) ||
> ++           (QUEUE_HEAD(&wq) =3D=3D &run_slow_work_message &&
> ++            QUEUE_NEXT(&run_slow_work_message) =3D=3D &wq &&
> +             slow_io_work_running >=3D slow_work_thread_threshold())) {
> +       idle_threads +=3D 1;
> +       uv_cond_wait(&cond, &mutex);
> +       idle_threads -=3D 1;
> +     }
> +
> +-    q =3D uv__queue_head(&wq);
> ++    q =3D QUEUE_HEAD(&wq);
> +     if (q =3D=3D &exit_message) {
> +       uv_cond_signal(&cond);
> +       uv_mutex_unlock(&mutex);
> +       break;
> +     }
> +
> +-    uv__queue_remove(q);
> +-    uv__queue_init(q);  /* Signal uv_cancel() that the work req is
> executing. */
> ++    QUEUE_REMOVE(q);
> ++    QUEUE_INIT(q);  /* Signal uv_cancel() that the work req is
> executing. */
> +
> +     is_slow_work =3D 0;
> +     if (q =3D=3D &run_slow_work_message) {
> +       /* If we're at the slow I/O threshold, re-schedule until after al=
l
> +          other work in the queue is done. */
> +       if (slow_io_work_running >=3D slow_work_thread_threshold()) {
> +-        uv__queue_insert_tail(&wq, q);
> ++        QUEUE_INSERT_TAIL(&wq, q);
> +         continue;
> +       }
> +
> +       /* If we encountered a request to run slow I/O work but there is
> none
> +          to run, that means it's cancelled =3D> Start over. */
> +-      if (uv__queue_empty(&slow_io_pending_wq))
> ++      if (QUEUE_EMPTY(&slow_io_pending_wq))
> +         continue;
> +
> +       is_slow_work =3D 1;
> +       slow_io_work_running++;
> +
> +-      q =3D uv__queue_head(&slow_io_pending_wq);
> +-      uv__queue_remove(q);
> +-      uv__queue_init(q);
> ++      q =3D QUEUE_HEAD(&slow_io_pending_wq);
> ++      QUEUE_REMOVE(q);
> ++      QUEUE_INIT(q);
> +
> +       /* If there is more slow I/O work, schedule it to be run as well.
> */
> +-      if (!uv__queue_empty(&slow_io_pending_wq)) {
> +-        uv__queue_insert_tail(&wq, &run_slow_work_message);
> ++      if (!QUEUE_EMPTY(&slow_io_pending_wq)) {
> ++        QUEUE_INSERT_TAIL(&wq, &run_slow_work_message);
> +         if (idle_threads > 0)
> +           uv_cond_signal(&cond);
> +       }
> +@@ -118,13 +118,13 @@ static void worker(void* arg) {
> +
> +     uv_mutex_unlock(&mutex);
> +
> +-    w =3D uv__queue_data(q, struct uv__work, wq);
> ++    w =3D QUEUE_DATA(q, struct uv__work, wq);
> +     w->work(w);
> +
> +     uv_mutex_lock(&w->loop->wq_mutex);
> +     w->work =3D NULL;  /* Signal uv_cancel() that the work req is done
> +                         executing. */
> +-    uv__queue_insert_tail(&w->loop->wq, &w->wq);
> ++    QUEUE_INSERT_TAIL(&w->loop->wq, &w->wq);
> +     uv_async_send(&w->loop->wq_async);
> +     uv_mutex_unlock(&w->loop->wq_mutex);
> +
> +@@ -139,12 +139,12 @@ static void worker(void* arg) {
> + }
> +
> +
> +-static void post(struct uv__queue* q, enum uv__work_kind kind) {
> ++static void post(QUEUE* q, enum uv__work_kind kind) {
> +   uv_mutex_lock(&mutex);
> +   if (kind =3D=3D UV__WORK_SLOW_IO) {
> +     /* Insert into a separate queue. */
> +-    uv__queue_insert_tail(&slow_io_pending_wq, q);
> +-    if (!uv__queue_empty(&run_slow_work_message)) {
> ++    QUEUE_INSERT_TAIL(&slow_io_pending_wq, q);
> ++    if (!QUEUE_EMPTY(&run_slow_work_message)) {
> +       /* Running slow I/O tasks is already scheduled =3D> Nothing to do
> here.
> +          The worker that runs said other task will schedule this one as
> well. */
> +       uv_mutex_unlock(&mutex);
> +@@ -153,7 +153,7 @@ static void post(struct uv__queue* q, enum
> uv__work_kind kind) {
> +     q =3D &run_slow_work_message;
> +   }
> +
> +-  uv__queue_insert_tail(&wq, q);
> ++  QUEUE_INSERT_TAIL(&wq, q);
> +   if (idle_threads > 0)
> +     uv_cond_signal(&cond);
> +   uv_mutex_unlock(&mutex);
> +@@ -220,9 +220,9 @@ static void init_threads(void) {
> +   if (uv_mutex_init(&mutex))
> +     abort();
> +
> +-  uv__queue_init(&wq);
> +-  uv__queue_init(&slow_io_pending_wq);
> +-  uv__queue_init(&run_slow_work_message);
> ++  QUEUE_INIT(&wq);
> ++  QUEUE_INIT(&slow_io_pending_wq);
> ++  QUEUE_INIT(&run_slow_work_message);
> +
> +   if (uv_sem_init(&sem, 0))
> +     abort();
> +@@ -285,9 +285,9 @@ static int uv__work_cancel(uv_loop_t* loop, uv_req_t=
*
> req, struct uv__work* w) {
> +   uv_mutex_lock(&mutex);
> +   uv_mutex_lock(&w->loop->wq_mutex);
> +
> +-  cancelled =3D !uv__queue_empty(&w->wq) && w->work !=3D NULL;
> ++  cancelled =3D !QUEUE_EMPTY(&w->wq) && w->work !=3D NULL;
> +   if (cancelled)
> +-    uv__queue_remove(&w->wq);
> ++    QUEUE_REMOVE(&w->wq);
> +
> +   uv_mutex_unlock(&w->loop->wq_mutex);
> +   uv_mutex_unlock(&mutex);
> +@@ -297,7 +297,7 @@ static int uv__work_cancel(uv_loop_t* loop, uv_req_t=
*
> req, struct uv__work* w) {
> +
> +   w->work =3D uv__cancelled;
> +   uv_mutex_lock(&loop->wq_mutex);
> +-  uv__queue_insert_tail(&loop->wq, &w->wq);
> ++  QUEUE_INSERT_TAIL(&loop->wq, &w->wq);
> +   uv_async_send(&loop->wq_async);
> +   uv_mutex_unlock(&loop->wq_mutex);
> +
> +@@ -308,21 +308,21 @@ static int uv__work_cancel(uv_loop_t* loop,
> uv_req_t* req, struct uv__work* w) {
> + void uv__work_done(uv_async_t* handle) {
> +   struct uv__work* w;
> +   uv_loop_t* loop;
> +-  struct uv__queue* q;
> +-  struct uv__queue wq;
> ++  QUEUE* q;
> ++  QUEUE wq;
> +   int err;
> +   int nevents;
> +
> +   loop =3D container_of(handle, uv_loop_t, wq_async);
> +   uv_mutex_lock(&loop->wq_mutex);
> +-  uv__queue_move(&loop->wq, &wq);
> ++  QUEUE_MOVE(&loop->wq, &wq);
> +   uv_mutex_unlock(&loop->wq_mutex);
> +
> +   nevents =3D 0;
> +
> +-  while (!uv__queue_empty(&wq)) {
> +-    q =3D uv__queue_head(&wq);
> +-    uv__queue_remove(q);
> ++  while (!QUEUE_EMPTY(&wq)) {
> ++    q =3D QUEUE_HEAD(&wq);
> ++    QUEUE_REMOVE(q);
> +
> +     w =3D container_of(q, struct uv__work, wq);
> +     err =3D (w->work =3D=3D uv__cancelled) ? UV_ECANCELED : 0;
> +diff --git a/deps/uv/src/unix/aix.c b/deps/uv/src/unix/aix.c
> +index 3af3009a216..f1afbed49ec 100644
> +--- a/deps/uv/src/unix/aix.c
> ++++ b/deps/uv/src/unix/aix.c
> +@@ -136,7 +136,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
> +   struct pollfd pqry;
> +   struct pollfd* pe;
> +   struct poll_ctl pc;
> +-  struct uv__queue* q;
> ++  QUEUE* q;
> +   uv__io_t* w;
> +   uint64_t base;
> +   uint64_t diff;
> +@@ -151,18 +151,18 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
> +   int reset_timeout;
> +
> +   if (loop->nfds =3D=3D 0) {
> +-    assert(uv__queue_empty(&loop->watcher_queue));
> ++    assert(QUEUE_EMPTY(&loop->watcher_queue));
> +     return;
> +   }
> +
> +   lfields =3D uv__get_internal_fields(loop);
> +
> +-  while (!uv__queue_empty(&loop->watcher_queue)) {
> +-    q =3D uv__queue_head(&loop->watcher_queue);
> +-    uv__queue_remove(q);
> +-    uv__queue_init(q);
> ++  while (!QUEUE_EMPTY(&loop->watcher_queue)) {
> ++    q =3D QUEUE_HEAD(&loop->watcher_queue);
> ++    QUEUE_REMOVE(q);
> ++    QUEUE_INIT(q);
> +
> +-    w =3D uv__queue_data(q, uv__io_t, watcher_queue);
> ++    w =3D QUEUE_DATA(q, uv__io_t, watcher_queue);
> +     assert(w->pevents !=3D 0);
> +     assert(w->fd >=3D 0);
> +     assert(w->fd < (int) loop->nwatchers);
> +diff --git a/deps/uv/src/unix/async.c b/deps/uv/src/unix/async.c
> +index 0ff2669e30a..5751b6d02be 100644
> +--- a/deps/uv/src/unix/async.c
> ++++ b/deps/uv/src/unix/async.c
> +@@ -55,7 +55,7 @@ int uv_async_init(uv_loop_t* loop, uv_async_t* handle,
> uv_async_cb async_cb) {
> +   handle->pending =3D 0;
> +   handle->u.fd =3D 0; /* This will be used as a busy flag. */
> +
> +-  uv__queue_insert_tail(&loop->async_handles, &handle->queue);
> ++  QUEUE_INSERT_TAIL(&loop->async_handles, &handle->queue);
> +   uv__handle_start(handle);
> +
> +   return 0;
> +@@ -124,7 +124,7 @@ static void uv__async_spin(uv_async_t* handle) {
> +
> + void uv__async_close(uv_async_t* handle) {
> +   uv__async_spin(handle);
> +-  uv__queue_remove(&handle->queue);
> ++  QUEUE_REMOVE(&handle->queue);
> +   uv__handle_stop(handle);
> + }
> +
> +@@ -132,8 +132,8 @@ void uv__async_close(uv_async_t* handle) {
> + static void uv__async_io(uv_loop_t* loop, uv__io_t* w, unsigned int
> events) {
> +   char buf[1024];
> +   ssize_t r;
> +-  struct uv__queue queue;
> +-  struct uv__queue* q;
> ++  QUEUE queue;
> ++  QUEUE* q;
> +   uv_async_t* h;
> +   _Atomic int *pending;
> +
> +@@ -157,13 +157,13 @@ static void uv__async_io(uv_loop_t* loop, uv__io_t=
*
> w, unsigned int events) {
> +     abort();
> +   }
> +
> +-  uv__queue_move(&loop->async_handles, &queue);
> +-  while (!uv__queue_empty(&queue)) {
> +-    q =3D uv__queue_head(&queue);
> +-    h =3D uv__queue_data(q, uv_async_t, queue);
> ++  QUEUE_MOVE(&loop->async_handles, &queue);
> ++  while (!QUEUE_EMPTY(&queue)) {
> ++    q =3D QUEUE_HEAD(&queue);
> ++    h =3D QUEUE_DATA(q, uv_async_t, queue);
> +
> +-    uv__queue_remove(q);
> +-    uv__queue_insert_tail(&loop->async_handles, q);
> ++    QUEUE_REMOVE(q);
> ++    QUEUE_INSERT_TAIL(&loop->async_handles, q);
> +
> +     /* Atomically fetch and clear pending flag */
> +     pending =3D (_Atomic int*) &h->pending;
> +@@ -241,8 +241,8 @@ static int uv__async_start(uv_loop_t* loop) {
> +
> +
> + void uv__async_stop(uv_loop_t* loop) {
> +-  struct uv__queue queue;
> +-  struct uv__queue* q;
> ++  QUEUE queue;
> ++  QUEUE* q;
> +   uv_async_t* h;
> +
> +   if (loop->async_io_watcher.fd =3D=3D -1)
> +@@ -251,13 +251,13 @@ void uv__async_stop(uv_loop_t* loop) {
> +   /* Make sure no other thread is accessing the async handle fd after
> the loop
> +    * cleanup.
> +    */
> +-  uv__queue_move(&loop->async_handles, &queue);
> +-  while (!uv__queue_empty(&queue)) {
> +-    q =3D uv__queue_head(&queue);
> +-    h =3D uv__queue_data(q, uv_async_t, queue);
> ++  QUEUE_MOVE(&loop->async_handles, &queue);
> ++  while (!QUEUE_EMPTY(&queue)) {
> ++    q =3D QUEUE_HEAD(&queue);
> ++    h =3D QUEUE_DATA(q, uv_async_t, queue);
> +
> +-    uv__queue_remove(q);
> +-    uv__queue_insert_tail(&loop->async_handles, q);
> ++    QUEUE_REMOVE(q);
> ++    QUEUE_INSERT_TAIL(&loop->async_handles, q);
> +
> +     uv__async_spin(h);
> +   }
> +@@ -275,20 +275,20 @@ void uv__async_stop(uv_loop_t* loop) {
> +
> +
> + int uv__async_fork(uv_loop_t* loop) {
> +-  struct uv__queue queue;
> +-  struct uv__queue* q;
> ++  QUEUE queue;
> ++  QUEUE* q;
> +   uv_async_t* h;
> +
> +   if (loop->async_io_watcher.fd =3D=3D -1) /* never started */
> +     return 0;
> +
> +-  uv__queue_move(&loop->async_handles, &queue);
> +-  while (!uv__queue_empty(&queue)) {
> +-    q =3D uv__queue_head(&queue);
> +-    h =3D uv__queue_data(q, uv_async_t, queue);
> ++  QUEUE_MOVE(&loop->async_handles, &queue);
> ++  while (!QUEUE_EMPTY(&queue)) {
> ++    q =3D QUEUE_HEAD(&queue);
> ++    h =3D QUEUE_DATA(q, uv_async_t, queue);
> +
> +-    uv__queue_remove(q);
> +-    uv__queue_insert_tail(&loop->async_handles, q);
> ++    QUEUE_REMOVE(q);
> ++    QUEUE_INSERT_TAIL(&loop->async_handles, q);
> +
> +     /* The state of any thread that set pending is now likely corrupt i=
n
> this
> +      * child because the user called fork, so just clear these flags an=
d
> move
> +diff --git a/deps/uv/src/unix/core.c b/deps/uv/src/unix/core.c
> +index 25c5181f370..55aa962787e 100644
> +--- a/deps/uv/src/unix/core.c
> ++++ b/deps/uv/src/unix/core.c
> +@@ -344,7 +344,7 @@ static void uv__finish_close(uv_handle_t* handle) {
> +   }
> +
> +   uv__handle_unref(handle);
> +-  uv__queue_remove(&handle->handle_queue);
> ++  QUEUE_REMOVE(&handle->handle_queue);
> +
> +   if (handle->close_cb) {
> +     handle->close_cb(handle);
> +@@ -380,7 +380,7 @@ int uv_backend_fd(const uv_loop_t* loop) {
> + static int uv__loop_alive(const uv_loop_t* loop) {
> +   return uv__has_active_handles(loop) ||
> +          uv__has_active_reqs(loop) ||
> +-         !uv__queue_empty(&loop->pending_queue) ||
> ++         !QUEUE_EMPTY(&loop->pending_queue) ||
> +          loop->closing_handles !=3D NULL;
> + }
> +
> +@@ -389,8 +389,8 @@ static int uv__backend_timeout(const uv_loop_t* loop=
)
> {
> +   if (loop->stop_flag =3D=3D 0 &&
> +       /* uv__loop_alive(loop) && */
> +       (uv__has_active_handles(loop) || uv__has_active_reqs(loop)) &&
> +-      uv__queue_empty(&loop->pending_queue) &&
> +-      uv__queue_empty(&loop->idle_handles) &&
> ++      QUEUE_EMPTY(&loop->pending_queue) &&
> ++      QUEUE_EMPTY(&loop->idle_handles) &&
> +       (loop->flags & UV_LOOP_REAP_CHILDREN) =3D=3D 0 &&
> +       loop->closing_handles =3D=3D NULL)
> +     return uv__next_timeout(loop);
> +@@ -399,7 +399,7 @@ static int uv__backend_timeout(const uv_loop_t* loop=
)
> {
> +
> +
> + int uv_backend_timeout(const uv_loop_t* loop) {
> +-  if (uv__queue_empty(&loop->watcher_queue))
> ++  if (QUEUE_EMPTY(&loop->watcher_queue))
> +     return uv__backend_timeout(loop);
> +   /* Need to call uv_run to update the backend fd state. */
> +   return 0;
> +@@ -431,8 +431,7 @@ int uv_run(uv_loop_t* loop, uv_run_mode mode) {
> +
> +   while (r !=3D 0 && loop->stop_flag =3D=3D 0) {
> +     can_sleep =3D
> +-        uv__queue_empty(&loop->pending_queue) &&
> +-        uv__queue_empty(&loop->idle_handles);
> ++        QUEUE_EMPTY(&loop->pending_queue) &&
> QUEUE_EMPTY(&loop->idle_handles);
> +
> +     uv__run_pending(loop);
> +     uv__run_idle(loop);
> +@@ -448,7 +447,7 @@ int uv_run(uv_loop_t* loop, uv_run_mode mode) {
> +
> +     /* Process immediate callbacks (e.g. write_cb) a small fixed number
> of
> +      * times to avoid loop starvation.*/
> +-    for (r =3D 0; r < 8 && !uv__queue_empty(&loop->pending_queue); r++)
> ++    for (r =3D 0; r < 8 && !QUEUE_EMPTY(&loop->pending_queue); r++)
> +       uv__run_pending(loop);
> +
> +     /* Run one final update on the provider_idle_time in case uv__io_po=
ll
> +@@ -827,17 +826,17 @@ int uv_fileno(const uv_handle_t* handle,
> uv_os_fd_t* fd) {
> +
> +
> + static void uv__run_pending(uv_loop_t* loop) {
> +-  struct uv__queue* q;
> +-  struct uv__queue pq;
> ++  QUEUE* q;
> ++  QUEUE pq;
> +   uv__io_t* w;
> +
> +-  uv__queue_move(&loop->pending_queue, &pq);
> ++  QUEUE_MOVE(&loop->pending_queue, &pq);
> +
> +-  while (!uv__queue_empty(&pq)) {
> +-    q =3D uv__queue_head(&pq);
> +-    uv__queue_remove(q);
> +-    uv__queue_init(q);
> +-    w =3D uv__queue_data(q, uv__io_t, pending_queue);
> ++  while (!QUEUE_EMPTY(&pq)) {
> ++    q =3D QUEUE_HEAD(&pq);
> ++    QUEUE_REMOVE(q);
> ++    QUEUE_INIT(q);
> ++    w =3D QUEUE_DATA(q, uv__io_t, pending_queue);
> +     w->cb(loop, w, POLLOUT);
> +   }
> + }
> +@@ -892,8 +891,8 @@ static void maybe_resize(uv_loop_t* loop, unsigned
> int len) {
> + void uv__io_init(uv__io_t* w, uv__io_cb cb, int fd) {
> +   assert(cb !=3D NULL);
> +   assert(fd >=3D -1);
> +-  uv__queue_init(&w->pending_queue);
> +-  uv__queue_init(&w->watcher_queue);
> ++  QUEUE_INIT(&w->pending_queue);
> ++  QUEUE_INIT(&w->watcher_queue);
> +   w->cb =3D cb;
> +   w->fd =3D fd;
> +   w->events =3D 0;
> +@@ -919,8 +918,8 @@ void uv__io_start(uv_loop_t* loop, uv__io_t* w,
> unsigned int events) {
> +     return;
> + #endif
> +
> +-  if (uv__queue_empty(&w->watcher_queue))
> +-    uv__queue_insert_tail(&loop->watcher_queue, &w->watcher_queue);
> ++  if (QUEUE_EMPTY(&w->watcher_queue))
> ++    QUEUE_INSERT_TAIL(&loop->watcher_queue, &w->watcher_queue);
> +
> +   if (loop->watchers[w->fd] =3D=3D NULL) {
> +     loop->watchers[w->fd] =3D w;
> +@@ -945,8 +944,8 @@ void uv__io_stop(uv_loop_t* loop, uv__io_t* w,
> unsigned int events) {
> +   w->pevents &=3D ~events;
> +
> +   if (w->pevents =3D=3D 0) {
> +-    uv__queue_remove(&w->watcher_queue);
> +-    uv__queue_init(&w->watcher_queue);
> ++    QUEUE_REMOVE(&w->watcher_queue);
> ++    QUEUE_INIT(&w->watcher_queue);
> +     w->events =3D 0;
> +
> +     if (w =3D=3D loop->watchers[w->fd]) {
> +@@ -955,14 +954,14 @@ void uv__io_stop(uv_loop_t* loop, uv__io_t* w,
> unsigned int events) {
> +       loop->nfds--;
> +     }
> +   }
> +-  else if (uv__queue_empty(&w->watcher_queue))
> +-    uv__queue_insert_tail(&loop->watcher_queue, &w->watcher_queue);
> ++  else if (QUEUE_EMPTY(&w->watcher_queue))
> ++    QUEUE_INSERT_TAIL(&loop->watcher_queue, &w->watcher_queue);
> + }
> +
> +
> + void uv__io_close(uv_loop_t* loop, uv__io_t* w) {
> +   uv__io_stop(loop, w, POLLIN | POLLOUT | UV__POLLRDHUP | UV__POLLPRI);
> +-  uv__queue_remove(&w->pending_queue);
> ++  QUEUE_REMOVE(&w->pending_queue);
> +
> +   /* Remove stale events for this file descriptor */
> +   if (w->fd !=3D -1)
> +@@ -971,8 +970,8 @@ void uv__io_close(uv_loop_t* loop, uv__io_t* w) {
> +
> +
> + void uv__io_feed(uv_loop_t* loop, uv__io_t* w) {
> +-  if (uv__queue_empty(&w->pending_queue))
> +-    uv__queue_insert_tail(&loop->pending_queue, &w->pending_queue);
> ++  if (QUEUE_EMPTY(&w->pending_queue))
> ++    QUEUE_INSERT_TAIL(&loop->pending_queue, &w->pending_queue);
> + }
> +
> +
> +diff --git a/deps/uv/src/unix/fs.c b/deps/uv/src/unix/fs.c
> +index 6b051c124f2..00d385c24b7 100644
> +--- a/deps/uv/src/unix/fs.c
> ++++ b/deps/uv/src/unix/fs.c
> +@@ -62,6 +62,7 @@
> +
> + #if defined(__linux__)
> + # include <sys/sendfile.h>
> ++# include <sys/utsname.h>
> + #endif
> +
> + #if defined(__sun)
> +@@ -903,6 +904,31 @@ out:
> +
> +
> + #ifdef __linux__
> ++static unsigned uv__kernel_version(void) {
> ++  static _Atomic unsigned cached_version;
> ++  struct utsname u;
> ++  unsigned version;
> ++  unsigned major;
> ++  unsigned minor;
> ++  unsigned patch;
> ++
> ++  version =3D atomic_load_explicit(&cached_version, memory_order_relaxe=
d);
> ++  if (version !=3D 0)
> ++    return version;
> ++
> ++  if (-1 =3D=3D uname(&u))
> ++    return 0;
> ++
> ++  if (3 !=3D sscanf(u.release, "%u.%u.%u", &major, &minor, &patch))
> ++    return 0;
> ++
> ++  version =3D major * 65536 + minor * 256 + patch;
> ++  atomic_store_explicit(&cached_version, version, memory_order_relaxed)=
;
> ++
> ++  return version;
> ++}
> ++
> ++
> + /* Pre-4.20 kernels have a bug where CephFS uses the RADOS copy-from
> command
> +  * in copy_file_range() when it shouldn't. There is no workaround excep=
t
> to
> +  * fall back to a regular copy.
> +@@ -1905,9 +1931,6 @@ int uv_fs_link(uv_loop_t* loop,
> +                uv_fs_cb cb) {
> +   INIT(LINK);
> +   PATH2;
> +-  if (cb !=3D NULL)
> +-    if (uv__iou_fs_link(loop, req))
> +-      return 0;
> +   POST;
> + }
> +
> +@@ -1920,9 +1943,6 @@ int uv_fs_mkdir(uv_loop_t* loop,
> +   INIT(MKDIR);
> +   PATH;
> +   req->mode =3D mode;
> +-  if (cb !=3D NULL)
> +-    if (uv__iou_fs_mkdir(loop, req))
> +-      return 0;
> +   POST;
> + }
> +
> +@@ -2074,9 +2094,6 @@ int uv_fs_rename(uv_loop_t* loop,
> +                  uv_fs_cb cb) {
> +   INIT(RENAME);
> +   PATH2;
> +-  if (cb !=3D NULL)
> +-    if (uv__iou_fs_rename(loop, req))
> +-      return 0;
> +   POST;
> + }
> +
> +@@ -2123,9 +2140,6 @@ int uv_fs_symlink(uv_loop_t* loop,
> +   INIT(SYMLINK);
> +   PATH2;
> +   req->flags =3D flags;
> +-  if (cb !=3D NULL)
> +-    if (uv__iou_fs_symlink(loop, req))
> +-      return 0;
> +   POST;
> + }
> +
> +@@ -2133,9 +2147,6 @@ int uv_fs_symlink(uv_loop_t* loop,
> + int uv_fs_unlink(uv_loop_t* loop, uv_fs_t* req, const char* path,
> uv_fs_cb cb) {
> +   INIT(UNLINK);
> +   PATH;
> +-  if (cb !=3D NULL)
> +-    if (uv__iou_fs_unlink(loop, req))
> +-      return 0;
> +   POST;
> + }
> +
> +diff --git a/deps/uv/src/unix/fsevents.c b/deps/uv/src/unix/fsevents.c
> +index df703f3635f..0535b4547aa 100644
> +--- a/deps/uv/src/unix/fsevents.c
> ++++ b/deps/uv/src/unix/fsevents.c
> +@@ -80,13 +80,13 @@ enum uv__cf_loop_signal_type_e {
> + typedef enum uv__cf_loop_signal_type_e uv__cf_loop_signal_type_t;
> +
> + struct uv__cf_loop_signal_s {
> +-  struct uv__queue member;
> ++  QUEUE member;
> +   uv_fs_event_t* handle;
> +   uv__cf_loop_signal_type_t type;
> + };
> +
> + struct uv__fsevents_event_s {
> +-  struct uv__queue member;
> ++  QUEUE member;
> +   int events;
> +   char path[1];
> + };
> +@@ -98,7 +98,7 @@ struct uv__cf_loop_state_s {
> +   FSEventStreamRef fsevent_stream;
> +   uv_sem_t fsevent_sem;
> +   uv_mutex_t fsevent_mutex;
> +-  struct uv__queue fsevent_handles;
> ++  void* fsevent_handles[2];
> +   unsigned int fsevent_handle_count;
> + };
> +
> +@@ -150,22 +150,22 @@ static void (*pFSEventStreamStop)(FSEventStreamRef=
);
> +
> + #define UV__FSEVENTS_PROCESS(handle, block)
>      \
> +     do {
>       \
> +-      struct uv__queue events;
>       \
> +-      struct uv__queue* q;
>       \
> ++      QUEUE events;
>      \
> ++      QUEUE* q;
>      \
> +       uv__fsevents_event_t* event;
>       \
> +       int err;
>       \
> +       uv_mutex_lock(&(handle)->cf_mutex);
>      \
> +       /* Split-off all events and empty original queue */
>      \
> +-      uv__queue_move(&(handle)->cf_events, &events);
>       \
> ++      QUEUE_MOVE(&(handle)->cf_events, &events);
>       \
> +       /* Get error (if any) and zero original one */
>       \
> +       err =3D (handle)->cf_error;
>      \
> +       (handle)->cf_error =3D 0;
>      \
> +       uv_mutex_unlock(&(handle)->cf_mutex);
>      \
> +       /* Loop through events, deallocating each after processing */
>      \
> +-      while (!uv__queue_empty(&events)) {
>      \
> +-        q =3D uv__queue_head(&events);
>       \
> +-        event =3D uv__queue_data(q, uv__fsevents_event_t, member);
>       \
> +-        uv__queue_remove(q);
>       \
> ++      while (!QUEUE_EMPTY(&events)) {
>      \
> ++        q =3D QUEUE_HEAD(&events);
>       \
> ++        event =3D QUEUE_DATA(q, uv__fsevents_event_t, member);
>       \
> ++        QUEUE_REMOVE(q);
>       \
> +         /* NOTE: Checking uv__is_active() is required here, because
> handle    \
> +          * callback may close handle and invoking it after it will lead
> to    \
> +          * incorrect behaviour */
>      \
> +@@ -193,14 +193,14 @@ static void uv__fsevents_cb(uv_async_t* cb) {
> +
> + /* Runs in CF thread, pushed event into handle's event list */
> + static void uv__fsevents_push_event(uv_fs_event_t* handle,
> +-                                    struct uv__queue* events,
> ++                                    QUEUE* events,
> +                                     int err) {
> +   assert(events !=3D NULL || err !=3D 0);
> +   uv_mutex_lock(&handle->cf_mutex);
> +
> +   /* Concatenate two queues */
> +   if (events !=3D NULL)
> +-    uv__queue_add(&handle->cf_events, events);
> ++    QUEUE_ADD(&handle->cf_events, events);
> +
> +   /* Propagate error */
> +   if (err !=3D 0)
> +@@ -224,12 +224,12 @@ static void uv__fsevents_event_cb(const
> FSEventStreamRef streamRef,
> +   char* path;
> +   char* pos;
> +   uv_fs_event_t* handle;
> +-  struct uv__queue* q;
> ++  QUEUE* q;
> +   uv_loop_t* loop;
> +   uv__cf_loop_state_t* state;
> +   uv__fsevents_event_t* event;
> +   FSEventStreamEventFlags flags;
> +-  struct uv__queue head;
> ++  QUEUE head;
> +
> +   loop =3D info;
> +   state =3D loop->cf_state;
> +@@ -238,9 +238,9 @@ static void uv__fsevents_event_cb(const
> FSEventStreamRef streamRef,
> +
> +   /* For each handle */
> +   uv_mutex_lock(&state->fsevent_mutex);
> +-  uv__queue_foreach(q, &state->fsevent_handles) {
> +-    handle =3D uv__queue_data(q, uv_fs_event_t, cf_member);
> +-    uv__queue_init(&head);
> ++  QUEUE_FOREACH(q, &state->fsevent_handles) {
> ++    handle =3D QUEUE_DATA(q, uv_fs_event_t, cf_member);
> ++    QUEUE_INIT(&head);
> +
> +     /* Process and filter out events */
> +     for (i =3D 0; i < numEvents; i++) {
> +@@ -318,10 +318,10 @@ static void uv__fsevents_event_cb(const
> FSEventStreamRef streamRef,
> +           event->events =3D UV_CHANGE;
> +       }
> +
> +-      uv__queue_insert_tail(&head, &event->member);
> ++      QUEUE_INSERT_TAIL(&head, &event->member);
> +     }
> +
> +-    if (!uv__queue_empty(&head))
> ++    if (!QUEUE_EMPTY(&head))
> +       uv__fsevents_push_event(handle, &head, 0);
> +   }
> +   uv_mutex_unlock(&state->fsevent_mutex);
> +@@ -403,7 +403,7 @@ static void
> uv__fsevents_destroy_stream(uv__cf_loop_state_t* state) {
> + static void uv__fsevents_reschedule(uv__cf_loop_state_t* state,
> +                                     uv_loop_t* loop,
> +                                     uv__cf_loop_signal_type_t type) {
> +-  struct uv__queue* q;
> ++  QUEUE* q;
> +   uv_fs_event_t* curr;
> +   CFArrayRef cf_paths;
> +   CFStringRef* paths;
> +@@ -446,9 +446,9 @@ static void
> uv__fsevents_reschedule(uv__cf_loop_state_t* state,
> +
> +     q =3D &state->fsevent_handles;
> +     for (; i < path_count; i++) {
> +-      q =3D uv__queue_next(q);
> ++      q =3D QUEUE_NEXT(q);
> +       assert(q !=3D &state->fsevent_handles);
> +-      curr =3D uv__queue_data(q, uv_fs_event_t, cf_member);
> ++      curr =3D QUEUE_DATA(q, uv_fs_event_t, cf_member);
> +
> +       assert(curr->realpath !=3D NULL);
> +       paths[i] =3D
> +@@ -486,8 +486,8 @@ final:
> +
> +     /* Broadcast error to all handles */
> +     uv_mutex_lock(&state->fsevent_mutex);
> +-    uv__queue_foreach(q, &state->fsevent_handles) {
> +-      curr =3D uv__queue_data(q, uv_fs_event_t, cf_member);
> ++    QUEUE_FOREACH(q, &state->fsevent_handles) {
> ++      curr =3D QUEUE_DATA(q, uv_fs_event_t, cf_member);
> +       uv__fsevents_push_event(curr, NULL, err);
> +     }
> +     uv_mutex_unlock(&state->fsevent_mutex);
> +@@ -606,7 +606,7 @@ static int uv__fsevents_loop_init(uv_loop_t* loop) {
> +   if (err)
> +     goto fail_sem_init;
> +
> +-  uv__queue_init(&loop->cf_signals);
> ++  QUEUE_INIT(&loop->cf_signals);
> +
> +   err =3D uv_sem_init(&state->fsevent_sem, 0);
> +   if (err)
> +@@ -616,7 +616,7 @@ static int uv__fsevents_loop_init(uv_loop_t* loop) {
> +   if (err)
> +     goto fail_fsevent_mutex_init;
> +
> +-  uv__queue_init(&state->fsevent_handles);
> ++  QUEUE_INIT(&state->fsevent_handles);
> +   state->fsevent_need_reschedule =3D 0;
> +   state->fsevent_handle_count =3D 0;
> +
> +@@ -675,7 +675,7 @@ fail_mutex_init:
> + void uv__fsevents_loop_delete(uv_loop_t* loop) {
> +   uv__cf_loop_signal_t* s;
> +   uv__cf_loop_state_t* state;
> +-  struct uv__queue* q;
> ++  QUEUE* q;
> +
> +   if (loop->cf_state =3D=3D NULL)
> +     return;
> +@@ -688,10 +688,10 @@ void uv__fsevents_loop_delete(uv_loop_t* loop) {
> +   uv_mutex_destroy(&loop->cf_mutex);
> +
> +   /* Free any remaining data */
> +-  while (!uv__queue_empty(&loop->cf_signals)) {
> +-    q =3D uv__queue_head(&loop->cf_signals);
> +-    s =3D uv__queue_data(q, uv__cf_loop_signal_t, member);
> +-    uv__queue_remove(q);
> ++  while (!QUEUE_EMPTY(&loop->cf_signals)) {
> ++    q =3D QUEUE_HEAD(&loop->cf_signals);
> ++    s =3D QUEUE_DATA(q, uv__cf_loop_signal_t, member);
> ++    QUEUE_REMOVE(q);
> +     uv__free(s);
> +   }
> +
> +@@ -735,22 +735,22 @@ static void* uv__cf_loop_runner(void* arg) {
> + static void uv__cf_loop_cb(void* arg) {
> +   uv_loop_t* loop;
> +   uv__cf_loop_state_t* state;
> +-  struct uv__queue* item;
> +-  struct uv__queue split_head;
> ++  QUEUE* item;
> ++  QUEUE split_head;
> +   uv__cf_loop_signal_t* s;
> +
> +   loop =3D arg;
> +   state =3D loop->cf_state;
> +
> +   uv_mutex_lock(&loop->cf_mutex);
> +-  uv__queue_move(&loop->cf_signals, &split_head);
> ++  QUEUE_MOVE(&loop->cf_signals, &split_head);
> +   uv_mutex_unlock(&loop->cf_mutex);
> +
> +-  while (!uv__queue_empty(&split_head)) {
> +-    item =3D uv__queue_head(&split_head);
> +-    uv__queue_remove(item);
> ++  while (!QUEUE_EMPTY(&split_head)) {
> ++    item =3D QUEUE_HEAD(&split_head);
> ++    QUEUE_REMOVE(item);
> +
> +-    s =3D uv__queue_data(item, uv__cf_loop_signal_t, member);
> ++    s =3D QUEUE_DATA(item, uv__cf_loop_signal_t, member);
> +
> +     /* This was a termination signal */
> +     if (s->handle =3D=3D NULL)
> +@@ -778,7 +778,7 @@ int uv__cf_loop_signal(uv_loop_t* loop,
> +   item->type =3D type;
> +
> +   uv_mutex_lock(&loop->cf_mutex);
> +-  uv__queue_insert_tail(&loop->cf_signals, &item->member);
> ++  QUEUE_INSERT_TAIL(&loop->cf_signals, &item->member);
> +
> +   state =3D loop->cf_state;
> +   assert(state !=3D NULL);
> +@@ -807,7 +807,7 @@ int uv__fsevents_init(uv_fs_event_t* handle) {
> +   handle->realpath_len =3D strlen(handle->realpath);
> +
> +   /* Initialize event queue */
> +-  uv__queue_init(&handle->cf_events);
> ++  QUEUE_INIT(&handle->cf_events);
> +   handle->cf_error =3D 0;
> +
> +   /*
> +@@ -832,7 +832,7 @@ int uv__fsevents_init(uv_fs_event_t* handle) {
> +   /* Insert handle into the list */
> +   state =3D handle->loop->cf_state;
> +   uv_mutex_lock(&state->fsevent_mutex);
> +-  uv__queue_insert_tail(&state->fsevent_handles, &handle->cf_member);
> ++  QUEUE_INSERT_TAIL(&state->fsevent_handles, &handle->cf_member);
> +   state->fsevent_handle_count++;
> +   state->fsevent_need_reschedule =3D 1;
> +   uv_mutex_unlock(&state->fsevent_mutex);
> +@@ -872,7 +872,7 @@ int uv__fsevents_close(uv_fs_event_t* handle) {
> +   /* Remove handle from  the list */
> +   state =3D handle->loop->cf_state;
> +   uv_mutex_lock(&state->fsevent_mutex);
> +-  uv__queue_remove(&handle->cf_member);
> ++  QUEUE_REMOVE(&handle->cf_member);
> +   state->fsevent_handle_count--;
> +   state->fsevent_need_reschedule =3D 1;
> +   uv_mutex_unlock(&state->fsevent_mutex);
> +diff --git a/deps/uv/src/unix/internal.h b/deps/uv/src/unix/internal.h
> +index fe588513603..6c5822e6a0d 100644
> +--- a/deps/uv/src/unix/internal.h
> ++++ b/deps/uv/src/unix/internal.h
> +@@ -335,30 +335,20 @@ int uv__iou_fs_close(uv_loop_t* loop, uv_fs_t* req=
);
> + int uv__iou_fs_fsync_or_fdatasync(uv_loop_t* loop,
> +                                   uv_fs_t* req,
> +                                   uint32_t fsync_flags);
> +-int uv__iou_fs_link(uv_loop_t* loop, uv_fs_t* req);
> +-int uv__iou_fs_mkdir(uv_loop_t* loop, uv_fs_t* req);
> + int uv__iou_fs_open(uv_loop_t* loop, uv_fs_t* req);
> + int uv__iou_fs_read_or_write(uv_loop_t* loop,
> +                              uv_fs_t* req,
> +                              int is_read);
> +-int uv__iou_fs_rename(uv_loop_t* loop, uv_fs_t* req);
> + int uv__iou_fs_statx(uv_loop_t* loop,
> +                      uv_fs_t* req,
> +                      int is_fstat,
> +                      int is_lstat);
> +-int uv__iou_fs_symlink(uv_loop_t* loop, uv_fs_t* req);
> +-int uv__iou_fs_unlink(uv_loop_t* loop, uv_fs_t* req);
> + #else
> + #define uv__iou_fs_close(loop, req) 0
> + #define uv__iou_fs_fsync_or_fdatasync(loop, req, fsync_flags) 0
> +-#define uv__iou_fs_link(loop, req) 0
> +-#define uv__iou_fs_mkdir(loop, req) 0
> + #define uv__iou_fs_open(loop, req) 0
> + #define uv__iou_fs_read_or_write(loop, req, is_read) 0
> +-#define uv__iou_fs_rename(loop, req) 0
> + #define uv__iou_fs_statx(loop, req, is_fstat, is_lstat) 0
> +-#define uv__iou_fs_symlink(loop, req) 0
> +-#define uv__iou_fs_unlink(loop, req) 0
> + #endif
> +
> + #if defined(__APPLE__)
> +@@ -439,7 +429,6 @@ int uv__statx(int dirfd,
> +               struct uv__statx* statxbuf);
> + void uv__statx_to_stat(const struct uv__statx* statxbuf, uv_stat_t* buf=
);
> + ssize_t uv__getrandom(void* buf, size_t buflen, unsigned flags);
> +-unsigned uv__kernel_version(void);
> + #endif
> +
> + typedef int (*uv__peersockfunc)(int, struct sockaddr*, socklen_t*);
> +diff --git a/deps/uv/src/unix/kqueue.c b/deps/uv/src/unix/kqueue.c
> +index b78242d3be4..82916d65933 100644
> +--- a/deps/uv/src/unix/kqueue.c
> ++++ b/deps/uv/src/unix/kqueue.c
> +@@ -133,7 +133,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
> +   struct timespec spec;
> +   unsigned int nevents;
> +   unsigned int revents;
> +-  struct uv__queue* q;
> ++  QUEUE* q;
> +   uv__io_t* w;
> +   uv_process_t* process;
> +   sigset_t* pset;
> +@@ -152,19 +152,19 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
> +   int reset_timeout;
> +
> +   if (loop->nfds =3D=3D 0) {
> +-    assert(uv__queue_empty(&loop->watcher_queue));
> ++    assert(QUEUE_EMPTY(&loop->watcher_queue));
> +     return;
> +   }
> +
> +   lfields =3D uv__get_internal_fields(loop);
> +   nevents =3D 0;
> +
> +-  while (!uv__queue_empty(&loop->watcher_queue)) {
> +-    q =3D uv__queue_head(&loop->watcher_queue);
> +-    uv__queue_remove(q);
> +-    uv__queue_init(q);
> ++  while (!QUEUE_EMPTY(&loop->watcher_queue)) {
> ++    q =3D QUEUE_HEAD(&loop->watcher_queue);
> ++    QUEUE_REMOVE(q);
> ++    QUEUE_INIT(q);
> +
> +-    w =3D uv__queue_data(q, uv__io_t, watcher_queue);
> ++    w =3D QUEUE_DATA(q, uv__io_t, watcher_queue);
> +     assert(w->pevents !=3D 0);
> +     assert(w->fd >=3D 0);
> +     assert(w->fd < (int) loop->nwatchers);
> +@@ -307,8 +307,8 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
> +
> +       /* Handle kevent NOTE_EXIT results */
> +       if (ev->filter =3D=3D EVFILT_PROC) {
> +-        uv__queue_foreach(q, &loop->process_handles) {
> +-          process =3D uv__queue_data(q, uv_process_t, queue);
> ++        QUEUE_FOREACH(q, &loop->process_handles) {
> ++          process =3D QUEUE_DATA(q, uv_process_t, queue);
> +           if (process->pid =3D=3D fd) {
> +             process->flags |=3D UV_HANDLE_REAP;
> +             loop->flags |=3D UV_LOOP_REAP_CHILDREN;
> +diff --git a/deps/uv/src/unix/linux.c b/deps/uv/src/unix/linux.c
> +index 48b9c2c43e1..5f84ad0eea3 100644
> +--- a/deps/uv/src/unix/linux.c
> ++++ b/deps/uv/src/unix/linux.c
> +@@ -48,7 +48,6 @@
> + #include <sys/sysinfo.h>
> + #include <sys/sysmacros.h>
> + #include <sys/types.h>
> +-#include <sys/utsname.h>
> + #include <time.h>
> + #include <unistd.h>
> +
> +@@ -151,11 +150,6 @@ enum {
> +   UV__IORING_OP_CLOSE =3D 19,
> +   UV__IORING_OP_STATX =3D 21,
> +   UV__IORING_OP_EPOLL_CTL =3D 29,
> +-  UV__IORING_OP_RENAMEAT =3D 35,
> +-  UV__IORING_OP_UNLINKAT =3D 36,
> +-  UV__IORING_OP_MKDIRAT =3D 37,
> +-  UV__IORING_OP_SYMLINKAT =3D 38,
> +-  UV__IORING_OP_LINKAT =3D 39,
> + };
> +
> + enum {
> +@@ -168,10 +162,6 @@ enum {
> +   UV__IORING_SQ_CQ_OVERFLOW =3D 2u,
> + };
> +
> +-enum {
> +-  UV__MKDIRAT_SYMLINKAT_LINKAT =3D 1u,
> +-};
> +-
> + struct uv__io_cqring_offsets {
> +   uint32_t head;
> +   uint32_t tail;
> +@@ -267,7 +257,7 @@ STATIC_ASSERT(EPOLL_CTL_MOD < 4);
> +
> + struct watcher_list {
> +   RB_ENTRY(watcher_list) entry;
> +-  struct uv__queue watchers;
> ++  QUEUE watchers;
> +   int iterating;
> +   char* path;
> +   int wd;
> +@@ -310,31 +300,6 @@ static struct watcher_root*
> uv__inotify_watchers(uv_loop_t* loop) {
> + }
> +
> +
> +-unsigned uv__kernel_version(void) {
> +-  static _Atomic unsigned cached_version;
> +-  struct utsname u;
> +-  unsigned version;
> +-  unsigned major;
> +-  unsigned minor;
> +-  unsigned patch;
> +-
> +-  version =3D atomic_load_explicit(&cached_version, memory_order_relaxe=
d);
> +-  if (version !=3D 0)
> +-    return version;
> +-
> +-  if (-1 =3D=3D uname(&u))
> +-    return 0;
> +-
> +-  if (3 !=3D sscanf(u.release, "%u.%u.%u", &major, &minor, &patch))
> +-    return 0;
> +-
> +-  version =3D major * 65536 + minor * 256 + patch;
> +-  atomic_store_explicit(&cached_version, version, memory_order_relaxed)=
;
> +-
> +-  return version;
> +-}
> +-
> +-
> + ssize_t
> + uv__fs_copy_file_range(int fd_in,
> +                        off_t* off_in,
> +@@ -420,9 +385,6 @@ int uv__io_uring_register(int fd, unsigned opcode,
> void* arg, unsigned nargs) {
> +
> +
> + static int uv__use_io_uring(void) {
> +-#if defined(__ANDROID_API__)
> +-  return 0;  /* Possibly available but blocked by seccomp. */
> +-#else
> +   /* Ternary: unknown=3D0, yes=3D1, no=3D-1 */
> +   static _Atomic int use_io_uring;
> +   char* val;
> +@@ -437,7 +399,6 @@ static int uv__use_io_uring(void) {
> +   }
> +
> +   return use > 0;
> +-#endif
> + }
> +
> +
> +@@ -542,10 +503,6 @@ static void uv__iou_init(int epollfd,
> +   iou->sqelen =3D sqelen;
> +   iou->ringfd =3D ringfd;
> +   iou->in_flight =3D 0;
> +-  iou->flags =3D 0;
> +-
> +-  if (uv__kernel_version() >=3D /* 5.15.0 */ 0x050F00)
> +-    iou->flags |=3D UV__MKDIRAT_SYMLINKAT_LINKAT;
> +
> +   for (i =3D 0; i <=3D iou->sqmask; i++)
> +     iou->sqarray[i] =3D i;  /* Slot -> sqe identity mapping. */
> +@@ -727,7 +684,7 @@ static struct uv__io_uring_sqe*
> uv__iou_get_sqe(struct uv__iou* iou,
> +   req->work_req.loop =3D loop;
> +   req->work_req.work =3D NULL;
> +   req->work_req.done =3D NULL;
> +-  uv__queue_init(&req->work_req.wq);
> ++  QUEUE_INIT(&req->work_req.wq);
> +
> +   uv__req_register(loop, req);
> +   iou->in_flight++;
> +@@ -757,17 +714,6 @@ int uv__iou_fs_close(uv_loop_t* loop, uv_fs_t* req)=
 {
> +   struct uv__io_uring_sqe* sqe;
> +   struct uv__iou* iou;
> +
> +-  /* Work around a poorly understood bug in older kernels where closing
> a file
> +-   * descriptor pointing to /foo/bar results in ETXTBSY errors when
> trying to
> +-   * execve("/foo/bar") later on. The bug seems to have been fixed
> somewhere
> +-   * between 5.15.85 and 5.15.90. I couldn't pinpoint the responsible
> commit
> +-   * but good candidates are the several data race fixes. Interestingly=
,
> it
> +-   * seems to manifest only when running under Docker so the possibilit=
y
> of
> +-   * a Docker bug can't be completely ruled out either. Yay, computers.
> +-   */
> +-  if (uv__kernel_version() < /* 5.15.90 */ 0x050F5A)
> +-    return 0;
> +-
> +   iou =3D &uv__get_internal_fields(loop)->iou;
> +
> +   sqe =3D uv__iou_get_sqe(iou, loop, req);
> +@@ -808,55 +754,6 @@ int uv__iou_fs_fsync_or_fdatasync(uv_loop_t* loop,
> + }
> +
> +
> +-int uv__iou_fs_link(uv_loop_t* loop, uv_fs_t* req) {
> +-  struct uv__io_uring_sqe* sqe;
> +-  struct uv__iou* iou;
> +-
> +-  iou =3D &uv__get_internal_fields(loop)->iou;
> +-
> +-  if (!(iou->flags & UV__MKDIRAT_SYMLINKAT_LINKAT))
> +-    return 0;
> +-
> +-  sqe =3D uv__iou_get_sqe(iou, loop, req);
> +-  if (sqe =3D=3D NULL)
> +-    return 0;
> +-
> +-  sqe->addr =3D (uintptr_t) req->path;
> +-  sqe->fd =3D AT_FDCWD;
> +-  sqe->addr2 =3D (uintptr_t) req->new_path;
> +-  sqe->len =3D AT_FDCWD;
> +-  sqe->opcode =3D UV__IORING_OP_LINKAT;
> +-
> +-  uv__iou_submit(iou);
> +-
> +-  return 1;
> +-}
> +-
> +-
> +-int uv__iou_fs_mkdir(uv_loop_t* loop, uv_fs_t* req) {
> +-  struct uv__io_uring_sqe* sqe;
> +-  struct uv__iou* iou;
> +-
> +-  iou =3D &uv__get_internal_fields(loop)->iou;
> +-
> +-  if (!(iou->flags & UV__MKDIRAT_SYMLINKAT_LINKAT))
> +-    return 0;
> +-
> +-  sqe =3D uv__iou_get_sqe(iou, loop, req);
> +-  if (sqe =3D=3D NULL)
> +-    return 0;
> +-
> +-  sqe->addr =3D (uintptr_t) req->path;
> +-  sqe->fd =3D AT_FDCWD;
> +-  sqe->len =3D req->mode;
> +-  sqe->opcode =3D UV__IORING_OP_MKDIRAT;
> +-
> +-  uv__iou_submit(iou);
> +-
> +-  return 1;
> +-}
> +-
> +-
> + int uv__iou_fs_open(uv_loop_t* loop, uv_fs_t* req) {
> +   struct uv__io_uring_sqe* sqe;
> +   struct uv__iou* iou;
> +@@ -879,86 +776,16 @@ int uv__iou_fs_open(uv_loop_t* loop, uv_fs_t* req)=
 {
> + }
> +
> +
> +-int uv__iou_fs_rename(uv_loop_t* loop, uv_fs_t* req) {
> +-  struct uv__io_uring_sqe* sqe;
> +-  struct uv__iou* iou;
> +-
> +-  iou =3D &uv__get_internal_fields(loop)->iou;
> +-
> +-  sqe =3D uv__iou_get_sqe(iou, loop, req);
> +-  if (sqe =3D=3D NULL)
> +-    return 0;
> +-
> +-  sqe->addr =3D (uintptr_t) req->path;
> +-  sqe->fd =3D AT_FDCWD;
> +-  sqe->addr2 =3D (uintptr_t) req->new_path;
> +-  sqe->len =3D AT_FDCWD;
> +-  sqe->opcode =3D UV__IORING_OP_RENAMEAT;
> +-
> +-  uv__iou_submit(iou);
> +-
> +-  return 1;
> +-}
> +-
> +-
> +-int uv__iou_fs_symlink(uv_loop_t* loop, uv_fs_t* req) {
> +-  struct uv__io_uring_sqe* sqe;
> +-  struct uv__iou* iou;
> +-
> +-  iou =3D &uv__get_internal_fields(loop)->iou;
> +-
> +-  if (!(iou->flags & UV__MKDIRAT_SYMLINKAT_LINKAT))
> +-    return 0;
> +-
> +-  sqe =3D uv__iou_get_sqe(iou, loop, req);
> +-  if (sqe =3D=3D NULL)
> +-    return 0;
> +-
> +-  sqe->addr =3D (uintptr_t) req->path;
> +-  sqe->fd =3D AT_FDCWD;
> +-  sqe->addr2 =3D (uintptr_t) req->new_path;
> +-  sqe->opcode =3D UV__IORING_OP_SYMLINKAT;
> +-
> +-  uv__iou_submit(iou);
> +-
> +-  return 1;
> +-}
> +-
> +-
> +-int uv__iou_fs_unlink(uv_loop_t* loop, uv_fs_t* req) {
> +-  struct uv__io_uring_sqe* sqe;
> +-  struct uv__iou* iou;
> +-
> +-  iou =3D &uv__get_internal_fields(loop)->iou;
> +-
> +-  sqe =3D uv__iou_get_sqe(iou, loop, req);
> +-  if (sqe =3D=3D NULL)
> +-    return 0;
> +-
> +-  sqe->addr =3D (uintptr_t) req->path;
> +-  sqe->fd =3D AT_FDCWD;
> +-  sqe->opcode =3D UV__IORING_OP_UNLINKAT;
> +-
> +-  uv__iou_submit(iou);
> +-
> +-  return 1;
> +-}
> +-
> +-
> + int uv__iou_fs_read_or_write(uv_loop_t* loop,
> +                              uv_fs_t* req,
> +                              int is_read) {
> +   struct uv__io_uring_sqe* sqe;
> +   struct uv__iou* iou;
> +
> +-  /* If iovcnt is greater than IOV_MAX, cap it to IOV_MAX on reads and
> fallback
> +-   * to the threadpool on writes */
> +-  if (req->nbufs > IOV_MAX) {
> +-    if (is_read)
> +-      req->nbufs =3D IOV_MAX;
> +-    else
> +-      return 0;
> +-  }
> ++  /* For the moment, if iovcnt is greater than IOV_MAX, fallback to the
> ++   * threadpool. In the future we might take advantage of IOSQE_IO_LINK=
.
> */
> ++  if (req->nbufs > IOV_MAX)
> ++    return 0;
> +
> +   iou =3D &uv__get_internal_fields(loop)->iou;
> +
> +@@ -1265,7 +1092,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
> +   struct uv__iou* ctl;
> +   struct uv__iou* iou;
> +   int real_timeout;
> +-  struct uv__queue* q;
> ++  QUEUE* q;
> +   uv__io_t* w;
> +   sigset_t* sigmask;
> +   sigset_t sigset;
> +@@ -1311,11 +1138,11 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
> +
> +   memset(&e, 0, sizeof(e));
> +
> +-  while (!uv__queue_empty(&loop->watcher_queue)) {
> +-    q =3D uv__queue_head(&loop->watcher_queue);
> +-    w =3D uv__queue_data(q, uv__io_t, watcher_queue);
> +-    uv__queue_remove(q);
> +-    uv__queue_init(q);
> ++  while (!QUEUE_EMPTY(&loop->watcher_queue)) {
> ++    q =3D QUEUE_HEAD(&loop->watcher_queue);
> ++    w =3D QUEUE_DATA(q, uv__io_t, watcher_queue);
> ++    QUEUE_REMOVE(q);
> ++    QUEUE_INIT(q);
> +
> +     op =3D EPOLL_CTL_MOD;
> +     if (w->events =3D=3D 0)
> +@@ -2272,8 +2099,8 @@ static int uv__inotify_fork(uv_loop_t* loop, struc=
t
> watcher_list* root) {
> +   struct watcher_list* tmp_watcher_list_iter;
> +   struct watcher_list* watcher_list;
> +   struct watcher_list tmp_watcher_list;
> +-  struct uv__queue queue;
> +-  struct uv__queue* q;
> ++  QUEUE queue;
> ++  QUEUE* q;
> +   uv_fs_event_t* handle;
> +   char* tmp_path;
> +
> +@@ -2285,41 +2112,41 @@ static int uv__inotify_fork(uv_loop_t* loop,
> struct watcher_list* root) {
> +    */
> +   loop->inotify_watchers =3D root;
> +
> +-  uv__queue_init(&tmp_watcher_list.watchers);
> ++  QUEUE_INIT(&tmp_watcher_list.watchers);
> +   /* Note that the queue we use is shared with the start and stop()
> +-   * functions, making uv__queue_foreach unsafe to use. So we use the
> +-   * uv__queue_move trick to safely iterate. Also don't free the watche=
r
> ++   * functions, making QUEUE_FOREACH unsafe to use. So we use the
> ++   * QUEUE_MOVE trick to safely iterate. Also don't free the watcher
> +    * list until we're done iterating. c.f. uv__inotify_read.
> +    */
> +   RB_FOREACH_SAFE(watcher_list, watcher_root,
> +                   uv__inotify_watchers(loop), tmp_watcher_list_iter) {
> +     watcher_list->iterating =3D 1;
> +-    uv__queue_move(&watcher_list->watchers, &queue);
> +-    while (!uv__queue_empty(&queue)) {
> +-      q =3D uv__queue_head(&queue);
> +-      handle =3D uv__queue_data(q, uv_fs_event_t, watchers);
> ++    QUEUE_MOVE(&watcher_list->watchers, &queue);
> ++    while (!QUEUE_EMPTY(&queue)) {
> ++      q =3D QUEUE_HEAD(&queue);
> ++      handle =3D QUEUE_DATA(q, uv_fs_event_t, watchers);
> +       /* It's critical to keep a copy of path here, because it
> +        * will be set to NULL by stop() and then deallocated by
> +        * maybe_free_watcher_list
> +        */
> +       tmp_path =3D uv__strdup(handle->path);
> +       assert(tmp_path !=3D NULL);
> +-      uv__queue_remove(q);
> +-      uv__queue_insert_tail(&watcher_list->watchers, q);
> ++      QUEUE_REMOVE(q);
> ++      QUEUE_INSERT_TAIL(&watcher_list->watchers, q);
> +       uv_fs_event_stop(handle);
> +
> +-      uv__queue_insert_tail(&tmp_watcher_list.watchers,
> &handle->watchers);
> ++      QUEUE_INSERT_TAIL(&tmp_watcher_list.watchers, &handle->watchers);
> +       handle->path =3D tmp_path;
> +     }
> +     watcher_list->iterating =3D 0;
> +     maybe_free_watcher_list(watcher_list, loop);
> +   }
> +
> +-  uv__queue_move(&tmp_watcher_list.watchers, &queue);
> +-  while (!uv__queue_empty(&queue)) {
> +-      q =3D uv__queue_head(&queue);
> +-      uv__queue_remove(q);
> +-      handle =3D uv__queue_data(q, uv_fs_event_t, watchers);
> ++  QUEUE_MOVE(&tmp_watcher_list.watchers, &queue);
> ++  while (!QUEUE_EMPTY(&queue)) {
> ++      q =3D QUEUE_HEAD(&queue);
> ++      QUEUE_REMOVE(q);
> ++      handle =3D QUEUE_DATA(q, uv_fs_event_t, watchers);
> +       tmp_path =3D handle->path;
> +       handle->path =3D NULL;
> +       err =3D uv_fs_event_start(handle, handle->cb, tmp_path, 0);
> +@@ -2341,7 +2168,7 @@ static struct watcher_list* find_watcher(uv_loop_t=
*
> loop, int wd) {
> +
> + static void maybe_free_watcher_list(struct watcher_list* w, uv_loop_t*
> loop) {
> +   /* if the watcher_list->watchers is being iterated over, we can't fre=
e
> it. */
> +-  if ((!w->iterating) && uv__queue_empty(&w->watchers)) {
> ++  if ((!w->iterating) && QUEUE_EMPTY(&w->watchers)) {
> +     /* No watchers left for this path. Clean up. */
> +     RB_REMOVE(watcher_root, uv__inotify_watchers(loop), w);
> +     inotify_rm_watch(loop->inotify_fd, w->wd);
> +@@ -2356,8 +2183,8 @@ static void uv__inotify_read(uv_loop_t* loop,
> +   const struct inotify_event* e;
> +   struct watcher_list* w;
> +   uv_fs_event_t* h;
> +-  struct uv__queue queue;
> +-  struct uv__queue* q;
> ++  QUEUE queue;
> ++  QUEUE* q;
> +   const char* path;
> +   ssize_t size;
> +   const char *p;
> +@@ -2400,7 +2227,7 @@ static void uv__inotify_read(uv_loop_t* loop,
> +        * What can go wrong?
> +        * A callback could call uv_fs_event_stop()
> +        * and the queue can change under our feet.
> +-       * So, we use uv__queue_move() trick to safely iterate over the
> queue.
> ++       * So, we use QUEUE_MOVE() trick to safely iterate over the queue=
.
> +        * And we don't free the watcher_list until we're done iterating.
> +        *
> +        * First,
> +@@ -2408,13 +2235,13 @@ static void uv__inotify_read(uv_loop_t* loop,
> +        * not to free watcher_list.
> +        */
> +       w->iterating =3D 1;
> +-      uv__queue_move(&w->watchers, &queue);
> +-      while (!uv__queue_empty(&queue)) {
> +-        q =3D uv__queue_head(&queue);
> +-        h =3D uv__queue_data(q, uv_fs_event_t, watchers);
> ++      QUEUE_MOVE(&w->watchers, &queue);
> ++      while (!QUEUE_EMPTY(&queue)) {
> ++        q =3D QUEUE_HEAD(&queue);
> ++        h =3D QUEUE_DATA(q, uv_fs_event_t, watchers);
> +
> +-        uv__queue_remove(q);
> +-        uv__queue_insert_tail(&w->watchers, q);
> ++        QUEUE_REMOVE(q);
> ++        QUEUE_INSERT_TAIL(&w->watchers, q);
> +
> +         h->cb(h, path, events, 0);
> +       }
> +@@ -2476,13 +2303,13 @@ int uv_fs_event_start(uv_fs_event_t* handle,
> +
> +   w->wd =3D wd;
> +   w->path =3D memcpy(w + 1, path, len);
> +-  uv__queue_init(&w->watchers);
> ++  QUEUE_INIT(&w->watchers);
> +   w->iterating =3D 0;
> +   RB_INSERT(watcher_root, uv__inotify_watchers(loop), w);
> +
> + no_insert:
> +   uv__handle_start(handle);
> +-  uv__queue_insert_tail(&w->watchers, &handle->watchers);
> ++  QUEUE_INSERT_TAIL(&w->watchers, &handle->watchers);
> +   handle->path =3D w->path;
> +   handle->cb =3D cb;
> +   handle->wd =3D wd;
> +@@ -2503,7 +2330,7 @@ int uv_fs_event_stop(uv_fs_event_t* handle) {
> +   handle->wd =3D -1;
> +   handle->path =3D NULL;
> +   uv__handle_stop(handle);
> +-  uv__queue_remove(&handle->watchers);
> ++  QUEUE_REMOVE(&handle->watchers);
> +
> +   maybe_free_watcher_list(w, handle->loop);
> +
> +diff --git a/deps/uv/src/unix/loop-watcher.c
> b/deps/uv/src/unix/loop-watcher.c
> +index 2db8b515df7..b8c1c2a7102 100644
> +--- a/deps/uv/src/unix/loop-watcher.c
> ++++ b/deps/uv/src/unix/loop-watcher.c
> +@@ -32,7 +32,7 @@
> +   int uv_##name##_start(uv_##name##_t* handle, uv_##name##_cb cb) {
>      \
> +     if (uv__is_active(handle)) return 0;
>       \
> +     if (cb =3D=3D NULL) return UV_EINVAL;
>      \
> +-    uv__queue_insert_head(&handle->loop->name##_handles,
> &handle->queue);     \
> ++    QUEUE_INSERT_HEAD(&handle->loop->name##_handles, &handle->queue);
>      \
> +     handle->name##_cb =3D cb;
>      \
> +     uv__handle_start(handle);
>      \
> +     return 0;
>      \
> +@@ -40,21 +40,21 @@
> +
>      \
> +   int uv_##name##_stop(uv_##name##_t* handle) {
>      \
> +     if (!uv__is_active(handle)) return 0;
>      \
> +-    uv__queue_remove(&handle->queue);
>      \
> ++    QUEUE_REMOVE(&handle->queue);
>      \
> +     uv__handle_stop(handle);
>       \
> +     return 0;
>      \
> +   }
>      \
> +
>      \
> +   void uv__run_##name(uv_loop_t* loop) {
>       \
> +     uv_##name##_t* h;
>      \
> +-    struct uv__queue queue;
>      \
> +-    struct uv__queue* q;
>       \
> +-    uv__queue_move(&loop->name##_handles, &queue);
>       \
> +-    while (!uv__queue_empty(&queue)) {
>       \
> +-      q =3D uv__queue_head(&queue);
>      \
> +-      h =3D uv__queue_data(q, uv_##name##_t, queue);
>       \
> +-      uv__queue_remove(q);
>       \
> +-      uv__queue_insert_tail(&loop->name##_handles, q);
>       \
> ++    QUEUE queue;
>       \
> ++    QUEUE* q;
>      \
> ++    QUEUE_MOVE(&loop->name##_handles, &queue);
>       \
> ++    while (!QUEUE_EMPTY(&queue)) {
>       \
> ++      q =3D QUEUE_HEAD(&queue);
>      \
> ++      h =3D QUEUE_DATA(q, uv_##name##_t, queue);
>       \
> ++      QUEUE_REMOVE(q);
>       \
> ++      QUEUE_INSERT_TAIL(&loop->name##_handles, q);
>       \
> +       h->name##_cb(h);
>       \
> +     }
>      \
> +   }
>      \
> +diff --git a/deps/uv/src/unix/loop.c b/deps/uv/src/unix/loop.c
> +index a9468e8e19c..90a51b339de 100644
> +--- a/deps/uv/src/unix/loop.c
> ++++ b/deps/uv/src/unix/loop.c
> +@@ -50,20 +50,20 @@ int uv_loop_init(uv_loop_t* loop) {
> +          sizeof(lfields->loop_metrics.metrics));
> +
> +   heap_init((struct heap*) &loop->timer_heap);
> +-  uv__queue_init(&loop->wq);
> +-  uv__queue_init(&loop->idle_handles);
> +-  uv__queue_init(&loop->async_handles);
> +-  uv__queue_init(&loop->check_handles);
> +-  uv__queue_init(&loop->prepare_handles);
> +-  uv__queue_init(&loop->handle_queue);
> ++  QUEUE_INIT(&loop->wq);
> ++  QUEUE_INIT(&loop->idle_handles);
> ++  QUEUE_INIT(&loop->async_handles);
> ++  QUEUE_INIT(&loop->check_handles);
> ++  QUEUE_INIT(&loop->prepare_handles);
> ++  QUEUE_INIT(&loop->handle_queue);
> +
> +   loop->active_handles =3D 0;
> +   loop->active_reqs.count =3D 0;
> +   loop->nfds =3D 0;
> +   loop->watchers =3D NULL;
> +   loop->nwatchers =3D 0;
> +-  uv__queue_init(&loop->pending_queue);
> +-  uv__queue_init(&loop->watcher_queue);
> ++  QUEUE_INIT(&loop->pending_queue);
> ++  QUEUE_INIT(&loop->watcher_queue);
> +
> +   loop->closing_handles =3D NULL;
> +   uv__update_time(loop);
> +@@ -85,7 +85,7 @@ int uv_loop_init(uv_loop_t* loop) {
> +   err =3D uv__process_init(loop);
> +   if (err)
> +     goto fail_signal_init;
> +-  uv__queue_init(&loop->process_handles);
> ++  QUEUE_INIT(&loop->process_handles);
> +
> +   err =3D uv_rwlock_init(&loop->cloexec_lock);
> +   if (err)
> +@@ -152,9 +152,9 @@ int uv_loop_fork(uv_loop_t* loop) {
> +     if (w =3D=3D NULL)
> +       continue;
> +
> +-    if (w->pevents !=3D 0 && uv__queue_empty(&w->watcher_queue)) {
> ++    if (w->pevents !=3D 0 && QUEUE_EMPTY(&w->watcher_queue)) {
> +       w->events =3D 0; /* Force re-registration in uv__io_poll. */
> +-      uv__queue_insert_tail(&loop->watcher_queue, &w->watcher_queue);
> ++      QUEUE_INSERT_TAIL(&loop->watcher_queue, &w->watcher_queue);
> +     }
> +   }
> +
> +@@ -180,7 +180,7 @@ void uv__loop_close(uv_loop_t* loop) {
> +   }
> +
> +   uv_mutex_lock(&loop->wq_mutex);
> +-  assert(uv__queue_empty(&loop->wq) && "thread pool work queue not
> empty!");
> ++  assert(QUEUE_EMPTY(&loop->wq) && "thread pool work queue not empty!")=
;
> +   assert(!uv__has_active_reqs(loop));
> +   uv_mutex_unlock(&loop->wq_mutex);
> +   uv_mutex_destroy(&loop->wq_mutex);
> +@@ -192,8 +192,8 @@ void uv__loop_close(uv_loop_t* loop) {
> +   uv_rwlock_destroy(&loop->cloexec_lock);
> +
> + #if 0
> +-  assert(uv__queue_empty(&loop->pending_queue));
> +-  assert(uv__queue_empty(&loop->watcher_queue));
> ++  assert(QUEUE_EMPTY(&loop->pending_queue));
> ++  assert(QUEUE_EMPTY(&loop->watcher_queue));
> +   assert(loop->nfds =3D=3D 0);
> + #endif
> +
> +diff --git a/deps/uv/src/unix/os390-syscalls.c
> b/deps/uv/src/unix/os390-syscalls.c
> +index 7f90c270906..5861aaaa202 100644
> +--- a/deps/uv/src/unix/os390-syscalls.c
> ++++ b/deps/uv/src/unix/os390-syscalls.c
> +@@ -27,7 +27,7 @@
> + #include <termios.h>
> + #include <sys/msg.h>
> +
> +-static struct uv__queue global_epoll_queue;
> ++static QUEUE global_epoll_queue;
> + static uv_mutex_t global_epoll_lock;
> + static uv_once_t once =3D UV_ONCE_INIT;
> +
> +@@ -178,18 +178,18 @@ static void after_fork(void) {
> +
> +
> + static void child_fork(void) {
> +-  struct uv__queue* q;
> ++  QUEUE* q;
> +   uv_once_t child_once =3D UV_ONCE_INIT;
> +
> +   /* reset once */
> +   memcpy(&once, &child_once, sizeof(child_once));
> +
> +   /* reset epoll list */
> +-  while (!uv__queue_empty(&global_epoll_queue)) {
> ++  while (!QUEUE_EMPTY(&global_epoll_queue)) {
> +     uv__os390_epoll* lst;
> +-    q =3D uv__queue_head(&global_epoll_queue);
> +-    uv__queue_remove(q);
> +-    lst =3D uv__queue_data(q, uv__os390_epoll, member);
> ++    q =3D QUEUE_HEAD(&global_epoll_queue);
> ++    QUEUE_REMOVE(q);
> ++    lst =3D QUEUE_DATA(q, uv__os390_epoll, member);
> +     uv__free(lst->items);
> +     lst->items =3D NULL;
> +     lst->size =3D 0;
> +@@ -201,7 +201,7 @@ static void child_fork(void) {
> +
> +
> + static void epoll_init(void) {
> +-  uv__queue_init(&global_epoll_queue);
> ++  QUEUE_INIT(&global_epoll_queue);
> +   if (uv_mutex_init(&global_epoll_lock))
> +     abort();
> +
> +@@ -225,7 +225,7 @@ uv__os390_epoll* epoll_create1(int flags) {
> +     lst->items[lst->size - 1].revents =3D 0;
> +     uv_once(&once, epoll_init);
> +     uv_mutex_lock(&global_epoll_lock);
> +-    uv__queue_insert_tail(&global_epoll_queue, &lst->member);
> ++    QUEUE_INSERT_TAIL(&global_epoll_queue, &lst->member);
> +     uv_mutex_unlock(&global_epoll_lock);
> +   }
> +
> +@@ -352,14 +352,14 @@ int epoll_wait(uv__os390_epoll* lst, struct
> epoll_event* events,
> +
> +
> + int epoll_file_close(int fd) {
> +-  struct uv__queue* q;
> ++  QUEUE* q;
> +
> +   uv_once(&once, epoll_init);
> +   uv_mutex_lock(&global_epoll_lock);
> +-  uv__queue_foreach(q, &global_epoll_queue) {
> ++  QUEUE_FOREACH(q, &global_epoll_queue) {
> +     uv__os390_epoll* lst;
> +
> +-    lst =3D uv__queue_data(q, uv__os390_epoll, member);
> ++    lst =3D QUEUE_DATA(q, uv__os390_epoll, member);
> +     if (fd < lst->size && lst->items !=3D NULL && lst->items[fd].fd !=
=3D -1)
> +       lst->items[fd].fd =3D -1;
> +   }
> +@@ -371,7 +371,7 @@ int epoll_file_close(int fd) {
> + void epoll_queue_close(uv__os390_epoll* lst) {
> +   /* Remove epoll instance from global queue */
> +   uv_mutex_lock(&global_epoll_lock);
> +-  uv__queue_remove(&lst->member);
> ++  QUEUE_REMOVE(&lst->member);
> +   uv_mutex_unlock(&global_epoll_lock);
> +
> +   /* Free resources */
> +diff --git a/deps/uv/src/unix/os390-syscalls.h
> b/deps/uv/src/unix/os390-syscalls.h
> +index d5f3bcf8b1c..9f504171d85 100644
> +--- a/deps/uv/src/unix/os390-syscalls.h
> ++++ b/deps/uv/src/unix/os390-syscalls.h
> +@@ -45,7 +45,7 @@ struct epoll_event {
> + };
> +
> + typedef struct {
> +-  struct uv__queue member;
> ++  QUEUE member;
> +   struct pollfd* items;
> +   unsigned long size;
> +   int msg_queue;
> +diff --git a/deps/uv/src/unix/os390.c b/deps/uv/src/unix/os390.c
> +index bbd37692d1d..a87c2d77faf 100644
> +--- a/deps/uv/src/unix/os390.c
> ++++ b/deps/uv/src/unix/os390.c
> +@@ -815,7 +815,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
> +   uv__os390_epoll* ep;
> +   int have_signals;
> +   int real_timeout;
> +-  struct uv__queue* q;
> ++  QUEUE* q;
> +   uv__io_t* w;
> +   uint64_t base;
> +   int count;
> +@@ -827,19 +827,19 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
> +   int reset_timeout;
> +
> +   if (loop->nfds =3D=3D 0) {
> +-    assert(uv__queue_empty(&loop->watcher_queue));
> ++    assert(QUEUE_EMPTY(&loop->watcher_queue));
> +     return;
> +   }
> +
> +   lfields =3D uv__get_internal_fields(loop);
> +
> +-  while (!uv__queue_empty(&loop->watcher_queue)) {
> ++  while (!QUEUE_EMPTY(&loop->watcher_queue)) {
> +     uv_stream_t* stream;
> +
> +-    q =3D uv__queue_head(&loop->watcher_queue);
> +-    uv__queue_remove(q);
> +-    uv__queue_init(q);
> +-    w =3D uv__queue_data(q, uv__io_t, watcher_queue);
> ++    q =3D QUEUE_HEAD(&loop->watcher_queue);
> ++    QUEUE_REMOVE(q);
> ++    QUEUE_INIT(q);
> ++    w =3D QUEUE_DATA(q, uv__io_t, watcher_queue);
> +
> +     assert(w->pevents !=3D 0);
> +     assert(w->fd >=3D 0);
> +diff --git a/deps/uv/src/unix/pipe.c b/deps/uv/src/unix/pipe.c
> +index d332f351830..ce91ac49b30 100644
> +--- a/deps/uv/src/unix/pipe.c
> ++++ b/deps/uv/src/unix/pipe.c
> +@@ -297,7 +297,7 @@ out:
> +   uv__req_init(handle->loop, req, UV_CONNECT);
> +   req->handle =3D (uv_stream_t*)handle;
> +   req->cb =3D cb;
> +-  uv__queue_init(&req->queue);
> ++  QUEUE_INIT(&req->queue);
> +
> +   /* Force callback to run on next tick in case of error. */
> +   if (err)
> +diff --git a/deps/uv/src/unix/posix-poll.c b/deps/uv/src/unix/posix-poll=
.c
> +index 2e016c2fbae..7e7de86845d 100644
> +--- a/deps/uv/src/unix/posix-poll.c
> ++++ b/deps/uv/src/unix/posix-poll.c
> +@@ -137,7 +137,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
> +   sigset_t set;
> +   uint64_t time_base;
> +   uint64_t time_diff;
> +-  struct uv__queue* q;
> ++  QUEUE* q;
> +   uv__io_t* w;
> +   size_t i;
> +   unsigned int nevents;
> +@@ -149,19 +149,19 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
> +   int reset_timeout;
> +
> +   if (loop->nfds =3D=3D 0) {
> +-    assert(uv__queue_empty(&loop->watcher_queue));
> ++    assert(QUEUE_EMPTY(&loop->watcher_queue));
> +     return;
> +   }
> +
> +   lfields =3D uv__get_internal_fields(loop);
> +
> +   /* Take queued watchers and add their fds to our poll fds array.  */
> +-  while (!uv__queue_empty(&loop->watcher_queue)) {
> +-    q =3D uv__queue_head(&loop->watcher_queue);
> +-    uv__queue_remove(q);
> +-    uv__queue_init(q);
> ++  while (!QUEUE_EMPTY(&loop->watcher_queue)) {
> ++    q =3D QUEUE_HEAD(&loop->watcher_queue);
> ++    QUEUE_REMOVE(q);
> ++    QUEUE_INIT(q);
> +
> +-    w =3D uv__queue_data(q, uv__io_t, watcher_queue);
> ++    w =3D QUEUE_DATA(q, uv__io_t, watcher_queue);
> +     assert(w->pevents !=3D 0);
> +     assert(w->fd >=3D 0);
> +     assert(w->fd < (int) loop->nwatchers);
> +diff --git a/deps/uv/src/unix/process.c b/deps/uv/src/unix/process.c
> +index dd58c18d9b9..bbf367b57d3 100644
> +--- a/deps/uv/src/unix/process.c
> ++++ b/deps/uv/src/unix/process.c
> +@@ -108,17 +108,17 @@ void uv__wait_children(uv_loop_t* loop) {
> +   int status;
> +   int options;
> +   pid_t pid;
> +-  struct uv__queue pending;
> +-  struct uv__queue* q;
> +-  struct uv__queue* h;
> ++  QUEUE pending;
> ++  QUEUE* q;
> ++  QUEUE* h;
> +
> +-  uv__queue_init(&pending);
> ++  QUEUE_INIT(&pending);
> +
> +   h =3D &loop->process_handles;
> +-  q =3D uv__queue_head(h);
> ++  q =3D QUEUE_HEAD(h);
> +   while (q !=3D h) {
> +-    process =3D uv__queue_data(q, uv_process_t, queue);
> +-    q =3D uv__queue_next(q);
> ++    process =3D QUEUE_DATA(q, uv_process_t, queue);
> ++    q =3D QUEUE_NEXT(q);
> +
> + #ifndef UV_USE_SIGCHLD
> +     if ((process->flags & UV_HANDLE_REAP) =3D=3D 0)
> +@@ -149,18 +149,18 @@ void uv__wait_children(uv_loop_t* loop) {
> +
> +     assert(pid =3D=3D process->pid);
> +     process->status =3D status;
> +-    uv__queue_remove(&process->queue);
> +-    uv__queue_insert_tail(&pending, &process->queue);
> ++    QUEUE_REMOVE(&process->queue);
> ++    QUEUE_INSERT_TAIL(&pending, &process->queue);
> +   }
> +
> +   h =3D &pending;
> +-  q =3D uv__queue_head(h);
> ++  q =3D QUEUE_HEAD(h);
> +   while (q !=3D h) {
> +-    process =3D uv__queue_data(q, uv_process_t, queue);
> +-    q =3D uv__queue_next(q);
> ++    process =3D QUEUE_DATA(q, uv_process_t, queue);
> ++    q =3D QUEUE_NEXT(q);
> +
> +-    uv__queue_remove(&process->queue);
> +-    uv__queue_init(&process->queue);
> ++    QUEUE_REMOVE(&process->queue);
> ++    QUEUE_INIT(&process->queue);
> +     uv__handle_stop(process);
> +
> +     if (process->exit_cb =3D=3D NULL)
> +@@ -176,7 +176,7 @@ void uv__wait_children(uv_loop_t* loop) {
> +
> +     process->exit_cb(process, exit_status, term_signal);
> +   }
> +-  assert(uv__queue_empty(&pending));
> ++  assert(QUEUE_EMPTY(&pending));
> + }
> +
> + /*
> +@@ -978,7 +978,7 @@ int uv_spawn(uv_loop_t* loop,
> +                               UV_PROCESS_WINDOWS_VERBATIM_ARGUMENTS)));
> +
> +   uv__handle_init(loop, (uv_handle_t*)process, UV_PROCESS);
> +-  uv__queue_init(&process->queue);
> ++  QUEUE_INIT(&process->queue);
> +   process->status =3D 0;
> +
> +   stdio_count =3D options->stdio_count;
> +@@ -1041,7 +1041,7 @@ int uv_spawn(uv_loop_t* loop,
> +
> +     process->pid =3D pid;
> +     process->exit_cb =3D options->exit_cb;
> +-    uv__queue_insert_tail(&loop->process_handles, &process->queue);
> ++    QUEUE_INSERT_TAIL(&loop->process_handles, &process->queue);
> +     uv__handle_start(process);
> +   }
> +
> +@@ -1103,10 +1103,10 @@ int uv_kill(int pid, int signum) {
> +
> +
> + void uv__process_close(uv_process_t* handle) {
> +-  uv__queue_remove(&handle->queue);
> ++  QUEUE_REMOVE(&handle->queue);
> +   uv__handle_stop(handle);
> + #ifdef UV_USE_SIGCHLD
> +-  if (uv__queue_empty(&handle->loop->process_handles))
> ++  if (QUEUE_EMPTY(&handle->loop->process_handles))
> +     uv_signal_stop(&handle->loop->child_watcher);
> + #endif
> + }
> +diff --git a/deps/uv/src/unix/signal.c b/deps/uv/src/unix/signal.c
> +index 63aba5a60e0..bb70523f561 100644
> +--- a/deps/uv/src/unix/signal.c
> ++++ b/deps/uv/src/unix/signal.c
> +@@ -291,16 +291,16 @@ int uv__signal_loop_fork(uv_loop_t* loop) {
> +
> +
> + void uv__signal_loop_cleanup(uv_loop_t* loop) {
> +-  struct uv__queue* q;
> ++  QUEUE* q;
> +
> +   /* Stop all the signal watchers that are still attached to this loop.
> This
> +    * ensures that the (shared) signal tree doesn't contain any invalid
> entries
> +    * entries, and that signal handlers are removed when appropriate.
> +-   * It's safe to use uv__queue_foreach here because the handles and th=
e
> handle
> ++   * It's safe to use QUEUE_FOREACH here because the handles and the
> handle
> +    * queue are not modified by uv__signal_stop().
> +    */
> +-  uv__queue_foreach(q, &loop->handle_queue) {
> +-    uv_handle_t* handle =3D uv__queue_data(q, uv_handle_t, handle_queue=
);
> ++  QUEUE_FOREACH(q, &loop->handle_queue) {
> ++    uv_handle_t* handle =3D QUEUE_DATA(q, uv_handle_t, handle_queue);
> +
> +     if (handle->type =3D=3D UV_SIGNAL)
> +       uv__signal_stop((uv_signal_t*) handle);
> +diff --git a/deps/uv/src/unix/stream.c b/deps/uv/src/unix/stream.c
> +index 28c4d5463c4..03f92b5045a 100644
> +--- a/deps/uv/src/unix/stream.c
> ++++ b/deps/uv/src/unix/stream.c
> +@@ -94,8 +94,8 @@ void uv__stream_init(uv_loop_t* loop,
> +   stream->accepted_fd =3D -1;
> +   stream->queued_fds =3D NULL;
> +   stream->delayed_error =3D 0;
> +-  uv__queue_init(&stream->write_queue);
> +-  uv__queue_init(&stream->write_completed_queue);
> ++  QUEUE_INIT(&stream->write_queue);
> ++  QUEUE_INIT(&stream->write_completed_queue);
> +   stream->write_queue_size =3D 0;
> +
> +   if (loop->emfile_fd =3D=3D -1) {
> +@@ -439,15 +439,15 @@ int uv__stream_open(uv_stream_t* stream, int fd,
> int flags) {
> +
> + void uv__stream_flush_write_queue(uv_stream_t* stream, int error) {
> +   uv_write_t* req;
> +-  struct uv__queue* q;
> +-  while (!uv__queue_empty(&stream->write_queue)) {
> +-    q =3D uv__queue_head(&stream->write_queue);
> +-    uv__queue_remove(q);
> ++  QUEUE* q;
> ++  while (!QUEUE_EMPTY(&stream->write_queue)) {
> ++    q =3D QUEUE_HEAD(&stream->write_queue);
> ++    QUEUE_REMOVE(q);
> +
> +-    req =3D uv__queue_data(q, uv_write_t, queue);
> ++    req =3D QUEUE_DATA(q, uv_write_t, queue);
> +     req->error =3D error;
> +
> +-    uv__queue_insert_tail(&stream->write_completed_queue, &req->queue);
> ++    QUEUE_INSERT_TAIL(&stream->write_completed_queue, &req->queue);
> +   }
> + }
> +
> +@@ -627,7 +627,7 @@ static void uv__drain(uv_stream_t* stream) {
> +   uv_shutdown_t* req;
> +   int err;
> +
> +-  assert(uv__queue_empty(&stream->write_queue));
> ++  assert(QUEUE_EMPTY(&stream->write_queue));
> +   if (!(stream->flags & UV_HANDLE_CLOSING)) {
> +     uv__io_stop(stream->loop, &stream->io_watcher, POLLOUT);
> +     uv__stream_osx_interrupt_select(stream);
> +@@ -714,7 +714,7 @@ static void uv__write_req_finish(uv_write_t* req) {
> +   uv_stream_t* stream =3D req->handle;
> +
> +   /* Pop the req off tcp->write_queue. */
> +-  uv__queue_remove(&req->queue);
> ++  QUEUE_REMOVE(&req->queue);
> +
> +   /* Only free when there was no error. On error, we touch up
> write_queue_size
> +    * right before making the callback. The reason we don't do that righ=
t
> away
> +@@ -731,7 +731,7 @@ static void uv__write_req_finish(uv_write_t* req) {
> +   /* Add it to the write_completed_queue where it will have its
> +    * callback called in the near future.
> +    */
> +-  uv__queue_insert_tail(&stream->write_completed_queue, &req->queue);
> ++  QUEUE_INSERT_TAIL(&stream->write_completed_queue, &req->queue);
> +   uv__io_feed(stream->loop, &stream->io_watcher);
> + }
> +
> +@@ -837,7 +837,7 @@ static int uv__try_write(uv_stream_t* stream,
> + }
> +
> + static void uv__write(uv_stream_t* stream) {
> +-  struct uv__queue* q;
> ++  QUEUE* q;
> +   uv_write_t* req;
> +   ssize_t n;
> +   int count;
> +@@ -851,11 +851,11 @@ static void uv__write(uv_stream_t* stream) {
> +   count =3D 32;
> +
> +   for (;;) {
> +-    if (uv__queue_empty(&stream->write_queue))
> ++    if (QUEUE_EMPTY(&stream->write_queue))
> +       return;
> +
> +-    q =3D uv__queue_head(&stream->write_queue);
> +-    req =3D uv__queue_data(q, uv_write_t, queue);
> ++    q =3D QUEUE_HEAD(&stream->write_queue);
> ++    req =3D QUEUE_DATA(q, uv_write_t, queue);
> +     assert(req->handle =3D=3D stream);
> +
> +     n =3D uv__try_write(stream,
> +@@ -899,19 +899,19 @@ error:
> +
> + static void uv__write_callbacks(uv_stream_t* stream) {
> +   uv_write_t* req;
> +-  struct uv__queue* q;
> +-  struct uv__queue pq;
> ++  QUEUE* q;
> ++  QUEUE pq;
> +
> +-  if (uv__queue_empty(&stream->write_completed_queue))
> ++  if (QUEUE_EMPTY(&stream->write_completed_queue))
> +     return;
> +
> +-  uv__queue_move(&stream->write_completed_queue, &pq);
> ++  QUEUE_MOVE(&stream->write_completed_queue, &pq);
> +
> +-  while (!uv__queue_empty(&pq)) {
> ++  while (!QUEUE_EMPTY(&pq)) {
> +     /* Pop a req off write_completed_queue. */
> +-    q =3D uv__queue_head(&pq);
> +-    req =3D uv__queue_data(q, uv_write_t, queue);
> +-    uv__queue_remove(q);
> ++    q =3D QUEUE_HEAD(&pq);
> ++    req =3D QUEUE_DATA(q, uv_write_t, queue);
> ++    QUEUE_REMOVE(q);
> +     uv__req_unregister(stream->loop, req);
> +
> +     if (req->bufs !=3D NULL) {
> +@@ -1174,7 +1174,7 @@ int uv_shutdown(uv_shutdown_t* req, uv_stream_t*
> stream, uv_shutdown_cb cb) {
> +   stream->shutdown_req =3D req;
> +   stream->flags &=3D ~UV_HANDLE_WRITABLE;
> +
> +-  if (uv__queue_empty(&stream->write_queue))
> ++  if (QUEUE_EMPTY(&stream->write_queue))
> +     uv__io_feed(stream->loop, &stream->io_watcher);
> +
> +   return 0;
> +@@ -1227,7 +1227,7 @@ static void uv__stream_io(uv_loop_t* loop,
> uv__io_t* w, unsigned int events) {
> +     uv__write_callbacks(stream);
> +
> +     /* Write queue drained. */
> +-    if (uv__queue_empty(&stream->write_queue))
> ++    if (QUEUE_EMPTY(&stream->write_queue))
> +       uv__drain(stream);
> +   }
> + }
> +@@ -1270,7 +1270,7 @@ static void uv__stream_connect(uv_stream_t* stream=
)
> {
> +   stream->connect_req =3D NULL;
> +   uv__req_unregister(stream->loop, req);
> +
> +-  if (error < 0 || uv__queue_empty(&stream->write_queue)) {
> ++  if (error < 0 || QUEUE_EMPTY(&stream->write_queue)) {
> +     uv__io_stop(stream->loop, &stream->io_watcher, POLLOUT);
> +   }
> +
> +@@ -1352,7 +1352,7 @@ int uv_write2(uv_write_t* req,
> +   req->handle =3D stream;
> +   req->error =3D 0;
> +   req->send_handle =3D send_handle;
> +-  uv__queue_init(&req->queue);
> ++  QUEUE_INIT(&req->queue);
> +
> +   req->bufs =3D req->bufsml;
> +   if (nbufs > ARRAY_SIZE(req->bufsml))
> +@@ -1367,7 +1367,7 @@ int uv_write2(uv_write_t* req,
> +   stream->write_queue_size +=3D uv__count_bufs(bufs, nbufs);
> +
> +   /* Append the request to write_queue. */
> +-  uv__queue_insert_tail(&stream->write_queue, &req->queue);
> ++  QUEUE_INSERT_TAIL(&stream->write_queue, &req->queue);
> +
> +   /* If the queue was empty when this function began, we should attempt
> to
> +    * do the write immediately. Otherwise start the write_watcher and wa=
it
> +diff --git a/deps/uv/src/unix/sunos.c b/deps/uv/src/unix/sunos.c
> +index 2d6bae79604..75b6fbad493 100644
> +--- a/deps/uv/src/unix/sunos.c
> ++++ b/deps/uv/src/unix/sunos.c
> +@@ -148,7 +148,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
> +   struct port_event events[1024];
> +   struct port_event* pe;
> +   struct timespec spec;
> +-  struct uv__queue* q;
> ++  QUEUE* q;
> +   uv__io_t* w;
> +   sigset_t* pset;
> +   sigset_t set;
> +@@ -166,16 +166,16 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
> +   int reset_timeout;
> +
> +   if (loop->nfds =3D=3D 0) {
> +-    assert(uv__queue_empty(&loop->watcher_queue));
> ++    assert(QUEUE_EMPTY(&loop->watcher_queue));
> +     return;
> +   }
> +
> +-  while (!uv__queue_empty(&loop->watcher_queue)) {
> +-    q =3D uv__queue_head(&loop->watcher_queue);
> +-    uv__queue_remove(q);
> +-    uv__queue_init(q);
> ++  while (!QUEUE_EMPTY(&loop->watcher_queue)) {
> ++    q =3D QUEUE_HEAD(&loop->watcher_queue);
> ++    QUEUE_REMOVE(q);
> ++    QUEUE_INIT(q);
> +
> +-    w =3D uv__queue_data(q, uv__io_t, watcher_queue);
> ++    w =3D QUEUE_DATA(q, uv__io_t, watcher_queue);
> +     assert(w->pevents !=3D 0);
> +
> +     if (port_associate(loop->backend_fd,
> +@@ -316,8 +316,8 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
> +         continue;  /* Disabled by callback. */
> +
> +       /* Events Ports operates in oneshot mode, rearm timer on next run=
.
> */
> +-      if (w->pevents !=3D 0 && uv__queue_empty(&w->watcher_queue))
> +-        uv__queue_insert_tail(&loop->watcher_queue, &w->watcher_queue);
> ++      if (w->pevents !=3D 0 && QUEUE_EMPTY(&w->watcher_queue))
> ++        QUEUE_INSERT_TAIL(&loop->watcher_queue, &w->watcher_queue);
> +     }
> +
> +     uv__metrics_inc_events(loop, nevents);
> +diff --git a/deps/uv/src/unix/tcp.c b/deps/uv/src/unix/tcp.c
> +index d6c848f4610..ab4e06c2f67 100644
> +--- a/deps/uv/src/unix/tcp.c
> ++++ b/deps/uv/src/unix/tcp.c
> +@@ -124,7 +124,7 @@ int uv_tcp_init_ex(uv_loop_t* loop, uv_tcp_t* tcp,
> unsigned int flags) {
> +   if (domain !=3D AF_UNSPEC) {
> +     err =3D new_socket(tcp, domain, 0);
> +     if (err) {
> +-      uv__queue_remove(&tcp->handle_queue);
> ++      QUEUE_REMOVE(&tcp->handle_queue);
> +       if (tcp->io_watcher.fd !=3D -1)
> +         uv__close(tcp->io_watcher.fd);
> +       tcp->io_watcher.fd =3D -1;
> +@@ -252,7 +252,7 @@ out:
> +   uv__req_init(handle->loop, req, UV_CONNECT);
> +   req->cb =3D cb;
> +   req->handle =3D (uv_stream_t*) handle;
> +-  uv__queue_init(&req->queue);
> ++  QUEUE_INIT(&req->queue);
> +   handle->connect_req =3D req;
> +
> +   uv__io_start(handle->loop, &handle->io_watcher, POLLOUT);
> +diff --git a/deps/uv/src/unix/tty.c b/deps/uv/src/unix/tty.c
> +index d099bdb3b67..7a5390c1a8b 100644
> +--- a/deps/uv/src/unix/tty.c
> ++++ b/deps/uv/src/unix/tty.c
> +@@ -222,7 +222,7 @@ skip:
> +     int rc =3D r;
> +     if (newfd !=3D -1)
> +       uv__close(newfd);
> +-    uv__queue_remove(&tty->handle_queue);
> ++    QUEUE_REMOVE(&tty->handle_queue);
> +     do
> +       r =3D fcntl(fd, F_SETFL, saved_flags);
> +     while (r =3D=3D -1 && errno =3D=3D EINTR);
> +diff --git a/deps/uv/src/unix/udp.c b/deps/uv/src/unix/udp.c
> +index c2814512a5f..f556808fbae 100644
> +--- a/deps/uv/src/unix/udp.c
> ++++ b/deps/uv/src/unix/udp.c
> +@@ -62,18 +62,18 @@ void uv__udp_close(uv_udp_t* handle) {
> +
> + void uv__udp_finish_close(uv_udp_t* handle) {
> +   uv_udp_send_t* req;
> +-  struct uv__queue* q;
> ++  QUEUE* q;
> +
> +   assert(!uv__io_active(&handle->io_watcher, POLLIN | POLLOUT));
> +   assert(handle->io_watcher.fd =3D=3D -1);
> +
> +-  while (!uv__queue_empty(&handle->write_queue)) {
> +-    q =3D uv__queue_head(&handle->write_queue);
> +-    uv__queue_remove(q);
> ++  while (!QUEUE_EMPTY(&handle->write_queue)) {
> ++    q =3D QUEUE_HEAD(&handle->write_queue);
> ++    QUEUE_REMOVE(q);
> +
> +-    req =3D uv__queue_data(q, uv_udp_send_t, queue);
> ++    req =3D QUEUE_DATA(q, uv_udp_send_t, queue);
> +     req->status =3D UV_ECANCELED;
> +-    uv__queue_insert_tail(&handle->write_completed_queue, &req->queue);
> ++    QUEUE_INSERT_TAIL(&handle->write_completed_queue, &req->queue);
> +   }
> +
> +   uv__udp_run_completed(handle);
> +@@ -90,16 +90,16 @@ void uv__udp_finish_close(uv_udp_t* handle) {
> +
> + static void uv__udp_run_completed(uv_udp_t* handle) {
> +   uv_udp_send_t* req;
> +-  struct uv__queue* q;
> ++  QUEUE* q;
> +
> +   assert(!(handle->flags & UV_HANDLE_UDP_PROCESSING));
> +   handle->flags |=3D UV_HANDLE_UDP_PROCESSING;
> +
> +-  while (!uv__queue_empty(&handle->write_completed_queue)) {
> +-    q =3D uv__queue_head(&handle->write_completed_queue);
> +-    uv__queue_remove(q);
> ++  while (!QUEUE_EMPTY(&handle->write_completed_queue)) {
> ++    q =3D QUEUE_HEAD(&handle->write_completed_queue);
> ++    QUEUE_REMOVE(q);
> +
> +-    req =3D uv__queue_data(q, uv_udp_send_t, queue);
> ++    req =3D QUEUE_DATA(q, uv_udp_send_t, queue);
> +     uv__req_unregister(handle->loop, req);
> +
> +     handle->send_queue_size -=3D uv__count_bufs(req->bufs, req->nbufs);
> +@@ -121,7 +121,7 @@ static void uv__udp_run_completed(uv_udp_t* handle) =
{
> +       req->send_cb(req, req->status);
> +   }
> +
> +-  if (uv__queue_empty(&handle->write_queue)) {
> ++  if (QUEUE_EMPTY(&handle->write_queue)) {
> +     /* Pending queue and completion queue empty, stop watcher. */
> +     uv__io_stop(handle->loop, &handle->io_watcher, POLLOUT);
> +     if (!uv__io_active(&handle->io_watcher, POLLIN))
> +@@ -280,20 +280,20 @@ static void uv__udp_sendmsg(uv_udp_t* handle) {
> +   uv_udp_send_t* req;
> +   struct mmsghdr h[20];
> +   struct mmsghdr* p;
> +-  struct uv__queue* q;
> ++  QUEUE* q;
> +   ssize_t npkts;
> +   size_t pkts;
> +   size_t i;
> +
> +-  if (uv__queue_empty(&handle->write_queue))
> ++  if (QUEUE_EMPTY(&handle->write_queue))
> +     return;
> +
> + write_queue_drain:
> +-  for (pkts =3D 0, q =3D uv__queue_head(&handle->write_queue);
> ++  for (pkts =3D 0, q =3D QUEUE_HEAD(&handle->write_queue);
> +        pkts < ARRAY_SIZE(h) && q !=3D &handle->write_queue;
> +-       ++pkts, q =3D uv__queue_head(q)) {
> ++       ++pkts, q =3D QUEUE_HEAD(q)) {
> +     assert(q !=3D NULL);
> +-    req =3D uv__queue_data(q, uv_udp_send_t, queue);
> ++    req =3D QUEUE_DATA(q, uv_udp_send_t, queue);
> +     assert(req !=3D NULL);
> +
> +     p =3D &h[pkts];
> +@@ -325,16 +325,16 @@ write_queue_drain:
> +   if (npkts < 1) {
> +     if (errno =3D=3D EAGAIN || errno =3D=3D EWOULDBLOCK || errno =3D=3D=
 ENOBUFS)
> +       return;
> +-    for (i =3D 0, q =3D uv__queue_head(&handle->write_queue);
> ++    for (i =3D 0, q =3D QUEUE_HEAD(&handle->write_queue);
> +          i < pkts && q !=3D &handle->write_queue;
> +-         ++i, q =3D uv__queue_head(&handle->write_queue)) {
> ++         ++i, q =3D QUEUE_HEAD(&handle->write_queue)) {
> +       assert(q !=3D NULL);
> +-      req =3D uv__queue_data(q, uv_udp_send_t, queue);
> ++      req =3D QUEUE_DATA(q, uv_udp_send_t, queue);
> +       assert(req !=3D NULL);
> +
> +       req->status =3D UV__ERR(errno);
> +-      uv__queue_remove(&req->queue);
> +-      uv__queue_insert_tail(&handle->write_completed_queue, &req->queue=
);
> ++      QUEUE_REMOVE(&req->queue);
> ++      QUEUE_INSERT_TAIL(&handle->write_completed_queue, &req->queue);
> +     }
> +     uv__io_feed(handle->loop, &handle->io_watcher);
> +     return;
> +@@ -343,11 +343,11 @@ write_queue_drain:
> +   /* Safety: npkts known to be >0 below. Hence cast from ssize_t
> +    * to size_t safe.
> +    */
> +-  for (i =3D 0, q =3D uv__queue_head(&handle->write_queue);
> ++  for (i =3D 0, q =3D QUEUE_HEAD(&handle->write_queue);
> +        i < (size_t)npkts && q !=3D &handle->write_queue;
> +-       ++i, q =3D uv__queue_head(&handle->write_queue)) {
> ++       ++i, q =3D QUEUE_HEAD(&handle->write_queue)) {
> +     assert(q !=3D NULL);
> +-    req =3D uv__queue_data(q, uv_udp_send_t, queue);
> ++    req =3D QUEUE_DATA(q, uv_udp_send_t, queue);
> +     assert(req !=3D NULL);
> +
> +     req->status =3D req->bufs[0].len;
> +@@ -357,25 +357,25 @@ write_queue_drain:
> +      * why we don't handle partial writes. Just pop the request
> +      * off the write queue and onto the completed queue, done.
> +      */
> +-    uv__queue_remove(&req->queue);
> +-    uv__queue_insert_tail(&handle->write_completed_queue, &req->queue);
> ++    QUEUE_REMOVE(&req->queue);
> ++    QUEUE_INSERT_TAIL(&handle->write_completed_queue, &req->queue);
> +   }
> +
> +   /* couldn't batch everything, continue sending (jump to avoid stack
> growth) */
> +-  if (!uv__queue_empty(&handle->write_queue))
> ++  if (!QUEUE_EMPTY(&handle->write_queue))
> +     goto write_queue_drain;
> +   uv__io_feed(handle->loop, &handle->io_watcher);
> + #else  /* __linux__ || ____FreeBSD__ */
> +   uv_udp_send_t* req;
> +   struct msghdr h;
> +-  struct uv__queue* q;
> ++  QUEUE* q;
> +   ssize_t size;
> +
> +-  while (!uv__queue_empty(&handle->write_queue)) {
> +-    q =3D uv__queue_head(&handle->write_queue);
> ++  while (!QUEUE_EMPTY(&handle->write_queue)) {
> ++    q =3D QUEUE_HEAD(&handle->write_queue);
> +     assert(q !=3D NULL);
> +
> +-    req =3D uv__queue_data(q, uv_udp_send_t, queue);
> ++    req =3D QUEUE_DATA(q, uv_udp_send_t, queue);
> +     assert(req !=3D NULL);
> +
> +     memset(&h, 0, sizeof h);
> +@@ -414,8 +414,8 @@ write_queue_drain:
> +      * why we don't handle partial writes. Just pop the request
> +      * off the write queue and onto the completed queue, done.
> +      */
> +-    uv__queue_remove(&req->queue);
> +-    uv__queue_insert_tail(&handle->write_completed_queue, &req->queue);
> ++    QUEUE_REMOVE(&req->queue);
> ++    QUEUE_INSERT_TAIL(&handle->write_completed_queue, &req->queue);
> +     uv__io_feed(handle->loop, &handle->io_watcher);
> +   }
> + #endif  /* __linux__ || ____FreeBSD__ */
> +@@ -729,7 +729,7 @@ int uv__udp_send(uv_udp_send_t* req,
> +   memcpy(req->bufs, bufs, nbufs * sizeof(bufs[0]));
> +   handle->send_queue_size +=3D uv__count_bufs(req->bufs, req->nbufs);
> +   handle->send_queue_count++;
> +-  uv__queue_insert_tail(&handle->write_queue, &req->queue);
> ++  QUEUE_INSERT_TAIL(&handle->write_queue, &req->queue);
> +   uv__handle_start(handle);
> +
> +   if (empty_queue && !(handle->flags & UV_HANDLE_UDP_PROCESSING)) {
> +@@ -739,7 +739,7 @@ int uv__udp_send(uv_udp_send_t* req,
> +      * away. In such cases the `io_watcher` has to be queued for
> asynchronous
> +      * write.
> +      */
> +-    if (!uv__queue_empty(&handle->write_queue))
> ++    if (!QUEUE_EMPTY(&handle->write_queue))
> +       uv__io_start(handle->loop, &handle->io_watcher, POLLOUT);
> +   } else {
> +     uv__io_start(handle->loop, &handle->io_watcher, POLLOUT);
> +@@ -1007,8 +1007,8 @@ int uv__udp_init_ex(uv_loop_t* loop,
> +   handle->send_queue_size =3D 0;
> +   handle->send_queue_count =3D 0;
> +   uv__io_init(&handle->io_watcher, uv__udp_io, fd);
> +-  uv__queue_init(&handle->write_queue);
> +-  uv__queue_init(&handle->write_completed_queue);
> ++  QUEUE_INIT(&handle->write_queue);
> ++  QUEUE_INIT(&handle->write_completed_queue);
> +
> +   return 0;
> + }
> +diff --git a/deps/uv/src/uv-common.c b/deps/uv/src/uv-common.c
> +index 916f3f4e006..cec771fab21 100644
> +--- a/deps/uv/src/uv-common.c
> ++++ b/deps/uv/src/uv-common.c
> +@@ -533,17 +533,17 @@ int uv_udp_recv_stop(uv_udp_t* handle) {
> +
> +
> + void uv_walk(uv_loop_t* loop, uv_walk_cb walk_cb, void* arg) {
> +-  struct uv__queue queue;
> +-  struct uv__queue* q;
> ++  QUEUE queue;
> ++  QUEUE* q;
> +   uv_handle_t* h;
> +
> +-  uv__queue_move(&loop->handle_queue, &queue);
> +-  while (!uv__queue_empty(&queue)) {
> +-    q =3D uv__queue_head(&queue);
> +-    h =3D uv__queue_data(q, uv_handle_t, handle_queue);
> ++  QUEUE_MOVE(&loop->handle_queue, &queue);
> ++  while (!QUEUE_EMPTY(&queue)) {
> ++    q =3D QUEUE_HEAD(&queue);
> ++    h =3D QUEUE_DATA(q, uv_handle_t, handle_queue);
> +
> +-    uv__queue_remove(q);
> +-    uv__queue_insert_tail(&loop->handle_queue, q);
> ++    QUEUE_REMOVE(q);
> ++    QUEUE_INSERT_TAIL(&loop->handle_queue, q);
> +
> +     if (h->flags & UV_HANDLE_INTERNAL) continue;
> +     walk_cb(h, arg);
> +@@ -553,14 +553,14 @@ void uv_walk(uv_loop_t* loop, uv_walk_cb walk_cb,
> void* arg) {
> +
> + static void uv__print_handles(uv_loop_t* loop, int only_active, FILE*
> stream) {
> +   const char* type;
> +-  struct uv__queue* q;
> ++  QUEUE* q;
> +   uv_handle_t* h;
> +
> +   if (loop =3D=3D NULL)
> +     loop =3D uv_default_loop();
> +
> +-  uv__queue_foreach(q, &loop->handle_queue) {
> +-    h =3D uv__queue_data(q, uv_handle_t, handle_queue);
> ++  QUEUE_FOREACH(q, &loop->handle_queue) {
> ++    h =3D QUEUE_DATA(q, uv_handle_t, handle_queue);
> +
> +     if (only_active && !uv__is_active(h))
> +       continue;
> +@@ -846,7 +846,7 @@ uv_loop_t* uv_loop_new(void) {
> +
> +
> + int uv_loop_close(uv_loop_t* loop) {
> +-  struct uv__queue* q;
> ++  QUEUE* q;
> +   uv_handle_t* h;
> + #ifndef NDEBUG
> +   void* saved_data;
> +@@ -855,8 +855,8 @@ int uv_loop_close(uv_loop_t* loop) {
> +   if (uv__has_active_reqs(loop))
> +     return UV_EBUSY;
> +
> +-  uv__queue_foreach(q, &loop->handle_queue) {
> +-    h =3D uv__queue_data(q, uv_handle_t, handle_queue);
> ++  QUEUE_FOREACH(q, &loop->handle_queue) {
> ++    h =3D QUEUE_DATA(q, uv_handle_t, handle_queue);
> +     if (!(h->flags & UV_HANDLE_INTERNAL))
> +       return UV_EBUSY;
> +   }
> +diff --git a/deps/uv/src/uv-common.h b/deps/uv/src/uv-common.h
> +index cd57e5a3515..decde5362c8 100644
> +--- a/deps/uv/src/uv-common.h
> ++++ b/deps/uv/src/uv-common.h
> +@@ -323,7 +323,7 @@ void uv__threadpool_cleanup(void);
> +     (h)->loop =3D (loop_);
>       \
> +     (h)->type =3D (type_);
>       \
> +     (h)->flags =3D UV_HANDLE_REF;  /* Ref the loop when active. */
>       \
> +-    uv__queue_insert_tail(&(loop_)->handle_queue, &(h)->handle_queue);
>       \
> ++    QUEUE_INSERT_TAIL(&(loop_)->handle_queue, &(h)->handle_queue);
>       \
> +     uv__handle_platform_init(h);
>       \
> +   }
>      \
> +   while (0)
> +@@ -415,7 +415,6 @@ struct uv__iou {
> +   size_t sqelen;
> +   int ringfd;
> +   uint32_t in_flight;
> +-  uint32_t flags;
> + };
> + #endif  /* __linux__ */
> +
> +diff --git a/deps/uv/src/win/core.c b/deps/uv/src/win/core.c
> +index e9885a0f1ff..9a3be58849a 100644
> +--- a/deps/uv/src/win/core.c
> ++++ b/deps/uv/src/win/core.c
> +@@ -255,8 +255,8 @@ int uv_loop_init(uv_loop_t* loop) {
> +   loop->time =3D 0;
> +   uv_update_time(loop);
> +
> +-  uv__queue_init(&loop->wq);
> +-  uv__queue_init(&loop->handle_queue);
> ++  QUEUE_INIT(&loop->wq);
> ++  QUEUE_INIT(&loop->handle_queue);
> +   loop->active_reqs.count =3D 0;
> +   loop->active_handles =3D 0;
> +
> +@@ -358,7 +358,7 @@ void uv__loop_close(uv_loop_t* loop) {
> +   }
> +
> +   uv_mutex_lock(&loop->wq_mutex);
> +-  assert(uv__queue_empty(&loop->wq) && "thread pool work queue not
> empty!");
> ++  assert(QUEUE_EMPTY(&loop->wq) && "thread pool work queue not empty!")=
;
> +   assert(!uv__has_active_reqs(loop));
> +   uv_mutex_unlock(&loop->wq_mutex);
> +   uv_mutex_destroy(&loop->wq_mutex);
> +diff --git a/deps/uv/src/win/fs.c b/deps/uv/src/win/fs.c
> +index fc209c54f47..deb9438d689 100644
> +--- a/deps/uv/src/win/fs.c
> ++++ b/deps/uv/src/win/fs.c
> +@@ -144,97 +144,26 @@ void uv__fs_init(void) {
> + }
> +
> +
> +-static int32_t fs__decode_wtf8_char(const char** input) {
> +-  uint32_t code_point;
> +-  uint8_t b1;
> +-  uint8_t b2;
> +-  uint8_t b3;
> +-  uint8_t b4;
> +-
> +-  b1 =3D **input;
> +-  if (b1 <=3D 0x7F)
> +-    return b1; /* ASCII code point */
> +-  if (b1 < 0xC2)
> +-    return -1; /* invalid: continuation byte */
> +-  code_point =3D b1;
> +-
> +-  b2 =3D *++*input;
> +-  if ((b2 & 0xC0) !=3D 0x80)
> +-    return -1; /* invalid: not a continuation byte */
> +-  code_point =3D (code_point << 6) | (b2 & 0x3F);
> +-  if (b1 <=3D 0xDF)
> +-    return 0x7FF & code_point; /* two-byte character */
> +-
> +-  b3 =3D *++*input;
> +-  if ((b3 & 0xC0) !=3D 0x80)
> +-    return -1; /* invalid: not a continuation byte */
> +-  code_point =3D (code_point << 6) | (b3 & 0x3F);
> +-  if (b1 <=3D 0xEF)
> +-    return 0xFFFF & code_point; /* three-byte character */
> +-
> +-  b4 =3D *++*input;
> +-  if ((b4 & 0xC0) !=3D 0x80)
> +-    return -1; /* invalid: not a continuation byte */
> +-  code_point =3D (code_point << 6) | (b4 & 0x3F);
> +-  if (b1 <=3D 0xF4)
> +-    if (code_point <=3D 0x10FFFF)
> +-      return code_point; /* four-byte character */
> +-
> +-  /* code point too large */
> +-  return -1;
> +-}
> +-
> +-
> +-static ssize_t fs__get_length_wtf8(const char* source_ptr) {
> +-  size_t w_target_len =3D 0;
> +-  int32_t code_point;
> +-
> +-  do {
> +-    code_point =3D fs__decode_wtf8_char(&source_ptr);
> +-    if (code_point < 0)
> +-      return -1;
> +-    if (code_point > 0xFFFF)
> +-      w_target_len++;
> +-    w_target_len++;
> +-  } while (*source_ptr++);
> +-  return w_target_len;
> +-}
> +-
> +-
> +-static void fs__wtf8_to_wide(const char* source_ptr, WCHAR* w_target) {
> +-  int32_t code_point;
> +-
> +-  do {
> +-    code_point =3D fs__decode_wtf8_char(&source_ptr);
> +-    /* fs__get_length_wtf8 should have been called and checked first. *=
/
> +-    assert(code_point >=3D 0);
> +-    if (code_point > 0x10000) {
> +-      assert(code_point < 0x10FFFF);
> +-      *w_target++ =3D (((code_point - 0x10000) >> 10) + 0xD800);
> +-      *w_target++ =3D ((code_point - 0x10000) & 0x3FF) + 0xDC00;
> +-    } else {
> +-      *w_target++ =3D code_point;
> +-    }
> +-  } while (*source_ptr++);
> +-}
> +-
> +-
> + INLINE static int fs__capture_path(uv_fs_t* req, const char* path,
> +     const char* new_path, const int copy_path) {
> +-  WCHAR* buf;
> +-  WCHAR* pos;
> +-  size_t buf_sz =3D 0;
> +-  size_t path_len =3D 0;
> +-  ssize_t pathw_len =3D 0;
> +-  ssize_t new_pathw_len =3D 0;
> ++  char* buf;
> ++  char* pos;
> ++  ssize_t buf_sz =3D 0, path_len =3D 0, pathw_len =3D 0, new_pathw_len =
=3D 0;
> +
> +   /* new_path can only be set if path is also set. */
> +   assert(new_path =3D=3D NULL || path !=3D NULL);
> +
> +   if (path !=3D NULL) {
> +-    pathw_len =3D fs__get_length_wtf8(path);
> +-    if (pathw_len < 0)
> +-      return ERROR_INVALID_NAME;
> ++    pathw_len =3D MultiByteToWideChar(CP_UTF8,
> ++                                    0,
> ++                                    path,
> ++                                    -1,
> ++                                    NULL,
> ++                                    0);
> ++    if (pathw_len =3D=3D 0) {
> ++      return GetLastError();
> ++    }
> ++
> +     buf_sz +=3D pathw_len * sizeof(WCHAR);
> +   }
> +
> +@@ -244,9 +173,16 @@ INLINE static int fs__capture_path(uv_fs_t* req,
> const char* path,
> +   }
> +
> +   if (new_path !=3D NULL) {
> +-    new_pathw_len =3D fs__get_length_wtf8(new_path);
> +-    if (new_pathw_len < 0)
> +-      return ERROR_INVALID_NAME;
> ++    new_pathw_len =3D MultiByteToWideChar(CP_UTF8,
> ++                                        0,
> ++                                        new_path,
> ++                                        -1,
> ++                                        NULL,
> ++                                        0);
> ++    if (new_pathw_len =3D=3D 0) {
> ++      return GetLastError();
> ++    }
> ++
> +     buf_sz +=3D new_pathw_len * sizeof(WCHAR);
> +   }
> +
> +@@ -258,7 +194,7 @@ INLINE static int fs__capture_path(uv_fs_t* req,
> const char* path,
> +     return 0;
> +   }
> +
> +-  buf =3D uv__malloc(buf_sz);
> ++  buf =3D (char*) uv__malloc(buf_sz);
> +   if (buf =3D=3D NULL) {
> +     return ERROR_OUTOFMEMORY;
> +   }
> +@@ -266,17 +202,29 @@ INLINE static int fs__capture_path(uv_fs_t* req,
> const char* path,
> +   pos =3D buf;
> +
> +   if (path !=3D NULL) {
> +-    fs__wtf8_to_wide(path, pos);
> +-    req->file.pathw =3D pos;
> +-    pos +=3D pathw_len;
> ++    DWORD r =3D MultiByteToWideChar(CP_UTF8,
> ++                                  0,
> ++                                  path,
> ++                                  -1,
> ++                                  (WCHAR*) pos,
> ++                                  pathw_len);
> ++    assert(r =3D=3D (DWORD) pathw_len);
> ++    req->file.pathw =3D (WCHAR*) pos;
> ++    pos +=3D r * sizeof(WCHAR);
> +   } else {
> +     req->file.pathw =3D NULL;
> +   }
> +
> +   if (new_path !=3D NULL) {
> +-    fs__wtf8_to_wide(new_path, pos);
> +-    req->fs.info.new_pathw =3D pos;
> +-    pos +=3D new_pathw_len;
> ++    DWORD r =3D MultiByteToWideChar(CP_UTF8,
> ++                                  0,
> ++                                  new_path,
> ++                                  -1,
> ++                                  (WCHAR*) pos,
> ++                                  new_pathw_len);
> ++    assert(r =3D=3D (DWORD) new_pathw_len);
> ++    req->fs.info.new_pathw =3D (WCHAR*) pos;
> ++    pos +=3D r * sizeof(WCHAR);
> +   } else {
> +     req->fs.info.new_pathw =3D NULL;
> +   }
> +@@ -284,8 +232,8 @@ INLINE static int fs__capture_path(uv_fs_t* req,
> const char* path,
> +   req->path =3D path;
> +   if (path !=3D NULL && copy_path) {
> +     memcpy(pos, path, path_len);
> +-    assert(path_len =3D=3D buf_sz - (pos - buf) * sizeof(WCHAR));
> +-    req->path =3D (char*) pos;
> ++    assert(path_len =3D=3D buf_sz - (pos - buf));
> ++    req->path =3D pos;
> +   }
> +
> +   req->flags |=3D UV_FS_FREE_PATHS;
> +@@ -311,115 +259,57 @@ INLINE static void uv__fs_req_init(uv_loop_t*
> loop, uv_fs_t* req,
> + }
> +
> +
> +-static int32_t fs__get_surrogate_value(const WCHAR* w_source_ptr,
> +-                                       size_t w_source_len) {
> +-  WCHAR u;
> +-  WCHAR next;
> +-
> +-  u =3D w_source_ptr[0];
> +-  if (u >=3D 0xD800 && u <=3D 0xDBFF && w_source_len > 1) {
> +-    next =3D w_source_ptr[1];
> +-    if (next >=3D 0xDC00 && next <=3D 0xDFFF)
> +-      return 0x10000 + ((u - 0xD800) << 10) + (next - 0xDC00);
> +-  }
> +-  return u;
> +-}
> +-
> +-
> +-static size_t fs__get_length_wide(const WCHAR* w_source_ptr,
> +-                                  size_t w_source_len) {
> +-  size_t target_len;
> +-  int32_t code_point;
> ++static int fs__wide_to_utf8(WCHAR* w_source_ptr,
> ++                               DWORD w_source_len,
> ++                               char** target_ptr,
> ++                               uint64_t* target_len_ptr) {
> ++  int r;
> ++  int target_len;
> ++  char* target;
> ++  target_len =3D WideCharToMultiByte(CP_UTF8,
> ++                                   0,
> ++                                   w_source_ptr,
> ++                                   w_source_len,
> ++                                   NULL,
> ++                                   0,
> ++                                   NULL,
> ++                                   NULL);
> +
> +-  target_len =3D 0;
> +-  for (; w_source_len; w_source_len--, w_source_ptr++) {
> +-    code_point =3D fs__get_surrogate_value(w_source_ptr, w_source_len);
> +-    /* Can be invalid UTF-8 but must be valid WTF-8. */
> +-    assert(code_point >=3D 0);
> +-    if (code_point < 0x80)
> +-      target_len +=3D 1;
> +-    else if (code_point < 0x800)
> +-      target_len +=3D 2;
> +-    else if (code_point < 0x10000)
> +-      target_len +=3D 3;
> +-    else {
> +-      target_len +=3D 4;
> +-      w_source_ptr++;
> +-      w_source_len--;
> +-    }
> ++  if (target_len =3D=3D 0) {
> ++    return -1;
> +   }
> +-  return target_len;
> +-}
> +
> +-
> +-static int fs__wide_to_wtf8(WCHAR* w_source_ptr,
> +-                            size_t w_source_len,
> +-                            char** target_ptr,
> +-                            size_t* target_len_ptr) {
> +-  size_t target_len;
> +-  char* target;
> +-  int32_t code_point;
> +-
> +-  /* If *target_ptr is provided, then *target_len_ptr must be its lengt=
h
> +-   * (excluding space for null), otherwise we will compute the
> target_len_ptr
> +-   * length and may return a new allocation in *target_ptr if target_pt=
r
> is
> +-   * provided. */
> +-  if (target_ptr =3D=3D NULL || *target_ptr =3D=3D NULL) {
> +-    target_len =3D fs__get_length_wide(w_source_ptr, w_source_len);
> +-    if (target_len_ptr !=3D NULL)
> +-      *target_len_ptr =3D target_len;
> +-  } else {
> +-    target_len =3D *target_len_ptr;
> ++  if (target_len_ptr !=3D NULL) {
> ++    *target_len_ptr =3D target_len;
> +   }
> +
> +-  if (target_ptr =3D=3D NULL)
> ++  if (target_ptr =3D=3D NULL) {
> +     return 0;
> +-
> +-  if (*target_ptr =3D=3D NULL) {
> +-    target =3D uv__malloc(target_len + 1);
> +-    if (target =3D=3D NULL) {
> +-      SetLastError(ERROR_OUTOFMEMORY);
> +-      return -1;
> +-    }
> +-    *target_ptr =3D target;
> +-  } else {
> +-    target =3D *target_ptr;
> +-  }
> +-
> +-  for (; w_source_len; w_source_len--, w_source_ptr++) {
> +-    code_point =3D fs__get_surrogate_value(w_source_ptr, w_source_len);
> +-    /* Can be invalid UTF-8 but must be valid WTF-8. */
> +-    assert(code_point >=3D 0);
> +-
> +-    if (code_point < 0x80) {
> +-      *target++ =3D code_point;
> +-    } else if (code_point < 0x800) {
> +-      *target++ =3D 0xC0 | (code_point >> 6);
> +-      *target++ =3D 0x80 | (code_point & 0x3F);
> +-    } else if (code_point < 0x10000) {
> +-      *target++ =3D 0xE0 | (code_point >> 12);
> +-      *target++ =3D 0x80 | ((code_point >> 6) & 0x3F);
> +-      *target++ =3D 0x80 | (code_point & 0x3F);
> +-    } else {
> +-      *target++ =3D 0xF0 | (code_point >> 18);
> +-      *target++ =3D 0x80 | ((code_point >> 12) & 0x3F);
> +-      *target++ =3D 0x80 | ((code_point >> 6) & 0x3F);
> +-      *target++ =3D 0x80 | (code_point & 0x3F);
> +-      w_source_ptr++;
> +-      w_source_len--;
> +-    }
> +   }
> +-  assert((size_t) (target - *target_ptr) =3D=3D target_len);
> +
> +-  *target++ =3D '\0';
> ++  target =3D uv__malloc(target_len + 1);
> ++  if (target =3D=3D NULL) {
> ++    SetLastError(ERROR_OUTOFMEMORY);
> ++    return -1;
> ++  }
> +
> ++  r =3D WideCharToMultiByte(CP_UTF8,
> ++                          0,
> ++                          w_source_ptr,
> ++                          w_source_len,
> ++                          target,
> ++                          target_len,
> ++                          NULL,
> ++                          NULL);
> ++  assert(r =3D=3D target_len);
> ++  target[target_len] =3D '\0';
> ++  *target_ptr =3D target;
> +   return 0;
> + }
> +
> +
> +-INLINE static int fs__readlink_handle(HANDLE handle,
> +-                                      char** target_ptr,
> +-                                      size_t* target_len_ptr) {
> ++INLINE static int fs__readlink_handle(HANDLE handle, char** target_ptr,
> ++    uint64_t* target_len_ptr) {
> +   char buffer[MAXIMUM_REPARSE_DATA_BUFFER_SIZE];
> +   REPARSE_DATA_BUFFER* reparse_data =3D (REPARSE_DATA_BUFFER*) buffer;
> +   WCHAR* w_target;
> +@@ -549,8 +439,7 @@ INLINE static int fs__readlink_handle(HANDLE handle,
> +     return -1;
> +   }
> +
> +-  assert(target_ptr =3D=3D NULL || *target_ptr =3D=3D NULL);
> +-  return fs__wide_to_wtf8(w_target, w_target_len, target_ptr,
> target_len_ptr);
> ++  return fs__wide_to_utf8(w_target, w_target_len, target_ptr,
> target_len_ptr);
> + }
> +
> +
> +@@ -1540,8 +1429,7 @@ void fs__scandir(uv_fs_t* req) {
> +       uv__dirent_t* dirent;
> +
> +       size_t wchar_len;
> +-      size_t wtf8_len;
> +-      char* wtf8;
> ++      size_t utf8_len;
> +
> +       /* Obtain a pointer to the current directory entry. */
> +       position +=3D next_entry_offset;
> +@@ -1568,8 +1456,11 @@ void fs__scandir(uv_fs_t* req) {
> +           info->FileName[1] =3D=3D L'.')
> +         continue;
> +
> +-      /* Compute the space required to store the filename as WTF-8. */
> +-      wtf8_len =3D fs__get_length_wide(&info->FileName[0], wchar_len);
> ++      /* Compute the space required to store the filename as UTF-8. */
> ++      utf8_len =3D WideCharToMultiByte(
> ++          CP_UTF8, 0, &info->FileName[0], wchar_len, NULL, 0, NULL,
> NULL);
> ++      if (utf8_len =3D=3D 0)
> ++        goto win32_error;
> +
> +       /* Resize the dirent array if needed. */
> +       if (dirents_used >=3D dirents_size) {
> +@@ -1589,17 +1480,26 @@ void fs__scandir(uv_fs_t* req) {
> +        * includes room for the first character of the filename, but
> `utf8_len`
> +        * doesn't count the NULL terminator at this point.
> +        */
> +-      dirent =3D uv__malloc(sizeof *dirent + wtf8_len);
> ++      dirent =3D uv__malloc(sizeof *dirent + utf8_len);
> +       if (dirent =3D=3D NULL)
> +         goto out_of_memory_error;
> +
> +       dirents[dirents_used++] =3D dirent;
> +
> +       /* Convert file name to UTF-8. */
> +-      wtf8 =3D &dirent->d_name[0];
> +-      if (fs__wide_to_wtf8(&info->FileName[0], wchar_len, &wtf8,
> &wtf8_len) =3D=3D -1)
> ++      if (WideCharToMultiByte(CP_UTF8,
> ++                              0,
> ++                              &info->FileName[0],
> ++                              wchar_len,
> ++                              &dirent->d_name[0],
> ++                              utf8_len,
> ++                              NULL,
> ++                              NULL) =3D=3D 0)
> +         goto win32_error;
> +
> ++      /* Add a null terminator to the filename. */
> ++      dirent->d_name[utf8_len] =3D '\0';
> ++
> +       /* Fill out the type field. */
> +       if (info->FileAttributes & FILE_ATTRIBUTE_DEVICE)
> +         dirent->d_type =3D UV__DT_CHAR;
> +@@ -1808,7 +1708,6 @@ void fs__closedir(uv_fs_t* req) {
> +
> + INLINE static int fs__stat_handle(HANDLE handle, uv_stat_t* statbuf,
> +     int do_lstat) {
> +-  size_t target_length =3D 0;
> +   FILE_FS_DEVICE_INFORMATION device_info;
> +   FILE_ALL_INFORMATION file_info;
> +   FILE_FS_VOLUME_INFORMATION volume_info;
> +@@ -1904,10 +1803,9 @@ INLINE static int fs__stat_handle(HANDLE handle,
> uv_stat_t* statbuf,
> +      * to be treated as a regular file. The higher level lstat function
> will
> +      * detect this failure and retry without do_lstat if appropriate.
> +      */
> +-    if (fs__readlink_handle(handle, NULL, &target_length) !=3D 0)
> ++    if (fs__readlink_handle(handle, NULL, &statbuf->st_size) !=3D 0)
> +       return -1;
> +     statbuf->st_mode |=3D S_IFLNK;
> +-    statbuf->st_size =3D target_length;
> +   }
> +
> +   if (statbuf->st_mode =3D=3D 0) {
> +@@ -2763,7 +2661,6 @@ static void fs__readlink(uv_fs_t* req) {
> +     return;
> +   }
> +
> +-  assert(req->ptr =3D=3D NULL);
> +   if (fs__readlink_handle(handle, (char**) &req->ptr, NULL) !=3D 0) {
> +     DWORD error =3D GetLastError();
> +     SET_REQ_WIN32_ERROR(req, error);
> +@@ -2823,8 +2720,7 @@ static ssize_t fs__realpath_handle(HANDLE handle,
> char** realpath_ptr) {
> +     return -1;
> +   }
> +
> +-  assert(*realpath_ptr =3D=3D NULL);
> +-  r =3D fs__wide_to_wtf8(w_realpath_ptr, w_realpath_len, realpath_ptr,
> NULL);
> ++  r =3D fs__wide_to_utf8(w_realpath_ptr, w_realpath_len, realpath_ptr,
> NULL);
> +   uv__free(w_realpath_buf);
> +   return r;
> + }
> +@@ -2844,7 +2740,6 @@ static void fs__realpath(uv_fs_t* req) {
> +     return;
> +   }
> +
> +-  assert(req->ptr =3D=3D NULL);
> +   if (fs__realpath_handle(handle, (char**) &req->ptr) =3D=3D -1) {
> +     CloseHandle(handle);
> +     SET_REQ_WIN32_ERROR(req, GetLastError());
> +diff --git a/deps/uv/src/win/handle-inl.h b/deps/uv/src/win/handle-inl.h
> +index 4722e85790a..5c843c241ef 100644
> +--- a/deps/uv/src/win/handle-inl.h
> ++++ b/deps/uv/src/win/handle-inl.h
> +@@ -75,7 +75,7 @@
> +
> + #define uv__handle_close(handle)                                       =
 \
> +   do {                                                                 =
 \
> +-    uv__queue_remove(&(handle)->handle_queue);                         =
 \
> ++    QUEUE_REMOVE(&(handle)->handle_queue);                             =
 \
> +     uv__active_handle_rm((uv_handle_t*) (handle));                     =
 \
> +                                                                        =
 \
> +     (handle)->flags |=3D UV_HANDLE_CLOSED;                             =
   \
> +diff --git a/deps/uv/src/win/pipe.c b/deps/uv/src/win/pipe.c
> +index f0cac382256..5e4276387ac 100644
> +--- a/deps/uv/src/win/pipe.c
> ++++ b/deps/uv/src/win/pipe.c
> +@@ -55,7 +55,7 @@ static const int pipe_prefix_len =3D sizeof(pipe_prefi=
x)
> - 1;
> + typedef struct {
> +   uv__ipc_socket_xfer_type_t xfer_type;
> +   uv__ipc_socket_xfer_info_t xfer_info;
> +-  struct uv__queue member;
> ++  QUEUE member;
> + } uv__ipc_xfer_queue_item_t;
> +
> + /* IPC frame header flags. */
> +@@ -111,7 +111,7 @@ int uv_pipe_init(uv_loop_t* loop, uv_pipe_t* handle,
> int ipc) {
> +   handle->name =3D NULL;
> +   handle->pipe.conn.ipc_remote_pid =3D 0;
> +   handle->pipe.conn.ipc_data_frame.payload_remaining =3D 0;
> +-  uv__queue_init(&handle->pipe.conn.ipc_xfer_queue);
> ++  QUEUE_INIT(&handle->pipe.conn.ipc_xfer_queue);
> +   handle->pipe.conn.ipc_xfer_queue_length =3D 0;
> +   handle->ipc =3D ipc;
> +   handle->pipe.conn.non_overlapped_writes_tail =3D NULL;
> +@@ -637,13 +637,13 @@ void uv__pipe_endgame(uv_loop_t* loop, uv_pipe_t*
> handle) {
> +
> +   if (handle->flags & UV_HANDLE_CONNECTION) {
> +     /* Free pending sockets */
> +-    while (!uv__queue_empty(&handle->pipe.conn.ipc_xfer_queue)) {
> +-      struct uv__queue* q;
> ++    while (!QUEUE_EMPTY(&handle->pipe.conn.ipc_xfer_queue)) {
> ++      QUEUE* q;
> +       SOCKET socket;
> +
> +-      q =3D uv__queue_head(&handle->pipe.conn.ipc_xfer_queue);
> +-      uv__queue_remove(q);
> +-      xfer_queue_item =3D uv__queue_data(q, uv__ipc_xfer_queue_item_t,
> member);
> ++      q =3D QUEUE_HEAD(&handle->pipe.conn.ipc_xfer_queue);
> ++      QUEUE_REMOVE(q);
> ++      xfer_queue_item =3D QUEUE_DATA(q, uv__ipc_xfer_queue_item_t, memb=
er);
> +
> +       /* Materialize socket and close it */
> +       socket =3D WSASocketW(FROM_PROTOCOL_INFO,
> +@@ -1124,20 +1124,20 @@ int uv__pipe_accept(uv_pipe_t* server,
> uv_stream_t* client) {
> +   uv_loop_t* loop =3D server->loop;
> +   uv_pipe_t* pipe_client;
> +   uv_pipe_accept_t* req;
> +-  struct uv__queue* q;
> ++  QUEUE* q;
> +   uv__ipc_xfer_queue_item_t* item;
> +   int err;
> +
> +   if (server->ipc) {
> +-    if (uv__queue_empty(&server->pipe.conn.ipc_xfer_queue)) {
> ++    if (QUEUE_EMPTY(&server->pipe.conn.ipc_xfer_queue)) {
> +       /* No valid pending sockets. */
> +       return WSAEWOULDBLOCK;
> +     }
> +
> +-    q =3D uv__queue_head(&server->pipe.conn.ipc_xfer_queue);
> +-    uv__queue_remove(q);
> ++    q =3D QUEUE_HEAD(&server->pipe.conn.ipc_xfer_queue);
> ++    QUEUE_REMOVE(q);
> +     server->pipe.conn.ipc_xfer_queue_length--;
> +-    item =3D uv__queue_data(q, uv__ipc_xfer_queue_item_t, member);
> ++    item =3D QUEUE_DATA(q, uv__ipc_xfer_queue_item_t, member);
> +
> +     err =3D uv__tcp_xfer_import(
> +         (uv_tcp_t*) client, item->xfer_type, &item->xfer_info);
> +@@ -1891,7 +1891,7 @@ static void uv__pipe_queue_ipc_xfer_info(
> +   item->xfer_type =3D xfer_type;
> +   item->xfer_info =3D *xfer_info;
> +
> +-  uv__queue_insert_tail(&handle->pipe.conn.ipc_xfer_queue,
> &item->member);
> ++  QUEUE_INSERT_TAIL(&handle->pipe.conn.ipc_xfer_queue, &item->member);
> +   handle->pipe.conn.ipc_xfer_queue_length++;
> + }
> +
> +diff --git a/deps/uv/src/win/tcp.c b/deps/uv/src/win/tcp.c
> +index 187f36e2a61..6b282e0b501 100644
> +--- a/deps/uv/src/win/tcp.c
> ++++ b/deps/uv/src/win/tcp.c
> +@@ -175,14 +175,14 @@ int uv_tcp_init_ex(uv_loop_t* loop, uv_tcp_t*
> handle, unsigned int flags) {
> +     sock =3D socket(domain, SOCK_STREAM, 0);
> +     if (sock =3D=3D INVALID_SOCKET) {
> +       err =3D WSAGetLastError();
> +-      uv__queue_remove(&handle->handle_queue);
> ++      QUEUE_REMOVE(&handle->handle_queue);
> +       return uv_translate_sys_error(err);
> +     }
> +
> +     err =3D uv__tcp_set_socket(handle->loop, handle, sock, domain, 0);
> +     if (err) {
> +       closesocket(sock);
> +-      uv__queue_remove(&handle->handle_queue);
> ++      QUEUE_REMOVE(&handle->handle_queue);
> +       return uv_translate_sys_error(err);
> +     }
> +
> +diff --git a/deps/uv/src/win/udp.c b/deps/uv/src/win/udp.c
> +index eab53842d4f..8a982d1907d 100644
> +--- a/deps/uv/src/win/udp.c
> ++++ b/deps/uv/src/win/udp.c
> +@@ -146,14 +146,14 @@ int uv__udp_init_ex(uv_loop_t* loop,
> +     sock =3D socket(domain, SOCK_DGRAM, 0);
> +     if (sock =3D=3D INVALID_SOCKET) {
> +       err =3D WSAGetLastError();
> +-      uv__queue_remove(&handle->handle_queue);
> ++      QUEUE_REMOVE(&handle->handle_queue);
> +       return uv_translate_sys_error(err);
> +     }
> +
> +     err =3D uv__udp_set_socket(handle->loop, handle, sock, domain);
> +     if (err) {
> +       closesocket(sock);
> +-      uv__queue_remove(&handle->handle_queue);
> ++      QUEUE_REMOVE(&handle->handle_queue);
> +       return uv_translate_sys_error(err);
> +     }
> +   }
> diff --git
> a/recipes-devtools/nodejs/nodejs-20.8.1/0001-Using-native-binaries.patch
> b/recipes-devtools/nodejs/nodejs-20.8.1/0001-Using-native-binaries.patch
> new file mode 100644
> index 0000000..0178cec
> --- /dev/null
> +++
> b/recipes-devtools/nodejs/nodejs-20.8.1/0001-Using-native-binaries.patch
> @@ -0,0 +1,94 @@
> +From 6c3ac20477a4bac643088f24df3c042e627fafa9 Mon Sep 17 00:00:00 2001
> +From: Guillaume Burel <guillaume.burel@stormshield.eu>
> +Date: Fri, 3 Jan 2020 11:25:54 +0100
> +Subject: [PATCH] Using native binaries
> +
> +Upstream-Status: Inappropriate [embedded specific]
> +
> +Originally added in:
> +
> https://git.openembedded.org/meta-openembedded/commit/?id=3D1c8e4a679ae38=
2f953b2e5c7a4966a4646314f3e
> +later extended and renamed in:
> +
> https://git.openembedded.org/meta-openembedded/commit/?id=3Dfeeb172d1a8bf=
010490d22b8df9448b20d9d2aed
> +
> +Signed-off-by: Archana Polampalli <archana.polampalli@windriver.com>
> +---
> + node.gyp                 | 3 +
> + tools/v8_gypfiles/v8.gyp | 5 +++++
> + 2 files changed, 6 insertions(+)
> +
> +diff --git a/node.gyp b/node.gyp
> +index e8e1d9f9..e60ccc10 100644
> +--- a/node.gyp
> ++++ b/node.gyp
> +@@ -320,6 +320,7 @@
> +                   'action_name': 'node_mksnapshot',
> +                   'process_outputs_as_sources': 1,
> +                   'inputs': [
> ++                    '<(PRODUCT_DIR)/v8-qemu-wrapper.sh',
> +                     '<(node_mksnapshot_exec)',
> +                     '<(node_snapshot_main)',
> +                   ],
> +@@ -935,6 +935,7 @@
> +           'action_name': 'node_js2c',
> +           'process_outputs_as_sources': 1,
> +           'inputs': [
> ++            '<(PRODUCT_DIR)/v8-qemu-wrapper.sh',
> +             '<(node_js2c_exec)',
> +             '<@(library_files)',
> +             '<@(deps_files)',
> +@@ -944,6 +945,7 @@
> +             '<(SHARED_INTERMEDIATE_DIR)/node_javascript.cc',
> +           ],
> +           'action': [
> ++            '<(PRODUCT_DIR)/v8-qemu-wrapper.sh',
> +             '<(node_js2c_exec)',
> +             '<@(_outputs)',
> +             'lib',
> +
> +diff --git a/tools/v8_gypfiles/v8.gyp b/tools/v8_gypfiles/v8.gyp
> +index 42e26cd9..bc721991 100644
> +--- a/tools/v8_gypfiles/v8.gyp
> ++++ b/tools/v8_gypfiles/v8.gyp
> +@@ -68,6 +68,7 @@
> +         {
> +           'action_name': 'run_torque_action',
> +           'inputs': [  # Order matters.
> ++            '<(PRODUCT_DIR)/v8-qemu-wrapper.sh',
> +
>  '<(PRODUCT_DIR)/<(EXECUTABLE_PREFIX)torque<(EXECUTABLE_SUFFIX)',
> +             '<@(torque_files)',
> +           ],
> +@@ -99,6 +100,7 @@
> +             '<@(torque_outputs_inc)',
> +           ],
> +           'action': [
> ++            '<(PRODUCT_DIR)/v8-qemu-wrapper.sh',
> +
>  '<(PRODUCT_DIR)/<(EXECUTABLE_PREFIX)torque<(EXECUTABLE_SUFFIX)',
> +             '-o', '<(SHARED_INTERMEDIATE_DIR)/torque-generated',
> +             '-v8-root', '<(V8_ROOT)',
> +@@ -211,6 +213,7 @@
> +         {
> +           'action_name': 'generate_bytecode_builtins_list_action',
> +           'inputs': [
> ++            '<(PRODUCT_DIR)/v8-qemu-wrapper.sh',
> +
>  '<(PRODUCT_DIR)/<(EXECUTABLE_PREFIX)bytecode_builtins_list_generator<(EX=
ECUTABLE_SUFFIX)',
> +           ],
> +           'outputs': [
> +@@ -400,6 +403,7 @@
> +             ],
> +           },
> +           'inputs': [
> ++            '<(PRODUCT_DIR)/v8-qemu-wrapper.sh',
> +             '<(mksnapshot_exec)',
> +           ],
> +           'outputs': [
> +@@ -1539,6 +1543,7 @@
> +         {
> +           'action_name': 'run_gen-regexp-special-case_action',
> +           'inputs': [
> ++            '<(PRODUCT_DIR)/v8-qemu-wrapper.sh',
> +
>  '<(PRODUCT_DIR)/<(EXECUTABLE_PREFIX)gen-regexp-special-case<(EXECUTABLE_=
SUFFIX)',
> +           ],
> +           'outputs': [
> +--
> +2.34.1
> +
> diff --git
> a/recipes-devtools/nodejs/nodejs-20.8.1/0001-liftoff-Correct-function-sig=
natures.patch
> b/recipes-devtools/nodejs/nodejs-20.8.1/0001-liftoff-Correct-function-sig=
natures.patch
> new file mode 100644
> index 0000000..5af87d8
> --- /dev/null
> +++
> b/recipes-devtools/nodejs/nodejs-20.8.1/0001-liftoff-Correct-function-sig=
natures.patch
> @@ -0,0 +1,71 @@
> +From dc3652c0abcdf8573fd044907b19d8eda7ca1124 Mon Sep 17 00:00:00 2001
> +From: Khem Raj <raj.khem@gmail.com>
> +Date: Mon, 3 Jul 2023 12:33:16 +0000
> +Subject: [PATCH] [liftoff] Correct function signatures
> +
> +Fixes builds on mips where clang reports an error
> +../deps/v8/src/wasm/baseline/mips/liftoff-assembler-mips.h:661:5: error:
> no matching member function for call to 'Move'
> +    Move(tmp, src, type.value_type());
> +    ^~~~
> +
> +Upstream-Status: Submitted [
> https://chromium-review.googlesource.com/c/v8/v8/+/3235674]
> +
> +Signed-off-by: Archana Polampalli <archana.polampalli@windriver.com>
> +---
> + deps/v8/src/wasm/baseline/liftoff-assembler.h               | 6 +++---
> + deps/v8/src/wasm/baseline/mips64/liftoff-assembler-mips64.h | 2 +-
> + deps/v8/src/wasm/baseline/riscv/liftoff-assembler-riscv64.h | 2 +-
> + 3 files changed, 5 insertions(+), 5 deletions(-)
> +
> +diff --git a/deps/v8/src/wasm/baseline/liftoff-assembler.h
> b/deps/v8/src/wasm/baseline/liftoff-assembler.h
> +index aef63c64..f2a11b01 100644
> +--- a/deps/v8/src/wasm/baseline/liftoff-assembler.h
> ++++ b/deps/v8/src/wasm/baseline/liftoff-assembler.h
> +@@ -717,7 +717,7 @@ class LiftoffAssembler : public MacroAssembler {
> +   void FinishCall(const ValueKindSig*, compiler::CallDescriptor*);
> +
> +   // Move {src} into {dst}. {src} and {dst} must be different.
> +-  void Move(LiftoffRegister dst, LiftoffRegister src, ValueKind);
> ++  void Move(LiftoffRegister dst, LiftoffRegister src, ValueKind kind);
> +
> +   // Parallel register move: For a list of tuples <dst, src, kind>, mov=
e
> the
> +   // {src} register of kind {kind} into {dst}. If {src} equals {dst},
> ignore
> +@@ -884,8 +884,8 @@ class LiftoffAssembler : public MacroAssembler {
> +   inline void MoveStackValue(uint32_t dst_offset, uint32_t src_offset,
> +                              ValueKind);
> +
> +-  inline void Move(Register dst, Register src, ValueKind);
> +-  inline void Move(DoubleRegister dst, DoubleRegister src, ValueKind);
> ++  inline void Move(Register dst, Register src, ValueKind kind);
> ++  inline void Move(DoubleRegister dst, DoubleRegister src, ValueKind
> kind);
> +
> +   inline void Spill(int offset, LiftoffRegister, ValueKind);
> +   inline void Spill(int offset, WasmValue);
> +diff --git a/deps/v8/src/wasm/baseline/mips64/liftoff-assembler-mips64.h
> b/deps/v8/src/wasm/baseline/mips64/liftoff-assembler-mips64.h
> +index 96cba24c..53e1842d 100644
> +--- a/deps/v8/src/wasm/baseline/mips64/liftoff-assembler-mips64.h
> ++++ b/deps/v8/src/wasm/baseline/mips64/liftoff-assembler-mips64.h
> +@@ -592,7 +592,7 @@ void LiftoffAssembler::Store(Register dst_addr,
> Register offset_reg,
> +     pinned.set(dst_op.rm());
> +     LiftoffRegister tmp =3D GetUnusedRegister(src.reg_class(), pinned);
> +     // Save original value.
> +-    Move(tmp, src, type.value_type());
> ++    Move(tmp, src, type.value_type().kind());
> +
> +     src =3D tmp;
> +     pinned.set(tmp);
> +diff --git a/deps/v8/src/wasm/baseline/riscv/liftoff-assembler-riscv64.h
> b/deps/v8/src/wasm/baseline/riscv/liftoff-assembler-riscv64.h
> +index 1d6ae09e..397e82b2 100644
> +--- a/deps/v8/src/wasm/baseline/riscv/liftoff-assembler-riscv64.h
> ++++ b/deps/v8/src/wasm/baseline/riscv/liftoff-assembler-riscv64.h
> +@@ -286,7 +286,7 @@ void LiftoffAssembler::Store(Register dst_addr,
> Register offset_reg,
> +     pinned.set(dst_op.rm());
> +     LiftoffRegister tmp =3D GetUnusedRegister(src.reg_class(), pinned);
> +     // Save original value.
> +-    Move(tmp, src, type.value_type());
> ++    Move(tmp, src, type.value_type().kind());
> +
> +     src =3D tmp;
> +     pinned.set(tmp);
> +--
> +2.40.0
> diff --git
> a/recipes-devtools/nodejs/nodejs-20.8.1/0001-ppc64-Do-not-use-mminimal-to=
c-with-clang.patch
> b/recipes-devtools/nodejs/nodejs-20.8.1/0001-ppc64-Do-not-use-mminimal-to=
c-with-clang.patch
> new file mode 100644
> index 0000000..dd9c901
> --- /dev/null
> +++
> b/recipes-devtools/nodejs/nodejs-20.8.1/0001-ppc64-Do-not-use-mminimal-to=
c-with-clang.patch
> @@ -0,0 +1,25 @@
> +From 0976af0f3b328436ea44a74a406f311adb2ab211 Mon Sep 17 00:00:00 2001
> +From: Khem Raj <raj.khem@gmail.com>
> +Date: Tue, 15 Jun 2021 19:01:31 -0700
> +Subject: [PATCH] ppc64: Do not use -mminimal-toc with clang
> +
> +clang does not support this option
> +
> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
> +---
> +Upstream-Status: Pending
> +
> + common.gypi | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +--- a/common.gypi
> ++++ b/common.gypi
> +@@ -417,7 +417,7 @@
> +             'ldflags': [ '-m32' ],
> +           }],
> +           [ 'target_arch=3D=3D"ppc64" and OS!=3D"aix"', {
> +-            'cflags': [ '-m64', '-mminimal-toc' ],
> ++            'cflags': [ '-m64' ],
> +             'ldflags': [ '-m64' ],
> +           }],
> +           [ 'target_arch=3D=3D"s390x"', {
> diff --git
> a/recipes-devtools/nodejs/nodejs-20.8.1/0002-Revert-io_uring-changes-from=
-libuv-1.45.0.patch
> b/recipes-devtools/nodejs/nodejs-20.8.1/0002-Revert-io_uring-changes-from=
-libuv-1.45.0.patch
> new file mode 100644
> index 0000000..77cd53b
> --- /dev/null
> +++
> b/recipes-devtools/nodejs/nodejs-20.8.1/0002-Revert-io_uring-changes-from=
-libuv-1.45.0.patch
> @@ -0,0 +1,1803 @@
> +From 6d2ef4c8ba2304ee4941a6719b3ad9bd63e415a9 Mon Sep 17 00:00:00 2001
> +From: Martin Jansa <martin.jansa@gmail.com>
> +Date: Wed, 18 Oct 2023 21:09:44 +0200
> +Subject: [PATCH] Revert io_uring changes from libuv-1.45.0
> +
> +This reverts
> https://github.com/libuv/libuv/pull/3952/commits/26c79a942b92573a1388c0ee=
8a6ad4397f009318
> +
> +Included in nodejs-20.3.0 with the libuv upgrade to 1.45.0 in:
> +
> https://github.com/nodejs/node/commit/bfcb3d1d9a876f399013d326bd65804f9ed=
a77e4
> +
> +Reverted libuv commits:
> +Revert "linux: fix WRITEV with lots of bufs using io_uring (#4004)"
> +This reverts commit ef6a9a624df0a00687037474025a3608472f722a.
> +Revert "linux: work around EOWNERDEAD io_uring kernel bug (#4002)"
> +This reverts commit d23a20f62cc50b9fd7694992263f1d296d8f5cb4.
> +Revert "unix: handle CQ overflow in iou ring (#3991)"
> +This reverts commit 30fc896cc1b5822e9f1eb462587fe4b368a6215c.
> +Revert "unix: constrained_memory should return UINT64_MAX (#3753)"
> +This reverts commit 6ad347fae4520f39520d34bd7c7f5ddafab13a69.
> +Revert "linux: use io_uring to batch epoll_ctl calls (#3979)"
> +This reverts commit 6e073ef5daf93b708a654008959b823b58029e88.
> +Revert "linux: fix logic bug in sqe ring space check (#3980)"
> +This reverts commit f27208224084fc972b9d2802486d97ef31b51a39.
> +Revert "src: fix events/events_waiting metrics counter (#3957)"
> +This reverts commit e02642cf3b768b2c58a41f97fa38507e032ae415.
> +Revert "linux: remove bug workaround for obsolete kernels (#3965)"
> +This reverts commit 1c935a34454167b23f8eef7f0f63d7119f0de747.
> +Revert "linux: add IORING_OP_CLOSE support (#3964)"
> +This reverts commit dfae365f844e127621128a76bce7165e3f99a8d9.
> +Revert "linux: add IORING_OP_OPENAT support (#3963)"
> +This reverts commit 5ca5e475bb1711e65323ef1594a31818e5a1a9eb.
> +Revert "linux: fix academic valgrind warning (#3960)"
> +This reverts commit a7ff759ca1deacb2e0e6ae3c2d3dce91cc637dfe.
> +Revert "linux: introduce io_uring support (#3952)"
> +This reverts commit d2c31f429b87b476a7f1344d145dad4752a406d4.
> +
> +Dropped deps/uv/docs deps/uv/test changes as these dirs aren't included
> +in nodejs tarballs.
> +
> +Signed-off-by: Martin Jansa <martin.jansa@gmail.com>
> +---
> +Upstream-Status: Inappropriate [OE specific]
> +
> + deps/uv/docs/src/fs.rst               |   6 -
> + deps/uv/docs/src/misc.rst             |   5 +-
> + deps/uv/src/threadpool.c              |  21 -
> + deps/uv/src/unix/aix.c                |  11 +-
> + deps/uv/src/unix/fs.c                 |  57 +-
> + deps/uv/src/unix/internal.h           |  23 -
> + deps/uv/src/unix/kqueue.c             |  10 +-
> + deps/uv/src/unix/linux.c              | 998 +++-----------------------
> + deps/uv/src/unix/os390.c              |  11 +-
> + deps/uv/src/unix/posix-poll.c         |  11 +-
> + deps/uv/src/uv-common.h               |  28 -
> + deps/uv/src/win/core.c                |  20 +-
> + deps/uv/test/test-fs.c                |  33 -
> + deps/uv/test/test-list.h              |   4 -
> + deps/uv/test/test-metrics.c           | 151 ----
> + deps/uv/test/test-threadpool-cancel.c |  34 +-
> + 16 files changed, 138 insertions(+), 1285 deletions(-)
> +
> +diff --git a/deps/uv/src/threadpool.c b/deps/uv/src/threadpool.c
> +index 51962bf0021..a3da53026f9 100644
> +--- a/deps/uv/src/threadpool.c
> ++++ b/deps/uv/src/threadpool.c
> +@@ -275,13 +275,9 @@ void uv__work_submit(uv_loop_t* loop,
> + }
> +
> +
> +-/* TODO(bnoordhuis) teach libuv how to cancel file operations
> +- * that go through io_uring instead of the thread pool.
> +- */
> + static int uv__work_cancel(uv_loop_t* loop, uv_req_t* req, struct
> uv__work* w) {
> +   int cancelled;
> +
> +-  uv_once(&once, init_once);  /* Ensure |mutex| is initialized. */
> +   uv_mutex_lock(&mutex);
> +   uv_mutex_lock(&w->loop->wq_mutex);
> +
> +@@ -311,15 +307,12 @@ void uv__work_done(uv_async_t* handle) {
> +   QUEUE* q;
> +   QUEUE wq;
> +   int err;
> +-  int nevents;
> +
> +   loop =3D container_of(handle, uv_loop_t, wq_async);
> +   uv_mutex_lock(&loop->wq_mutex);
> +   QUEUE_MOVE(&loop->wq, &wq);
> +   uv_mutex_unlock(&loop->wq_mutex);
> +
> +-  nevents =3D 0;
> +-
> +   while (!QUEUE_EMPTY(&wq)) {
> +     q =3D QUEUE_HEAD(&wq);
> +     QUEUE_REMOVE(q);
> +@@ -327,20 +320,6 @@ void uv__work_done(uv_async_t* handle) {
> +     w =3D container_of(q, struct uv__work, wq);
> +     err =3D (w->work =3D=3D uv__cancelled) ? UV_ECANCELED : 0;
> +     w->done(w, err);
> +-    nevents++;
> +-  }
> +-
> +-  /* This check accomplishes 2 things:
> +-   * 1. Even if the queue was empty, the call to uv__work_done() should
> count
> +-   *    as an event. Which will have been added by the event loop when
> +-   *    calling this callback.
> +-   * 2. Prevents accidental wrap around in case nevents =3D=3D 0 events=
 =3D=3D 0.
> +-   */
> +-  if (nevents > 1) {
> +-    /* Subtract 1 to counter the call to uv__work_done(). */
> +-    uv__metrics_inc_events(loop, nevents - 1);
> +-    if (uv__get_internal_fields(loop)->current_timeout =3D=3D 0)
> +-      uv__metrics_inc_events_waiting(loop, nevents - 1);
> +   }
> + }
> +
> +diff --git a/deps/uv/src/unix/aix.c b/deps/uv/src/unix/aix.c
> +index f1afbed49ec..b855282ebc8 100644
> +--- a/deps/uv/src/unix/aix.c
> ++++ b/deps/uv/src/unix/aix.c
> +@@ -131,7 +131,6 @@ int uv__io_check_fd(uv_loop_t* loop, int fd) {
> +
> +
> + void uv__io_poll(uv_loop_t* loop, int timeout) {
> +-  uv__loop_internal_fields_t* lfields;
> +   struct pollfd events[1024];
> +   struct pollfd pqry;
> +   struct pollfd* pe;
> +@@ -155,8 +154,6 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
> +     return;
> +   }
> +
> +-  lfields =3D uv__get_internal_fields(loop);
> +-
> +   while (!QUEUE_EMPTY(&loop->watcher_queue)) {
> +     q =3D QUEUE_HEAD(&loop->watcher_queue);
> +     QUEUE_REMOVE(q);
> +@@ -220,7 +217,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
> +   base =3D loop->time;
> +   count =3D 48; /* Benchmarks suggest this gives the best throughput. *=
/
> +
> +-  if (lfields->flags & UV_METRICS_IDLE_TIME) {
> ++  if (uv__get_internal_fields(loop)->flags & UV_METRICS_IDLE_TIME) {
> +     reset_timeout =3D 1;
> +     user_timeout =3D timeout;
> +     timeout =3D 0;
> +@@ -235,12 +232,6 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
> +     if (timeout !=3D 0)
> +       uv__metrics_set_provider_entry_time(loop);
> +
> +-    /* Store the current timeout in a location that's globally
> accessible so
> +-     * other locations like uv__work_done() can determine whether the
> queue
> +-     * of events in the callback were waiting when poll was called.
> +-     */
> +-    lfields->current_timeout =3D timeout;
> +-
> +     nfds =3D pollset_poll(loop->backend_fd,
> +                         events,
> +                         ARRAY_SIZE(events),
> +diff --git a/deps/uv/src/unix/fs.c b/deps/uv/src/unix/fs.c
> +index 00d385c24b7..c696a8d5500 100644
> +--- a/deps/uv/src/unix/fs.c
> ++++ b/deps/uv/src/unix/fs.c
> +@@ -61,11 +61,10 @@
> + #endif
> +
> + #if defined(__linux__)
> +-# include <sys/sendfile.h>
> +-# include <sys/utsname.h>
> ++# include "sys/utsname.h"
> + #endif
> +
> +-#if defined(__sun)
> ++#if defined(__linux__) || defined(__sun)
> + # include <sys/sendfile.h>
> + # include <sys/sysmacros.h>
> + #endif
> +@@ -1554,7 +1553,26 @@ static int uv__fs_statx(int fd,
> +     return UV_ENOSYS;
> +   }
> +
> +-  uv__statx_to_stat(&statxbuf, buf);
> ++  buf->st_dev =3D makedev(statxbuf.stx_dev_major, statxbuf.stx_dev_mino=
r);
> ++  buf->st_mode =3D statxbuf.stx_mode;
> ++  buf->st_nlink =3D statxbuf.stx_nlink;
> ++  buf->st_uid =3D statxbuf.stx_uid;
> ++  buf->st_gid =3D statxbuf.stx_gid;
> ++  buf->st_rdev =3D makedev(statxbuf.stx_rdev_major,
> statxbuf.stx_rdev_minor);
> ++  buf->st_ino =3D statxbuf.stx_ino;
> ++  buf->st_size =3D statxbuf.stx_size;
> ++  buf->st_blksize =3D statxbuf.stx_blksize;
> ++  buf->st_blocks =3D statxbuf.stx_blocks;
> ++  buf->st_atim.tv_sec =3D statxbuf.stx_atime.tv_sec;
> ++  buf->st_atim.tv_nsec =3D statxbuf.stx_atime.tv_nsec;
> ++  buf->st_mtim.tv_sec =3D statxbuf.stx_mtime.tv_sec;
> ++  buf->st_mtim.tv_nsec =3D statxbuf.stx_mtime.tv_nsec;
> ++  buf->st_ctim.tv_sec =3D statxbuf.stx_ctime.tv_sec;
> ++  buf->st_ctim.tv_nsec =3D statxbuf.stx_ctime.tv_nsec;
> ++  buf->st_birthtim.tv_sec =3D statxbuf.stx_btime.tv_sec;
> ++  buf->st_birthtim.tv_nsec =3D statxbuf.stx_btime.tv_nsec;
> ++  buf->st_flags =3D 0;
> ++  buf->st_gen =3D 0;
> +
> +   return 0;
> + #else
> +@@ -1798,9 +1816,6 @@ int uv_fs_chown(uv_loop_t* loop,
> + int uv_fs_close(uv_loop_t* loop, uv_fs_t* req, uv_file file, uv_fs_cb
> cb) {
> +   INIT(CLOSE);
> +   req->file =3D file;
> +-  if (cb !=3D NULL)
> +-    if (uv__iou_fs_close(loop, req))
> +-      return 0;
> +   POST;
> + }
> +
> +@@ -1848,9 +1863,6 @@ int uv_fs_lchown(uv_loop_t* loop,
> + int uv_fs_fdatasync(uv_loop_t* loop, uv_fs_t* req, uv_file file,
> uv_fs_cb cb) {
> +   INIT(FDATASYNC);
> +   req->file =3D file;
> +-  if (cb !=3D NULL)
> +-    if (uv__iou_fs_fsync_or_fdatasync(loop, req, /*
> IORING_FSYNC_DATASYNC */ 1))
> +-      return 0;
> +   POST;
> + }
> +
> +@@ -1858,9 +1870,6 @@ int uv_fs_fdatasync(uv_loop_t* loop, uv_fs_t* req,
> uv_file file, uv_fs_cb cb) {
> + int uv_fs_fstat(uv_loop_t* loop, uv_fs_t* req, uv_file file, uv_fs_cb
> cb) {
> +   INIT(FSTAT);
> +   req->file =3D file;
> +-  if (cb !=3D NULL)
> +-    if (uv__iou_fs_statx(loop, req, /* is_fstat */ 1, /* is_lstat */ 0)=
)
> +-      return 0;
> +   POST;
> + }
> +
> +@@ -1868,9 +1877,6 @@ int uv_fs_fstat(uv_loop_t* loop, uv_fs_t* req,
> uv_file file, uv_fs_cb cb) {
> + int uv_fs_fsync(uv_loop_t* loop, uv_fs_t* req, uv_file file, uv_fs_cb
> cb) {
> +   INIT(FSYNC);
> +   req->file =3D file;
> +-  if (cb !=3D NULL)
> +-    if (uv__iou_fs_fsync_or_fdatasync(loop, req, /* no flags */ 0))
> +-      return 0;
> +   POST;
> + }
> +
> +@@ -1917,9 +1923,6 @@ int uv_fs_lutime(uv_loop_t* loop,
> + int uv_fs_lstat(uv_loop_t* loop, uv_fs_t* req, const char* path,
> uv_fs_cb cb) {
> +   INIT(LSTAT);
> +   PATH;
> +-  if (cb !=3D NULL)
> +-    if (uv__iou_fs_statx(loop, req, /* is_fstat */ 0, /* is_lstat */ 1)=
)
> +-      return 0;
> +   POST;
> + }
> +
> +@@ -1981,9 +1984,6 @@ int uv_fs_open(uv_loop_t* loop,
> +   PATH;
> +   req->flags =3D flags;
> +   req->mode =3D mode;
> +-  if (cb !=3D NULL)
> +-    if (uv__iou_fs_open(loop, req))
> +-      return 0;
> +   POST;
> + }
> +
> +@@ -2012,11 +2012,6 @@ int uv_fs_read(uv_loop_t* loop, uv_fs_t* req,
> +   memcpy(req->bufs, bufs, nbufs * sizeof(*bufs));
> +
> +   req->off =3D off;
> +-
> +-  if (cb !=3D NULL)
> +-    if (uv__iou_fs_read_or_write(loop, req, /* is_read */ 1))
> +-      return 0;
> +-
> +   POST;
> + }
> +
> +@@ -2124,9 +2119,6 @@ int uv_fs_sendfile(uv_loop_t* loop,
> + int uv_fs_stat(uv_loop_t* loop, uv_fs_t* req, const char* path, uv_fs_c=
b
> cb) {
> +   INIT(STAT);
> +   PATH;
> +-  if (cb !=3D NULL)
> +-    if (uv__iou_fs_statx(loop, req, /* is_fstat */ 0, /* is_lstat */ 0)=
)
> +-      return 0;
> +   POST;
> + }
> +
> +@@ -2190,11 +2182,6 @@ int uv_fs_write(uv_loop_t* loop,
> +   memcpy(req->bufs, bufs, nbufs * sizeof(*bufs));
> +
> +   req->off =3D off;
> +-
> +-  if (cb !=3D NULL)
> +-    if (uv__iou_fs_read_or_write(loop, req, /* is_read */ 0))
> +-      return 0;
> +-
> +   POST;
> + }
> +
> +diff --git a/deps/uv/src/unix/internal.h b/deps/uv/src/unix/internal.h
> +index 6c5822e6a0d..d439ae6dd3d 100644
> +--- a/deps/uv/src/unix/internal.h
> ++++ b/deps/uv/src/unix/internal.h
> +@@ -329,28 +329,6 @@ int uv__random_getentropy(void* buf, size_t buflen)=
;
> + int uv__random_readpath(const char* path, void* buf, size_t buflen);
> + int uv__random_sysctl(void* buf, size_t buflen);
> +
> +-/* io_uring */
> +-#ifdef __linux__
> +-int uv__iou_fs_close(uv_loop_t* loop, uv_fs_t* req);
> +-int uv__iou_fs_fsync_or_fdatasync(uv_loop_t* loop,
> +-                                  uv_fs_t* req,
> +-                                  uint32_t fsync_flags);
> +-int uv__iou_fs_open(uv_loop_t* loop, uv_fs_t* req);
> +-int uv__iou_fs_read_or_write(uv_loop_t* loop,
> +-                             uv_fs_t* req,
> +-                             int is_read);
> +-int uv__iou_fs_statx(uv_loop_t* loop,
> +-                     uv_fs_t* req,
> +-                     int is_fstat,
> +-                     int is_lstat);
> +-#else
> +-#define uv__iou_fs_close(loop, req) 0
> +-#define uv__iou_fs_fsync_or_fdatasync(loop, req, fsync_flags) 0
> +-#define uv__iou_fs_open(loop, req) 0
> +-#define uv__iou_fs_read_or_write(loop, req, is_read) 0
> +-#define uv__iou_fs_statx(loop, req, is_fstat, is_lstat) 0
> +-#endif
> +-
> + #if defined(__APPLE__)
> + int uv___stream_fd(const uv_stream_t* handle);
> + #define uv__stream_fd(handle) (uv___stream_fd((const uv_stream_t*)
> (handle)))
> +@@ -427,7 +405,6 @@ int uv__statx(int dirfd,
> +               int flags,
> +               unsigned int mask,
> +               struct uv__statx* statxbuf);
> +-void uv__statx_to_stat(const struct uv__statx* statxbuf, uv_stat_t* buf=
);
> + ssize_t uv__getrandom(void* buf, size_t buflen, unsigned flags);
> + #endif
> +
> +diff --git a/deps/uv/src/unix/kqueue.c b/deps/uv/src/unix/kqueue.c
> +index 82916d65933..deb486bae7a 100644
> +--- a/deps/uv/src/unix/kqueue.c
> ++++ b/deps/uv/src/unix/kqueue.c
> +@@ -127,7 +127,6 @@ static void uv__kqueue_delete(int kqfd, const struct
> kevent *ev) {
> +
> +
> + void uv__io_poll(uv_loop_t* loop, int timeout) {
> +-  uv__loop_internal_fields_t* lfields;
> +   struct kevent events[1024];
> +   struct kevent* ev;
> +   struct timespec spec;
> +@@ -156,7 +155,6 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
> +     return;
> +   }
> +
> +-  lfields =3D uv__get_internal_fields(loop);
> +   nevents =3D 0;
> +
> +   while (!QUEUE_EMPTY(&loop->watcher_queue)) {
> +@@ -224,7 +222,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
> +   base =3D loop->time;
> +   count =3D 48; /* Benchmarks suggest this gives the best throughput. *=
/
> +
> +-  if (lfields->flags & UV_METRICS_IDLE_TIME) {
> ++  if (uv__get_internal_fields(loop)->flags & UV_METRICS_IDLE_TIME) {
> +     reset_timeout =3D 1;
> +     user_timeout =3D timeout;
> +     timeout =3D 0;
> +@@ -247,12 +245,6 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
> +     if (pset !=3D NULL)
> +       pthread_sigmask(SIG_BLOCK, pset, NULL);
> +
> +-    /* Store the current timeout in a location that's globally
> accessible so
> +-     * other locations like uv__work_done() can determine whether the
> queue
> +-     * of events in the callback were waiting when poll was called.
> +-     */
> +-    lfields->current_timeout =3D timeout;
> +-
> +     nfds =3D kevent(loop->backend_fd,
> +                   events,
> +                   nevents,
> +diff --git a/deps/uv/src/unix/linux.c b/deps/uv/src/unix/linux.c
> +index 5f84ad0eea3..343e37f2527 100644
> +--- a/deps/uv/src/unix/linux.c
> ++++ b/deps/uv/src/unix/linux.c
> +@@ -27,8 +27,6 @@
> + #include "internal.h"
> +
> + #include <inttypes.h>
> +-#include <stdatomic.h>
> +-#include <stddef.h>  /* offsetof */
> + #include <stdint.h>
> + #include <stdio.h>
> + #include <stdlib.h>
> +@@ -40,29 +38,15 @@
> + #include <net/if.h>
> + #include <sys/epoll.h>
> + #include <sys/inotify.h>
> +-#include <sys/mman.h>
> + #include <sys/param.h>
> + #include <sys/prctl.h>
> + #include <sys/stat.h>
> + #include <sys/syscall.h>
> + #include <sys/sysinfo.h>
> +-#include <sys/sysmacros.h>
> + #include <sys/types.h>
> + #include <time.h>
> + #include <unistd.h>
> +
> +-#ifndef __NR_io_uring_setup
> +-# define __NR_io_uring_setup 425
> +-#endif
> +-
> +-#ifndef __NR_io_uring_enter
> +-# define __NR_io_uring_enter 426
> +-#endif
> +-
> +-#ifndef __NR_io_uring_register
> +-# define __NR_io_uring_register 427
> +-#endif
> +-
> + #ifndef __NR_copy_file_range
> + # if defined(__x86_64__)
> + #  define __NR_copy_file_range 326
> +@@ -132,129 +116,6 @@
> + # include <netpacket/packet.h>
> + #endif /* HAVE_IFADDRS_H */
> +
> +-enum {
> +-  UV__IORING_SETUP_SQPOLL =3D 2u,
> +-};
> +-
> +-enum {
> +-  UV__IORING_FEAT_SINGLE_MMAP =3D 1u,
> +-  UV__IORING_FEAT_NODROP =3D 2u,
> +-  UV__IORING_FEAT_RSRC_TAGS =3D 1024u,  /* linux v5.13 */
> +-};
> +-
> +-enum {
> +-  UV__IORING_OP_READV =3D 1,
> +-  UV__IORING_OP_WRITEV =3D 2,
> +-  UV__IORING_OP_FSYNC =3D 3,
> +-  UV__IORING_OP_OPENAT =3D 18,
> +-  UV__IORING_OP_CLOSE =3D 19,
> +-  UV__IORING_OP_STATX =3D 21,
> +-  UV__IORING_OP_EPOLL_CTL =3D 29,
> +-};
> +-
> +-enum {
> +-  UV__IORING_ENTER_GETEVENTS =3D 1u,
> +-  UV__IORING_ENTER_SQ_WAKEUP =3D 2u,
> +-};
> +-
> +-enum {
> +-  UV__IORING_SQ_NEED_WAKEUP =3D 1u,
> +-  UV__IORING_SQ_CQ_OVERFLOW =3D 2u,
> +-};
> +-
> +-struct uv__io_cqring_offsets {
> +-  uint32_t head;
> +-  uint32_t tail;
> +-  uint32_t ring_mask;
> +-  uint32_t ring_entries;
> +-  uint32_t overflow;
> +-  uint32_t cqes;
> +-  uint64_t reserved0;
> +-  uint64_t reserved1;
> +-};
> +-
> +-STATIC_ASSERT(40 =3D=3D sizeof(struct uv__io_cqring_offsets));
> +-
> +-struct uv__io_sqring_offsets {
> +-  uint32_t head;
> +-  uint32_t tail;
> +-  uint32_t ring_mask;
> +-  uint32_t ring_entries;
> +-  uint32_t flags;
> +-  uint32_t dropped;
> +-  uint32_t array;
> +-  uint32_t reserved0;
> +-  uint64_t reserved1;
> +-};
> +-
> +-STATIC_ASSERT(40 =3D=3D sizeof(struct uv__io_sqring_offsets));
> +-
> +-struct uv__io_uring_cqe {
> +-  uint64_t user_data;
> +-  int32_t res;
> +-  uint32_t flags;
> +-};
> +-
> +-STATIC_ASSERT(16 =3D=3D sizeof(struct uv__io_uring_cqe));
> +-
> +-struct uv__io_uring_sqe {
> +-  uint8_t opcode;
> +-  uint8_t flags;
> +-  uint16_t ioprio;
> +-  int32_t fd;
> +-  union {
> +-    uint64_t off;
> +-    uint64_t addr2;
> +-  };
> +-  union {
> +-    uint64_t addr;
> +-  };
> +-  uint32_t len;
> +-  union {
> +-    uint32_t rw_flags;
> +-    uint32_t fsync_flags;
> +-    uint32_t open_flags;
> +-    uint32_t statx_flags;
> +-  };
> +-  uint64_t user_data;
> +-  union {
> +-    uint16_t buf_index;
> +-    uint64_t pad[3];
> +-  };
> +-};
> +-
> +-STATIC_ASSERT(64 =3D=3D sizeof(struct uv__io_uring_sqe));
> +-STATIC_ASSERT(0 =3D=3D offsetof(struct uv__io_uring_sqe, opcode));
> +-STATIC_ASSERT(1 =3D=3D offsetof(struct uv__io_uring_sqe, flags));
> +-STATIC_ASSERT(2 =3D=3D offsetof(struct uv__io_uring_sqe, ioprio));
> +-STATIC_ASSERT(4 =3D=3D offsetof(struct uv__io_uring_sqe, fd));
> +-STATIC_ASSERT(8 =3D=3D offsetof(struct uv__io_uring_sqe, off));
> +-STATIC_ASSERT(16 =3D=3D offsetof(struct uv__io_uring_sqe, addr));
> +-STATIC_ASSERT(24 =3D=3D offsetof(struct uv__io_uring_sqe, len));
> +-STATIC_ASSERT(28 =3D=3D offsetof(struct uv__io_uring_sqe, rw_flags));
> +-STATIC_ASSERT(32 =3D=3D offsetof(struct uv__io_uring_sqe, user_data));
> +-STATIC_ASSERT(40 =3D=3D offsetof(struct uv__io_uring_sqe, buf_index));
> +-
> +-struct uv__io_uring_params {
> +-  uint32_t sq_entries;
> +-  uint32_t cq_entries;
> +-  uint32_t flags;
> +-  uint32_t sq_thread_cpu;
> +-  uint32_t sq_thread_idle;
> +-  uint32_t features;
> +-  uint32_t reserved[4];
> +-  struct uv__io_sqring_offsets sq_off;  /* 40 bytes */
> +-  struct uv__io_cqring_offsets cq_off;  /* 40 bytes */
> +-};
> +-
> +-STATIC_ASSERT(40 + 40 + 40 =3D=3D sizeof(struct uv__io_uring_params));
> +-STATIC_ASSERT(40 =3D=3D offsetof(struct uv__io_uring_params, sq_off));
> +-STATIC_ASSERT(80 =3D=3D offsetof(struct uv__io_uring_params, cq_off));
> +-
> +-STATIC_ASSERT(EPOLL_CTL_ADD < 4);
> +-STATIC_ASSERT(EPOLL_CTL_DEL < 4);
> +-STATIC_ASSERT(EPOLL_CTL_MOD < 4);
> +-
> + struct watcher_list {
> +   RB_ENTRY(watcher_list) entry;
> +   QUEUE watchers;
> +@@ -276,17 +137,6 @@ static int compare_watchers(const struct
> watcher_list* a,
> + static void maybe_free_watcher_list(struct watcher_list* w,
> +                                     uv_loop_t* loop);
> +
> +-static void uv__epoll_ctl_flush(int epollfd,
> +-                                struct uv__iou* ctl,
> +-                                struct epoll_event (*events)[256]);
> +-
> +-static void uv__epoll_ctl_prep(int epollfd,
> +-                               struct uv__iou* ctl,
> +-                               struct epoll_event (*events)[256],
> +-                               int op,
> +-                               int fd,
> +-                               struct epoll_event* e);
> +-
> + RB_GENERATE_STATIC(watcher_root, watcher_list, entry, compare_watchers)
> +
> +
> +@@ -356,187 +206,7 @@ ssize_t uv__getrandom(void* buf, size_t buflen,
> unsigned flags) {
> + }
> +
> +
> +-int uv__io_uring_setup(int entries, struct uv__io_uring_params* params)=
 {
> +-  return syscall(__NR_io_uring_setup, entries, params);
> +-}
> +-
> +-
> +-int uv__io_uring_enter(int fd,
> +-                       unsigned to_submit,
> +-                       unsigned min_complete,
> +-                       unsigned flags) {
> +-  /* io_uring_enter used to take a sigset_t but it's unused
> +-   * in newer kernels unless IORING_ENTER_EXT_ARG is set,
> +-   * in which case it takes a struct io_uring_getevents_arg.
> +-   */
> +-  return syscall(__NR_io_uring_enter,
> +-                 fd,
> +-                 to_submit,
> +-                 min_complete,
> +-                 flags,
> +-                 NULL,
> +-                 0L);
> +-}
> +-
> +-
> +-int uv__io_uring_register(int fd, unsigned opcode, void* arg, unsigned
> nargs) {
> +-  return syscall(__NR_io_uring_register, fd, opcode, arg, nargs);
> +-}
> +-
> +-
> +-static int uv__use_io_uring(void) {
> +-  /* Ternary: unknown=3D0, yes=3D1, no=3D-1 */
> +-  static _Atomic int use_io_uring;
> +-  char* val;
> +-  int use;
> +-
> +-  use =3D atomic_load_explicit(&use_io_uring, memory_order_relaxed);
> +-
> +-  if (use =3D=3D 0) {
> +-    val =3D getenv("UV_USE_IO_URING");
> +-    use =3D val =3D=3D NULL || atoi(val) ? 1 : -1;
> +-    atomic_store_explicit(&use_io_uring, use, memory_order_relaxed);
> +-  }
> +-
> +-  return use > 0;
> +-}
> +-
> +-
> +-static void uv__iou_init(int epollfd,
> +-                         struct uv__iou* iou,
> +-                         uint32_t entries,
> +-                         uint32_t flags) {
> +-  struct uv__io_uring_params params;
> +-  struct epoll_event e;
> +-  size_t cqlen;
> +-  size_t sqlen;
> +-  size_t maxlen;
> +-  size_t sqelen;
> +-  uint32_t i;
> +-  char* sq;
> +-  char* sqe;
> +-  int ringfd;
> +-
> +-  sq =3D MAP_FAILED;
> +-  sqe =3D MAP_FAILED;
> +-
> +-  if (!uv__use_io_uring())
> +-    return;
> +-
> +-  /* SQPOLL required CAP_SYS_NICE until linux v5.12 relaxed that
> requirement.
> +-   * Mostly academic because we check for a v5.13 kernel afterwards
> anyway.
> +-   */
> +-  memset(&params, 0, sizeof(params));
> +-  params.flags =3D flags;
> +-
> +-  if (flags & UV__IORING_SETUP_SQPOLL)
> +-    params.sq_thread_idle =3D 10;  /* milliseconds */
> +-
> +-  /* Kernel returns a file descriptor with O_CLOEXEC flag set. */
> +-  ringfd =3D uv__io_uring_setup(entries, &params);
> +-  if (ringfd =3D=3D -1)
> +-    return;
> +-
> +-  /* IORING_FEAT_RSRC_TAGS is used to detect linux v5.13 but what we're
> +-   * actually detecting is whether IORING_OP_STATX works with SQPOLL.
> +-   */
> +-  if (!(params.features & UV__IORING_FEAT_RSRC_TAGS))
> +-    goto fail;
> +-
> +-  /* Implied by IORING_FEAT_RSRC_TAGS but checked explicitly anyway. */
> +-  if (!(params.features & UV__IORING_FEAT_SINGLE_MMAP))
> +-    goto fail;
> +-
> +-  /* Implied by IORING_FEAT_RSRC_TAGS but checked explicitly anyway. */
> +-  if (!(params.features & UV__IORING_FEAT_NODROP))
> +-    goto fail;
> +-
> +-  sqlen =3D params.sq_off.array + params.sq_entries * sizeof(uint32_t);
> +-  cqlen =3D
> +-      params.cq_off.cqes + params.cq_entries * sizeof(struct
> uv__io_uring_cqe);
> +-  maxlen =3D sqlen < cqlen ? cqlen : sqlen;
> +-  sqelen =3D params.sq_entries * sizeof(struct uv__io_uring_sqe);
> +-
> +-  sq =3D mmap(0,
> +-            maxlen,
> +-            PROT_READ | PROT_WRITE,
> +-            MAP_SHARED | MAP_POPULATE,
> +-            ringfd,
> +-            0);  /* IORING_OFF_SQ_RING */
> +-
> +-  sqe =3D mmap(0,
> +-             sqelen,
> +-             PROT_READ | PROT_WRITE,
> +-             MAP_SHARED | MAP_POPULATE,
> +-             ringfd,
> +-             0x10000000ull);  /* IORING_OFF_SQES */
> +-
> +-  if (sq =3D=3D MAP_FAILED || sqe =3D=3D MAP_FAILED)
> +-    goto fail;
> +-
> +-  if (flags & UV__IORING_SETUP_SQPOLL) {
> +-    /* Only interested in completion events. To get notified when
> +-     * the kernel pulls items from the submission ring, add POLLOUT.
> +-     */
> +-    memset(&e, 0, sizeof(e));
> +-    e.events =3D POLLIN;
> +-    e.data.fd =3D ringfd;
> +-
> +-    if (epoll_ctl(epollfd, EPOLL_CTL_ADD, ringfd, &e))
> +-      goto fail;
> +-  }
> +-
> +-  iou->sqhead =3D (uint32_t*) (sq + params.sq_off.head);
> +-  iou->sqtail =3D (uint32_t*) (sq + params.sq_off.tail);
> +-  iou->sqmask =3D *(uint32_t*) (sq + params.sq_off.ring_mask);
> +-  iou->sqarray =3D (uint32_t*) (sq + params.sq_off.array);
> +-  iou->sqflags =3D (uint32_t*) (sq + params.sq_off.flags);
> +-  iou->cqhead =3D (uint32_t*) (sq + params.cq_off.head);
> +-  iou->cqtail =3D (uint32_t*) (sq + params.cq_off.tail);
> +-  iou->cqmask =3D *(uint32_t*) (sq + params.cq_off.ring_mask);
> +-  iou->sq =3D sq;
> +-  iou->cqe =3D sq + params.cq_off.cqes;
> +-  iou->sqe =3D sqe;
> +-  iou->sqlen =3D sqlen;
> +-  iou->cqlen =3D cqlen;
> +-  iou->maxlen =3D maxlen;
> +-  iou->sqelen =3D sqelen;
> +-  iou->ringfd =3D ringfd;
> +-  iou->in_flight =3D 0;
> +-
> +-  for (i =3D 0; i <=3D iou->sqmask; i++)
> +-    iou->sqarray[i] =3D i;  /* Slot -> sqe identity mapping. */
> +-
> +-  return;
> +-
> +-fail:
> +-  if (sq !=3D MAP_FAILED)
> +-    munmap(sq, maxlen);
> +-
> +-  if (sqe !=3D MAP_FAILED)
> +-    munmap(sqe, sqelen);
> +-
> +-  uv__close(ringfd);
> +-}
> +-
> +-
> +-static void uv__iou_delete(struct uv__iou* iou) {
> +-  if (iou->ringfd !=3D -1) {
> +-    munmap(iou->sq, iou->maxlen);
> +-    munmap(iou->sqe, iou->sqelen);
> +-    uv__close(iou->ringfd);
> +-    iou->ringfd =3D -1;
> +-  }
> +-}
> +-
> +-
> + int uv__platform_loop_init(uv_loop_t* loop) {
> +-  uv__loop_internal_fields_t* lfields;
> +-
> +-  lfields =3D uv__get_internal_fields(loop);
> +-  lfields->ctl.ringfd =3D -1;
> +-  lfields->iou.ringfd =3D -1;
> +-
> +   loop->inotify_watchers =3D NULL;
> +   loop->inotify_fd =3D -1;
> +   loop->backend_fd =3D epoll_create1(O_CLOEXEC);
> +@@ -544,9 +214,6 @@ int uv__platform_loop_init(uv_loop_t* loop) {
> +   if (loop->backend_fd =3D=3D -1)
> +     return UV__ERR(errno);
> +
> +-  uv__iou_init(loop->backend_fd, &lfields->iou, 64,
> UV__IORING_SETUP_SQPOLL);
> +-  uv__iou_init(loop->backend_fd, &lfields->ctl, 256, 0);
> +-
> +   return 0;
> + }
> +
> +@@ -559,8 +226,6 @@ int uv__io_fork(uv_loop_t* loop) {
> +
> +   uv__close(loop->backend_fd);
> +   loop->backend_fd =3D -1;
> +-
> +-  /* TODO(bnoordhuis) Loses items from the submission and completion
> rings. */
> +   uv__platform_loop_delete(loop);
> +
> +   err =3D uv__platform_loop_init(loop);
> +@@ -572,62 +237,42 @@ int uv__io_fork(uv_loop_t* loop) {
> +
> +
> + void uv__platform_loop_delete(uv_loop_t* loop) {
> +-  uv__loop_internal_fields_t* lfields;
> +-
> +-  lfields =3D uv__get_internal_fields(loop);
> +-  uv__iou_delete(&lfields->ctl);
> +-  uv__iou_delete(&lfields->iou);
> +-
> +-  if (loop->inotify_fd !=3D -1) {
> +-    uv__io_stop(loop, &loop->inotify_read_watcher, POLLIN);
> +-    uv__close(loop->inotify_fd);
> +-    loop->inotify_fd =3D -1;
> +-  }
> ++  if (loop->inotify_fd =3D=3D -1) return;
> ++  uv__io_stop(loop, &loop->inotify_read_watcher, POLLIN);
> ++  uv__close(loop->inotify_fd);
> ++  loop->inotify_fd =3D -1;
> + }
> +
> +
> +-struct uv__invalidate {
> +-  struct epoll_event (*prep)[256];
> +-  struct epoll_event* events;
> +-  int nfds;
> +-};
> +-
> +-
> + void uv__platform_invalidate_fd(uv_loop_t* loop, int fd) {
> +-  uv__loop_internal_fields_t* lfields;
> +-  struct uv__invalidate* inv;
> ++  struct epoll_event* events;
> +   struct epoll_event dummy;
> +-  int i;
> ++  uintptr_t i;
> ++  uintptr_t nfds;
> +
> +-  lfields =3D uv__get_internal_fields(loop);
> +-  inv =3D lfields->inv;
> ++  assert(loop->watchers !=3D NULL);
> ++  assert(fd >=3D 0);
> +
> +-  /* Invalidate events with same file descriptor */
> +-  if (inv !=3D NULL)
> +-    for (i =3D 0; i < inv->nfds; i++)
> +-      if (inv->events[i].data.fd =3D=3D fd)
> +-        inv->events[i].data.fd =3D -1;
> ++  events =3D (struct epoll_event*) loop->watchers[loop->nwatchers];
> ++  nfds =3D (uintptr_t) loop->watchers[loop->nwatchers + 1];
> ++  if (events !=3D NULL)
> ++    /* Invalidate events with same file descriptor */
> ++    for (i =3D 0; i < nfds; i++)
> ++      if (events[i].data.fd =3D=3D fd)
> ++        events[i].data.fd =3D -1;
> +
> +   /* Remove the file descriptor from the epoll.
> +    * This avoids a problem where the same file description remains open
> +    * in another process, causing repeated junk epoll events.
> +    *
> +    * We pass in a dummy epoll_event, to work around a bug in old kernel=
s.
> +-   *
> +-   * Work around a bug in kernels 3.10 to 3.19 where passing a struct
> that
> +-   * has the EPOLLWAKEUP flag set generates spurious audit syslog
> warnings.
> +    */
> +-  memset(&dummy, 0, sizeof(dummy));
> +-
> +-  if (inv =3D=3D NULL) {
> ++  if (loop->backend_fd >=3D 0) {
> ++    /* Work around a bug in kernels 3.10 to 3.19 where passing a struct
> that
> ++     * has the EPOLLWAKEUP flag set generates spurious audit syslog
> warnings.
> ++     */
> ++    memset(&dummy, 0, sizeof(dummy));
> +     epoll_ctl(loop->backend_fd, EPOLL_CTL_DEL, fd, &dummy);
> +-  } else {
> +-    uv__epoll_ctl_prep(loop->backend_fd,
> +-                       &lfields->ctl,
> +-                       inv->prep,
> +-                       EPOLL_CTL_DEL,
> +-                       fd,
> +-                       &dummy);
> +   }
> + }
> +
> +@@ -653,454 +298,27 @@ int uv__io_check_fd(uv_loop_t* loop, int fd) {
> + }
> +
> +
> +-/* Caller must initialize SQE and call uv__iou_submit(). */
> +-static struct uv__io_uring_sqe* uv__iou_get_sqe(struct uv__iou* iou,
> +-                                                uv_loop_t* loop,
> +-                                                uv_fs_t* req) {
> +-  struct uv__io_uring_sqe* sqe;
> +-  uint32_t head;
> +-  uint32_t tail;
> +-  uint32_t mask;
> +-  uint32_t slot;
> +-
> +-  if (iou->ringfd =3D=3D -1)
> +-    return NULL;
> +-
> +-  head =3D atomic_load_explicit((_Atomic uint32_t*) iou->sqhead,
> +-                              memory_order_acquire);
> +-  tail =3D *iou->sqtail;
> +-  mask =3D iou->sqmask;
> +-
> +-  if ((head & mask) =3D=3D ((tail + 1) & mask))
> +-    return NULL;  /* No room in ring buffer. TODO(bnoordhuis) maybe
> flush it? */
> +-
> +-  slot =3D tail & mask;
> +-  sqe =3D iou->sqe;
> +-  sqe =3D &sqe[slot];
> +-  memset(sqe, 0, sizeof(*sqe));
> +-  sqe->user_data =3D (uintptr_t) req;
> +-
> +-  /* Pacify uv_cancel(). */
> +-  req->work_req.loop =3D loop;
> +-  req->work_req.work =3D NULL;
> +-  req->work_req.done =3D NULL;
> +-  QUEUE_INIT(&req->work_req.wq);
> +-
> +-  uv__req_register(loop, req);
> +-  iou->in_flight++;
> +-
> +-  return sqe;
> +-}
> +-
> +-
> +-static void uv__iou_submit(struct uv__iou* iou) {
> +-  uint32_t flags;
> +-
> +-  atomic_store_explicit((_Atomic uint32_t*) iou->sqtail,
> +-                        *iou->sqtail + 1,
> +-                        memory_order_release);
> +-
> +-  flags =3D atomic_load_explicit((_Atomic uint32_t*) iou->sqflags,
> +-                               memory_order_acquire);
> +-
> +-  if (flags & UV__IORING_SQ_NEED_WAKEUP)
> +-    if (uv__io_uring_enter(iou->ringfd, 0, 0,
> UV__IORING_ENTER_SQ_WAKEUP))
> +-      if (errno !=3D EOWNERDEAD)  /* Kernel bug. Harmless, ignore. */
> +-        perror("libuv: io_uring_enter(wakeup)");  /* Can't happen. */
> +-}
> +-
> +-
> +-int uv__iou_fs_close(uv_loop_t* loop, uv_fs_t* req) {
> +-  struct uv__io_uring_sqe* sqe;
> +-  struct uv__iou* iou;
> +-
> +-  iou =3D &uv__get_internal_fields(loop)->iou;
> +-
> +-  sqe =3D uv__iou_get_sqe(iou, loop, req);
> +-  if (sqe =3D=3D NULL)
> +-    return 0;
> +-
> +-  sqe->fd =3D req->file;
> +-  sqe->opcode =3D UV__IORING_OP_CLOSE;
> +-
> +-  uv__iou_submit(iou);
> +-
> +-  return 1;
> +-}
> +-
> +-
> +-int uv__iou_fs_fsync_or_fdatasync(uv_loop_t* loop,
> +-                                  uv_fs_t* req,
> +-                                  uint32_t fsync_flags) {
> +-  struct uv__io_uring_sqe* sqe;
> +-  struct uv__iou* iou;
> +-
> +-  iou =3D &uv__get_internal_fields(loop)->iou;
> +-
> +-  sqe =3D uv__iou_get_sqe(iou, loop, req);
> +-  if (sqe =3D=3D NULL)
> +-    return 0;
> +-
> +-  /* Little known fact: setting seq->off and seq->len turns
> +-   * it into an asynchronous sync_file_range() operation.
> +-   */
> +-  sqe->fd =3D req->file;
> +-  sqe->fsync_flags =3D fsync_flags;
> +-  sqe->opcode =3D UV__IORING_OP_FSYNC;
> +-
> +-  uv__iou_submit(iou);
> +-
> +-  return 1;
> +-}
> +-
> +-
> +-int uv__iou_fs_open(uv_loop_t* loop, uv_fs_t* req) {
> +-  struct uv__io_uring_sqe* sqe;
> +-  struct uv__iou* iou;
> +-
> +-  iou =3D &uv__get_internal_fields(loop)->iou;
> +-
> +-  sqe =3D uv__iou_get_sqe(iou, loop, req);
> +-  if (sqe =3D=3D NULL)
> +-    return 0;
> +-
> +-  sqe->addr =3D (uintptr_t) req->path;
> +-  sqe->fd =3D AT_FDCWD;
> +-  sqe->len =3D req->mode;
> +-  sqe->opcode =3D UV__IORING_OP_OPENAT;
> +-  sqe->open_flags =3D req->flags | O_CLOEXEC;
> +-
> +-  uv__iou_submit(iou);
> +-
> +-  return 1;
> +-}
> +-
> +-
> +-int uv__iou_fs_read_or_write(uv_loop_t* loop,
> +-                             uv_fs_t* req,
> +-                             int is_read) {
> +-  struct uv__io_uring_sqe* sqe;
> +-  struct uv__iou* iou;
> +-
> +-  /* For the moment, if iovcnt is greater than IOV_MAX, fallback to the
> +-   * threadpool. In the future we might take advantage of IOSQE_IO_LINK=
.
> */
> +-  if (req->nbufs > IOV_MAX)
> +-    return 0;
> +-
> +-  iou =3D &uv__get_internal_fields(loop)->iou;
> +-
> +-  sqe =3D uv__iou_get_sqe(iou, loop, req);
> +-  if (sqe =3D=3D NULL)
> +-    return 0;
> +-
> +-  sqe->addr =3D (uintptr_t) req->bufs;
> +-  sqe->fd =3D req->file;
> +-  sqe->len =3D req->nbufs;
> +-  sqe->off =3D req->off < 0 ? -1 : req->off;
> +-  sqe->opcode =3D is_read ? UV__IORING_OP_READV : UV__IORING_OP_WRITEV;
> +-
> +-  uv__iou_submit(iou);
> +-
> +-  return 1;
> +-}
> +-
> +-
> +-int uv__iou_fs_statx(uv_loop_t* loop,
> +-                     uv_fs_t* req,
> +-                     int is_fstat,
> +-                     int is_lstat) {
> +-  struct uv__io_uring_sqe* sqe;
> +-  struct uv__statx* statxbuf;
> +-  struct uv__iou* iou;
> +-
> +-  statxbuf =3D uv__malloc(sizeof(*statxbuf));
> +-  if (statxbuf =3D=3D NULL)
> +-    return 0;
> +-
> +-  iou =3D &uv__get_internal_fields(loop)->iou;
> +-
> +-  sqe =3D uv__iou_get_sqe(iou, loop, req);
> +-  if (sqe =3D=3D NULL) {
> +-    uv__free(statxbuf);
> +-    return 0;
> +-  }
> +-
> +-  req->ptr =3D statxbuf;
> +-
> +-  sqe->addr =3D (uintptr_t) req->path;
> +-  sqe->addr2 =3D (uintptr_t) statxbuf;
> +-  sqe->fd =3D AT_FDCWD;
> +-  sqe->len =3D 0xFFF; /* STATX_BASIC_STATS + STATX_BTIME */
> +-  sqe->opcode =3D UV__IORING_OP_STATX;
> +-
> +-  if (is_fstat) {
> +-    sqe->addr =3D (uintptr_t) "";
> +-    sqe->fd =3D req->file;
> +-    sqe->statx_flags |=3D 0x1000; /* AT_EMPTY_PATH */
> +-  }
> +-
> +-  if (is_lstat)
> +-    sqe->statx_flags |=3D AT_SYMLINK_NOFOLLOW;
> +-
> +-  uv__iou_submit(iou);
> +-
> +-  return 1;
> +-}
> +-
> +-
> +-void uv__statx_to_stat(const struct uv__statx* statxbuf, uv_stat_t* buf=
)
> {
> +-  buf->st_dev =3D makedev(statxbuf->stx_dev_major,
> statxbuf->stx_dev_minor);
> +-  buf->st_mode =3D statxbuf->stx_mode;
> +-  buf->st_nlink =3D statxbuf->stx_nlink;
> +-  buf->st_uid =3D statxbuf->stx_uid;
> +-  buf->st_gid =3D statxbuf->stx_gid;
> +-  buf->st_rdev =3D makedev(statxbuf->stx_rdev_major,
> statxbuf->stx_rdev_minor);
> +-  buf->st_ino =3D statxbuf->stx_ino;
> +-  buf->st_size =3D statxbuf->stx_size;
> +-  buf->st_blksize =3D statxbuf->stx_blksize;
> +-  buf->st_blocks =3D statxbuf->stx_blocks;
> +-  buf->st_atim.tv_sec =3D statxbuf->stx_atime.tv_sec;
> +-  buf->st_atim.tv_nsec =3D statxbuf->stx_atime.tv_nsec;
> +-  buf->st_mtim.tv_sec =3D statxbuf->stx_mtime.tv_sec;
> +-  buf->st_mtim.tv_nsec =3D statxbuf->stx_mtime.tv_nsec;
> +-  buf->st_ctim.tv_sec =3D statxbuf->stx_ctime.tv_sec;
> +-  buf->st_ctim.tv_nsec =3D statxbuf->stx_ctime.tv_nsec;
> +-  buf->st_birthtim.tv_sec =3D statxbuf->stx_btime.tv_sec;
> +-  buf->st_birthtim.tv_nsec =3D statxbuf->stx_btime.tv_nsec;
> +-  buf->st_flags =3D 0;
> +-  buf->st_gen =3D 0;
> +-}
> +-
> +-
> +-static void uv__iou_fs_statx_post(uv_fs_t* req) {
> +-  struct uv__statx* statxbuf;
> +-  uv_stat_t* buf;
> +-
> +-  buf =3D &req->statbuf;
> +-  statxbuf =3D req->ptr;
> +-  req->ptr =3D NULL;
> +-
> +-  if (req->result =3D=3D 0) {
> +-    uv__msan_unpoison(statxbuf, sizeof(*statxbuf));
> +-    uv__statx_to_stat(statxbuf, buf);
> +-    req->ptr =3D buf;
> +-  }
> +-
> +-  uv__free(statxbuf);
> +-}
> +-
> +-
> +-static void uv__poll_io_uring(uv_loop_t* loop, struct uv__iou* iou) {
> +-  struct uv__io_uring_cqe* cqe;
> +-  struct uv__io_uring_cqe* e;
> +-  uv_fs_t* req;
> +-  uint32_t head;
> +-  uint32_t tail;
> +-  uint32_t mask;
> +-  uint32_t i;
> +-  uint32_t flags;
> +-  int nevents;
> +-  int rc;
> +-
> +-  head =3D *iou->cqhead;
> +-  tail =3D atomic_load_explicit((_Atomic uint32_t*) iou->cqtail,
> +-                              memory_order_acquire);
> +-  mask =3D iou->cqmask;
> +-  cqe =3D iou->cqe;
> +-  nevents =3D 0;
> +-
> +-  for (i =3D head; i !=3D tail; i++) {
> +-    e =3D &cqe[i & mask];
> +-
> +-    req =3D (uv_fs_t*) (uintptr_t) e->user_data;
> +-    assert(req->type =3D=3D UV_FS);
> +-
> +-    uv__req_unregister(loop, req);
> +-    iou->in_flight--;
> +-
> +-    /* io_uring stores error codes as negative numbers, same as libuv. =
*/
> +-    req->result =3D e->res;
> +-
> +-    switch (req->fs_type) {
> +-      case UV_FS_FSTAT:
> +-      case UV_FS_LSTAT:
> +-      case UV_FS_STAT:
> +-        uv__iou_fs_statx_post(req);
> +-        break;
> +-      default:  /* Squelch -Wswitch warnings. */
> +-        break;
> +-    }
> +-
> +-    uv__metrics_update_idle_time(loop);
> +-    req->cb(req);
> +-    nevents++;
> +-  }
> +-
> +-  atomic_store_explicit((_Atomic uint32_t*) iou->cqhead,
> +-                        tail,
> +-                        memory_order_release);
> +-
> +-  /* Check whether CQE's overflowed, if so enter the kernel to make the=
m
> +-   * available. Don't grab them immediately but in the next loop
> iteration to
> +-   * avoid loop starvation. */
> +-  flags =3D atomic_load_explicit((_Atomic uint32_t*) iou->sqflags,
> +-                               memory_order_acquire);
> +-
> +-  if (flags & UV__IORING_SQ_CQ_OVERFLOW) {
> +-    do
> +-      rc =3D uv__io_uring_enter(iou->ringfd, 0, 0,
> UV__IORING_ENTER_GETEVENTS);
> +-    while (rc =3D=3D -1 && errno =3D=3D EINTR);
> +-
> +-    if (rc < 0)
> +-      perror("libuv: io_uring_enter(getevents)");  /* Can't happen. */
> +-  }
> +-
> +-  uv__metrics_inc_events(loop, nevents);
> +-  if (uv__get_internal_fields(loop)->current_timeout =3D=3D 0)
> +-    uv__metrics_inc_events_waiting(loop, nevents);
> +-}
> +-
> +-
> +-static void uv__epoll_ctl_prep(int epollfd,
> +-                               struct uv__iou* ctl,
> +-                               struct epoll_event (*events)[256],
> +-                               int op,
> +-                               int fd,
> +-                               struct epoll_event* e) {
> +-  struct uv__io_uring_sqe* sqe;
> +-  struct epoll_event* pe;
> +-  uint32_t mask;
> +-  uint32_t slot;
> +-
> +-  if (ctl->ringfd =3D=3D -1) {
> +-    if (!epoll_ctl(epollfd, op, fd, e))
> +-      return;
> +-
> +-    if (op =3D=3D EPOLL_CTL_DEL)
> +-      return;  /* Ignore errors, may be racing with another thread. */
> +-
> +-    if (op !=3D EPOLL_CTL_ADD)
> +-      abort();
> +-
> +-    if (errno !=3D EEXIST)
> +-      abort();
> +-
> +-    /* File descriptor that's been watched before, update event mask. *=
/
> +-    if (!epoll_ctl(epollfd, EPOLL_CTL_MOD, fd, e))
> +-      return;
> +-
> +-    abort();
> +-  } else {
> +-    mask =3D ctl->sqmask;
> +-    slot =3D (*ctl->sqtail)++ & mask;
> +-
> +-    pe =3D &(*events)[slot];
> +-    *pe =3D *e;
> +-
> +-    sqe =3D ctl->sqe;
> +-    sqe =3D &sqe[slot];
> +-
> +-    memset(sqe, 0, sizeof(*sqe));
> +-    sqe->addr =3D (uintptr_t) pe;
> +-    sqe->fd =3D epollfd;
> +-    sqe->len =3D op;
> +-    sqe->off =3D fd;
> +-    sqe->opcode =3D UV__IORING_OP_EPOLL_CTL;
> +-    sqe->user_data =3D op | slot << 2 | (int64_t) fd << 32;
> +-
> +-    if ((*ctl->sqhead & mask) =3D=3D (*ctl->sqtail & mask))
> +-      uv__epoll_ctl_flush(epollfd, ctl, events);
> +-  }
> +-}
> +-
> +-
> +-static void uv__epoll_ctl_flush(int epollfd,
> +-                                struct uv__iou* ctl,
> +-                                struct epoll_event (*events)[256]) {
> +-  struct epoll_event oldevents[256];
> +-  struct uv__io_uring_cqe* cqe;
> +-  uint32_t oldslot;
> +-  uint32_t slot;
> +-  uint32_t n;
> +-  int fd;
> +-  int op;
> +-  int rc;
> +-
> +-  STATIC_ASSERT(sizeof(oldevents) =3D=3D sizeof(*events));
> +-  assert(ctl->ringfd !=3D -1);
> +-  assert(*ctl->sqhead !=3D *ctl->sqtail);
> +-
> +-  n =3D *ctl->sqtail - *ctl->sqhead;
> +-  do
> +-    rc =3D uv__io_uring_enter(ctl->ringfd, n, n,
> UV__IORING_ENTER_GETEVENTS);
> +-  while (rc =3D=3D -1 && errno =3D=3D EINTR);
> +-
> +-  if (rc < 0)
> +-    perror("libuv: io_uring_enter(getevents)");  /* Can't happen. */
> +-
> +-  if (rc !=3D (int) n)
> +-    abort();
> +-
> +-  assert(*ctl->sqhead =3D=3D *ctl->sqtail);
> +-
> +-  memcpy(oldevents, *events, sizeof(*events));
> +-
> +-  /* Failed submissions are either EPOLL_CTL_DEL commands for file
> descriptors
> +-   * that have been closed, or EPOLL_CTL_ADD commands for file
> descriptors
> +-   * that we are already watching. Ignore the former and retry the latt=
er
> +-   * with EPOLL_CTL_MOD.
> +-   */
> +-  while (*ctl->cqhead !=3D *ctl->cqtail) {
> +-    slot =3D (*ctl->cqhead)++ & ctl->cqmask;
> +-
> +-    cqe =3D ctl->cqe;
> +-    cqe =3D &cqe[slot];
> +-
> +-    if (cqe->res =3D=3D 0)
> +-      continue;
> +-
> +-    fd =3D cqe->user_data >> 32;
> +-    op =3D 3 & cqe->user_data;
> +-    oldslot =3D 255 & (cqe->user_data >> 2);
> +-
> +-    if (op =3D=3D EPOLL_CTL_DEL)
> +-      continue;
> +-
> +-    if (op !=3D EPOLL_CTL_ADD)
> +-      abort();
> +-
> +-    if (cqe->res !=3D -EEXIST)
> +-      abort();
> +-
> +-    uv__epoll_ctl_prep(epollfd,
> +-                       ctl,
> +-                       events,
> +-                       EPOLL_CTL_MOD,
> +-                       fd,
> +-                       &oldevents[oldslot]);
> +-  }
> +-}
> +-
> +-
> + void uv__io_poll(uv_loop_t* loop, int timeout) {
> +-  uv__loop_internal_fields_t* lfields;
> ++  /* A bug in kernels < 2.6.37 makes timeouts larger than ~30 minutes
> ++   * effectively infinite on 32 bits architectures.  To avoid blocking
> ++   * indefinitely, we cap the timeout and poll again if necessary.
> ++   *
> ++   * Note that "30 minutes" is a simplification because it depends on
> ++   * the value of CONFIG_HZ.  The magic constant assumes CONFIG_HZ=3D12=
00,
> ++   * that being the largest value I have seen in the wild (and only
> once.)
> ++   */
> ++  static const int max_safe_timeout =3D 1789569;
> +   struct epoll_event events[1024];
> +-  struct epoll_event prep[256];
> +-  struct uv__invalidate inv;
> +   struct epoll_event* pe;
> +   struct epoll_event e;
> +-  struct uv__iou* ctl;
> +-  struct uv__iou* iou;
> +   int real_timeout;
> +   QUEUE* q;
> +   uv__io_t* w;
> +   sigset_t* sigmask;
> +   sigset_t sigset;
> +   uint64_t base;
> +-  int have_iou_events;
> +   int have_signals;
> +   int nevents;
> +-  int epollfd;
> +   int count;
> +   int nfds;
> +   int fd;
> +@@ -1109,9 +327,47 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
> +   int user_timeout;
> +   int reset_timeout;
> +
> +-  lfields =3D uv__get_internal_fields(loop);
> +-  ctl =3D &lfields->ctl;
> +-  iou =3D &lfields->iou;
> ++  if (loop->nfds =3D=3D 0) {
> ++    assert(QUEUE_EMPTY(&loop->watcher_queue));
> ++    return;
> ++  }
> ++
> ++  memset(&e, 0, sizeof(e));
> ++
> ++  while (!QUEUE_EMPTY(&loop->watcher_queue)) {
> ++    q =3D QUEUE_HEAD(&loop->watcher_queue);
> ++    QUEUE_REMOVE(q);
> ++    QUEUE_INIT(q);
> ++
> ++    w =3D QUEUE_DATA(q, uv__io_t, watcher_queue);
> ++    assert(w->pevents !=3D 0);
> ++    assert(w->fd >=3D 0);
> ++    assert(w->fd < (int) loop->nwatchers);
> ++
> ++    e.events =3D w->pevents;
> ++    e.data.fd =3D w->fd;
> ++
> ++    if (w->events =3D=3D 0)
> ++      op =3D EPOLL_CTL_ADD;
> ++    else
> ++      op =3D EPOLL_CTL_MOD;
> ++
> ++    /* XXX Future optimization: do EPOLL_CTL_MOD lazily if we stop
> watching
> ++     * events, skip the syscall and squelch the events after
> epoll_wait().
> ++     */
> ++    if (epoll_ctl(loop->backend_fd, op, w->fd, &e)) {
> ++      if (errno !=3D EEXIST)
> ++        abort();
> ++
> ++      assert(op =3D=3D EPOLL_CTL_ADD);
> ++
> ++      /* We've reactivated a file descriptor that's been watched before=
.
> */
> ++      if (epoll_ctl(loop->backend_fd, EPOLL_CTL_MOD, w->fd, &e))
> ++        abort();
> ++    }
> ++
> ++    w->events =3D w->pevents;
> ++  }
> +
> +   sigmask =3D NULL;
> +   if (loop->flags & UV_LOOP_BLOCK_SIGPROF) {
> +@@ -1125,7 +381,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
> +   count =3D 48; /* Benchmarks suggest this gives the best throughput. *=
/
> +   real_timeout =3D timeout;
> +
> +-  if (lfields->flags & UV_METRICS_IDLE_TIME) {
> ++  if (uv__get_internal_fields(loop)->flags & UV_METRICS_IDLE_TIME) {
> +     reset_timeout =3D 1;
> +     user_timeout =3D timeout;
> +     timeout =3D 0;
> +@@ -1134,56 +390,24 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
> +     user_timeout =3D 0;
> +   }
> +
> +-  epollfd =3D loop->backend_fd;
> +-
> +-  memset(&e, 0, sizeof(e));
> +-
> +-  while (!QUEUE_EMPTY(&loop->watcher_queue)) {
> +-    q =3D QUEUE_HEAD(&loop->watcher_queue);
> +-    w =3D QUEUE_DATA(q, uv__io_t, watcher_queue);
> +-    QUEUE_REMOVE(q);
> +-    QUEUE_INIT(q);
> +-
> +-    op =3D EPOLL_CTL_MOD;
> +-    if (w->events =3D=3D 0)
> +-      op =3D EPOLL_CTL_ADD;
> +-
> +-    w->events =3D w->pevents;
> +-    e.events =3D w->pevents;
> +-    e.data.fd =3D w->fd;
> +-
> +-    uv__epoll_ctl_prep(epollfd, ctl, &prep, op, w->fd, &e);
> +-  }
> +-
> +-  inv.events =3D events;
> +-  inv.prep =3D &prep;
> +-  inv.nfds =3D -1;
> +-
> +   for (;;) {
> +-    if (loop->nfds =3D=3D 0)
> +-      if (iou->in_flight =3D=3D 0)
> +-        break;
> +-
> +-    /* All event mask mutations should be visible to the kernel before
> +-     * we enter epoll_pwait().
> +-     */
> +-    if (ctl->ringfd !=3D -1)
> +-      while (*ctl->sqhead !=3D *ctl->sqtail)
> +-        uv__epoll_ctl_flush(epollfd, ctl, &prep);
> +-
> +     /* Only need to set the provider_entry_time if timeout !=3D 0. The
> function
> +      * will return early if the loop isn't configured with
> UV_METRICS_IDLE_TIME.
> +      */
> +     if (timeout !=3D 0)
> +       uv__metrics_set_provider_entry_time(loop);
> +
> +-    /* Store the current timeout in a location that's globally
> accessible so
> +-     * other locations like uv__work_done() can determine whether the
> queue
> +-     * of events in the callback were waiting when poll was called.
> ++    /* See the comment for max_safe_timeout for an explanation of why
> ++     * this is necessary.  Executive summary: kernel bug workaround.
> +      */
> +-    lfields->current_timeout =3D timeout;
> ++    if (sizeof(int32_t) =3D=3D sizeof(long) && timeout >=3D max_safe_ti=
meout)
> ++      timeout =3D max_safe_timeout;
> +
> +-    nfds =3D epoll_pwait(epollfd, events, ARRAY_SIZE(events), timeout,
> sigmask);
> ++    nfds =3D epoll_pwait(loop->backend_fd,
> ++                       events,
> ++                       ARRAY_SIZE(events),
> ++                       timeout,
> ++                       sigmask);
> +
> +     /* Update loop->time unconditionally. It's tempting to skip the
> update when
> +      * timeout =3D=3D 0 (i.e. non-blocking poll) but there is no guaran=
tee
> that the
> +@@ -1203,7 +427,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
> +         continue;
> +
> +       if (timeout =3D=3D 0)
> +-        break;
> ++        return;
> +
> +       /* We may have been inside the system call for longer than
> |timeout|
> +        * milliseconds so we need to update the timestamp to avoid drift=
.
> +@@ -1224,18 +448,27 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
> +         continue;
> +
> +       if (timeout =3D=3D 0)
> +-        break;
> ++        return;
> +
> +       /* Interrupted by a signal. Update timeout and poll again. */
> +       goto update_timeout;
> +     }
> +
> +-    have_iou_events =3D 0;
> +     have_signals =3D 0;
> +     nevents =3D 0;
> +
> +-    inv.nfds =3D nfds;
> +-    lfields->inv =3D &inv;
> ++    {
> ++      /* Squelch a -Waddress-of-packed-member warning with gcc >=3D 9. =
*/
> ++      union {
> ++        struct epoll_event* events;
> ++        uv__io_t* watchers;
> ++      } x;
> ++
> ++      x.events =3D events;
> ++      assert(loop->watchers !=3D NULL);
> ++      loop->watchers[loop->nwatchers] =3D x.watchers;
> ++      loop->watchers[loop->nwatchers + 1] =3D (void*) (uintptr_t) nfds;
> ++    }
> +
> +     for (i =3D 0; i < nfds; i++) {
> +       pe =3D events + i;
> +@@ -1245,12 +478,6 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
> +       if (fd =3D=3D -1)
> +         continue;
> +
> +-      if (fd =3D=3D iou->ringfd) {
> +-        uv__poll_io_uring(loop, iou);
> +-        have_iou_events =3D 1;
> +-        continue;
> +-      }
> +-
> +       assert(fd >=3D 0);
> +       assert((unsigned) fd < loop->nwatchers);
> +
> +@@ -1262,7 +489,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
> +          * Ignore all errors because we may be racing with another thre=
ad
> +          * when the file descriptor is closed.
> +          */
> +-        uv__epoll_ctl_prep(epollfd, ctl, &prep, EPOLL_CTL_DEL, fd, pe);
> ++        epoll_ctl(loop->backend_fd, EPOLL_CTL_DEL, fd, pe);
> +         continue;
> +       }
> +
> +@@ -1319,13 +546,11 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
> +       loop->signal_io_watcher.cb(loop, &loop->signal_io_watcher, POLLIN=
);
> +     }
> +
> +-    lfields->inv =3D NULL;
> +-
> +-    if (have_iou_events !=3D 0)
> +-      break;  /* Event loop should cycle now so don't poll again. */
> ++    loop->watchers[loop->nwatchers] =3D NULL;
> ++    loop->watchers[loop->nwatchers + 1] =3D NULL;
> +
> +     if (have_signals !=3D 0)
> +-      break;  /* Event loop should cycle now so don't poll again. */
> ++      return;  /* Event loop should cycle now so don't poll again. */
> +
> +     if (nevents !=3D 0) {
> +       if (nfds =3D=3D ARRAY_SIZE(events) && --count !=3D 0) {
> +@@ -1333,11 +558,11 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
> +         timeout =3D 0;
> +         continue;
> +       }
> +-      break;
> ++      return;
> +     }
> +
> +     if (timeout =3D=3D 0)
> +-      break;
> ++      return;
> +
> +     if (timeout =3D=3D -1)
> +       continue;
> +@@ -1347,14 +572,10 @@ update_timeout:
> +
> +     real_timeout -=3D (loop->time - base);
> +     if (real_timeout <=3D 0)
> +-      break;
> ++      return;
> +
> +     timeout =3D real_timeout;
> +   }
> +-
> +-  if (ctl->ringfd !=3D -1)
> +-    while (*ctl->sqhead !=3D *ctl->sqtail)
> +-      uv__epoll_ctl_flush(epollfd, ctl, &prep);
> + }
> +
> + uint64_t uv__hrtime(uv_clocktype_t type) {
> +@@ -1867,7 +1088,7 @@ static uint64_t uv__read_uint64(const char*
> filename) {
> +   if (0 =3D=3D uv__slurp(filename, buf, sizeof(buf)))
> +     if (1 !=3D sscanf(buf, "%" PRIu64, &rc))
> +       if (0 =3D=3D strcmp(buf, "max\n"))
> +-        rc =3D UINT64_MAX;
> ++        rc =3D ~0ull;
> +
> +   return rc;
> + }
> +@@ -1903,7 +1124,6 @@ static void uv__get_cgroup1_memory_limits(char
> buf[static 1024], uint64_t* high,
> +   char filename[4097];
> +   char* p;
> +   int n;
> +-  uint64_t cgroup1_max;
> +
> +   /* Find out where the controller is mounted. */
> +   p =3D uv__cgroup1_find_memory_controller(buf, &n);
> +@@ -1920,22 +1140,12 @@ static void uv__get_cgroup1_memory_limits(char
> buf[static 1024], uint64_t* high,
> +      * as indicated by uv__read_uint64 returning 0.
> +      */
> +      if (*high !=3D 0 && *max !=3D 0)
> +-       goto update_limits;
> ++       return;
> +   }
> +
> +   /* Fall back to the limits of the global memory controller. */
> +   *high =3D
> uv__read_uint64("/sys/fs/cgroup/memory/memory.soft_limit_in_bytes");
> +   *max =3D uv__read_uint64("/sys/fs/cgroup/memory/memory.limit_in_bytes=
");
> +-
> +-  /* uv__read_uint64 detects cgroup2's "max", so we need to separately
> detect
> +-   * cgroup1's maximum value (which is derived from LONG_MAX and
> PAGE_SIZE).
> +-   */
> +-update_limits:
> +-  cgroup1_max =3D LONG_MAX & ~(sysconf(_SC_PAGESIZE) - 1);
> +-  if (*high =3D=3D cgroup1_max)
> +-    *high =3D UINT64_MAX;
> +-  if (*max =3D=3D cgroup1_max)
> +-    *max =3D UINT64_MAX;
> + }
> +
> + static void uv__get_cgroup2_memory_limits(char buf[static 1024],
> uint64_t* high,
> +diff --git a/deps/uv/src/unix/os390.c b/deps/uv/src/unix/os390.c
> +index a87c2d77faf..3954b2c2753 100644
> +--- a/deps/uv/src/unix/os390.c
> ++++ b/deps/uv/src/unix/os390.c
> +@@ -808,7 +808,6 @@ static int
> os390_message_queue_handler(uv__os390_epoll* ep) {
> +
> + void uv__io_poll(uv_loop_t* loop, int timeout) {
> +   static const int max_safe_timeout =3D 1789569;
> +-  uv__loop_internal_fields_t* lfields;
> +   struct epoll_event events[1024];
> +   struct epoll_event* pe;
> +   struct epoll_event e;
> +@@ -831,8 +830,6 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
> +     return;
> +   }
> +
> +-  lfields =3D uv__get_internal_fields(loop);
> +-
> +   while (!QUEUE_EMPTY(&loop->watcher_queue)) {
> +     uv_stream_t* stream;
> +
> +@@ -880,7 +877,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
> +   int nevents =3D 0;
> +   have_signals =3D 0;
> +
> +-  if (lfields->flags & UV_METRICS_IDLE_TIME) {
> ++  if (uv__get_internal_fields(loop)->flags & UV_METRICS_IDLE_TIME) {
> +     reset_timeout =3D 1;
> +     user_timeout =3D timeout;
> +     timeout =3D 0;
> +@@ -899,12 +896,6 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
> +     if (sizeof(int32_t) =3D=3D sizeof(long) && timeout >=3D max_safe_ti=
meout)
> +       timeout =3D max_safe_timeout;
> +
> +-    /* Store the current timeout in a location that's globally
> accessible so
> +-     * other locations like uv__work_done() can determine whether the
> queue
> +-     * of events in the callback were waiting when poll was called.
> +-     */
> +-    lfields->current_timeout =3D timeout;
> +-
> +     nfds =3D epoll_wait(loop->ep, events,
> +                       ARRAY_SIZE(events), timeout);
> +
> +diff --git a/deps/uv/src/unix/posix-poll.c b/deps/uv/src/unix/posix-poll=
.c
> +index 7e7de86845d..711780ece8d 100644
> +--- a/deps/uv/src/unix/posix-poll.c
> ++++ b/deps/uv/src/unix/posix-poll.c
> +@@ -132,7 +132,6 @@ static void uv__pollfds_del(uv_loop_t* loop, int fd)=
 {
> +
> +
> + void uv__io_poll(uv_loop_t* loop, int timeout) {
> +-  uv__loop_internal_fields_t* lfields;
> +   sigset_t* pset;
> +   sigset_t set;
> +   uint64_t time_base;
> +@@ -153,8 +152,6 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
> +     return;
> +   }
> +
> +-  lfields =3D uv__get_internal_fields(loop);
> +-
> +   /* Take queued watchers and add their fds to our poll fds array.  */
> +   while (!QUEUE_EMPTY(&loop->watcher_queue)) {
> +     q =3D QUEUE_HEAD(&loop->watcher_queue);
> +@@ -182,7 +179,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
> +   assert(timeout >=3D -1);
> +   time_base =3D loop->time;
> +
> +-  if (lfields->flags & UV_METRICS_IDLE_TIME) {
> ++  if (uv__get_internal_fields(loop)->flags & UV_METRICS_IDLE_TIME) {
> +     reset_timeout =3D 1;
> +     user_timeout =3D timeout;
> +     timeout =3D 0;
> +@@ -201,12 +198,6 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
> +     if (timeout !=3D 0)
> +       uv__metrics_set_provider_entry_time(loop);
> +
> +-    /* Store the current timeout in a location that's globally
> accessible so
> +-     * other locations like uv__work_done() can determine whether the
> queue
> +-     * of events in the callback were waiting when poll was called.
> +-     */
> +-    lfields->current_timeout =3D timeout;
> +-
> +     if (pset !=3D NULL)
> +       if (pthread_sigmask(SIG_BLOCK, pset, NULL))
> +         abort();
> +diff --git a/deps/uv/src/uv-common.h b/deps/uv/src/uv-common.h
> +index decde5362c8..2720121addc 100644
> +--- a/deps/uv/src/uv-common.h
> ++++ b/deps/uv/src/uv-common.h
> +@@ -396,37 +396,9 @@ struct uv__loop_metrics_s {
> + void uv__metrics_update_idle_time(uv_loop_t* loop);
> + void uv__metrics_set_provider_entry_time(uv_loop_t* loop);
> +
> +-#ifdef __linux__
> +-struct uv__iou {
> +-  uint32_t* sqhead;
> +-  uint32_t* sqtail;
> +-  uint32_t* sqarray;
> +-  uint32_t sqmask;
> +-  uint32_t* sqflags;
> +-  uint32_t* cqhead;
> +-  uint32_t* cqtail;
> +-  uint32_t cqmask;
> +-  void* sq;   /* pointer to munmap() on event loop teardown */
> +-  void* cqe;  /* pointer to array of struct uv__io_uring_cqe */
> +-  void* sqe;  /* pointer to array of struct uv__io_uring_sqe */
> +-  size_t sqlen;
> +-  size_t cqlen;
> +-  size_t maxlen;
> +-  size_t sqelen;
> +-  int ringfd;
> +-  uint32_t in_flight;
> +-};
> +-#endif  /* __linux__ */
> +-
> + struct uv__loop_internal_fields_s {
> +   unsigned int flags;
> +   uv__loop_metrics_t loop_metrics;
> +-  int current_timeout;
> +-#ifdef __linux__
> +-  struct uv__iou ctl;
> +-  struct uv__iou iou;
> +-  void* inv;  /* used by uv__platform_invalidate_fd() */
> +-#endif  /* __linux__ */
> + };
> +
> + #endif /* UV_COMMON_H_ */
> +diff --git a/deps/uv/src/win/core.c b/deps/uv/src/win/core.c
> +index 9a3be58849a..e4041ec86a6 100644
> +--- a/deps/uv/src/win/core.c
> ++++ b/deps/uv/src/win/core.c
> +@@ -424,7 +424,6 @@ int uv_backend_timeout(const uv_loop_t* loop) {
> +
> +
> + static void uv__poll_wine(uv_loop_t* loop, DWORD timeout) {
> +-  uv__loop_internal_fields_t* lfields;
> +   DWORD bytes;
> +   ULONG_PTR key;
> +   OVERLAPPED* overlapped;
> +@@ -434,10 +433,9 @@ static void uv__poll_wine(uv_loop_t* loop, DWORD
> timeout) {
> +   uint64_t user_timeout;
> +   int reset_timeout;
> +
> +-  lfields =3D uv__get_internal_fields(loop);
> +   timeout_time =3D loop->time + timeout;
> +
> +-  if (lfields->flags & UV_METRICS_IDLE_TIME) {
> ++  if (uv__get_internal_fields(loop)->flags & UV_METRICS_IDLE_TIME) {
> +     reset_timeout =3D 1;
> +     user_timeout =3D timeout;
> +     timeout =3D 0;
> +@@ -452,12 +450,6 @@ static void uv__poll_wine(uv_loop_t* loop, DWORD
> timeout) {
> +     if (timeout !=3D 0)
> +       uv__metrics_set_provider_entry_time(loop);
> +
> +-    /* Store the current timeout in a location that's globally
> accessible so
> +-     * other locations like uv__work_done() can determine whether the
> queue
> +-     * of events in the callback were waiting when poll was called.
> +-     */
> +-    lfields->current_timeout =3D timeout;
> +-
> +     GetQueuedCompletionStatus(loop->iocp,
> +                               &bytes,
> +                               &key,
> +@@ -515,7 +507,6 @@ static void uv__poll_wine(uv_loop_t* loop, DWORD
> timeout) {
> +
> +
> + static void uv__poll(uv_loop_t* loop, DWORD timeout) {
> +-  uv__loop_internal_fields_t* lfields;
> +   BOOL success;
> +   uv_req_t* req;
> +   OVERLAPPED_ENTRY overlappeds[128];
> +@@ -527,10 +518,9 @@ static void uv__poll(uv_loop_t* loop, DWORD timeout=
)
> {
> +   uint64_t actual_timeout;
> +   int reset_timeout;
> +
> +-  lfields =3D uv__get_internal_fields(loop);
> +   timeout_time =3D loop->time + timeout;
> +
> +-  if (lfields->flags & UV_METRICS_IDLE_TIME) {
> ++  if (uv__get_internal_fields(loop)->flags & UV_METRICS_IDLE_TIME) {
> +     reset_timeout =3D 1;
> +     user_timeout =3D timeout;
> +     timeout =3D 0;
> +@@ -547,12 +537,6 @@ static void uv__poll(uv_loop_t* loop, DWORD timeout=
)
> {
> +     if (timeout !=3D 0)
> +       uv__metrics_set_provider_entry_time(loop);
> +
> +-    /* Store the current timeout in a location that's globally
> accessible so
> +-     * other locations like uv__work_done() can determine whether the
> queue
> +-     * of events in the callback were waiting when poll was called.
> +-     */
> +-    lfields->current_timeout =3D timeout;
> +-
> +     success =3D pGetQueuedCompletionStatusEx(loop->iocp,
> +                                            overlappeds,
> +                                            ARRAY_SIZE(overlappeds),
> diff --git
> a/recipes-devtools/nodejs/nodejs-20.8.1/0004-v8-don-t-override-ARM-CFLAGS=
.patch
> b/recipes-devtools/nodejs/nodejs-20.8.1/0004-v8-don-t-override-ARM-CFLAGS=
.patch
> new file mode 100644
> index 0000000..97ed972
> --- /dev/null
> +++
> b/recipes-devtools/nodejs/nodejs-20.8.1/0004-v8-don-t-override-ARM-CFLAGS=
.patch
> @@ -0,0 +1,102 @@
> +From 47ee5cc5501289205d3e8e9f27ea9daf18cebac1 Mon Sep 17 00:00:00 2001
> +From: =3D?UTF-8?q?Andr=3DC3=3DA9=3D20Draszik?=3D <git@andred.net>
> +Date: Sat, 9 Nov 2019 14:45:30 +0000
> +Subject: [PATCH] v8: don't override ARM CFLAGS
> +MIME-Version: 1.0
> +Content-Type: text/plain; charset=3DUTF-8
> +Content-Transfer-Encoding: 8bit
> +
> +This overrides yocto-provided build flags with its own, e.g we get
> +    arm-poky-linux-musleabi-g++  -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard
> -mcpu=3Dcortex-a7 \
> +                                 ... \
> +                                  -march=3Darmv7-a -mfpu=3Dneon
> -mfloat-abi=3Dhard -marm
> +
> +Causing the latter to override the former, and compiler warnings:
> +    cc1plus: warning: switch '-mcpu=3Dcortex-a7' conflicts with
> '-march=3Darmv7-a' switch
> +
> +Patch this out, so that yocto-provided flags take precedence.
> +Note that in reality the same should probably be done for all the other
> +supported architectures, too.
> +
> +Note that this also switches to Thumb(2) mode (in my case). No obvious
> +problems have been noted during compilation or runtime.
> +
> +Upstream-Status: Inappropriate [oe-specific]
> +Signed-off-by: Andr=C3=A9 Draszik <git@andred.net>
> +---
> + tools/v8_gypfiles/toolchain.gypi | 52 ++------------------------------
> + 1 file changed, 2 insertions(+), 50 deletions(-)
> +
> +diff --git a/tools/v8_gypfiles/toolchain.gypi
> b/tools/v8_gypfiles/toolchain.gypi
> +index 264b3e478e..0b41848145 100644
> +--- a/tools/v8_gypfiles/toolchain.gypi
> ++++ b/tools/v8_gypfiles/toolchain.gypi
> +@@ -211,31 +211,7 @@
> +         'target_conditions': [
> +           ['_toolset=3D=3D"host"', {
> +             'conditions': [
> +-              ['v8_target_arch=3D=3Dhost_arch', {
> +-                # Host built with an Arm CXX compiler.
> +-                'conditions': [
> +-                  [ 'arm_version=3D=3D7', {
> +-                    'cflags': ['-march=3Darmv7-a',],
> +-                  }],
> +-                  [ 'arm_version=3D=3D7 or arm_version=3D=3D"default"',=
 {
> +-                    'conditions': [
> +-                      [ 'arm_fpu!=3D"default"', {
> +-                        'cflags': ['-mfpu=3D<(arm_fpu)',],
> +-                      }],
> +-                    ],
> +-                  }],
> +-                  [ 'arm_float_abi!=3D"default"', {
> +-                    'cflags': ['-mfloat-abi=3D<(arm_float_abi)',],
> +-                  }],
> +-                  [ 'arm_thumb=3D=3D1', {
> +-                    'cflags': ['-mthumb',],
> +-                  }],
> +-                  [ 'arm_thumb=3D=3D0', {
> +-                    'cflags': ['-marm',],
> +-                  }],
> +-                ],
> +-              }, {
> +-                # 'v8_target_arch!=3Dhost_arch'
> ++              ['v8_target_arch!=3Dhost_arch', {
> +                 # Host not built with an Arm CXX compiler (simulator
> build).
> +                 'conditions': [
> +                   [ 'arm_float_abi=3D=3D"hard"', {
> +@@ -254,31 +230,7 @@
> +           }],  # _toolset=3D=3D"host"
> +           ['_toolset=3D=3D"target"', {
> +             'conditions': [
> +-              ['v8_target_arch=3D=3Dtarget_arch', {
> +-                # Target built with an Arm CXX compiler.
> +-                'conditions': [
> +-                  [ 'arm_version=3D=3D7', {
> +-                    'cflags': ['-march=3Darmv7-a',],
> +-                  }],
> +-                  [ 'arm_version=3D=3D7 or arm_version=3D=3D"default"',=
 {
> +-                    'conditions': [
> +-                      [ 'arm_fpu!=3D"default"', {
> +-                        'cflags': ['-mfpu=3D<(arm_fpu)',],
> +-                      }],
> +-                    ],
> +-                  }],
> +-                  [ 'arm_float_abi!=3D"default"', {
> +-                    'cflags': ['-mfloat-abi=3D<(arm_float_abi)',],
> +-                  }],
> +-                  [ 'arm_thumb=3D=3D1', {
> +-                    'cflags': ['-mthumb',],
> +-                  }],
> +-                  [ 'arm_thumb=3D=3D0', {
> +-                    'cflags': ['-marm',],
> +-                  }],
> +-                ],
> +-              }, {
> +-                # 'v8_target_arch!=3Dtarget_arch'
> ++              ['v8_target_arch!=3Dtarget_arch', {
> +                 # Target not built with an Arm CXX compiler (simulator
> build).
> +                 'conditions': [
> +                   [ 'arm_float_abi=3D=3D"hard"', {
> +--
> +2.20.1
> +
> diff --git a/recipes-devtools/nodejs/nodejs-20.8.1/libatomic.patch
> b/recipes-devtools/nodejs/nodejs-20.8.1/libatomic.patch
> new file mode 100644
> index 0000000..cb02373
> --- /dev/null
> +++ b/recipes-devtools/nodejs/nodejs-20.8.1/libatomic.patch
> @@ -0,0 +1,21 @@
> +Link mksnapshot with libatomic on x86
> +
> +Clang-12 on x86 emits atomic builtins
> +
> +Fixes
> +|
> module-compiler.cc:(.text._ZN2v88internal4wasm12_GLOBAL__N_123ExecuteComp=
ilationUnitsERKSt10shared_ptrINS2_22BackgroundCompileTokenEEPNS0_8CountersE=
iNS2_19CompileBaselineOnlyE+0x558):
> un
> +defined reference to `__atomic_load'
> +
> +Upstream-Status: Pending
> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
> +
> +--- a/tools/v8_gypfiles/v8.gyp
> ++++ b/tools/v8_gypfiles/v8.gyp
> +@@ -1436,6 +1436,7 @@
> +     {
> +       'target_name': 'mksnapshot',
> +       'type': 'executable',
> ++      'libraries': [ '-latomic' ],
> +       'dependencies': [
> +         'v8_base_without_compiler',
> +         'v8_compiler_for_mksnapshot',
> diff --git a/recipes-devtools/nodejs/nodejs-20.8.1/run-ptest
> b/recipes-devtools/nodejs/nodejs-20.8.1/run-ptest
> new file mode 100755
> index 0000000..e82f373
> --- /dev/null
> +++ b/recipes-devtools/nodejs/nodejs-20.8.1/run-ptest
> @@ -0,0 +1,8 @@
> +#!/bin/sh
> +
> +./cctest
> +if [ $? =3D 0 ]; then
> +  echo "PASS: nodejs"
> +else
> +  echo "FAIL: nodejs"
> +fi
> diff --git a/recipes-devtools/nodejs/nodejs-20.8.1/system-c-ares.patch
> b/recipes-devtools/nodejs/nodejs-20.8.1/system-c-ares.patch
> new file mode 100644
> index 0000000..141889a
> --- /dev/null
> +++ b/recipes-devtools/nodejs/nodejs-20.8.1/system-c-ares.patch
> @@ -0,0 +1,24 @@
> +keep nodejs compatible with c-ares 1.17.1
> +
> +Upstream-Status: Inappropriate [c-ares specific]
> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
> +
> +--- a/src/cares_wrap.h
> ++++ b/src/cares_wrap.h
> +@@ -22,7 +22,15 @@
> + # include <netdb.h>
> + #endif  // __POSIX__
> +
> +-# include <ares_nameser.h>
> ++#if defined(__ANDROID__) || \
> ++    defined(__MINGW32__) || \
> ++    defined(__OpenBSD__) || \
> ++    defined(_MSC_VER)
> ++
> ++# include <nameser.h>
> ++#else
> ++# include <arpa/nameser.h>
> ++#endif
> +
> + namespace node {
> + namespace cares_wrap {
> diff --git a/recipes-devtools/nodejs/nodejs-oe-cache-18.17/oe-npm-cache
> b/recipes-devtools/nodejs/nodejs-oe-cache-18.17/oe-npm-cache
> new file mode 100755
> index 0000000..f596207
> --- /dev/null
> +++ b/recipes-devtools/nodejs/nodejs-oe-cache-18.17/oe-npm-cache
> @@ -0,0 +1,77 @@
> +#!/usr/bin/env node
> +
> +/// Usage: oe-npm-cache <cache-dir> <type> <key> <file-name>
> +///    <type> ... meta - metainformation about package
> +///               tgz  - tarball
> +
> +const process =3D require("node:process");
> +
> +module.paths.unshift("@@libdir@@/node_modules/npm/node_modules");
> +
> +const cacache =3D require('cacache')
> +const fs =3D require('fs')
> +
> +// argv[0] is 'node', argv[1] is this script
> +const cache_dir =3D process.argv[2]
> +const type      =3D process.argv[3]
> +const key       =3D process.argv[4]
> +const file      =3D process.argv[5]
> +
> +const data =3D fs.readFileSync(file)
> +
> +// metadata content is highly nodejs dependent; when cache entries are n=
ot
> +// found, place debug statements in
> 'make-fetch-happen/lib/cache/policy.js'
> +// (CachePolicy::satisfies())
> +const xlate =3D {
> +    'meta': {
> +       'key_prefix': 'make-fetch-happen:request-cache:',
> +       'metadata': function() {
> +           return {
> +               time: Date.now(),
> +               url:  key,
> +               reqHeaders: {
> +                   'accept': 'application/vnd.npm.install-v1+json; q=3D1=
.0,
> application/json; q=3D0.8, */*',
> +               },
> +               resHeaders: {
> +                   "content-type": "application/json",
> +                   "status": 200,
> +               },
> +               options: {
> +                   compress: true,
> +               }
> +           };
> +       },
> +    },
> +
> +    'tgz': {
> +       'key_prefix': 'make-fetch-happen:request-cache:',
> +       'metadata': function() {
> +           return {
> +               time: Date.now(),
> +               url:  key,
> +               reqHeaders: {
> +                   'accept': '*/*',
> +               },
> +               resHeaders: {
> +                   "content-type": "application/octet-stream",
> +                   "status": 200,
> +               },
> +               options: {
> +                   compress: true,
> +               },
> +           };
> +       },
> +    },
> +};
> +
> +const info =3D xlate[type];
> +let opts =3D {}
> +
> +if (info.metadata) {
> +    opts['metadata'] =3D info.metadata();
> +}
> +
> +cacache.put(cache_dir, info.key_prefix + key, data, opts)
> +    .then(integrity =3D> {
> +       console.log(`Saved content of ${key} (${file}).`);
> +})
> diff --git a/recipes-devtools/nodejs/nodejs-oe-cache-20.5/oe-npm-cache
> b/recipes-devtools/nodejs/nodejs-oe-cache-20.5/oe-npm-cache
> new file mode 100755
> index 0000000..f596207
> --- /dev/null
> +++ b/recipes-devtools/nodejs/nodejs-oe-cache-20.5/oe-npm-cache
> @@ -0,0 +1,77 @@
> +#!/usr/bin/env node
> +
> +/// Usage: oe-npm-cache <cache-dir> <type> <key> <file-name>
> +///    <type> ... meta - metainformation about package
> +///               tgz  - tarball
> +
> +const process =3D require("node:process");
> +
> +module.paths.unshift("@@libdir@@/node_modules/npm/node_modules");
> +
> +const cacache =3D require('cacache')
> +const fs =3D require('fs')
> +
> +// argv[0] is 'node', argv[1] is this script
> +const cache_dir =3D process.argv[2]
> +const type      =3D process.argv[3]
> +const key       =3D process.argv[4]
> +const file      =3D process.argv[5]
> +
> +const data =3D fs.readFileSync(file)
> +
> +// metadata content is highly nodejs dependent; when cache entries are n=
ot
> +// found, place debug statements in
> 'make-fetch-happen/lib/cache/policy.js'
> +// (CachePolicy::satisfies())
> +const xlate =3D {
> +    'meta': {
> +       'key_prefix': 'make-fetch-happen:request-cache:',
> +       'metadata': function() {
> +           return {
> +               time: Date.now(),
> +               url:  key,
> +               reqHeaders: {
> +                   'accept': 'application/vnd.npm.install-v1+json; q=3D1=
.0,
> application/json; q=3D0.8, */*',
> +               },
> +               resHeaders: {
> +                   "content-type": "application/json",
> +                   "status": 200,
> +               },
> +               options: {
> +                   compress: true,
> +               }
> +           };
> +       },
> +    },
> +
> +    'tgz': {
> +       'key_prefix': 'make-fetch-happen:request-cache:',
> +       'metadata': function() {
> +           return {
> +               time: Date.now(),
> +               url:  key,
> +               reqHeaders: {
> +                   'accept': '*/*',
> +               },
> +               resHeaders: {
> +                   "content-type": "application/octet-stream",
> +                   "status": 200,
> +               },
> +               options: {
> +                   compress: true,
> +               },
> +           };
> +       },
> +    },
> +};
> +
> +const info =3D xlate[type];
> +let opts =3D {}
> +
> +if (info.metadata) {
> +    opts['metadata'] =3D info.metadata();
> +}
> +
> +cacache.put(cache_dir, info.key_prefix + key, data, opts)
> +    .then(integrity =3D> {
> +       console.log(`Saved content of ${key} (${file}).`);
> +})
> diff --git a/recipes-devtools/nodejs/nodejs-oe-cache-native_18.17.bb
> b/recipes-devtools/nodejs/nodejs-oe-cache-native_18.17.bb
> new file mode 100644
> index 0000000..a61dd50
> --- /dev/null
> +++ b/recipes-devtools/nodejs/nodejs-oe-cache-native_18.17.bb
> @@ -0,0 +1,21 @@
> +DESCRIPTION =3D "OE helper for manipulating npm cache"
> +LICENSE =3D "Apache-2.0"
> +LIC_FILES_CHKSUM =3D
> "file://${COMMON_LICENSE_DIR}/Apache-2.0;md5=3D89aea4e17d99a7cacdbeed46a0=
096b10"
> +
> +SRC_URI =3D "\
> +    file://oe-npm-cache \
> +"
> +
> +inherit native
> +
> +B =3D "${WORKDIR}/build"
> +
> +do_configure() {
> +    sed -e 's!@@libdir@@!${libdir}!g' < '${WORKDIR}/oe-npm-cache' >
> '${B}/oe-npm-cache'
> +}
> +
> +do_install() {
> +    install -D -p -m 0755 ${B}/oe-npm-cache ${D}${bindir}/oe-npm-cache
> +}
> +
> +RDEPENDS:${PN} =3D "nodejs-native"
> diff --git a/recipes-devtools/nodejs/nodejs-oe-cache-native_20.5.bb
> b/recipes-devtools/nodejs/nodejs-oe-cache-native_20.5.bb
> new file mode 100644
> index 0000000..a61dd50
> --- /dev/null
> +++ b/recipes-devtools/nodejs/nodejs-oe-cache-native_20.5.bb
> @@ -0,0 +1,21 @@
> +DESCRIPTION =3D "OE helper for manipulating npm cache"
> +LICENSE =3D "Apache-2.0"
> +LIC_FILES_CHKSUM =3D
> "file://${COMMON_LICENSE_DIR}/Apache-2.0;md5=3D89aea4e17d99a7cacdbeed46a0=
096b10"
> +
> +SRC_URI =3D "\
> +    file://oe-npm-cache \
> +"
> +
> +inherit native
> +
> +B =3D "${WORKDIR}/build"
> +
> +do_configure() {
> +    sed -e 's!@@libdir@@!${libdir}!g' < '${WORKDIR}/oe-npm-cache' >
> '${B}/oe-npm-cache'
> +}
> +
> +do_install() {
> +    install -D -p -m 0755 ${B}/oe-npm-cache ${D}${bindir}/oe-npm-cache
> +}
> +
> +RDEPENDS:${PN} =3D "nodejs-native"
> diff --git a/recipes-devtools/nodejs/nodejs_18.17.1.bb
> b/recipes-devtools/nodejs/nodejs_18.17.1.bb
> new file mode 100644
> index 0000000..402cf56
> --- /dev/null
> +++ b/recipes-devtools/nodejs/nodejs_18.17.1.bb
> @@ -0,0 +1,185 @@
> +DESCRIPTION =3D "nodeJS Evented I/O for V8 JavaScript"
> +HOMEPAGE =3D "http://nodejs.org"
> +LICENSE =3D "MIT & ISC & BSD-2-Clause & BSD-3-Clause & Artistic-2.0 &
> Apache-2.0"
> +LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3Dbc1f9ebe76be76f163e3b675303ad=
9cd"
> +
> +CVE_PRODUCT =3D "nodejs node.js"
> +
> +DEPENDS =3D "openssl file-replacement-native"
> +DEPENDS:append:class-target =3D " qemu-native"
> +DEPENDS:append:class-native =3D " c-ares-native"
> +
> +inherit pkgconfig python3native qemu ptest
> +
> +COMPATIBLE_MACHINE:armv4 =3D "(!.*armv4).*"
> +COMPATIBLE_MACHINE:armv5 =3D "(!.*armv5).*"
> +COMPATIBLE_MACHINE:mips64 =3D "(!.*mips64).*"
> +
> +COMPATIBLE_HOST:riscv64 =3D "null"
> +COMPATIBLE_HOST:riscv32 =3D "null"
> +COMPATIBLE_HOST:powerpc =3D "null"
> +
> +SRC_URI =3D "http://nodejs.org/dist/v${PV}/node-v${PV}.tar.xz \
> +           file://0001-Disable-running-gyp-files-for-bundled-deps.patch =
\
> +           file://0004-v8-don-t-override-ARM-CFLAGS.patch \
> +           file://big-endian.patch \
> +           file://mips-less-memory.patch \
> +           file://system-c-ares.patch \
> +           file://0001-liftoff-Correct-function-signatures.patch \
> +           file://0001-mips-Use-32bit-cast-for-operand-on-mips32.patch \
> +           file://run-ptest \
> +           "
> +
> +SRC_URI:append:class-target =3D " \
> +           file://0001-Using-native-binaries.patch \
> +           "
> +SRC_URI:append:toolchain-clang:x86 =3D " \
> +           file://libatomic.patch \
> +           "
> +SRC_URI:append:toolchain-clang:powerpc64le =3D " \
> +           file://0001-ppc64-Do-not-use-mminimal-toc-with-clang.patch \
> +           "
> +SRC_URI[sha256sum] =3D
> "f215cf03d0f00f07ac0b674c6819f804c1542e16f152da04980022aeccf5e65a"
> +
> +S =3D "${WORKDIR}/node-v${PV}"
> +
> +# v8 errors out if you have set CCACHE
> +CCACHE =3D ""
> +
> +def map_nodejs_arch(a, d):
> +    import re
> +
> +    if   re.match('i.86$', a): return 'ia32'
> +    elif re.match('x86_64$', a): return 'x64'
> +    elif re.match('aarch64$', a): return 'arm64'
> +    elif re.match('(powerpc64|powerpc64le|ppc64le)$', a): return 'ppc64'
> +    elif re.match('powerpc$', a): return 'ppc'
> +    return a
> +
> +ARCHFLAGS:arm =3D "${@bb.utils.contains('TUNE_FEATURES',
> 'callconvention-hard', '--with-arm-float-abi=3Dhard',
> '--with-arm-float-abi=3Dsoftfp', d)} \
> +                 ${@bb.utils.contains('TUNE_FEATURES', 'neon',
> '--with-arm-fpu=3Dneon', \
> +                    bb.utils.contains('TUNE_FEATURES', 'vfpv3d16',
> '--with-arm-fpu=3Dvfpv3-d16', \
> +                    bb.utils.contains('TUNE_FEATURES', 'vfpv3',
> '--with-arm-fpu=3Dvfpv3', \
> +                    '--with-arm-fpu=3Dvfp', d), d), d)}"
> +ARCHFLAGS:append:mips =3D " --v8-lite-mode"
> +ARCHFLAGS:append:mipsel =3D " --v8-lite-mode"
> +ARCHFLAGS ?=3D ""
> +
> +PACKAGECONFIG ??=3D "ares brotli icu zlib"
> +
> +PACKAGECONFIG[ares] =3D "--shared-cares,,c-ares"
> +PACKAGECONFIG[brotli] =3D "--shared-brotli,,brotli"
> +PACKAGECONFIG[icu] =3D "--with-intl=3Dsystem-icu,--without-intl,icu"
> +PACKAGECONFIG[libuv] =3D "--shared-libuv,,libuv"
> +PACKAGECONFIG[nghttp2] =3D "--shared-nghttp2,,nghttp2"
> +PACKAGECONFIG[shared] =3D "--shared"
> +PACKAGECONFIG[zlib] =3D "--shared-zlib,,zlib"
> +
> +# We don't want to cross-compile during target compile,
> +# and we need to use the right flags during host compile,
> +# too.
> +EXTRA_OEMAKE =3D "\
> +    CC.host=3D'${CC}' \
> +    CFLAGS.host=3D'${CPPFLAGS} ${CFLAGS}' \
> +    CXX.host=3D'${CXX}' \
> +    CXXFLAGS.host=3D'${CPPFLAGS} ${CXXFLAGS}' \
> +    LDFLAGS.host=3D'${LDFLAGS}' \
> +    AR.host=3D'${AR}' \
> +    \
> +    builddir_name=3D./ \
> +"
> +
> +EXTRANATIVEPATH +=3D "file-native"
> +
> +python prune_sources() {
> +    import shutil
> +
> +    shutil.rmtree(d.getVar('S') + '/deps/openssl')
> +    if 'ares' in d.getVar('PACKAGECONFIG'):
> +        shutil.rmtree(d.getVar('S') + '/deps/cares')
> +    if 'brotli' in d.getVar('PACKAGECONFIG'):
> +        shutil.rmtree(d.getVar('S') + '/deps/brotli')
> +    if 'libuv' in d.getVar('PACKAGECONFIG'):
> +        shutil.rmtree(d.getVar('S') + '/deps/uv')
> +    if 'nghttp2' in d.getVar('PACKAGECONFIG'):
> +        shutil.rmtree(d.getVar('S') + '/deps/nghttp2')
> +    if 'zlib' in d.getVar('PACKAGECONFIG'):
> +        shutil.rmtree(d.getVar('S') + '/deps/zlib')
> +}
> +do_unpack[postfuncs] +=3D "prune_sources"
> +
> +# V8's JIT infrastructure requires binaries such as mksnapshot and
> +# mkpeephole to be run in the host during the build. However, these
> +# binaries must have the same bit-width as the target (e.g. a x86_64
> +# host targeting ARMv6 needs to produce a 32-bit binary). Instead of
> +# depending on a third Yocto toolchain, we just build those binaries
> +# for the target and run them on the host with QEMU.
> +python do_create_v8_qemu_wrapper () {
> +    """Creates a small wrapper that invokes QEMU to run some target V8
> binaries
> +    on the host."""
> +    qemu_libdirs =3D [d.expand('${STAGING_DIR_HOST}${libdir}'),
> +                    d.expand('${STAGING_DIR_HOST}${base_libdir}')]
> +    qemu_cmd =3D qemu_wrapper_cmdline(d, d.getVar('STAGING_DIR_HOST'),
> +                                    qemu_libdirs)
> +    wrapper_path =3D d.expand('${B}/v8-qemu-wrapper.sh')
> +    with open(wrapper_path, 'w') as wrapper_file:
> +        wrapper_file.write("""#!/bin/sh
> +
> +# This file has been generated automatically.
> +# It invokes QEMU to run binaries built for the target in the host durin=
g
> the
> +# build process.
> +
> +%s "$@"
> +""" % qemu_cmd)
> +    os.chmod(wrapper_path, 0o755)
> +}
> +
> +do_create_v8_qemu_wrapper[dirs] =3D "${B}"
> +addtask create_v8_qemu_wrapper after do_configure before do_compile
> +
> +LDFLAGS:append:x86 =3D " -latomic"
> +
> +CROSS_FLAGS =3D "--cross-compiling"
> +CROSS_FLAGS:class-native =3D "--no-cross-compiling"
> +
> +# Node is way too cool to use proper autotools, so we install two
> wrappers to forcefully inject proper arch cflags to workaround gypi
> +do_configure () {
> +    GYP_DEFINES=3D"${GYP_DEFINES}" export GYP_DEFINES
> +    # $TARGET_ARCH settings don't match --dest-cpu settings
> +    python3 configure.py --verbose --prefix=3D${prefix} \
> +               --shared-openssl \
> +               --without-dtrace \
> +               --without-etw \
> +               --dest-cpu=3D"${@map_nodejs_arch(d.getVar('TARGET_ARCH'),
> d)}" \
> +               --dest-os=3Dlinux \
> +               --libdir=3D${baselib} \
> +               ${CROSS_FLAGS} \
> +               ${ARCHFLAGS} \
> +               ${PACKAGECONFIG_CONFARGS}
> +}
> +
> +do_compile () {
> +    install -D ${RECIPE_SYSROOT_NATIVE}/etc/ssl/openssl.cnf
> ${B}/deps/openssl/nodejs-openssl.cnf
> +    install -D ${B}/v8-qemu-wrapper.sh ${B}/out/Release/v8-qemu-wrapper.=
sh
> +    oe_runmake BUILDTYPE=3DRelease
> +}
> +
> +do_install () {
> +    oe_runmake install DESTDIR=3D${D}
> +}
> +
> +do_install_ptest () {
> +    cp -r  ${B}/out/Release/cctest ${D}${PTEST_PATH}/
> +    cp -r ${B}/test ${D}${PTEST_PATH}
> +    chown -R root:root ${D}${PTEST_PATH}
> +}
> +
> +PACKAGES =3D+ "${PN}-npm"
> +FILES:${PN}-npm =3D "${nonarch_libdir}/node_modules ${bindir}/npm
> ${bindir}/npx ${bindir}/corepack"
> +RDEPENDS:${PN}-npm =3D "bash python3-core python3-shell python3-datetime=
 \
> +    python3-misc python3-multiprocessing"
> +
> +PACKAGES =3D+ "${PN}-systemtap"
> +FILES:${PN}-systemtap =3D "${datadir}/systemtap"
> +
> +BBCLASSEXTEND =3D "native"
> diff --git a/recipes-devtools/nodejs/nodejs_20.8.1.bb
> b/recipes-devtools/nodejs/nodejs_20.8.1.bb
> new file mode 100644
> index 0000000..65f4eb3
> --- /dev/null
> +++ b/recipes-devtools/nodejs/nodejs_20.8.1.bb
> @@ -0,0 +1,182 @@
> +DESCRIPTION =3D "nodeJS Evented I/O for V8 JavaScript"
> +HOMEPAGE =3D "http://nodejs.org"
> +LICENSE =3D "MIT & ISC & BSD-2-Clause & BSD-3-Clause & Artistic-2.0 &
> Apache-2.0"
> +LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D162595a4a2f3453a0534e60b0afe4=
e7b"
> +
> +CVE_PRODUCT =3D "nodejs node.js"
> +
> +DEPENDS =3D "openssl file-replacement-native"
> +DEPENDS:append:class-target =3D " qemu-native"
> +DEPENDS:append:class-native =3D " c-ares-native"
> +
> +inherit pkgconfig python3native qemu ptest
> +
> +COMPATIBLE_MACHINE:armv4 =3D "(!.*armv4).*"
> +COMPATIBLE_MACHINE:armv5 =3D "(!.*armv5).*"
> +COMPATIBLE_MACHINE:mips64 =3D "(!.*mips64).*"
> +
> +COMPATIBLE_HOST:riscv64 =3D "null"
> +COMPATIBLE_HOST:riscv32 =3D "null"
> +COMPATIBLE_HOST:powerpc =3D "null"
> +
> +SRC_URI =3D "http://nodejs.org/dist/v${PV}/node-v${PV}.tar.xz \
> +           file://0001-Disable-running-gyp-files-for-bundled-deps.patch =
\
> +           file://0004-v8-don-t-override-ARM-CFLAGS.patch \
> +           file://system-c-ares.patch \
> +           file://0001-liftoff-Correct-function-signatures.patch \
> +           file://0001-Revert-io_uring-changes-from-libuv-1.46.0.patch \
> +           file://0002-Revert-io_uring-changes-from-libuv-1.45.0.patch \
> +           file://run-ptest \
> +           "
> +
> +SRC_URI:append:class-target =3D " \
> +           file://0001-Using-native-binaries.patch \
> +           "
> +SRC_URI:append:toolchain-clang:x86 =3D " \
> +           file://libatomic.patch \
> +           "
> +SRC_URI:append:toolchain-clang:powerpc64le =3D " \
> +           file://0001-ppc64-Do-not-use-mminimal-toc-with-clang.patch \
> +           "
> +SRC_URI[sha256sum] =3D
> "f799c66f6a6386bb8ac2c75a378f740c455e97f1fe964393dd39c9f9f6efbc70"
> +
> +S =3D "${WORKDIR}/node-v${PV}"
> +
> +# v8 errors out if you have set CCACHE
> +CCACHE =3D ""
> +
> +def map_nodejs_arch(a, d):
> +    import re
> +
> +    if   re.match('i.86$', a): return 'ia32'
> +    elif re.match('x86_64$', a): return 'x64'
> +    elif re.match('aarch64$', a): return 'arm64'
> +    elif re.match('(powerpc64|powerpc64le|ppc64le)$', a): return 'ppc64'
> +    elif re.match('powerpc$', a): return 'ppc'
> +    return a
> +
> +ARCHFLAGS:arm =3D "${@bb.utils.contains('TUNE_FEATURES',
> 'callconvention-hard', '--with-arm-float-abi=3Dhard',
> '--with-arm-float-abi=3Dsoftfp', d)} \
> +                 ${@bb.utils.contains('TUNE_FEATURES', 'neon',
> '--with-arm-fpu=3Dneon', \
> +                    bb.utils.contains('TUNE_FEATURES', 'vfpv3d16',
> '--with-arm-fpu=3Dvfpv3-d16', \
> +                    bb.utils.contains('TUNE_FEATURES', 'vfpv3',
> '--with-arm-fpu=3Dvfpv3', \
> +                    '--with-arm-fpu=3Dvfp', d), d), d)}"
> +ARCHFLAGS:append:mips =3D " --v8-lite-mode"
> +ARCHFLAGS:append:mipsel =3D " --v8-lite-mode"
> +ARCHFLAGS ?=3D ""
> +
> +PACKAGECONFIG ??=3D "ares brotli icu zlib"
> +
> +PACKAGECONFIG[ares] =3D "--shared-cares,,c-ares"
> +PACKAGECONFIG[brotli] =3D "--shared-brotli,,brotli"
> +PACKAGECONFIG[icu] =3D "--with-intl=3Dsystem-icu,--without-intl,icu"
> +PACKAGECONFIG[libuv] =3D "--shared-libuv,,libuv"
> +PACKAGECONFIG[nghttp2] =3D "--shared-nghttp2,,nghttp2"
> +PACKAGECONFIG[shared] =3D "--shared"
> +PACKAGECONFIG[zlib] =3D "--shared-zlib,,zlib"
> +
> +# We don't want to cross-compile during target compile,
> +# and we need to use the right flags during host compile,
> +# too.
> +EXTRA_OEMAKE =3D "\
> +    CC.host=3D'${CC} -pie -fPIE' \
> +    CFLAGS.host=3D'${CPPFLAGS} ${CFLAGS}' \
> +    CXX.host=3D'${CXX} -pie -fPIE' \
> +    CXXFLAGS.host=3D'${CPPFLAGS} ${CXXFLAGS}' \
> +    LDFLAGS.host=3D'${LDFLAGS}' \
> +    AR.host=3D'${AR}' \
> +    \
> +    builddir_name=3D./ \
> +"
> +
> +EXTRANATIVEPATH +=3D "file-native"
> +
> +python prune_sources() {
> +    import shutil
> +
> +    shutil.rmtree(d.getVar('S') + '/deps/openssl')
> +    if 'ares' in d.getVar('PACKAGECONFIG'):
> +        shutil.rmtree(d.getVar('S') + '/deps/cares')
> +    if 'brotli' in d.getVar('PACKAGECONFIG'):
> +        shutil.rmtree(d.getVar('S') + '/deps/brotli')
> +    if 'libuv' in d.getVar('PACKAGECONFIG'):
> +        shutil.rmtree(d.getVar('S') + '/deps/uv')
> +    if 'nghttp2' in d.getVar('PACKAGECONFIG'):
> +        shutil.rmtree(d.getVar('S') + '/deps/nghttp2')
> +    if 'zlib' in d.getVar('PACKAGECONFIG'):
> +        shutil.rmtree(d.getVar('S') + '/deps/zlib')
> +}
> +do_unpack[postfuncs] +=3D "prune_sources"
> +
> +# V8's JIT infrastructure requires binaries such as mksnapshot and
> +# mkpeephole to be run in the host during the build. However, these
> +# binaries must have the same bit-width as the target (e.g. a x86_64
> +# host targeting ARMv6 needs to produce a 32-bit binary). Instead of
> +# depending on a third Yocto toolchain, we just build those binaries
> +# for the target and run them on the host with QEMU.
> +python do_create_v8_qemu_wrapper () {
> +    """Creates a small wrapper that invokes QEMU to run some target V8
> binaries
> +    on the host."""
> +    qemu_libdirs =3D [d.expand('${STAGING_DIR_HOST}${libdir}'),
> +                    d.expand('${STAGING_DIR_HOST}${base_libdir}')]
> +    qemu_cmd =3D qemu_wrapper_cmdline(d, d.getVar('STAGING_DIR_HOST'),
> +                                    qemu_libdirs)
> +    wrapper_path =3D d.expand('${B}/v8-qemu-wrapper.sh')
> +    with open(wrapper_path, 'w') as wrapper_file:
> +        wrapper_file.write("""#!/bin/sh
> +
> +# This file has been generated automatically.
> +# It invokes QEMU to run binaries built for the target in the host durin=
g
> the
> +# build process.
> +
> +%s "$@"
> +""" % qemu_cmd)
> +    os.chmod(wrapper_path, 0o755)
> +}
> +
> +do_create_v8_qemu_wrapper[dirs] =3D "${B}"
> +addtask create_v8_qemu_wrapper after do_configure before do_compile
> +
> +LDFLAGS:append:x86 =3D " -latomic"
> +
> +CROSS_FLAGS =3D "--cross-compiling"
> +CROSS_FLAGS:class-native =3D "--no-cross-compiling"
> +
> +# Node is way too cool to use proper autotools, so we install two
> wrappers to forcefully inject proper arch cflags to workaround gypi
> +do_configure () {
> +    GYP_DEFINES=3D"${GYP_DEFINES}" export GYP_DEFINES
> +    # $TARGET_ARCH settings don't match --dest-cpu settings
> +    python3 configure.py --verbose --prefix=3D${prefix} \
> +               --shared-openssl \
> +               --dest-cpu=3D"${@map_nodejs_arch(d.getVar('TARGET_ARCH'),
> d)}" \
> +               --dest-os=3Dlinux \
> +               --libdir=3D${baselib} \
> +               ${CROSS_FLAGS} \
> +               ${ARCHFLAGS} \
> +               ${PACKAGECONFIG_CONFARGS}
> +}
> +
> +do_compile () {
> +    install -D ${RECIPE_SYSROOT_NATIVE}/etc/ssl/openssl.cnf
> ${B}/deps/openssl/nodejs-openssl.cnf
> +    install -D ${B}/v8-qemu-wrapper.sh ${B}/out/Release/v8-qemu-wrapper.=
sh
> +    oe_runmake BUILDTYPE=3DRelease
> +}
> +
> +do_install () {
> +    oe_runmake install DESTDIR=3D${D}
> +}
> +
> +do_install_ptest () {
> +    cp -r  ${B}/out/Release/cctest ${D}${PTEST_PATH}/
> +    cp -r ${B}/test ${D}${PTEST_PATH}
> +    chown -R root:root ${D}${PTEST_PATH}
> +}
> +
> +PACKAGES =3D+ "${PN}-npm"
> +FILES:${PN}-npm =3D "${nonarch_libdir}/node_modules ${bindir}/npm
> ${bindir}/npx ${bindir}/corepack"
> +RDEPENDS:${PN}-npm =3D "bash python3-core python3-shell python3-datetime=
 \
> +    python3-misc python3-multiprocessing"
> +
> +PACKAGES =3D+ "${PN}-systemtap"
> +FILES:${PN}-systemtap =3D "${datadir}/systemtap"
> +
> +BBCLASSEXTEND =3D "native"
> --
> 2.34.1
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61792):
> https://lists.yoctoproject.org/g/yocto/message/61792
> Mute This Topic: https://lists.yoctoproject.org/mt/102976462/5052612
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--000000000000380c17060bc0c2d3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Ant=C3=B3nio Oliveira &lt;<a href=3D"=
mailto:antonio@amsobr.com">antonio@amsobr.com</a>&gt; escreveu no dia segun=
da, 4/12/2023 =C3=A0(s) 18:31:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">* Added nodejs-20.8.1 from master, nodejs-18.17.1 from Mickl=
edore<br>
* added layer config, readme and license<br>
<br>
Signed-off-by: Ant=C3=B3nio Oliveira &lt;<a href=3D"mailto:antonio@amsobr.c=
om" target=3D"_blank">antonio@amsobr.com</a>&gt;<br>
---<br>
=C2=A0COPYING.MIT=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=
=A0 =C2=A017 +<br>
=C2=A0README=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 |=C2=A0 =C2=A022 +<br>
=C2=A0conf/layer.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A020=
 +<br>
=C2=A0...e-running-gyp-files-for-bundled-deps.patch |=C2=A0 =C2=A051 +<br>
=C2=A0.../0001-Using-native-binaries.patch=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 |=C2=A0 =C2=A077 +<br>
=C2=A0...-liftoff-Correct-function-signatures.patch |=C2=A0 =C2=A085 +<br>
=C2=A0...Use-32bit-cast-for-operand-on-mips32.patch |=C2=A0 =C2=A034 +<br>
=C2=A0...4-Do-not-use-mminimal-toc-with-clang.patch |=C2=A0 =C2=A023 +<br>
=C2=A0.../0004-v8-don-t-override-ARM-CFLAGS.patch=C2=A0 =C2=A0|=C2=A0 102 +=
<br>
=C2=A0.../nodejs/nodejs-18.17.1/big-endian.patch=C2=A0 =C2=A0 |=C2=A0 =C2=
=A018 +<br>
=C2=A0.../nodejs/nodejs-18.17.1/libatomic.patch=C2=A0 =C2=A0 =C2=A0|=C2=A0 =
=C2=A021 +<br>
=C2=A0.../nodejs-18.17.1/mips-less-memory.patch=C2=A0 =C2=A0 =C2=A0|=C2=A0 =
=C2=A037 +<br>
=C2=A0.../nodejs/nodejs-18.17.1/run-ptest=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0|=C2=A0 =C2=A0 3 +<br>
=C2=A0.../nodejs/nodejs-18.17.1/system-c-ares.patch |=C2=A0 =C2=A024 +<br>
=C2=A0...e-running-gyp-files-for-bundled-deps.patch |=C2=A0 =C2=A046 +<br>
=C2=A0...t-io_uring-changes-from-libuv-1.46.0.patch | 3414 ++++++++++++++++=
+<br>
=C2=A0.../0001-Using-native-binaries.patch=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 |=C2=A0 =C2=A094 +<br>
=C2=A0...-liftoff-Correct-function-signatures.patch |=C2=A0 =C2=A071 +<br>
=C2=A0...4-Do-not-use-mminimal-toc-with-clang.patch |=C2=A0 =C2=A025 +<br>
=C2=A0...t-io_uring-changes-from-libuv-1.45.0.patch | 1803 +++++++++<br>
=C2=A0.../0004-v8-don-t-override-ARM-CFLAGS.patch=C2=A0 =C2=A0|=C2=A0 102 +=
<br>
=C2=A0.../nodejs/nodejs-20.8.1/libatomic.patch=C2=A0 =C2=A0 =C2=A0 |=C2=A0 =
=C2=A021 +<br>
=C2=A0.../nodejs/nodejs-20.8.1/run-ptest=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 |=C2=A0 =C2=A0 8 +<br>
=C2=A0.../nodejs/nodejs-20.8.1/system-c-ares.patch=C2=A0 |=C2=A0 =C2=A024 +=
<br>
=C2=A0.../nodejs/nodejs-oe-cache-18.17/oe-npm-cache |=C2=A0 =C2=A077 +<br>
=C2=A0.../nodejs/nodejs-oe-cache-20.5/oe-npm-cache=C2=A0 |=C2=A0 =C2=A077 +=
<br>
=C2=A0.../nodejs/<a href=3D"http://nodejs-oe-cache-native_18.17.bb" rel=3D"=
noreferrer" target=3D"_blank">nodejs-oe-cache-native_18.17.bb</a>=C2=A0 =C2=
=A0 |=C2=A0 =C2=A021 +<br>
=C2=A0.../nodejs/<a href=3D"http://nodejs-oe-cache-native_20.5.bb" rel=3D"n=
oreferrer" target=3D"_blank">nodejs-oe-cache-native_20.5.bb</a>=C2=A0 =C2=
=A0 =C2=A0|=C2=A0 =C2=A021 +<br>
=C2=A0recipes-devtools/nodejs/<a href=3D"http://nodejs_18.17.1.bb" rel=3D"n=
oreferrer" target=3D"_blank">nodejs_18.17.1.bb</a>=C2=A0 =C2=A0 =C2=A0|=C2=
=A0 185 +<br>
=C2=A0recipes-devtools/nodejs/<a href=3D"http://nodejs_20.8.1.bb" rel=3D"no=
referrer" target=3D"_blank">nodejs_20.8.1.bb</a>=C2=A0 =C2=A0 =C2=A0 |=C2=
=A0 182 +<br>
=C2=A030 files changed, 6705 insertions(+)<br>
=C2=A0create mode 100644 COPYING.MIT<br>
=C2=A0create mode 100644 README<br>
=C2=A0create mode 100644 conf/layer.conf<br>
=C2=A0create mode 100644 recipes-devtools/nodejs/nodejs-18.17.1/0001-Disabl=
e-running-gyp-files-for-bundled-deps.patch<br>
=C2=A0create mode 100644 recipes-devtools/nodejs/nodejs-18.17.1/0001-Using-=
native-binaries.patch<br>
=C2=A0create mode 100644 recipes-devtools/nodejs/nodejs-18.17.1/0001-liftof=
f-Correct-function-signatures.patch<br>
=C2=A0create mode 100644 recipes-devtools/nodejs/nodejs-18.17.1/0001-mips-U=
se-32bit-cast-for-operand-on-mips32.patch<br>
=C2=A0create mode 100644 recipes-devtools/nodejs/nodejs-18.17.1/0001-ppc64-=
Do-not-use-mminimal-toc-with-clang.patch<br>
=C2=A0create mode 100644 recipes-devtools/nodejs/nodejs-18.17.1/0004-v8-don=
-t-override-ARM-CFLAGS.patch<br>
=C2=A0create mode 100644 recipes-devtools/nodejs/nodejs-18.17.1/big-endian.=
patch<br>
=C2=A0create mode 100644 recipes-devtools/nodejs/nodejs-18.17.1/libatomic.p=
atch<br>
=C2=A0create mode 100644 recipes-devtools/nodejs/nodejs-18.17.1/mips-less-m=
emory.patch<br>
=C2=A0create mode 100755 recipes-devtools/nodejs/nodejs-18.17.1/run-ptest<b=
r>
=C2=A0create mode 100644 recipes-devtools/nodejs/nodejs-18.17.1/system-c-ar=
es.patch<br>
=C2=A0create mode 100644 recipes-devtools/nodejs/nodejs-20.8.1/0001-Disable=
-running-gyp-files-for-bundled-deps.patch<br>
=C2=A0create mode 100644 recipes-devtools/nodejs/nodejs-20.8.1/0001-Revert-=
io_uring-changes-from-libuv-1.46.0.patch<br>
=C2=A0create mode 100644 recipes-devtools/nodejs/nodejs-20.8.1/0001-Using-n=
ative-binaries.patch<br>
=C2=A0create mode 100644 recipes-devtools/nodejs/nodejs-20.8.1/0001-liftoff=
-Correct-function-signatures.patch<br>
=C2=A0create mode 100644 recipes-devtools/nodejs/nodejs-20.8.1/0001-ppc64-D=
o-not-use-mminimal-toc-with-clang.patch<br>
=C2=A0create mode 100644 recipes-devtools/nodejs/nodejs-20.8.1/0002-Revert-=
io_uring-changes-from-libuv-1.45.0.patch<br>
=C2=A0create mode 100644 recipes-devtools/nodejs/nodejs-20.8.1/0004-v8-don-=
t-override-ARM-CFLAGS.patch<br>
=C2=A0create mode 100644 recipes-devtools/nodejs/nodejs-20.8.1/libatomic.pa=
tch<br>
=C2=A0create mode 100755 recipes-devtools/nodejs/nodejs-20.8.1/run-ptest<br=
>
=C2=A0create mode 100644 recipes-devtools/nodejs/nodejs-20.8.1/system-c-are=
s.patch<br>
=C2=A0create mode 100755 recipes-devtools/nodejs/nodejs-oe-cache-18.17/oe-n=
pm-cache<br>
=C2=A0create mode 100755 recipes-devtools/nodejs/nodejs-oe-cache-20.5/oe-np=
m-cache<br>
=C2=A0create mode 100644 recipes-devtools/nodejs/<a href=3D"http://nodejs-o=
e-cache-native_18.17.bb" rel=3D"noreferrer" target=3D"_blank">nodejs-oe-cac=
he-native_18.17.bb</a><br>
=C2=A0create mode 100644 recipes-devtools/nodejs/<a href=3D"http://nodejs-o=
e-cache-native_20.5.bb" rel=3D"noreferrer" target=3D"_blank">nodejs-oe-cach=
e-native_20.5.bb</a><br>
=C2=A0create mode 100644 recipes-devtools/nodejs/<a href=3D"http://nodejs_1=
8.17.1.bb" rel=3D"noreferrer" target=3D"_blank">nodejs_18.17.1.bb</a><br>
=C2=A0create mode 100644 recipes-devtools/nodejs/<a href=3D"http://nodejs_2=
0.8.1.bb" rel=3D"noreferrer" target=3D"_blank">nodejs_20.8.1.bb</a><br>
<br>
diff --git a/COPYING.MIT b/COPYING.MIT<br>
new file mode 100644<br>
index 0000000..fb950dc<br>
--- /dev/null<br>
+++ b/COPYING.MIT<br>
@@ -0,0 +1,17 @@<br>
+Permission is hereby granted, free of charge, to any person obtaining a co=
py <br>
+of this software and associated documentation files (the &quot;Software&qu=
ot;), to deal <br>
+in the Software without restriction, including without limitation the righ=
ts <br>
+to use, copy, modify, merge, publish, distribute, sublicense, and/or sell =
<br>
+copies of the Software, and to permit persons to whom the Software is <br>
+furnished to do so, subject to the following conditions:<br>
+<br>
+The above copyright notice and this permission notice shall be included in=
 <br>
+all copies or substantial portions of the Software.<br>
+<br>
+THE SOFTWARE IS PROVIDED &quot;AS IS&quot;, WITHOUT WARRANTY OF ANY KIND, =
EXPRESS OR <br>
+IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, <=
br>
+FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL TH=
E <br>
+AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER <br=
>
+LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FR=
OM, <br>
+OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN =
<br>
+THE SOFTWARE.<br>
diff --git a/README b/README<br>
new file mode 100644<br>
index 0000000..57433de<br>
--- /dev/null<br>
+++ b/README<br>
@@ -0,0 +1,22 @@<br>
+&quot;Mixin&quot; layer for adding latest nodejs-18.x into the Yocto Proje=
ct LTS.<br>
+<br>
+At the time Kirkstone was released in May 2022, nodejs v16 was the latest<=
br>
+version and officially it&#39;s the only nodejs version supported by Kirks=
tone.<br>
+Kirkstone will be supported until April 2026 but nodejs-16 is EOL as of Oc=
tober<br>
+2023, making it unsuitable for projects during the lifetimg of Kirkstone.<=
br>
+<br>
+This mixin layer is meant to address this issue by backporting nodejs-18 a=
nd<br>
+nodejs-20 versions from the mickledore and master branches of meta-openemb=
edded,<br>
+respectively.<br>
+<br>
+The actual versions of nodejs that are available can be found by inspectin=
g the<br>
+contents of recipes-devtools/nodejs.<br>
+<br>
+Including the layer automatically picks up the latest nodejs version; diff=
erent<br>
+versions must be set explicitly by adding the following line to your distr=
o<br>
+config or local.conf:<br>
+<br>
+NODE_VERSION =3D &quot;20%&quot;<br>
+<br>
+Maintainers:<br>
+Ant=C3=B3nio Oliveira &lt;<a href=3D"mailto:antonio@amsobr.com" target=3D"=
_blank">antonio@amsobr.com</a>&gt;<br>
diff --git a/conf/layer.conf b/conf/layer.conf<br>
new file mode 100644<br>
index 0000000..4ef1e91<br>
--- /dev/null<br>
+++ b/conf/layer.conf<br>
@@ -0,0 +1,20 @@<br>
+# We have a conf and classes directory, append to BBPATH<br>
+BBPATH .=3D &quot;:${LAYERDIR}&quot;<br>
+<br>
+# We have a recipes directory, add to BBFILES<br>
+BBFILES +=3D &quot;${LAYERDIR}/recipes*/*/*.bb ${LAYERDIR}/recipes*/*/*.bb=
append&quot;<br>
+<br>
+BBFILE_COLLECTIONS +=3D &quot;lts-nodejs-mixin&quot;<br>
+BBFILE_PATTERN_lts-nodejs-mixin :=3D &quot;^${LAYERDIR}/&quot;<br>
+BBFILE_PRIORITY_lts-nodejs-mixin =3D &quot;6&quot;<br>
+<br>
+LAYERSERIES_COMPAT_lts-nodejs-mixin =3D &quot;kirkstone&quot;<br>
+<br>
+LAYERDEPENDS_lts-nodejs-mixin =3D &quot; \<br>
+=C2=A0 =C2=A0 core \<br>
+&quot;<br></blockquote><div><br>Hi Antonio,<br><br></div><div>Looks like t=
he recipe=C2=A0recipes-devtools/nodejs/<a href=3D"http://nodejs_20.8.1.bb">=
nodejs_20.8.1.bb</a></div><div>have=C2=A0ares and brotli=C2=A0enabled by de=
fault in=C2=A0PACKAGECONFIG and=C2=A0they</div><div>will pull in dependenci=
es=C2=A0from the openembedded-layer at meta-openembedded/meta-oe.<br><div>S=
o the layer &#39;openembedded-layer&#39; should=C2=A0be also included in=C2=
=A0LAYERDEPENDS_lts-nodejs-mixin.</div><div></div><div><br></div>+PACKAGECO=
NFIG ??=3D &quot;ares brotli icu zlib&quot;<br>+<br>+PACKAGECONFIG[ares] =
=3D &quot;--shared-cares,,c-ares&quot;<br>+PACKAGECONFIG[brotli] =3D &quot;=
--shared-brotli,,brotli&quot;<br></div><div><br></div><div>meta-openembedde=
d/meta-oe/recipes-extended/brotli/<a href=3D"http://brotli_1.1.0.bb">brotli=
_1.1.0.bb</a><br>meta-openembedded/meta-oe/recipes-support/c-ares/<a href=
=3D"http://c-ares_1.22.1.bb">c-ares_1.22.1.bb</a><br></div><div><br></div><=
div>Jose</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">
+<br>
+NODE_VERSION ??=3D &quot;20.%&quot;<br>
+<br>
+PREFERRED_VERSION_nodejs ??=3D &quot;${NODE_VERSION}&quot;<br>
+PREFERRED_VERSION_nodejs-oe-cache-native ??=3D &quot;${NODE_VERSION}&quot;=
<br>
diff --git a/recipes-devtools/nodejs/nodejs-18.17.1/0001-Disable-running-gy=
p-files-for-bundled-deps.patch b/recipes-devtools/nodejs/nodejs-18.17.1/000=
1-Disable-running-gyp-files-for-bundled-deps.patch<br>
new file mode 100644<br>
index 0000000..059b5cc<br>
--- /dev/null<br>
+++ b/recipes-devtools/nodejs/nodejs-18.17.1/0001-Disable-running-gyp-files=
-for-bundled-deps.patch<br>
@@ -0,0 +1,51 @@<br>
+From 7d94bfe53beeb2d25eb5f2ff6b1d509df7e6ab80 Mon Sep 17 00:00:00 2001<br>
+From: Zuzana Svetlikova &lt;<a href=3D"mailto:zsvetlik@redhat.com" target=
=3D"_blank">zsvetlik@redhat.com</a>&gt;<br>
+Date: Thu, 27 Apr 2017 14:25:42 +0200<br>
+Subject: [PATCH] Disable running gyp on shared deps<br>
+<br>
+Upstream-Status: Inappropriate [embedded specific]<br>
+<br>
+Probably imported from:<br>
+<a href=3D"https://src.fedoraproject.org/rpms/nodejs/c/41af04f2a3c050fb446=
28e91ac65fd225b927acb?branch=3D22609d8c1bfeaa21fe0057645af20b3a2ccc7f53" re=
l=3D"noreferrer" target=3D"_blank">https://src.fedoraproject.org/rpms/nodej=
s/c/41af04f2a3c050fb44628e91ac65fd225b927acb?branch=3D22609d8c1bfeaa21fe005=
7645af20b3a2ccc7f53</a><br>
+which is probably based on dont-run-gyp-files-for-bundled-deps.patch added=
 in:<br>
+<a href=3D"https://github.com/alpinelinux/aports/commit/6662eb3199902e8451=
fb20dce82554ad96f796bb" rel=3D"noreferrer" target=3D"_blank">https://github=
.com/alpinelinux/aports/commit/6662eb3199902e8451fb20dce82554ad96f796bb</a>=
<br>
+<br>
+We also explicitly prune some dependencies from source in the bitbake reci=
pe:<br>
+<br>
+python prune_sources() {<br>
+=C2=A0 =C2=A0 import shutil<br>
+<br>
+=C2=A0 =C2=A0 shutil.rmtree(d.getVar(&#39;S&#39;) + &#39;/deps/openssl&#39=
;)<br>
+=C2=A0 =C2=A0 if &#39;ares&#39; in d.getVar(&#39;PACKAGECONFIG&#39;):<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 shutil.rmtree(d.getVar(&#39;S&#39;) + &#39;/de=
ps/cares&#39;)<br>
+=C2=A0 =C2=A0 if &#39;brotli&#39; in d.getVar(&#39;PACKAGECONFIG&#39;):<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 shutil.rmtree(d.getVar(&#39;S&#39;) + &#39;/de=
ps/brotli&#39;)<br>
+=C2=A0 =C2=A0 if &#39;libuv&#39; in d.getVar(&#39;PACKAGECONFIG&#39;):<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 shutil.rmtree(d.getVar(&#39;S&#39;) + &#39;/de=
ps/uv&#39;)<br>
+=C2=A0 =C2=A0 if &#39;nghttp2&#39; in d.getVar(&#39;PACKAGECONFIG&#39;):<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 shutil.rmtree(d.getVar(&#39;S&#39;) + &#39;/de=
ps/nghttp2&#39;)<br>
+=C2=A0 =C2=A0 if &#39;zlib&#39; in d.getVar(&#39;PACKAGECONFIG&#39;):<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 shutil.rmtree(d.getVar(&#39;S&#39;) + &#39;/de=
ps/zlib&#39;)<br>
+}<br>
+do_unpack[postfuncs] +=3D &quot;prune_sources&quot;<br>
+<br>
+Signed-off-by: Archana Polampalli &lt;<a href=3D"mailto:archana.polampalli=
@windriver.com" target=3D"_blank">archana.polampalli@windriver.com</a>&gt;<=
br>
+---<br>
+ Makefile | 2 +-<br>
+ 1 file changed, 1 insertion(+), 1 deletion(-)<br>
+<br>
+diff --git a/Makefile b/Makefile<br>
+index 0be0659d..3c442014 100644<br>
+--- a/Makefile<br>
++++ b/Makefile<br>
+@@ -169,7 +169,7 @@ with-code-cache test-code-cache:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0$(warning &#39;$@&#39; target is a noop)<br>
+ <br>
+ out/Makefile: config.gypi common.gypi node.gyp \<br>
+-=C2=A0 =C2=A0 =C2=A0 deps/uv/uv.gyp deps/llhttp/llhttp.gyp deps/zlib/zlib=
.gyp \<br>
++=C2=A0 =C2=A0 =C2=A0 deps/llhttp/llhttp.gyp \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0deps/simdutf/simdutf.gyp deps/ada/ada.gyp \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0tools/v8_gypfiles/toolchain.gypi tools/v8_gypfi=
les/features.gypi \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0tools/v8_gypfiles/inspector.gypi tools/v8_gypfi=
les/v8.gyp<br>
+--<br>
+2.40.0<br>
diff --git a/recipes-devtools/nodejs/nodejs-18.17.1/0001-Using-native-binar=
ies.patch b/recipes-devtools/nodejs/nodejs-18.17.1/0001-Using-native-binari=
es.patch<br>
new file mode 100644<br>
index 0000000..66e10a0<br>
--- /dev/null<br>
+++ b/recipes-devtools/nodejs/nodejs-18.17.1/0001-Using-native-binaries.pat=
ch<br>
@@ -0,0 +1,77 @@<br>
+From 6c3ac20477a4bac643088f24df3c042e627fafa9 Mon Sep 17 00:00:00 2001<br>
+From: Guillaume Burel &lt;<a href=3D"mailto:guillaume.burel@stormshield.eu=
" target=3D"_blank">guillaume.burel@stormshield.eu</a>&gt;<br>
+Date: Fri, 3 Jan 2020 11:25:54 +0100<br>
+Subject: [PATCH] Using native binaries<br>
+<br>
+Upstream-Status: Inappropriate [embedded specific]<br>
+<br>
+Originally added in:<br>
+<a href=3D"https://git.openembedded.org/meta-openembedded/commit/?id=3D1c8=
e4a679ae382f953b2e5c7a4966a4646314f3e" rel=3D"noreferrer" target=3D"_blank"=
>https://git.openembedded.org/meta-openembedded/commit/?id=3D1c8e4a679ae382=
f953b2e5c7a4966a4646314f3e</a><br>
+later extended and renamed in:<br>
+<a href=3D"https://git.openembedded.org/meta-openembedded/commit/?id=3Dfee=
b172d1a8bf010490d22b8df9448b20d9d2aed" rel=3D"noreferrer" target=3D"_blank"=
>https://git.openembedded.org/meta-openembedded/commit/?id=3Dfeeb172d1a8bf0=
10490d22b8df9448b20d9d2aed</a><br>
+<br>
+Signed-off-by: Archana Polampalli &lt;<a href=3D"mailto:archana.polampalli=
@windriver.com" target=3D"_blank">archana.polampalli@windriver.com</a>&gt;<=
br>
+---<br>
+ node.gyp=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 1=
 +<br>
+ tools/v8_gypfiles/v8.gyp | 5 +++++<br>
+ 2 files changed, 6 insertions(+)<br>
+<br>
+diff --git a/node.gyp b/node.gyp<br>
+index e8e1d9f9..e60ccc10 100644<br>
+--- a/node.gyp<br>
++++ b/node.gyp<br>
+@@ -320,6 +320,7 @@<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;=
action_name&#39;: &#39;node_mksnapshot&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;=
process_outputs_as_sources&#39;: 1,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;=
inputs&#39;: [<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#3=
9;&lt;(PRODUCT_DIR)/v8-qemu-wrapper.sh&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&#39;&lt;(node_mksnapshot_exec)&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&#39;&lt;(node_snapshot_main)&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0],<br=
>
+diff --git a/tools/v8_gypfiles/v8.gyp b/tools/v8_gypfiles/v8.gyp<br>
+index 42e26cd9..bc721991 100644<br>
+--- a/tools/v8_gypfiles/v8.gyp<br>
++++ b/tools/v8_gypfiles/v8.gyp<br>
+@@ -68,6 +68,7 @@<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;action_name&#39;: &#39;run_t=
orque_action&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;inputs&#39;: [=C2=A0 # Order=
 matters.<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&lt;(PRODUCT_DIR)/v8-qemu-=
wrapper.sh&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;&lt;(PRODUCT_DIR)/&lt=
;(EXECUTABLE_PREFIX)torque&lt;(EXECUTABLE_SUFFIX)&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;&lt;@(torque_files)&#=
39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0],<br>
+@@ -99,6 +100,7 @@<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;&lt;@(torque_outputs_=
inc)&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;action&#39;: [<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&lt;(PRODUCT_DIR)/v8-qemu-=
wrapper.sh&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;&lt;(PRODUCT_DIR)/&lt=
;(EXECUTABLE_PREFIX)torque&lt;(EXECUTABLE_SUFFIX)&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;-o&#39;, &#39;&lt;(SH=
ARED_INTERMEDIATE_DIR)/torque-generated&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;-v8-root&#39;, &#39;&=
lt;(V8_ROOT)&#39;,<br>
+@@ -211,6 +213,7 @@<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;action_name&#39;: &#39;gener=
ate_bytecode_builtins_list_action&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;inputs&#39;: [<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&lt;(PRODUCT_DIR)/v8-qemu-=
wrapper.sh&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;&lt;(PRODUCT_DIR)/&lt=
;(EXECUTABLE_PREFIX)bytecode_builtins_list_generator&lt;(EXECUTABLE_SUFFIX)=
&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;outputs&#39;: [<br>
+@@ -400,6 +403,7 @@<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;inputs&#39;: [<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&lt;(PRODUCT_DIR)/v8-qemu-=
wrapper.sh&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;&lt;(mksnapshot_exec)=
&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;outputs&#39;: [<br>
+@@ -1539,6 +1543,7 @@<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;action_name&#39;: &#39;run_g=
en-regexp-special-case_action&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;inputs&#39;: [<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&lt;(PRODUCT_DIR)/v8-qemu-=
wrapper.sh&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;&lt;(PRODUCT_DIR)/&lt=
;(EXECUTABLE_PREFIX)gen-regexp-special-case&lt;(EXECUTABLE_SUFFIX)&#39;,<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;outputs&#39;: [<br>
+-- <br>
+2.34.1<br>
+<br>
diff --git a/recipes-devtools/nodejs/nodejs-18.17.1/0001-liftoff-Correct-fu=
nction-signatures.patch b/recipes-devtools/nodejs/nodejs-18.17.1/0001-lifto=
ff-Correct-function-signatures.patch<br>
new file mode 100644<br>
index 0000000..c9a522d<br>
--- /dev/null<br>
+++ b/recipes-devtools/nodejs/nodejs-18.17.1/0001-liftoff-Correct-function-=
signatures.patch<br>
@@ -0,0 +1,85 @@<br>
+From dc3652c0abcdf8573fd044907b19d8eda7ca1124 Mon Sep 17 00:00:00 2001<br>
+From: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank"=
>raj.khem@gmail.com</a>&gt;<br>
+Date: Wed, 20 Oct 2021 12:49:58 -0700<br>
+Subject: [PATCH] [liftoff] Correct function signatures<br>
+<br>
+Fixes builds on mips where clang reports an error<br>
+../deps/v8/src/wasm/baseline/mips/liftoff-assembler-mips.h:661:5: error: n=
o matching member function for call to &#39;Move&#39;<br>
+=C2=A0 =C2=A0 Move(tmp, src, type.value_type());<br>
+=C2=A0 =C2=A0 ^~~~<br>
+<br>
+Upstream-Status: Submitted [<a href=3D"https://chromium-review.googlesourc=
e.com/c/v8/v8/+/3235674" rel=3D"noreferrer" target=3D"_blank">https://chrom=
ium-review.googlesource.com/c/v8/v8/+/3235674</a>]<br>
+<br>
+Signed-off-by: Archana Polampalli &lt;<a href=3D"mailto:archana.polampalli=
@windriver.com" target=3D"_blank">archana.polampalli@windriver.com</a>&gt;<=
br>
+---<br>
+ deps/v8/src/wasm/baseline/liftoff-assembler.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0| 6 +++---<br>
+ deps/v8/src/wasm/baseline/mips/liftoff-assembler-mips.h=C2=A0 =C2=A0 =C2=
=A0| 2 +-<br>
+ deps/v8/src/wasm/baseline/mips64/liftoff-assembler-mips64.h | 2 +-<br>
+ .../src/wasm/baseline/riscv64/liftoff-assembler-riscv64.h=C2=A0 =C2=A0| 2=
 +-<br>
+ 4 files changed, 6 insertions(+), 6 deletions(-)<br>
+<br>
+diff --git a/deps/v8/src/wasm/baseline/liftoff-assembler.h b/deps/v8/src/w=
asm/baseline/liftoff-assembler.h<br>
+index 22c7f73a..db4cb168 100644<br>
+--- a/deps/v8/src/wasm/baseline/liftoff-assembler.h<br>
++++ b/deps/v8/src/wasm/baseline/liftoff-assembler.h<br>
+@@ -646,7 +646,7 @@ class LiftoffAssembler : public TurboAssembler {<br>
+=C2=A0 =C2=A0void FinishCall(const ValueKindSig*, compiler::CallDescriptor=
*);<br>
+ <br>
+=C2=A0 =C2=A0// Move {src} into {dst}. {src} and {dst} must be different.<=
br>
+-=C2=A0 void Move(LiftoffRegister dst, LiftoffRegister src, ValueKind);<br=
>
++=C2=A0 void Move(LiftoffRegister dst, LiftoffRegister src, ValueKind kind=
);<br>
+ <br>
+=C2=A0 =C2=A0// Parallel register move: For a list of tuples &lt;dst, src,=
 kind&gt;, move the<br>
+=C2=A0 =C2=A0// {src} register of kind {kind} into {dst}. If {src} equals =
{dst}, ignore<br>
+@@ -795,8 +795,8 @@ class LiftoffAssembler : public TurboAssembler {<br>
+=C2=A0 =C2=A0inline void MoveStackValue(uint32_t dst_offset, uint32_t src_=
offset,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ValueKind);<br>
+ <br>
+-=C2=A0 inline void Move(Register dst, Register src, ValueKind);<br>
+-=C2=A0 inline void Move(DoubleRegister dst, DoubleRegister src, ValueKind=
);<br>
++=C2=A0 inline void Move(Register dst, Register src, ValueKind kind);<br>
++=C2=A0 inline void Move(DoubleRegister dst, DoubleRegister src, ValueKind=
 kind);<br>
+ <br>
+=C2=A0 =C2=A0inline void Spill(int offset, LiftoffRegister, ValueKind);<br=
>
+=C2=A0 =C2=A0inline void Spill(int offset, WasmValue);<br>
+diff --git a/deps/v8/src/wasm/baseline/mips/liftoff-assembler-mips.h b/dep=
s/v8/src/wasm/baseline/mips/liftoff-assembler-mips.h<br>
+index c76fd2f4..0fffe231 100644<br>
+--- a/deps/v8/src/wasm/baseline/mips/liftoff-assembler-mips.h<br>
++++ b/deps/v8/src/wasm/baseline/mips/liftoff-assembler-mips.h<br>
+@@ -661,7 +661,7 @@ void LiftoffAssembler::Store(Register dst_addr, Regist=
er offset_reg,<br>
+=C2=A0 =C2=A0 =C2=A0pinned =3D pinned | LiftoffRegList{dst_op.rm(), src};<=
br>
+=C2=A0 =C2=A0 =C2=A0LiftoffRegister tmp =3D GetUnusedRegister(src.reg_clas=
s(), pinned);<br>
+=C2=A0 =C2=A0 =C2=A0// Save original value.<br>
+-=C2=A0 =C2=A0 Move(tmp, src, type.value_type());<br>
++=C2=A0 =C2=A0 Move(tmp, src, type.value_type().kind());<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0src =3D tmp;<br>
+=C2=A0 =C2=A0 =C2=A0pinned.set(tmp);<br>
+diff --git a/deps/v8/src/wasm/baseline/mips64/liftoff-assembler-mips64.h b=
/deps/v8/src/wasm/baseline/mips64/liftoff-assembler-mips64.h<br>
+index 36413545..48207337 100644<br>
+--- a/deps/v8/src/wasm/baseline/mips64/liftoff-assembler-mips64.h<br>
++++ b/deps/v8/src/wasm/baseline/mips64/liftoff-assembler-mips64.h<br>
+@@ -593,7 +593,7 @@ void LiftoffAssembler::Store(Register dst_addr, Regist=
er offset_reg,<br>
+=C2=A0 =C2=A0 =C2=A0pinned.set(dst_op.rm());<br>
+=C2=A0 =C2=A0 =C2=A0LiftoffRegister tmp =3D GetUnusedRegister(src.reg_clas=
s(), pinned);<br>
+=C2=A0 =C2=A0 =C2=A0// Save original value.<br>
+-=C2=A0 =C2=A0 Move(tmp, src, type.value_type());<br>
++=C2=A0 =C2=A0 Move(tmp, src, type.value_type().kind());<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0src =3D tmp;<br>
+=C2=A0 =C2=A0 =C2=A0pinned.set(tmp);<br>
+diff --git a/deps/v8/src/wasm/baseline/riscv64/liftoff-assembler-riscv64.h=
 b/deps/v8/src/wasm/baseline/riscv64/liftoff-assembler-riscv64.h<br>
+index 642a7d2a..56ffcc2a 100644<br>
+--- a/deps/v8/src/wasm/baseline/riscv64/liftoff-assembler-riscv64.h<br>
++++ b/deps/v8/src/wasm/baseline/riscv64/liftoff-assembler-riscv64.h<br>
+@@ -589,7 +589,7 @@ void LiftoffAssembler::Store(Register dst_addr, Regist=
er offset_reg,<br>
+=C2=A0 =C2=A0 =C2=A0pinned.set(dst_op.rm());<br>
+=C2=A0 =C2=A0 =C2=A0LiftoffRegister tmp =3D GetUnusedRegister(src.reg_clas=
s(), pinned);<br>
+=C2=A0 =C2=A0 =C2=A0// Save original value.<br>
+-=C2=A0 =C2=A0 Move(tmp, src, type.value_type());<br>
++=C2=A0 =C2=A0 Move(tmp, src, type.value_type().kind());<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0src =3D tmp;<br>
+=C2=A0 =C2=A0 =C2=A0pinned.set(tmp);<br>
+--<br>
+2.34.1<br>
diff --git a/recipes-devtools/nodejs/nodejs-18.17.1/0001-mips-Use-32bit-cas=
t-for-operand-on-mips32.patch b/recipes-devtools/nodejs/nodejs-18.17.1/0001=
-mips-Use-32bit-cast-for-operand-on-mips32.patch<br>
new file mode 100644<br>
index 0000000..a0242d8<br>
--- /dev/null<br>
+++ b/recipes-devtools/nodejs/nodejs-18.17.1/0001-mips-Use-32bit-cast-for-o=
perand-on-mips32.patch<br>
@@ -0,0 +1,34 @@<br>
+From e65dde8db17da5acddeef7eb9316199c4e5e0811 Mon Sep 17 00:00:00 2001<br>
+From: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank"=
>raj.khem@gmail.com</a>&gt;<br>
+Date: Tue, 19 Apr 2022 12:40:25 -0700<br>
+Subject: [PATCH] mips: Use 32bit cast for operand on mips32<br>
+<br>
+Fixes<br>
+deps/v8/src/compiler/backend/mips/code-generator-mips.cc: In member functi=
on &#39;void v8::internal::compiler::CodeGenerator::AssembleReturn(v8::inte=
rnal::compiler::InstructionOperand*)&#39;:<br>
+../deps/v8/src/compiler/backend/mips/code-generator-mips.cc:4233:48: error=
: call of overloaded &#39;Operand(int64_t)&#39; is ambiguous<br>
+ 4233 |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Opera=
nd(static_cast&lt;int64_t&gt;(0)));<br>
+=C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^<br>
+<br>
+Upstream-Status: Pending<br>
+<br>
+Signed-off-by: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=
=3D"_blank">raj.khem@gmail.com</a>&gt;<br>
+---<br>
+ deps/v8/src/compiler/backend/mips/code-generator-mips.cc | 2 +-<br>
+ 1 file changed, 1 insertion(+), 1 deletion(-)<br>
+<br>
+diff --git a/deps/v8/src/compiler/backend/mips/code-generator-mips.cc b/de=
ps/v8/src/compiler/backend/mips/code-generator-mips.cc<br>
+index 2b8197e..b226140 100644<br>
+--- a/deps/v8/src/compiler/backend/mips/code-generator-mips.cc<br>
++++ b/deps/v8/src/compiler/backend/mips/code-generator-mips.cc<br>
+@@ -4230,7 +4230,7 @@ void CodeGenerator::AssembleReturn(InstructionOperan=
d* additional_pop_count) {<br>
+=C2=A0 =C2=A0 =C2=A0} else if (FLAG_debug_code) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0__ Assert(eq, AbortReason::kUnexpectedAdditiona=
lPopValue,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0g.ToRegister=
(additional_pop_count),<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Operand(static_ca=
st&lt;int64_t&gt;(0)));<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Operand(static_ca=
st&lt;int32_t&gt;(0)));<br>
+=C2=A0 =C2=A0 =C2=A0}<br>
+=C2=A0 =C2=A0}<br>
+=C2=A0 =C2=A0// Functions with JS linkage have at least one parameter (the=
 receiver).<br>
+-- <br>
+2.36.0<br>
+<br>
diff --git a/recipes-devtools/nodejs/nodejs-18.17.1/0001-ppc64-Do-not-use-m=
minimal-toc-with-clang.patch b/recipes-devtools/nodejs/nodejs-18.17.1/0001-=
ppc64-Do-not-use-mminimal-toc-with-clang.patch<br>
new file mode 100644<br>
index 0000000..4773f05<br>
--- /dev/null<br>
+++ b/recipes-devtools/nodejs/nodejs-18.17.1/0001-ppc64-Do-not-use-mminimal=
-toc-with-clang.patch<br>
@@ -0,0 +1,23 @@<br>
+From 0976af0f3b328436ea44a74a406f311adb2ab211 Mon Sep 17 00:00:00 2001<br>
+From: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank"=
>raj.khem@gmail.com</a>&gt;<br>
+Date: Tue, 15 Jun 2021 19:01:31 -0700<br>
+Subject: [PATCH] ppc64: Do not use -mminimal-toc with clang<br>
+<br>
+clang does not support this option<br>
+<br>
+Signed-off-by: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=
=3D"_blank">raj.khem@gmail.com</a>&gt;<br>
+---<br>
+ common.gypi | 2 +-<br>
+ 1 file changed, 1 insertion(+), 1 deletion(-)<br>
+<br>
+--- a/common.gypi<br>
++++ b/common.gypi<br>
+@@ -417,7 +417,7 @@<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;ldflags&#39;: [ &#39;=
-m32&#39; ],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[ &#39;target_arch=3D=3D&quot;ppc=
64&quot; and OS!=3D&quot;aix&quot;&#39;, {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;cflags&#39;: [ &#39;-m64&#=
39;, &#39;-mminimal-toc&#39; ],<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;cflags&#39;: [ &#39;-m64&#=
39; ],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;ldflags&#39;: [ &#39;=
-m64&#39; ],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[ &#39;target_arch=3D=3D&quot;s39=
0x&quot;&#39;, {<br>
diff --git a/recipes-devtools/nodejs/nodejs-18.17.1/0004-v8-don-t-override-=
ARM-CFLAGS.patch b/recipes-devtools/nodejs/nodejs-18.17.1/0004-v8-don-t-ove=
rride-ARM-CFLAGS.patch<br>
new file mode 100644<br>
index 0000000..97ed972<br>
--- /dev/null<br>
+++ b/recipes-devtools/nodejs/nodejs-18.17.1/0004-v8-don-t-override-ARM-CFL=
AGS.patch<br>
@@ -0,0 +1,102 @@<br>
+From 47ee5cc5501289205d3e8e9f27ea9daf18cebac1 Mon Sep 17 00:00:00 2001<br>
+From: =3D?UTF-8?q?Andr=3DC3=3DA9=3D20Draszik?=3D &lt;<a href=3D"mailto:git=
@andred.net" target=3D"_blank">git@andred.net</a>&gt;<br>
+Date: Sat, 9 Nov 2019 14:45:30 +0000<br>
+Subject: [PATCH] v8: don&#39;t override ARM CFLAGS<br>
+MIME-Version: 1.0<br>
+Content-Type: text/plain; charset=3DUTF-8<br>
+Content-Transfer-Encoding: 8bit<br>
+<br>
+This overrides yocto-provided build flags with its own, e.g we get<br>
+=C2=A0 =C2=A0 arm-poky-linux-musleabi-g++=C2=A0 -mthumb -mfpu=3Dneon -mflo=
at-abi=3Dhard -mcpu=3Dcortex-a7 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0... \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -march=3Darmv7-a -mfpu=3Dneon=
 -mfloat-abi=3Dhard -marm<br>
+<br>
+Causing the latter to override the former, and compiler warnings:<br>
+=C2=A0 =C2=A0 cc1plus: warning: switch &#39;-mcpu=3Dcortex-a7&#39; conflic=
ts with &#39;-march=3Darmv7-a&#39; switch<br>
+<br>
+Patch this out, so that yocto-provided flags take precedence.<br>
+Note that in reality the same should probably be done for all the other<br=
>
+supported architectures, too.<br>
+<br>
+Note that this also switches to Thumb(2) mode (in my case). No obvious<br>
+problems have been noted during compilation or runtime.<br>
+<br>
+Upstream-Status: Inappropriate [oe-specific]<br>
+Signed-off-by: Andr=C3=A9 Draszik &lt;<a href=3D"mailto:git@andred.net" ta=
rget=3D"_blank">git@andred.net</a>&gt;<br>
+---<br>
+ tools/v8_gypfiles/toolchain.gypi | 52 ++------------------------------<br=
>
+ 1 file changed, 2 insertions(+), 50 deletions(-)<br>
+<br>
+diff --git a/tools/v8_gypfiles/toolchain.gypi b/tools/v8_gypfiles/toolchai=
n.gypi<br>
+index 264b3e478e..0b41848145 100644<br>
+--- a/tools/v8_gypfiles/toolchain.gypi<br>
++++ b/tools/v8_gypfiles/toolchain.gypi<br>
+@@ -211,31 +211,7 @@<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;target_conditions&#39;: [<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[&#39;_toolset=3D=3D&quot;host&qu=
ot;&#39;, {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;conditions&#39;: [<br=
>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [&#39;v8_target_arch=3D=
=3Dhost_arch&#39;, {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Host built with=
 an Arm CXX compiler.<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;conditions&#=
39;: [<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [ &#39;arm=
_version=3D=3D7&#39;, {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#3=
9;cflags&#39;: [&#39;-march=3Darmv7-a&#39;,],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [ &#39;arm=
_version=3D=3D7 or arm_version=3D=3D&quot;default&quot;&#39;, {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#3=
9;conditions&#39;: [<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 [ &#39;arm_fpu!=3D&quot;default&quot;&#39;, {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &#39;cflags&#39;: [&#39;-mfpu=3D&lt;(arm_fpu)&#39;,],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 }],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ],<=
br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [ &#39;arm=
_float_abi!=3D&quot;default&quot;&#39;, {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#3=
9;cflags&#39;: [&#39;-mfloat-abi=3D&lt;(arm_float_abi)&#39;,],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [ &#39;arm=
_thumb=3D=3D1&#39;, {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#3=
9;cflags&#39;: [&#39;-mthumb&#39;,],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [ &#39;arm=
_thumb=3D=3D0&#39;, {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#3=
9;cflags&#39;: [&#39;-marm&#39;,],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }, {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # &#39;v8_target_=
arch!=3Dhost_arch&#39;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [&#39;v8_target_arch!=3D=
host_arch&#39;, {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Host not b=
uilt with an Arm CXX compiler (simulator build).<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;conditi=
ons&#39;: [<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[ &#3=
9;arm_float_abi=3D=3D&quot;hard&quot;&#39;, {<br>
+@@ -254,31 +230,7 @@<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}],=C2=A0 # _toolset=3D=3D&quot;h=
ost&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[&#39;_toolset=3D=3D&quot;target&=
quot;&#39;, {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;conditions&#39;: [<br=
>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [&#39;v8_target_arch=3D=
=3Dtarget_arch&#39;, {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Target built wi=
th an Arm CXX compiler.<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;conditions&#=
39;: [<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [ &#39;arm=
_version=3D=3D7&#39;, {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#3=
9;cflags&#39;: [&#39;-march=3Darmv7-a&#39;,],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [ &#39;arm=
_version=3D=3D7 or arm_version=3D=3D&quot;default&quot;&#39;, {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#3=
9;conditions&#39;: [<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 [ &#39;arm_fpu!=3D&quot;default&quot;&#39;, {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &#39;cflags&#39;: [&#39;-mfpu=3D&lt;(arm_fpu)&#39;,],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 }],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ],<=
br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [ &#39;arm=
_float_abi!=3D&quot;default&quot;&#39;, {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#3=
9;cflags&#39;: [&#39;-mfloat-abi=3D&lt;(arm_float_abi)&#39;,],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [ &#39;arm=
_thumb=3D=3D1&#39;, {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#3=
9;cflags&#39;: [&#39;-mthumb&#39;,],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [ &#39;arm=
_thumb=3D=3D0&#39;, {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#3=
9;cflags&#39;: [&#39;-marm&#39;,],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }, {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # &#39;v8_target_=
arch!=3Dtarget_arch&#39;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [&#39;v8_target_arch!=3D=
target_arch&#39;, {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Target not=
 built with an Arm CXX compiler (simulator build).<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;conditi=
ons&#39;: [<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[ &#3=
9;arm_float_abi=3D=3D&quot;hard&quot;&#39;, {<br>
+-- <br>
+2.20.1<br>
+<br>
diff --git a/recipes-devtools/nodejs/nodejs-18.17.1/big-endian.patch b/reci=
pes-devtools/nodejs/nodejs-18.17.1/big-endian.patch<br>
new file mode 100644<br>
index 0000000..5293818<br>
--- /dev/null<br>
+++ b/recipes-devtools/nodejs/nodejs-18.17.1/big-endian.patch<br>
@@ -0,0 +1,18 @@<br>
+<br>
+<a href=3D"https://github.com/v8/v8/commit/878ccb33bd3cf0e6dc018ff8d15843f=
585ac07be" rel=3D"noreferrer" target=3D"_blank">https://github.com/v8/v8/co=
mmit/878ccb33bd3cf0e6dc018ff8d15843f585ac07be</a><br>
+<br>
+did some automated cleanups but it missed big-endian code.<br>
+<br>
+Upstream-Status: Pending<br>
+Signed-off-by: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=
=3D"_blank">raj.khem@gmail.com</a>&gt;<br>
+--- a/deps/v8/src/runtime/runtime-utils.h<br>
++++ b/deps/v8/src/runtime/runtime-utils.h<br>
+@@ -126,7 +126,7 @@ static inline ObjectPair MakePair(Object<br>
+ #if defined(V8_TARGET_LITTLE_ENDIAN)<br>
+=C2=A0 =C2=A0return x.ptr() | (static_cast&lt;ObjectPair&gt;(y.ptr()) &lt;=
&lt; 32);<br>
+ #elif defined(V8_TARGET_BIG_ENDIAN)<br>
+-=C2=A0 return y-&gt;ptr() | (static_cast&lt;ObjectPair&gt;(x-&gt;ptr()) &=
lt;&lt; 32);<br>
++=C2=A0 return y.ptr() | (static_cast&lt;ObjectPair&gt;(x.ptr()) &lt;&lt; =
32);<br>
+ #else<br>
+ #error Unknown endianness<br>
+ #endif<br>
diff --git a/recipes-devtools/nodejs/nodejs-18.17.1/libatomic.patch b/recip=
es-devtools/nodejs/nodejs-18.17.1/libatomic.patch<br>
new file mode 100644<br>
index 0000000..cb02373<br>
--- /dev/null<br>
+++ b/recipes-devtools/nodejs/nodejs-18.17.1/libatomic.patch<br>
@@ -0,0 +1,21 @@<br>
+Link mksnapshot with libatomic on x86<br>
+<br>
+Clang-12 on x86 emits atomic builtins<br>
+<br>
+Fixes<br>
+| module-compiler.cc:(.text._ZN2v88internal4wasm12_GLOBAL__N_123ExecuteCom=
pilationUnitsERKSt10shared_ptrINS2_22BackgroundCompileTokenEEPNS0_8Counters=
EiNS2_19CompileBaselineOnlyE+0x558): un<br>
+defined reference to `__atomic_load&#39;<br>
+<br>
+Upstream-Status: Pending<br>
+Signed-off-by: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=
=3D"_blank">raj.khem@gmail.com</a>&gt;<br>
+<br>
+--- a/tools/v8_gypfiles/v8.gyp<br>
++++ b/tools/v8_gypfiles/v8.gyp<br>
+@@ -1436,6 +1436,7 @@<br>
+=C2=A0 =C2=A0 =C2=A0{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;target_name&#39;: &#39;mksnapshot&#39;,<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;type&#39;: &#39;executable&#39;,<br>
++=C2=A0 =C2=A0 =C2=A0 &#39;libraries&#39;: [ &#39;-latomic&#39; ],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;dependencies&#39;: [<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;v8_base_without_compiler&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;v8_compiler_for_mksnapshot&#39;,<br=
>
diff --git a/recipes-devtools/nodejs/nodejs-18.17.1/mips-less-memory.patch =
b/recipes-devtools/nodejs/nodejs-18.17.1/mips-less-memory.patch<br>
new file mode 100644<br>
index 0000000..16776cb<br>
--- /dev/null<br>
+++ b/recipes-devtools/nodejs/nodejs-18.17.1/mips-less-memory.patch<br>
@@ -0,0 +1,37 @@<br>
+Description: mksnapshot uses too much memory on 32-bit mipsel<br>
+Author: J=C3=A9r=C3=A9my Lal &lt;<a href=3D"mailto:kapouer@melix.org" targ=
et=3D"_blank">kapouer@melix.org</a>&gt;<br>
+Last-Update: 2020-06-03<br>
+Forwarded: <a href=3D"https://bugs.chromium.org/p/v8/issues/detail?id=3D10=
586" rel=3D"noreferrer" target=3D"_blank">https://bugs.chromium.org/p/v8/is=
sues/detail?id=3D10586</a><br>
+<br>
+This ensures that we reserve 500M instead of 2G range for codegen<br>
+ensures that qemu-mips can allocate such large ranges<br>
+<br>
+Upstream-Status: Inappropriate [embedded specific]<br>
+<br>
+Imported from debian <a href=3D"https://salsa.debian.org/js-team/nodejs/-/=
blob/master-12.x/debian/patches/mips-less-memory.patch" rel=3D"noreferrer" =
target=3D"_blank">https://salsa.debian.org/js-team/nodejs/-/blob/master-12.=
x/debian/patches/mips-less-memory.patch</a><br>
+<a href=3D"https://buildd.debian.org/status/fetch.php?pkg=3Dnodejs&amp;arc=
h=3Dmipsel&amp;ver=3D12.17.0~dfsg-2&amp;stamp=3D1591050388&amp;raw=3D0" rel=
=3D"noreferrer" target=3D"_blank">https://buildd.debian.org/status/fetch.ph=
p?pkg=3Dnodejs&amp;arch=3Dmipsel&amp;ver=3D12.17.0~dfsg-2&amp;stamp=3D15910=
50388&amp;raw=3D0</a><br>
+<br>
+Signed-off-by: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=
=3D"_blank">raj.khem@gmail.com</a>&gt;<br>
+<br>
+--- a/deps/v8/src/common/globals.h<br>
++++ b/deps/v8/src/common/globals.h<br>
+@@ -224,7 +224,7 @@ constexpr size_t kMinimumCodeRangeSize =3D<br>
+ constexpr size_t kMinExpectedOSPageSize =3D 64 * KB;=C2=A0 // OS page on =
PPC Linux<br>
+ #elif V8_TARGET_ARCH_MIPS<br>
+ constexpr bool kPlatformRequiresCodeRange =3D false;<br>
+-constexpr size_t kMaximalCodeRangeSize =3D 2048LL * MB;<br>
++constexpr size_t kMaximalCodeRangeSize =3D 512 * MB;<br>
+ constexpr size_t kMinimumCodeRangeSize =3D 0 * MB;<br>
+ constexpr size_t kMinExpectedOSPageSize =3D 4 * KB;=C2=A0 // OS page.<br>
+ #else<br>
+--- a/deps/v8/src/codegen/mips/constants-mips.h<br>
++++ b/deps/v8/src/codegen/mips/constants-mips.h<br>
+@@ -140,7 +140,7 @@ const uint32_t kLeastSignificantByteInIn<br>
+ namespace v8 {<br>
+ namespace internal {<br>
+ <br>
+-constexpr size_t kMaxPCRelativeCodeRangeInMB =3D 4096;<br>
++constexpr size_t kMaxPCRelativeCodeRangeInMB =3D 1024;<br>
+ <br>
+ // ----------------------------------------------------------------------=
-------<br>
+ // Registers and FPURegisters.<br>
diff --git a/recipes-devtools/nodejs/nodejs-18.17.1/run-ptest b/recipes-dev=
tools/nodejs/nodejs-18.17.1/run-ptest<br>
new file mode 100755<br>
index 0000000..07a8f2a<br>
--- /dev/null<br>
+++ b/recipes-devtools/nodejs/nodejs-18.17.1/run-ptest<br>
@@ -0,0 +1,3 @@<br>
+#!/bin/sh<br>
+<br>
+./cctest<br>
diff --git a/recipes-devtools/nodejs/nodejs-18.17.1/system-c-ares.patch b/r=
ecipes-devtools/nodejs/nodejs-18.17.1/system-c-ares.patch<br>
new file mode 100644<br>
index 0000000..141889a<br>
--- /dev/null<br>
+++ b/recipes-devtools/nodejs/nodejs-18.17.1/system-c-ares.patch<br>
@@ -0,0 +1,24 @@<br>
+keep nodejs compatible with c-ares 1.17.1<br>
+<br>
+Upstream-Status: Inappropriate [c-ares specific]<br>
+Signed-off-by: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=
=3D"_blank">raj.khem@gmail.com</a>&gt;<br>
+<br>
+--- a/src/cares_wrap.h<br>
++++ b/src/cares_wrap.h<br>
+@@ -22,7 +22,15 @@<br>
+ # include &lt;netdb.h&gt;<br>
+ #endif=C2=A0 // __POSIX__<br>
+ <br>
+-# include &lt;ares_nameser.h&gt;<br>
++#if defined(__ANDROID__) || \<br>
++=C2=A0 =C2=A0 defined(__MINGW32__) || \<br>
++=C2=A0 =C2=A0 defined(__OpenBSD__) || \<br>
++=C2=A0 =C2=A0 defined(_MSC_VER)<br>
++<br>
++# include &lt;nameser.h&gt;<br>
++#else<br>
++# include &lt;arpa/nameser.h&gt;<br>
++#endif<br>
+ <br>
+ namespace node {<br>
+ namespace cares_wrap {<br>
diff --git a/recipes-devtools/nodejs/nodejs-20.8.1/0001-Disable-running-gyp=
-files-for-bundled-deps.patch b/recipes-devtools/nodejs/nodejs-20.8.1/0001-=
Disable-running-gyp-files-for-bundled-deps.patch<br>
new file mode 100644<br>
index 0000000..12f6cd8<br>
--- /dev/null<br>
+++ b/recipes-devtools/nodejs/nodejs-20.8.1/0001-Disable-running-gyp-files-=
for-bundled-deps.patch<br>
@@ -0,0 +1,46 @@<br>
+From 7d94bfe53beeb2d25eb5f2ff6b1d509df7e6ab80 Mon Sep 17 00:00:00 2001<br>
+From: Zuzana Svetlikova &lt;<a href=3D"mailto:zsvetlik@redhat.com" target=
=3D"_blank">zsvetlik@redhat.com</a>&gt;<br>
+Date: Thu, 27 Apr 2017 14:25:42 +0200<br>
+Subject: [PATCH] Disable running gyp on shared deps<br>
+<br>
+Upstream-Status: Inappropriate [embedded specific]<br>
+<br>
+Probably imported from:<br>
+<a href=3D"https://src.fedoraproject.org/rpms/nodejs/c/41af04f2a3c050fb446=
28e91ac65fd225b927acb?branch=3D22609d8c1bfeaa21fe0057645af20b3a2ccc7f53" re=
l=3D"noreferrer" target=3D"_blank">https://src.fedoraproject.org/rpms/nodej=
s/c/41af04f2a3c050fb44628e91ac65fd225b927acb?branch=3D22609d8c1bfeaa21fe005=
7645af20b3a2ccc7f53</a><br>
+which is probably based on dont-run-gyp-files-for-bundled-deps.patch added=
 in:<br>
+<a href=3D"https://github.com/alpinelinux/aports/commit/6662eb3199902e8451=
fb20dce82554ad96f796bb" rel=3D"noreferrer" target=3D"_blank">https://github=
.com/alpinelinux/aports/commit/6662eb3199902e8451fb20dce82554ad96f796bb</a>=
<br>
+<br>
+We also explicitly prune some dependencies from source in the bitbake reci=
pe:<br>
+<br>
+python prune_sources() {<br>
+=C2=A0 =C2=A0 import shutil<br>
+<br>
+=C2=A0 =C2=A0 shutil.rmtree(d.getVar(&#39;S&#39;) + &#39;/deps/openssl&#39=
;)<br>
+=C2=A0 =C2=A0 if &#39;ares&#39; in d.getVar(&#39;PACKAGECONFIG&#39;):<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 shutil.rmtree(d.getVar(&#39;S&#39;) + &#39;/de=
ps/cares&#39;)<br>
+=C2=A0 =C2=A0 if &#39;brotli&#39; in d.getVar(&#39;PACKAGECONFIG&#39;):<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 shutil.rmtree(d.getVar(&#39;S&#39;) + &#39;/de=
ps/brotli&#39;)<br>
+=C2=A0 =C2=A0 if &#39;libuv&#39; in d.getVar(&#39;PACKAGECONFIG&#39;):<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 shutil.rmtree(d.getVar(&#39;S&#39;) + &#39;/de=
ps/uv&#39;)<br>
+=C2=A0 =C2=A0 if &#39;nghttp2&#39; in d.getVar(&#39;PACKAGECONFIG&#39;):<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 shutil.rmtree(d.getVar(&#39;S&#39;) + &#39;/de=
ps/nghttp2&#39;)<br>
+=C2=A0 =C2=A0 if &#39;zlib&#39; in d.getVar(&#39;PACKAGECONFIG&#39;):<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 shutil.rmtree(d.getVar(&#39;S&#39;) + &#39;/de=
ps/zlib&#39;)<br>
+}<br>
+do_unpack[postfuncs] +=3D &quot;prune_sources&quot;<br>
+<br>
+---<br>
+ Makefile | 2 +-<br>
+ 1 file changed, 1 insertion(+), 1 deletion(-)<br>
+<br>
+--- a/Makefile<br>
++++ b/Makefile<br>
+@@ -169,7 +169,7 @@ with-code-cache test-code-cache:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0$(warning &#39;$@&#39; target is a noop)<br>
+ <br>
+ out/Makefile: config.gypi common.gypi node.gyp \<br>
+-=C2=A0 =C2=A0 =C2=A0 deps/uv/uv.gyp deps/llhttp/llhttp.gyp deps/zlib/zlib=
.gyp \<br>
++=C2=A0 =C2=A0 =C2=A0 deps/llhttp/llhttp.gyp \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0deps/simdutf/simdutf.gyp deps/ada/ada.gyp \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0tools/v8_gypfiles/toolchain.gypi tools/v8_gypfi=
les/features.gypi \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0tools/v8_gypfiles/inspector.gypi tools/v8_gypfi=
les/v8.gyp<br>
diff --git a/recipes-devtools/nodejs/nodejs-20.8.1/0001-Revert-io_uring-cha=
nges-from-libuv-1.46.0.patch b/recipes-devtools/nodejs/nodejs-20.8.1/0001-R=
evert-io_uring-changes-from-libuv-1.46.0.patch<br>
new file mode 100644<br>
index 0000000..d98463d<br>
--- /dev/null<br>
+++ b/recipes-devtools/nodejs/nodejs-20.8.1/0001-Revert-io_uring-changes-fr=
om-libuv-1.46.0.patch<br>
@@ -0,0 +1,3414 @@<br>
+From 937dfa70104b7401a7570a98cf6e0a534e250557 Mon Sep 17 00:00:00 2001<br>
+From: Martin Jansa &lt;<a href=3D"mailto:martin.jansa@gmail.com" target=3D=
"_blank">martin.jansa@gmail.com</a>&gt;<br>
+Date: Wed, 18 Oct 2023 22:43:55 +0200<br>
+Subject: [PATCH] Revert io_uring changes from libuv-1.46.0<br>
+<br>
+Included in nodejs-20.4.0 with the libuv upgrade to 1.46.0 in:<br>
+<a href=3D"https://github.com/nodejs/node/commit/6199e1946c9abd59bd71a6187=
0a4f6c85e100b18" rel=3D"noreferrer" target=3D"_blank">https://github.com/no=
dejs/node/commit/6199e1946c9abd59bd71a61870a4f6c85e100b18</a><br>
+<br>
+Revert &quot;linux: work around io_uring IORING_OP_CLOSE bug (#4059)&quot;=
<br>
+This reverts commit 1752791c9ea89dbf54e2a20a9d9f899119a2d179.<br>
+Revert &quot;linux: fs_read to use io_uring if iovcnt &gt; IOV_MAX (#4023)=
&quot;<br>
+This reverts commit e7b96331703e929e75d93c574573c9736e34b0c0.<br>
+Revert &quot;linux: add some more iouring backed fs ops (#4012)&quot;<br>
+This reverts commit 962b8e626ceaaf296eecab1d008e8b70dc6da5e7.<br>
+Revert &quot;android: disable io_uring support (#4016)&quot;<br>
+This reverts commit 281e6185cc9e77c582ff6ca9e4c00d57e6b90d95.<br>
+Revert &quot;unix,win: replace QUEUE with struct uv__queue (#4022)&quot;<b=
r>
+This reverts commit 1b01b786c0180d29f07dccbb98001a2b3148828a.<br>
+Revert &quot;fs: use WTF-8 on Windows (#2970)&quot;<br>
+This reverts commit 8f32a14afaaa47514a7d28e1e069a8329e2dd939.<br>
+<br>
+Dropped deps/uv/docs deps/uv/test changes as these dirs aren&#39;t include=
d<br>
+in nodejs tarballs.<br>
+<br>
+Signed-off-by: Martin Jansa &lt;<a href=3D"mailto:martin.jansa@gmail.com" =
target=3D"_blank">martin.jansa@gmail.com</a>&gt;<br>
+---<br>
+Upstream-Status: Inappropriate [OE specific]<br>
+<br>
+ deps/uv/include/uv.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 10 +-<br>
+ deps/uv/include/uv/darwin.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 |=C2=A0 =C2=A06 +-<br>
+ deps/uv/include/uv/linux.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0|=C2=A0 =C2=A02 +-<br>
+ deps/uv/include/uv/threadpool.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0=
 =C2=A02 +-<br>
+ deps/uv/include/uv/unix.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 |=C2=A0 44 ++--<br>
+ deps/uv/include/uv/win.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0|=C2=A0 =C2=A04 +-<br>
+ deps/uv/src/queue.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 | 154 ++++++-----<br>
+ deps/uv/src/threadpool.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0|=C2=A0 72 +++---<br>
+ deps/uv/src/unix/aix.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0|=C2=A0 14 +-<br>
+ deps/uv/src/unix/async.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0|=C2=A0 52 ++--<br>
+ deps/uv/src/unix/core.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 |=C2=A0 53 ++--<br>
+ deps/uv/src/unix/fs.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 |=C2=A0 41 +--<br>
+ deps/uv/src/unix/fsevents.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 |=C2=A0 84 +++---<br>
+ deps/uv/src/unix/internal.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 |=C2=A0 11 -<br>
+ deps/uv/src/unix/kqueue.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 |=C2=A0 18 +-<br>
+ deps/uv/src/unix/linux.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0| 257 +++----------------<br>
+ deps/uv/src/unix/loop-watcher.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0=
 20 +-<br>
+ deps/uv/src/unix/loop.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 |=C2=A0 28 +-<br>
+ deps/uv/src/unix/os390-syscalls.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 24 +=
-<br>
+ deps/uv/src/unix/os390-syscalls.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=
=A02 +-<br>
+ deps/uv/src/unix/os390.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0|=C2=A0 14 +-<br>
+ deps/uv/src/unix/pipe.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 |=C2=A0 =C2=A02 +-<br>
+ deps/uv/src/unix/posix-poll.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=
=C2=A0 14 +-<br>
+ deps/uv/src/unix/process.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0|=C2=A0 38 +--<br>
+ deps/uv/src/unix/signal.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 |=C2=A0 =C2=A08 +-<br>
+ deps/uv/src/unix/stream.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 |=C2=A0 56 ++--<br>
+ deps/uv/src/unix/sunos.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0|=C2=A0 18 +-<br>
+ deps/uv/src/unix/tcp.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A04 +-<br>
+ deps/uv/src/unix/tty.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A02 +-<br>
+ deps/uv/src/unix/udp.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0|=C2=A0 76 +++---<br>
+ deps/uv/src/uv-common.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 |=C2=A0 28 +-<br>
+ deps/uv/src/uv-common.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 |=C2=A0 =C2=A03 +-<br>
+ deps/uv/src/win/core.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A06 +-<br>
+ deps/uv/src/win/fs.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0| 311 ++++++++---------------<br>
+ deps/uv/src/win/handle-inl.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0|=C2=A0 =C2=A02 +-<br>
+ deps/uv/src/win/pipe.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0|=C2=A0 26 +-<br>
+ deps/uv/src/win/tcp.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A04 +-<br>
+ deps/uv/src/win/udp.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A04 +-<br>
+ deps/uv/test/test-fs.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0|=C2=A0 53 ----<br>
+ deps/uv/test/test-list.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0|=C2=A0 =C2=A02 -<br>
+ deps/uv/test/test-queue-foreach-delete.c |=C2=A0 =C2=A05 +-<br>
+ deps/uv/test/test-threadpool-cancel.c=C2=A0 =C2=A0 |=C2=A0 =C2=A05 -<br>
+ 42 files changed, 625 insertions(+), 954 deletions(-)<br>
+<br>
+diff --git a/deps/uv/include/uv.h b/deps/uv/include/uv.h<br>
+index 02397dd0fdd..1af95289776 100644<br>
+--- a/deps/uv/include/uv.h<br>
++++ b/deps/uv/include/uv.h<br>
+@@ -59,12 +59,6 @@ extern &quot;C&quot; {<br>
+ #include &lt;stdio.h&gt;<br>
+ #include &lt;stdint.h&gt;<br>
+ <br>
+-/* Internal type, do not use. */<br>
+-struct uv__queue {<br>
+-=C2=A0 struct uv__queue* next;<br>
+-=C2=A0 struct uv__queue* prev;<br>
+-};<br>
+-<br>
+ #if defined(_WIN32)<br>
+ # include &quot;uv/win.h&quot;<br>
+ #else<br>
+@@ -466,7 +460,7 @@ struct uv_shutdown_s {<br>
+=C2=A0 =C2=A0uv_handle_type type;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 \<br>
+=C2=A0 =C2=A0/* private */=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0uv_close_cb close_cb;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0\<br>
+-=C2=A0 struct uv__queue handle_queue;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
++=C2=A0 void* handle_queue[2];=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \=
<br>
+=C2=A0 =C2=A0union {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0int fd;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0void* reserved[4];=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 \<br>
+@@ -1870,7 +1864,7 @@ struct uv_loop_s {<br>
+=C2=A0 =C2=A0void* data;<br>
+=C2=A0 =C2=A0/* Loop reference counting. */<br>
+=C2=A0 =C2=A0unsigned int active_handles;<br>
+-=C2=A0 struct uv__queue handle_queue;<br>
++=C2=A0 void* handle_queue[2];<br>
+=C2=A0 =C2=A0union {<br>
+=C2=A0 =C2=A0 =C2=A0void* unused;<br>
+=C2=A0 =C2=A0 =C2=A0unsigned int count;<br>
+diff --git a/deps/uv/include/uv/darwin.h b/deps/uv/include/uv/darwin.h<br>
+index 06962bfda80..d226415820b 100644<br>
+--- a/deps/uv/include/uv/darwin.h<br>
++++ b/deps/uv/include/uv/darwin.h<br>
+@@ -40,7 +40,7 @@<br>
+=C2=A0 =C2=A0void* cf_state;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0uv_mutex_t cf_mutex;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 \<br>
+=C2=A0 =C2=A0uv_sem_t cf_sem;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 \<br>
+-=C2=A0 struct uv__queue cf_signals;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
++=C2=A0 void* cf_signals[2];=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 \<br>
+ <br>
+ #define UV_PLATFORM_FS_EVENT_FIELDS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0uv__io_t event_watcher;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0\<br>
+@@ -48,8 +48,8 @@<br>
+=C2=A0 =C2=A0int realpath_len;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0int cf_flags;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0uv_async_t* cf_cb;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 \<br>
+-=C2=A0 struct uv__queue cf_events;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+-=C2=A0 struct uv__queue cf_member;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
++=C2=A0 void* cf_events[2];=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0\<br>
++=C2=A0 void* cf_member[2];=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0\<br>
+=C2=A0 =C2=A0int cf_error;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0uv_mutex_t cf_mutex;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 \<br>
+ <br>
+diff --git a/deps/uv/include/uv/linux.h b/deps/uv/include/uv/linux.h<br>
+index 9f22f8cf726..9b38405a190 100644<br>
+--- a/deps/uv/include/uv/linux.h<br>
++++ b/deps/uv/include/uv/linux.h<br>
+@@ -28,7 +28,7 @@<br>
+=C2=A0 =C2=A0int inotify_fd;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+ <br>
+ #define UV_PLATFORM_FS_EVENT_FIELDS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+-=C2=A0 struct uv__queue watchers;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
++=C2=A0 void* watchers[2];=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 \<br>
+=C2=A0 =C2=A0int wd;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+ <br>
+ #endif /* UV_LINUX_H */<br>
+diff --git a/deps/uv/include/uv/threadpool.h b/deps/uv/include/uv/threadpo=
ol.h<br>
+index 24ce916fda4..9708ebdd530 100644<br>
+--- a/deps/uv/include/uv/threadpool.h<br>
++++ b/deps/uv/include/uv/threadpool.h<br>
+@@ -31,7 +31,7 @@ struct uv__work {<br>
+=C2=A0 =C2=A0void (*work)(struct uv__work *w);<br>
+=C2=A0 =C2=A0void (*done)(struct uv__work *w, int status);<br>
+=C2=A0 =C2=A0struct uv_loop_s* loop;<br>
+-=C2=A0 struct uv__queue wq;<br>
++=C2=A0 void* wq[2];<br>
+ };<br>
+ <br>
+ #endif /* UV_THREADPOOL_H_ */<br>
+diff --git a/deps/uv/include/uv/unix.h b/deps/uv/include/uv/unix.h<br>
+index 09f88a56742..95447b8dd67 100644<br>
+--- a/deps/uv/include/uv/unix.h<br>
++++ b/deps/uv/include/uv/unix.h<br>
+@@ -92,8 +92,8 @@ typedef struct uv__io_s uv__io_t;<br>
+ <br>
+ struct uv__io_s {<br>
+=C2=A0 =C2=A0uv__io_cb cb;<br>
+-=C2=A0 struct uv__queue pending_queue;<br>
+-=C2=A0 struct uv__queue watcher_queue;<br>
++=C2=A0 void* pending_queue[2];<br>
++=C2=A0 void* watcher_queue[2];<br>
+=C2=A0 =C2=A0unsigned int pevents; /* Pending event mask i.e. mask at next=
 tick. */<br>
+=C2=A0 =C2=A0unsigned int events;=C2=A0 /* Current event mask. */<br>
+=C2=A0 =C2=A0int fd;<br>
+@@ -220,21 +220,21 @@ typedef struct {<br>
+ #define UV_LOOP_PRIVATE_FIELDS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0unsigned long flags;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 \<br>
+=C2=A0 =C2=A0int backend_fd;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+-=C2=A0 struct uv__queue pending_queue;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+-=C2=A0 struct uv__queue watcher_queue;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
++=C2=A0 void* pending_queue[2];=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<=
br>
++=C2=A0 void* watcher_queue[2];=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<=
br>
+=C2=A0 =C2=A0uv__io_t** watchers;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 \<br>
+=C2=A0 =C2=A0unsigned int nwatchers;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0\<br>
+=C2=A0 =C2=A0unsigned int nfds;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 \<br>
+-=C2=A0 struct uv__queue wq;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 \<br>
++=C2=A0 void* wq[2];=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0uv_mutex_t wq_mutex;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 \<br>
+=C2=A0 =C2=A0uv_async_t wq_async;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 \<br>
+=C2=A0 =C2=A0uv_rwlock_t cloexec_lock;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<=
br>
+=C2=A0 =C2=A0uv_handle_t* closing_handles;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+-=C2=A0 struct uv__queue process_handles;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+-=C2=A0 struct uv__queue prepare_handles;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+-=C2=A0 struct uv__queue check_handles;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+-=C2=A0 struct uv__queue idle_handles;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+-=C2=A0 struct uv__queue async_handles;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
++=C2=A0 void* process_handles[2];=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
++=C2=A0 void* prepare_handles[2];=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
++=C2=A0 void* check_handles[2];=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<=
br>
++=C2=A0 void* idle_handles[2];=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \=
<br>
++=C2=A0 void* async_handles[2];=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<=
br>
+=C2=A0 =C2=A0void (*async_unused)(void);=C2=A0 /* TODO(bnoordhuis) Remove =
in libuv v2. */=C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0uv__io_t async_io_watcher;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0int async_wfd;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+@@ -257,7 +257,7 @@ typedef struct {<br>
+ #define UV_PRIVATE_REQ_TYPES /* empty */<br>
+ <br>
+ #define UV_WRITE_PRIVATE_FIELDS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+-=C2=A0 struct uv__queue queue;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<=
br>
++=C2=A0 void* queue[2];=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0unsigned int write_index;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<=
br>
+=C2=A0 =C2=A0uv_buf_t* bufs;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0unsigned int nbufs;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0\<br>
+@@ -265,12 +265,12 @@ typedef struct {<br>
+=C2=A0 =C2=A0uv_buf_t bufsml[4];=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0\<br>
+ <br>
+ #define UV_CONNECT_PRIVATE_FIELDS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+-=C2=A0 struct uv__queue queue;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<=
br>
++=C2=A0 void* queue[2];=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0\<br>
+ <br>
+ #define UV_SHUTDOWN_PRIVATE_FIELDS /* empty */<br>
+ <br>
+ #define UV_UDP_SEND_PRIVATE_FIELDS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+-=C2=A0 struct uv__queue queue;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<=
br>
++=C2=A0 void* queue[2];=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0struct sockaddr_storage addr;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0unsigned int nbufs;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0uv_buf_t* bufs;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+@@ -286,8 +286,8 @@ typedef struct {<br>
+=C2=A0 =C2=A0uv_connect_t *connect_req;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0uv_shutdown_t *shutdown_req;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0uv__io_t io_watcher;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 \<br>
+-=C2=A0 struct uv__queue write_queue;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+-=C2=A0 struct uv__queue write_completed_queue;=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
++=C2=A0 void* write_queue[2];=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0\<br>
++=C2=A0 void* write_completed_queue[2];=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0uv_connection_cb connection_cb;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0int delayed_error;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0int accepted_fd;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 \<br>
+@@ -300,8 +300,8 @@ typedef struct {<br>
+=C2=A0 =C2=A0uv_alloc_cb alloc_cb;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0\<br>
+=C2=A0 =C2=A0uv_udp_recv_cb recv_cb;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0\<br>
+=C2=A0 =C2=A0uv__io_t io_watcher;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 \<br>
+-=C2=A0 struct uv__queue write_queue;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+-=C2=A0 struct uv__queue write_completed_queue;=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
++=C2=A0 void* write_queue[2];=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0\<br>
++=C2=A0 void* write_completed_queue[2];=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+ <br>
+ #define UV_PIPE_PRIVATE_FIELDS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0const char* pipe_fname; /* NULL or strdup&#39;ed */<br>
+@@ -311,19 +311,19 @@ typedef struct {<br>
+ <br>
+ #define UV_PREPARE_PRIVATE_FIELDS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0uv_prepare_cb prepare_cb;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<=
br>
+-=C2=A0 struct uv__queue queue;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<=
br>
++=C2=A0 void* queue[2];=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0\<br>
+ <br>
+ #define UV_CHECK_PRIVATE_FIELDS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0uv_check_cb check_cb;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0\<br>
+-=C2=A0 struct uv__queue queue;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<=
br>
++=C2=A0 void* queue[2];=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0\<br>
+ <br>
+ #define UV_IDLE_PRIVATE_FIELDS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0uv_idle_cb idle_cb;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0\<br>
+-=C2=A0 struct uv__queue queue;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<=
br>
++=C2=A0 void* queue[2];=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0\<br>
+ <br>
+ #define UV_ASYNC_PRIVATE_FIELDS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0uv_async_cb async_cb;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0\<br>
+-=C2=A0 struct uv__queue queue;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<=
br>
++=C2=A0 void* queue[2];=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0int pending;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+ <br>
+ #define UV_TIMER_PRIVATE_FIELDS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+@@ -352,7 +352,7 @@ typedef struct {<br>
+=C2=A0 =C2=A0int retcode;<br>
+ <br>
+ #define UV_PROCESS_PRIVATE_FIELDS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+-=C2=A0 struct uv__queue queue;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<=
br>
++=C2=A0 void* queue[2];=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0int status;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+ <br>
+ #define UV_FS_PRIVATE_FIELDS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+diff --git a/deps/uv/include/uv/win.h b/deps/uv/include/uv/win.h<br>
+index 6f8c47298e4..92a95fa15f1 100644<br>
+--- a/deps/uv/include/uv/win.h<br>
++++ b/deps/uv/include/uv/win.h<br>
+@@ -357,7 +357,7 @@ typedef struct {<br>
+=C2=A0 =C2=A0/* Counter to started timer */=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0uint64_t timer_counter;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0\<br>
+=C2=A0 =C2=A0/* Threadpool */=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 \<br>
+-=C2=A0 struct uv__queue wq;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 \<br>
++=C2=A0 void* wq[2];=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0uv_mutex_t wq_mutex;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 \<br>
+=C2=A0 =C2=A0uv_async_t wq_async;<br>
+ <br>
+@@ -486,7 +486,7 @@ typedef struct {<br>
+=C2=A0 =C2=A0 =C2=A0uint32_t payload_remaining;=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0uint64_t dummy; /* TODO: retained for ABI compat; remo=
ve this in v2.x. */ \<br>
+=C2=A0 =C2=A0} ipc_data_frame;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0\<br>
+-=C2=A0 struct uv__queue ipc_xfer_queue;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
++=C2=A0 void* ipc_xfer_queue[2];=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0int ipc_xfer_queue_length;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0uv_write_t* non_overlapped_writes_tail;=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0CRITICAL_SECTION readfile_thread_lock;=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+diff --git a/deps/uv/src/queue.h b/deps/uv/src/queue.h<br>
+index 5f8489e9bc5..ff3540a0a51 100644<br>
+--- a/deps/uv/src/queue.h<br>
++++ b/deps/uv/src/queue.h<br>
+@@ -18,73 +18,91 @@<br>
+ <br>
+ #include &lt;stddef.h&gt;<br>
+ <br>
+-#define uv__queue_data(pointer, type, field)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 \<br>
+-=C2=A0 ((type*) ((char*) (pointer) - offsetof(type, field)))<br>
+-<br>
+-#define uv__queue_foreach(q, h)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+-=C2=A0 for ((q) =3D (h)-&gt;next; (q) !=3D (h); (q) =3D (q)-&gt;next)<br>
+-<br>
+-static inline void uv__queue_init(struct uv__queue* q) {<br>
+-=C2=A0 q-&gt;next =3D q;<br>
+-=C2=A0 q-&gt;prev =3D q;<br>
+-}<br>
+-<br>
+-static inline int uv__queue_empty(const struct uv__queue* q) {<br>
+-=C2=A0 return q =3D=3D q-&gt;next;<br>
+-}<br>
+-<br>
+-static inline struct uv__queue* uv__queue_head(const struct uv__queue* q)=
 {<br>
+-=C2=A0 return q-&gt;next;<br>
+-}<br>
+-<br>
+-static inline struct uv__queue* uv__queue_next(const struct uv__queue* q)=
 {<br>
+-=C2=A0 return q-&gt;next;<br>
+-}<br>
+-<br>
+-static inline void uv__queue_add(struct uv__queue* h, struct uv__queue* n=
) {<br>
+-=C2=A0 h-&gt;prev-&gt;next =3D n-&gt;next;<br>
+-=C2=A0 n-&gt;next-&gt;prev =3D h-&gt;prev;<br>
+-=C2=A0 h-&gt;prev =3D n-&gt;prev;<br>
+-=C2=A0 h-&gt;prev-&gt;next =3D h;<br>
+-}<br>
+-<br>
+-static inline void uv__queue_split(struct uv__queue* h,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct uv__queue* q,<br=
>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct uv__queue* n) {<=
br>
+-=C2=A0 n-&gt;prev =3D h-&gt;prev;<br>
+-=C2=A0 n-&gt;prev-&gt;next =3D n;<br>
+-=C2=A0 n-&gt;next =3D q;<br>
+-=C2=A0 h-&gt;prev =3D q-&gt;prev;<br>
+-=C2=A0 h-&gt;prev-&gt;next =3D h;<br>
+-=C2=A0 q-&gt;prev =3D n;<br>
+-}<br>
+-<br>
+-static inline void uv__queue_move(struct uv__queue* h, struct uv__queue* =
n) {<br>
+-=C2=A0 if (uv__queue_empty(h))<br>
+-=C2=A0 =C2=A0 uv__queue_init(n);<br>
+-=C2=A0 else<br>
+-=C2=A0 =C2=A0 uv__queue_split(h, h-&gt;next, n);<br>
+-}<br>
+-<br>
+-static inline void uv__queue_insert_head(struct uv__queue* h,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0st=
ruct uv__queue* q) {<br>
+-=C2=A0 q-&gt;next =3D h-&gt;next;<br>
+-=C2=A0 q-&gt;prev =3D h;<br>
+-=C2=A0 q-&gt;next-&gt;prev =3D q;<br>
+-=C2=A0 h-&gt;next =3D q;<br>
+-}<br>
+-<br>
+-static inline void uv__queue_insert_tail(struct uv__queue* h,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0st=
ruct uv__queue* q) {<br>
+-=C2=A0 q-&gt;next =3D h;<br>
+-=C2=A0 q-&gt;prev =3D h-&gt;prev;<br>
+-=C2=A0 q-&gt;prev-&gt;next =3D q;<br>
+-=C2=A0 h-&gt;prev =3D q;<br>
+-}<br>
+-<br>
+-static inline void uv__queue_remove(struct uv__queue* q) {<br>
+-=C2=A0 q-&gt;prev-&gt;next =3D q-&gt;next;<br>
+-=C2=A0 q-&gt;next-&gt;prev =3D q-&gt;prev;<br>
+-}<br>
++typedef void *QUEUE[2];<br>
++<br>
++/* Private macros. */<br>
++#define QUEUE_NEXT(q)=C2=A0 =C2=A0 =C2=A0 =C2=A0(*(QUEUE **) &amp;((*(q))=
[0]))<br>
++#define QUEUE_PREV(q)=C2=A0 =C2=A0 =C2=A0 =C2=A0(*(QUEUE **) &amp;((*(q))=
[1]))<br>
++#define QUEUE_PREV_NEXT(q)=C2=A0 (QUEUE_NEXT(QUEUE_PREV(q)))<br>
++#define QUEUE_NEXT_PREV(q)=C2=A0 (QUEUE_PREV(QUEUE_NEXT(q)))<br>
++<br>
++/* Public macros. */<br>
++#define QUEUE_DATA(ptr, type, field)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
++=C2=A0 ((type *) ((char *) (ptr) - offsetof(type, field)))<br>
++<br>
++/* Important note: mutating the list while QUEUE_FOREACH is<br>
++ * iterating over its elements results in undefined behavior.<br>
++ */<br>
++#define QUEUE_FOREACH(q, h)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
++=C2=A0 for ((q) =3D QUEUE_NEXT(h); (q) !=3D (h); (q) =3D QUEUE_NEXT(q))<b=
r>
++<br>
++#define QUEUE_EMPTY(q)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \=
<br>
++=C2=A0 ((const QUEUE *) (q) =3D=3D (const QUEUE *) QUEUE_NEXT(q))<br>
++<br>
++#define QUEUE_HEAD(q)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0\<br>
++=C2=A0 (QUEUE_NEXT(q))<br>
++<br>
++#define QUEUE_INIT(q)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0\<br>
++=C2=A0 do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
++=C2=A0 =C2=A0 QUEUE_NEXT(q) =3D (q);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 \<br>
++=C2=A0 =C2=A0 QUEUE_PREV(q) =3D (q);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 \<br>
++=C2=A0 }=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
++=C2=A0 while (0)<br>
++<br>
++#define QUEUE_ADD(h, n)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<=
br>
++=C2=A0 do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
++=C2=A0 =C2=A0 QUEUE_PREV_NEXT(h) =3D QUEUE_NEXT(n);=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
++=C2=A0 =C2=A0 QUEUE_NEXT_PREV(n) =3D QUEUE_PREV(h);=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
++=C2=A0 =C2=A0 QUEUE_PREV(h) =3D QUEUE_PREV(n);=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
++=C2=A0 =C2=A0 QUEUE_PREV_NEXT(h) =3D (h);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
++=C2=A0 }=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
++=C2=A0 while (0)<br>
++<br>
++#define QUEUE_SPLIT(h, q, n)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
++=C2=A0 do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
++=C2=A0 =C2=A0 QUEUE_PREV(n) =3D QUEUE_PREV(h);=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
++=C2=A0 =C2=A0 QUEUE_PREV_NEXT(n) =3D (n);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
++=C2=A0 =C2=A0 QUEUE_NEXT(n) =3D (q);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 \<br>
++=C2=A0 =C2=A0 QUEUE_PREV(h) =3D QUEUE_PREV(q);=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
++=C2=A0 =C2=A0 QUEUE_PREV_NEXT(h) =3D (h);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
++=C2=A0 =C2=A0 QUEUE_PREV(q) =3D (n);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 \<br>
++=C2=A0 }=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
++=C2=A0 while (0)<br>
++<br>
++#define QUEUE_MOVE(h, n)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
++=C2=A0 do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
++=C2=A0 =C2=A0 if (QUEUE_EMPTY(h))=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0\<br>
++=C2=A0 =C2=A0 =C2=A0 QUEUE_INIT(n);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 \<br>
++=C2=A0 =C2=A0 else {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
++=C2=A0 =C2=A0 =C2=A0 QUEUE* q =3D QUEUE_HEAD(h);=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
++=C2=A0 =C2=A0 =C2=A0 QUEUE_SPLIT(h, q, n);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0\<br>
++=C2=A0 =C2=A0 }=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
++=C2=A0 }=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
++=C2=A0 while (0)<br>
++<br>
++#define QUEUE_INSERT_HEAD(h, q)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
++=C2=A0 do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
++=C2=A0 =C2=A0 QUEUE_NEXT(q) =3D QUEUE_NEXT(h);=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
++=C2=A0 =C2=A0 QUEUE_PREV(q) =3D (h);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 \<br>
++=C2=A0 =C2=A0 QUEUE_NEXT_PREV(q) =3D (q);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
++=C2=A0 =C2=A0 QUEUE_NEXT(h) =3D (q);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 \<br>
++=C2=A0 }=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
++=C2=A0 while (0)<br>
++<br>
++#define QUEUE_INSERT_TAIL(h, q)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
++=C2=A0 do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
++=C2=A0 =C2=A0 QUEUE_NEXT(q) =3D (h);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 \<br>
++=C2=A0 =C2=A0 QUEUE_PREV(q) =3D QUEUE_PREV(h);=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
++=C2=A0 =C2=A0 QUEUE_PREV_NEXT(q) =3D (q);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
++=C2=A0 =C2=A0 QUEUE_PREV(h) =3D (q);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 \<br>
++=C2=A0 }=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
++=C2=A0 while (0)<br>
++<br>
++#define QUEUE_REMOVE(q)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<=
br>
++=C2=A0 do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
++=C2=A0 =C2=A0 QUEUE_PREV_NEXT(q) =3D QUEUE_NEXT(q);=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
++=C2=A0 =C2=A0 QUEUE_NEXT_PREV(q) =3D QUEUE_PREV(q);=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
++=C2=A0 }=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
++=C2=A0 while (0)<br>
+ <br>
+ #endif /* QUEUE_H_ */<br>
+diff --git a/deps/uv/src/threadpool.c b/deps/uv/src/threadpool.c<br>
+index dbef67f2f10..51962bf0021 100644<br>
+--- a/deps/uv/src/threadpool.c<br>
++++ b/deps/uv/src/threadpool.c<br>
+@@ -37,10 +37,10 @@ static unsigned int slow_io_work_running;<br>
+ static unsigned int nthreads;<br>
+ static uv_thread_t* threads;<br>
+ static uv_thread_t default_threads[4];<br>
+-static struct uv__queue exit_message;<br>
+-static struct uv__queue wq;<br>
+-static struct uv__queue run_slow_work_message;<br>
+-static struct uv__queue slow_io_pending_wq;<br>
++static QUEUE exit_message;<br>
++static QUEUE wq;<br>
++static QUEUE run_slow_work_message;<br>
++static QUEUE slow_io_pending_wq;<br>
+ <br>
+ static unsigned int slow_work_thread_threshold(void) {<br>
+=C2=A0 =C2=A0return (nthreads + 1) / 2;<br>
+@@ -56,7 +56,7 @@ static void uv__cancelled(struct uv__work* w) {<br>
+=C2=A0 */<br>
+ static void worker(void* arg) {<br>
+=C2=A0 =C2=A0struct uv__work* w;<br>
+-=C2=A0 struct uv__queue* q;<br>
++=C2=A0 QUEUE* q;<br>
+=C2=A0 =C2=A0int is_slow_work;<br>
+ <br>
+=C2=A0 =C2=A0uv_sem_post((uv_sem_t*) arg);<br>
+@@ -68,49 +68,49 @@ static void worker(void* arg) {<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0/* Keep waiting while either no work is present or onl=
y slow I/O<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 and we&#39;re at the threshold for that. */<br=
>
+-=C2=A0 =C2=A0 while (uv__queue_empty(&amp;wq) ||<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(uv__queue_head(&amp;wq) =3D=3D =
&amp;run_slow_work_message &amp;&amp;<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uv__queue_next(&amp;run_slow_wo=
rk_message) =3D=3D &amp;wq &amp;&amp;<br>
++=C2=A0 =C2=A0 while (QUEUE_EMPTY(&amp;wq) ||<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(QUEUE_HEAD(&amp;wq) =3D=3D &amp=
;run_slow_work_message &amp;&amp;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 QUEUE_NEXT(&amp;run_slow_work_m=
essage) =3D=3D &amp;wq &amp;&amp;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0slow_io_work_running &gt;=
=3D slow_work_thread_threshold())) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0idle_threads +=3D 1;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0uv_cond_wait(&amp;cond, &amp;mutex);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0idle_threads -=3D 1;<br>
+=C2=A0 =C2=A0 =C2=A0}<br>
+ <br>
+-=C2=A0 =C2=A0 q =3D uv__queue_head(&amp;wq);<br>
++=C2=A0 =C2=A0 q =3D QUEUE_HEAD(&amp;wq);<br>
+=C2=A0 =C2=A0 =C2=A0if (q =3D=3D &amp;exit_message) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0uv_cond_signal(&amp;cond);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0uv_mutex_unlock(&amp;mutex);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
+=C2=A0 =C2=A0 =C2=A0}<br>
+ <br>
+-=C2=A0 =C2=A0 uv__queue_remove(q);<br>
+-=C2=A0 =C2=A0 uv__queue_init(q);=C2=A0 /* Signal uv_cancel() that the wor=
k req is executing. */<br>
++=C2=A0 =C2=A0 QUEUE_REMOVE(q);<br>
++=C2=A0 =C2=A0 QUEUE_INIT(q);=C2=A0 /* Signal uv_cancel() that the work re=
q is executing. */<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0is_slow_work =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0if (q =3D=3D &amp;run_slow_work_message) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/* If we&#39;re at the slow I/O threshold, re-s=
chedule until after all<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 other work in the queue is done. */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (slow_io_work_running &gt;=3D slow_work_thre=
ad_threshold()) {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 uv__queue_insert_tail(&amp;wq, q);<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 QUEUE_INSERT_TAIL(&amp;wq, q);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0continue;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/* If we encountered a request to run slow I/O =
work but there is none<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 to run, that means it&#39;s cancelled =
=3D&gt; Start over. */<br>
+-=C2=A0 =C2=A0 =C2=A0 if (uv__queue_empty(&amp;slow_io_pending_wq))<br>
++=C2=A0 =C2=A0 =C2=A0 if (QUEUE_EMPTY(&amp;slow_io_pending_wq))<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0continue;<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0is_slow_work =3D 1;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0slow_io_work_running++;<br>
+ <br>
+-=C2=A0 =C2=A0 =C2=A0 q =3D uv__queue_head(&amp;slow_io_pending_wq);<br>
+-=C2=A0 =C2=A0 =C2=A0 uv__queue_remove(q);<br>
+-=C2=A0 =C2=A0 =C2=A0 uv__queue_init(q);<br>
++=C2=A0 =C2=A0 =C2=A0 q =3D QUEUE_HEAD(&amp;slow_io_pending_wq);<br>
++=C2=A0 =C2=A0 =C2=A0 QUEUE_REMOVE(q);<br>
++=C2=A0 =C2=A0 =C2=A0 QUEUE_INIT(q);<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/* If there is more slow I/O work, schedule it =
to be run as well. */<br>
+-=C2=A0 =C2=A0 =C2=A0 if (!uv__queue_empty(&amp;slow_io_pending_wq)) {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 uv__queue_insert_tail(&amp;wq, &amp;run_slow_=
work_message);<br>
++=C2=A0 =C2=A0 =C2=A0 if (!QUEUE_EMPTY(&amp;slow_io_pending_wq)) {<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 QUEUE_INSERT_TAIL(&amp;wq, &amp;run_slow_work=
_message);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (idle_threads &gt; 0)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uv_cond_signal(&amp;cond);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+@@ -118,13 +118,13 @@ static void worker(void* arg) {<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0uv_mutex_unlock(&amp;mutex);<br>
+ <br>
+-=C2=A0 =C2=A0 w =3D uv__queue_data(q, struct uv__work, wq);<br>
++=C2=A0 =C2=A0 w =3D QUEUE_DATA(q, struct uv__work, wq);<br>
+=C2=A0 =C2=A0 =C2=A0w-&gt;work(w);<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0uv_mutex_lock(&amp;w-&gt;loop-&gt;wq_mutex);<br>
+=C2=A0 =C2=A0 =C2=A0w-&gt;work =3D NULL;=C2=A0 /* Signal uv_cancel() that =
the work req is done<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0executing. */<br>
+-=C2=A0 =C2=A0 uv__queue_insert_tail(&amp;w-&gt;loop-&gt;wq, &amp;w-&gt;wq=
);<br>
++=C2=A0 =C2=A0 QUEUE_INSERT_TAIL(&amp;w-&gt;loop-&gt;wq, &amp;w-&gt;wq);<b=
r>
+=C2=A0 =C2=A0 =C2=A0uv_async_send(&amp;w-&gt;loop-&gt;wq_async);<br>
+=C2=A0 =C2=A0 =C2=A0uv_mutex_unlock(&amp;w-&gt;loop-&gt;wq_mutex);<br>
+ <br>
+@@ -139,12 +139,12 @@ static void worker(void* arg) {<br>
+ }<br>
+ <br>
+ <br>
+-static void post(struct uv__queue* q, enum uv__work_kind kind) {<br>
++static void post(QUEUE* q, enum uv__work_kind kind) {<br>
+=C2=A0 =C2=A0uv_mutex_lock(&amp;mutex);<br>
+=C2=A0 =C2=A0if (kind =3D=3D UV__WORK_SLOW_IO) {<br>
+=C2=A0 =C2=A0 =C2=A0/* Insert into a separate queue. */<br>
+-=C2=A0 =C2=A0 uv__queue_insert_tail(&amp;slow_io_pending_wq, q);<br>
+-=C2=A0 =C2=A0 if (!uv__queue_empty(&amp;run_slow_work_message)) {<br>
++=C2=A0 =C2=A0 QUEUE_INSERT_TAIL(&amp;slow_io_pending_wq, q);<br>
++=C2=A0 =C2=A0 if (!QUEUE_EMPTY(&amp;run_slow_work_message)) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Running slow I/O tasks is already scheduled =
=3D&gt; Nothing to do here.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 The worker that runs said other task wi=
ll schedule this one as well. */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0uv_mutex_unlock(&amp;mutex);<br>
+@@ -153,7 +153,7 @@ static void post(struct uv__queue* q, enum uv__work_ki=
nd kind) {<br>
+=C2=A0 =C2=A0 =C2=A0q =3D &amp;run_slow_work_message;<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+-=C2=A0 uv__queue_insert_tail(&amp;wq, q);<br>
++=C2=A0 QUEUE_INSERT_TAIL(&amp;wq, q);<br>
+=C2=A0 =C2=A0if (idle_threads &gt; 0)<br>
+=C2=A0 =C2=A0 =C2=A0uv_cond_signal(&amp;cond);<br>
+=C2=A0 =C2=A0uv_mutex_unlock(&amp;mutex);<br>
+@@ -220,9 +220,9 @@ static void init_threads(void) {<br>
+=C2=A0 =C2=A0if (uv_mutex_init(&amp;mutex))<br>
+=C2=A0 =C2=A0 =C2=A0abort();<br>
+ <br>
+-=C2=A0 uv__queue_init(&amp;wq);<br>
+-=C2=A0 uv__queue_init(&amp;slow_io_pending_wq);<br>
+-=C2=A0 uv__queue_init(&amp;run_slow_work_message);<br>
++=C2=A0 QUEUE_INIT(&amp;wq);<br>
++=C2=A0 QUEUE_INIT(&amp;slow_io_pending_wq);<br>
++=C2=A0 QUEUE_INIT(&amp;run_slow_work_message);<br>
+ <br>
+=C2=A0 =C2=A0if (uv_sem_init(&amp;sem, 0))<br>
+=C2=A0 =C2=A0 =C2=A0abort();<br>
+@@ -285,9 +285,9 @@ static int uv__work_cancel(uv_loop_t* loop, uv_req_t* =
req, struct uv__work* w) {<br>
+=C2=A0 =C2=A0uv_mutex_lock(&amp;mutex);<br>
+=C2=A0 =C2=A0uv_mutex_lock(&amp;w-&gt;loop-&gt;wq_mutex);<br>
+ <br>
+-=C2=A0 cancelled =3D !uv__queue_empty(&amp;w-&gt;wq) &amp;&amp; w-&gt;wor=
k !=3D NULL;<br>
++=C2=A0 cancelled =3D !QUEUE_EMPTY(&amp;w-&gt;wq) &amp;&amp; w-&gt;work !=
=3D NULL;<br>
+=C2=A0 =C2=A0if (cancelled)<br>
+-=C2=A0 =C2=A0 uv__queue_remove(&amp;w-&gt;wq);<br>
++=C2=A0 =C2=A0 QUEUE_REMOVE(&amp;w-&gt;wq);<br>
+ <br>
+=C2=A0 =C2=A0uv_mutex_unlock(&amp;w-&gt;loop-&gt;wq_mutex);<br>
+=C2=A0 =C2=A0uv_mutex_unlock(&amp;mutex);<br>
+@@ -297,7 +297,7 @@ static int uv__work_cancel(uv_loop_t* loop, uv_req_t* =
req, struct uv__work* w) {<br>
+ <br>
+=C2=A0 =C2=A0w-&gt;work =3D uv__cancelled;<br>
+=C2=A0 =C2=A0uv_mutex_lock(&amp;loop-&gt;wq_mutex);<br>
+-=C2=A0 uv__queue_insert_tail(&amp;loop-&gt;wq, &amp;w-&gt;wq);<br>
++=C2=A0 QUEUE_INSERT_TAIL(&amp;loop-&gt;wq, &amp;w-&gt;wq);<br>
+=C2=A0 =C2=A0uv_async_send(&amp;loop-&gt;wq_async);<br>
+=C2=A0 =C2=A0uv_mutex_unlock(&amp;loop-&gt;wq_mutex);<br>
+ <br>
+@@ -308,21 +308,21 @@ static int uv__work_cancel(uv_loop_t* loop, uv_req_t=
* req, struct uv__work* w) {<br>
+ void uv__work_done(uv_async_t* handle) {<br>
+=C2=A0 =C2=A0struct uv__work* w;<br>
+=C2=A0 =C2=A0uv_loop_t* loop;<br>
+-=C2=A0 struct uv__queue* q;<br>
+-=C2=A0 struct uv__queue wq;<br>
++=C2=A0 QUEUE* q;<br>
++=C2=A0 QUEUE wq;<br>
+=C2=A0 =C2=A0int err;<br>
+=C2=A0 =C2=A0int nevents;<br>
+ <br>
+=C2=A0 =C2=A0loop =3D container_of(handle, uv_loop_t, wq_async);<br>
+=C2=A0 =C2=A0uv_mutex_lock(&amp;loop-&gt;wq_mutex);<br>
+-=C2=A0 uv__queue_move(&amp;loop-&gt;wq, &amp;wq);<br>
++=C2=A0 QUEUE_MOVE(&amp;loop-&gt;wq, &amp;wq);<br>
+=C2=A0 =C2=A0uv_mutex_unlock(&amp;loop-&gt;wq_mutex);<br>
+ <br>
+=C2=A0 =C2=A0nevents =3D 0;<br>
+ <br>
+-=C2=A0 while (!uv__queue_empty(&amp;wq)) {<br>
+-=C2=A0 =C2=A0 q =3D uv__queue_head(&amp;wq);<br>
+-=C2=A0 =C2=A0 uv__queue_remove(q);<br>
++=C2=A0 while (!QUEUE_EMPTY(&amp;wq)) {<br>
++=C2=A0 =C2=A0 q =3D QUEUE_HEAD(&amp;wq);<br>
++=C2=A0 =C2=A0 QUEUE_REMOVE(q);<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0w =3D container_of(q, struct uv__work, wq);<br>
+=C2=A0 =C2=A0 =C2=A0err =3D (w-&gt;work =3D=3D uv__cancelled) ? UV_ECANCEL=
ED : 0;<br>
+diff --git a/deps/uv/src/unix/aix.c b/deps/uv/src/unix/aix.c<br>
+index 3af3009a216..f1afbed49ec 100644<br>
+--- a/deps/uv/src/unix/aix.c<br>
++++ b/deps/uv/src/unix/aix.c<br>
+@@ -136,7 +136,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {<br>
+=C2=A0 =C2=A0struct pollfd pqry;<br>
+=C2=A0 =C2=A0struct pollfd* pe;<br>
+=C2=A0 =C2=A0struct poll_ctl pc;<br>
+-=C2=A0 struct uv__queue* q;<br>
++=C2=A0 QUEUE* q;<br>
+=C2=A0 =C2=A0uv__io_t* w;<br>
+=C2=A0 =C2=A0uint64_t base;<br>
+=C2=A0 =C2=A0uint64_t diff;<br>
+@@ -151,18 +151,18 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {<br>
+=C2=A0 =C2=A0int reset_timeout;<br>
+ <br>
+=C2=A0 =C2=A0if (loop-&gt;nfds =3D=3D 0) {<br>
+-=C2=A0 =C2=A0 assert(uv__queue_empty(&amp;loop-&gt;watcher_queue));<br>
++=C2=A0 =C2=A0 assert(QUEUE_EMPTY(&amp;loop-&gt;watcher_queue));<br>
+=C2=A0 =C2=A0 =C2=A0return;<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+=C2=A0 =C2=A0lfields =3D uv__get_internal_fields(loop);<br>
+ <br>
+-=C2=A0 while (!uv__queue_empty(&amp;loop-&gt;watcher_queue)) {<br>
+-=C2=A0 =C2=A0 q =3D uv__queue_head(&amp;loop-&gt;watcher_queue);<br>
+-=C2=A0 =C2=A0 uv__queue_remove(q);<br>
+-=C2=A0 =C2=A0 uv__queue_init(q);<br>
++=C2=A0 while (!QUEUE_EMPTY(&amp;loop-&gt;watcher_queue)) {<br>
++=C2=A0 =C2=A0 q =3D QUEUE_HEAD(&amp;loop-&gt;watcher_queue);<br>
++=C2=A0 =C2=A0 QUEUE_REMOVE(q);<br>
++=C2=A0 =C2=A0 QUEUE_INIT(q);<br>
+ <br>
+-=C2=A0 =C2=A0 w =3D uv__queue_data(q, uv__io_t, watcher_queue);<br>
++=C2=A0 =C2=A0 w =3D QUEUE_DATA(q, uv__io_t, watcher_queue);<br>
+=C2=A0 =C2=A0 =C2=A0assert(w-&gt;pevents !=3D 0);<br>
+=C2=A0 =C2=A0 =C2=A0assert(w-&gt;fd &gt;=3D 0);<br>
+=C2=A0 =C2=A0 =C2=A0assert(w-&gt;fd &lt; (int) loop-&gt;nwatchers);<br>
+diff --git a/deps/uv/src/unix/async.c b/deps/uv/src/unix/async.c<br>
+index 0ff2669e30a..5751b6d02be 100644<br>
+--- a/deps/uv/src/unix/async.c<br>
++++ b/deps/uv/src/unix/async.c<br>
+@@ -55,7 +55,7 @@ int uv_async_init(uv_loop_t* loop, uv_async_t* handle, u=
v_async_cb async_cb) {<br>
+=C2=A0 =C2=A0handle-&gt;pending =3D 0;<br>
+=C2=A0 =C2=A0handle-&gt;u.fd =3D 0; /* This will be used as a busy flag. *=
/<br>
+ <br>
+-=C2=A0 uv__queue_insert_tail(&amp;loop-&gt;async_handles, &amp;handle-&gt=
;queue);<br>
++=C2=A0 QUEUE_INSERT_TAIL(&amp;loop-&gt;async_handles, &amp;handle-&gt;que=
ue);<br>
+=C2=A0 =C2=A0uv__handle_start(handle);<br>
+ <br>
+=C2=A0 =C2=A0return 0;<br>
+@@ -124,7 +124,7 @@ static void uv__async_spin(uv_async_t* handle) {<br>
+ <br>
+ void uv__async_close(uv_async_t* handle) {<br>
+=C2=A0 =C2=A0uv__async_spin(handle);<br>
+-=C2=A0 uv__queue_remove(&amp;handle-&gt;queue);<br>
++=C2=A0 QUEUE_REMOVE(&amp;handle-&gt;queue);<br>
+=C2=A0 =C2=A0uv__handle_stop(handle);<br>
+ }<br>
+ <br>
+@@ -132,8 +132,8 @@ void uv__async_close(uv_async_t* handle) {<br>
+ static void uv__async_io(uv_loop_t* loop, uv__io_t* w, unsigned int event=
s) {<br>
+=C2=A0 =C2=A0char buf[1024];<br>
+=C2=A0 =C2=A0ssize_t r;<br>
+-=C2=A0 struct uv__queue queue;<br>
+-=C2=A0 struct uv__queue* q;<br>
++=C2=A0 QUEUE queue;<br>
++=C2=A0 QUEUE* q;<br>
+=C2=A0 =C2=A0uv_async_t* h;<br>
+=C2=A0 =C2=A0_Atomic int *pending;<br>
+ <br>
+@@ -157,13 +157,13 @@ static void uv__async_io(uv_loop_t* loop, uv__io_t* =
w, unsigned int events) {<br>
+=C2=A0 =C2=A0 =C2=A0abort();<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+-=C2=A0 uv__queue_move(&amp;loop-&gt;async_handles, &amp;queue);<br>
+-=C2=A0 while (!uv__queue_empty(&amp;queue)) {<br>
+-=C2=A0 =C2=A0 q =3D uv__queue_head(&amp;queue);<br>
+-=C2=A0 =C2=A0 h =3D uv__queue_data(q, uv_async_t, queue);<br>
++=C2=A0 QUEUE_MOVE(&amp;loop-&gt;async_handles, &amp;queue);<br>
++=C2=A0 while (!QUEUE_EMPTY(&amp;queue)) {<br>
++=C2=A0 =C2=A0 q =3D QUEUE_HEAD(&amp;queue);<br>
++=C2=A0 =C2=A0 h =3D QUEUE_DATA(q, uv_async_t, queue);<br>
+ <br>
+-=C2=A0 =C2=A0 uv__queue_remove(q);<br>
+-=C2=A0 =C2=A0 uv__queue_insert_tail(&amp;loop-&gt;async_handles, q);<br>
++=C2=A0 =C2=A0 QUEUE_REMOVE(q);<br>
++=C2=A0 =C2=A0 QUEUE_INSERT_TAIL(&amp;loop-&gt;async_handles, q);<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0/* Atomically fetch and clear pending flag */<br>
+=C2=A0 =C2=A0 =C2=A0pending =3D (_Atomic int*) &amp;h-&gt;pending;<br>
+@@ -241,8 +241,8 @@ static int uv__async_start(uv_loop_t* loop) {<br>
+ <br>
+ <br>
+ void uv__async_stop(uv_loop_t* loop) {<br>
+-=C2=A0 struct uv__queue queue;<br>
+-=C2=A0 struct uv__queue* q;<br>
++=C2=A0 QUEUE queue;<br>
++=C2=A0 QUEUE* q;<br>
+=C2=A0 =C2=A0uv_async_t* h;<br>
+ <br>
+=C2=A0 =C2=A0if (loop-&gt;async_io_watcher.fd =3D=3D -1)<br>
+@@ -251,13 +251,13 @@ void uv__async_stop(uv_loop_t* loop) {<br>
+=C2=A0 =C2=A0/* Make sure no other thread is accessing the async handle fd=
 after the loop<br>
+=C2=A0 =C2=A0 * cleanup.<br>
+=C2=A0 =C2=A0 */<br>
+-=C2=A0 uv__queue_move(&amp;loop-&gt;async_handles, &amp;queue);<br>
+-=C2=A0 while (!uv__queue_empty(&amp;queue)) {<br>
+-=C2=A0 =C2=A0 q =3D uv__queue_head(&amp;queue);<br>
+-=C2=A0 =C2=A0 h =3D uv__queue_data(q, uv_async_t, queue);<br>
++=C2=A0 QUEUE_MOVE(&amp;loop-&gt;async_handles, &amp;queue);<br>
++=C2=A0 while (!QUEUE_EMPTY(&amp;queue)) {<br>
++=C2=A0 =C2=A0 q =3D QUEUE_HEAD(&amp;queue);<br>
++=C2=A0 =C2=A0 h =3D QUEUE_DATA(q, uv_async_t, queue);<br>
+ <br>
+-=C2=A0 =C2=A0 uv__queue_remove(q);<br>
+-=C2=A0 =C2=A0 uv__queue_insert_tail(&amp;loop-&gt;async_handles, q);<br>
++=C2=A0 =C2=A0 QUEUE_REMOVE(q);<br>
++=C2=A0 =C2=A0 QUEUE_INSERT_TAIL(&amp;loop-&gt;async_handles, q);<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0uv__async_spin(h);<br>
+=C2=A0 =C2=A0}<br>
+@@ -275,20 +275,20 @@ void uv__async_stop(uv_loop_t* loop) {<br>
+ <br>
+ <br>
+ int uv__async_fork(uv_loop_t* loop) {<br>
+-=C2=A0 struct uv__queue queue;<br>
+-=C2=A0 struct uv__queue* q;<br>
++=C2=A0 QUEUE queue;<br>
++=C2=A0 QUEUE* q;<br>
+=C2=A0 =C2=A0uv_async_t* h;<br>
+ <br>
+=C2=A0 =C2=A0if (loop-&gt;async_io_watcher.fd =3D=3D -1) /* never started =
*/<br>
+=C2=A0 =C2=A0 =C2=A0return 0;<br>
+ <br>
+-=C2=A0 uv__queue_move(&amp;loop-&gt;async_handles, &amp;queue);<br>
+-=C2=A0 while (!uv__queue_empty(&amp;queue)) {<br>
+-=C2=A0 =C2=A0 q =3D uv__queue_head(&amp;queue);<br>
+-=C2=A0 =C2=A0 h =3D uv__queue_data(q, uv_async_t, queue);<br>
++=C2=A0 QUEUE_MOVE(&amp;loop-&gt;async_handles, &amp;queue);<br>
++=C2=A0 while (!QUEUE_EMPTY(&amp;queue)) {<br>
++=C2=A0 =C2=A0 q =3D QUEUE_HEAD(&amp;queue);<br>
++=C2=A0 =C2=A0 h =3D QUEUE_DATA(q, uv_async_t, queue);<br>
+ <br>
+-=C2=A0 =C2=A0 uv__queue_remove(q);<br>
+-=C2=A0 =C2=A0 uv__queue_insert_tail(&amp;loop-&gt;async_handles, q);<br>
++=C2=A0 =C2=A0 QUEUE_REMOVE(q);<br>
++=C2=A0 =C2=A0 QUEUE_INSERT_TAIL(&amp;loop-&gt;async_handles, q);<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0/* The state of any thread that set pending is now lik=
ely corrupt in this<br>
+=C2=A0 =C2=A0 =C2=A0 * child because the user called fork, so just clear t=
hese flags and move<br>
+diff --git a/deps/uv/src/unix/core.c b/deps/uv/src/unix/core.c<br>
+index 25c5181f370..55aa962787e 100644<br>
+--- a/deps/uv/src/unix/core.c<br>
++++ b/deps/uv/src/unix/core.c<br>
+@@ -344,7 +344,7 @@ static void uv__finish_close(uv_handle_t* handle) {<br=
>
+=C2=A0 =C2=A0}<br>
+ <br>
+=C2=A0 =C2=A0uv__handle_unref(handle);<br>
+-=C2=A0 uv__queue_remove(&amp;handle-&gt;handle_queue);<br>
++=C2=A0 QUEUE_REMOVE(&amp;handle-&gt;handle_queue);<br>
+ <br>
+=C2=A0 =C2=A0if (handle-&gt;close_cb) {<br>
+=C2=A0 =C2=A0 =C2=A0handle-&gt;close_cb(handle);<br>
+@@ -380,7 +380,7 @@ int uv_backend_fd(const uv_loop_t* loop) {<br>
+ static int uv__loop_alive(const uv_loop_t* loop) {<br>
+=C2=A0 =C2=A0return uv__has_active_handles(loop) ||<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uv__has_active_reqs(loop) ||<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0!uv__queue_empty(&amp;loop-&gt;pending_=
queue) ||<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0!QUEUE_EMPTY(&amp;loop-&gt;pending_queu=
e) ||<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 loop-&gt;closing_handles !=3D NULL;<br>
+ }<br>
+ <br>
+@@ -389,8 +389,8 @@ static int uv__backend_timeout(const uv_loop_t* loop) =
{<br>
+=C2=A0 =C2=A0if (loop-&gt;stop_flag =3D=3D 0 &amp;&amp;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/* uv__loop_alive(loop) &amp;&amp; */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0(uv__has_active_handles(loop) || uv__has_active=
_reqs(loop)) &amp;&amp;<br>
+-=C2=A0 =C2=A0 =C2=A0 uv__queue_empty(&amp;loop-&gt;pending_queue) &amp;&a=
mp;<br>
+-=C2=A0 =C2=A0 =C2=A0 uv__queue_empty(&amp;loop-&gt;idle_handles) &amp;&am=
p;<br>
++=C2=A0 =C2=A0 =C2=A0 QUEUE_EMPTY(&amp;loop-&gt;pending_queue) &amp;&amp;<=
br>
++=C2=A0 =C2=A0 =C2=A0 QUEUE_EMPTY(&amp;loop-&gt;idle_handles) &amp;&amp;<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0(loop-&gt;flags &amp; UV_LOOP_REAP_CHILDREN) =
=3D=3D 0 &amp;&amp;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0loop-&gt;closing_handles =3D=3D NULL)<br>
+=C2=A0 =C2=A0 =C2=A0return uv__next_timeout(loop);<br>
+@@ -399,7 +399,7 @@ static int uv__backend_timeout(const uv_loop_t* loop) =
{<br>
+ <br>
+ <br>
+ int uv_backend_timeout(const uv_loop_t* loop) {<br>
+-=C2=A0 if (uv__queue_empty(&amp;loop-&gt;watcher_queue))<br>
++=C2=A0 if (QUEUE_EMPTY(&amp;loop-&gt;watcher_queue))<br>
+=C2=A0 =C2=A0 =C2=A0return uv__backend_timeout(loop);<br>
+=C2=A0 =C2=A0/* Need to call uv_run to update the backend fd state. */<br>
+=C2=A0 =C2=A0return 0;<br>
+@@ -431,8 +431,7 @@ int uv_run(uv_loop_t* loop, uv_run_mode mode) {<br>
+ <br>
+=C2=A0 =C2=A0while (r !=3D 0 &amp;&amp; loop-&gt;stop_flag =3D=3D 0) {<br>
+=C2=A0 =C2=A0 =C2=A0can_sleep =3D<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 uv__queue_empty(&amp;loop-&gt;pending_queue) =
&amp;&amp;<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 uv__queue_empty(&amp;loop-&gt;idle_handles);<=
br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 QUEUE_EMPTY(&amp;loop-&gt;pending_queue) &amp=
;&amp; QUEUE_EMPTY(&amp;loop-&gt;idle_handles);<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0uv__run_pending(loop);<br>
+=C2=A0 =C2=A0 =C2=A0uv__run_idle(loop);<br>
+@@ -448,7 +447,7 @@ int uv_run(uv_loop_t* loop, uv_run_mode mode) {<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0/* Process immediate callbacks (e.g. write_cb) a small=
 fixed number of<br>
+=C2=A0 =C2=A0 =C2=A0 * times to avoid loop starvation.*/<br>
+-=C2=A0 =C2=A0 for (r =3D 0; r &lt; 8 &amp;&amp; !uv__queue_empty(&amp;loo=
p-&gt;pending_queue); r++)<br>
++=C2=A0 =C2=A0 for (r =3D 0; r &lt; 8 &amp;&amp; !QUEUE_EMPTY(&amp;loop-&g=
t;pending_queue); r++)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0uv__run_pending(loop);<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0/* Run one final update on the provider_idle_time in c=
ase uv__io_poll<br>
+@@ -827,17 +826,17 @@ int uv_fileno(const uv_handle_t* handle, uv_os_fd_t*=
 fd) {<br>
+ <br>
+ <br>
+ static void uv__run_pending(uv_loop_t* loop) {<br>
+-=C2=A0 struct uv__queue* q;<br>
+-=C2=A0 struct uv__queue pq;<br>
++=C2=A0 QUEUE* q;<br>
++=C2=A0 QUEUE pq;<br>
+=C2=A0 =C2=A0uv__io_t* w;<br>
+ <br>
+-=C2=A0 uv__queue_move(&amp;loop-&gt;pending_queue, &amp;pq);<br>
++=C2=A0 QUEUE_MOVE(&amp;loop-&gt;pending_queue, &amp;pq);<br>
+ <br>
+-=C2=A0 while (!uv__queue_empty(&amp;pq)) {<br>
+-=C2=A0 =C2=A0 q =3D uv__queue_head(&amp;pq);<br>
+-=C2=A0 =C2=A0 uv__queue_remove(q);<br>
+-=C2=A0 =C2=A0 uv__queue_init(q);<br>
+-=C2=A0 =C2=A0 w =3D uv__queue_data(q, uv__io_t, pending_queue);<br>
++=C2=A0 while (!QUEUE_EMPTY(&amp;pq)) {<br>
++=C2=A0 =C2=A0 q =3D QUEUE_HEAD(&amp;pq);<br>
++=C2=A0 =C2=A0 QUEUE_REMOVE(q);<br>
++=C2=A0 =C2=A0 QUEUE_INIT(q);<br>
++=C2=A0 =C2=A0 w =3D QUEUE_DATA(q, uv__io_t, pending_queue);<br>
+=C2=A0 =C2=A0 =C2=A0w-&gt;cb(loop, w, POLLOUT);<br>
+=C2=A0 =C2=A0}<br>
+ }<br>
+@@ -892,8 +891,8 @@ static void maybe_resize(uv_loop_t* loop, unsigned int=
 len) {<br>
+ void uv__io_init(uv__io_t* w, uv__io_cb cb, int fd) {<br>
+=C2=A0 =C2=A0assert(cb !=3D NULL);<br>
+=C2=A0 =C2=A0assert(fd &gt;=3D -1);<br>
+-=C2=A0 uv__queue_init(&amp;w-&gt;pending_queue);<br>
+-=C2=A0 uv__queue_init(&amp;w-&gt;watcher_queue);<br>
++=C2=A0 QUEUE_INIT(&amp;w-&gt;pending_queue);<br>
++=C2=A0 QUEUE_INIT(&amp;w-&gt;watcher_queue);<br>
+=C2=A0 =C2=A0w-&gt;cb =3D cb;<br>
+=C2=A0 =C2=A0w-&gt;fd =3D fd;<br>
+=C2=A0 =C2=A0w-&gt;events =3D 0;<br>
+@@ -919,8 +918,8 @@ void uv__io_start(uv_loop_t* loop, uv__io_t* w, unsign=
ed int events) {<br>
+=C2=A0 =C2=A0 =C2=A0return;<br>
+ #endif<br>
+ <br>
+-=C2=A0 if (uv__queue_empty(&amp;w-&gt;watcher_queue))<br>
+-=C2=A0 =C2=A0 uv__queue_insert_tail(&amp;loop-&gt;watcher_queue, &amp;w-&=
gt;watcher_queue);<br>
++=C2=A0 if (QUEUE_EMPTY(&amp;w-&gt;watcher_queue))<br>
++=C2=A0 =C2=A0 QUEUE_INSERT_TAIL(&amp;loop-&gt;watcher_queue, &amp;w-&gt;w=
atcher_queue);<br>
+ <br>
+=C2=A0 =C2=A0if (loop-&gt;watchers[w-&gt;fd] =3D=3D NULL) {<br>
+=C2=A0 =C2=A0 =C2=A0loop-&gt;watchers[w-&gt;fd] =3D w;<br>
+@@ -945,8 +944,8 @@ void uv__io_stop(uv_loop_t* loop, uv__io_t* w, unsigne=
d int events) {<br>
+=C2=A0 =C2=A0w-&gt;pevents &amp;=3D ~events;<br>
+ <br>
+=C2=A0 =C2=A0if (w-&gt;pevents =3D=3D 0) {<br>
+-=C2=A0 =C2=A0 uv__queue_remove(&amp;w-&gt;watcher_queue);<br>
+-=C2=A0 =C2=A0 uv__queue_init(&amp;w-&gt;watcher_queue);<br>
++=C2=A0 =C2=A0 QUEUE_REMOVE(&amp;w-&gt;watcher_queue);<br>
++=C2=A0 =C2=A0 QUEUE_INIT(&amp;w-&gt;watcher_queue);<br>
+=C2=A0 =C2=A0 =C2=A0w-&gt;events =3D 0;<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0if (w =3D=3D loop-&gt;watchers[w-&gt;fd]) {<br>
+@@ -955,14 +954,14 @@ void uv__io_stop(uv_loop_t* loop, uv__io_t* w, unsig=
ned int events) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0loop-&gt;nfds--;<br>
+=C2=A0 =C2=A0 =C2=A0}<br>
+=C2=A0 =C2=A0}<br>
+-=C2=A0 else if (uv__queue_empty(&amp;w-&gt;watcher_queue))<br>
+-=C2=A0 =C2=A0 uv__queue_insert_tail(&amp;loop-&gt;watcher_queue, &amp;w-&=
gt;watcher_queue);<br>
++=C2=A0 else if (QUEUE_EMPTY(&amp;w-&gt;watcher_queue))<br>
++=C2=A0 =C2=A0 QUEUE_INSERT_TAIL(&amp;loop-&gt;watcher_queue, &amp;w-&gt;w=
atcher_queue);<br>
+ }<br>
+ <br>
+ <br>
+ void uv__io_close(uv_loop_t* loop, uv__io_t* w) {<br>
+=C2=A0 =C2=A0uv__io_stop(loop, w, POLLIN | POLLOUT | UV__POLLRDHUP | UV__P=
OLLPRI);<br>
+-=C2=A0 uv__queue_remove(&amp;w-&gt;pending_queue);<br>
++=C2=A0 QUEUE_REMOVE(&amp;w-&gt;pending_queue);<br>
+ <br>
+=C2=A0 =C2=A0/* Remove stale events for this file descriptor */<br>
+=C2=A0 =C2=A0if (w-&gt;fd !=3D -1)<br>
+@@ -971,8 +970,8 @@ void uv__io_close(uv_loop_t* loop, uv__io_t* w) {<br>
+ <br>
+ <br>
+ void uv__io_feed(uv_loop_t* loop, uv__io_t* w) {<br>
+-=C2=A0 if (uv__queue_empty(&amp;w-&gt;pending_queue))<br>
+-=C2=A0 =C2=A0 uv__queue_insert_tail(&amp;loop-&gt;pending_queue, &amp;w-&=
gt;pending_queue);<br>
++=C2=A0 if (QUEUE_EMPTY(&amp;w-&gt;pending_queue))<br>
++=C2=A0 =C2=A0 QUEUE_INSERT_TAIL(&amp;loop-&gt;pending_queue, &amp;w-&gt;p=
ending_queue);<br>
+ }<br>
+ <br>
+ <br>
+diff --git a/deps/uv/src/unix/fs.c b/deps/uv/src/unix/fs.c<br>
+index 6b051c124f2..00d385c24b7 100644<br>
+--- a/deps/uv/src/unix/fs.c<br>
++++ b/deps/uv/src/unix/fs.c<br>
+@@ -62,6 +62,7 @@<br>
+ <br>
+ #if defined(__linux__)<br>
+ # include &lt;sys/sendfile.h&gt;<br>
++# include &lt;sys/utsname.h&gt;<br>
+ #endif<br>
+ <br>
+ #if defined(__sun)<br>
+@@ -903,6 +904,31 @@ out:<br>
+ <br>
+ <br>
+ #ifdef __linux__<br>
++static unsigned uv__kernel_version(void) {<br>
++=C2=A0 static _Atomic unsigned cached_version;<br>
++=C2=A0 struct utsname u;<br>
++=C2=A0 unsigned version;<br>
++=C2=A0 unsigned major;<br>
++=C2=A0 unsigned minor;<br>
++=C2=A0 unsigned patch;<br>
++<br>
++=C2=A0 version =3D atomic_load_explicit(&amp;cached_version, memory_order=
_relaxed);<br>
++=C2=A0 if (version !=3D 0)<br>
++=C2=A0 =C2=A0 return version;<br>
++<br>
++=C2=A0 if (-1 =3D=3D uname(&amp;u))<br>
++=C2=A0 =C2=A0 return 0;<br>
++<br>
++=C2=A0 if (3 !=3D sscanf(u.release, &quot;%u.%u.%u&quot;, &amp;major, &am=
p;minor, &amp;patch))<br>
++=C2=A0 =C2=A0 return 0;<br>
++<br>
++=C2=A0 version =3D major * 65536 + minor * 256 + patch;<br>
++=C2=A0 atomic_store_explicit(&amp;cached_version, version, memory_order_r=
elaxed);<br>
++<br>
++=C2=A0 return version;<br>
++}<br>
++<br>
++<br>
+ /* Pre-4.20 kernels have a bug where CephFS uses the RADOS copy-from comm=
and<br>
+=C2=A0 * in copy_file_range() when it shouldn&#39;t. There is no workaroun=
d except to<br>
+=C2=A0 * fall back to a regular copy.<br>
+@@ -1905,9 +1931,6 @@ int uv_fs_link(uv_loop_t* loop,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uv_fs_cb cb) {<br>
+=C2=A0 =C2=A0INIT(LINK);<br>
+=C2=A0 =C2=A0PATH2;<br>
+-=C2=A0 if (cb !=3D NULL)<br>
+-=C2=A0 =C2=A0 if (uv__iou_fs_link(loop, req))<br>
+-=C2=A0 =C2=A0 =C2=A0 return 0;<br>
+=C2=A0 =C2=A0POST;<br>
+ }<br>
+ <br>
+@@ -1920,9 +1943,6 @@ int uv_fs_mkdir(uv_loop_t* loop,<br>
+=C2=A0 =C2=A0INIT(MKDIR);<br>
+=C2=A0 =C2=A0PATH;<br>
+=C2=A0 =C2=A0req-&gt;mode =3D mode;<br>
+-=C2=A0 if (cb !=3D NULL)<br>
+-=C2=A0 =C2=A0 if (uv__iou_fs_mkdir(loop, req))<br>
+-=C2=A0 =C2=A0 =C2=A0 return 0;<br>
+=C2=A0 =C2=A0POST;<br>
+ }<br>
+ <br>
+@@ -2074,9 +2094,6 @@ int uv_fs_rename(uv_loop_t* loop,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uv_fs_cb cb=
) {<br>
+=C2=A0 =C2=A0INIT(RENAME);<br>
+=C2=A0 =C2=A0PATH2;<br>
+-=C2=A0 if (cb !=3D NULL)<br>
+-=C2=A0 =C2=A0 if (uv__iou_fs_rename(loop, req))<br>
+-=C2=A0 =C2=A0 =C2=A0 return 0;<br>
+=C2=A0 =C2=A0POST;<br>
+ }<br>
+ <br>
+@@ -2123,9 +2140,6 @@ int uv_fs_symlink(uv_loop_t* loop,<br>
+=C2=A0 =C2=A0INIT(SYMLINK);<br>
+=C2=A0 =C2=A0PATH2;<br>
+=C2=A0 =C2=A0req-&gt;flags =3D flags;<br>
+-=C2=A0 if (cb !=3D NULL)<br>
+-=C2=A0 =C2=A0 if (uv__iou_fs_symlink(loop, req))<br>
+-=C2=A0 =C2=A0 =C2=A0 return 0;<br>
+=C2=A0 =C2=A0POST;<br>
+ }<br>
+ <br>
+@@ -2133,9 +2147,6 @@ int uv_fs_symlink(uv_loop_t* loop,<br>
+ int uv_fs_unlink(uv_loop_t* loop, uv_fs_t* req, const char* path, uv_fs_c=
b cb) {<br>
+=C2=A0 =C2=A0INIT(UNLINK);<br>
+=C2=A0 =C2=A0PATH;<br>
+-=C2=A0 if (cb !=3D NULL)<br>
+-=C2=A0 =C2=A0 if (uv__iou_fs_unlink(loop, req))<br>
+-=C2=A0 =C2=A0 =C2=A0 return 0;<br>
+=C2=A0 =C2=A0POST;<br>
+ }<br>
+ <br>
+diff --git a/deps/uv/src/unix/fsevents.c b/deps/uv/src/unix/fsevents.c<br>
+index df703f3635f..0535b4547aa 100644<br>
+--- a/deps/uv/src/unix/fsevents.c<br>
++++ b/deps/uv/src/unix/fsevents.c<br>
+@@ -80,13 +80,13 @@ enum uv__cf_loop_signal_type_e {<br>
+ typedef enum uv__cf_loop_signal_type_e uv__cf_loop_signal_type_t;<br>
+ <br>
+ struct uv__cf_loop_signal_s {<br>
+-=C2=A0 struct uv__queue member;<br>
++=C2=A0 QUEUE member;<br>
+=C2=A0 =C2=A0uv_fs_event_t* handle;<br>
+=C2=A0 =C2=A0uv__cf_loop_signal_type_t type;<br>
+ };<br>
+ <br>
+ struct uv__fsevents_event_s {<br>
+-=C2=A0 struct uv__queue member;<br>
++=C2=A0 QUEUE member;<br>
+=C2=A0 =C2=A0int events;<br>
+=C2=A0 =C2=A0char path[1];<br>
+ };<br>
+@@ -98,7 +98,7 @@ struct uv__cf_loop_state_s {<br>
+=C2=A0 =C2=A0FSEventStreamRef fsevent_stream;<br>
+=C2=A0 =C2=A0uv_sem_t fsevent_sem;<br>
+=C2=A0 =C2=A0uv_mutex_t fsevent_mutex;<br>
+-=C2=A0 struct uv__queue fsevent_handles;<br>
++=C2=A0 void* fsevent_handles[2];<br>
+=C2=A0 =C2=A0unsigned int fsevent_handle_count;<br>
+ };<br>
+ <br>
+@@ -150,22 +150,22 @@ static void (*pFSEventStreamStop)(FSEventStreamRef);=
<br>
+ <br>
+ #define UV__FSEVENTS_PROCESS(handle, block)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+-=C2=A0 =C2=A0 =C2=A0 struct uv__queue events;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+-=C2=A0 =C2=A0 =C2=A0 struct uv__queue* q;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 \<br>
++=C2=A0 =C2=A0 =C2=A0 QUEUE events;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0\<br>
++=C2=A0 =C2=A0 =C2=A0 QUEUE* q;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0uv__fsevents_event_t* event;=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0int err;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0uv_mutex_lock(&amp;(handle)-&gt;cf_mutex);=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Split-off all events and empty original queu=
e */=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0\<br>
+-=C2=A0 =C2=A0 =C2=A0 uv__queue_move(&amp;(handle)-&gt;cf_events, &amp;eve=
nts);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 \<br>
++=C2=A0 =C2=A0 =C2=A0 QUEUE_MOVE(&amp;(handle)-&gt;cf_events, &amp;events)=
;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Get error (if any) and zero original one */=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0err =3D (handle)-&gt;cf_error;=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0(handle)-&gt;cf_error =3D 0;=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0uv_mutex_unlock(&amp;(handle)-&gt;cf_mutex);=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Loop through events, deallocating each after=
 processing */=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+-=C2=A0 =C2=A0 =C2=A0 while (!uv__queue_empty(&amp;events)) {=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 q =3D uv__queue_head(&amp;events);=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 event =3D uv__queue_data(q, uv__fsevents_even=
t_t, member);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 uv__queue_remove(q);=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 \<br>
++=C2=A0 =C2=A0 =C2=A0 while (!QUEUE_EMPTY(&amp;events)) {=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 q =3D QUEUE_HEAD(&amp;events);=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \=
<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 event =3D QUEUE_DATA(q, uv__fsevents_event_t,=
 member);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<b=
r>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 QUEUE_REMOVE(q);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* NOTE: Checking uv__is_active() is req=
uired here, because handle=C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * callback may close handle and invokin=
g it after it will lead to=C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * incorrect behaviour */=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<=
br>
+@@ -193,14 +193,14 @@ static void uv__fsevents_cb(uv_async_t* cb) {<br>
+ <br>
+ /* Runs in CF thread, pushed event into handle&#39;s event list */<br>
+ static void uv__fsevents_push_event(uv_fs_event_t* handle,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct uv__queue* even=
ts,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 QUEUE* events,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int err) {<br>
+=C2=A0 =C2=A0assert(events !=3D NULL || err !=3D 0);<br>
+=C2=A0 =C2=A0uv_mutex_lock(&amp;handle-&gt;cf_mutex);<br>
+ <br>
+=C2=A0 =C2=A0/* Concatenate two queues */<br>
+=C2=A0 =C2=A0if (events !=3D NULL)<br>
+-=C2=A0 =C2=A0 uv__queue_add(&amp;handle-&gt;cf_events, events);<br>
++=C2=A0 =C2=A0 QUEUE_ADD(&amp;handle-&gt;cf_events, events);<br>
+ <br>
+=C2=A0 =C2=A0/* Propagate error */<br>
+=C2=A0 =C2=A0if (err !=3D 0)<br>
+@@ -224,12 +224,12 @@ static void uv__fsevents_event_cb(const FSEventStrea=
mRef streamRef,<br>
+=C2=A0 =C2=A0char* path;<br>
+=C2=A0 =C2=A0char* pos;<br>
+=C2=A0 =C2=A0uv_fs_event_t* handle;<br>
+-=C2=A0 struct uv__queue* q;<br>
++=C2=A0 QUEUE* q;<br>
+=C2=A0 =C2=A0uv_loop_t* loop;<br>
+=C2=A0 =C2=A0uv__cf_loop_state_t* state;<br>
+=C2=A0 =C2=A0uv__fsevents_event_t* event;<br>
+=C2=A0 =C2=A0FSEventStreamEventFlags flags;<br>
+-=C2=A0 struct uv__queue head;<br>
++=C2=A0 QUEUE head;<br>
+ <br>
+=C2=A0 =C2=A0loop =3D info;<br>
+=C2=A0 =C2=A0state =3D loop-&gt;cf_state;<br>
+@@ -238,9 +238,9 @@ static void uv__fsevents_event_cb(const FSEventStreamR=
ef streamRef,<br>
+ <br>
+=C2=A0 =C2=A0/* For each handle */<br>
+=C2=A0 =C2=A0uv_mutex_lock(&amp;state-&gt;fsevent_mutex);<br>
+-=C2=A0 uv__queue_foreach(q, &amp;state-&gt;fsevent_handles) {<br>
+-=C2=A0 =C2=A0 handle =3D uv__queue_data(q, uv_fs_event_t, cf_member);<br>
+-=C2=A0 =C2=A0 uv__queue_init(&amp;head);<br>
++=C2=A0 QUEUE_FOREACH(q, &amp;state-&gt;fsevent_handles) {<br>
++=C2=A0 =C2=A0 handle =3D QUEUE_DATA(q, uv_fs_event_t, cf_member);<br>
++=C2=A0 =C2=A0 QUEUE_INIT(&amp;head);<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0/* Process and filter out events */<br>
+=C2=A0 =C2=A0 =C2=A0for (i =3D 0; i &lt; numEvents; i++) {<br>
+@@ -318,10 +318,10 @@ static void uv__fsevents_event_cb(const FSEventStrea=
mRef streamRef,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0event-&gt;events =3D UV_CHANGE;<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+ <br>
+-=C2=A0 =C2=A0 =C2=A0 uv__queue_insert_tail(&amp;head, &amp;event-&gt;memb=
er);<br>
++=C2=A0 =C2=A0 =C2=A0 QUEUE_INSERT_TAIL(&amp;head, &amp;event-&gt;member);=
<br>
+=C2=A0 =C2=A0 =C2=A0}<br>
+ <br>
+-=C2=A0 =C2=A0 if (!uv__queue_empty(&amp;head))<br>
++=C2=A0 =C2=A0 if (!QUEUE_EMPTY(&amp;head))<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0uv__fsevents_push_event(handle, &amp;head, 0);<=
br>
+=C2=A0 =C2=A0}<br>
+=C2=A0 =C2=A0uv_mutex_unlock(&amp;state-&gt;fsevent_mutex);<br>
+@@ -403,7 +403,7 @@ static void uv__fsevents_destroy_stream(uv__cf_loop_st=
ate_t* state) {<br>
+ static void uv__fsevents_reschedule(uv__cf_loop_state_t* state,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uv_loop_t* loop,=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uv__cf_loop_sign=
al_type_t type) {<br>
+-=C2=A0 struct uv__queue* q;<br>
++=C2=A0 QUEUE* q;<br>
+=C2=A0 =C2=A0uv_fs_event_t* curr;<br>
+=C2=A0 =C2=A0CFArrayRef cf_paths;<br>
+=C2=A0 =C2=A0CFStringRef* paths;<br>
+@@ -446,9 +446,9 @@ static void uv__fsevents_reschedule(uv__cf_loop_state_=
t* state,<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0q =3D &amp;state-&gt;fsevent_handles;<br>
+=C2=A0 =C2=A0 =C2=A0for (; i &lt; path_count; i++) {<br>
+-=C2=A0 =C2=A0 =C2=A0 q =3D uv__queue_next(q);<br>
++=C2=A0 =C2=A0 =C2=A0 q =3D QUEUE_NEXT(q);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0assert(q !=3D &amp;state-&gt;fsevent_handles);<=
br>
+-=C2=A0 =C2=A0 =C2=A0 curr =3D uv__queue_data(q, uv_fs_event_t, cf_member)=
;<br>
++=C2=A0 =C2=A0 =C2=A0 curr =3D QUEUE_DATA(q, uv_fs_event_t, cf_member);<br=
>
+ <br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0assert(curr-&gt;realpath !=3D NULL);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0paths[i] =3D<br>
+@@ -486,8 +486,8 @@ final:<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0/* Broadcast error to all handles */<br>
+=C2=A0 =C2=A0 =C2=A0uv_mutex_lock(&amp;state-&gt;fsevent_mutex);<br>
+-=C2=A0 =C2=A0 uv__queue_foreach(q, &amp;state-&gt;fsevent_handles) {<br>
+-=C2=A0 =C2=A0 =C2=A0 curr =3D uv__queue_data(q, uv_fs_event_t, cf_member)=
;<br>
++=C2=A0 =C2=A0 QUEUE_FOREACH(q, &amp;state-&gt;fsevent_handles) {<br>
++=C2=A0 =C2=A0 =C2=A0 curr =3D QUEUE_DATA(q, uv_fs_event_t, cf_member);<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0uv__fsevents_push_event(curr, NULL, err);<br>
+=C2=A0 =C2=A0 =C2=A0}<br>
+=C2=A0 =C2=A0 =C2=A0uv_mutex_unlock(&amp;state-&gt;fsevent_mutex);<br>
+@@ -606,7 +606,7 @@ static int uv__fsevents_loop_init(uv_loop_t* loop) {<b=
r>
+=C2=A0 =C2=A0if (err)<br>
+=C2=A0 =C2=A0 =C2=A0goto fail_sem_init;<br>
+ <br>
+-=C2=A0 uv__queue_init(&amp;loop-&gt;cf_signals);<br>
++=C2=A0 QUEUE_INIT(&amp;loop-&gt;cf_signals);<br>
+ <br>
+=C2=A0 =C2=A0err =3D uv_sem_init(&amp;state-&gt;fsevent_sem, 0);<br>
+=C2=A0 =C2=A0if (err)<br>
+@@ -616,7 +616,7 @@ static int uv__fsevents_loop_init(uv_loop_t* loop) {<b=
r>
+=C2=A0 =C2=A0if (err)<br>
+=C2=A0 =C2=A0 =C2=A0goto fail_fsevent_mutex_init;<br>
+ <br>
+-=C2=A0 uv__queue_init(&amp;state-&gt;fsevent_handles);<br>
++=C2=A0 QUEUE_INIT(&amp;state-&gt;fsevent_handles);<br>
+=C2=A0 =C2=A0state-&gt;fsevent_need_reschedule =3D 0;<br>
+=C2=A0 =C2=A0state-&gt;fsevent_handle_count =3D 0;<br>
+ <br>
+@@ -675,7 +675,7 @@ fail_mutex_init:<br>
+ void uv__fsevents_loop_delete(uv_loop_t* loop) {<br>
+=C2=A0 =C2=A0uv__cf_loop_signal_t* s;<br>
+=C2=A0 =C2=A0uv__cf_loop_state_t* state;<br>
+-=C2=A0 struct uv__queue* q;<br>
++=C2=A0 QUEUE* q;<br>
+ <br>
+=C2=A0 =C2=A0if (loop-&gt;cf_state =3D=3D NULL)<br>
+=C2=A0 =C2=A0 =C2=A0return;<br>
+@@ -688,10 +688,10 @@ void uv__fsevents_loop_delete(uv_loop_t* loop) {<br>
+=C2=A0 =C2=A0uv_mutex_destroy(&amp;loop-&gt;cf_mutex);<br>
+ <br>
+=C2=A0 =C2=A0/* Free any remaining data */<br>
+-=C2=A0 while (!uv__queue_empty(&amp;loop-&gt;cf_signals)) {<br>
+-=C2=A0 =C2=A0 q =3D uv__queue_head(&amp;loop-&gt;cf_signals);<br>
+-=C2=A0 =C2=A0 s =3D uv__queue_data(q, uv__cf_loop_signal_t, member);<br>
+-=C2=A0 =C2=A0 uv__queue_remove(q);<br>
++=C2=A0 while (!QUEUE_EMPTY(&amp;loop-&gt;cf_signals)) {<br>
++=C2=A0 =C2=A0 q =3D QUEUE_HEAD(&amp;loop-&gt;cf_signals);<br>
++=C2=A0 =C2=A0 s =3D QUEUE_DATA(q, uv__cf_loop_signal_t, member);<br>
++=C2=A0 =C2=A0 QUEUE_REMOVE(q);<br>
+=C2=A0 =C2=A0 =C2=A0uv__free(s);<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+@@ -735,22 +735,22 @@ static void* uv__cf_loop_runner(void* arg) {<br>
+ static void uv__cf_loop_cb(void* arg) {<br>
+=C2=A0 =C2=A0uv_loop_t* loop;<br>
+=C2=A0 =C2=A0uv__cf_loop_state_t* state;<br>
+-=C2=A0 struct uv__queue* item;<br>
+-=C2=A0 struct uv__queue split_head;<br>
++=C2=A0 QUEUE* item;<br>
++=C2=A0 QUEUE split_head;<br>
+=C2=A0 =C2=A0uv__cf_loop_signal_t* s;<br>
+ <br>
+=C2=A0 =C2=A0loop =3D arg;<br>
+=C2=A0 =C2=A0state =3D loop-&gt;cf_state;<br>
+ <br>
+=C2=A0 =C2=A0uv_mutex_lock(&amp;loop-&gt;cf_mutex);<br>
+-=C2=A0 uv__queue_move(&amp;loop-&gt;cf_signals, &amp;split_head);<br>
++=C2=A0 QUEUE_MOVE(&amp;loop-&gt;cf_signals, &amp;split_head);<br>
+=C2=A0 =C2=A0uv_mutex_unlock(&amp;loop-&gt;cf_mutex);<br>
+ <br>
+-=C2=A0 while (!uv__queue_empty(&amp;split_head)) {<br>
+-=C2=A0 =C2=A0 item =3D uv__queue_head(&amp;split_head);<br>
+-=C2=A0 =C2=A0 uv__queue_remove(item);<br>
++=C2=A0 while (!QUEUE_EMPTY(&amp;split_head)) {<br>
++=C2=A0 =C2=A0 item =3D QUEUE_HEAD(&amp;split_head);<br>
++=C2=A0 =C2=A0 QUEUE_REMOVE(item);<br>
+ <br>
+-=C2=A0 =C2=A0 s =3D uv__queue_data(item, uv__cf_loop_signal_t, member);<b=
r>
++=C2=A0 =C2=A0 s =3D QUEUE_DATA(item, uv__cf_loop_signal_t, member);<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0/* This was a termination signal */<br>
+=C2=A0 =C2=A0 =C2=A0if (s-&gt;handle =3D=3D NULL)<br>
+@@ -778,7 +778,7 @@ int uv__cf_loop_signal(uv_loop_t* loop,<br>
+=C2=A0 =C2=A0item-&gt;type =3D type;<br>
+ <br>
+=C2=A0 =C2=A0uv_mutex_lock(&amp;loop-&gt;cf_mutex);<br>
+-=C2=A0 uv__queue_insert_tail(&amp;loop-&gt;cf_signals, &amp;item-&gt;memb=
er);<br>
++=C2=A0 QUEUE_INSERT_TAIL(&amp;loop-&gt;cf_signals, &amp;item-&gt;member);=
<br>
+ <br>
+=C2=A0 =C2=A0state =3D loop-&gt;cf_state;<br>
+=C2=A0 =C2=A0assert(state !=3D NULL);<br>
+@@ -807,7 +807,7 @@ int uv__fsevents_init(uv_fs_event_t* handle) {<br>
+=C2=A0 =C2=A0handle-&gt;realpath_len =3D strlen(handle-&gt;realpath);<br>
+ <br>
+=C2=A0 =C2=A0/* Initialize event queue */<br>
+-=C2=A0 uv__queue_init(&amp;handle-&gt;cf_events);<br>
++=C2=A0 QUEUE_INIT(&amp;handle-&gt;cf_events);<br>
+=C2=A0 =C2=A0handle-&gt;cf_error =3D 0;<br>
+ <br>
+=C2=A0 =C2=A0/*<br>
+@@ -832,7 +832,7 @@ int uv__fsevents_init(uv_fs_event_t* handle) {<br>
+=C2=A0 =C2=A0/* Insert handle into the list */<br>
+=C2=A0 =C2=A0state =3D handle-&gt;loop-&gt;cf_state;<br>
+=C2=A0 =C2=A0uv_mutex_lock(&amp;state-&gt;fsevent_mutex);<br>
+-=C2=A0 uv__queue_insert_tail(&amp;state-&gt;fsevent_handles, &amp;handle-=
&gt;cf_member);<br>
++=C2=A0 QUEUE_INSERT_TAIL(&amp;state-&gt;fsevent_handles, &amp;handle-&gt;=
cf_member);<br>
+=C2=A0 =C2=A0state-&gt;fsevent_handle_count++;<br>
+=C2=A0 =C2=A0state-&gt;fsevent_need_reschedule =3D 1;<br>
+=C2=A0 =C2=A0uv_mutex_unlock(&amp;state-&gt;fsevent_mutex);<br>
+@@ -872,7 +872,7 @@ int uv__fsevents_close(uv_fs_event_t* handle) {<br>
+=C2=A0 =C2=A0/* Remove handle from=C2=A0 the list */<br>
+=C2=A0 =C2=A0state =3D handle-&gt;loop-&gt;cf_state;<br>
+=C2=A0 =C2=A0uv_mutex_lock(&amp;state-&gt;fsevent_mutex);<br>
+-=C2=A0 uv__queue_remove(&amp;handle-&gt;cf_member);<br>
++=C2=A0 QUEUE_REMOVE(&amp;handle-&gt;cf_member);<br>
+=C2=A0 =C2=A0state-&gt;fsevent_handle_count--;<br>
+=C2=A0 =C2=A0state-&gt;fsevent_need_reschedule =3D 1;<br>
+=C2=A0 =C2=A0uv_mutex_unlock(&amp;state-&gt;fsevent_mutex);<br>
+diff --git a/deps/uv/src/unix/internal.h b/deps/uv/src/unix/internal.h<br>
+index fe588513603..6c5822e6a0d 100644<br>
+--- a/deps/uv/src/unix/internal.h<br>
++++ b/deps/uv/src/unix/internal.h<br>
+@@ -335,30 +335,20 @@ int uv__iou_fs_close(uv_loop_t* loop, uv_fs_t* req);=
<br>
+ int uv__iou_fs_fsync_or_fdatasync(uv_loop_t* loop,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uv_fs_t* req,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uint32_t fsync_flags);<=
br>
+-int uv__iou_fs_link(uv_loop_t* loop, uv_fs_t* req);<br>
+-int uv__iou_fs_mkdir(uv_loop_t* loop, uv_fs_t* req);<br>
+ int uv__iou_fs_open(uv_loop_t* loop, uv_fs_t* req);<br>
+ int uv__iou_fs_read_or_write(uv_loop_t* loop,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uv_fs_t* req,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 int is_read);<br>
+-int uv__iou_fs_rename(uv_loop_t* loop, uv_fs_t* req);<br>
+ int uv__iou_fs_statx(uv_loop_t* loop,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 uv_fs_t* req,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 int is_fstat,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 int is_lstat);<br>
+-int uv__iou_fs_symlink(uv_loop_t* loop, uv_fs_t* req);<br>
+-int uv__iou_fs_unlink(uv_loop_t* loop, uv_fs_t* req);<br>
+ #else<br>
+ #define uv__iou_fs_close(loop, req) 0<br>
+ #define uv__iou_fs_fsync_or_fdatasync(loop, req, fsync_flags) 0<br>
+-#define uv__iou_fs_link(loop, req) 0<br>
+-#define uv__iou_fs_mkdir(loop, req) 0<br>
+ #define uv__iou_fs_open(loop, req) 0<br>
+ #define uv__iou_fs_read_or_write(loop, req, is_read) 0<br>
+-#define uv__iou_fs_rename(loop, req) 0<br>
+ #define uv__iou_fs_statx(loop, req, is_fstat, is_lstat) 0<br>
+-#define uv__iou_fs_symlink(loop, req) 0<br>
+-#define uv__iou_fs_unlink(loop, req) 0<br>
+ #endif<br>
+ <br>
+ #if defined(__APPLE__)<br>
+@@ -439,7 +429,6 @@ int uv__statx(int dirfd,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct uv__statx* s=
tatxbuf);<br>
+ void uv__statx_to_stat(const struct uv__statx* statxbuf, uv_stat_t* buf);=
<br>
+ ssize_t uv__getrandom(void* buf, size_t buflen, unsigned flags);<br>
+-unsigned uv__kernel_version(void);<br>
+ #endif<br>
+ <br>
+ typedef int (*uv__peersockfunc)(int, struct sockaddr*, socklen_t*);<br>
+diff --git a/deps/uv/src/unix/kqueue.c b/deps/uv/src/unix/kqueue.c<br>
+index b78242d3be4..82916d65933 100644<br>
+--- a/deps/uv/src/unix/kqueue.c<br>
++++ b/deps/uv/src/unix/kqueue.c<br>
+@@ -133,7 +133,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {<br>
+=C2=A0 =C2=A0struct timespec spec;<br>
+=C2=A0 =C2=A0unsigned int nevents;<br>
+=C2=A0 =C2=A0unsigned int revents;<br>
+-=C2=A0 struct uv__queue* q;<br>
++=C2=A0 QUEUE* q;<br>
+=C2=A0 =C2=A0uv__io_t* w;<br>
+=C2=A0 =C2=A0uv_process_t* process;<br>
+=C2=A0 =C2=A0sigset_t* pset;<br>
+@@ -152,19 +152,19 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {<br>
+=C2=A0 =C2=A0int reset_timeout;<br>
+ <br>
+=C2=A0 =C2=A0if (loop-&gt;nfds =3D=3D 0) {<br>
+-=C2=A0 =C2=A0 assert(uv__queue_empty(&amp;loop-&gt;watcher_queue));<br>
++=C2=A0 =C2=A0 assert(QUEUE_EMPTY(&amp;loop-&gt;watcher_queue));<br>
+=C2=A0 =C2=A0 =C2=A0return;<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+=C2=A0 =C2=A0lfields =3D uv__get_internal_fields(loop);<br>
+=C2=A0 =C2=A0nevents =3D 0;<br>
+ <br>
+-=C2=A0 while (!uv__queue_empty(&amp;loop-&gt;watcher_queue)) {<br>
+-=C2=A0 =C2=A0 q =3D uv__queue_head(&amp;loop-&gt;watcher_queue);<br>
+-=C2=A0 =C2=A0 uv__queue_remove(q);<br>
+-=C2=A0 =C2=A0 uv__queue_init(q);<br>
++=C2=A0 while (!QUEUE_EMPTY(&amp;loop-&gt;watcher_queue)) {<br>
++=C2=A0 =C2=A0 q =3D QUEUE_HEAD(&amp;loop-&gt;watcher_queue);<br>
++=C2=A0 =C2=A0 QUEUE_REMOVE(q);<br>
++=C2=A0 =C2=A0 QUEUE_INIT(q);<br>
+ <br>
+-=C2=A0 =C2=A0 w =3D uv__queue_data(q, uv__io_t, watcher_queue);<br>
++=C2=A0 =C2=A0 w =3D QUEUE_DATA(q, uv__io_t, watcher_queue);<br>
+=C2=A0 =C2=A0 =C2=A0assert(w-&gt;pevents !=3D 0);<br>
+=C2=A0 =C2=A0 =C2=A0assert(w-&gt;fd &gt;=3D 0);<br>
+=C2=A0 =C2=A0 =C2=A0assert(w-&gt;fd &lt; (int) loop-&gt;nwatchers);<br>
+@@ -307,8 +307,8 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Handle kevent NOTE_EXIT results */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (ev-&gt;filter =3D=3D EVFILT_PROC) {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 uv__queue_foreach(q, &amp;loop-&gt;process_ha=
ndles) {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 process =3D uv__queue_data(q, uv_proce=
ss_t, queue);<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 QUEUE_FOREACH(q, &amp;loop-&gt;process_handle=
s) {<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 process =3D QUEUE_DATA(q, uv_process_t=
, queue);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (process-&gt;pid =3D=3D fd) {<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0process-&gt;flags |=3D UV_=
HANDLE_REAP;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0loop-&gt;flags |=3D UV_LOO=
P_REAP_CHILDREN;<br>
+diff --git a/deps/uv/src/unix/linux.c b/deps/uv/src/unix/linux.c<br>
+index 48b9c2c43e1..5f84ad0eea3 100644<br>
+--- a/deps/uv/src/unix/linux.c<br>
++++ b/deps/uv/src/unix/linux.c<br>
+@@ -48,7 +48,6 @@<br>
+ #include &lt;sys/sysinfo.h&gt;<br>
+ #include &lt;sys/sysmacros.h&gt;<br>
+ #include &lt;sys/types.h&gt;<br>
+-#include &lt;sys/utsname.h&gt;<br>
+ #include &lt;time.h&gt;<br>
+ #include &lt;unistd.h&gt;<br>
+ <br>
+@@ -151,11 +150,6 @@ enum {<br>
+=C2=A0 =C2=A0UV__IORING_OP_CLOSE =3D 19,<br>
+=C2=A0 =C2=A0UV__IORING_OP_STATX =3D 21,<br>
+=C2=A0 =C2=A0UV__IORING_OP_EPOLL_CTL =3D 29,<br>
+-=C2=A0 UV__IORING_OP_RENAMEAT =3D 35,<br>
+-=C2=A0 UV__IORING_OP_UNLINKAT =3D 36,<br>
+-=C2=A0 UV__IORING_OP_MKDIRAT =3D 37,<br>
+-=C2=A0 UV__IORING_OP_SYMLINKAT =3D 38,<br>
+-=C2=A0 UV__IORING_OP_LINKAT =3D 39,<br>
+ };<br>
+ <br>
+ enum {<br>
+@@ -168,10 +162,6 @@ enum {<br>
+=C2=A0 =C2=A0UV__IORING_SQ_CQ_OVERFLOW =3D 2u,<br>
+ };<br>
+ <br>
+-enum {<br>
+-=C2=A0 UV__MKDIRAT_SYMLINKAT_LINKAT =3D 1u,<br>
+-};<br>
+-<br>
+ struct uv__io_cqring_offsets {<br>
+=C2=A0 =C2=A0uint32_t head;<br>
+=C2=A0 =C2=A0uint32_t tail;<br>
+@@ -267,7 +257,7 @@ STATIC_ASSERT(EPOLL_CTL_MOD &lt; 4);<br>
+ <br>
+ struct watcher_list {<br>
+=C2=A0 =C2=A0RB_ENTRY(watcher_list) entry;<br>
+-=C2=A0 struct uv__queue watchers;<br>
++=C2=A0 QUEUE watchers;<br>
+=C2=A0 =C2=A0int iterating;<br>
+=C2=A0 =C2=A0char* path;<br>
+=C2=A0 =C2=A0int wd;<br>
+@@ -310,31 +300,6 @@ static struct watcher_root* uv__inotify_watchers(uv_l=
oop_t* loop) {<br>
+ }<br>
+ <br>
+ <br>
+-unsigned uv__kernel_version(void) {<br>
+-=C2=A0 static _Atomic unsigned cached_version;<br>
+-=C2=A0 struct utsname u;<br>
+-=C2=A0 unsigned version;<br>
+-=C2=A0 unsigned major;<br>
+-=C2=A0 unsigned minor;<br>
+-=C2=A0 unsigned patch;<br>
+-<br>
+-=C2=A0 version =3D atomic_load_explicit(&amp;cached_version, memory_order=
_relaxed);<br>
+-=C2=A0 if (version !=3D 0)<br>
+-=C2=A0 =C2=A0 return version;<br>
+-<br>
+-=C2=A0 if (-1 =3D=3D uname(&amp;u))<br>
+-=C2=A0 =C2=A0 return 0;<br>
+-<br>
+-=C2=A0 if (3 !=3D sscanf(u.release, &quot;%u.%u.%u&quot;, &amp;major, &am=
p;minor, &amp;patch))<br>
+-=C2=A0 =C2=A0 return 0;<br>
+-<br>
+-=C2=A0 version =3D major * 65536 + minor * 256 + patch;<br>
+-=C2=A0 atomic_store_explicit(&amp;cached_version, version, memory_order_r=
elaxed);<br>
+-<br>
+-=C2=A0 return version;<br>
+-}<br>
+-<br>
+-<br>
+ ssize_t<br>
+ uv__fs_copy_file_range(int fd_in,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 off_t* off_in,<br>
+@@ -420,9 +385,6 @@ int uv__io_uring_register(int fd, unsigned opcode, voi=
d* arg, unsigned nargs) {<br>
+ <br>
+ <br>
+ static int uv__use_io_uring(void) {<br>
+-#if defined(__ANDROID_API__)<br>
+-=C2=A0 return 0;=C2=A0 /* Possibly available but blocked by seccomp. */<b=
r>
+-#else<br>
+=C2=A0 =C2=A0/* Ternary: unknown=3D0, yes=3D1, no=3D-1 */<br>
+=C2=A0 =C2=A0static _Atomic int use_io_uring;<br>
+=C2=A0 =C2=A0char* val;<br>
+@@ -437,7 +399,6 @@ static int uv__use_io_uring(void) {<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+=C2=A0 =C2=A0return use &gt; 0;<br>
+-#endif<br>
+ }<br>
+ <br>
+ <br>
+@@ -542,10 +503,6 @@ static void uv__iou_init(int epollfd,<br>
+=C2=A0 =C2=A0iou-&gt;sqelen =3D sqelen;<br>
+=C2=A0 =C2=A0iou-&gt;ringfd =3D ringfd;<br>
+=C2=A0 =C2=A0iou-&gt;in_flight =3D 0;<br>
+-=C2=A0 iou-&gt;flags =3D 0;<br>
+-<br>
+-=C2=A0 if (uv__kernel_version() &gt;=3D /* 5.15.0 */ 0x050F00)<br>
+-=C2=A0 =C2=A0 iou-&gt;flags |=3D UV__MKDIRAT_SYMLINKAT_LINKAT;<br>
+ <br>
+=C2=A0 =C2=A0for (i =3D 0; i &lt;=3D iou-&gt;sqmask; i++)<br>
+=C2=A0 =C2=A0 =C2=A0iou-&gt;sqarray[i] =3D i;=C2=A0 /* Slot -&gt; sqe iden=
tity mapping. */<br>
+@@ -727,7 +684,7 @@ static struct uv__io_uring_sqe* uv__iou_get_sqe(struct=
 uv__iou* iou,<br>
+=C2=A0 =C2=A0req-&gt;work_req.loop =3D loop;<br>
+=C2=A0 =C2=A0req-&gt;<a href=3D"http://work_req.work" rel=3D"noreferrer" t=
arget=3D"_blank">work_req.work</a> =3D NULL;<br>
+=C2=A0 =C2=A0req-&gt;work_req.done =3D NULL;<br>
+-=C2=A0 uv__queue_init(&amp;req-&gt;work_req.wq);<br>
++=C2=A0 QUEUE_INIT(&amp;req-&gt;work_req.wq);<br>
+ <br>
+=C2=A0 =C2=A0uv__req_register(loop, req);<br>
+=C2=A0 =C2=A0iou-&gt;in_flight++;<br>
+@@ -757,17 +714,6 @@ int uv__iou_fs_close(uv_loop_t* loop, uv_fs_t* req) {=
<br>
+=C2=A0 =C2=A0struct uv__io_uring_sqe* sqe;<br>
+=C2=A0 =C2=A0struct uv__iou* iou;<br>
+ <br>
+-=C2=A0 /* Work around a poorly understood bug in older kernels where clos=
ing a file<br>
+-=C2=A0 =C2=A0* descriptor pointing to /foo/bar results in ETXTBSY errors =
when trying to<br>
+-=C2=A0 =C2=A0* execve(&quot;/foo/bar&quot;) later on. The bug seems to ha=
ve been fixed somewhere<br>
+-=C2=A0 =C2=A0* between 5.15.85 and 5.15.90. I couldn&#39;t pinpoint the r=
esponsible commit<br>
+-=C2=A0 =C2=A0* but good candidates are the several data race fixes. Inter=
estingly, it<br>
+-=C2=A0 =C2=A0* seems to manifest only when running under Docker so the po=
ssibility of<br>
+-=C2=A0 =C2=A0* a Docker bug can&#39;t be completely ruled out either. Yay=
, computers.<br>
+-=C2=A0 =C2=A0*/<br>
+-=C2=A0 if (uv__kernel_version() &lt; /* 5.15.90 */ 0x050F5A)<br>
+-=C2=A0 =C2=A0 return 0;<br>
+-<br>
+=C2=A0 =C2=A0iou =3D &amp;uv__get_internal_fields(loop)-&gt;iou;<br>
+ <br>
+=C2=A0 =C2=A0sqe =3D uv__iou_get_sqe(iou, loop, req);<br>
+@@ -808,55 +754,6 @@ int uv__iou_fs_fsync_or_fdatasync(uv_loop_t* loop,<br=
>
+ }<br>
+ <br>
+ <br>
+-int uv__iou_fs_link(uv_loop_t* loop, uv_fs_t* req) {<br>
+-=C2=A0 struct uv__io_uring_sqe* sqe;<br>
+-=C2=A0 struct uv__iou* iou;<br>
+-<br>
+-=C2=A0 iou =3D &amp;uv__get_internal_fields(loop)-&gt;iou;<br>
+-<br>
+-=C2=A0 if (!(iou-&gt;flags &amp; UV__MKDIRAT_SYMLINKAT_LINKAT))<br>
+-=C2=A0 =C2=A0 return 0;<br>
+-<br>
+-=C2=A0 sqe =3D uv__iou_get_sqe(iou, loop, req);<br>
+-=C2=A0 if (sqe =3D=3D NULL)<br>
+-=C2=A0 =C2=A0 return 0;<br>
+-<br>
+-=C2=A0 sqe-&gt;addr =3D (uintptr_t) req-&gt;path;<br>
+-=C2=A0 sqe-&gt;fd =3D AT_FDCWD;<br>
+-=C2=A0 sqe-&gt;addr2 =3D (uintptr_t) req-&gt;new_path;<br>
+-=C2=A0 sqe-&gt;len =3D AT_FDCWD;<br>
+-=C2=A0 sqe-&gt;opcode =3D UV__IORING_OP_LINKAT;<br>
+-<br>
+-=C2=A0 uv__iou_submit(iou);<br>
+-<br>
+-=C2=A0 return 1;<br>
+-}<br>
+-<br>
+-<br>
+-int uv__iou_fs_mkdir(uv_loop_t* loop, uv_fs_t* req) {<br>
+-=C2=A0 struct uv__io_uring_sqe* sqe;<br>
+-=C2=A0 struct uv__iou* iou;<br>
+-<br>
+-=C2=A0 iou =3D &amp;uv__get_internal_fields(loop)-&gt;iou;<br>
+-<br>
+-=C2=A0 if (!(iou-&gt;flags &amp; UV__MKDIRAT_SYMLINKAT_LINKAT))<br>
+-=C2=A0 =C2=A0 return 0;<br>
+-<br>
+-=C2=A0 sqe =3D uv__iou_get_sqe(iou, loop, req);<br>
+-=C2=A0 if (sqe =3D=3D NULL)<br>
+-=C2=A0 =C2=A0 return 0;<br>
+-<br>
+-=C2=A0 sqe-&gt;addr =3D (uintptr_t) req-&gt;path;<br>
+-=C2=A0 sqe-&gt;fd =3D AT_FDCWD;<br>
+-=C2=A0 sqe-&gt;len =3D req-&gt;mode;<br>
+-=C2=A0 sqe-&gt;opcode =3D UV__IORING_OP_MKDIRAT;<br>
+-<br>
+-=C2=A0 uv__iou_submit(iou);<br>
+-<br>
+-=C2=A0 return 1;<br>
+-}<br>
+-<br>
+-<br>
+ int uv__iou_fs_open(uv_loop_t* loop, uv_fs_t* req) {<br>
+=C2=A0 =C2=A0struct uv__io_uring_sqe* sqe;<br>
+=C2=A0 =C2=A0struct uv__iou* iou;<br>
+@@ -879,86 +776,16 @@ int uv__iou_fs_open(uv_loop_t* loop, uv_fs_t* req) {=
<br>
+ }<br>
+ <br>
+ <br>
+-int uv__iou_fs_rename(uv_loop_t* loop, uv_fs_t* req) {<br>
+-=C2=A0 struct uv__io_uring_sqe* sqe;<br>
+-=C2=A0 struct uv__iou* iou;<br>
+-<br>
+-=C2=A0 iou =3D &amp;uv__get_internal_fields(loop)-&gt;iou;<br>
+-<br>
+-=C2=A0 sqe =3D uv__iou_get_sqe(iou, loop, req);<br>
+-=C2=A0 if (sqe =3D=3D NULL)<br>
+-=C2=A0 =C2=A0 return 0;<br>
+-<br>
+-=C2=A0 sqe-&gt;addr =3D (uintptr_t) req-&gt;path;<br>
+-=C2=A0 sqe-&gt;fd =3D AT_FDCWD;<br>
+-=C2=A0 sqe-&gt;addr2 =3D (uintptr_t) req-&gt;new_path;<br>
+-=C2=A0 sqe-&gt;len =3D AT_FDCWD;<br>
+-=C2=A0 sqe-&gt;opcode =3D UV__IORING_OP_RENAMEAT;<br>
+-<br>
+-=C2=A0 uv__iou_submit(iou);<br>
+-<br>
+-=C2=A0 return 1;<br>
+-}<br>
+-<br>
+-<br>
+-int uv__iou_fs_symlink(uv_loop_t* loop, uv_fs_t* req) {<br>
+-=C2=A0 struct uv__io_uring_sqe* sqe;<br>
+-=C2=A0 struct uv__iou* iou;<br>
+-<br>
+-=C2=A0 iou =3D &amp;uv__get_internal_fields(loop)-&gt;iou;<br>
+-<br>
+-=C2=A0 if (!(iou-&gt;flags &amp; UV__MKDIRAT_SYMLINKAT_LINKAT))<br>
+-=C2=A0 =C2=A0 return 0;<br>
+-<br>
+-=C2=A0 sqe =3D uv__iou_get_sqe(iou, loop, req);<br>
+-=C2=A0 if (sqe =3D=3D NULL)<br>
+-=C2=A0 =C2=A0 return 0;<br>
+-<br>
+-=C2=A0 sqe-&gt;addr =3D (uintptr_t) req-&gt;path;<br>
+-=C2=A0 sqe-&gt;fd =3D AT_FDCWD;<br>
+-=C2=A0 sqe-&gt;addr2 =3D (uintptr_t) req-&gt;new_path;<br>
+-=C2=A0 sqe-&gt;opcode =3D UV__IORING_OP_SYMLINKAT;<br>
+-<br>
+-=C2=A0 uv__iou_submit(iou);<br>
+-<br>
+-=C2=A0 return 1;<br>
+-}<br>
+-<br>
+-<br>
+-int uv__iou_fs_unlink(uv_loop_t* loop, uv_fs_t* req) {<br>
+-=C2=A0 struct uv__io_uring_sqe* sqe;<br>
+-=C2=A0 struct uv__iou* iou;<br>
+-<br>
+-=C2=A0 iou =3D &amp;uv__get_internal_fields(loop)-&gt;iou;<br>
+-<br>
+-=C2=A0 sqe =3D uv__iou_get_sqe(iou, loop, req);<br>
+-=C2=A0 if (sqe =3D=3D NULL)<br>
+-=C2=A0 =C2=A0 return 0;<br>
+-<br>
+-=C2=A0 sqe-&gt;addr =3D (uintptr_t) req-&gt;path;<br>
+-=C2=A0 sqe-&gt;fd =3D AT_FDCWD;<br>
+-=C2=A0 sqe-&gt;opcode =3D UV__IORING_OP_UNLINKAT;<br>
+-<br>
+-=C2=A0 uv__iou_submit(iou);<br>
+-<br>
+-=C2=A0 return 1;<br>
+-}<br>
+-<br>
+-<br>
+ int uv__iou_fs_read_or_write(uv_loop_t* loop,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uv_fs_t* req,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 int is_read) {<br>
+=C2=A0 =C2=A0struct uv__io_uring_sqe* sqe;<br>
+=C2=A0 =C2=A0struct uv__iou* iou;<br>
+ <br>
+-=C2=A0 /* If iovcnt is greater than IOV_MAX, cap it to IOV_MAX on reads a=
nd fallback<br>
+-=C2=A0 =C2=A0* to the threadpool on writes */<br>
+-=C2=A0 if (req-&gt;nbufs &gt; IOV_MAX) {<br>
+-=C2=A0 =C2=A0 if (is_read)<br>
+-=C2=A0 =C2=A0 =C2=A0 req-&gt;nbufs =3D IOV_MAX;<br>
+-=C2=A0 =C2=A0 else<br>
+-=C2=A0 =C2=A0 =C2=A0 return 0;<br>
+-=C2=A0 }<br>
++=C2=A0 /* For the moment, if iovcnt is greater than IOV_MAX, fallback to =
the<br>
++=C2=A0 =C2=A0* threadpool. In the future we might take advantage of IOSQE=
_IO_LINK. */<br>
++=C2=A0 if (req-&gt;nbufs &gt; IOV_MAX)<br>
++=C2=A0 =C2=A0 return 0;<br>
+ <br>
+=C2=A0 =C2=A0iou =3D &amp;uv__get_internal_fields(loop)-&gt;iou;<br>
+ <br>
+@@ -1265,7 +1092,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {<br>
+=C2=A0 =C2=A0struct uv__iou* ctl;<br>
+=C2=A0 =C2=A0struct uv__iou* iou;<br>
+=C2=A0 =C2=A0int real_timeout;<br>
+-=C2=A0 struct uv__queue* q;<br>
++=C2=A0 QUEUE* q;<br>
+=C2=A0 =C2=A0uv__io_t* w;<br>
+=C2=A0 =C2=A0sigset_t* sigmask;<br>
+=C2=A0 =C2=A0sigset_t sigset;<br>
+@@ -1311,11 +1138,11 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {<b=
r>
+ <br>
+=C2=A0 =C2=A0memset(&amp;e, 0, sizeof(e));<br>
+ <br>
+-=C2=A0 while (!uv__queue_empty(&amp;loop-&gt;watcher_queue)) {<br>
+-=C2=A0 =C2=A0 q =3D uv__queue_head(&amp;loop-&gt;watcher_queue);<br>
+-=C2=A0 =C2=A0 w =3D uv__queue_data(q, uv__io_t, watcher_queue);<br>
+-=C2=A0 =C2=A0 uv__queue_remove(q);<br>
+-=C2=A0 =C2=A0 uv__queue_init(q);<br>
++=C2=A0 while (!QUEUE_EMPTY(&amp;loop-&gt;watcher_queue)) {<br>
++=C2=A0 =C2=A0 q =3D QUEUE_HEAD(&amp;loop-&gt;watcher_queue);<br>
++=C2=A0 =C2=A0 w =3D QUEUE_DATA(q, uv__io_t, watcher_queue);<br>
++=C2=A0 =C2=A0 QUEUE_REMOVE(q);<br>
++=C2=A0 =C2=A0 QUEUE_INIT(q);<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0op =3D EPOLL_CTL_MOD;<br>
+=C2=A0 =C2=A0 =C2=A0if (w-&gt;events =3D=3D 0)<br>
+@@ -2272,8 +2099,8 @@ static int uv__inotify_fork(uv_loop_t* loop, struct =
watcher_list* root) {<br>
+=C2=A0 =C2=A0struct watcher_list* tmp_watcher_list_iter;<br>
+=C2=A0 =C2=A0struct watcher_list* watcher_list;<br>
+=C2=A0 =C2=A0struct watcher_list tmp_watcher_list;<br>
+-=C2=A0 struct uv__queue queue;<br>
+-=C2=A0 struct uv__queue* q;<br>
++=C2=A0 QUEUE queue;<br>
++=C2=A0 QUEUE* q;<br>
+=C2=A0 =C2=A0uv_fs_event_t* handle;<br>
+=C2=A0 =C2=A0char* tmp_path;<br>
+ <br>
+@@ -2285,41 +2112,41 @@ static int uv__inotify_fork(uv_loop_t* loop, struc=
t watcher_list* root) {<br>
+=C2=A0 =C2=A0 */<br>
+=C2=A0 =C2=A0loop-&gt;inotify_watchers =3D root;<br>
+ <br>
+-=C2=A0 uv__queue_init(&amp;tmp_watcher_list.watchers);<br>
++=C2=A0 QUEUE_INIT(&amp;tmp_watcher_list.watchers);<br>
+=C2=A0 =C2=A0/* Note that the queue we use is shared with the start and st=
op()<br>
+-=C2=A0 =C2=A0* functions, making uv__queue_foreach unsafe to use. So we u=
se the<br>
+-=C2=A0 =C2=A0* uv__queue_move trick to safely iterate. Also don&#39;t fre=
e the watcher<br>
++=C2=A0 =C2=A0* functions, making QUEUE_FOREACH unsafe to use. So we use t=
he<br>
++=C2=A0 =C2=A0* QUEUE_MOVE trick to safely iterate. Also don&#39;t free th=
e watcher<br>
+=C2=A0 =C2=A0 * list until we&#39;re done iterating. c.f. uv__inotify_read=
.<br>
+=C2=A0 =C2=A0 */<br>
+=C2=A0 =C2=A0RB_FOREACH_SAFE(watcher_list, watcher_root,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uv__i=
notify_watchers(loop), tmp_watcher_list_iter) {<br>
+=C2=A0 =C2=A0 =C2=A0watcher_list-&gt;iterating =3D 1;<br>
+-=C2=A0 =C2=A0 uv__queue_move(&amp;watcher_list-&gt;watchers, &amp;queue);=
<br>
+-=C2=A0 =C2=A0 while (!uv__queue_empty(&amp;queue)) {<br>
+-=C2=A0 =C2=A0 =C2=A0 q =3D uv__queue_head(&amp;queue);<br>
+-=C2=A0 =C2=A0 =C2=A0 handle =3D uv__queue_data(q, uv_fs_event_t, watchers=
);<br>
++=C2=A0 =C2=A0 QUEUE_MOVE(&amp;watcher_list-&gt;watchers, &amp;queue);<br>
++=C2=A0 =C2=A0 while (!QUEUE_EMPTY(&amp;queue)) {<br>
++=C2=A0 =C2=A0 =C2=A0 q =3D QUEUE_HEAD(&amp;queue);<br>
++=C2=A0 =C2=A0 =C2=A0 handle =3D QUEUE_DATA(q, uv_fs_event_t, watchers);<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/* It&#39;s critical to keep a copy of path her=
e, because it<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * will be set to NULL by stop() and then deall=
ocated by<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * maybe_free_watcher_list<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0tmp_path =3D uv__strdup(handle-&gt;path);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0assert(tmp_path !=3D NULL);<br>
+-=C2=A0 =C2=A0 =C2=A0 uv__queue_remove(q);<br>
+-=C2=A0 =C2=A0 =C2=A0 uv__queue_insert_tail(&amp;watcher_list-&gt;watchers=
, q);<br>
++=C2=A0 =C2=A0 =C2=A0 QUEUE_REMOVE(q);<br>
++=C2=A0 =C2=A0 =C2=A0 QUEUE_INSERT_TAIL(&amp;watcher_list-&gt;watchers, q)=
;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0uv_fs_event_stop(handle);<br>
+ <br>
+-=C2=A0 =C2=A0 =C2=A0 uv__queue_insert_tail(&amp;tmp_watcher_list.watchers=
, &amp;handle-&gt;watchers);<br>
++=C2=A0 =C2=A0 =C2=A0 QUEUE_INSERT_TAIL(&amp;tmp_watcher_list.watchers, &a=
mp;handle-&gt;watchers);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0handle-&gt;path =3D tmp_path;<br>
+=C2=A0 =C2=A0 =C2=A0}<br>
+=C2=A0 =C2=A0 =C2=A0watcher_list-&gt;iterating =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0maybe_free_watcher_list(watcher_list, loop);<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+-=C2=A0 uv__queue_move(&amp;tmp_watcher_list.watchers, &amp;queue);<br>
+-=C2=A0 while (!uv__queue_empty(&amp;queue)) {<br>
+-=C2=A0 =C2=A0 =C2=A0 q =3D uv__queue_head(&amp;queue);<br>
+-=C2=A0 =C2=A0 =C2=A0 uv__queue_remove(q);<br>
+-=C2=A0 =C2=A0 =C2=A0 handle =3D uv__queue_data(q, uv_fs_event_t, watchers=
);<br>
++=C2=A0 QUEUE_MOVE(&amp;tmp_watcher_list.watchers, &amp;queue);<br>
++=C2=A0 while (!QUEUE_EMPTY(&amp;queue)) {<br>
++=C2=A0 =C2=A0 =C2=A0 q =3D QUEUE_HEAD(&amp;queue);<br>
++=C2=A0 =C2=A0 =C2=A0 QUEUE_REMOVE(q);<br>
++=C2=A0 =C2=A0 =C2=A0 handle =3D QUEUE_DATA(q, uv_fs_event_t, watchers);<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0tmp_path =3D handle-&gt;path;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0handle-&gt;path =3D NULL;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0err =3D uv_fs_event_start(handle, handle-&gt;cb=
, tmp_path, 0);<br>
+@@ -2341,7 +2168,7 @@ static struct watcher_list* find_watcher(uv_loop_t* =
loop, int wd) {<br>
+ <br>
+ static void maybe_free_watcher_list(struct watcher_list* w, uv_loop_t* lo=
op) {<br>
+=C2=A0 =C2=A0/* if the watcher_list-&gt;watchers is being iterated over, w=
e can&#39;t free it. */<br>
+-=C2=A0 if ((!w-&gt;iterating) &amp;&amp; uv__queue_empty(&amp;w-&gt;watch=
ers)) {<br>
++=C2=A0 if ((!w-&gt;iterating) &amp;&amp; QUEUE_EMPTY(&amp;w-&gt;watchers)=
) {<br>
+=C2=A0 =C2=A0 =C2=A0/* No watchers left for this path. Clean up. */<br>
+=C2=A0 =C2=A0 =C2=A0RB_REMOVE(watcher_root, uv__inotify_watchers(loop), w)=
;<br>
+=C2=A0 =C2=A0 =C2=A0inotify_rm_watch(loop-&gt;inotify_fd, w-&gt;wd);<br>
+@@ -2356,8 +2183,8 @@ static void uv__inotify_read(uv_loop_t* loop,<br>
+=C2=A0 =C2=A0const struct inotify_event* e;<br>
+=C2=A0 =C2=A0struct watcher_list* w;<br>
+=C2=A0 =C2=A0uv_fs_event_t* h;<br>
+-=C2=A0 struct uv__queue queue;<br>
+-=C2=A0 struct uv__queue* q;<br>
++=C2=A0 QUEUE queue;<br>
++=C2=A0 QUEUE* q;<br>
+=C2=A0 =C2=A0const char* path;<br>
+=C2=A0 =C2=A0ssize_t size;<br>
+=C2=A0 =C2=A0const char *p;<br>
+@@ -2400,7 +2227,7 @@ static void uv__inotify_read(uv_loop_t* loop,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * What can go wrong?<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * A callback could call uv_fs_event_stop()<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * and the queue can change under our feet.<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0* So, we use uv__queue_move() trick to safely =
iterate over the queue.<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0* So, we use QUEUE_MOVE() trick to safely iter=
ate over the queue.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * And we don&#39;t free the watcher_list until=
 we&#39;re done iterating.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 *<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * First,<br>
+@@ -2408,13 +2235,13 @@ static void uv__inotify_read(uv_loop_t* loop,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * not to free watcher_list.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0w-&gt;iterating =3D 1;<br>
+-=C2=A0 =C2=A0 =C2=A0 uv__queue_move(&amp;w-&gt;watchers, &amp;queue);<br>
+-=C2=A0 =C2=A0 =C2=A0 while (!uv__queue_empty(&amp;queue)) {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 q =3D uv__queue_head(&amp;queue);<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 h =3D uv__queue_data(q, uv_fs_event_t, watche=
rs);<br>
++=C2=A0 =C2=A0 =C2=A0 QUEUE_MOVE(&amp;w-&gt;watchers, &amp;queue);<br>
++=C2=A0 =C2=A0 =C2=A0 while (!QUEUE_EMPTY(&amp;queue)) {<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 q =3D QUEUE_HEAD(&amp;queue);<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 h =3D QUEUE_DATA(q, uv_fs_event_t, watchers);=
<br>
+ <br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 uv__queue_remove(q);<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 uv__queue_insert_tail(&amp;w-&gt;watchers, q)=
;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 QUEUE_REMOVE(q);<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 QUEUE_INSERT_TAIL(&amp;w-&gt;watchers, q);<br=
>
+ <br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0h-&gt;cb(h, path, events, 0);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+@@ -2476,13 +2303,13 @@ int uv_fs_event_start(uv_fs_event_t* handle,<br>
+ <br>
+=C2=A0 =C2=A0w-&gt;wd =3D wd;<br>
+=C2=A0 =C2=A0w-&gt;path =3D memcpy(w + 1, path, len);<br>
+-=C2=A0 uv__queue_init(&amp;w-&gt;watchers);<br>
++=C2=A0 QUEUE_INIT(&amp;w-&gt;watchers);<br>
+=C2=A0 =C2=A0w-&gt;iterating =3D 0;<br>
+=C2=A0 =C2=A0RB_INSERT(watcher_root, uv__inotify_watchers(loop), w);<br>
+ <br>
+ no_insert:<br>
+=C2=A0 =C2=A0uv__handle_start(handle);<br>
+-=C2=A0 uv__queue_insert_tail(&amp;w-&gt;watchers, &amp;handle-&gt;watcher=
s);<br>
++=C2=A0 QUEUE_INSERT_TAIL(&amp;w-&gt;watchers, &amp;handle-&gt;watchers);<=
br>
+=C2=A0 =C2=A0handle-&gt;path =3D w-&gt;path;<br>
+=C2=A0 =C2=A0handle-&gt;cb =3D cb;<br>
+=C2=A0 =C2=A0handle-&gt;wd =3D wd;<br>
+@@ -2503,7 +2330,7 @@ int uv_fs_event_stop(uv_fs_event_t* handle) {<br>
+=C2=A0 =C2=A0handle-&gt;wd =3D -1;<br>
+=C2=A0 =C2=A0handle-&gt;path =3D NULL;<br>
+=C2=A0 =C2=A0uv__handle_stop(handle);<br>
+-=C2=A0 uv__queue_remove(&amp;handle-&gt;watchers);<br>
++=C2=A0 QUEUE_REMOVE(&amp;handle-&gt;watchers);<br>
+ <br>
+=C2=A0 =C2=A0maybe_free_watcher_list(w, handle-&gt;loop);<br>
+ <br>
+diff --git a/deps/uv/src/unix/loop-watcher.c b/deps/uv/src/unix/loop-watch=
er.c<br>
+index 2db8b515df7..b8c1c2a7102 100644<br>
+--- a/deps/uv/src/unix/loop-watcher.c<br>
++++ b/deps/uv/src/unix/loop-watcher.c<br>
+@@ -32,7 +32,7 @@<br>
+=C2=A0 =C2=A0int uv_##name##_start(uv_##name##_t* handle, uv_##name##_cb c=
b) {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0if (uv__is_active(handle)) return 0;=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0if (cb =3D=3D NULL) return UV_EINVAL;=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+-=C2=A0 =C2=A0 uv__queue_insert_head(&amp;handle-&gt;loop-&gt;name##_handl=
es, &amp;handle-&gt;queue);=C2=A0 =C2=A0 =C2=A0\<br>
++=C2=A0 =C2=A0 QUEUE_INSERT_HEAD(&amp;handle-&gt;loop-&gt;name##_handles, =
&amp;handle-&gt;queue);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0handle-&gt;name##_cb =3D cb;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0uv__handle_start(handle);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<=
br>
+=C2=A0 =C2=A0 =C2=A0return 0;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+@@ -40,21 +40,21 @@<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0int uv_##name##_stop(uv_##name##_t* handle) {=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0if (!uv__is_active(handle)) return 0;=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+-=C2=A0 =C2=A0 uv__queue_remove(&amp;handle-&gt;queue);=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
++=C2=A0 =C2=A0 QUEUE_REMOVE(&amp;handle-&gt;queue);=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0uv__handle_stop(handle);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \=
<br>
+=C2=A0 =C2=A0 =C2=A0return 0;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0}=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0void uv__run_##name(uv_loop_t* loop) {=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0uv_##name##_t* h;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0\<br>
+-=C2=A0 =C2=A0 struct uv__queue queue;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<=
br>
+-=C2=A0 =C2=A0 struct uv__queue* q;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 \<br>
+-=C2=A0 =C2=A0 uv__queue_move(&amp;loop-&gt;name##_handles, &amp;queue);=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+-=C2=A0 =C2=A0 while (!uv__queue_empty(&amp;queue)) {=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+-=C2=A0 =C2=A0 =C2=A0 q =3D uv__queue_head(&amp;queue);=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+-=C2=A0 =C2=A0 =C2=A0 h =3D uv__queue_data(q, uv_##name##_t, queue);=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 \<br>
+-=C2=A0 =C2=A0 =C2=A0 uv__queue_remove(q);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 \<br>
+-=C2=A0 =C2=A0 =C2=A0 uv__queue_insert_tail(&amp;loop-&gt;name##_handles, =
q);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 \<br>
++=C2=A0 =C2=A0 QUEUE queue;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
++=C2=A0 =C2=A0 QUEUE* q;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
++=C2=A0 =C2=A0 QUEUE_MOVE(&amp;loop-&gt;name##_handles, &amp;queue);=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
++=C2=A0 =C2=A0 while (!QUEUE_EMPTY(&amp;queue)) {=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
++=C2=A0 =C2=A0 =C2=A0 q =3D QUEUE_HEAD(&amp;queue);=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0\<br>
++=C2=A0 =C2=A0 =C2=A0 h =3D QUEUE_DATA(q, uv_##name##_t, queue);=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
++=C2=A0 =C2=A0 =C2=A0 QUEUE_REMOVE(q);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 \<br>
++=C2=A0 =C2=A0 =C2=A0 QUEUE_INSERT_TAIL(&amp;loop-&gt;name##_handles, q);=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0h-&gt;name##_cb(h);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0}=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0}=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+diff --git a/deps/uv/src/unix/loop.c b/deps/uv/src/unix/loop.c<br>
+index a9468e8e19c..90a51b339de 100644<br>
+--- a/deps/uv/src/unix/loop.c<br>
++++ b/deps/uv/src/unix/loop.c<br>
+@@ -50,20 +50,20 @@ int uv_loop_init(uv_loop_t* loop) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sizeof(lfields-&gt;loop_metrics.metrics=
));<br>
+ <br>
+=C2=A0 =C2=A0heap_init((struct heap*) &amp;loop-&gt;timer_heap);<br>
+-=C2=A0 uv__queue_init(&amp;loop-&gt;wq);<br>
+-=C2=A0 uv__queue_init(&amp;loop-&gt;idle_handles);<br>
+-=C2=A0 uv__queue_init(&amp;loop-&gt;async_handles);<br>
+-=C2=A0 uv__queue_init(&amp;loop-&gt;check_handles);<br>
+-=C2=A0 uv__queue_init(&amp;loop-&gt;prepare_handles);<br>
+-=C2=A0 uv__queue_init(&amp;loop-&gt;handle_queue);<br>
++=C2=A0 QUEUE_INIT(&amp;loop-&gt;wq);<br>
++=C2=A0 QUEUE_INIT(&amp;loop-&gt;idle_handles);<br>
++=C2=A0 QUEUE_INIT(&amp;loop-&gt;async_handles);<br>
++=C2=A0 QUEUE_INIT(&amp;loop-&gt;check_handles);<br>
++=C2=A0 QUEUE_INIT(&amp;loop-&gt;prepare_handles);<br>
++=C2=A0 QUEUE_INIT(&amp;loop-&gt;handle_queue);<br>
+ <br>
+=C2=A0 =C2=A0loop-&gt;active_handles =3D 0;<br>
+=C2=A0 =C2=A0loop-&gt;active_reqs.count =3D 0;<br>
+=C2=A0 =C2=A0loop-&gt;nfds =3D 0;<br>
+=C2=A0 =C2=A0loop-&gt;watchers =3D NULL;<br>
+=C2=A0 =C2=A0loop-&gt;nwatchers =3D 0;<br>
+-=C2=A0 uv__queue_init(&amp;loop-&gt;pending_queue);<br>
+-=C2=A0 uv__queue_init(&amp;loop-&gt;watcher_queue);<br>
++=C2=A0 QUEUE_INIT(&amp;loop-&gt;pending_queue);<br>
++=C2=A0 QUEUE_INIT(&amp;loop-&gt;watcher_queue);<br>
+ <br>
+=C2=A0 =C2=A0loop-&gt;closing_handles =3D NULL;<br>
+=C2=A0 =C2=A0uv__update_time(loop);<br>
+@@ -85,7 +85,7 @@ int uv_loop_init(uv_loop_t* loop) {<br>
+=C2=A0 =C2=A0err =3D uv__process_init(loop);<br>
+=C2=A0 =C2=A0if (err)<br>
+=C2=A0 =C2=A0 =C2=A0goto fail_signal_init;<br>
+-=C2=A0 uv__queue_init(&amp;loop-&gt;process_handles);<br>
++=C2=A0 QUEUE_INIT(&amp;loop-&gt;process_handles);<br>
+ <br>
+=C2=A0 =C2=A0err =3D uv_rwlock_init(&amp;loop-&gt;cloexec_lock);<br>
+=C2=A0 =C2=A0if (err)<br>
+@@ -152,9 +152,9 @@ int uv_loop_fork(uv_loop_t* loop) {<br>
+=C2=A0 =C2=A0 =C2=A0if (w =3D=3D NULL)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0continue;<br>
+ <br>
+-=C2=A0 =C2=A0 if (w-&gt;pevents !=3D 0 &amp;&amp; uv__queue_empty(&amp;w-=
&gt;watcher_queue)) {<br>
++=C2=A0 =C2=A0 if (w-&gt;pevents !=3D 0 &amp;&amp; QUEUE_EMPTY(&amp;w-&gt;=
watcher_queue)) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0w-&gt;events =3D 0; /* Force re-registration in=
 uv__io_poll. */<br>
+-=C2=A0 =C2=A0 =C2=A0 uv__queue_insert_tail(&amp;loop-&gt;watcher_queue, &=
amp;w-&gt;watcher_queue);<br>
++=C2=A0 =C2=A0 =C2=A0 QUEUE_INSERT_TAIL(&amp;loop-&gt;watcher_queue, &amp;=
w-&gt;watcher_queue);<br>
+=C2=A0 =C2=A0 =C2=A0}<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+@@ -180,7 +180,7 @@ void uv__loop_close(uv_loop_t* loop) {<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+=C2=A0 =C2=A0uv_mutex_lock(&amp;loop-&gt;wq_mutex);<br>
+-=C2=A0 assert(uv__queue_empty(&amp;loop-&gt;wq) &amp;&amp; &quot;thread p=
ool work queue not empty!&quot;);<br>
++=C2=A0 assert(QUEUE_EMPTY(&amp;loop-&gt;wq) &amp;&amp; &quot;thread pool =
work queue not empty!&quot;);<br>
+=C2=A0 =C2=A0assert(!uv__has_active_reqs(loop));<br>
+=C2=A0 =C2=A0uv_mutex_unlock(&amp;loop-&gt;wq_mutex);<br>
+=C2=A0 =C2=A0uv_mutex_destroy(&amp;loop-&gt;wq_mutex);<br>
+@@ -192,8 +192,8 @@ void uv__loop_close(uv_loop_t* loop) {<br>
+=C2=A0 =C2=A0uv_rwlock_destroy(&amp;loop-&gt;cloexec_lock);<br>
+ <br>
+ #if 0<br>
+-=C2=A0 assert(uv__queue_empty(&amp;loop-&gt;pending_queue));<br>
+-=C2=A0 assert(uv__queue_empty(&amp;loop-&gt;watcher_queue));<br>
++=C2=A0 assert(QUEUE_EMPTY(&amp;loop-&gt;pending_queue));<br>
++=C2=A0 assert(QUEUE_EMPTY(&amp;loop-&gt;watcher_queue));<br>
+=C2=A0 =C2=A0assert(loop-&gt;nfds =3D=3D 0);<br>
+ #endif<br>
+ <br>
+diff --git a/deps/uv/src/unix/os390-syscalls.c b/deps/uv/src/unix/os390-sy=
scalls.c<br>
+index 7f90c270906..5861aaaa202 100644<br>
+--- a/deps/uv/src/unix/os390-syscalls.c<br>
++++ b/deps/uv/src/unix/os390-syscalls.c<br>
+@@ -27,7 +27,7 @@<br>
+ #include &lt;termios.h&gt;<br>
+ #include &lt;sys/msg.h&gt;<br>
+ <br>
+-static struct uv__queue global_epoll_queue;<br>
++static QUEUE global_epoll_queue;<br>
+ static uv_mutex_t global_epoll_lock;<br>
+ static uv_once_t once =3D UV_ONCE_INIT;<br>
+ <br>
+@@ -178,18 +178,18 @@ static void after_fork(void) {<br>
+ <br>
+ <br>
+ static void child_fork(void) {<br>
+-=C2=A0 struct uv__queue* q;<br>
++=C2=A0 QUEUE* q;<br>
+=C2=A0 =C2=A0uv_once_t child_once =3D UV_ONCE_INIT;<br>
+ <br>
+=C2=A0 =C2=A0/* reset once */<br>
+=C2=A0 =C2=A0memcpy(&amp;once, &amp;child_once, sizeof(child_once));<br>
+ <br>
+=C2=A0 =C2=A0/* reset epoll list */<br>
+-=C2=A0 while (!uv__queue_empty(&amp;global_epoll_queue)) {<br>
++=C2=A0 while (!QUEUE_EMPTY(&amp;global_epoll_queue)) {<br>
+=C2=A0 =C2=A0 =C2=A0uv__os390_epoll* lst;<br>
+-=C2=A0 =C2=A0 q =3D uv__queue_head(&amp;global_epoll_queue);<br>
+-=C2=A0 =C2=A0 uv__queue_remove(q);<br>
+-=C2=A0 =C2=A0 lst =3D uv__queue_data(q, uv__os390_epoll, member);<br>
++=C2=A0 =C2=A0 q =3D QUEUE_HEAD(&amp;global_epoll_queue);<br>
++=C2=A0 =C2=A0 QUEUE_REMOVE(q);<br>
++=C2=A0 =C2=A0 lst =3D QUEUE_DATA(q, uv__os390_epoll, member);<br>
+=C2=A0 =C2=A0 =C2=A0uv__free(lst-&gt;items);<br>
+=C2=A0 =C2=A0 =C2=A0lst-&gt;items =3D NULL;<br>
+=C2=A0 =C2=A0 =C2=A0lst-&gt;size =3D 0;<br>
+@@ -201,7 +201,7 @@ static void child_fork(void) {<br>
+ <br>
+ <br>
+ static void epoll_init(void) {<br>
+-=C2=A0 uv__queue_init(&amp;global_epoll_queue);<br>
++=C2=A0 QUEUE_INIT(&amp;global_epoll_queue);<br>
+=C2=A0 =C2=A0if (uv_mutex_init(&amp;global_epoll_lock))<br>
+=C2=A0 =C2=A0 =C2=A0abort();<br>
+ <br>
+@@ -225,7 +225,7 @@ uv__os390_epoll* epoll_create1(int flags) {<br>
+=C2=A0 =C2=A0 =C2=A0lst-&gt;items[lst-&gt;size - 1].revents =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0uv_once(&amp;once, epoll_init);<br>
+=C2=A0 =C2=A0 =C2=A0uv_mutex_lock(&amp;global_epoll_lock);<br>
+-=C2=A0 =C2=A0 uv__queue_insert_tail(&amp;global_epoll_queue, &amp;lst-&gt=
;member);<br>
++=C2=A0 =C2=A0 QUEUE_INSERT_TAIL(&amp;global_epoll_queue, &amp;lst-&gt;mem=
ber);<br>
+=C2=A0 =C2=A0 =C2=A0uv_mutex_unlock(&amp;global_epoll_lock);<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+@@ -352,14 +352,14 @@ int epoll_wait(uv__os390_epoll* lst, struct epoll_ev=
ent* events,<br>
+ <br>
+ <br>
+ int epoll_file_close(int fd) {<br>
+-=C2=A0 struct uv__queue* q;<br>
++=C2=A0 QUEUE* q;<br>
+ <br>
+=C2=A0 =C2=A0uv_once(&amp;once, epoll_init);<br>
+=C2=A0 =C2=A0uv_mutex_lock(&amp;global_epoll_lock);<br>
+-=C2=A0 uv__queue_foreach(q, &amp;global_epoll_queue) {<br>
++=C2=A0 QUEUE_FOREACH(q, &amp;global_epoll_queue) {<br>
+=C2=A0 =C2=A0 =C2=A0uv__os390_epoll* lst;<br>
+ <br>
+-=C2=A0 =C2=A0 lst =3D uv__queue_data(q, uv__os390_epoll, member);<br>
++=C2=A0 =C2=A0 lst =3D QUEUE_DATA(q, uv__os390_epoll, member);<br>
+=C2=A0 =C2=A0 =C2=A0if (fd &lt; lst-&gt;size &amp;&amp; lst-&gt;items !=3D=
 NULL &amp;&amp; lst-&gt;items[fd].fd !=3D -1)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0lst-&gt;items[fd].fd =3D -1;<br>
+=C2=A0 =C2=A0}<br>
+@@ -371,7 +371,7 @@ int epoll_file_close(int fd) {<br>
+ void epoll_queue_close(uv__os390_epoll* lst) {<br>
+=C2=A0 =C2=A0/* Remove epoll instance from global queue */<br>
+=C2=A0 =C2=A0uv_mutex_lock(&amp;global_epoll_lock);<br>
+-=C2=A0 uv__queue_remove(&amp;lst-&gt;member);<br>
++=C2=A0 QUEUE_REMOVE(&amp;lst-&gt;member);<br>
+=C2=A0 =C2=A0uv_mutex_unlock(&amp;global_epoll_lock);<br>
+ <br>
+=C2=A0 =C2=A0/* Free resources */<br>
+diff --git a/deps/uv/src/unix/os390-syscalls.h b/deps/uv/src/unix/os390-sy=
scalls.h<br>
+index d5f3bcf8b1c..9f504171d85 100644<br>
+--- a/deps/uv/src/unix/os390-syscalls.h<br>
++++ b/deps/uv/src/unix/os390-syscalls.h<br>
+@@ -45,7 +45,7 @@ struct epoll_event {<br>
+ };<br>
+ <br>
+ typedef struct {<br>
+-=C2=A0 struct uv__queue member;<br>
++=C2=A0 QUEUE member;<br>
+=C2=A0 =C2=A0struct pollfd* items;<br>
+=C2=A0 =C2=A0unsigned long size;<br>
+=C2=A0 =C2=A0int msg_queue;<br>
+diff --git a/deps/uv/src/unix/os390.c b/deps/uv/src/unix/os390.c<br>
+index bbd37692d1d..a87c2d77faf 100644<br>
+--- a/deps/uv/src/unix/os390.c<br>
++++ b/deps/uv/src/unix/os390.c<br>
+@@ -815,7 +815,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {<br>
+=C2=A0 =C2=A0uv__os390_epoll* ep;<br>
+=C2=A0 =C2=A0int have_signals;<br>
+=C2=A0 =C2=A0int real_timeout;<br>
+-=C2=A0 struct uv__queue* q;<br>
++=C2=A0 QUEUE* q;<br>
+=C2=A0 =C2=A0uv__io_t* w;<br>
+=C2=A0 =C2=A0uint64_t base;<br>
+=C2=A0 =C2=A0int count;<br>
+@@ -827,19 +827,19 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {<br>
+=C2=A0 =C2=A0int reset_timeout;<br>
+ <br>
+=C2=A0 =C2=A0if (loop-&gt;nfds =3D=3D 0) {<br>
+-=C2=A0 =C2=A0 assert(uv__queue_empty(&amp;loop-&gt;watcher_queue));<br>
++=C2=A0 =C2=A0 assert(QUEUE_EMPTY(&amp;loop-&gt;watcher_queue));<br>
+=C2=A0 =C2=A0 =C2=A0return;<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+=C2=A0 =C2=A0lfields =3D uv__get_internal_fields(loop);<br>
+ <br>
+-=C2=A0 while (!uv__queue_empty(&amp;loop-&gt;watcher_queue)) {<br>
++=C2=A0 while (!QUEUE_EMPTY(&amp;loop-&gt;watcher_queue)) {<br>
+=C2=A0 =C2=A0 =C2=A0uv_stream_t* stream;<br>
+ <br>
+-=C2=A0 =C2=A0 q =3D uv__queue_head(&amp;loop-&gt;watcher_queue);<br>
+-=C2=A0 =C2=A0 uv__queue_remove(q);<br>
+-=C2=A0 =C2=A0 uv__queue_init(q);<br>
+-=C2=A0 =C2=A0 w =3D uv__queue_data(q, uv__io_t, watcher_queue);<br>
++=C2=A0 =C2=A0 q =3D QUEUE_HEAD(&amp;loop-&gt;watcher_queue);<br>
++=C2=A0 =C2=A0 QUEUE_REMOVE(q);<br>
++=C2=A0 =C2=A0 QUEUE_INIT(q);<br>
++=C2=A0 =C2=A0 w =3D QUEUE_DATA(q, uv__io_t, watcher_queue);<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0assert(w-&gt;pevents !=3D 0);<br>
+=C2=A0 =C2=A0 =C2=A0assert(w-&gt;fd &gt;=3D 0);<br>
+diff --git a/deps/uv/src/unix/pipe.c b/deps/uv/src/unix/pipe.c<br>
+index d332f351830..ce91ac49b30 100644<br>
+--- a/deps/uv/src/unix/pipe.c<br>
++++ b/deps/uv/src/unix/pipe.c<br>
+@@ -297,7 +297,7 @@ out:<br>
+=C2=A0 =C2=A0uv__req_init(handle-&gt;loop, req, UV_CONNECT);<br>
+=C2=A0 =C2=A0req-&gt;handle =3D (uv_stream_t*)handle;<br>
+=C2=A0 =C2=A0req-&gt;cb =3D cb;<br>
+-=C2=A0 uv__queue_init(&amp;req-&gt;queue);<br>
++=C2=A0 QUEUE_INIT(&amp;req-&gt;queue);<br>
+ <br>
+=C2=A0 =C2=A0/* Force callback to run on next tick in case of error. */<br=
>
+=C2=A0 =C2=A0if (err)<br>
+diff --git a/deps/uv/src/unix/posix-poll.c b/deps/uv/src/unix/posix-poll.c=
<br>
+index 2e016c2fbae..7e7de86845d 100644<br>
+--- a/deps/uv/src/unix/posix-poll.c<br>
++++ b/deps/uv/src/unix/posix-poll.c<br>
+@@ -137,7 +137,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {<br>
+=C2=A0 =C2=A0sigset_t set;<br>
+=C2=A0 =C2=A0uint64_t time_base;<br>
+=C2=A0 =C2=A0uint64_t time_diff;<br>
+-=C2=A0 struct uv__queue* q;<br>
++=C2=A0 QUEUE* q;<br>
+=C2=A0 =C2=A0uv__io_t* w;<br>
+=C2=A0 =C2=A0size_t i;<br>
+=C2=A0 =C2=A0unsigned int nevents;<br>
+@@ -149,19 +149,19 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {<br>
+=C2=A0 =C2=A0int reset_timeout;<br>
+ <br>
+=C2=A0 =C2=A0if (loop-&gt;nfds =3D=3D 0) {<br>
+-=C2=A0 =C2=A0 assert(uv__queue_empty(&amp;loop-&gt;watcher_queue));<br>
++=C2=A0 =C2=A0 assert(QUEUE_EMPTY(&amp;loop-&gt;watcher_queue));<br>
+=C2=A0 =C2=A0 =C2=A0return;<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+=C2=A0 =C2=A0lfields =3D uv__get_internal_fields(loop);<br>
+ <br>
+=C2=A0 =C2=A0/* Take queued watchers and add their fds to our poll fds arr=
ay.=C2=A0 */<br>
+-=C2=A0 while (!uv__queue_empty(&amp;loop-&gt;watcher_queue)) {<br>
+-=C2=A0 =C2=A0 q =3D uv__queue_head(&amp;loop-&gt;watcher_queue);<br>
+-=C2=A0 =C2=A0 uv__queue_remove(q);<br>
+-=C2=A0 =C2=A0 uv__queue_init(q);<br>
++=C2=A0 while (!QUEUE_EMPTY(&amp;loop-&gt;watcher_queue)) {<br>
++=C2=A0 =C2=A0 q =3D QUEUE_HEAD(&amp;loop-&gt;watcher_queue);<br>
++=C2=A0 =C2=A0 QUEUE_REMOVE(q);<br>
++=C2=A0 =C2=A0 QUEUE_INIT(q);<br>
+ <br>
+-=C2=A0 =C2=A0 w =3D uv__queue_data(q, uv__io_t, watcher_queue);<br>
++=C2=A0 =C2=A0 w =3D QUEUE_DATA(q, uv__io_t, watcher_queue);<br>
+=C2=A0 =C2=A0 =C2=A0assert(w-&gt;pevents !=3D 0);<br>
+=C2=A0 =C2=A0 =C2=A0assert(w-&gt;fd &gt;=3D 0);<br>
+=C2=A0 =C2=A0 =C2=A0assert(w-&gt;fd &lt; (int) loop-&gt;nwatchers);<br>
+diff --git a/deps/uv/src/unix/process.c b/deps/uv/src/unix/process.c<br>
+index dd58c18d9b9..bbf367b57d3 100644<br>
+--- a/deps/uv/src/unix/process.c<br>
++++ b/deps/uv/src/unix/process.c<br>
+@@ -108,17 +108,17 @@ void uv__wait_children(uv_loop_t* loop) {<br>
+=C2=A0 =C2=A0int status;<br>
+=C2=A0 =C2=A0int options;<br>
+=C2=A0 =C2=A0pid_t pid;<br>
+-=C2=A0 struct uv__queue pending;<br>
+-=C2=A0 struct uv__queue* q;<br>
+-=C2=A0 struct uv__queue* h;<br>
++=C2=A0 QUEUE pending;<br>
++=C2=A0 QUEUE* q;<br>
++=C2=A0 QUEUE* h;<br>
+ <br>
+-=C2=A0 uv__queue_init(&amp;pending);<br>
++=C2=A0 QUEUE_INIT(&amp;pending);<br>
+ <br>
+=C2=A0 =C2=A0h =3D &amp;loop-&gt;process_handles;<br>
+-=C2=A0 q =3D uv__queue_head(h);<br>
++=C2=A0 q =3D QUEUE_HEAD(h);<br>
+=C2=A0 =C2=A0while (q !=3D h) {<br>
+-=C2=A0 =C2=A0 process =3D uv__queue_data(q, uv_process_t, queue);<br>
+-=C2=A0 =C2=A0 q =3D uv__queue_next(q);<br>
++=C2=A0 =C2=A0 process =3D QUEUE_DATA(q, uv_process_t, queue);<br>
++=C2=A0 =C2=A0 q =3D QUEUE_NEXT(q);<br>
+ <br>
+ #ifndef UV_USE_SIGCHLD<br>
+=C2=A0 =C2=A0 =C2=A0if ((process-&gt;flags &amp; UV_HANDLE_REAP) =3D=3D 0)=
<br>
+@@ -149,18 +149,18 @@ void uv__wait_children(uv_loop_t* loop) {<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0assert(pid =3D=3D process-&gt;pid);<br>
+=C2=A0 =C2=A0 =C2=A0process-&gt;status =3D status;<br>
+-=C2=A0 =C2=A0 uv__queue_remove(&amp;process-&gt;queue);<br>
+-=C2=A0 =C2=A0 uv__queue_insert_tail(&amp;pending, &amp;process-&gt;queue)=
;<br>
++=C2=A0 =C2=A0 QUEUE_REMOVE(&amp;process-&gt;queue);<br>
++=C2=A0 =C2=A0 QUEUE_INSERT_TAIL(&amp;pending, &amp;process-&gt;queue);<br=
>
+=C2=A0 =C2=A0}<br>
+ <br>
+=C2=A0 =C2=A0h =3D &amp;pending;<br>
+-=C2=A0 q =3D uv__queue_head(h);<br>
++=C2=A0 q =3D QUEUE_HEAD(h);<br>
+=C2=A0 =C2=A0while (q !=3D h) {<br>
+-=C2=A0 =C2=A0 process =3D uv__queue_data(q, uv_process_t, queue);<br>
+-=C2=A0 =C2=A0 q =3D uv__queue_next(q);<br>
++=C2=A0 =C2=A0 process =3D QUEUE_DATA(q, uv_process_t, queue);<br>
++=C2=A0 =C2=A0 q =3D QUEUE_NEXT(q);<br>
+ <br>
+-=C2=A0 =C2=A0 uv__queue_remove(&amp;process-&gt;queue);<br>
+-=C2=A0 =C2=A0 uv__queue_init(&amp;process-&gt;queue);<br>
++=C2=A0 =C2=A0 QUEUE_REMOVE(&amp;process-&gt;queue);<br>
++=C2=A0 =C2=A0 QUEUE_INIT(&amp;process-&gt;queue);<br>
+=C2=A0 =C2=A0 =C2=A0uv__handle_stop(process);<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0if (process-&gt;exit_cb =3D=3D NULL)<br>
+@@ -176,7 +176,7 @@ void uv__wait_children(uv_loop_t* loop) {<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0process-&gt;exit_cb(process, exit_status, term_signal)=
;<br>
+=C2=A0 =C2=A0}<br>
+-=C2=A0 assert(uv__queue_empty(&amp;pending));<br>
++=C2=A0 assert(QUEUE_EMPTY(&amp;pending));<br>
+ }<br>
+ <br>
+ /*<br>
+@@ -978,7 +978,7 @@ int uv_spawn(uv_loop_t* loop,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0UV_PROCESS_WINDOWS_VERBATIM_ARGUMENTS=
)));<br>
+ <br>
+=C2=A0 =C2=A0uv__handle_init(loop, (uv_handle_t*)process, UV_PROCESS);<br>
+-=C2=A0 uv__queue_init(&amp;process-&gt;queue);<br>
++=C2=A0 QUEUE_INIT(&amp;process-&gt;queue);<br>
+=C2=A0 =C2=A0process-&gt;status =3D 0;<br>
+ <br>
+=C2=A0 =C2=A0stdio_count =3D options-&gt;stdio_count;<br>
+@@ -1041,7 +1041,7 @@ int uv_spawn(uv_loop_t* loop,<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0process-&gt;pid =3D pid;<br>
+=C2=A0 =C2=A0 =C2=A0process-&gt;exit_cb =3D options-&gt;exit_cb;<br>
+-=C2=A0 =C2=A0 uv__queue_insert_tail(&amp;loop-&gt;process_handles, &amp;p=
rocess-&gt;queue);<br>
++=C2=A0 =C2=A0 QUEUE_INSERT_TAIL(&amp;loop-&gt;process_handles, &amp;proce=
ss-&gt;queue);<br>
+=C2=A0 =C2=A0 =C2=A0uv__handle_start(process);<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+@@ -1103,10 +1103,10 @@ int uv_kill(int pid, int signum) {<br>
+ <br>
+ <br>
+ void uv__process_close(uv_process_t* handle) {<br>
+-=C2=A0 uv__queue_remove(&amp;handle-&gt;queue);<br>
++=C2=A0 QUEUE_REMOVE(&amp;handle-&gt;queue);<br>
+=C2=A0 =C2=A0uv__handle_stop(handle);<br>
+ #ifdef UV_USE_SIGCHLD<br>
+-=C2=A0 if (uv__queue_empty(&amp;handle-&gt;loop-&gt;process_handles))<br>
++=C2=A0 if (QUEUE_EMPTY(&amp;handle-&gt;loop-&gt;process_handles))<br>
+=C2=A0 =C2=A0 =C2=A0uv_signal_stop(&amp;handle-&gt;loop-&gt;child_watcher)=
;<br>
+ #endif<br>
+ }<br>
+diff --git a/deps/uv/src/unix/signal.c b/deps/uv/src/unix/signal.c<br>
+index 63aba5a60e0..bb70523f561 100644<br>
+--- a/deps/uv/src/unix/signal.c<br>
++++ b/deps/uv/src/unix/signal.c<br>
+@@ -291,16 +291,16 @@ int uv__signal_loop_fork(uv_loop_t* loop) {<br>
+ <br>
+ <br>
+ void uv__signal_loop_cleanup(uv_loop_t* loop) {<br>
+-=C2=A0 struct uv__queue* q;<br>
++=C2=A0 QUEUE* q;<br>
+ <br>
+=C2=A0 =C2=A0/* Stop all the signal watchers that are still attached to th=
is loop. This<br>
+=C2=A0 =C2=A0 * ensures that the (shared) signal tree doesn&#39;t contain =
any invalid entries<br>
+=C2=A0 =C2=A0 * entries, and that signal handlers are removed when appropr=
iate.<br>
+-=C2=A0 =C2=A0* It&#39;s safe to use uv__queue_foreach here because the ha=
ndles and the handle<br>
++=C2=A0 =C2=A0* It&#39;s safe to use QUEUE_FOREACH here because the handle=
s and the handle<br>
+=C2=A0 =C2=A0 * queue are not modified by uv__signal_stop().<br>
+=C2=A0 =C2=A0 */<br>
+-=C2=A0 uv__queue_foreach(q, &amp;loop-&gt;handle_queue) {<br>
+-=C2=A0 =C2=A0 uv_handle_t* handle =3D uv__queue_data(q, uv_handle_t, hand=
le_queue);<br>
++=C2=A0 QUEUE_FOREACH(q, &amp;loop-&gt;handle_queue) {<br>
++=C2=A0 =C2=A0 uv_handle_t* handle =3D QUEUE_DATA(q, uv_handle_t, handle_q=
ueue);<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0if (handle-&gt;type =3D=3D UV_SIGNAL)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0uv__signal_stop((uv_signal_t*) handle);<br>
+diff --git a/deps/uv/src/unix/stream.c b/deps/uv/src/unix/stream.c<br>
+index 28c4d5463c4..03f92b5045a 100644<br>
+--- a/deps/uv/src/unix/stream.c<br>
++++ b/deps/uv/src/unix/stream.c<br>
+@@ -94,8 +94,8 @@ void uv__stream_init(uv_loop_t* loop,<br>
+=C2=A0 =C2=A0stream-&gt;accepted_fd =3D -1;<br>
+=C2=A0 =C2=A0stream-&gt;queued_fds =3D NULL;<br>
+=C2=A0 =C2=A0stream-&gt;delayed_error =3D 0;<br>
+-=C2=A0 uv__queue_init(&amp;stream-&gt;write_queue);<br>
+-=C2=A0 uv__queue_init(&amp;stream-&gt;write_completed_queue);<br>
++=C2=A0 QUEUE_INIT(&amp;stream-&gt;write_queue);<br>
++=C2=A0 QUEUE_INIT(&amp;stream-&gt;write_completed_queue);<br>
+=C2=A0 =C2=A0stream-&gt;write_queue_size =3D 0;<br>
+ <br>
+=C2=A0 =C2=A0if (loop-&gt;emfile_fd =3D=3D -1) {<br>
+@@ -439,15 +439,15 @@ int uv__stream_open(uv_stream_t* stream, int fd, int=
 flags) {<br>
+ <br>
+ void uv__stream_flush_write_queue(uv_stream_t* stream, int error) {<br>
+=C2=A0 =C2=A0uv_write_t* req;<br>
+-=C2=A0 struct uv__queue* q;<br>
+-=C2=A0 while (!uv__queue_empty(&amp;stream-&gt;write_queue)) {<br>
+-=C2=A0 =C2=A0 q =3D uv__queue_head(&amp;stream-&gt;write_queue);<br>
+-=C2=A0 =C2=A0 uv__queue_remove(q);<br>
++=C2=A0 QUEUE* q;<br>
++=C2=A0 while (!QUEUE_EMPTY(&amp;stream-&gt;write_queue)) {<br>
++=C2=A0 =C2=A0 q =3D QUEUE_HEAD(&amp;stream-&gt;write_queue);<br>
++=C2=A0 =C2=A0 QUEUE_REMOVE(q);<br>
+ <br>
+-=C2=A0 =C2=A0 req =3D uv__queue_data(q, uv_write_t, queue);<br>
++=C2=A0 =C2=A0 req =3D QUEUE_DATA(q, uv_write_t, queue);<br>
+=C2=A0 =C2=A0 =C2=A0req-&gt;error =3D error;<br>
+ <br>
+-=C2=A0 =C2=A0 uv__queue_insert_tail(&amp;stream-&gt;write_completed_queue=
, &amp;req-&gt;queue);<br>
++=C2=A0 =C2=A0 QUEUE_INSERT_TAIL(&amp;stream-&gt;write_completed_queue, &a=
mp;req-&gt;queue);<br>
+=C2=A0 =C2=A0}<br>
+ }<br>
+ <br>
+@@ -627,7 +627,7 @@ static void uv__drain(uv_stream_t* stream) {<br>
+=C2=A0 =C2=A0uv_shutdown_t* req;<br>
+=C2=A0 =C2=A0int err;<br>
+ <br>
+-=C2=A0 assert(uv__queue_empty(&amp;stream-&gt;write_queue));<br>
++=C2=A0 assert(QUEUE_EMPTY(&amp;stream-&gt;write_queue));<br>
+=C2=A0 =C2=A0if (!(stream-&gt;flags &amp; UV_HANDLE_CLOSING)) {<br>
+=C2=A0 =C2=A0 =C2=A0uv__io_stop(stream-&gt;loop, &amp;stream-&gt;io_watche=
r, POLLOUT);<br>
+=C2=A0 =C2=A0 =C2=A0uv__stream_osx_interrupt_select(stream);<br>
+@@ -714,7 +714,7 @@ static void uv__write_req_finish(uv_write_t* req) {<br=
>
+=C2=A0 =C2=A0uv_stream_t* stream =3D req-&gt;handle;<br>
+ <br>
+=C2=A0 =C2=A0/* Pop the req off tcp-&gt;write_queue. */<br>
+-=C2=A0 uv__queue_remove(&amp;req-&gt;queue);<br>
++=C2=A0 QUEUE_REMOVE(&amp;req-&gt;queue);<br>
+ <br>
+=C2=A0 =C2=A0/* Only free when there was no error. On error, we touch up w=
rite_queue_size<br>
+=C2=A0 =C2=A0 * right before making the callback. The reason we don&#39;t =
do that right away<br>
+@@ -731,7 +731,7 @@ static void uv__write_req_finish(uv_write_t* req) {<br=
>
+=C2=A0 =C2=A0/* Add it to the write_completed_queue where it will have its=
<br>
+=C2=A0 =C2=A0 * callback called in the near future.<br>
+=C2=A0 =C2=A0 */<br>
+-=C2=A0 uv__queue_insert_tail(&amp;stream-&gt;write_completed_queue, &amp;=
req-&gt;queue);<br>
++=C2=A0 QUEUE_INSERT_TAIL(&amp;stream-&gt;write_completed_queue, &amp;req-=
&gt;queue);<br>
+=C2=A0 =C2=A0uv__io_feed(stream-&gt;loop, &amp;stream-&gt;io_watcher);<br>
+ }<br>
+ <br>
+@@ -837,7 +837,7 @@ static int uv__try_write(uv_stream_t* stream,<br>
+ }<br>
+ <br>
+ static void uv__write(uv_stream_t* stream) {<br>
+-=C2=A0 struct uv__queue* q;<br>
++=C2=A0 QUEUE* q;<br>
+=C2=A0 =C2=A0uv_write_t* req;<br>
+=C2=A0 =C2=A0ssize_t n;<br>
+=C2=A0 =C2=A0int count;<br>
+@@ -851,11 +851,11 @@ static void uv__write(uv_stream_t* stream) {<br>
+=C2=A0 =C2=A0count =3D 32;<br>
+ <br>
+=C2=A0 =C2=A0for (;;) {<br>
+-=C2=A0 =C2=A0 if (uv__queue_empty(&amp;stream-&gt;write_queue))<br>
++=C2=A0 =C2=A0 if (QUEUE_EMPTY(&amp;stream-&gt;write_queue))<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
+ <br>
+-=C2=A0 =C2=A0 q =3D uv__queue_head(&amp;stream-&gt;write_queue);<br>
+-=C2=A0 =C2=A0 req =3D uv__queue_data(q, uv_write_t, queue);<br>
++=C2=A0 =C2=A0 q =3D QUEUE_HEAD(&amp;stream-&gt;write_queue);<br>
++=C2=A0 =C2=A0 req =3D QUEUE_DATA(q, uv_write_t, queue);<br>
+=C2=A0 =C2=A0 =C2=A0assert(req-&gt;handle =3D=3D stream);<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0n =3D uv__try_write(stream,<br>
+@@ -899,19 +899,19 @@ error:<br>
+ <br>
+ static void uv__write_callbacks(uv_stream_t* stream) {<br>
+=C2=A0 =C2=A0uv_write_t* req;<br>
+-=C2=A0 struct uv__queue* q;<br>
+-=C2=A0 struct uv__queue pq;<br>
++=C2=A0 QUEUE* q;<br>
++=C2=A0 QUEUE pq;<br>
+ <br>
+-=C2=A0 if (uv__queue_empty(&amp;stream-&gt;write_completed_queue))<br>
++=C2=A0 if (QUEUE_EMPTY(&amp;stream-&gt;write_completed_queue))<br>
+=C2=A0 =C2=A0 =C2=A0return;<br>
+ <br>
+-=C2=A0 uv__queue_move(&amp;stream-&gt;write_completed_queue, &amp;pq);<br=
>
++=C2=A0 QUEUE_MOVE(&amp;stream-&gt;write_completed_queue, &amp;pq);<br>
+ <br>
+-=C2=A0 while (!uv__queue_empty(&amp;pq)) {<br>
++=C2=A0 while (!QUEUE_EMPTY(&amp;pq)) {<br>
+=C2=A0 =C2=A0 =C2=A0/* Pop a req off write_completed_queue. */<br>
+-=C2=A0 =C2=A0 q =3D uv__queue_head(&amp;pq);<br>
+-=C2=A0 =C2=A0 req =3D uv__queue_data(q, uv_write_t, queue);<br>
+-=C2=A0 =C2=A0 uv__queue_remove(q);<br>
++=C2=A0 =C2=A0 q =3D QUEUE_HEAD(&amp;pq);<br>
++=C2=A0 =C2=A0 req =3D QUEUE_DATA(q, uv_write_t, queue);<br>
++=C2=A0 =C2=A0 QUEUE_REMOVE(q);<br>
+=C2=A0 =C2=A0 =C2=A0uv__req_unregister(stream-&gt;loop, req);<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0if (req-&gt;bufs !=3D NULL) {<br>
+@@ -1174,7 +1174,7 @@ int uv_shutdown(uv_shutdown_t* req, uv_stream_t* str=
eam, uv_shutdown_cb cb) {<br>
+=C2=A0 =C2=A0stream-&gt;shutdown_req =3D req;<br>
+=C2=A0 =C2=A0stream-&gt;flags &amp;=3D ~UV_HANDLE_WRITABLE;<br>
+ <br>
+-=C2=A0 if (uv__queue_empty(&amp;stream-&gt;write_queue))<br>
++=C2=A0 if (QUEUE_EMPTY(&amp;stream-&gt;write_queue))<br>
+=C2=A0 =C2=A0 =C2=A0uv__io_feed(stream-&gt;loop, &amp;stream-&gt;io_watche=
r);<br>
+ <br>
+=C2=A0 =C2=A0return 0;<br>
+@@ -1227,7 +1227,7 @@ static void uv__stream_io(uv_loop_t* loop, uv__io_t*=
 w, unsigned int events) {<br>
+=C2=A0 =C2=A0 =C2=A0uv__write_callbacks(stream);<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0/* Write queue drained. */<br>
+-=C2=A0 =C2=A0 if (uv__queue_empty(&amp;stream-&gt;write_queue))<br>
++=C2=A0 =C2=A0 if (QUEUE_EMPTY(&amp;stream-&gt;write_queue))<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0uv__drain(stream);<br>
+=C2=A0 =C2=A0}<br>
+ }<br>
+@@ -1270,7 +1270,7 @@ static void uv__stream_connect(uv_stream_t* stream) =
{<br>
+=C2=A0 =C2=A0stream-&gt;connect_req =3D NULL;<br>
+=C2=A0 =C2=A0uv__req_unregister(stream-&gt;loop, req);<br>
+ <br>
+-=C2=A0 if (error &lt; 0 || uv__queue_empty(&amp;stream-&gt;write_queue)) =
{<br>
++=C2=A0 if (error &lt; 0 || QUEUE_EMPTY(&amp;stream-&gt;write_queue)) {<br=
>
+=C2=A0 =C2=A0 =C2=A0uv__io_stop(stream-&gt;loop, &amp;stream-&gt;io_watche=
r, POLLOUT);<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+@@ -1352,7 +1352,7 @@ int uv_write2(uv_write_t* req,<br>
+=C2=A0 =C2=A0req-&gt;handle =3D stream;<br>
+=C2=A0 =C2=A0req-&gt;error =3D 0;<br>
+=C2=A0 =C2=A0req-&gt;send_handle =3D send_handle;<br>
+-=C2=A0 uv__queue_init(&amp;req-&gt;queue);<br>
++=C2=A0 QUEUE_INIT(&amp;req-&gt;queue);<br>
+ <br>
+=C2=A0 =C2=A0req-&gt;bufs =3D req-&gt;bufsml;<br>
+=C2=A0 =C2=A0if (nbufs &gt; ARRAY_SIZE(req-&gt;bufsml))<br>
+@@ -1367,7 +1367,7 @@ int uv_write2(uv_write_t* req,<br>
+=C2=A0 =C2=A0stream-&gt;write_queue_size +=3D uv__count_bufs(bufs, nbufs);=
<br>
+ <br>
+=C2=A0 =C2=A0/* Append the request to write_queue. */<br>
+-=C2=A0 uv__queue_insert_tail(&amp;stream-&gt;write_queue, &amp;req-&gt;qu=
eue);<br>
++=C2=A0 QUEUE_INSERT_TAIL(&amp;stream-&gt;write_queue, &amp;req-&gt;queue)=
;<br>
+ <br>
+=C2=A0 =C2=A0/* If the queue was empty when this function began, we should=
 attempt to<br>
+=C2=A0 =C2=A0 * do the write immediately. Otherwise start the write_watche=
r and wait<br>
+diff --git a/deps/uv/src/unix/sunos.c b/deps/uv/src/unix/sunos.c<br>
+index 2d6bae79604..75b6fbad493 100644<br>
+--- a/deps/uv/src/unix/sunos.c<br>
++++ b/deps/uv/src/unix/sunos.c<br>
+@@ -148,7 +148,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {<br>
+=C2=A0 =C2=A0struct port_event events[1024];<br>
+=C2=A0 =C2=A0struct port_event* pe;<br>
+=C2=A0 =C2=A0struct timespec spec;<br>
+-=C2=A0 struct uv__queue* q;<br>
++=C2=A0 QUEUE* q;<br>
+=C2=A0 =C2=A0uv__io_t* w;<br>
+=C2=A0 =C2=A0sigset_t* pset;<br>
+=C2=A0 =C2=A0sigset_t set;<br>
+@@ -166,16 +166,16 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {<br>
+=C2=A0 =C2=A0int reset_timeout;<br>
+ <br>
+=C2=A0 =C2=A0if (loop-&gt;nfds =3D=3D 0) {<br>
+-=C2=A0 =C2=A0 assert(uv__queue_empty(&amp;loop-&gt;watcher_queue));<br>
++=C2=A0 =C2=A0 assert(QUEUE_EMPTY(&amp;loop-&gt;watcher_queue));<br>
+=C2=A0 =C2=A0 =C2=A0return;<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+-=C2=A0 while (!uv__queue_empty(&amp;loop-&gt;watcher_queue)) {<br>
+-=C2=A0 =C2=A0 q =3D uv__queue_head(&amp;loop-&gt;watcher_queue);<br>
+-=C2=A0 =C2=A0 uv__queue_remove(q);<br>
+-=C2=A0 =C2=A0 uv__queue_init(q);<br>
++=C2=A0 while (!QUEUE_EMPTY(&amp;loop-&gt;watcher_queue)) {<br>
++=C2=A0 =C2=A0 q =3D QUEUE_HEAD(&amp;loop-&gt;watcher_queue);<br>
++=C2=A0 =C2=A0 QUEUE_REMOVE(q);<br>
++=C2=A0 =C2=A0 QUEUE_INIT(q);<br>
+ <br>
+-=C2=A0 =C2=A0 w =3D uv__queue_data(q, uv__io_t, watcher_queue);<br>
++=C2=A0 =C2=A0 w =3D QUEUE_DATA(q, uv__io_t, watcher_queue);<br>
+=C2=A0 =C2=A0 =C2=A0assert(w-&gt;pevents !=3D 0);<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0if (port_associate(loop-&gt;backend_fd,<br>
+@@ -316,8 +316,8 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0continue;=C2=A0 /* Disabled by callback.=
 */<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Events Ports operates in oneshot mode, rearm=
 timer on next run. */<br>
+-=C2=A0 =C2=A0 =C2=A0 if (w-&gt;pevents !=3D 0 &amp;&amp; uv__queue_empty(=
&amp;w-&gt;watcher_queue))<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 uv__queue_insert_tail(&amp;loop-&gt;watcher_q=
ueue, &amp;w-&gt;watcher_queue);<br>
++=C2=A0 =C2=A0 =C2=A0 if (w-&gt;pevents !=3D 0 &amp;&amp; QUEUE_EMPTY(&amp=
;w-&gt;watcher_queue))<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 QUEUE_INSERT_TAIL(&amp;loop-&gt;watcher_queue=
, &amp;w-&gt;watcher_queue);<br>
+=C2=A0 =C2=A0 =C2=A0}<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0uv__metrics_inc_events(loop, nevents);<br>
+diff --git a/deps/uv/src/unix/tcp.c b/deps/uv/src/unix/tcp.c<br>
+index d6c848f4610..ab4e06c2f67 100644<br>
+--- a/deps/uv/src/unix/tcp.c<br>
++++ b/deps/uv/src/unix/tcp.c<br>
+@@ -124,7 +124,7 @@ int uv_tcp_init_ex(uv_loop_t* loop, uv_tcp_t* tcp, uns=
igned int flags) {<br>
+=C2=A0 =C2=A0if (domain !=3D AF_UNSPEC) {<br>
+=C2=A0 =C2=A0 =C2=A0err =3D new_socket(tcp, domain, 0);<br>
+=C2=A0 =C2=A0 =C2=A0if (err) {<br>
+-=C2=A0 =C2=A0 =C2=A0 uv__queue_remove(&amp;tcp-&gt;handle_queue);<br>
++=C2=A0 =C2=A0 =C2=A0 QUEUE_REMOVE(&amp;tcp-&gt;handle_queue);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (tcp-&gt;io_watcher.fd !=3D -1)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uv__close(tcp-&gt;io_watcher.fd);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0tcp-&gt;io_watcher.fd =3D -1;<br>
+@@ -252,7 +252,7 @@ out:<br>
+=C2=A0 =C2=A0uv__req_init(handle-&gt;loop, req, UV_CONNECT);<br>
+=C2=A0 =C2=A0req-&gt;cb =3D cb;<br>
+=C2=A0 =C2=A0req-&gt;handle =3D (uv_stream_t*) handle;<br>
+-=C2=A0 uv__queue_init(&amp;req-&gt;queue);<br>
++=C2=A0 QUEUE_INIT(&amp;req-&gt;queue);<br>
+=C2=A0 =C2=A0handle-&gt;connect_req =3D req;<br>
+ <br>
+=C2=A0 =C2=A0uv__io_start(handle-&gt;loop, &amp;handle-&gt;io_watcher, POL=
LOUT);<br>
+diff --git a/deps/uv/src/unix/tty.c b/deps/uv/src/unix/tty.c<br>
+index d099bdb3b67..7a5390c1a8b 100644<br>
+--- a/deps/uv/src/unix/tty.c<br>
++++ b/deps/uv/src/unix/tty.c<br>
+@@ -222,7 +222,7 @@ skip:<br>
+=C2=A0 =C2=A0 =C2=A0int rc =3D r;<br>
+=C2=A0 =C2=A0 =C2=A0if (newfd !=3D -1)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0uv__close(newfd);<br>
+-=C2=A0 =C2=A0 uv__queue_remove(&amp;tty-&gt;handle_queue);<br>
++=C2=A0 =C2=A0 QUEUE_REMOVE(&amp;tty-&gt;handle_queue);<br>
+=C2=A0 =C2=A0 =C2=A0do<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0r =3D fcntl(fd, F_SETFL, saved_flags);<br>
+=C2=A0 =C2=A0 =C2=A0while (r =3D=3D -1 &amp;&amp; errno =3D=3D EINTR);<br>
+diff --git a/deps/uv/src/unix/udp.c b/deps/uv/src/unix/udp.c<br>
+index c2814512a5f..f556808fbae 100644<br>
+--- a/deps/uv/src/unix/udp.c<br>
++++ b/deps/uv/src/unix/udp.c<br>
+@@ -62,18 +62,18 @@ void uv__udp_close(uv_udp_t* handle) {<br>
+ <br>
+ void uv__udp_finish_close(uv_udp_t* handle) {<br>
+=C2=A0 =C2=A0uv_udp_send_t* req;<br>
+-=C2=A0 struct uv__queue* q;<br>
++=C2=A0 QUEUE* q;<br>
+ <br>
+=C2=A0 =C2=A0assert(!uv__io_active(&amp;handle-&gt;io_watcher, POLLIN | PO=
LLOUT));<br>
+=C2=A0 =C2=A0assert(handle-&gt;io_watcher.fd =3D=3D -1);<br>
+ <br>
+-=C2=A0 while (!uv__queue_empty(&amp;handle-&gt;write_queue)) {<br>
+-=C2=A0 =C2=A0 q =3D uv__queue_head(&amp;handle-&gt;write_queue);<br>
+-=C2=A0 =C2=A0 uv__queue_remove(q);<br>
++=C2=A0 while (!QUEUE_EMPTY(&amp;handle-&gt;write_queue)) {<br>
++=C2=A0 =C2=A0 q =3D QUEUE_HEAD(&amp;handle-&gt;write_queue);<br>
++=C2=A0 =C2=A0 QUEUE_REMOVE(q);<br>
+ <br>
+-=C2=A0 =C2=A0 req =3D uv__queue_data(q, uv_udp_send_t, queue);<br>
++=C2=A0 =C2=A0 req =3D QUEUE_DATA(q, uv_udp_send_t, queue);<br>
+=C2=A0 =C2=A0 =C2=A0req-&gt;status =3D UV_ECANCELED;<br>
+-=C2=A0 =C2=A0 uv__queue_insert_tail(&amp;handle-&gt;write_completed_queue=
, &amp;req-&gt;queue);<br>
++=C2=A0 =C2=A0 QUEUE_INSERT_TAIL(&amp;handle-&gt;write_completed_queue, &a=
mp;req-&gt;queue);<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+=C2=A0 =C2=A0uv__udp_run_completed(handle);<br>
+@@ -90,16 +90,16 @@ void uv__udp_finish_close(uv_udp_t* handle) {<br>
+ <br>
+ static void uv__udp_run_completed(uv_udp_t* handle) {<br>
+=C2=A0 =C2=A0uv_udp_send_t* req;<br>
+-=C2=A0 struct uv__queue* q;<br>
++=C2=A0 QUEUE* q;<br>
+ <br>
+=C2=A0 =C2=A0assert(!(handle-&gt;flags &amp; UV_HANDLE_UDP_PROCESSING));<b=
r>
+=C2=A0 =C2=A0handle-&gt;flags |=3D UV_HANDLE_UDP_PROCESSING;<br>
+ <br>
+-=C2=A0 while (!uv__queue_empty(&amp;handle-&gt;write_completed_queue)) {<=
br>
+-=C2=A0 =C2=A0 q =3D uv__queue_head(&amp;handle-&gt;write_completed_queue)=
;<br>
+-=C2=A0 =C2=A0 uv__queue_remove(q);<br>
++=C2=A0 while (!QUEUE_EMPTY(&amp;handle-&gt;write_completed_queue)) {<br>
++=C2=A0 =C2=A0 q =3D QUEUE_HEAD(&amp;handle-&gt;write_completed_queue);<br=
>
++=C2=A0 =C2=A0 QUEUE_REMOVE(q);<br>
+ <br>
+-=C2=A0 =C2=A0 req =3D uv__queue_data(q, uv_udp_send_t, queue);<br>
++=C2=A0 =C2=A0 req =3D QUEUE_DATA(q, uv_udp_send_t, queue);<br>
+=C2=A0 =C2=A0 =C2=A0uv__req_unregister(handle-&gt;loop, req);<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0handle-&gt;send_queue_size -=3D uv__count_bufs(req-&gt=
;bufs, req-&gt;nbufs);<br>
+@@ -121,7 +121,7 @@ static void uv__udp_run_completed(uv_udp_t* handle) {<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0req-&gt;send_cb(req, req-&gt;status);<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+-=C2=A0 if (uv__queue_empty(&amp;handle-&gt;write_queue)) {<br>
++=C2=A0 if (QUEUE_EMPTY(&amp;handle-&gt;write_queue)) {<br>
+=C2=A0 =C2=A0 =C2=A0/* Pending queue and completion queue empty, stop watc=
her. */<br>
+=C2=A0 =C2=A0 =C2=A0uv__io_stop(handle-&gt;loop, &amp;handle-&gt;io_watche=
r, POLLOUT);<br>
+=C2=A0 =C2=A0 =C2=A0if (!uv__io_active(&amp;handle-&gt;io_watcher, POLLIN)=
)<br>
+@@ -280,20 +280,20 @@ static void uv__udp_sendmsg(uv_udp_t* handle) {<br>
+=C2=A0 =C2=A0uv_udp_send_t* req;<br>
+=C2=A0 =C2=A0struct mmsghdr h[20];<br>
+=C2=A0 =C2=A0struct mmsghdr* p;<br>
+-=C2=A0 struct uv__queue* q;<br>
++=C2=A0 QUEUE* q;<br>
+=C2=A0 =C2=A0ssize_t npkts;<br>
+=C2=A0 =C2=A0size_t pkts;<br>
+=C2=A0 =C2=A0size_t i;<br>
+ <br>
+-=C2=A0 if (uv__queue_empty(&amp;handle-&gt;write_queue))<br>
++=C2=A0 if (QUEUE_EMPTY(&amp;handle-&gt;write_queue))<br>
+=C2=A0 =C2=A0 =C2=A0return;<br>
+ <br>
+ write_queue_drain:<br>
+-=C2=A0 for (pkts =3D 0, q =3D uv__queue_head(&amp;handle-&gt;write_queue)=
;<br>
++=C2=A0 for (pkts =3D 0, q =3D QUEUE_HEAD(&amp;handle-&gt;write_queue);<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 pkts &lt; ARRAY_SIZE(h) &amp;&amp; q !=3D &amp=
;handle-&gt;write_queue;<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0++pkts, q =3D uv__queue_head(q)) {<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0++pkts, q =3D QUEUE_HEAD(q)) {<br>
+=C2=A0 =C2=A0 =C2=A0assert(q !=3D NULL);<br>
+-=C2=A0 =C2=A0 req =3D uv__queue_data(q, uv_udp_send_t, queue);<br>
++=C2=A0 =C2=A0 req =3D QUEUE_DATA(q, uv_udp_send_t, queue);<br>
+=C2=A0 =C2=A0 =C2=A0assert(req !=3D NULL);<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0p =3D &amp;h[pkts];<br>
+@@ -325,16 +325,16 @@ write_queue_drain:<br>
+=C2=A0 =C2=A0if (npkts &lt; 1) {<br>
+=C2=A0 =C2=A0 =C2=A0if (errno =3D=3D EAGAIN || errno =3D=3D EWOULDBLOCK ||=
 errno =3D=3D ENOBUFS)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
+-=C2=A0 =C2=A0 for (i =3D 0, q =3D uv__queue_head(&amp;handle-&gt;write_qu=
eue);<br>
++=C2=A0 =C2=A0 for (i =3D 0, q =3D QUEUE_HEAD(&amp;handle-&gt;write_queue)=
;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 i &lt; pkts &amp;&amp; q !=3D &amp;hand=
le-&gt;write_queue;<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0++i, q =3D uv__queue_head(&amp;handle-&=
gt;write_queue)) {<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0++i, q =3D QUEUE_HEAD(&amp;handle-&gt;w=
rite_queue)) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0assert(q !=3D NULL);<br>
+-=C2=A0 =C2=A0 =C2=A0 req =3D uv__queue_data(q, uv_udp_send_t, queue);<br>
++=C2=A0 =C2=A0 =C2=A0 req =3D QUEUE_DATA(q, uv_udp_send_t, queue);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0assert(req !=3D NULL);<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0req-&gt;status =3D UV__ERR(errno);<br>
+-=C2=A0 =C2=A0 =C2=A0 uv__queue_remove(&amp;req-&gt;queue);<br>
+-=C2=A0 =C2=A0 =C2=A0 uv__queue_insert_tail(&amp;handle-&gt;write_complete=
d_queue, &amp;req-&gt;queue);<br>
++=C2=A0 =C2=A0 =C2=A0 QUEUE_REMOVE(&amp;req-&gt;queue);<br>
++=C2=A0 =C2=A0 =C2=A0 QUEUE_INSERT_TAIL(&amp;handle-&gt;write_completed_qu=
eue, &amp;req-&gt;queue);<br>
+=C2=A0 =C2=A0 =C2=A0}<br>
+=C2=A0 =C2=A0 =C2=A0uv__io_feed(handle-&gt;loop, &amp;handle-&gt;io_watche=
r);<br>
+=C2=A0 =C2=A0 =C2=A0return;<br>
+@@ -343,11 +343,11 @@ write_queue_drain:<br>
+=C2=A0 =C2=A0/* Safety: npkts known to be &gt;0 below. Hence cast from ssi=
ze_t<br>
+=C2=A0 =C2=A0 * to size_t safe.<br>
+=C2=A0 =C2=A0 */<br>
+-=C2=A0 for (i =3D 0, q =3D uv__queue_head(&amp;handle-&gt;write_queue);<b=
r>
++=C2=A0 for (i =3D 0, q =3D QUEUE_HEAD(&amp;handle-&gt;write_queue);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 i &lt; (size_t)npkts &amp;&amp; q !=3D &amp;ha=
ndle-&gt;write_queue;<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0++i, q =3D uv__queue_head(&amp;handle-&gt;writ=
e_queue)) {<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0++i, q =3D QUEUE_HEAD(&amp;handle-&gt;write_qu=
eue)) {<br>
+=C2=A0 =C2=A0 =C2=A0assert(q !=3D NULL);<br>
+-=C2=A0 =C2=A0 req =3D uv__queue_data(q, uv_udp_send_t, queue);<br>
++=C2=A0 =C2=A0 req =3D QUEUE_DATA(q, uv_udp_send_t, queue);<br>
+=C2=A0 =C2=A0 =C2=A0assert(req !=3D NULL);<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0req-&gt;status =3D req-&gt;bufs[0].len;<br>
+@@ -357,25 +357,25 @@ write_queue_drain:<br>
+=C2=A0 =C2=A0 =C2=A0 * why we don&#39;t handle partial writes. Just pop th=
e request<br>
+=C2=A0 =C2=A0 =C2=A0 * off the write queue and onto the completed queue, d=
one.<br>
+=C2=A0 =C2=A0 =C2=A0 */<br>
+-=C2=A0 =C2=A0 uv__queue_remove(&amp;req-&gt;queue);<br>
+-=C2=A0 =C2=A0 uv__queue_insert_tail(&amp;handle-&gt;write_completed_queue=
, &amp;req-&gt;queue);<br>
++=C2=A0 =C2=A0 QUEUE_REMOVE(&amp;req-&gt;queue);<br>
++=C2=A0 =C2=A0 QUEUE_INSERT_TAIL(&amp;handle-&gt;write_completed_queue, &a=
mp;req-&gt;queue);<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+=C2=A0 =C2=A0/* couldn&#39;t batch everything, continue sending (jump to a=
void stack growth) */<br>
+-=C2=A0 if (!uv__queue_empty(&amp;handle-&gt;write_queue))<br>
++=C2=A0 if (!QUEUE_EMPTY(&amp;handle-&gt;write_queue))<br>
+=C2=A0 =C2=A0 =C2=A0goto write_queue_drain;<br>
+=C2=A0 =C2=A0uv__io_feed(handle-&gt;loop, &amp;handle-&gt;io_watcher);<br>
+ #else=C2=A0 /* __linux__ || ____FreeBSD__ */<br>
+=C2=A0 =C2=A0uv_udp_send_t* req;<br>
+=C2=A0 =C2=A0struct msghdr h;<br>
+-=C2=A0 struct uv__queue* q;<br>
++=C2=A0 QUEUE* q;<br>
+=C2=A0 =C2=A0ssize_t size;<br>
+ <br>
+-=C2=A0 while (!uv__queue_empty(&amp;handle-&gt;write_queue)) {<br>
+-=C2=A0 =C2=A0 q =3D uv__queue_head(&amp;handle-&gt;write_queue);<br>
++=C2=A0 while (!QUEUE_EMPTY(&amp;handle-&gt;write_queue)) {<br>
++=C2=A0 =C2=A0 q =3D QUEUE_HEAD(&amp;handle-&gt;write_queue);<br>
+=C2=A0 =C2=A0 =C2=A0assert(q !=3D NULL);<br>
+ <br>
+-=C2=A0 =C2=A0 req =3D uv__queue_data(q, uv_udp_send_t, queue);<br>
++=C2=A0 =C2=A0 req =3D QUEUE_DATA(q, uv_udp_send_t, queue);<br>
+=C2=A0 =C2=A0 =C2=A0assert(req !=3D NULL);<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0memset(&amp;h, 0, sizeof h);<br>
+@@ -414,8 +414,8 @@ write_queue_drain:<br>
+=C2=A0 =C2=A0 =C2=A0 * why we don&#39;t handle partial writes. Just pop th=
e request<br>
+=C2=A0 =C2=A0 =C2=A0 * off the write queue and onto the completed queue, d=
one.<br>
+=C2=A0 =C2=A0 =C2=A0 */<br>
+-=C2=A0 =C2=A0 uv__queue_remove(&amp;req-&gt;queue);<br>
+-=C2=A0 =C2=A0 uv__queue_insert_tail(&amp;handle-&gt;write_completed_queue=
, &amp;req-&gt;queue);<br>
++=C2=A0 =C2=A0 QUEUE_REMOVE(&amp;req-&gt;queue);<br>
++=C2=A0 =C2=A0 QUEUE_INSERT_TAIL(&amp;handle-&gt;write_completed_queue, &a=
mp;req-&gt;queue);<br>
+=C2=A0 =C2=A0 =C2=A0uv__io_feed(handle-&gt;loop, &amp;handle-&gt;io_watche=
r);<br>
+=C2=A0 =C2=A0}<br>
+ #endif=C2=A0 /* __linux__ || ____FreeBSD__ */<br>
+@@ -729,7 +729,7 @@ int uv__udp_send(uv_udp_send_t* req,<br>
+=C2=A0 =C2=A0memcpy(req-&gt;bufs, bufs, nbufs * sizeof(bufs[0]));<br>
+=C2=A0 =C2=A0handle-&gt;send_queue_size +=3D uv__count_bufs(req-&gt;bufs, =
req-&gt;nbufs);<br>
+=C2=A0 =C2=A0handle-&gt;send_queue_count++;<br>
+-=C2=A0 uv__queue_insert_tail(&amp;handle-&gt;write_queue, &amp;req-&gt;qu=
eue);<br>
++=C2=A0 QUEUE_INSERT_TAIL(&amp;handle-&gt;write_queue, &amp;req-&gt;queue)=
;<br>
+=C2=A0 =C2=A0uv__handle_start(handle);<br>
+ <br>
+=C2=A0 =C2=A0if (empty_queue &amp;&amp; !(handle-&gt;flags &amp; UV_HANDLE=
_UDP_PROCESSING)) {<br>
+@@ -739,7 +739,7 @@ int uv__udp_send(uv_udp_send_t* req,<br>
+=C2=A0 =C2=A0 =C2=A0 * away. In such cases the `io_watcher` has to be queu=
ed for asynchronous<br>
+=C2=A0 =C2=A0 =C2=A0 * write.<br>
+=C2=A0 =C2=A0 =C2=A0 */<br>
+-=C2=A0 =C2=A0 if (!uv__queue_empty(&amp;handle-&gt;write_queue))<br>
++=C2=A0 =C2=A0 if (!QUEUE_EMPTY(&amp;handle-&gt;write_queue))<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0uv__io_start(handle-&gt;loop, &amp;handle-&gt;i=
o_watcher, POLLOUT);<br>
+=C2=A0 =C2=A0} else {<br>
+=C2=A0 =C2=A0 =C2=A0uv__io_start(handle-&gt;loop, &amp;handle-&gt;io_watch=
er, POLLOUT);<br>
+@@ -1007,8 +1007,8 @@ int uv__udp_init_ex(uv_loop_t* loop,<br>
+=C2=A0 =C2=A0handle-&gt;send_queue_size =3D 0;<br>
+=C2=A0 =C2=A0handle-&gt;send_queue_count =3D 0;<br>
+=C2=A0 =C2=A0uv__io_init(&amp;handle-&gt;io_watcher, uv__udp_io, fd);<br>
+-=C2=A0 uv__queue_init(&amp;handle-&gt;write_queue);<br>
+-=C2=A0 uv__queue_init(&amp;handle-&gt;write_completed_queue);<br>
++=C2=A0 QUEUE_INIT(&amp;handle-&gt;write_queue);<br>
++=C2=A0 QUEUE_INIT(&amp;handle-&gt;write_completed_queue);<br>
+ <br>
+=C2=A0 =C2=A0return 0;<br>
+ }<br>
+diff --git a/deps/uv/src/uv-common.c b/deps/uv/src/uv-common.c<br>
+index 916f3f4e006..cec771fab21 100644<br>
+--- a/deps/uv/src/uv-common.c<br>
++++ b/deps/uv/src/uv-common.c<br>
+@@ -533,17 +533,17 @@ int uv_udp_recv_stop(uv_udp_t* handle) {<br>
+ <br>
+ <br>
+ void uv_walk(uv_loop_t* loop, uv_walk_cb walk_cb, void* arg) {<br>
+-=C2=A0 struct uv__queue queue;<br>
+-=C2=A0 struct uv__queue* q;<br>
++=C2=A0 QUEUE queue;<br>
++=C2=A0 QUEUE* q;<br>
+=C2=A0 =C2=A0uv_handle_t* h;<br>
+ <br>
+-=C2=A0 uv__queue_move(&amp;loop-&gt;handle_queue, &amp;queue);<br>
+-=C2=A0 while (!uv__queue_empty(&amp;queue)) {<br>
+-=C2=A0 =C2=A0 q =3D uv__queue_head(&amp;queue);<br>
+-=C2=A0 =C2=A0 h =3D uv__queue_data(q, uv_handle_t, handle_queue);<br>
++=C2=A0 QUEUE_MOVE(&amp;loop-&gt;handle_queue, &amp;queue);<br>
++=C2=A0 while (!QUEUE_EMPTY(&amp;queue)) {<br>
++=C2=A0 =C2=A0 q =3D QUEUE_HEAD(&amp;queue);<br>
++=C2=A0 =C2=A0 h =3D QUEUE_DATA(q, uv_handle_t, handle_queue);<br>
+ <br>
+-=C2=A0 =C2=A0 uv__queue_remove(q);<br>
+-=C2=A0 =C2=A0 uv__queue_insert_tail(&amp;loop-&gt;handle_queue, q);<br>
++=C2=A0 =C2=A0 QUEUE_REMOVE(q);<br>
++=C2=A0 =C2=A0 QUEUE_INSERT_TAIL(&amp;loop-&gt;handle_queue, q);<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0if (h-&gt;flags &amp; UV_HANDLE_INTERNAL) continue;<br=
>
+=C2=A0 =C2=A0 =C2=A0walk_cb(h, arg);<br>
+@@ -553,14 +553,14 @@ void uv_walk(uv_loop_t* loop, uv_walk_cb walk_cb, vo=
id* arg) {<br>
+ <br>
+ static void uv__print_handles(uv_loop_t* loop, int only_active, FILE* str=
eam) {<br>
+=C2=A0 =C2=A0const char* type;<br>
+-=C2=A0 struct uv__queue* q;<br>
++=C2=A0 QUEUE* q;<br>
+=C2=A0 =C2=A0uv_handle_t* h;<br>
+ <br>
+=C2=A0 =C2=A0if (loop =3D=3D NULL)<br>
+=C2=A0 =C2=A0 =C2=A0loop =3D uv_default_loop();<br>
+ <br>
+-=C2=A0 uv__queue_foreach(q, &amp;loop-&gt;handle_queue) {<br>
+-=C2=A0 =C2=A0 h =3D uv__queue_data(q, uv_handle_t, handle_queue);<br>
++=C2=A0 QUEUE_FOREACH(q, &amp;loop-&gt;handle_queue) {<br>
++=C2=A0 =C2=A0 h =3D QUEUE_DATA(q, uv_handle_t, handle_queue);<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0if (only_active &amp;&amp; !uv__is_active(h))<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0continue;<br>
+@@ -846,7 +846,7 @@ uv_loop_t* uv_loop_new(void) {<br>
+ <br>
+ <br>
+ int uv_loop_close(uv_loop_t* loop) {<br>
+-=C2=A0 struct uv__queue* q;<br>
++=C2=A0 QUEUE* q;<br>
+=C2=A0 =C2=A0uv_handle_t* h;<br>
+ #ifndef NDEBUG<br>
+=C2=A0 =C2=A0void* saved_data;<br>
+@@ -855,8 +855,8 @@ int uv_loop_close(uv_loop_t* loop) {<br>
+=C2=A0 =C2=A0if (uv__has_active_reqs(loop))<br>
+=C2=A0 =C2=A0 =C2=A0return UV_EBUSY;<br>
+ <br>
+-=C2=A0 uv__queue_foreach(q, &amp;loop-&gt;handle_queue) {<br>
+-=C2=A0 =C2=A0 h =3D uv__queue_data(q, uv_handle_t, handle_queue);<br>
++=C2=A0 QUEUE_FOREACH(q, &amp;loop-&gt;handle_queue) {<br>
++=C2=A0 =C2=A0 h =3D QUEUE_DATA(q, uv_handle_t, handle_queue);<br>
+=C2=A0 =C2=A0 =C2=A0if (!(h-&gt;flags &amp; UV_HANDLE_INTERNAL))<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return UV_EBUSY;<br>
+=C2=A0 =C2=A0}<br>
+diff --git a/deps/uv/src/uv-common.h b/deps/uv/src/uv-common.h<br>
+index cd57e5a3515..decde5362c8 100644<br>
+--- a/deps/uv/src/uv-common.h<br>
++++ b/deps/uv/src/uv-common.h<br>
+@@ -323,7 +323,7 @@ void uv__threadpool_cleanup(void);<br>
+=C2=A0 =C2=A0 =C2=A0(h)-&gt;loop =3D (loop_);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0(h)-&gt;type =3D (type_);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0(h)-&gt;flags =3D UV_HANDLE_REF;=C2=A0 /* Ref the loop=
 when active. */=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+-=C2=A0 =C2=A0 uv__queue_insert_tail(&amp;(loop_)-&gt;handle_queue, &amp;(=
h)-&gt;handle_queue);=C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
++=C2=A0 =C2=A0 QUEUE_INSERT_TAIL(&amp;(loop_)-&gt;handle_queue, &amp;(h)-&=
gt;handle_queue);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0uv__handle_platform_init(h);=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0}=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0while (0)<br>
+@@ -415,7 +415,6 @@ struct uv__iou {<br>
+=C2=A0 =C2=A0size_t sqelen;<br>
+=C2=A0 =C2=A0int ringfd;<br>
+=C2=A0 =C2=A0uint32_t in_flight;<br>
+-=C2=A0 uint32_t flags;<br>
+ };<br>
+ #endif=C2=A0 /* __linux__ */<br>
+ <br>
+diff --git a/deps/uv/src/win/core.c b/deps/uv/src/win/core.c<br>
+index e9885a0f1ff..9a3be58849a 100644<br>
+--- a/deps/uv/src/win/core.c<br>
++++ b/deps/uv/src/win/core.c<br>
+@@ -255,8 +255,8 @@ int uv_loop_init(uv_loop_t* loop) {<br>
+=C2=A0 =C2=A0loop-&gt;time =3D 0;<br>
+=C2=A0 =C2=A0uv_update_time(loop);<br>
+ <br>
+-=C2=A0 uv__queue_init(&amp;loop-&gt;wq);<br>
+-=C2=A0 uv__queue_init(&amp;loop-&gt;handle_queue);<br>
++=C2=A0 QUEUE_INIT(&amp;loop-&gt;wq);<br>
++=C2=A0 QUEUE_INIT(&amp;loop-&gt;handle_queue);<br>
+=C2=A0 =C2=A0loop-&gt;active_reqs.count =3D 0;<br>
+=C2=A0 =C2=A0loop-&gt;active_handles =3D 0;<br>
+ <br>
+@@ -358,7 +358,7 @@ void uv__loop_close(uv_loop_t* loop) {<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+=C2=A0 =C2=A0uv_mutex_lock(&amp;loop-&gt;wq_mutex);<br>
+-=C2=A0 assert(uv__queue_empty(&amp;loop-&gt;wq) &amp;&amp; &quot;thread p=
ool work queue not empty!&quot;);<br>
++=C2=A0 assert(QUEUE_EMPTY(&amp;loop-&gt;wq) &amp;&amp; &quot;thread pool =
work queue not empty!&quot;);<br>
+=C2=A0 =C2=A0assert(!uv__has_active_reqs(loop));<br>
+=C2=A0 =C2=A0uv_mutex_unlock(&amp;loop-&gt;wq_mutex);<br>
+=C2=A0 =C2=A0uv_mutex_destroy(&amp;loop-&gt;wq_mutex);<br>
+diff --git a/deps/uv/src/win/fs.c b/deps/uv/src/win/fs.c<br>
+index fc209c54f47..deb9438d689 100644<br>
+--- a/deps/uv/src/win/fs.c<br>
++++ b/deps/uv/src/win/fs.c<br>
+@@ -144,97 +144,26 @@ void uv__fs_init(void) {<br>
+ }<br>
+ <br>
+ <br>
+-static int32_t fs__decode_wtf8_char(const char** input) {<br>
+-=C2=A0 uint32_t code_point;<br>
+-=C2=A0 uint8_t b1;<br>
+-=C2=A0 uint8_t b2;<br>
+-=C2=A0 uint8_t b3;<br>
+-=C2=A0 uint8_t b4;<br>
+-<br>
+-=C2=A0 b1 =3D **input;<br>
+-=C2=A0 if (b1 &lt;=3D 0x7F)<br>
+-=C2=A0 =C2=A0 return b1; /* ASCII code point */<br>
+-=C2=A0 if (b1 &lt; 0xC2)<br>
+-=C2=A0 =C2=A0 return -1; /* invalid: continuation byte */<br>
+-=C2=A0 code_point =3D b1;<br>
+-<br>
+-=C2=A0 b2 =3D *++*input;<br>
+-=C2=A0 if ((b2 &amp; 0xC0) !=3D 0x80)<br>
+-=C2=A0 =C2=A0 return -1; /* invalid: not a continuation byte */<br>
+-=C2=A0 code_point =3D (code_point &lt;&lt; 6) | (b2 &amp; 0x3F);<br>
+-=C2=A0 if (b1 &lt;=3D 0xDF)<br>
+-=C2=A0 =C2=A0 return 0x7FF &amp; code_point; /* two-byte character */<br>
+-<br>
+-=C2=A0 b3 =3D *++*input;<br>
+-=C2=A0 if ((b3 &amp; 0xC0) !=3D 0x80)<br>
+-=C2=A0 =C2=A0 return -1; /* invalid: not a continuation byte */<br>
+-=C2=A0 code_point =3D (code_point &lt;&lt; 6) | (b3 &amp; 0x3F);<br>
+-=C2=A0 if (b1 &lt;=3D 0xEF)<br>
+-=C2=A0 =C2=A0 return 0xFFFF &amp; code_point; /* three-byte character */<=
br>
+-<br>
+-=C2=A0 b4 =3D *++*input;<br>
+-=C2=A0 if ((b4 &amp; 0xC0) !=3D 0x80)<br>
+-=C2=A0 =C2=A0 return -1; /* invalid: not a continuation byte */<br>
+-=C2=A0 code_point =3D (code_point &lt;&lt; 6) | (b4 &amp; 0x3F);<br>
+-=C2=A0 if (b1 &lt;=3D 0xF4)<br>
+-=C2=A0 =C2=A0 if (code_point &lt;=3D 0x10FFFF)<br>
+-=C2=A0 =C2=A0 =C2=A0 return code_point; /* four-byte character */<br>
+-<br>
+-=C2=A0 /* code point too large */<br>
+-=C2=A0 return -1;<br>
+-}<br>
+-<br>
+-<br>
+-static ssize_t fs__get_length_wtf8(const char* source_ptr) {<br>
+-=C2=A0 size_t w_target_len =3D 0;<br>
+-=C2=A0 int32_t code_point;<br>
+-<br>
+-=C2=A0 do {<br>
+-=C2=A0 =C2=A0 code_point =3D fs__decode_wtf8_char(&amp;source_ptr);<br>
+-=C2=A0 =C2=A0 if (code_point &lt; 0)<br>
+-=C2=A0 =C2=A0 =C2=A0 return -1;<br>
+-=C2=A0 =C2=A0 if (code_point &gt; 0xFFFF)<br>
+-=C2=A0 =C2=A0 =C2=A0 w_target_len++;<br>
+-=C2=A0 =C2=A0 w_target_len++;<br>
+-=C2=A0 } while (*source_ptr++);<br>
+-=C2=A0 return w_target_len;<br>
+-}<br>
+-<br>
+-<br>
+-static void fs__wtf8_to_wide(const char* source_ptr, WCHAR* w_target) {<b=
r>
+-=C2=A0 int32_t code_point;<br>
+-<br>
+-=C2=A0 do {<br>
+-=C2=A0 =C2=A0 code_point =3D fs__decode_wtf8_char(&amp;source_ptr);<br>
+-=C2=A0 =C2=A0 /* fs__get_length_wtf8 should have been called and checked =
first. */<br>
+-=C2=A0 =C2=A0 assert(code_point &gt;=3D 0);<br>
+-=C2=A0 =C2=A0 if (code_point &gt; 0x10000) {<br>
+-=C2=A0 =C2=A0 =C2=A0 assert(code_point &lt; 0x10FFFF);<br>
+-=C2=A0 =C2=A0 =C2=A0 *w_target++ =3D (((code_point - 0x10000) &gt;&gt; 10=
) + 0xD800);<br>
+-=C2=A0 =C2=A0 =C2=A0 *w_target++ =3D ((code_point - 0x10000) &amp; 0x3FF)=
 + 0xDC00;<br>
+-=C2=A0 =C2=A0 } else {<br>
+-=C2=A0 =C2=A0 =C2=A0 *w_target++ =3D code_point;<br>
+-=C2=A0 =C2=A0 }<br>
+-=C2=A0 } while (*source_ptr++);<br>
+-}<br>
+-<br>
+-<br>
+ INLINE static int fs__capture_path(uv_fs_t* req, const char* path,<br>
+=C2=A0 =C2=A0 =C2=A0const char* new_path, const int copy_path) {<br>
+-=C2=A0 WCHAR* buf;<br>
+-=C2=A0 WCHAR* pos;<br>
+-=C2=A0 size_t buf_sz =3D 0;<br>
+-=C2=A0 size_t path_len =3D 0;<br>
+-=C2=A0 ssize_t pathw_len =3D 0;<br>
+-=C2=A0 ssize_t new_pathw_len =3D 0;<br>
++=C2=A0 char* buf;<br>
++=C2=A0 char* pos;<br>
++=C2=A0 ssize_t buf_sz =3D 0, path_len =3D 0, pathw_len =3D 0, new_pathw_l=
en =3D 0;<br>
+ <br>
+=C2=A0 =C2=A0/* new_path can only be set if path is also set. */<br>
+=C2=A0 =C2=A0assert(new_path =3D=3D NULL || path !=3D NULL);<br>
+ <br>
+=C2=A0 =C2=A0if (path !=3D NULL) {<br>
+-=C2=A0 =C2=A0 pathw_len =3D fs__get_length_wtf8(path);<br>
+-=C2=A0 =C2=A0 if (pathw_len &lt; 0)<br>
+-=C2=A0 =C2=A0 =C2=A0 return ERROR_INVALID_NAME;<br>
++=C2=A0 =C2=A0 pathw_len =3D MultiByteToWideChar(CP_UTF8,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 path,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -1,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NULL,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0);<br>
++=C2=A0 =C2=A0 if (pathw_len =3D=3D 0) {<br>
++=C2=A0 =C2=A0 =C2=A0 return GetLastError();<br>
++=C2=A0 =C2=A0 }<br>
++<br>
+=C2=A0 =C2=A0 =C2=A0buf_sz +=3D pathw_len * sizeof(WCHAR);<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+@@ -244,9 +173,16 @@ INLINE static int fs__capture_path(uv_fs_t* req, cons=
t char* path,<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+=C2=A0 =C2=A0if (new_path !=3D NULL) {<br>
+-=C2=A0 =C2=A0 new_pathw_len =3D fs__get_length_wtf8(new_path);<br>
+-=C2=A0 =C2=A0 if (new_pathw_len &lt; 0)<br>
+-=C2=A0 =C2=A0 =C2=A0 return ERROR_INVALID_NAME;<br>
++=C2=A0 =C2=A0 new_pathw_len =3D MultiByteToWideChar(CP_UTF8,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 new_path=
,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -1,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NULL,<br=
>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0);<br>
++=C2=A0 =C2=A0 if (new_pathw_len =3D=3D 0) {<br>
++=C2=A0 =C2=A0 =C2=A0 return GetLastError();<br>
++=C2=A0 =C2=A0 }<br>
++<br>
+=C2=A0 =C2=A0 =C2=A0buf_sz +=3D new_pathw_len * sizeof(WCHAR);<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+@@ -258,7 +194,7 @@ INLINE static int fs__capture_path(uv_fs_t* req, const=
 char* path,<br>
+=C2=A0 =C2=A0 =C2=A0return 0;<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+-=C2=A0 buf =3D uv__malloc(buf_sz);<br>
++=C2=A0 buf =3D (char*) uv__malloc(buf_sz);<br>
+=C2=A0 =C2=A0if (buf =3D=3D NULL) {<br>
+=C2=A0 =C2=A0 =C2=A0return ERROR_OUTOFMEMORY;<br>
+=C2=A0 =C2=A0}<br>
+@@ -266,17 +202,29 @@ INLINE static int fs__capture_path(uv_fs_t* req, con=
st char* path,<br>
+=C2=A0 =C2=A0pos =3D buf;<br>
+ <br>
+=C2=A0 =C2=A0if (path !=3D NULL) {<br>
+-=C2=A0 =C2=A0 fs__wtf8_to_wide(path, pos);<br>
+-=C2=A0 =C2=A0 req-&gt;file.pathw =3D pos;<br>
+-=C2=A0 =C2=A0 pos +=3D pathw_len;<br>
++=C2=A0 =C2=A0 DWORD r =3D MultiByteToWideChar(CP_UTF8,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 path,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -1,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (WCHAR*) pos,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pathw_len);<br>
++=C2=A0 =C2=A0 assert(r =3D=3D (DWORD) pathw_len);<br>
++=C2=A0 =C2=A0 req-&gt;file.pathw =3D (WCHAR*) pos;<br>
++=C2=A0 =C2=A0 pos +=3D r * sizeof(WCHAR);<br>
+=C2=A0 =C2=A0} else {<br>
+=C2=A0 =C2=A0 =C2=A0req-&gt;file.pathw =3D NULL;<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+=C2=A0 =C2=A0if (new_path !=3D NULL) {<br>
+-=C2=A0 =C2=A0 fs__wtf8_to_wide(new_path, pos);<br>
+-=C2=A0 =C2=A0 req-&gt;fs.info.new_pathw =3D pos;<br>
+-=C2=A0 =C2=A0 pos +=3D new_pathw_len;<br>
++=C2=A0 =C2=A0 DWORD r =3D MultiByteToWideChar(CP_UTF8,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 new_path,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -1,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (WCHAR*) pos,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 new_pathw_len);<br>
++=C2=A0 =C2=A0 assert(r =3D=3D (DWORD) new_pathw_len);<br>
++=C2=A0 =C2=A0 req-&gt;fs.info.new_pathw =3D (WCHAR*) pos;<br>
++=C2=A0 =C2=A0 pos +=3D r * sizeof(WCHAR);<br>
+=C2=A0 =C2=A0} else {<br>
+=C2=A0 =C2=A0 =C2=A0req-&gt;fs.info.new_pathw =3D NULL;<br>
+=C2=A0 =C2=A0}<br>
+@@ -284,8 +232,8 @@ INLINE static int fs__capture_path(uv_fs_t* req, const=
 char* path,<br>
+=C2=A0 =C2=A0req-&gt;path =3D path;<br>
+=C2=A0 =C2=A0if (path !=3D NULL &amp;&amp; copy_path) {<br>
+=C2=A0 =C2=A0 =C2=A0memcpy(pos, path, path_len);<br>
+-=C2=A0 =C2=A0 assert(path_len =3D=3D buf_sz - (pos - buf) * sizeof(WCHAR)=
);<br>
+-=C2=A0 =C2=A0 req-&gt;path =3D (char*) pos;<br>
++=C2=A0 =C2=A0 assert(path_len =3D=3D buf_sz - (pos - buf));<br>
++=C2=A0 =C2=A0 req-&gt;path =3D pos;<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+=C2=A0 =C2=A0req-&gt;flags |=3D UV_FS_FREE_PATHS;<br>
+@@ -311,115 +259,57 @@ INLINE static void uv__fs_req_init(uv_loop_t* loop,=
 uv_fs_t* req,<br>
+ }<br>
+ <br>
+ <br>
+-static int32_t fs__get_surrogate_value(const WCHAR* w_source_ptr,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0size_t w_=
source_len) {<br>
+-=C2=A0 WCHAR u;<br>
+-=C2=A0 WCHAR next;<br>
+-<br>
+-=C2=A0 u =3D w_source_ptr[0];<br>
+-=C2=A0 if (u &gt;=3D 0xD800 &amp;&amp; u &lt;=3D 0xDBFF &amp;&amp; w_sour=
ce_len &gt; 1) {<br>
+-=C2=A0 =C2=A0 next =3D w_source_ptr[1];<br>
+-=C2=A0 =C2=A0 if (next &gt;=3D 0xDC00 &amp;&amp; next &lt;=3D 0xDFFF)<br>
+-=C2=A0 =C2=A0 =C2=A0 return 0x10000 + ((u - 0xD800) &lt;&lt; 10) + (next =
- 0xDC00);<br>
+-=C2=A0 }<br>
+-=C2=A0 return u;<br>
+-}<br>
+-<br>
+-<br>
+-static size_t fs__get_length_wide(const WCHAR* w_source_ptr,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 size_t w_source_len) {<br>
+-=C2=A0 size_t target_len;<br>
+-=C2=A0 int32_t code_point;<br>
++static int fs__wide_to_utf8(WCHAR* w_source_ptr,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0DWORD w_source_len,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0char** target_ptr,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uint64_t* target_len_ptr) {<br>
++=C2=A0 int r;<br>
++=C2=A0 int target_len;<br>
++=C2=A0 char* target;<br>
++=C2=A0 target_len =3D WideCharToMultiByte(CP_UTF8,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0w_source_ptr,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0w_source_len,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0NULL,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0NULL,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0NULL);<br>
+ <br>
+-=C2=A0 target_len =3D 0;<br>
+-=C2=A0 for (; w_source_len; w_source_len--, w_source_ptr++) {<br>
+-=C2=A0 =C2=A0 code_point =3D fs__get_surrogate_value(w_source_ptr, w_sour=
ce_len);<br>
+-=C2=A0 =C2=A0 /* Can be invalid UTF-8 but must be valid WTF-8. */<br>
+-=C2=A0 =C2=A0 assert(code_point &gt;=3D 0);<br>
+-=C2=A0 =C2=A0 if (code_point &lt; 0x80)<br>
+-=C2=A0 =C2=A0 =C2=A0 target_len +=3D 1;<br>
+-=C2=A0 =C2=A0 else if (code_point &lt; 0x800)<br>
+-=C2=A0 =C2=A0 =C2=A0 target_len +=3D 2;<br>
+-=C2=A0 =C2=A0 else if (code_point &lt; 0x10000)<br>
+-=C2=A0 =C2=A0 =C2=A0 target_len +=3D 3;<br>
+-=C2=A0 =C2=A0 else {<br>
+-=C2=A0 =C2=A0 =C2=A0 target_len +=3D 4;<br>
+-=C2=A0 =C2=A0 =C2=A0 w_source_ptr++;<br>
+-=C2=A0 =C2=A0 =C2=A0 w_source_len--;<br>
+-=C2=A0 =C2=A0 }<br>
++=C2=A0 if (target_len =3D=3D 0) {<br>
++=C2=A0 =C2=A0 return -1;<br>
+=C2=A0 =C2=A0}<br>
+-=C2=A0 return target_len;<br>
+-}<br>
+ <br>
+-<br>
+-static int fs__wide_to_wtf8(WCHAR* w_source_ptr,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 size_t w_source_len,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 char** target_ptr,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 size_t* target_len_ptr) {<br>
+-=C2=A0 size_t target_len;<br>
+-=C2=A0 char* target;<br>
+-=C2=A0 int32_t code_point;<br>
+-<br>
+-=C2=A0 /* If *target_ptr is provided, then *target_len_ptr must be its le=
ngth<br>
+-=C2=A0 =C2=A0* (excluding space for null), otherwise we will compute the =
target_len_ptr<br>
+-=C2=A0 =C2=A0* length and may return a new allocation in *target_ptr if t=
arget_ptr is<br>
+-=C2=A0 =C2=A0* provided. */<br>
+-=C2=A0 if (target_ptr =3D=3D NULL || *target_ptr =3D=3D NULL) {<br>
+-=C2=A0 =C2=A0 target_len =3D fs__get_length_wide(w_source_ptr, w_source_l=
en);<br>
+-=C2=A0 =C2=A0 if (target_len_ptr !=3D NULL)<br>
+-=C2=A0 =C2=A0 =C2=A0 *target_len_ptr =3D target_len;<br>
+-=C2=A0 } else {<br>
+-=C2=A0 =C2=A0 target_len =3D *target_len_ptr;<br>
++=C2=A0 if (target_len_ptr !=3D NULL) {<br>
++=C2=A0 =C2=A0 *target_len_ptr =3D target_len;<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+-=C2=A0 if (target_ptr =3D=3D NULL)<br>
++=C2=A0 if (target_ptr =3D=3D NULL) {<br>
+=C2=A0 =C2=A0 =C2=A0return 0;<br>
+-<br>
+-=C2=A0 if (*target_ptr =3D=3D NULL) {<br>
+-=C2=A0 =C2=A0 target =3D uv__malloc(target_len + 1);<br>
+-=C2=A0 =C2=A0 if (target =3D=3D NULL) {<br>
+-=C2=A0 =C2=A0 =C2=A0 SetLastError(ERROR_OUTOFMEMORY);<br>
+-=C2=A0 =C2=A0 =C2=A0 return -1;<br>
+-=C2=A0 =C2=A0 }<br>
+-=C2=A0 =C2=A0 *target_ptr =3D target;<br>
+-=C2=A0 } else {<br>
+-=C2=A0 =C2=A0 target =3D *target_ptr;<br>
+-=C2=A0 }<br>
+-<br>
+-=C2=A0 for (; w_source_len; w_source_len--, w_source_ptr++) {<br>
+-=C2=A0 =C2=A0 code_point =3D fs__get_surrogate_value(w_source_ptr, w_sour=
ce_len);<br>
+-=C2=A0 =C2=A0 /* Can be invalid UTF-8 but must be valid WTF-8. */<br>
+-=C2=A0 =C2=A0 assert(code_point &gt;=3D 0);<br>
+-<br>
+-=C2=A0 =C2=A0 if (code_point &lt; 0x80) {<br>
+-=C2=A0 =C2=A0 =C2=A0 *target++ =3D code_point;<br>
+-=C2=A0 =C2=A0 } else if (code_point &lt; 0x800) {<br>
+-=C2=A0 =C2=A0 =C2=A0 *target++ =3D 0xC0 | (code_point &gt;&gt; 6);<br>
+-=C2=A0 =C2=A0 =C2=A0 *target++ =3D 0x80 | (code_point &amp; 0x3F);<br>
+-=C2=A0 =C2=A0 } else if (code_point &lt; 0x10000) {<br>
+-=C2=A0 =C2=A0 =C2=A0 *target++ =3D 0xE0 | (code_point &gt;&gt; 12);<br>
+-=C2=A0 =C2=A0 =C2=A0 *target++ =3D 0x80 | ((code_point &gt;&gt; 6) &amp; =
0x3F);<br>
+-=C2=A0 =C2=A0 =C2=A0 *target++ =3D 0x80 | (code_point &amp; 0x3F);<br>
+-=C2=A0 =C2=A0 } else {<br>
+-=C2=A0 =C2=A0 =C2=A0 *target++ =3D 0xF0 | (code_point &gt;&gt; 18);<br>
+-=C2=A0 =C2=A0 =C2=A0 *target++ =3D 0x80 | ((code_point &gt;&gt; 12) &amp;=
 0x3F);<br>
+-=C2=A0 =C2=A0 =C2=A0 *target++ =3D 0x80 | ((code_point &gt;&gt; 6) &amp; =
0x3F);<br>
+-=C2=A0 =C2=A0 =C2=A0 *target++ =3D 0x80 | (code_point &amp; 0x3F);<br>
+-=C2=A0 =C2=A0 =C2=A0 w_source_ptr++;<br>
+-=C2=A0 =C2=A0 =C2=A0 w_source_len--;<br>
+-=C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0}<br>
+-=C2=A0 assert((size_t) (target - *target_ptr) =3D=3D target_len);<br>
+ <br>
+-=C2=A0 *target++ =3D &#39;\0&#39;;<br>
++=C2=A0 target =3D uv__malloc(target_len + 1);<br>
++=C2=A0 if (target =3D=3D NULL) {<br>
++=C2=A0 =C2=A0 SetLastError(ERROR_OUTOFMEMORY);<br>
++=C2=A0 =C2=A0 return -1;<br>
++=C2=A0 }<br>
+ <br>
++=C2=A0 r =3D WideCharToMultiByte(CP_UTF8,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 0,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 w_source_ptr,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 w_source_len,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 target,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 target_len,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 NULL,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 NULL);<br>
++=C2=A0 assert(r =3D=3D target_len);<br>
++=C2=A0 target[target_len] =3D &#39;\0&#39;;<br>
++=C2=A0 *target_ptr =3D target;<br>
+=C2=A0 =C2=A0return 0;<br>
+ }<br>
+ <br>
+ <br>
+-INLINE static int fs__readlink_handle(HANDLE handle,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 char** target_p=
tr,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 size_t* target_=
len_ptr) {<br>
++INLINE static int fs__readlink_handle(HANDLE handle, char** target_ptr,<b=
r>
++=C2=A0 =C2=A0 uint64_t* target_len_ptr) {<br>
+=C2=A0 =C2=A0char buffer[MAXIMUM_REPARSE_DATA_BUFFER_SIZE];<br>
+=C2=A0 =C2=A0REPARSE_DATA_BUFFER* reparse_data =3D (REPARSE_DATA_BUFFER*) =
buffer;<br>
+=C2=A0 =C2=A0WCHAR* w_target;<br>
+@@ -549,8 +439,7 @@ INLINE static int fs__readlink_handle(HANDLE handle,<b=
r>
+=C2=A0 =C2=A0 =C2=A0return -1;<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+-=C2=A0 assert(target_ptr =3D=3D NULL || *target_ptr =3D=3D NULL);<br>
+-=C2=A0 return fs__wide_to_wtf8(w_target, w_target_len, target_ptr, target=
_len_ptr);<br>
++=C2=A0 return fs__wide_to_utf8(w_target, w_target_len, target_ptr, target=
_len_ptr);<br>
+ }<br>
+ <br>
+ <br>
+@@ -1540,8 +1429,7 @@ void fs__scandir(uv_fs_t* req) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0uv__dirent_t* dirent;<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0size_t wchar_len;<br>
+-=C2=A0 =C2=A0 =C2=A0 size_t wtf8_len;<br>
+-=C2=A0 =C2=A0 =C2=A0 char* wtf8;<br>
++=C2=A0 =C2=A0 =C2=A0 size_t utf8_len;<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Obtain a pointer to the current directory en=
try. */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0position +=3D next_entry_offset;<br>
+@@ -1568,8 +1456,11 @@ void fs__scandir(uv_fs_t* req) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0info-&gt;FileName[1] =3D=3D L&#39=
;.&#39;)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0continue;<br>
+ <br>
+-=C2=A0 =C2=A0 =C2=A0 /* Compute the space required to store the filename =
as WTF-8. */<br>
+-=C2=A0 =C2=A0 =C2=A0 wtf8_len =3D fs__get_length_wide(&amp;info-&gt;FileN=
ame[0], wchar_len);<br>
++=C2=A0 =C2=A0 =C2=A0 /* Compute the space required to store the filename =
as UTF-8. */<br>
++=C2=A0 =C2=A0 =C2=A0 utf8_len =3D WideCharToMultiByte(<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 CP_UTF8, 0, &amp;info-&gt;FileName[0],=
 wchar_len, NULL, 0, NULL, NULL);<br>
++=C2=A0 =C2=A0 =C2=A0 if (utf8_len =3D=3D 0)<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 goto win32_error;<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Resize the dirent array if needed. */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (dirents_used &gt;=3D dirents_size) {<br>
+@@ -1589,17 +1480,26 @@ void fs__scandir(uv_fs_t* req) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * includes room for the first character of the=
 filename, but `utf8_len`<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * doesn&#39;t count the NULL terminator at thi=
s point.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
+-=C2=A0 =C2=A0 =C2=A0 dirent =3D uv__malloc(sizeof *dirent + wtf8_len);<br=
>
++=C2=A0 =C2=A0 =C2=A0 dirent =3D uv__malloc(sizeof *dirent + utf8_len);<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (dirent =3D=3D NULL)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto out_of_memory_error;<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0dirents[dirents_used++] =3D dirent;<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Convert file name to UTF-8. */<br>
+-=C2=A0 =C2=A0 =C2=A0 wtf8 =3D &amp;dirent-&gt;d_name[0];<br>
+-=C2=A0 =C2=A0 =C2=A0 if (fs__wide_to_wtf8(&amp;info-&gt;FileName[0], wcha=
r_len, &amp;wtf8, &amp;wtf8_len) =3D=3D -1)<br>
++=C2=A0 =C2=A0 =C2=A0 if (WideCharToMultiByte(CP_UTF8,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &amp;info-&gt;FileName[0],<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 wchar_len,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &amp;dirent-&gt;d_name[0],<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 utf8_len,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NULL,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NULL) =3D=3D 0)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto win32_error;<br>
+ <br>
++=C2=A0 =C2=A0 =C2=A0 /* Add a null terminator to the filename. */<br>
++=C2=A0 =C2=A0 =C2=A0 dirent-&gt;d_name[utf8_len] =3D &#39;\0&#39;;<br>
++<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Fill out the type field. */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (info-&gt;FileAttributes &amp; FILE_ATTRIBUT=
E_DEVICE)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dirent-&gt;d_type =3D UV__DT_CHAR;<br>
+@@ -1808,7 +1708,6 @@ void fs__closedir(uv_fs_t* req) {<br>
+ <br>
+ INLINE static int fs__stat_handle(HANDLE handle, uv_stat_t* statbuf,<br>
+=C2=A0 =C2=A0 =C2=A0int do_lstat) {<br>
+-=C2=A0 size_t target_length =3D 0;<br>
+=C2=A0 =C2=A0FILE_FS_DEVICE_INFORMATION device_info;<br>
+=C2=A0 =C2=A0FILE_ALL_INFORMATION file_info;<br>
+=C2=A0 =C2=A0FILE_FS_VOLUME_INFORMATION volume_info;<br>
+@@ -1904,10 +1803,9 @@ INLINE static int fs__stat_handle(HANDLE handle, uv=
_stat_t* statbuf,<br>
+=C2=A0 =C2=A0 =C2=A0 * to be treated as a regular file. The higher level l=
stat function will<br>
+=C2=A0 =C2=A0 =C2=A0 * detect this failure and retry without do_lstat if a=
ppropriate.<br>
+=C2=A0 =C2=A0 =C2=A0 */<br>
+-=C2=A0 =C2=A0 if (fs__readlink_handle(handle, NULL, &amp;target_length) !=
=3D 0)<br>
++=C2=A0 =C2=A0 if (fs__readlink_handle(handle, NULL, &amp;statbuf-&gt;st_s=
ize) !=3D 0)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return -1;<br>
+=C2=A0 =C2=A0 =C2=A0statbuf-&gt;st_mode |=3D S_IFLNK;<br>
+-=C2=A0 =C2=A0 statbuf-&gt;st_size =3D target_length;<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+=C2=A0 =C2=A0if (statbuf-&gt;st_mode =3D=3D 0) {<br>
+@@ -2763,7 +2661,6 @@ static void fs__readlink(uv_fs_t* req) {<br>
+=C2=A0 =C2=A0 =C2=A0return;<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+-=C2=A0 assert(req-&gt;ptr =3D=3D NULL);<br>
+=C2=A0 =C2=A0if (fs__readlink_handle(handle, (char**) &amp;req-&gt;ptr, NU=
LL) !=3D 0) {<br>
+=C2=A0 =C2=A0 =C2=A0DWORD error =3D GetLastError();<br>
+=C2=A0 =C2=A0 =C2=A0SET_REQ_WIN32_ERROR(req, error);<br>
+@@ -2823,8 +2720,7 @@ static ssize_t fs__realpath_handle(HANDLE handle, ch=
ar** realpath_ptr) {<br>
+=C2=A0 =C2=A0 =C2=A0return -1;<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+-=C2=A0 assert(*realpath_ptr =3D=3D NULL);<br>
+-=C2=A0 r =3D fs__wide_to_wtf8(w_realpath_ptr, w_realpath_len, realpath_pt=
r, NULL);<br>
++=C2=A0 r =3D fs__wide_to_utf8(w_realpath_ptr, w_realpath_len, realpath_pt=
r, NULL);<br>
+=C2=A0 =C2=A0uv__free(w_realpath_buf);<br>
+=C2=A0 =C2=A0return r;<br>
+ }<br>
+@@ -2844,7 +2740,6 @@ static void fs__realpath(uv_fs_t* req) {<br>
+=C2=A0 =C2=A0 =C2=A0return;<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+-=C2=A0 assert(req-&gt;ptr =3D=3D NULL);<br>
+=C2=A0 =C2=A0if (fs__realpath_handle(handle, (char**) &amp;req-&gt;ptr) =
=3D=3D -1) {<br>
+=C2=A0 =C2=A0 =C2=A0CloseHandle(handle);<br>
+=C2=A0 =C2=A0 =C2=A0SET_REQ_WIN32_ERROR(req, GetLastError());<br>
+diff --git a/deps/uv/src/win/handle-inl.h b/deps/uv/src/win/handle-inl.h<b=
r>
+index 4722e85790a..5c843c241ef 100644<br>
+--- a/deps/uv/src/win/handle-inl.h<br>
++++ b/deps/uv/src/win/handle-inl.h<br>
+@@ -75,7 +75,7 @@<br>
+ <br>
+ #define uv__handle_close(handle)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+-=C2=A0 =C2=A0 uv__queue_remove(&amp;(handle)-&gt;handle_queue);=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 \<br>
++=C2=A0 =C2=A0 QUEUE_REMOVE(&amp;(handle)-&gt;handle_queue);=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0uv__active_handle_rm((uv_handle_t*) (handle));=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
+=C2=A0 =C2=A0 =C2=A0(handle)-&gt;flags |=3D UV_HANDLE_CLOSED;=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
+diff --git a/deps/uv/src/win/pipe.c b/deps/uv/src/win/pipe.c<br>
+index f0cac382256..5e4276387ac 100644<br>
+--- a/deps/uv/src/win/pipe.c<br>
++++ b/deps/uv/src/win/pipe.c<br>
+@@ -55,7 +55,7 @@ static const int pipe_prefix_len =3D sizeof(pipe_prefix)=
 - 1;<br>
+ typedef struct {<br>
+=C2=A0 =C2=A0uv__ipc_socket_xfer_type_t xfer_type;<br>
+=C2=A0 =C2=A0uv__ipc_socket_xfer_info_t xfer_info;<br>
+-=C2=A0 struct uv__queue member;<br>
++=C2=A0 QUEUE member;<br>
+ } uv__ipc_xfer_queue_item_t;<br>
+ <br>
+ /* IPC frame header flags. */<br>
+@@ -111,7 +111,7 @@ int uv_pipe_init(uv_loop_t* loop, uv_pipe_t* handle, i=
nt ipc) {<br>
+=C2=A0 =C2=A0handle-&gt;name =3D NULL;<br>
+=C2=A0 =C2=A0handle-&gt;pipe.conn.ipc_remote_pid =3D 0;<br>
+=C2=A0 =C2=A0handle-&gt;pipe.conn.ipc_data_frame.payload_remaining =3D 0;<=
br>
+-=C2=A0 uv__queue_init(&amp;handle-&gt;pipe.conn.ipc_xfer_queue);<br>
++=C2=A0 QUEUE_INIT(&amp;handle-&gt;pipe.conn.ipc_xfer_queue);<br>
+=C2=A0 =C2=A0handle-&gt;pipe.conn.ipc_xfer_queue_length =3D 0;<br>
+=C2=A0 =C2=A0handle-&gt;ipc =3D ipc;<br>
+=C2=A0 =C2=A0handle-&gt;pipe.conn.non_overlapped_writes_tail =3D NULL;<br>
+@@ -637,13 +637,13 @@ void uv__pipe_endgame(uv_loop_t* loop, uv_pipe_t* ha=
ndle) {<br>
+ <br>
+=C2=A0 =C2=A0if (handle-&gt;flags &amp; UV_HANDLE_CONNECTION) {<br>
+=C2=A0 =C2=A0 =C2=A0/* Free pending sockets */<br>
+-=C2=A0 =C2=A0 while (!uv__queue_empty(&amp;handle-&gt;pipe.conn.ipc_xfer_=
queue)) {<br>
+-=C2=A0 =C2=A0 =C2=A0 struct uv__queue* q;<br>
++=C2=A0 =C2=A0 while (!QUEUE_EMPTY(&amp;handle-&gt;pipe.conn.ipc_xfer_queu=
e)) {<br>
++=C2=A0 =C2=A0 =C2=A0 QUEUE* q;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0SOCKET socket;<br>
+ <br>
+-=C2=A0 =C2=A0 =C2=A0 q =3D uv__queue_head(&amp;handle-&gt;pipe.conn.ipc_x=
fer_queue);<br>
+-=C2=A0 =C2=A0 =C2=A0 uv__queue_remove(q);<br>
+-=C2=A0 =C2=A0 =C2=A0 xfer_queue_item =3D uv__queue_data(q, uv__ipc_xfer_q=
ueue_item_t, member);<br>
++=C2=A0 =C2=A0 =C2=A0 q =3D QUEUE_HEAD(&amp;handle-&gt;pipe.conn.ipc_xfer_=
queue);<br>
++=C2=A0 =C2=A0 =C2=A0 QUEUE_REMOVE(q);<br>
++=C2=A0 =C2=A0 =C2=A0 xfer_queue_item =3D QUEUE_DATA(q, uv__ipc_xfer_queue=
_item_t, member);<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Materialize socket and close it */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0socket =3D WSASocketW(FROM_PROTOCOL_INFO,<br>
+@@ -1124,20 +1124,20 @@ int uv__pipe_accept(uv_pipe_t* server, uv_stream_t=
* client) {<br>
+=C2=A0 =C2=A0uv_loop_t* loop =3D server-&gt;loop;<br>
+=C2=A0 =C2=A0uv_pipe_t* pipe_client;<br>
+=C2=A0 =C2=A0uv_pipe_accept_t* req;<br>
+-=C2=A0 struct uv__queue* q;<br>
++=C2=A0 QUEUE* q;<br>
+=C2=A0 =C2=A0uv__ipc_xfer_queue_item_t* item;<br>
+=C2=A0 =C2=A0int err;<br>
+ <br>
+=C2=A0 =C2=A0if (server-&gt;ipc) {<br>
+-=C2=A0 =C2=A0 if (uv__queue_empty(&amp;server-&gt;pipe.conn.ipc_xfer_queu=
e)) {<br>
++=C2=A0 =C2=A0 if (QUEUE_EMPTY(&amp;server-&gt;pipe.conn.ipc_xfer_queue)) =
{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/* No valid pending sockets. */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return WSAEWOULDBLOCK;<br>
+=C2=A0 =C2=A0 =C2=A0}<br>
+ <br>
+-=C2=A0 =C2=A0 q =3D uv__queue_head(&amp;server-&gt;pipe.conn.ipc_xfer_que=
ue);<br>
+-=C2=A0 =C2=A0 uv__queue_remove(q);<br>
++=C2=A0 =C2=A0 q =3D QUEUE_HEAD(&amp;server-&gt;pipe.conn.ipc_xfer_queue);=
<br>
++=C2=A0 =C2=A0 QUEUE_REMOVE(q);<br>
+=C2=A0 =C2=A0 =C2=A0server-&gt;pipe.conn.ipc_xfer_queue_length--;<br>
+-=C2=A0 =C2=A0 item =3D uv__queue_data(q, uv__ipc_xfer_queue_item_t, membe=
r);<br>
++=C2=A0 =C2=A0 item =3D QUEUE_DATA(q, uv__ipc_xfer_queue_item_t, member);<=
br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0err =3D uv__tcp_xfer_import(<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(uv_tcp_t*) client, item-&gt;xfer_type, =
&amp;item-&gt;xfer_info);<br>
+@@ -1891,7 +1891,7 @@ static void uv__pipe_queue_ipc_xfer_info(<br>
+=C2=A0 =C2=A0item-&gt;xfer_type =3D xfer_type;<br>
+=C2=A0 =C2=A0item-&gt;xfer_info =3D *xfer_info;<br>
+ <br>
+-=C2=A0 uv__queue_insert_tail(&amp;handle-&gt;pipe.conn.ipc_xfer_queue, &a=
mp;item-&gt;member);<br>
++=C2=A0 QUEUE_INSERT_TAIL(&amp;handle-&gt;pipe.conn.ipc_xfer_queue, &amp;i=
tem-&gt;member);<br>
+=C2=A0 =C2=A0handle-&gt;pipe.conn.ipc_xfer_queue_length++;<br>
+ }<br>
+ <br>
+diff --git a/deps/uv/src/win/tcp.c b/deps/uv/src/win/tcp.c<br>
+index 187f36e2a61..6b282e0b501 100644<br>
+--- a/deps/uv/src/win/tcp.c<br>
++++ b/deps/uv/src/win/tcp.c<br>
+@@ -175,14 +175,14 @@ int uv_tcp_init_ex(uv_loop_t* loop, uv_tcp_t* handle=
, unsigned int flags) {<br>
+=C2=A0 =C2=A0 =C2=A0sock =3D socket(domain, SOCK_STREAM, 0);<br>
+=C2=A0 =C2=A0 =C2=A0if (sock =3D=3D INVALID_SOCKET) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0err =3D WSAGetLastError();<br>
+-=C2=A0 =C2=A0 =C2=A0 uv__queue_remove(&amp;handle-&gt;handle_queue);<br>
++=C2=A0 =C2=A0 =C2=A0 QUEUE_REMOVE(&amp;handle-&gt;handle_queue);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return uv_translate_sys_error(err);<br>
+=C2=A0 =C2=A0 =C2=A0}<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0err =3D uv__tcp_set_socket(handle-&gt;loop, handle, so=
ck, domain, 0);<br>
+=C2=A0 =C2=A0 =C2=A0if (err) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0closesocket(sock);<br>
+-=C2=A0 =C2=A0 =C2=A0 uv__queue_remove(&amp;handle-&gt;handle_queue);<br>
++=C2=A0 =C2=A0 =C2=A0 QUEUE_REMOVE(&amp;handle-&gt;handle_queue);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return uv_translate_sys_error(err);<br>
+=C2=A0 =C2=A0 =C2=A0}<br>
+ <br>
+diff --git a/deps/uv/src/win/udp.c b/deps/uv/src/win/udp.c<br>
+index eab53842d4f..8a982d1907d 100644<br>
+--- a/deps/uv/src/win/udp.c<br>
++++ b/deps/uv/src/win/udp.c<br>
+@@ -146,14 +146,14 @@ int uv__udp_init_ex(uv_loop_t* loop,<br>
+=C2=A0 =C2=A0 =C2=A0sock =3D socket(domain, SOCK_DGRAM, 0);<br>
+=C2=A0 =C2=A0 =C2=A0if (sock =3D=3D INVALID_SOCKET) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0err =3D WSAGetLastError();<br>
+-=C2=A0 =C2=A0 =C2=A0 uv__queue_remove(&amp;handle-&gt;handle_queue);<br>
++=C2=A0 =C2=A0 =C2=A0 QUEUE_REMOVE(&amp;handle-&gt;handle_queue);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return uv_translate_sys_error(err);<br>
+=C2=A0 =C2=A0 =C2=A0}<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0err =3D uv__udp_set_socket(handle-&gt;loop, handle, so=
ck, domain);<br>
+=C2=A0 =C2=A0 =C2=A0if (err) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0closesocket(sock);<br>
+-=C2=A0 =C2=A0 =C2=A0 uv__queue_remove(&amp;handle-&gt;handle_queue);<br>
++=C2=A0 =C2=A0 =C2=A0 QUEUE_REMOVE(&amp;handle-&gt;handle_queue);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return uv_translate_sys_error(err);<br>
+=C2=A0 =C2=A0 =C2=A0}<br>
+=C2=A0 =C2=A0}<br>
diff --git a/recipes-devtools/nodejs/nodejs-20.8.1/0001-Using-native-binari=
es.patch b/recipes-devtools/nodejs/nodejs-20.8.1/0001-Using-native-binaries=
.patch<br>
new file mode 100644<br>
index 0000000..0178cec<br>
--- /dev/null<br>
+++ b/recipes-devtools/nodejs/nodejs-20.8.1/0001-Using-native-binaries.patc=
h<br>
@@ -0,0 +1,94 @@<br>
+From 6c3ac20477a4bac643088f24df3c042e627fafa9 Mon Sep 17 00:00:00 2001<br>
+From: Guillaume Burel &lt;<a href=3D"mailto:guillaume.burel@stormshield.eu=
" target=3D"_blank">guillaume.burel@stormshield.eu</a>&gt;<br>
+Date: Fri, 3 Jan 2020 11:25:54 +0100<br>
+Subject: [PATCH] Using native binaries<br>
+<br>
+Upstream-Status: Inappropriate [embedded specific]<br>
+<br>
+Originally added in:<br>
+<a href=3D"https://git.openembedded.org/meta-openembedded/commit/?id=3D1c8=
e4a679ae382f953b2e5c7a4966a4646314f3e" rel=3D"noreferrer" target=3D"_blank"=
>https://git.openembedded.org/meta-openembedded/commit/?id=3D1c8e4a679ae382=
f953b2e5c7a4966a4646314f3e</a><br>
+later extended and renamed in:<br>
+<a href=3D"https://git.openembedded.org/meta-openembedded/commit/?id=3Dfee=
b172d1a8bf010490d22b8df9448b20d9d2aed" rel=3D"noreferrer" target=3D"_blank"=
>https://git.openembedded.org/meta-openembedded/commit/?id=3Dfeeb172d1a8bf0=
10490d22b8df9448b20d9d2aed</a><br>
+<br>
+Signed-off-by: Archana Polampalli &lt;<a href=3D"mailto:archana.polampalli=
@windriver.com" target=3D"_blank">archana.polampalli@windriver.com</a>&gt;<=
br>
+---<br>
+ node.gyp=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 3=
 +<br>
+ tools/v8_gypfiles/v8.gyp | 5 +++++<br>
+ 2 files changed, 6 insertions(+)<br>
+<br>
+diff --git a/node.gyp b/node.gyp<br>
+index e8e1d9f9..e60ccc10 100644<br>
+--- a/node.gyp<br>
++++ b/node.gyp<br>
+@@ -320,6 +320,7 @@<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;=
action_name&#39;: &#39;node_mksnapshot&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;=
process_outputs_as_sources&#39;: 1,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;=
inputs&#39;: [<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#3=
9;&lt;(PRODUCT_DIR)/v8-qemu-wrapper.sh&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&#39;&lt;(node_mksnapshot_exec)&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&#39;&lt;(node_snapshot_main)&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0],<br=
>
+@@ -935,6 +935,7 @@<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;action_name&#39;: &#39;node_=
js2c&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;process_outputs_as_sources&#=
39;: 1,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;inputs&#39;: [<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&lt;(PRODUCT_DIR)/v8-qemu-=
wrapper.sh&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;&lt;(node_js2c_exec)&=
#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;&lt;@(library_files)&=
#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;&lt;@(deps_files)&#39=
;,<br>
+@@ -944,6 +945,7 @@<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;&lt;(SHARED_INTERMEDI=
ATE_DIR)/node_javascript.cc&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;action&#39;: [<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&lt;(PRODUCT_DIR)/v8-qemu-=
wrapper.sh&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;&lt;(node_js2c_exec)&=
#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;&lt;@(_outputs)&#39;,=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;lib&#39;,<br>
+<br>
+diff --git a/tools/v8_gypfiles/v8.gyp b/tools/v8_gypfiles/v8.gyp<br>
+index 42e26cd9..bc721991 100644<br>
+--- a/tools/v8_gypfiles/v8.gyp<br>
++++ b/tools/v8_gypfiles/v8.gyp<br>
+@@ -68,6 +68,7 @@<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;action_name&#39;: &#39;run_t=
orque_action&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;inputs&#39;: [=C2=A0 # Order=
 matters.<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&lt;(PRODUCT_DIR)/v8-qemu-=
wrapper.sh&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;&lt;(PRODUCT_DIR)/&lt=
;(EXECUTABLE_PREFIX)torque&lt;(EXECUTABLE_SUFFIX)&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;&lt;@(torque_files)&#=
39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0],<br>
+@@ -99,6 +100,7 @@<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;&lt;@(torque_outputs_=
inc)&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;action&#39;: [<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&lt;(PRODUCT_DIR)/v8-qemu-=
wrapper.sh&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;&lt;(PRODUCT_DIR)/&lt=
;(EXECUTABLE_PREFIX)torque&lt;(EXECUTABLE_SUFFIX)&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;-o&#39;, &#39;&lt;(SH=
ARED_INTERMEDIATE_DIR)/torque-generated&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;-v8-root&#39;, &#39;&=
lt;(V8_ROOT)&#39;,<br>
+@@ -211,6 +213,7 @@<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;action_name&#39;: &#39;gener=
ate_bytecode_builtins_list_action&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;inputs&#39;: [<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&lt;(PRODUCT_DIR)/v8-qemu-=
wrapper.sh&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;&lt;(PRODUCT_DIR)/&lt=
;(EXECUTABLE_PREFIX)bytecode_builtins_list_generator&lt;(EXECUTABLE_SUFFIX)=
&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;outputs&#39;: [<br>
+@@ -400,6 +403,7 @@<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;inputs&#39;: [<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&lt;(PRODUCT_DIR)/v8-qemu-=
wrapper.sh&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;&lt;(mksnapshot_exec)=
&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;outputs&#39;: [<br>
+@@ -1539,6 +1543,7 @@<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;action_name&#39;: &#39;run_g=
en-regexp-special-case_action&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;inputs&#39;: [<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&lt;(PRODUCT_DIR)/v8-qemu-=
wrapper.sh&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;&lt;(PRODUCT_DIR)/&lt=
;(EXECUTABLE_PREFIX)gen-regexp-special-case&lt;(EXECUTABLE_SUFFIX)&#39;,<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;outputs&#39;: [<br>
+-- <br>
+2.34.1<br>
+<br>
diff --git a/recipes-devtools/nodejs/nodejs-20.8.1/0001-liftoff-Correct-fun=
ction-signatures.patch b/recipes-devtools/nodejs/nodejs-20.8.1/0001-liftoff=
-Correct-function-signatures.patch<br>
new file mode 100644<br>
index 0000000..5af87d8<br>
--- /dev/null<br>
+++ b/recipes-devtools/nodejs/nodejs-20.8.1/0001-liftoff-Correct-function-s=
ignatures.patch<br>
@@ -0,0 +1,71 @@<br>
+From dc3652c0abcdf8573fd044907b19d8eda7ca1124 Mon Sep 17 00:00:00 2001<br>
+From: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank"=
>raj.khem@gmail.com</a>&gt;<br>
+Date: Mon, 3 Jul 2023 12:33:16 +0000<br>
+Subject: [PATCH] [liftoff] Correct function signatures<br>
+<br>
+Fixes builds on mips where clang reports an error<br>
+../deps/v8/src/wasm/baseline/mips/liftoff-assembler-mips.h:661:5: error: n=
o matching member function for call to &#39;Move&#39;<br>
+=C2=A0 =C2=A0 Move(tmp, src, type.value_type());<br>
+=C2=A0 =C2=A0 ^~~~<br>
+<br>
+Upstream-Status: Submitted [<a href=3D"https://chromium-review.googlesourc=
e.com/c/v8/v8/+/3235674" rel=3D"noreferrer" target=3D"_blank">https://chrom=
ium-review.googlesource.com/c/v8/v8/+/3235674</a>]<br>
+<br>
+Signed-off-by: Archana Polampalli &lt;<a href=3D"mailto:archana.polampalli=
@windriver.com" target=3D"_blank">archana.polampalli@windriver.com</a>&gt;<=
br>
+---<br>
+ deps/v8/src/wasm/baseline/liftoff-assembler.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0| 6 +++---<br>
+ deps/v8/src/wasm/baseline/mips64/liftoff-assembler-mips64.h | 2 +-<br>
+ deps/v8/src/wasm/baseline/riscv/liftoff-assembler-riscv64.h | 2 +-<br>
+ 3 files changed, 5 insertions(+), 5 deletions(-)<br>
+<br>
+diff --git a/deps/v8/src/wasm/baseline/liftoff-assembler.h b/deps/v8/src/w=
asm/baseline/liftoff-assembler.h<br>
+index aef63c64..f2a11b01 100644<br>
+--- a/deps/v8/src/wasm/baseline/liftoff-assembler.h<br>
++++ b/deps/v8/src/wasm/baseline/liftoff-assembler.h<br>
+@@ -717,7 +717,7 @@ class LiftoffAssembler : public MacroAssembler {<br>
+=C2=A0 =C2=A0void FinishCall(const ValueKindSig*, compiler::CallDescriptor=
*);<br>
+ <br>
+=C2=A0 =C2=A0// Move {src} into {dst}. {src} and {dst} must be different.<=
br>
+-=C2=A0 void Move(LiftoffRegister dst, LiftoffRegister src, ValueKind);<br=
>
++=C2=A0 void Move(LiftoffRegister dst, LiftoffRegister src, ValueKind kind=
);<br>
+ <br>
+=C2=A0 =C2=A0// Parallel register move: For a list of tuples &lt;dst, src,=
 kind&gt;, move the<br>
+=C2=A0 =C2=A0// {src} register of kind {kind} into {dst}. If {src} equals =
{dst}, ignore<br>
+@@ -884,8 +884,8 @@ class LiftoffAssembler : public MacroAssembler {<br>
+=C2=A0 =C2=A0inline void MoveStackValue(uint32_t dst_offset, uint32_t src_=
offset,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ValueKind);<br>
+ <br>
+-=C2=A0 inline void Move(Register dst, Register src, ValueKind);<br>
+-=C2=A0 inline void Move(DoubleRegister dst, DoubleRegister src, ValueKind=
);<br>
++=C2=A0 inline void Move(Register dst, Register src, ValueKind kind);<br>
++=C2=A0 inline void Move(DoubleRegister dst, DoubleRegister src, ValueKind=
 kind);<br>
+ <br>
+=C2=A0 =C2=A0inline void Spill(int offset, LiftoffRegister, ValueKind);<br=
>
+=C2=A0 =C2=A0inline void Spill(int offset, WasmValue);<br>
+diff --git a/deps/v8/src/wasm/baseline/mips64/liftoff-assembler-mips64.h b=
/deps/v8/src/wasm/baseline/mips64/liftoff-assembler-mips64.h<br>
+index 96cba24c..53e1842d 100644<br>
+--- a/deps/v8/src/wasm/baseline/mips64/liftoff-assembler-mips64.h<br>
++++ b/deps/v8/src/wasm/baseline/mips64/liftoff-assembler-mips64.h<br>
+@@ -592,7 +592,7 @@ void LiftoffAssembler::Store(Register dst_addr, Regist=
er offset_reg,<br>
+=C2=A0 =C2=A0 =C2=A0pinned.set(dst_op.rm());<br>
+=C2=A0 =C2=A0 =C2=A0LiftoffRegister tmp =3D GetUnusedRegister(src.reg_clas=
s(), pinned);<br>
+=C2=A0 =C2=A0 =C2=A0// Save original value.<br>
+-=C2=A0 =C2=A0 Move(tmp, src, type.value_type());<br>
++=C2=A0 =C2=A0 Move(tmp, src, type.value_type().kind());<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0src =3D tmp;<br>
+=C2=A0 =C2=A0 =C2=A0pinned.set(tmp);<br>
+diff --git a/deps/v8/src/wasm/baseline/riscv/liftoff-assembler-riscv64.h b=
/deps/v8/src/wasm/baseline/riscv/liftoff-assembler-riscv64.h<br>
+index 1d6ae09e..397e82b2 100644<br>
+--- a/deps/v8/src/wasm/baseline/riscv/liftoff-assembler-riscv64.h<br>
++++ b/deps/v8/src/wasm/baseline/riscv/liftoff-assembler-riscv64.h<br>
+@@ -286,7 +286,7 @@ void LiftoffAssembler::Store(Register dst_addr, Regist=
er offset_reg,<br>
+=C2=A0 =C2=A0 =C2=A0pinned.set(dst_op.rm());<br>
+=C2=A0 =C2=A0 =C2=A0LiftoffRegister tmp =3D GetUnusedRegister(src.reg_clas=
s(), pinned);<br>
+=C2=A0 =C2=A0 =C2=A0// Save original value.<br>
+-=C2=A0 =C2=A0 Move(tmp, src, type.value_type());<br>
++=C2=A0 =C2=A0 Move(tmp, src, type.value_type().kind());<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0src =3D tmp;<br>
+=C2=A0 =C2=A0 =C2=A0pinned.set(tmp);<br>
+--<br>
+2.40.0<br>
diff --git a/recipes-devtools/nodejs/nodejs-20.8.1/0001-ppc64-Do-not-use-mm=
inimal-toc-with-clang.patch b/recipes-devtools/nodejs/nodejs-20.8.1/0001-pp=
c64-Do-not-use-mminimal-toc-with-clang.patch<br>
new file mode 100644<br>
index 0000000..dd9c901<br>
--- /dev/null<br>
+++ b/recipes-devtools/nodejs/nodejs-20.8.1/0001-ppc64-Do-not-use-mminimal-=
toc-with-clang.patch<br>
@@ -0,0 +1,25 @@<br>
+From 0976af0f3b328436ea44a74a406f311adb2ab211 Mon Sep 17 00:00:00 2001<br>
+From: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank"=
>raj.khem@gmail.com</a>&gt;<br>
+Date: Tue, 15 Jun 2021 19:01:31 -0700<br>
+Subject: [PATCH] ppc64: Do not use -mminimal-toc with clang<br>
+<br>
+clang does not support this option<br>
+<br>
+Signed-off-by: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=
=3D"_blank">raj.khem@gmail.com</a>&gt;<br>
+---<br>
+Upstream-Status: Pending<br>
+<br>
+ common.gypi | 2 +-<br>
+ 1 file changed, 1 insertion(+), 1 deletion(-)<br>
+<br>
+--- a/common.gypi<br>
++++ b/common.gypi<br>
+@@ -417,7 +417,7 @@<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;ldflags&#39;: [ &#39;=
-m32&#39; ],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[ &#39;target_arch=3D=3D&quot;ppc=
64&quot; and OS!=3D&quot;aix&quot;&#39;, {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;cflags&#39;: [ &#39;-m64&#=
39;, &#39;-mminimal-toc&#39; ],<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;cflags&#39;: [ &#39;-m64&#=
39; ],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;ldflags&#39;: [ &#39;=
-m64&#39; ],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[ &#39;target_arch=3D=3D&quot;s39=
0x&quot;&#39;, {<br>
diff --git a/recipes-devtools/nodejs/nodejs-20.8.1/0002-Revert-io_uring-cha=
nges-from-libuv-1.45.0.patch b/recipes-devtools/nodejs/nodejs-20.8.1/0002-R=
evert-io_uring-changes-from-libuv-1.45.0.patch<br>
new file mode 100644<br>
index 0000000..77cd53b<br>
--- /dev/null<br>
+++ b/recipes-devtools/nodejs/nodejs-20.8.1/0002-Revert-io_uring-changes-fr=
om-libuv-1.45.0.patch<br>
@@ -0,0 +1,1803 @@<br>
+From 6d2ef4c8ba2304ee4941a6719b3ad9bd63e415a9 Mon Sep 17 00:00:00 2001<br>
+From: Martin Jansa &lt;<a href=3D"mailto:martin.jansa@gmail.com" target=3D=
"_blank">martin.jansa@gmail.com</a>&gt;<br>
+Date: Wed, 18 Oct 2023 21:09:44 +0200<br>
+Subject: [PATCH] Revert io_uring changes from libuv-1.45.0<br>
+<br>
+This reverts <a href=3D"https://github.com/libuv/libuv/pull/3952/commits/2=
6c79a942b92573a1388c0ee8a6ad4397f009318" rel=3D"noreferrer" target=3D"_blan=
k">https://github.com/libuv/libuv/pull/3952/commits/26c79a942b92573a1388c0e=
e8a6ad4397f009318</a><br>
+<br>
+Included in nodejs-20.3.0 with the libuv upgrade to 1.45.0 in:<br>
+<a href=3D"https://github.com/nodejs/node/commit/bfcb3d1d9a876f399013d326b=
d65804f9eda77e4" rel=3D"noreferrer" target=3D"_blank">https://github.com/no=
dejs/node/commit/bfcb3d1d9a876f399013d326bd65804f9eda77e4</a><br>
+<br>
+Reverted libuv commits:<br>
+Revert &quot;linux: fix WRITEV with lots of bufs using io_uring (#4004)&qu=
ot;<br>
+This reverts commit ef6a9a624df0a00687037474025a3608472f722a.<br>
+Revert &quot;linux: work around EOWNERDEAD io_uring kernel bug (#4002)&quo=
t;<br>
+This reverts commit d23a20f62cc50b9fd7694992263f1d296d8f5cb4.<br>
+Revert &quot;unix: handle CQ overflow in iou ring (#3991)&quot;<br>
+This reverts commit 30fc896cc1b5822e9f1eb462587fe4b368a6215c.<br>
+Revert &quot;unix: constrained_memory should return UINT64_MAX (#3753)&quo=
t;<br>
+This reverts commit 6ad347fae4520f39520d34bd7c7f5ddafab13a69.<br>
+Revert &quot;linux: use io_uring to batch epoll_ctl calls (#3979)&quot;<br=
>
+This reverts commit 6e073ef5daf93b708a654008959b823b58029e88.<br>
+Revert &quot;linux: fix logic bug in sqe ring space check (#3980)&quot;<br=
>
+This reverts commit f27208224084fc972b9d2802486d97ef31b51a39.<br>
+Revert &quot;src: fix events/events_waiting metrics counter (#3957)&quot;<=
br>
+This reverts commit e02642cf3b768b2c58a41f97fa38507e032ae415.<br>
+Revert &quot;linux: remove bug workaround for obsolete kernels (#3965)&quo=
t;<br>
+This reverts commit 1c935a34454167b23f8eef7f0f63d7119f0de747.<br>
+Revert &quot;linux: add IORING_OP_CLOSE support (#3964)&quot;<br>
+This reverts commit dfae365f844e127621128a76bce7165e3f99a8d9.<br>
+Revert &quot;linux: add IORING_OP_OPENAT support (#3963)&quot;<br>
+This reverts commit 5ca5e475bb1711e65323ef1594a31818e5a1a9eb.<br>
+Revert &quot;linux: fix academic valgrind warning (#3960)&quot;<br>
+This reverts commit a7ff759ca1deacb2e0e6ae3c2d3dce91cc637dfe.<br>
+Revert &quot;linux: introduce io_uring support (#3952)&quot;<br>
+This reverts commit d2c31f429b87b476a7f1344d145dad4752a406d4.<br>
+<br>
+Dropped deps/uv/docs deps/uv/test changes as these dirs aren&#39;t include=
d<br>
+in nodejs tarballs.<br>
+<br>
+Signed-off-by: Martin Jansa &lt;<a href=3D"mailto:martin.jansa@gmail.com" =
target=3D"_blank">martin.jansa@gmail.com</a>&gt;<br>
+---<br>
+Upstream-Status: Inappropriate [OE specific]<br>
+<br>
+ deps/uv/docs/src/fs.rst=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0|=C2=A0 =C2=A06 -<br>
+ deps/uv/docs/src/misc.rst=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
|=C2=A0 =C2=A05 +-<br>
+ deps/uv/src/threadpool.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
|=C2=A0 21 -<br>
+ deps/uv/src/unix/aix.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 |=C2=A0 11 +-<br>
+ deps/uv/src/unix/fs.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0|=C2=A0 57 +-<br>
+ deps/uv/src/unix/internal.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=
=A0 23 -<br>
+ deps/uv/src/unix/kqueue.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
|=C2=A0 10 +-<br>
+ deps/uv/src/unix/linux.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
| 998 +++-----------------------<br>
+ deps/uv/src/unix/os390.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
|=C2=A0 11 +-<br>
+ deps/uv/src/unix/posix-poll.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 11=
 +-<br>
+ deps/uv/src/uv-common.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0|=C2=A0 28 -<br>
+ deps/uv/src/win/core.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 |=C2=A0 20 +-<br>
+ deps/uv/test/test-fs.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 |=C2=A0 33 -<br>
+ deps/uv/test/test-list.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
|=C2=A0 =C2=A04 -<br>
+ deps/uv/test/test-metrics.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 151=
 ----<br>
+ deps/uv/test/test-threadpool-cancel.c |=C2=A0 34 +-<br>
+ 16 files changed, 138 insertions(+), 1285 deletions(-)<br>
+<br>
+diff --git a/deps/uv/src/threadpool.c b/deps/uv/src/threadpool.c<br>
+index 51962bf0021..a3da53026f9 100644<br>
+--- a/deps/uv/src/threadpool.c<br>
++++ b/deps/uv/src/threadpool.c<br>
+@@ -275,13 +275,9 @@ void uv__work_submit(uv_loop_t* loop,<br>
+ }<br>
+ <br>
+ <br>
+-/* TODO(bnoordhuis) teach libuv how to cancel file operations<br>
+- * that go through io_uring instead of the thread pool.<br>
+- */<br>
+ static int uv__work_cancel(uv_loop_t* loop, uv_req_t* req, struct uv__wor=
k* w) {<br>
+=C2=A0 =C2=A0int cancelled;<br>
+ <br>
+-=C2=A0 uv_once(&amp;once, init_once);=C2=A0 /* Ensure |mutex| is initiali=
zed. */<br>
+=C2=A0 =C2=A0uv_mutex_lock(&amp;mutex);<br>
+=C2=A0 =C2=A0uv_mutex_lock(&amp;w-&gt;loop-&gt;wq_mutex);<br>
+ <br>
+@@ -311,15 +307,12 @@ void uv__work_done(uv_async_t* handle) {<br>
+=C2=A0 =C2=A0QUEUE* q;<br>
+=C2=A0 =C2=A0QUEUE wq;<br>
+=C2=A0 =C2=A0int err;<br>
+-=C2=A0 int nevents;<br>
+ <br>
+=C2=A0 =C2=A0loop =3D container_of(handle, uv_loop_t, wq_async);<br>
+=C2=A0 =C2=A0uv_mutex_lock(&amp;loop-&gt;wq_mutex);<br>
+=C2=A0 =C2=A0QUEUE_MOVE(&amp;loop-&gt;wq, &amp;wq);<br>
+=C2=A0 =C2=A0uv_mutex_unlock(&amp;loop-&gt;wq_mutex);<br>
+ <br>
+-=C2=A0 nevents =3D 0;<br>
+-<br>
+=C2=A0 =C2=A0while (!QUEUE_EMPTY(&amp;wq)) {<br>
+=C2=A0 =C2=A0 =C2=A0q =3D QUEUE_HEAD(&amp;wq);<br>
+=C2=A0 =C2=A0 =C2=A0QUEUE_REMOVE(q);<br>
+@@ -327,20 +320,6 @@ void uv__work_done(uv_async_t* handle) {<br>
+=C2=A0 =C2=A0 =C2=A0w =3D container_of(q, struct uv__work, wq);<br>
+=C2=A0 =C2=A0 =C2=A0err =3D (w-&gt;work =3D=3D uv__cancelled) ? UV_ECANCEL=
ED : 0;<br>
+=C2=A0 =C2=A0 =C2=A0w-&gt;done(w, err);<br>
+-=C2=A0 =C2=A0 nevents++;<br>
+-=C2=A0 }<br>
+-<br>
+-=C2=A0 /* This check accomplishes 2 things:<br>
+-=C2=A0 =C2=A0* 1. Even if the queue was empty, the call to uv__work_done(=
) should count<br>
+-=C2=A0 =C2=A0*=C2=A0 =C2=A0 as an event. Which will have been added by th=
e event loop when<br>
+-=C2=A0 =C2=A0*=C2=A0 =C2=A0 calling this callback.<br>
+-=C2=A0 =C2=A0* 2. Prevents accidental wrap around in case nevents =3D=3D =
0 events =3D=3D 0.<br>
+-=C2=A0 =C2=A0*/<br>
+-=C2=A0 if (nevents &gt; 1) {<br>
+-=C2=A0 =C2=A0 /* Subtract 1 to counter the call to uv__work_done(). */<br=
>
+-=C2=A0 =C2=A0 uv__metrics_inc_events(loop, nevents - 1);<br>
+-=C2=A0 =C2=A0 if (uv__get_internal_fields(loop)-&gt;current_timeout =3D=
=3D 0)<br>
+-=C2=A0 =C2=A0 =C2=A0 uv__metrics_inc_events_waiting(loop, nevents - 1);<b=
r>
+=C2=A0 =C2=A0}<br>
+ }<br>
+ <br>
+diff --git a/deps/uv/src/unix/aix.c b/deps/uv/src/unix/aix.c<br>
+index f1afbed49ec..b855282ebc8 100644<br>
+--- a/deps/uv/src/unix/aix.c<br>
++++ b/deps/uv/src/unix/aix.c<br>
+@@ -131,7 +131,6 @@ int uv__io_check_fd(uv_loop_t* loop, int fd) {<br>
+ <br>
+ <br>
+ void uv__io_poll(uv_loop_t* loop, int timeout) {<br>
+-=C2=A0 uv__loop_internal_fields_t* lfields;<br>
+=C2=A0 =C2=A0struct pollfd events[1024];<br>
+=C2=A0 =C2=A0struct pollfd pqry;<br>
+=C2=A0 =C2=A0struct pollfd* pe;<br>
+@@ -155,8 +154,6 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {<br>
+=C2=A0 =C2=A0 =C2=A0return;<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+-=C2=A0 lfields =3D uv__get_internal_fields(loop);<br>
+-<br>
+=C2=A0 =C2=A0while (!QUEUE_EMPTY(&amp;loop-&gt;watcher_queue)) {<br>
+=C2=A0 =C2=A0 =C2=A0q =3D QUEUE_HEAD(&amp;loop-&gt;watcher_queue);<br>
+=C2=A0 =C2=A0 =C2=A0QUEUE_REMOVE(q);<br>
+@@ -220,7 +217,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {<br>
+=C2=A0 =C2=A0base =3D loop-&gt;time;<br>
+=C2=A0 =C2=A0count =3D 48; /* Benchmarks suggest this gives the best throu=
ghput. */<br>
+ <br>
+-=C2=A0 if (lfields-&gt;flags &amp; UV_METRICS_IDLE_TIME) {<br>
++=C2=A0 if (uv__get_internal_fields(loop)-&gt;flags &amp; UV_METRICS_IDLE_=
TIME) {<br>
+=C2=A0 =C2=A0 =C2=A0reset_timeout =3D 1;<br>
+=C2=A0 =C2=A0 =C2=A0user_timeout =3D timeout;<br>
+=C2=A0 =C2=A0 =C2=A0timeout =3D 0;<br>
+@@ -235,12 +232,6 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {<br>
+=C2=A0 =C2=A0 =C2=A0if (timeout !=3D 0)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0uv__metrics_set_provider_entry_time(loop);<br>
+ <br>
+-=C2=A0 =C2=A0 /* Store the current timeout in a location that&#39;s globa=
lly accessible so<br>
+-=C2=A0 =C2=A0 =C2=A0* other locations like uv__work_done() can determine =
whether the queue<br>
+-=C2=A0 =C2=A0 =C2=A0* of events in the callback were waiting when poll wa=
s called.<br>
+-=C2=A0 =C2=A0 =C2=A0*/<br>
+-=C2=A0 =C2=A0 lfields-&gt;current_timeout =3D timeout;<br>
+-<br>
+=C2=A0 =C2=A0 =C2=A0nfds =3D pollset_poll(loop-&gt;backend_fd,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0events,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0ARRAY_SIZE(events),<br>
+diff --git a/deps/uv/src/unix/fs.c b/deps/uv/src/unix/fs.c<br>
+index 00d385c24b7..c696a8d5500 100644<br>
+--- a/deps/uv/src/unix/fs.c<br>
++++ b/deps/uv/src/unix/fs.c<br>
+@@ -61,11 +61,10 @@<br>
+ #endif<br>
+ <br>
+ #if defined(__linux__)<br>
+-# include &lt;sys/sendfile.h&gt;<br>
+-# include &lt;sys/utsname.h&gt;<br>
++# include &quot;sys/utsname.h&quot;<br>
+ #endif<br>
+ <br>
+-#if defined(__sun)<br>
++#if defined(__linux__) || defined(__sun)<br>
+ # include &lt;sys/sendfile.h&gt;<br>
+ # include &lt;sys/sysmacros.h&gt;<br>
+ #endif<br>
+@@ -1554,7 +1553,26 @@ static int uv__fs_statx(int fd,<br>
+=C2=A0 =C2=A0 =C2=A0return UV_ENOSYS;<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+-=C2=A0 uv__statx_to_stat(&amp;statxbuf, buf);<br>
++=C2=A0 buf-&gt;st_dev =3D makedev(statxbuf.stx_dev_major, statxbuf.stx_de=
v_minor);<br>
++=C2=A0 buf-&gt;st_mode =3D statxbuf.stx_mode;<br>
++=C2=A0 buf-&gt;st_nlink =3D statxbuf.stx_nlink;<br>
++=C2=A0 buf-&gt;st_uid =3D statxbuf.stx_uid;<br>
++=C2=A0 buf-&gt;st_gid =3D statxbuf.stx_gid;<br>
++=C2=A0 buf-&gt;st_rdev =3D makedev(statxbuf.stx_rdev_major, statxbuf.stx_=
rdev_minor);<br>
++=C2=A0 buf-&gt;st_ino =3D statxbuf.stx_ino;<br>
++=C2=A0 buf-&gt;st_size =3D statxbuf.stx_size;<br>
++=C2=A0 buf-&gt;st_blksize =3D statxbuf.stx_blksize;<br>
++=C2=A0 buf-&gt;st_blocks =3D statxbuf.stx_blocks;<br>
++=C2=A0 buf-&gt;st_atim.tv_sec =3D statxbuf.stx_atime.tv_sec;<br>
++=C2=A0 buf-&gt;st_atim.tv_nsec =3D statxbuf.stx_atime.tv_nsec;<br>
++=C2=A0 buf-&gt;st_mtim.tv_sec =3D statxbuf.stx_mtime.tv_sec;<br>
++=C2=A0 buf-&gt;st_mtim.tv_nsec =3D statxbuf.stx_mtime.tv_nsec;<br>
++=C2=A0 buf-&gt;st_ctim.tv_sec =3D statxbuf.stx_ctime.tv_sec;<br>
++=C2=A0 buf-&gt;st_ctim.tv_nsec =3D statxbuf.stx_ctime.tv_nsec;<br>
++=C2=A0 buf-&gt;st_birthtim.tv_sec =3D statxbuf.stx_btime.tv_sec;<br>
++=C2=A0 buf-&gt;st_birthtim.tv_nsec =3D statxbuf.stx_btime.tv_nsec;<br>
++=C2=A0 buf-&gt;st_flags =3D 0;<br>
++=C2=A0 buf-&gt;st_gen =3D 0;<br>
+ <br>
+=C2=A0 =C2=A0return 0;<br>
+ #else<br>
+@@ -1798,9 +1816,6 @@ int uv_fs_chown(uv_loop_t* loop,<br>
+ int uv_fs_close(uv_loop_t* loop, uv_fs_t* req, uv_file file, uv_fs_cb cb)=
 {<br>
+=C2=A0 =C2=A0INIT(CLOSE);<br>
+=C2=A0 =C2=A0req-&gt;file =3D file;<br>
+-=C2=A0 if (cb !=3D NULL)<br>
+-=C2=A0 =C2=A0 if (uv__iou_fs_close(loop, req))<br>
+-=C2=A0 =C2=A0 =C2=A0 return 0;<br>
+=C2=A0 =C2=A0POST;<br>
+ }<br>
+ <br>
+@@ -1848,9 +1863,6 @@ int uv_fs_lchown(uv_loop_t* loop,<br>
+ int uv_fs_fdatasync(uv_loop_t* loop, uv_fs_t* req, uv_file file, uv_fs_cb=
 cb) {<br>
+=C2=A0 =C2=A0INIT(FDATASYNC);<br>
+=C2=A0 =C2=A0req-&gt;file =3D file;<br>
+-=C2=A0 if (cb !=3D NULL)<br>
+-=C2=A0 =C2=A0 if (uv__iou_fs_fsync_or_fdatasync(loop, req, /* IORING_FSYN=
C_DATASYNC */ 1))<br>
+-=C2=A0 =C2=A0 =C2=A0 return 0;<br>
+=C2=A0 =C2=A0POST;<br>
+ }<br>
+ <br>
+@@ -1858,9 +1870,6 @@ int uv_fs_fdatasync(uv_loop_t* loop, uv_fs_t* req, u=
v_file file, uv_fs_cb cb) {<br>
+ int uv_fs_fstat(uv_loop_t* loop, uv_fs_t* req, uv_file file, uv_fs_cb cb)=
 {<br>
+=C2=A0 =C2=A0INIT(FSTAT);<br>
+=C2=A0 =C2=A0req-&gt;file =3D file;<br>
+-=C2=A0 if (cb !=3D NULL)<br>
+-=C2=A0 =C2=A0 if (uv__iou_fs_statx(loop, req, /* is_fstat */ 1, /* is_lst=
at */ 0))<br>
+-=C2=A0 =C2=A0 =C2=A0 return 0;<br>
+=C2=A0 =C2=A0POST;<br>
+ }<br>
+ <br>
+@@ -1868,9 +1877,6 @@ int uv_fs_fstat(uv_loop_t* loop, uv_fs_t* req, uv_fi=
le file, uv_fs_cb cb) {<br>
+ int uv_fs_fsync(uv_loop_t* loop, uv_fs_t* req, uv_file file, uv_fs_cb cb)=
 {<br>
+=C2=A0 =C2=A0INIT(FSYNC);<br>
+=C2=A0 =C2=A0req-&gt;file =3D file;<br>
+-=C2=A0 if (cb !=3D NULL)<br>
+-=C2=A0 =C2=A0 if (uv__iou_fs_fsync_or_fdatasync(loop, req, /* no flags */=
 0))<br>
+-=C2=A0 =C2=A0 =C2=A0 return 0;<br>
+=C2=A0 =C2=A0POST;<br>
+ }<br>
+ <br>
+@@ -1917,9 +1923,6 @@ int uv_fs_lutime(uv_loop_t* loop,<br>
+ int uv_fs_lstat(uv_loop_t* loop, uv_fs_t* req, const char* path, uv_fs_cb=
 cb) {<br>
+=C2=A0 =C2=A0INIT(LSTAT);<br>
+=C2=A0 =C2=A0PATH;<br>
+-=C2=A0 if (cb !=3D NULL)<br>
+-=C2=A0 =C2=A0 if (uv__iou_fs_statx(loop, req, /* is_fstat */ 0, /* is_lst=
at */ 1))<br>
+-=C2=A0 =C2=A0 =C2=A0 return 0;<br>
+=C2=A0 =C2=A0POST;<br>
+ }<br>
+ <br>
+@@ -1981,9 +1984,6 @@ int uv_fs_open(uv_loop_t* loop,<br>
+=C2=A0 =C2=A0PATH;<br>
+=C2=A0 =C2=A0req-&gt;flags =3D flags;<br>
+=C2=A0 =C2=A0req-&gt;mode =3D mode;<br>
+-=C2=A0 if (cb !=3D NULL)<br>
+-=C2=A0 =C2=A0 if (uv__iou_fs_open(loop, req))<br>
+-=C2=A0 =C2=A0 =C2=A0 return 0;<br>
+=C2=A0 =C2=A0POST;<br>
+ }<br>
+ <br>
+@@ -2012,11 +2012,6 @@ int uv_fs_read(uv_loop_t* loop, uv_fs_t* req,<br>
+=C2=A0 =C2=A0memcpy(req-&gt;bufs, bufs, nbufs * sizeof(*bufs));<br>
+ <br>
+=C2=A0 =C2=A0req-&gt;off =3D off;<br>
+-<br>
+-=C2=A0 if (cb !=3D NULL)<br>
+-=C2=A0 =C2=A0 if (uv__iou_fs_read_or_write(loop, req, /* is_read */ 1))<b=
r>
+-=C2=A0 =C2=A0 =C2=A0 return 0;<br>
+-<br>
+=C2=A0 =C2=A0POST;<br>
+ }<br>
+ <br>
+@@ -2124,9 +2119,6 @@ int uv_fs_sendfile(uv_loop_t* loop,<br>
+ int uv_fs_stat(uv_loop_t* loop, uv_fs_t* req, const char* path, uv_fs_cb =
cb) {<br>
+=C2=A0 =C2=A0INIT(STAT);<br>
+=C2=A0 =C2=A0PATH;<br>
+-=C2=A0 if (cb !=3D NULL)<br>
+-=C2=A0 =C2=A0 if (uv__iou_fs_statx(loop, req, /* is_fstat */ 0, /* is_lst=
at */ 0))<br>
+-=C2=A0 =C2=A0 =C2=A0 return 0;<br>
+=C2=A0 =C2=A0POST;<br>
+ }<br>
+ <br>
+@@ -2190,11 +2182,6 @@ int uv_fs_write(uv_loop_t* loop,<br>
+=C2=A0 =C2=A0memcpy(req-&gt;bufs, bufs, nbufs * sizeof(*bufs));<br>
+ <br>
+=C2=A0 =C2=A0req-&gt;off =3D off;<br>
+-<br>
+-=C2=A0 if (cb !=3D NULL)<br>
+-=C2=A0 =C2=A0 if (uv__iou_fs_read_or_write(loop, req, /* is_read */ 0))<b=
r>
+-=C2=A0 =C2=A0 =C2=A0 return 0;<br>
+-<br>
+=C2=A0 =C2=A0POST;<br>
+ }<br>
+ <br>
+diff --git a/deps/uv/src/unix/internal.h b/deps/uv/src/unix/internal.h<br>
+index 6c5822e6a0d..d439ae6dd3d 100644<br>
+--- a/deps/uv/src/unix/internal.h<br>
++++ b/deps/uv/src/unix/internal.h<br>
+@@ -329,28 +329,6 @@ int uv__random_getentropy(void* buf, size_t buflen);<=
br>
+ int uv__random_readpath(const char* path, void* buf, size_t buflen);<br>
+ int uv__random_sysctl(void* buf, size_t buflen);<br>
+ <br>
+-/* io_uring */<br>
+-#ifdef __linux__<br>
+-int uv__iou_fs_close(uv_loop_t* loop, uv_fs_t* req);<br>
+-int uv__iou_fs_fsync_or_fdatasync(uv_loop_t* loop,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uv_fs_t* req,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uint32_t fsync_flags);<br>
+-int uv__iou_fs_open(uv_loop_t* loop, uv_fs_t* req);<br>
+-int uv__iou_fs_read_or_write(uv_loop_t* loop,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uv_fs_t* req,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int is_read);<br>
+-int uv__iou_fs_statx(uv_loop_t* loop,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0uv_fs_t* req,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0int is_fstat,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0int is_lstat);<br>
+-#else<br>
+-#define uv__iou_fs_close(loop, req) 0<br>
+-#define uv__iou_fs_fsync_or_fdatasync(loop, req, fsync_flags) 0<br>
+-#define uv__iou_fs_open(loop, req) 0<br>
+-#define uv__iou_fs_read_or_write(loop, req, is_read) 0<br>
+-#define uv__iou_fs_statx(loop, req, is_fstat, is_lstat) 0<br>
+-#endif<br>
+-<br>
+ #if defined(__APPLE__)<br>
+ int uv___stream_fd(const uv_stream_t* handle);<br>
+ #define uv__stream_fd(handle) (uv___stream_fd((const uv_stream_t*) (handl=
e)))<br>
+@@ -427,7 +405,6 @@ int uv__statx(int dirfd,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int flags,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int mask,<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct uv__statx* s=
tatxbuf);<br>
+-void uv__statx_to_stat(const struct uv__statx* statxbuf, uv_stat_t* buf);=
<br>
+ ssize_t uv__getrandom(void* buf, size_t buflen, unsigned flags);<br>
+ #endif<br>
+ <br>
+diff --git a/deps/uv/src/unix/kqueue.c b/deps/uv/src/unix/kqueue.c<br>
+index 82916d65933..deb486bae7a 100644<br>
+--- a/deps/uv/src/unix/kqueue.c<br>
++++ b/deps/uv/src/unix/kqueue.c<br>
+@@ -127,7 +127,6 @@ static void uv__kqueue_delete(int kqfd, const struct k=
event *ev) {<br>
+ <br>
+ <br>
+ void uv__io_poll(uv_loop_t* loop, int timeout) {<br>
+-=C2=A0 uv__loop_internal_fields_t* lfields;<br>
+=C2=A0 =C2=A0struct kevent events[1024];<br>
+=C2=A0 =C2=A0struct kevent* ev;<br>
+=C2=A0 =C2=A0struct timespec spec;<br>
+@@ -156,7 +155,6 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {<br>
+=C2=A0 =C2=A0 =C2=A0return;<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+-=C2=A0 lfields =3D uv__get_internal_fields(loop);<br>
+=C2=A0 =C2=A0nevents =3D 0;<br>
+ <br>
+=C2=A0 =C2=A0while (!QUEUE_EMPTY(&amp;loop-&gt;watcher_queue)) {<br>
+@@ -224,7 +222,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {<br>
+=C2=A0 =C2=A0base =3D loop-&gt;time;<br>
+=C2=A0 =C2=A0count =3D 48; /* Benchmarks suggest this gives the best throu=
ghput. */<br>
+ <br>
+-=C2=A0 if (lfields-&gt;flags &amp; UV_METRICS_IDLE_TIME) {<br>
++=C2=A0 if (uv__get_internal_fields(loop)-&gt;flags &amp; UV_METRICS_IDLE_=
TIME) {<br>
+=C2=A0 =C2=A0 =C2=A0reset_timeout =3D 1;<br>
+=C2=A0 =C2=A0 =C2=A0user_timeout =3D timeout;<br>
+=C2=A0 =C2=A0 =C2=A0timeout =3D 0;<br>
+@@ -247,12 +245,6 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {<br>
+=C2=A0 =C2=A0 =C2=A0if (pset !=3D NULL)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0pthread_sigmask(SIG_BLOCK, pset, NULL);<br>
+ <br>
+-=C2=A0 =C2=A0 /* Store the current timeout in a location that&#39;s globa=
lly accessible so<br>
+-=C2=A0 =C2=A0 =C2=A0* other locations like uv__work_done() can determine =
whether the queue<br>
+-=C2=A0 =C2=A0 =C2=A0* of events in the callback were waiting when poll wa=
s called.<br>
+-=C2=A0 =C2=A0 =C2=A0*/<br>
+-=C2=A0 =C2=A0 lfields-&gt;current_timeout =3D timeout;<br>
+-<br>
+=C2=A0 =C2=A0 =C2=A0nfds =3D kevent(loop-&gt;backend_fd,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0event=
s,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0neven=
ts,<br>
+diff --git a/deps/uv/src/unix/linux.c b/deps/uv/src/unix/linux.c<br>
+index 5f84ad0eea3..343e37f2527 100644<br>
+--- a/deps/uv/src/unix/linux.c<br>
++++ b/deps/uv/src/unix/linux.c<br>
+@@ -27,8 +27,6 @@<br>
+ #include &quot;internal.h&quot;<br>
+ <br>
+ #include &lt;inttypes.h&gt;<br>
+-#include &lt;stdatomic.h&gt;<br>
+-#include &lt;stddef.h&gt;=C2=A0 /* offsetof */<br>
+ #include &lt;stdint.h&gt;<br>
+ #include &lt;stdio.h&gt;<br>
+ #include &lt;stdlib.h&gt;<br>
+@@ -40,29 +38,15 @@<br>
+ #include &lt;net/if.h&gt;<br>
+ #include &lt;sys/epoll.h&gt;<br>
+ #include &lt;sys/inotify.h&gt;<br>
+-#include &lt;sys/mman.h&gt;<br>
+ #include &lt;sys/param.h&gt;<br>
+ #include &lt;sys/prctl.h&gt;<br>
+ #include &lt;sys/stat.h&gt;<br>
+ #include &lt;sys/syscall.h&gt;<br>
+ #include &lt;sys/sysinfo.h&gt;<br>
+-#include &lt;sys/sysmacros.h&gt;<br>
+ #include &lt;sys/types.h&gt;<br>
+ #include &lt;time.h&gt;<br>
+ #include &lt;unistd.h&gt;<br>
+ <br>
+-#ifndef __NR_io_uring_setup<br>
+-# define __NR_io_uring_setup 425<br>
+-#endif<br>
+-<br>
+-#ifndef __NR_io_uring_enter<br>
+-# define __NR_io_uring_enter 426<br>
+-#endif<br>
+-<br>
+-#ifndef __NR_io_uring_register<br>
+-# define __NR_io_uring_register 427<br>
+-#endif<br>
+-<br>
+ #ifndef __NR_copy_file_range<br>
+ # if defined(__x86_64__)<br>
+ #=C2=A0 define __NR_copy_file_range 326<br>
+@@ -132,129 +116,6 @@<br>
+ # include &lt;netpacket/packet.h&gt;<br>
+ #endif /* HAVE_IFADDRS_H */<br>
+ <br>
+-enum {<br>
+-=C2=A0 UV__IORING_SETUP_SQPOLL =3D 2u,<br>
+-};<br>
+-<br>
+-enum {<br>
+-=C2=A0 UV__IORING_FEAT_SINGLE_MMAP =3D 1u,<br>
+-=C2=A0 UV__IORING_FEAT_NODROP =3D 2u,<br>
+-=C2=A0 UV__IORING_FEAT_RSRC_TAGS =3D 1024u,=C2=A0 /* linux v5.13 */<br>
+-};<br>
+-<br>
+-enum {<br>
+-=C2=A0 UV__IORING_OP_READV =3D 1,<br>
+-=C2=A0 UV__IORING_OP_WRITEV =3D 2,<br>
+-=C2=A0 UV__IORING_OP_FSYNC =3D 3,<br>
+-=C2=A0 UV__IORING_OP_OPENAT =3D 18,<br>
+-=C2=A0 UV__IORING_OP_CLOSE =3D 19,<br>
+-=C2=A0 UV__IORING_OP_STATX =3D 21,<br>
+-=C2=A0 UV__IORING_OP_EPOLL_CTL =3D 29,<br>
+-};<br>
+-<br>
+-enum {<br>
+-=C2=A0 UV__IORING_ENTER_GETEVENTS =3D 1u,<br>
+-=C2=A0 UV__IORING_ENTER_SQ_WAKEUP =3D 2u,<br>
+-};<br>
+-<br>
+-enum {<br>
+-=C2=A0 UV__IORING_SQ_NEED_WAKEUP =3D 1u,<br>
+-=C2=A0 UV__IORING_SQ_CQ_OVERFLOW =3D 2u,<br>
+-};<br>
+-<br>
+-struct uv__io_cqring_offsets {<br>
+-=C2=A0 uint32_t head;<br>
+-=C2=A0 uint32_t tail;<br>
+-=C2=A0 uint32_t ring_mask;<br>
+-=C2=A0 uint32_t ring_entries;<br>
+-=C2=A0 uint32_t overflow;<br>
+-=C2=A0 uint32_t cqes;<br>
+-=C2=A0 uint64_t reserved0;<br>
+-=C2=A0 uint64_t reserved1;<br>
+-};<br>
+-<br>
+-STATIC_ASSERT(40 =3D=3D sizeof(struct uv__io_cqring_offsets));<br>
+-<br>
+-struct uv__io_sqring_offsets {<br>
+-=C2=A0 uint32_t head;<br>
+-=C2=A0 uint32_t tail;<br>
+-=C2=A0 uint32_t ring_mask;<br>
+-=C2=A0 uint32_t ring_entries;<br>
+-=C2=A0 uint32_t flags;<br>
+-=C2=A0 uint32_t dropped;<br>
+-=C2=A0 uint32_t array;<br>
+-=C2=A0 uint32_t reserved0;<br>
+-=C2=A0 uint64_t reserved1;<br>
+-};<br>
+-<br>
+-STATIC_ASSERT(40 =3D=3D sizeof(struct uv__io_sqring_offsets));<br>
+-<br>
+-struct uv__io_uring_cqe {<br>
+-=C2=A0 uint64_t user_data;<br>
+-=C2=A0 int32_t res;<br>
+-=C2=A0 uint32_t flags;<br>
+-};<br>
+-<br>
+-STATIC_ASSERT(16 =3D=3D sizeof(struct uv__io_uring_cqe));<br>
+-<br>
+-struct uv__io_uring_sqe {<br>
+-=C2=A0 uint8_t opcode;<br>
+-=C2=A0 uint8_t flags;<br>
+-=C2=A0 uint16_t ioprio;<br>
+-=C2=A0 int32_t fd;<br>
+-=C2=A0 union {<br>
+-=C2=A0 =C2=A0 uint64_t off;<br>
+-=C2=A0 =C2=A0 uint64_t addr2;<br>
+-=C2=A0 };<br>
+-=C2=A0 union {<br>
+-=C2=A0 =C2=A0 uint64_t addr;<br>
+-=C2=A0 };<br>
+-=C2=A0 uint32_t len;<br>
+-=C2=A0 union {<br>
+-=C2=A0 =C2=A0 uint32_t rw_flags;<br>
+-=C2=A0 =C2=A0 uint32_t fsync_flags;<br>
+-=C2=A0 =C2=A0 uint32_t open_flags;<br>
+-=C2=A0 =C2=A0 uint32_t statx_flags;<br>
+-=C2=A0 };<br>
+-=C2=A0 uint64_t user_data;<br>
+-=C2=A0 union {<br>
+-=C2=A0 =C2=A0 uint16_t buf_index;<br>
+-=C2=A0 =C2=A0 uint64_t pad[3];<br>
+-=C2=A0 };<br>
+-};<br>
+-<br>
+-STATIC_ASSERT(64 =3D=3D sizeof(struct uv__io_uring_sqe));<br>
+-STATIC_ASSERT(0 =3D=3D offsetof(struct uv__io_uring_sqe, opcode));<br>
+-STATIC_ASSERT(1 =3D=3D offsetof(struct uv__io_uring_sqe, flags));<br>
+-STATIC_ASSERT(2 =3D=3D offsetof(struct uv__io_uring_sqe, ioprio));<br>
+-STATIC_ASSERT(4 =3D=3D offsetof(struct uv__io_uring_sqe, fd));<br>
+-STATIC_ASSERT(8 =3D=3D offsetof(struct uv__io_uring_sqe, off));<br>
+-STATIC_ASSERT(16 =3D=3D offsetof(struct uv__io_uring_sqe, addr));<br>
+-STATIC_ASSERT(24 =3D=3D offsetof(struct uv__io_uring_sqe, len));<br>
+-STATIC_ASSERT(28 =3D=3D offsetof(struct uv__io_uring_sqe, rw_flags));<br>
+-STATIC_ASSERT(32 =3D=3D offsetof(struct uv__io_uring_sqe, user_data));<br=
>
+-STATIC_ASSERT(40 =3D=3D offsetof(struct uv__io_uring_sqe, buf_index));<br=
>
+-<br>
+-struct uv__io_uring_params {<br>
+-=C2=A0 uint32_t sq_entries;<br>
+-=C2=A0 uint32_t cq_entries;<br>
+-=C2=A0 uint32_t flags;<br>
+-=C2=A0 uint32_t sq_thread_cpu;<br>
+-=C2=A0 uint32_t sq_thread_idle;<br>
+-=C2=A0 uint32_t features;<br>
+-=C2=A0 uint32_t reserved[4];<br>
+-=C2=A0 struct uv__io_sqring_offsets sq_off;=C2=A0 /* 40 bytes */<br>
+-=C2=A0 struct uv__io_cqring_offsets cq_off;=C2=A0 /* 40 bytes */<br>
+-};<br>
+-<br>
+-STATIC_ASSERT(40 + 40 + 40 =3D=3D sizeof(struct uv__io_uring_params));<br=
>
+-STATIC_ASSERT(40 =3D=3D offsetof(struct uv__io_uring_params, sq_off));<br=
>
+-STATIC_ASSERT(80 =3D=3D offsetof(struct uv__io_uring_params, cq_off));<br=
>
+-<br>
+-STATIC_ASSERT(EPOLL_CTL_ADD &lt; 4);<br>
+-STATIC_ASSERT(EPOLL_CTL_DEL &lt; 4);<br>
+-STATIC_ASSERT(EPOLL_CTL_MOD &lt; 4);<br>
+-<br>
+ struct watcher_list {<br>
+=C2=A0 =C2=A0RB_ENTRY(watcher_list) entry;<br>
+=C2=A0 =C2=A0QUEUE watchers;<br>
+@@ -276,17 +137,6 @@ static int compare_watchers(const struct watcher_list=
* a,<br>
+ static void maybe_free_watcher_list(struct watcher_list* w,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uv_loop_t* loop)=
;<br>
+ <br>
+-static void uv__epoll_ctl_flush(int epollfd,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct uv__iou* ctl,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct epoll_event (*events)[256]);<=
br>
+-<br>
+-static void uv__epoll_ctl_prep(int epollfd,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct uv__iou* ctl,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct epoll_event (*events)[256],<br=
>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int op,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int fd,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct epoll_event* e);<br>
+-<br>
+ RB_GENERATE_STATIC(watcher_root, watcher_list, entry, compare_watchers)<b=
r>
+ <br>
+ <br>
+@@ -356,187 +206,7 @@ ssize_t uv__getrandom(void* buf, size_t buflen, unsi=
gned flags) {<br>
+ }<br>
+ <br>
+ <br>
+-int uv__io_uring_setup(int entries, struct uv__io_uring_params* params) {=
<br>
+-=C2=A0 return syscall(__NR_io_uring_setup, entries, params);<br>
+-}<br>
+-<br>
+-<br>
+-int uv__io_uring_enter(int fd,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0unsigned to_submit,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0unsigned min_complete,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0unsigned flags) {<br>
+-=C2=A0 /* io_uring_enter used to take a sigset_t but it&#39;s unused<br>
+-=C2=A0 =C2=A0* in newer kernels unless IORING_ENTER_EXT_ARG is set,<br>
+-=C2=A0 =C2=A0* in which case it takes a struct io_uring_getevents_arg.<br=
>
+-=C2=A0 =C2=A0*/<br>
+-=C2=A0 return syscall(__NR_io_uring_enter,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fd,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0to_submit,<=
br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0min_complet=
e,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0flags,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0NULL,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00L);<br>
+-}<br>
+-<br>
+-<br>
+-int uv__io_uring_register(int fd, unsigned opcode, void* arg, unsigned na=
rgs) {<br>
+-=C2=A0 return syscall(__NR_io_uring_register, fd, opcode, arg, nargs);<br=
>
+-}<br>
+-<br>
+-<br>
+-static int uv__use_io_uring(void) {<br>
+-=C2=A0 /* Ternary: unknown=3D0, yes=3D1, no=3D-1 */<br>
+-=C2=A0 static _Atomic int use_io_uring;<br>
+-=C2=A0 char* val;<br>
+-=C2=A0 int use;<br>
+-<br>
+-=C2=A0 use =3D atomic_load_explicit(&amp;use_io_uring, memory_order_relax=
ed);<br>
+-<br>
+-=C2=A0 if (use =3D=3D 0) {<br>
+-=C2=A0 =C2=A0 val =3D getenv(&quot;UV_USE_IO_URING&quot;);<br>
+-=C2=A0 =C2=A0 use =3D val =3D=3D NULL || atoi(val) ? 1 : -1;<br>
+-=C2=A0 =C2=A0 atomic_store_explicit(&amp;use_io_uring, use, memory_order_=
relaxed);<br>
+-=C2=A0 }<br>
+-<br>
+-=C2=A0 return use &gt; 0;<br>
+-}<br>
+-<br>
+-<br>
+-static void uv__iou_init(int epollfd,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0struct uv__iou* iou,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0uint32_t entries,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0uint32_t flags) {<br>
+-=C2=A0 struct uv__io_uring_params params;<br>
+-=C2=A0 struct epoll_event e;<br>
+-=C2=A0 size_t cqlen;<br>
+-=C2=A0 size_t sqlen;<br>
+-=C2=A0 size_t maxlen;<br>
+-=C2=A0 size_t sqelen;<br>
+-=C2=A0 uint32_t i;<br>
+-=C2=A0 char* sq;<br>
+-=C2=A0 char* sqe;<br>
+-=C2=A0 int ringfd;<br>
+-<br>
+-=C2=A0 sq =3D MAP_FAILED;<br>
+-=C2=A0 sqe =3D MAP_FAILED;<br>
+-<br>
+-=C2=A0 if (!uv__use_io_uring())<br>
+-=C2=A0 =C2=A0 return;<br>
+-<br>
+-=C2=A0 /* SQPOLL required CAP_SYS_NICE until linux v5.12 relaxed that req=
uirement.<br>
+-=C2=A0 =C2=A0* Mostly academic because we check for a v5.13 kernel afterw=
ards anyway.<br>
+-=C2=A0 =C2=A0*/<br>
+-=C2=A0 memset(&amp;params, 0, sizeof(params));<br>
+-=C2=A0 params.flags =3D flags;<br>
+-<br>
+-=C2=A0 if (flags &amp; UV__IORING_SETUP_SQPOLL)<br>
+-=C2=A0 =C2=A0 params.sq_thread_idle =3D 10;=C2=A0 /* milliseconds */<br>
+-<br>
+-=C2=A0 /* Kernel returns a file descriptor with O_CLOEXEC flag set. */<br=
>
+-=C2=A0 ringfd =3D uv__io_uring_setup(entries, &amp;params);<br>
+-=C2=A0 if (ringfd =3D=3D -1)<br>
+-=C2=A0 =C2=A0 return;<br>
+-<br>
+-=C2=A0 /* IORING_FEAT_RSRC_TAGS is used to detect linux v5.13 but what we=
&#39;re<br>
+-=C2=A0 =C2=A0* actually detecting is whether IORING_OP_STATX works with S=
QPOLL.<br>
+-=C2=A0 =C2=A0*/<br>
+-=C2=A0 if (!(params.features &amp; UV__IORING_FEAT_RSRC_TAGS))<br>
+-=C2=A0 =C2=A0 goto fail;<br>
+-<br>
+-=C2=A0 /* Implied by IORING_FEAT_RSRC_TAGS but checked explicitly anyway.=
 */<br>
+-=C2=A0 if (!(params.features &amp; UV__IORING_FEAT_SINGLE_MMAP))<br>
+-=C2=A0 =C2=A0 goto fail;<br>
+-<br>
+-=C2=A0 /* Implied by IORING_FEAT_RSRC_TAGS but checked explicitly anyway.=
 */<br>
+-=C2=A0 if (!(params.features &amp; UV__IORING_FEAT_NODROP))<br>
+-=C2=A0 =C2=A0 goto fail;<br>
+-<br>
+-=C2=A0 sqlen =3D params.sq_off.array + params.sq_entries * sizeof(uint32_=
t);<br>
+-=C2=A0 cqlen =3D<br>
+-=C2=A0 =C2=A0 =C2=A0 params.cq_off.cqes + params.cq_entries * sizeof(stru=
ct uv__io_uring_cqe);<br>
+-=C2=A0 maxlen =3D sqlen &lt; cqlen ? cqlen : sqlen;<br>
+-=C2=A0 sqelen =3D params.sq_entries * sizeof(struct uv__io_uring_sqe);<br=
>
+-<br>
+-=C2=A0 sq =3D mmap(0,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 maxlen,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PROT_READ | PROT_WRITE,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 MAP_SHARED | MAP_POPULATE,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ringfd,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0);=C2=A0 /* IORING_OFF_SQ_RING=
 */<br>
+-<br>
+-=C2=A0 sqe =3D mmap(0,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sqelen,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0PROT_READ | PROT_WRITE,<b=
r>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0MAP_SHARED | MAP_POPULATE=
,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ringfd,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x10000000ull);=C2=A0 /* =
IORING_OFF_SQES */<br>
+-<br>
+-=C2=A0 if (sq =3D=3D MAP_FAILED || sqe =3D=3D MAP_FAILED)<br>
+-=C2=A0 =C2=A0 goto fail;<br>
+-<br>
+-=C2=A0 if (flags &amp; UV__IORING_SETUP_SQPOLL) {<br>
+-=C2=A0 =C2=A0 /* Only interested in completion events. To get notified wh=
en<br>
+-=C2=A0 =C2=A0 =C2=A0* the kernel pulls items from the submission ring, ad=
d POLLOUT.<br>
+-=C2=A0 =C2=A0 =C2=A0*/<br>
+-=C2=A0 =C2=A0 memset(&amp;e, 0, sizeof(e));<br>
+-=C2=A0 =C2=A0 e.events =3D POLLIN;<br>
+-=C2=A0 =C2=A0 e.data.fd =3D ringfd;<br>
+-<br>
+-=C2=A0 =C2=A0 if (epoll_ctl(epollfd, EPOLL_CTL_ADD, ringfd, &amp;e))<br>
+-=C2=A0 =C2=A0 =C2=A0 goto fail;<br>
+-=C2=A0 }<br>
+-<br>
+-=C2=A0 iou-&gt;sqhead =3D (uint32_t*) (sq + params.sq_off.head);<br>
+-=C2=A0 iou-&gt;sqtail =3D (uint32_t*) (sq + params.sq_off.tail);<br>
+-=C2=A0 iou-&gt;sqmask =3D *(uint32_t*) (sq + params.sq_off.ring_mask);<br=
>
+-=C2=A0 iou-&gt;sqarray =3D (uint32_t*) (sq + params.sq_off.array);<br>
+-=C2=A0 iou-&gt;sqflags =3D (uint32_t*) (sq + params.sq_off.flags);<br>
+-=C2=A0 iou-&gt;cqhead =3D (uint32_t*) (sq + params.cq_off.head);<br>
+-=C2=A0 iou-&gt;cqtail =3D (uint32_t*) (sq + params.cq_off.tail);<br>
+-=C2=A0 iou-&gt;cqmask =3D *(uint32_t*) (sq + params.cq_off.ring_mask);<br=
>
+-=C2=A0 iou-&gt;sq =3D sq;<br>
+-=C2=A0 iou-&gt;cqe =3D sq + params.cq_off.cqes;<br>
+-=C2=A0 iou-&gt;sqe =3D sqe;<br>
+-=C2=A0 iou-&gt;sqlen =3D sqlen;<br>
+-=C2=A0 iou-&gt;cqlen =3D cqlen;<br>
+-=C2=A0 iou-&gt;maxlen =3D maxlen;<br>
+-=C2=A0 iou-&gt;sqelen =3D sqelen;<br>
+-=C2=A0 iou-&gt;ringfd =3D ringfd;<br>
+-=C2=A0 iou-&gt;in_flight =3D 0;<br>
+-<br>
+-=C2=A0 for (i =3D 0; i &lt;=3D iou-&gt;sqmask; i++)<br>
+-=C2=A0 =C2=A0 iou-&gt;sqarray[i] =3D i;=C2=A0 /* Slot -&gt; sqe identity =
mapping. */<br>
+-<br>
+-=C2=A0 return;<br>
+-<br>
+-fail:<br>
+-=C2=A0 if (sq !=3D MAP_FAILED)<br>
+-=C2=A0 =C2=A0 munmap(sq, maxlen);<br>
+-<br>
+-=C2=A0 if (sqe !=3D MAP_FAILED)<br>
+-=C2=A0 =C2=A0 munmap(sqe, sqelen);<br>
+-<br>
+-=C2=A0 uv__close(ringfd);<br>
+-}<br>
+-<br>
+-<br>
+-static void uv__iou_delete(struct uv__iou* iou) {<br>
+-=C2=A0 if (iou-&gt;ringfd !=3D -1) {<br>
+-=C2=A0 =C2=A0 munmap(iou-&gt;sq, iou-&gt;maxlen);<br>
+-=C2=A0 =C2=A0 munmap(iou-&gt;sqe, iou-&gt;sqelen);<br>
+-=C2=A0 =C2=A0 uv__close(iou-&gt;ringfd);<br>
+-=C2=A0 =C2=A0 iou-&gt;ringfd =3D -1;<br>
+-=C2=A0 }<br>
+-}<br>
+-<br>
+-<br>
+ int uv__platform_loop_init(uv_loop_t* loop) {<br>
+-=C2=A0 uv__loop_internal_fields_t* lfields;<br>
+-<br>
+-=C2=A0 lfields =3D uv__get_internal_fields(loop);<br>
+-=C2=A0 lfields-&gt;ctl.ringfd =3D -1;<br>
+-=C2=A0 lfields-&gt;iou.ringfd =3D -1;<br>
+-<br>
+=C2=A0 =C2=A0loop-&gt;inotify_watchers =3D NULL;<br>
+=C2=A0 =C2=A0loop-&gt;inotify_fd =3D -1;<br>
+=C2=A0 =C2=A0loop-&gt;backend_fd =3D epoll_create1(O_CLOEXEC);<br>
+@@ -544,9 +214,6 @@ int uv__platform_loop_init(uv_loop_t* loop) {<br>
+=C2=A0 =C2=A0if (loop-&gt;backend_fd =3D=3D -1)<br>
+=C2=A0 =C2=A0 =C2=A0return UV__ERR(errno);<br>
+ <br>
+-=C2=A0 uv__iou_init(loop-&gt;backend_fd, &amp;lfields-&gt;iou, 64, UV__IO=
RING_SETUP_SQPOLL);<br>
+-=C2=A0 uv__iou_init(loop-&gt;backend_fd, &amp;lfields-&gt;ctl, 256, 0);<b=
r>
+-<br>
+=C2=A0 =C2=A0return 0;<br>
+ }<br>
+ <br>
+@@ -559,8 +226,6 @@ int uv__io_fork(uv_loop_t* loop) {<br>
+ <br>
+=C2=A0 =C2=A0uv__close(loop-&gt;backend_fd);<br>
+=C2=A0 =C2=A0loop-&gt;backend_fd =3D -1;<br>
+-<br>
+-=C2=A0 /* TODO(bnoordhuis) Loses items from the submission and completion=
 rings. */<br>
+=C2=A0 =C2=A0uv__platform_loop_delete(loop);<br>
+ <br>
+=C2=A0 =C2=A0err =3D uv__platform_loop_init(loop);<br>
+@@ -572,62 +237,42 @@ int uv__io_fork(uv_loop_t* loop) {<br>
+ <br>
+ <br>
+ void uv__platform_loop_delete(uv_loop_t* loop) {<br>
+-=C2=A0 uv__loop_internal_fields_t* lfields;<br>
+-<br>
+-=C2=A0 lfields =3D uv__get_internal_fields(loop);<br>
+-=C2=A0 uv__iou_delete(&amp;lfields-&gt;ctl);<br>
+-=C2=A0 uv__iou_delete(&amp;lfields-&gt;iou);<br>
+-<br>
+-=C2=A0 if (loop-&gt;inotify_fd !=3D -1) {<br>
+-=C2=A0 =C2=A0 uv__io_stop(loop, &amp;loop-&gt;inotify_read_watcher, POLLI=
N);<br>
+-=C2=A0 =C2=A0 uv__close(loop-&gt;inotify_fd);<br>
+-=C2=A0 =C2=A0 loop-&gt;inotify_fd =3D -1;<br>
+-=C2=A0 }<br>
++=C2=A0 if (loop-&gt;inotify_fd =3D=3D -1) return;<br>
++=C2=A0 uv__io_stop(loop, &amp;loop-&gt;inotify_read_watcher, POLLIN);<br>
++=C2=A0 uv__close(loop-&gt;inotify_fd);<br>
++=C2=A0 loop-&gt;inotify_fd =3D -1;<br>
+ }<br>
+ <br>
+ <br>
+-struct uv__invalidate {<br>
+-=C2=A0 struct epoll_event (*prep)[256];<br>
+-=C2=A0 struct epoll_event* events;<br>
+-=C2=A0 int nfds;<br>
+-};<br>
+-<br>
+-<br>
+ void uv__platform_invalidate_fd(uv_loop_t* loop, int fd) {<br>
+-=C2=A0 uv__loop_internal_fields_t* lfields;<br>
+-=C2=A0 struct uv__invalidate* inv;<br>
++=C2=A0 struct epoll_event* events;<br>
+=C2=A0 =C2=A0struct epoll_event dummy;<br>
+-=C2=A0 int i;<br>
++=C2=A0 uintptr_t i;<br>
++=C2=A0 uintptr_t nfds;<br>
+ <br>
+-=C2=A0 lfields =3D uv__get_internal_fields(loop);<br>
+-=C2=A0 inv =3D lfields-&gt;inv;<br>
++=C2=A0 assert(loop-&gt;watchers !=3D NULL);<br>
++=C2=A0 assert(fd &gt;=3D 0);<br>
+ <br>
+-=C2=A0 /* Invalidate events with same file descriptor */<br>
+-=C2=A0 if (inv !=3D NULL)<br>
+-=C2=A0 =C2=A0 for (i =3D 0; i &lt; inv-&gt;nfds; i++)<br>
+-=C2=A0 =C2=A0 =C2=A0 if (inv-&gt;events[i].data.fd =3D=3D fd)<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 inv-&gt;events[i].data.fd =3D -1;<br>
++=C2=A0 events =3D (struct epoll_event*) loop-&gt;watchers[loop-&gt;nwatch=
ers];<br>
++=C2=A0 nfds =3D (uintptr_t) loop-&gt;watchers[loop-&gt;nwatchers + 1];<br=
>
++=C2=A0 if (events !=3D NULL)<br>
++=C2=A0 =C2=A0 /* Invalidate events with same file descriptor */<br>
++=C2=A0 =C2=A0 for (i =3D 0; i &lt; nfds; i++)<br>
++=C2=A0 =C2=A0 =C2=A0 if (events[i].data.fd =3D=3D fd)<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 events[i].data.fd =3D -1;<br>
+ <br>
+=C2=A0 =C2=A0/* Remove the file descriptor from the epoll.<br>
+=C2=A0 =C2=A0 * This avoids a problem where the same file description rema=
ins open<br>
+=C2=A0 =C2=A0 * in another process, causing repeated junk epoll events.<br=
>
+=C2=A0 =C2=A0 *<br>
+=C2=A0 =C2=A0 * We pass in a dummy epoll_event, to work around a bug in ol=
d kernels.<br>
+-=C2=A0 =C2=A0*<br>
+-=C2=A0 =C2=A0* Work around a bug in kernels 3.10 to 3.19 where passing a =
struct that<br>
+-=C2=A0 =C2=A0* has the EPOLLWAKEUP flag set generates spurious audit sysl=
og warnings.<br>
+=C2=A0 =C2=A0 */<br>
+-=C2=A0 memset(&amp;dummy, 0, sizeof(dummy));<br>
+-<br>
+-=C2=A0 if (inv =3D=3D NULL) {<br>
++=C2=A0 if (loop-&gt;backend_fd &gt;=3D 0) {<br>
++=C2=A0 =C2=A0 /* Work around a bug in kernels 3.10 to 3.19 where passing =
a struct that<br>
++=C2=A0 =C2=A0 =C2=A0* has the EPOLLWAKEUP flag set generates spurious aud=
it syslog warnings.<br>
++=C2=A0 =C2=A0 =C2=A0*/<br>
++=C2=A0 =C2=A0 memset(&amp;dummy, 0, sizeof(dummy));<br>
+=C2=A0 =C2=A0 =C2=A0epoll_ctl(loop-&gt;backend_fd, EPOLL_CTL_DEL, fd, &amp=
;dummy);<br>
+-=C2=A0 } else {<br>
+-=C2=A0 =C2=A0 uv__epoll_ctl_prep(loop-&gt;backend_fd,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&amp;lfields-&gt;ctl,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0inv-&gt;prep,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0EPOLL_CTL_DEL,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0fd,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&amp;dummy);<br>
+=C2=A0 =C2=A0}<br>
+ }<br>
+ <br>
+@@ -653,454 +298,27 @@ int uv__io_check_fd(uv_loop_t* loop, int fd) {<br>
+ }<br>
+ <br>
+ <br>
+-/* Caller must initialize SQE and call uv__iou_submit(). */<br>
+-static struct uv__io_uring_sqe* uv__iou_get_sqe(struct uv__iou* iou,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 uv_loop_t* loop,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 uv_fs_t* req) {<br>
+-=C2=A0 struct uv__io_uring_sqe* sqe;<br>
+-=C2=A0 uint32_t head;<br>
+-=C2=A0 uint32_t tail;<br>
+-=C2=A0 uint32_t mask;<br>
+-=C2=A0 uint32_t slot;<br>
+-<br>
+-=C2=A0 if (iou-&gt;ringfd =3D=3D -1)<br>
+-=C2=A0 =C2=A0 return NULL;<br>
+-<br>
+-=C2=A0 head =3D atomic_load_explicit((_Atomic uint32_t*) iou-&gt;sqhead,<=
br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 memory_order_acquire);<br>
+-=C2=A0 tail =3D *iou-&gt;sqtail;<br>
+-=C2=A0 mask =3D iou-&gt;sqmask;<br>
+-<br>
+-=C2=A0 if ((head &amp; mask) =3D=3D ((tail + 1) &amp; mask))<br>
+-=C2=A0 =C2=A0 return NULL;=C2=A0 /* No room in ring buffer. TODO(bnoordhu=
is) maybe flush it? */<br>
+-<br>
+-=C2=A0 slot =3D tail &amp; mask;<br>
+-=C2=A0 sqe =3D iou-&gt;sqe;<br>
+-=C2=A0 sqe =3D &amp;sqe[slot];<br>
+-=C2=A0 memset(sqe, 0, sizeof(*sqe));<br>
+-=C2=A0 sqe-&gt;user_data =3D (uintptr_t) req;<br>
+-<br>
+-=C2=A0 /* Pacify uv_cancel(). */<br>
+-=C2=A0 req-&gt;work_req.loop =3D loop;<br>
+-=C2=A0 req-&gt;<a href=3D"http://work_req.work" rel=3D"noreferrer" target=
=3D"_blank">work_req.work</a> =3D NULL;<br>
+-=C2=A0 req-&gt;work_req.done =3D NULL;<br>
+-=C2=A0 QUEUE_INIT(&amp;req-&gt;work_req.wq);<br>
+-<br>
+-=C2=A0 uv__req_register(loop, req);<br>
+-=C2=A0 iou-&gt;in_flight++;<br>
+-<br>
+-=C2=A0 return sqe;<br>
+-}<br>
+-<br>
+-<br>
+-static void uv__iou_submit(struct uv__iou* iou) {<br>
+-=C2=A0 uint32_t flags;<br>
+-<br>
+-=C2=A0 atomic_store_explicit((_Atomic uint32_t*) iou-&gt;sqtail,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 *iou-&gt;sqtail + 1,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 memory_order_release);<br>
+-<br>
+-=C2=A0 flags =3D atomic_load_explicit((_Atomic uint32_t*) iou-&gt;sqflags=
,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0memory_order_acquire);<br>
+-<br>
+-=C2=A0 if (flags &amp; UV__IORING_SQ_NEED_WAKEUP)<br>
+-=C2=A0 =C2=A0 if (uv__io_uring_enter(iou-&gt;ringfd, 0, 0, UV__IORING_ENT=
ER_SQ_WAKEUP))<br>
+-=C2=A0 =C2=A0 =C2=A0 if (errno !=3D EOWNERDEAD)=C2=A0 /* Kernel bug. Harm=
less, ignore. */<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 perror(&quot;libuv: io_uring_enter(wakeup)&qu=
ot;);=C2=A0 /* Can&#39;t happen. */<br>
+-}<br>
+-<br>
+-<br>
+-int uv__iou_fs_close(uv_loop_t* loop, uv_fs_t* req) {<br>
+-=C2=A0 struct uv__io_uring_sqe* sqe;<br>
+-=C2=A0 struct uv__iou* iou;<br>
+-<br>
+-=C2=A0 iou =3D &amp;uv__get_internal_fields(loop)-&gt;iou;<br>
+-<br>
+-=C2=A0 sqe =3D uv__iou_get_sqe(iou, loop, req);<br>
+-=C2=A0 if (sqe =3D=3D NULL)<br>
+-=C2=A0 =C2=A0 return 0;<br>
+-<br>
+-=C2=A0 sqe-&gt;fd =3D req-&gt;file;<br>
+-=C2=A0 sqe-&gt;opcode =3D UV__IORING_OP_CLOSE;<br>
+-<br>
+-=C2=A0 uv__iou_submit(iou);<br>
+-<br>
+-=C2=A0 return 1;<br>
+-}<br>
+-<br>
+-<br>
+-int uv__iou_fs_fsync_or_fdatasync(uv_loop_t* loop,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uv_fs_t* req,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uint32_t fsync_flags) {<br>
+-=C2=A0 struct uv__io_uring_sqe* sqe;<br>
+-=C2=A0 struct uv__iou* iou;<br>
+-<br>
+-=C2=A0 iou =3D &amp;uv__get_internal_fields(loop)-&gt;iou;<br>
+-<br>
+-=C2=A0 sqe =3D uv__iou_get_sqe(iou, loop, req);<br>
+-=C2=A0 if (sqe =3D=3D NULL)<br>
+-=C2=A0 =C2=A0 return 0;<br>
+-<br>
+-=C2=A0 /* Little known fact: setting seq-&gt;off and seq-&gt;len turns<br=
>
+-=C2=A0 =C2=A0* it into an asynchronous sync_file_range() operation.<br>
+-=C2=A0 =C2=A0*/<br>
+-=C2=A0 sqe-&gt;fd =3D req-&gt;file;<br>
+-=C2=A0 sqe-&gt;fsync_flags =3D fsync_flags;<br>
+-=C2=A0 sqe-&gt;opcode =3D UV__IORING_OP_FSYNC;<br>
+-<br>
+-=C2=A0 uv__iou_submit(iou);<br>
+-<br>
+-=C2=A0 return 1;<br>
+-}<br>
+-<br>
+-<br>
+-int uv__iou_fs_open(uv_loop_t* loop, uv_fs_t* req) {<br>
+-=C2=A0 struct uv__io_uring_sqe* sqe;<br>
+-=C2=A0 struct uv__iou* iou;<br>
+-<br>
+-=C2=A0 iou =3D &amp;uv__get_internal_fields(loop)-&gt;iou;<br>
+-<br>
+-=C2=A0 sqe =3D uv__iou_get_sqe(iou, loop, req);<br>
+-=C2=A0 if (sqe =3D=3D NULL)<br>
+-=C2=A0 =C2=A0 return 0;<br>
+-<br>
+-=C2=A0 sqe-&gt;addr =3D (uintptr_t) req-&gt;path;<br>
+-=C2=A0 sqe-&gt;fd =3D AT_FDCWD;<br>
+-=C2=A0 sqe-&gt;len =3D req-&gt;mode;<br>
+-=C2=A0 sqe-&gt;opcode =3D UV__IORING_OP_OPENAT;<br>
+-=C2=A0 sqe-&gt;open_flags =3D req-&gt;flags | O_CLOEXEC;<br>
+-<br>
+-=C2=A0 uv__iou_submit(iou);<br>
+-<br>
+-=C2=A0 return 1;<br>
+-}<br>
+-<br>
+-<br>
+-int uv__iou_fs_read_or_write(uv_loop_t* loop,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uv_fs_t* req,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int is_read) {<br>
+-=C2=A0 struct uv__io_uring_sqe* sqe;<br>
+-=C2=A0 struct uv__iou* iou;<br>
+-<br>
+-=C2=A0 /* For the moment, if iovcnt is greater than IOV_MAX, fallback to =
the<br>
+-=C2=A0 =C2=A0* threadpool. In the future we might take advantage of IOSQE=
_IO_LINK. */<br>
+-=C2=A0 if (req-&gt;nbufs &gt; IOV_MAX)<br>
+-=C2=A0 =C2=A0 return 0;<br>
+-<br>
+-=C2=A0 iou =3D &amp;uv__get_internal_fields(loop)-&gt;iou;<br>
+-<br>
+-=C2=A0 sqe =3D uv__iou_get_sqe(iou, loop, req);<br>
+-=C2=A0 if (sqe =3D=3D NULL)<br>
+-=C2=A0 =C2=A0 return 0;<br>
+-<br>
+-=C2=A0 sqe-&gt;addr =3D (uintptr_t) req-&gt;bufs;<br>
+-=C2=A0 sqe-&gt;fd =3D req-&gt;file;<br>
+-=C2=A0 sqe-&gt;len =3D req-&gt;nbufs;<br>
+-=C2=A0 sqe-&gt;off =3D req-&gt;off &lt; 0 ? -1 : req-&gt;off;<br>
+-=C2=A0 sqe-&gt;opcode =3D is_read ? UV__IORING_OP_READV : UV__IORING_OP_W=
RITEV;<br>
+-<br>
+-=C2=A0 uv__iou_submit(iou);<br>
+-<br>
+-=C2=A0 return 1;<br>
+-}<br>
+-<br>
+-<br>
+-int uv__iou_fs_statx(uv_loop_t* loop,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0uv_fs_t* req,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0int is_fstat,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0int is_lstat) {<br>
+-=C2=A0 struct uv__io_uring_sqe* sqe;<br>
+-=C2=A0 struct uv__statx* statxbuf;<br>
+-=C2=A0 struct uv__iou* iou;<br>
+-<br>
+-=C2=A0 statxbuf =3D uv__malloc(sizeof(*statxbuf));<br>
+-=C2=A0 if (statxbuf =3D=3D NULL)<br>
+-=C2=A0 =C2=A0 return 0;<br>
+-<br>
+-=C2=A0 iou =3D &amp;uv__get_internal_fields(loop)-&gt;iou;<br>
+-<br>
+-=C2=A0 sqe =3D uv__iou_get_sqe(iou, loop, req);<br>
+-=C2=A0 if (sqe =3D=3D NULL) {<br>
+-=C2=A0 =C2=A0 uv__free(statxbuf);<br>
+-=C2=A0 =C2=A0 return 0;<br>
+-=C2=A0 }<br>
+-<br>
+-=C2=A0 req-&gt;ptr =3D statxbuf;<br>
+-<br>
+-=C2=A0 sqe-&gt;addr =3D (uintptr_t) req-&gt;path;<br>
+-=C2=A0 sqe-&gt;addr2 =3D (uintptr_t) statxbuf;<br>
+-=C2=A0 sqe-&gt;fd =3D AT_FDCWD;<br>
+-=C2=A0 sqe-&gt;len =3D 0xFFF; /* STATX_BASIC_STATS + STATX_BTIME */<br>
+-=C2=A0 sqe-&gt;opcode =3D UV__IORING_OP_STATX;<br>
+-<br>
+-=C2=A0 if (is_fstat) {<br>
+-=C2=A0 =C2=A0 sqe-&gt;addr =3D (uintptr_t) &quot;&quot;;<br>
+-=C2=A0 =C2=A0 sqe-&gt;fd =3D req-&gt;file;<br>
+-=C2=A0 =C2=A0 sqe-&gt;statx_flags |=3D 0x1000; /* AT_EMPTY_PATH */<br>
+-=C2=A0 }<br>
+-<br>
+-=C2=A0 if (is_lstat)<br>
+-=C2=A0 =C2=A0 sqe-&gt;statx_flags |=3D AT_SYMLINK_NOFOLLOW;<br>
+-<br>
+-=C2=A0 uv__iou_submit(iou);<br>
+-<br>
+-=C2=A0 return 1;<br>
+-}<br>
+-<br>
+-<br>
+-void uv__statx_to_stat(const struct uv__statx* statxbuf, uv_stat_t* buf) =
{<br>
+-=C2=A0 buf-&gt;st_dev =3D makedev(statxbuf-&gt;stx_dev_major, statxbuf-&g=
t;stx_dev_minor);<br>
+-=C2=A0 buf-&gt;st_mode =3D statxbuf-&gt;stx_mode;<br>
+-=C2=A0 buf-&gt;st_nlink =3D statxbuf-&gt;stx_nlink;<br>
+-=C2=A0 buf-&gt;st_uid =3D statxbuf-&gt;stx_uid;<br>
+-=C2=A0 buf-&gt;st_gid =3D statxbuf-&gt;stx_gid;<br>
+-=C2=A0 buf-&gt;st_rdev =3D makedev(statxbuf-&gt;stx_rdev_major, statxbuf-=
&gt;stx_rdev_minor);<br>
+-=C2=A0 buf-&gt;st_ino =3D statxbuf-&gt;stx_ino;<br>
+-=C2=A0 buf-&gt;st_size =3D statxbuf-&gt;stx_size;<br>
+-=C2=A0 buf-&gt;st_blksize =3D statxbuf-&gt;stx_blksize;<br>
+-=C2=A0 buf-&gt;st_blocks =3D statxbuf-&gt;stx_blocks;<br>
+-=C2=A0 buf-&gt;st_atim.tv_sec =3D statxbuf-&gt;stx_atime.tv_sec;<br>
+-=C2=A0 buf-&gt;st_atim.tv_nsec =3D statxbuf-&gt;stx_atime.tv_nsec;<br>
+-=C2=A0 buf-&gt;st_mtim.tv_sec =3D statxbuf-&gt;stx_mtime.tv_sec;<br>
+-=C2=A0 buf-&gt;st_mtim.tv_nsec =3D statxbuf-&gt;stx_mtime.tv_nsec;<br>
+-=C2=A0 buf-&gt;st_ctim.tv_sec =3D statxbuf-&gt;stx_ctime.tv_sec;<br>
+-=C2=A0 buf-&gt;st_ctim.tv_nsec =3D statxbuf-&gt;stx_ctime.tv_nsec;<br>
+-=C2=A0 buf-&gt;st_birthtim.tv_sec =3D statxbuf-&gt;stx_btime.tv_sec;<br>
+-=C2=A0 buf-&gt;st_birthtim.tv_nsec =3D statxbuf-&gt;stx_btime.tv_nsec;<br=
>
+-=C2=A0 buf-&gt;st_flags =3D 0;<br>
+-=C2=A0 buf-&gt;st_gen =3D 0;<br>
+-}<br>
+-<br>
+-<br>
+-static void uv__iou_fs_statx_post(uv_fs_t* req) {<br>
+-=C2=A0 struct uv__statx* statxbuf;<br>
+-=C2=A0 uv_stat_t* buf;<br>
+-<br>
+-=C2=A0 buf =3D &amp;req-&gt;statbuf;<br>
+-=C2=A0 statxbuf =3D req-&gt;ptr;<br>
+-=C2=A0 req-&gt;ptr =3D NULL;<br>
+-<br>
+-=C2=A0 if (req-&gt;result =3D=3D 0) {<br>
+-=C2=A0 =C2=A0 uv__msan_unpoison(statxbuf, sizeof(*statxbuf));<br>
+-=C2=A0 =C2=A0 uv__statx_to_stat(statxbuf, buf);<br>
+-=C2=A0 =C2=A0 req-&gt;ptr =3D buf;<br>
+-=C2=A0 }<br>
+-<br>
+-=C2=A0 uv__free(statxbuf);<br>
+-}<br>
+-<br>
+-<br>
+-static void uv__poll_io_uring(uv_loop_t* loop, struct uv__iou* iou) {<br>
+-=C2=A0 struct uv__io_uring_cqe* cqe;<br>
+-=C2=A0 struct uv__io_uring_cqe* e;<br>
+-=C2=A0 uv_fs_t* req;<br>
+-=C2=A0 uint32_t head;<br>
+-=C2=A0 uint32_t tail;<br>
+-=C2=A0 uint32_t mask;<br>
+-=C2=A0 uint32_t i;<br>
+-=C2=A0 uint32_t flags;<br>
+-=C2=A0 int nevents;<br>
+-=C2=A0 int rc;<br>
+-<br>
+-=C2=A0 head =3D *iou-&gt;cqhead;<br>
+-=C2=A0 tail =3D atomic_load_explicit((_Atomic uint32_t*) iou-&gt;cqtail,<=
br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 memory_order_acquire);<br>
+-=C2=A0 mask =3D iou-&gt;cqmask;<br>
+-=C2=A0 cqe =3D iou-&gt;cqe;<br>
+-=C2=A0 nevents =3D 0;<br>
+-<br>
+-=C2=A0 for (i =3D head; i !=3D tail; i++) {<br>
+-=C2=A0 =C2=A0 e =3D &amp;cqe[i &amp; mask];<br>
+-<br>
+-=C2=A0 =C2=A0 req =3D (uv_fs_t*) (uintptr_t) e-&gt;user_data;<br>
+-=C2=A0 =C2=A0 assert(req-&gt;type =3D=3D UV_FS);<br>
+-<br>
+-=C2=A0 =C2=A0 uv__req_unregister(loop, req);<br>
+-=C2=A0 =C2=A0 iou-&gt;in_flight--;<br>
+-<br>
+-=C2=A0 =C2=A0 /* io_uring stores error codes as negative numbers, same as=
 libuv. */<br>
+-=C2=A0 =C2=A0 req-&gt;result =3D e-&gt;res;<br>
+-<br>
+-=C2=A0 =C2=A0 switch (req-&gt;fs_type) {<br>
+-=C2=A0 =C2=A0 =C2=A0 case UV_FS_FSTAT:<br>
+-=C2=A0 =C2=A0 =C2=A0 case UV_FS_LSTAT:<br>
+-=C2=A0 =C2=A0 =C2=A0 case UV_FS_STAT:<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 uv__iou_fs_statx_post(req);<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
+-=C2=A0 =C2=A0 =C2=A0 default:=C2=A0 /* Squelch -Wswitch warnings. */<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
+-=C2=A0 =C2=A0 }<br>
+-<br>
+-=C2=A0 =C2=A0 uv__metrics_update_idle_time(loop);<br>
+-=C2=A0 =C2=A0 req-&gt;cb(req);<br>
+-=C2=A0 =C2=A0 nevents++;<br>
+-=C2=A0 }<br>
+-<br>
+-=C2=A0 atomic_store_explicit((_Atomic uint32_t*) iou-&gt;cqhead,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 tail,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 memory_order_release);<br>
+-<br>
+-=C2=A0 /* Check whether CQE&#39;s overflowed, if so enter the kernel to m=
ake them<br>
+-=C2=A0 =C2=A0* available. Don&#39;t grab them immediately but in the next=
 loop iteration to<br>
+-=C2=A0 =C2=A0* avoid loop starvation. */<br>
+-=C2=A0 flags =3D atomic_load_explicit((_Atomic uint32_t*) iou-&gt;sqflags=
,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0memory_order_acquire);<br>
+-<br>
+-=C2=A0 if (flags &amp; UV__IORING_SQ_CQ_OVERFLOW) {<br>
+-=C2=A0 =C2=A0 do<br>
+-=C2=A0 =C2=A0 =C2=A0 rc =3D uv__io_uring_enter(iou-&gt;ringfd, 0, 0, UV__=
IORING_ENTER_GETEVENTS);<br>
+-=C2=A0 =C2=A0 while (rc =3D=3D -1 &amp;&amp; errno =3D=3D EINTR);<br>
+-<br>
+-=C2=A0 =C2=A0 if (rc &lt; 0)<br>
+-=C2=A0 =C2=A0 =C2=A0 perror(&quot;libuv: io_uring_enter(getevents)&quot;)=
;=C2=A0 /* Can&#39;t happen. */<br>
+-=C2=A0 }<br>
+-<br>
+-=C2=A0 uv__metrics_inc_events(loop, nevents);<br>
+-=C2=A0 if (uv__get_internal_fields(loop)-&gt;current_timeout =3D=3D 0)<br=
>
+-=C2=A0 =C2=A0 uv__metrics_inc_events_waiting(loop, nevents);<br>
+-}<br>
+-<br>
+-<br>
+-static void uv__epoll_ctl_prep(int epollfd,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct uv__iou* ctl,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct epoll_event (*events)[256],<br=
>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int op,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int fd,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct epoll_event* e) {<br>
+-=C2=A0 struct uv__io_uring_sqe* sqe;<br>
+-=C2=A0 struct epoll_event* pe;<br>
+-=C2=A0 uint32_t mask;<br>
+-=C2=A0 uint32_t slot;<br>
+-<br>
+-=C2=A0 if (ctl-&gt;ringfd =3D=3D -1) {<br>
+-=C2=A0 =C2=A0 if (!epoll_ctl(epollfd, op, fd, e))<br>
+-=C2=A0 =C2=A0 =C2=A0 return;<br>
+-<br>
+-=C2=A0 =C2=A0 if (op =3D=3D EPOLL_CTL_DEL)<br>
+-=C2=A0 =C2=A0 =C2=A0 return;=C2=A0 /* Ignore errors, may be racing with a=
nother thread. */<br>
+-<br>
+-=C2=A0 =C2=A0 if (op !=3D EPOLL_CTL_ADD)<br>
+-=C2=A0 =C2=A0 =C2=A0 abort();<br>
+-<br>
+-=C2=A0 =C2=A0 if (errno !=3D EEXIST)<br>
+-=C2=A0 =C2=A0 =C2=A0 abort();<br>
+-<br>
+-=C2=A0 =C2=A0 /* File descriptor that&#39;s been watched before, update e=
vent mask. */<br>
+-=C2=A0 =C2=A0 if (!epoll_ctl(epollfd, EPOLL_CTL_MOD, fd, e))<br>
+-=C2=A0 =C2=A0 =C2=A0 return;<br>
+-<br>
+-=C2=A0 =C2=A0 abort();<br>
+-=C2=A0 } else {<br>
+-=C2=A0 =C2=A0 mask =3D ctl-&gt;sqmask;<br>
+-=C2=A0 =C2=A0 slot =3D (*ctl-&gt;sqtail)++ &amp; mask;<br>
+-<br>
+-=C2=A0 =C2=A0 pe =3D &amp;(*events)[slot];<br>
+-=C2=A0 =C2=A0 *pe =3D *e;<br>
+-<br>
+-=C2=A0 =C2=A0 sqe =3D ctl-&gt;sqe;<br>
+-=C2=A0 =C2=A0 sqe =3D &amp;sqe[slot];<br>
+-<br>
+-=C2=A0 =C2=A0 memset(sqe, 0, sizeof(*sqe));<br>
+-=C2=A0 =C2=A0 sqe-&gt;addr =3D (uintptr_t) pe;<br>
+-=C2=A0 =C2=A0 sqe-&gt;fd =3D epollfd;<br>
+-=C2=A0 =C2=A0 sqe-&gt;len =3D op;<br>
+-=C2=A0 =C2=A0 sqe-&gt;off =3D fd;<br>
+-=C2=A0 =C2=A0 sqe-&gt;opcode =3D UV__IORING_OP_EPOLL_CTL;<br>
+-=C2=A0 =C2=A0 sqe-&gt;user_data =3D op | slot &lt;&lt; 2 | (int64_t) fd &=
lt;&lt; 32;<br>
+-<br>
+-=C2=A0 =C2=A0 if ((*ctl-&gt;sqhead &amp; mask) =3D=3D (*ctl-&gt;sqtail &a=
mp; mask))<br>
+-=C2=A0 =C2=A0 =C2=A0 uv__epoll_ctl_flush(epollfd, ctl, events);<br>
+-=C2=A0 }<br>
+-}<br>
+-<br>
+-<br>
+-static void uv__epoll_ctl_flush(int epollfd,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct uv__iou* ctl,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct epoll_event (*events)[256]) {=
<br>
+-=C2=A0 struct epoll_event oldevents[256];<br>
+-=C2=A0 struct uv__io_uring_cqe* cqe;<br>
+-=C2=A0 uint32_t oldslot;<br>
+-=C2=A0 uint32_t slot;<br>
+-=C2=A0 uint32_t n;<br>
+-=C2=A0 int fd;<br>
+-=C2=A0 int op;<br>
+-=C2=A0 int rc;<br>
+-<br>
+-=C2=A0 STATIC_ASSERT(sizeof(oldevents) =3D=3D sizeof(*events));<br>
+-=C2=A0 assert(ctl-&gt;ringfd !=3D -1);<br>
+-=C2=A0 assert(*ctl-&gt;sqhead !=3D *ctl-&gt;sqtail);<br>
+-<br>
+-=C2=A0 n =3D *ctl-&gt;sqtail - *ctl-&gt;sqhead;<br>
+-=C2=A0 do<br>
+-=C2=A0 =C2=A0 rc =3D uv__io_uring_enter(ctl-&gt;ringfd, n, n, UV__IORING_=
ENTER_GETEVENTS);<br>
+-=C2=A0 while (rc =3D=3D -1 &amp;&amp; errno =3D=3D EINTR);<br>
+-<br>
+-=C2=A0 if (rc &lt; 0)<br>
+-=C2=A0 =C2=A0 perror(&quot;libuv: io_uring_enter(getevents)&quot;);=C2=A0=
 /* Can&#39;t happen. */<br>
+-<br>
+-=C2=A0 if (rc !=3D (int) n)<br>
+-=C2=A0 =C2=A0 abort();<br>
+-<br>
+-=C2=A0 assert(*ctl-&gt;sqhead =3D=3D *ctl-&gt;sqtail);<br>
+-<br>
+-=C2=A0 memcpy(oldevents, *events, sizeof(*events));<br>
+-<br>
+-=C2=A0 /* Failed submissions are either EPOLL_CTL_DEL commands for file d=
escriptors<br>
+-=C2=A0 =C2=A0* that have been closed, or EPOLL_CTL_ADD commands for file =
descriptors<br>
+-=C2=A0 =C2=A0* that we are already watching. Ignore the former and retry =
the latter<br>
+-=C2=A0 =C2=A0* with EPOLL_CTL_MOD.<br>
+-=C2=A0 =C2=A0*/<br>
+-=C2=A0 while (*ctl-&gt;cqhead !=3D *ctl-&gt;cqtail) {<br>
+-=C2=A0 =C2=A0 slot =3D (*ctl-&gt;cqhead)++ &amp; ctl-&gt;cqmask;<br>
+-<br>
+-=C2=A0 =C2=A0 cqe =3D ctl-&gt;cqe;<br>
+-=C2=A0 =C2=A0 cqe =3D &amp;cqe[slot];<br>
+-<br>
+-=C2=A0 =C2=A0 if (cqe-&gt;res =3D=3D 0)<br>
+-=C2=A0 =C2=A0 =C2=A0 continue;<br>
+-<br>
+-=C2=A0 =C2=A0 fd =3D cqe-&gt;user_data &gt;&gt; 32;<br>
+-=C2=A0 =C2=A0 op =3D 3 &amp; cqe-&gt;user_data;<br>
+-=C2=A0 =C2=A0 oldslot =3D 255 &amp; (cqe-&gt;user_data &gt;&gt; 2);<br>
+-<br>
+-=C2=A0 =C2=A0 if (op =3D=3D EPOLL_CTL_DEL)<br>
+-=C2=A0 =C2=A0 =C2=A0 continue;<br>
+-<br>
+-=C2=A0 =C2=A0 if (op !=3D EPOLL_CTL_ADD)<br>
+-=C2=A0 =C2=A0 =C2=A0 abort();<br>
+-<br>
+-=C2=A0 =C2=A0 if (cqe-&gt;res !=3D -EEXIST)<br>
+-=C2=A0 =C2=A0 =C2=A0 abort();<br>
+-<br>
+-=C2=A0 =C2=A0 uv__epoll_ctl_prep(epollfd,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0ctl,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0events,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0EPOLL_CTL_MOD,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0fd,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&amp;oldevents[oldslot]);<br>
+-=C2=A0 }<br>
+-}<br>
+-<br>
+-<br>
+ void uv__io_poll(uv_loop_t* loop, int timeout) {<br>
+-=C2=A0 uv__loop_internal_fields_t* lfields;<br>
++=C2=A0 /* A bug in kernels &lt; 2.6.37 makes timeouts larger than ~30 min=
utes<br>
++=C2=A0 =C2=A0* effectively infinite on 32 bits architectures.=C2=A0 To av=
oid blocking<br>
++=C2=A0 =C2=A0* indefinitely, we cap the timeout and poll again if necessa=
ry.<br>
++=C2=A0 =C2=A0*<br>
++=C2=A0 =C2=A0* Note that &quot;30 minutes&quot; is a simplification becau=
se it depends on<br>
++=C2=A0 =C2=A0* the value of CONFIG_HZ.=C2=A0 The magic constant assumes C=
ONFIG_HZ=3D1200,<br>
++=C2=A0 =C2=A0* that being the largest value I have seen in the wild (and =
only once.)<br>
++=C2=A0 =C2=A0*/<br>
++=C2=A0 static const int max_safe_timeout =3D 1789569;<br>
+=C2=A0 =C2=A0struct epoll_event events[1024];<br>
+-=C2=A0 struct epoll_event prep[256];<br>
+-=C2=A0 struct uv__invalidate inv;<br>
+=C2=A0 =C2=A0struct epoll_event* pe;<br>
+=C2=A0 =C2=A0struct epoll_event e;<br>
+-=C2=A0 struct uv__iou* ctl;<br>
+-=C2=A0 struct uv__iou* iou;<br>
+=C2=A0 =C2=A0int real_timeout;<br>
+=C2=A0 =C2=A0QUEUE* q;<br>
+=C2=A0 =C2=A0uv__io_t* w;<br>
+=C2=A0 =C2=A0sigset_t* sigmask;<br>
+=C2=A0 =C2=A0sigset_t sigset;<br>
+=C2=A0 =C2=A0uint64_t base;<br>
+-=C2=A0 int have_iou_events;<br>
+=C2=A0 =C2=A0int have_signals;<br>
+=C2=A0 =C2=A0int nevents;<br>
+-=C2=A0 int epollfd;<br>
+=C2=A0 =C2=A0int count;<br>
+=C2=A0 =C2=A0int nfds;<br>
+=C2=A0 =C2=A0int fd;<br>
+@@ -1109,9 +327,47 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {<br>
+=C2=A0 =C2=A0int user_timeout;<br>
+=C2=A0 =C2=A0int reset_timeout;<br>
+ <br>
+-=C2=A0 lfields =3D uv__get_internal_fields(loop);<br>
+-=C2=A0 ctl =3D &amp;lfields-&gt;ctl;<br>
+-=C2=A0 iou =3D &amp;lfields-&gt;iou;<br>
++=C2=A0 if (loop-&gt;nfds =3D=3D 0) {<br>
++=C2=A0 =C2=A0 assert(QUEUE_EMPTY(&amp;loop-&gt;watcher_queue));<br>
++=C2=A0 =C2=A0 return;<br>
++=C2=A0 }<br>
++<br>
++=C2=A0 memset(&amp;e, 0, sizeof(e));<br>
++<br>
++=C2=A0 while (!QUEUE_EMPTY(&amp;loop-&gt;watcher_queue)) {<br>
++=C2=A0 =C2=A0 q =3D QUEUE_HEAD(&amp;loop-&gt;watcher_queue);<br>
++=C2=A0 =C2=A0 QUEUE_REMOVE(q);<br>
++=C2=A0 =C2=A0 QUEUE_INIT(q);<br>
++<br>
++=C2=A0 =C2=A0 w =3D QUEUE_DATA(q, uv__io_t, watcher_queue);<br>
++=C2=A0 =C2=A0 assert(w-&gt;pevents !=3D 0);<br>
++=C2=A0 =C2=A0 assert(w-&gt;fd &gt;=3D 0);<br>
++=C2=A0 =C2=A0 assert(w-&gt;fd &lt; (int) loop-&gt;nwatchers);<br>
++<br>
++=C2=A0 =C2=A0 e.events =3D w-&gt;pevents;<br>
++=C2=A0 =C2=A0 e.data.fd =3D w-&gt;fd;<br>
++<br>
++=C2=A0 =C2=A0 if (w-&gt;events =3D=3D 0)<br>
++=C2=A0 =C2=A0 =C2=A0 op =3D EPOLL_CTL_ADD;<br>
++=C2=A0 =C2=A0 else<br>
++=C2=A0 =C2=A0 =C2=A0 op =3D EPOLL_CTL_MOD;<br>
++<br>
++=C2=A0 =C2=A0 /* XXX Future optimization: do EPOLL_CTL_MOD lazily if we s=
top watching<br>
++=C2=A0 =C2=A0 =C2=A0* events, skip the syscall and squelch the events aft=
er epoll_wait().<br>
++=C2=A0 =C2=A0 =C2=A0*/<br>
++=C2=A0 =C2=A0 if (epoll_ctl(loop-&gt;backend_fd, op, w-&gt;fd, &amp;e)) {=
<br>
++=C2=A0 =C2=A0 =C2=A0 if (errno !=3D EEXIST)<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 abort();<br>
++<br>
++=C2=A0 =C2=A0 =C2=A0 assert(op =3D=3D EPOLL_CTL_ADD);<br>
++<br>
++=C2=A0 =C2=A0 =C2=A0 /* We&#39;ve reactivated a file descriptor that&#39;=
s been watched before. */<br>
++=C2=A0 =C2=A0 =C2=A0 if (epoll_ctl(loop-&gt;backend_fd, EPOLL_CTL_MOD, w-=
&gt;fd, &amp;e))<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 abort();<br>
++=C2=A0 =C2=A0 }<br>
++<br>
++=C2=A0 =C2=A0 w-&gt;events =3D w-&gt;pevents;<br>
++=C2=A0 }<br>
+ <br>
+=C2=A0 =C2=A0sigmask =3D NULL;<br>
+=C2=A0 =C2=A0if (loop-&gt;flags &amp; UV_LOOP_BLOCK_SIGPROF) {<br>
+@@ -1125,7 +381,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {<br>
+=C2=A0 =C2=A0count =3D 48; /* Benchmarks suggest this gives the best throu=
ghput. */<br>
+=C2=A0 =C2=A0real_timeout =3D timeout;<br>
+ <br>
+-=C2=A0 if (lfields-&gt;flags &amp; UV_METRICS_IDLE_TIME) {<br>
++=C2=A0 if (uv__get_internal_fields(loop)-&gt;flags &amp; UV_METRICS_IDLE_=
TIME) {<br>
+=C2=A0 =C2=A0 =C2=A0reset_timeout =3D 1;<br>
+=C2=A0 =C2=A0 =C2=A0user_timeout =3D timeout;<br>
+=C2=A0 =C2=A0 =C2=A0timeout =3D 0;<br>
+@@ -1134,56 +390,24 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {<br=
>
+=C2=A0 =C2=A0 =C2=A0user_timeout =3D 0;<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+-=C2=A0 epollfd =3D loop-&gt;backend_fd;<br>
+-<br>
+-=C2=A0 memset(&amp;e, 0, sizeof(e));<br>
+-<br>
+-=C2=A0 while (!QUEUE_EMPTY(&amp;loop-&gt;watcher_queue)) {<br>
+-=C2=A0 =C2=A0 q =3D QUEUE_HEAD(&amp;loop-&gt;watcher_queue);<br>
+-=C2=A0 =C2=A0 w =3D QUEUE_DATA(q, uv__io_t, watcher_queue);<br>
+-=C2=A0 =C2=A0 QUEUE_REMOVE(q);<br>
+-=C2=A0 =C2=A0 QUEUE_INIT(q);<br>
+-<br>
+-=C2=A0 =C2=A0 op =3D EPOLL_CTL_MOD;<br>
+-=C2=A0 =C2=A0 if (w-&gt;events =3D=3D 0)<br>
+-=C2=A0 =C2=A0 =C2=A0 op =3D EPOLL_CTL_ADD;<br>
+-<br>
+-=C2=A0 =C2=A0 w-&gt;events =3D w-&gt;pevents;<br>
+-=C2=A0 =C2=A0 e.events =3D w-&gt;pevents;<br>
+-=C2=A0 =C2=A0 e.data.fd =3D w-&gt;fd;<br>
+-<br>
+-=C2=A0 =C2=A0 uv__epoll_ctl_prep(epollfd, ctl, &amp;prep, op, w-&gt;fd, &=
amp;e);<br>
+-=C2=A0 }<br>
+-<br>
+-=C2=A0 inv.events =3D events;<br>
+-=C2=A0 inv.prep =3D &amp;prep;<br>
+-=C2=A0 inv.nfds =3D -1;<br>
+-<br>
+=C2=A0 =C2=A0for (;;) {<br>
+-=C2=A0 =C2=A0 if (loop-&gt;nfds =3D=3D 0)<br>
+-=C2=A0 =C2=A0 =C2=A0 if (iou-&gt;in_flight =3D=3D 0)<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
+-<br>
+-=C2=A0 =C2=A0 /* All event mask mutations should be visible to the kernel=
 before<br>
+-=C2=A0 =C2=A0 =C2=A0* we enter epoll_pwait().<br>
+-=C2=A0 =C2=A0 =C2=A0*/<br>
+-=C2=A0 =C2=A0 if (ctl-&gt;ringfd !=3D -1)<br>
+-=C2=A0 =C2=A0 =C2=A0 while (*ctl-&gt;sqhead !=3D *ctl-&gt;sqtail)<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 uv__epoll_ctl_flush(epollfd, ctl, &amp;prep);=
<br>
+-<br>
+=C2=A0 =C2=A0 =C2=A0/* Only need to set the provider_entry_time if timeout=
 !=3D 0. The function<br>
+=C2=A0 =C2=A0 =C2=A0 * will return early if the loop isn&#39;t configured =
with UV_METRICS_IDLE_TIME.<br>
+=C2=A0 =C2=A0 =C2=A0 */<br>
+=C2=A0 =C2=A0 =C2=A0if (timeout !=3D 0)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0uv__metrics_set_provider_entry_time(loop);<br>
+ <br>
+-=C2=A0 =C2=A0 /* Store the current timeout in a location that&#39;s globa=
lly accessible so<br>
+-=C2=A0 =C2=A0 =C2=A0* other locations like uv__work_done() can determine =
whether the queue<br>
+-=C2=A0 =C2=A0 =C2=A0* of events in the callback were waiting when poll wa=
s called.<br>
++=C2=A0 =C2=A0 /* See the comment for max_safe_timeout for an explanation =
of why<br>
++=C2=A0 =C2=A0 =C2=A0* this is necessary.=C2=A0 Executive summary: kernel =
bug workaround.<br>
+=C2=A0 =C2=A0 =C2=A0 */<br>
+-=C2=A0 =C2=A0 lfields-&gt;current_timeout =3D timeout;<br>
++=C2=A0 =C2=A0 if (sizeof(int32_t) =3D=3D sizeof(long) &amp;&amp; timeout =
&gt;=3D max_safe_timeout)<br>
++=C2=A0 =C2=A0 =C2=A0 timeout =3D max_safe_timeout;<br>
+ <br>
+-=C2=A0 =C2=A0 nfds =3D epoll_pwait(epollfd, events, ARRAY_SIZE(events), t=
imeout, sigmask);<br>
++=C2=A0 =C2=A0 nfds =3D epoll_pwait(loop-&gt;backend_fd,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0events,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0ARRAY_SIZE(events),<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0timeout,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0sigmask);<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0/* Update loop-&gt;time unconditionally. It&#39;s temp=
ting to skip the update when<br>
+=C2=A0 =C2=A0 =C2=A0 * timeout =3D=3D 0 (i.e. non-blocking poll) but there=
 is no guarantee that the<br>
+@@ -1203,7 +427,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0continue;<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (timeout =3D=3D 0)<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 return;<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/* We may have been inside the system call for =
longer than |timeout|<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * milliseconds so we need to update the timest=
amp to avoid drift.<br>
+@@ -1224,18 +448,27 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0continue;<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (timeout =3D=3D 0)<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 return;<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Interrupted by a signal. Update timeout and =
poll again. */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0goto update_timeout;<br>
+=C2=A0 =C2=A0 =C2=A0}<br>
+ <br>
+-=C2=A0 =C2=A0 have_iou_events =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0have_signals =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0nevents =3D 0;<br>
+ <br>
+-=C2=A0 =C2=A0 inv.nfds =3D nfds;<br>
+-=C2=A0 =C2=A0 lfields-&gt;inv =3D &amp;inv;<br>
++=C2=A0 =C2=A0 {<br>
++=C2=A0 =C2=A0 =C2=A0 /* Squelch a -Waddress-of-packed-member warning with=
 gcc &gt;=3D 9. */<br>
++=C2=A0 =C2=A0 =C2=A0 union {<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct epoll_event* events;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 uv__io_t* watchers;<br>
++=C2=A0 =C2=A0 =C2=A0 } x;<br>
++<br>
++=C2=A0 =C2=A0 =C2=A0 x.events =3D events;<br>
++=C2=A0 =C2=A0 =C2=A0 assert(loop-&gt;watchers !=3D NULL);<br>
++=C2=A0 =C2=A0 =C2=A0 loop-&gt;watchers[loop-&gt;nwatchers] =3D x.watchers=
;<br>
++=C2=A0 =C2=A0 =C2=A0 loop-&gt;watchers[loop-&gt;nwatchers + 1] =3D (void*=
) (uintptr_t) nfds;<br>
++=C2=A0 =C2=A0 }<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0for (i =3D 0; i &lt; nfds; i++) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0pe =3D events + i;<br>
+@@ -1245,12 +478,6 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (fd =3D=3D -1)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0continue;<br>
+ <br>
+-=C2=A0 =C2=A0 =C2=A0 if (fd =3D=3D iou-&gt;ringfd) {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 uv__poll_io_uring(loop, iou);<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 have_iou_events =3D 1;<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 continue;<br>
+-=C2=A0 =C2=A0 =C2=A0 }<br>
+-<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0assert(fd &gt;=3D 0);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0assert((unsigned) fd &lt; loop-&gt;nwatchers);<=
br>
+ <br>
+@@ -1262,7 +489,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * Ignore all errors because we may be r=
acing with another thread<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * when the file descriptor is closed.<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 uv__epoll_ctl_prep(epollfd, ctl, &amp;prep, E=
POLL_CTL_DEL, fd, pe);<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 epoll_ctl(loop-&gt;backend_fd, EPOLL_CTL_DEL,=
 fd, pe);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0continue;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+ <br>
+@@ -1319,13 +546,11 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0loop-&gt;signal_io_watcher.cb(loop, &amp;loop-&=
gt;signal_io_watcher, POLLIN);<br>
+=C2=A0 =C2=A0 =C2=A0}<br>
+ <br>
+-=C2=A0 =C2=A0 lfields-&gt;inv =3D NULL;<br>
+-<br>
+-=C2=A0 =C2=A0 if (have_iou_events !=3D 0)<br>
+-=C2=A0 =C2=A0 =C2=A0 break;=C2=A0 /* Event loop should cycle now so don&#=
39;t poll again. */<br>
++=C2=A0 =C2=A0 loop-&gt;watchers[loop-&gt;nwatchers] =3D NULL;<br>
++=C2=A0 =C2=A0 loop-&gt;watchers[loop-&gt;nwatchers + 1] =3D NULL;<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0if (have_signals !=3D 0)<br>
+-=C2=A0 =C2=A0 =C2=A0 break;=C2=A0 /* Event loop should cycle now so don&#=
39;t poll again. */<br>
++=C2=A0 =C2=A0 =C2=A0 return;=C2=A0 /* Event loop should cycle now so don&=
#39;t poll again. */<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0if (nevents !=3D 0) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (nfds =3D=3D ARRAY_SIZE(events) &amp;&amp; -=
-count !=3D 0) {<br>
+@@ -1333,11 +558,11 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0timeout =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0continue;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+-=C2=A0 =C2=A0 =C2=A0 break;<br>
++=C2=A0 =C2=A0 =C2=A0 return;<br>
+=C2=A0 =C2=A0 =C2=A0}<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0if (timeout =3D=3D 0)<br>
+-=C2=A0 =C2=A0 =C2=A0 break;<br>
++=C2=A0 =C2=A0 =C2=A0 return;<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0if (timeout =3D=3D -1)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0continue;<br>
+@@ -1347,14 +572,10 @@ update_timeout:<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0real_timeout -=3D (loop-&gt;time - base);<br>
+=C2=A0 =C2=A0 =C2=A0if (real_timeout &lt;=3D 0)<br>
+-=C2=A0 =C2=A0 =C2=A0 break;<br>
++=C2=A0 =C2=A0 =C2=A0 return;<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0timeout =3D real_timeout;<br>
+=C2=A0 =C2=A0}<br>
+-<br>
+-=C2=A0 if (ctl-&gt;ringfd !=3D -1)<br>
+-=C2=A0 =C2=A0 while (*ctl-&gt;sqhead !=3D *ctl-&gt;sqtail)<br>
+-=C2=A0 =C2=A0 =C2=A0 uv__epoll_ctl_flush(epollfd, ctl, &amp;prep);<br>
+ }<br>
+ <br>
+ uint64_t uv__hrtime(uv_clocktype_t type) {<br>
+@@ -1867,7 +1088,7 @@ static uint64_t uv__read_uint64(const char* filename=
) {<br>
+=C2=A0 =C2=A0if (0 =3D=3D uv__slurp(filename, buf, sizeof(buf)))<br>
+=C2=A0 =C2=A0 =C2=A0if (1 !=3D sscanf(buf, &quot;%&quot; PRIu64, &amp;rc))=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (0 =3D=3D strcmp(buf, &quot;max\n&quot;))<br=
>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 rc =3D UINT64_MAX;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 rc =3D ~0ull;<br>
+ <br>
+=C2=A0 =C2=A0return rc;<br>
+ }<br>
+@@ -1903,7 +1124,6 @@ static void uv__get_cgroup1_memory_limits(char buf[s=
tatic 1024], uint64_t* high,<br>
+=C2=A0 =C2=A0char filename[4097];<br>
+=C2=A0 =C2=A0char* p;<br>
+=C2=A0 =C2=A0int n;<br>
+-=C2=A0 uint64_t cgroup1_max;<br>
+ <br>
+=C2=A0 =C2=A0/* Find out where the controller is mounted. */<br>
+=C2=A0 =C2=A0p =3D uv__cgroup1_find_memory_controller(buf, &amp;n);<br>
+@@ -1920,22 +1140,12 @@ static void uv__get_cgroup1_memory_limits(char buf=
[static 1024], uint64_t* high,<br>
+=C2=A0 =C2=A0 =C2=A0 * as indicated by uv__read_uint64 returning 0.<br>
+=C2=A0 =C2=A0 =C2=A0 */<br>
+=C2=A0 =C2=A0 =C2=A0 if (*high !=3D 0 &amp;&amp; *max !=3D 0)<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0goto update_limits;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+=C2=A0 =C2=A0/* Fall back to the limits of the global memory controller. *=
/<br>
+=C2=A0 =C2=A0*high =3D uv__read_uint64(&quot;/sys/fs/cgroup/memory/memory.=
soft_limit_in_bytes&quot;);<br>
+=C2=A0 =C2=A0*max =3D uv__read_uint64(&quot;/sys/fs/cgroup/memory/memory.l=
imit_in_bytes&quot;);<br>
+-<br>
+-=C2=A0 /* uv__read_uint64 detects cgroup2&#39;s &quot;max&quot;, so we ne=
ed to separately detect<br>
+-=C2=A0 =C2=A0* cgroup1&#39;s maximum value (which is derived from LONG_MA=
X and PAGE_SIZE).<br>
+-=C2=A0 =C2=A0*/<br>
+-update_limits:<br>
+-=C2=A0 cgroup1_max =3D LONG_MAX &amp; ~(sysconf(_SC_PAGESIZE) - 1);<br>
+-=C2=A0 if (*high =3D=3D cgroup1_max)<br>
+-=C2=A0 =C2=A0 *high =3D UINT64_MAX;<br>
+-=C2=A0 if (*max =3D=3D cgroup1_max)<br>
+-=C2=A0 =C2=A0 *max =3D UINT64_MAX;<br>
+ }<br>
+ <br>
+ static void uv__get_cgroup2_memory_limits(char buf[static 1024], uint64_t=
* high,<br>
+diff --git a/deps/uv/src/unix/os390.c b/deps/uv/src/unix/os390.c<br>
+index a87c2d77faf..3954b2c2753 100644<br>
+--- a/deps/uv/src/unix/os390.c<br>
++++ b/deps/uv/src/unix/os390.c<br>
+@@ -808,7 +808,6 @@ static int os390_message_queue_handler(uv__os390_epoll=
* ep) {<br>
+ <br>
+ void uv__io_poll(uv_loop_t* loop, int timeout) {<br>
+=C2=A0 =C2=A0static const int max_safe_timeout =3D 1789569;<br>
+-=C2=A0 uv__loop_internal_fields_t* lfields;<br>
+=C2=A0 =C2=A0struct epoll_event events[1024];<br>
+=C2=A0 =C2=A0struct epoll_event* pe;<br>
+=C2=A0 =C2=A0struct epoll_event e;<br>
+@@ -831,8 +830,6 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {<br>
+=C2=A0 =C2=A0 =C2=A0return;<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+-=C2=A0 lfields =3D uv__get_internal_fields(loop);<br>
+-<br>
+=C2=A0 =C2=A0while (!QUEUE_EMPTY(&amp;loop-&gt;watcher_queue)) {<br>
+=C2=A0 =C2=A0 =C2=A0uv_stream_t* stream;<br>
+ <br>
+@@ -880,7 +877,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {<br>
+=C2=A0 =C2=A0int nevents =3D 0;<br>
+=C2=A0 =C2=A0have_signals =3D 0;<br>
+ <br>
+-=C2=A0 if (lfields-&gt;flags &amp; UV_METRICS_IDLE_TIME) {<br>
++=C2=A0 if (uv__get_internal_fields(loop)-&gt;flags &amp; UV_METRICS_IDLE_=
TIME) {<br>
+=C2=A0 =C2=A0 =C2=A0reset_timeout =3D 1;<br>
+=C2=A0 =C2=A0 =C2=A0user_timeout =3D timeout;<br>
+=C2=A0 =C2=A0 =C2=A0timeout =3D 0;<br>
+@@ -899,12 +896,6 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {<br>
+=C2=A0 =C2=A0 =C2=A0if (sizeof(int32_t) =3D=3D sizeof(long) &amp;&amp; tim=
eout &gt;=3D max_safe_timeout)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0timeout =3D max_safe_timeout;<br>
+ <br>
+-=C2=A0 =C2=A0 /* Store the current timeout in a location that&#39;s globa=
lly accessible so<br>
+-=C2=A0 =C2=A0 =C2=A0* other locations like uv__work_done() can determine =
whether the queue<br>
+-=C2=A0 =C2=A0 =C2=A0* of events in the callback were waiting when poll wa=
s called.<br>
+-=C2=A0 =C2=A0 =C2=A0*/<br>
+-=C2=A0 =C2=A0 lfields-&gt;current_timeout =3D timeout;<br>
+-<br>
+=C2=A0 =C2=A0 =C2=A0nfds =3D epoll_wait(loop-&gt;ep, events,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0ARRAY_SIZE(events), timeout);<br>
+ <br>
+diff --git a/deps/uv/src/unix/posix-poll.c b/deps/uv/src/unix/posix-poll.c=
<br>
+index 7e7de86845d..711780ece8d 100644<br>
+--- a/deps/uv/src/unix/posix-poll.c<br>
++++ b/deps/uv/src/unix/posix-poll.c<br>
+@@ -132,7 +132,6 @@ static void uv__pollfds_del(uv_loop_t* loop, int fd) {=
<br>
+ <br>
+ <br>
+ void uv__io_poll(uv_loop_t* loop, int timeout) {<br>
+-=C2=A0 uv__loop_internal_fields_t* lfields;<br>
+=C2=A0 =C2=A0sigset_t* pset;<br>
+=C2=A0 =C2=A0sigset_t set;<br>
+=C2=A0 =C2=A0uint64_t time_base;<br>
+@@ -153,8 +152,6 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {<br>
+=C2=A0 =C2=A0 =C2=A0return;<br>
+=C2=A0 =C2=A0}<br>
+ <br>
+-=C2=A0 lfields =3D uv__get_internal_fields(loop);<br>
+-<br>
+=C2=A0 =C2=A0/* Take queued watchers and add their fds to our poll fds arr=
ay.=C2=A0 */<br>
+=C2=A0 =C2=A0while (!QUEUE_EMPTY(&amp;loop-&gt;watcher_queue)) {<br>
+=C2=A0 =C2=A0 =C2=A0q =3D QUEUE_HEAD(&amp;loop-&gt;watcher_queue);<br>
+@@ -182,7 +179,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {<br>
+=C2=A0 =C2=A0assert(timeout &gt;=3D -1);<br>
+=C2=A0 =C2=A0time_base =3D loop-&gt;time;<br>
+ <br>
+-=C2=A0 if (lfields-&gt;flags &amp; UV_METRICS_IDLE_TIME) {<br>
++=C2=A0 if (uv__get_internal_fields(loop)-&gt;flags &amp; UV_METRICS_IDLE_=
TIME) {<br>
+=C2=A0 =C2=A0 =C2=A0reset_timeout =3D 1;<br>
+=C2=A0 =C2=A0 =C2=A0user_timeout =3D timeout;<br>
+=C2=A0 =C2=A0 =C2=A0timeout =3D 0;<br>
+@@ -201,12 +198,6 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {<br>
+=C2=A0 =C2=A0 =C2=A0if (timeout !=3D 0)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0uv__metrics_set_provider_entry_time(loop);<br>
+ <br>
+-=C2=A0 =C2=A0 /* Store the current timeout in a location that&#39;s globa=
lly accessible so<br>
+-=C2=A0 =C2=A0 =C2=A0* other locations like uv__work_done() can determine =
whether the queue<br>
+-=C2=A0 =C2=A0 =C2=A0* of events in the callback were waiting when poll wa=
s called.<br>
+-=C2=A0 =C2=A0 =C2=A0*/<br>
+-=C2=A0 =C2=A0 lfields-&gt;current_timeout =3D timeout;<br>
+-<br>
+=C2=A0 =C2=A0 =C2=A0if (pset !=3D NULL)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (pthread_sigmask(SIG_BLOCK, pset, NULL))<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0abort();<br>
+diff --git a/deps/uv/src/uv-common.h b/deps/uv/src/uv-common.h<br>
+index decde5362c8..2720121addc 100644<br>
+--- a/deps/uv/src/uv-common.h<br>
++++ b/deps/uv/src/uv-common.h<br>
+@@ -396,37 +396,9 @@ struct uv__loop_metrics_s {<br>
+ void uv__metrics_update_idle_time(uv_loop_t* loop);<br>
+ void uv__metrics_set_provider_entry_time(uv_loop_t* loop);<br>
+ <br>
+-#ifdef __linux__<br>
+-struct uv__iou {<br>
+-=C2=A0 uint32_t* sqhead;<br>
+-=C2=A0 uint32_t* sqtail;<br>
+-=C2=A0 uint32_t* sqarray;<br>
+-=C2=A0 uint32_t sqmask;<br>
+-=C2=A0 uint32_t* sqflags;<br>
+-=C2=A0 uint32_t* cqhead;<br>
+-=C2=A0 uint32_t* cqtail;<br>
+-=C2=A0 uint32_t cqmask;<br>
+-=C2=A0 void* sq;=C2=A0 =C2=A0/* pointer to munmap() on event loop teardow=
n */<br>
+-=C2=A0 void* cqe;=C2=A0 /* pointer to array of struct uv__io_uring_cqe */=
<br>
+-=C2=A0 void* sqe;=C2=A0 /* pointer to array of struct uv__io_uring_sqe */=
<br>
+-=C2=A0 size_t sqlen;<br>
+-=C2=A0 size_t cqlen;<br>
+-=C2=A0 size_t maxlen;<br>
+-=C2=A0 size_t sqelen;<br>
+-=C2=A0 int ringfd;<br>
+-=C2=A0 uint32_t in_flight;<br>
+-};<br>
+-#endif=C2=A0 /* __linux__ */<br>
+-<br>
+ struct uv__loop_internal_fields_s {<br>
+=C2=A0 =C2=A0unsigned int flags;<br>
+=C2=A0 =C2=A0uv__loop_metrics_t loop_metrics;<br>
+-=C2=A0 int current_timeout;<br>
+-#ifdef __linux__<br>
+-=C2=A0 struct uv__iou ctl;<br>
+-=C2=A0 struct uv__iou iou;<br>
+-=C2=A0 void* inv;=C2=A0 /* used by uv__platform_invalidate_fd() */<br>
+-#endif=C2=A0 /* __linux__ */<br>
+ };<br>
+ <br>
+ #endif /* UV_COMMON_H_ */<br>
+diff --git a/deps/uv/src/win/core.c b/deps/uv/src/win/core.c<br>
+index 9a3be58849a..e4041ec86a6 100644<br>
+--- a/deps/uv/src/win/core.c<br>
++++ b/deps/uv/src/win/core.c<br>
+@@ -424,7 +424,6 @@ int uv_backend_timeout(const uv_loop_t* loop) {<br>
+ <br>
+ <br>
+ static void uv__poll_wine(uv_loop_t* loop, DWORD timeout) {<br>
+-=C2=A0 uv__loop_internal_fields_t* lfields;<br>
+=C2=A0 =C2=A0DWORD bytes;<br>
+=C2=A0 =C2=A0ULONG_PTR key;<br>
+=C2=A0 =C2=A0OVERLAPPED* overlapped;<br>
+@@ -434,10 +433,9 @@ static void uv__poll_wine(uv_loop_t* loop, DWORD time=
out) {<br>
+=C2=A0 =C2=A0uint64_t user_timeout;<br>
+=C2=A0 =C2=A0int reset_timeout;<br>
+ <br>
+-=C2=A0 lfields =3D uv__get_internal_fields(loop);<br>
+=C2=A0 =C2=A0timeout_time =3D loop-&gt;time + timeout;<br>
+ <br>
+-=C2=A0 if (lfields-&gt;flags &amp; UV_METRICS_IDLE_TIME) {<br>
++=C2=A0 if (uv__get_internal_fields(loop)-&gt;flags &amp; UV_METRICS_IDLE_=
TIME) {<br>
+=C2=A0 =C2=A0 =C2=A0reset_timeout =3D 1;<br>
+=C2=A0 =C2=A0 =C2=A0user_timeout =3D timeout;<br>
+=C2=A0 =C2=A0 =C2=A0timeout =3D 0;<br>
+@@ -452,12 +450,6 @@ static void uv__poll_wine(uv_loop_t* loop, DWORD time=
out) {<br>
+=C2=A0 =C2=A0 =C2=A0if (timeout !=3D 0)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0uv__metrics_set_provider_entry_time(loop);<br>
+ <br>
+-=C2=A0 =C2=A0 /* Store the current timeout in a location that&#39;s globa=
lly accessible so<br>
+-=C2=A0 =C2=A0 =C2=A0* other locations like uv__work_done() can determine =
whether the queue<br>
+-=C2=A0 =C2=A0 =C2=A0* of events in the callback were waiting when poll wa=
s called.<br>
+-=C2=A0 =C2=A0 =C2=A0*/<br>
+-=C2=A0 =C2=A0 lfields-&gt;current_timeout =3D timeout;<br>
+-<br>
+=C2=A0 =C2=A0 =C2=A0GetQueuedCompletionStatus(loop-&gt;iocp,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&amp;bytes,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&amp;key,<br>
+@@ -515,7 +507,6 @@ static void uv__poll_wine(uv_loop_t* loop, DWORD timeo=
ut) {<br>
+ <br>
+ <br>
+ static void uv__poll(uv_loop_t* loop, DWORD timeout) {<br>
+-=C2=A0 uv__loop_internal_fields_t* lfields;<br>
+=C2=A0 =C2=A0BOOL success;<br>
+=C2=A0 =C2=A0uv_req_t* req;<br>
+=C2=A0 =C2=A0OVERLAPPED_ENTRY overlappeds[128];<br>
+@@ -527,10 +518,9 @@ static void uv__poll(uv_loop_t* loop, DWORD timeout) =
{<br>
+=C2=A0 =C2=A0uint64_t actual_timeout;<br>
+=C2=A0 =C2=A0int reset_timeout;<br>
+ <br>
+-=C2=A0 lfields =3D uv__get_internal_fields(loop);<br>
+=C2=A0 =C2=A0timeout_time =3D loop-&gt;time + timeout;<br>
+ <br>
+-=C2=A0 if (lfields-&gt;flags &amp; UV_METRICS_IDLE_TIME) {<br>
++=C2=A0 if (uv__get_internal_fields(loop)-&gt;flags &amp; UV_METRICS_IDLE_=
TIME) {<br>
+=C2=A0 =C2=A0 =C2=A0reset_timeout =3D 1;<br>
+=C2=A0 =C2=A0 =C2=A0user_timeout =3D timeout;<br>
+=C2=A0 =C2=A0 =C2=A0timeout =3D 0;<br>
+@@ -547,12 +537,6 @@ static void uv__poll(uv_loop_t* loop, DWORD timeout) =
{<br>
+=C2=A0 =C2=A0 =C2=A0if (timeout !=3D 0)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0uv__metrics_set_provider_entry_time(loop);<br>
+ <br>
+-=C2=A0 =C2=A0 /* Store the current timeout in a location that&#39;s globa=
lly accessible so<br>
+-=C2=A0 =C2=A0 =C2=A0* other locations like uv__work_done() can determine =
whether the queue<br>
+-=C2=A0 =C2=A0 =C2=A0* of events in the callback were waiting when poll wa=
s called.<br>
+-=C2=A0 =C2=A0 =C2=A0*/<br>
+-=C2=A0 =C2=A0 lfields-&gt;current_timeout =3D timeout;<br>
+-<br>
+=C2=A0 =C2=A0 =C2=A0success =3D pGetQueuedCompletionStatusEx(loop-&gt;iocp=
,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 overlappeds,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ARRAY_SIZE(overlappeds),<br>
diff --git a/recipes-devtools/nodejs/nodejs-20.8.1/0004-v8-don-t-override-A=
RM-CFLAGS.patch b/recipes-devtools/nodejs/nodejs-20.8.1/0004-v8-don-t-overr=
ide-ARM-CFLAGS.patch<br>
new file mode 100644<br>
index 0000000..97ed972<br>
--- /dev/null<br>
+++ b/recipes-devtools/nodejs/nodejs-20.8.1/0004-v8-don-t-override-ARM-CFLA=
GS.patch<br>
@@ -0,0 +1,102 @@<br>
+From 47ee5cc5501289205d3e8e9f27ea9daf18cebac1 Mon Sep 17 00:00:00 2001<br>
+From: =3D?UTF-8?q?Andr=3DC3=3DA9=3D20Draszik?=3D &lt;<a href=3D"mailto:git=
@andred.net" target=3D"_blank">git@andred.net</a>&gt;<br>
+Date: Sat, 9 Nov 2019 14:45:30 +0000<br>
+Subject: [PATCH] v8: don&#39;t override ARM CFLAGS<br>
+MIME-Version: 1.0<br>
+Content-Type: text/plain; charset=3DUTF-8<br>
+Content-Transfer-Encoding: 8bit<br>
+<br>
+This overrides yocto-provided build flags with its own, e.g we get<br>
+=C2=A0 =C2=A0 arm-poky-linux-musleabi-g++=C2=A0 -mthumb -mfpu=3Dneon -mflo=
at-abi=3Dhard -mcpu=3Dcortex-a7 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0... \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -march=3Darmv7-a -mfpu=3Dneon=
 -mfloat-abi=3Dhard -marm<br>
+<br>
+Causing the latter to override the former, and compiler warnings:<br>
+=C2=A0 =C2=A0 cc1plus: warning: switch &#39;-mcpu=3Dcortex-a7&#39; conflic=
ts with &#39;-march=3Darmv7-a&#39; switch<br>
+<br>
+Patch this out, so that yocto-provided flags take precedence.<br>
+Note that in reality the same should probably be done for all the other<br=
>
+supported architectures, too.<br>
+<br>
+Note that this also switches to Thumb(2) mode (in my case). No obvious<br>
+problems have been noted during compilation or runtime.<br>
+<br>
+Upstream-Status: Inappropriate [oe-specific]<br>
+Signed-off-by: Andr=C3=A9 Draszik &lt;<a href=3D"mailto:git@andred.net" ta=
rget=3D"_blank">git@andred.net</a>&gt;<br>
+---<br>
+ tools/v8_gypfiles/toolchain.gypi | 52 ++------------------------------<br=
>
+ 1 file changed, 2 insertions(+), 50 deletions(-)<br>
+<br>
+diff --git a/tools/v8_gypfiles/toolchain.gypi b/tools/v8_gypfiles/toolchai=
n.gypi<br>
+index 264b3e478e..0b41848145 100644<br>
+--- a/tools/v8_gypfiles/toolchain.gypi<br>
++++ b/tools/v8_gypfiles/toolchain.gypi<br>
+@@ -211,31 +211,7 @@<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;target_conditions&#39;: [<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[&#39;_toolset=3D=3D&quot;host&qu=
ot;&#39;, {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;conditions&#39;: [<br=
>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [&#39;v8_target_arch=3D=
=3Dhost_arch&#39;, {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Host built with=
 an Arm CXX compiler.<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;conditions&#=
39;: [<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [ &#39;arm=
_version=3D=3D7&#39;, {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#3=
9;cflags&#39;: [&#39;-march=3Darmv7-a&#39;,],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [ &#39;arm=
_version=3D=3D7 or arm_version=3D=3D&quot;default&quot;&#39;, {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#3=
9;conditions&#39;: [<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 [ &#39;arm_fpu!=3D&quot;default&quot;&#39;, {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &#39;cflags&#39;: [&#39;-mfpu=3D&lt;(arm_fpu)&#39;,],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 }],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ],<=
br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [ &#39;arm=
_float_abi!=3D&quot;default&quot;&#39;, {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#3=
9;cflags&#39;: [&#39;-mfloat-abi=3D&lt;(arm_float_abi)&#39;,],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [ &#39;arm=
_thumb=3D=3D1&#39;, {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#3=
9;cflags&#39;: [&#39;-mthumb&#39;,],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [ &#39;arm=
_thumb=3D=3D0&#39;, {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#3=
9;cflags&#39;: [&#39;-marm&#39;,],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }, {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # &#39;v8_target_=
arch!=3Dhost_arch&#39;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [&#39;v8_target_arch!=3D=
host_arch&#39;, {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Host not b=
uilt with an Arm CXX compiler (simulator build).<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;conditi=
ons&#39;: [<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[ &#3=
9;arm_float_abi=3D=3D&quot;hard&quot;&#39;, {<br>
+@@ -254,31 +230,7 @@<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}],=C2=A0 # _toolset=3D=3D&quot;h=
ost&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[&#39;_toolset=3D=3D&quot;target&=
quot;&#39;, {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;conditions&#39;: [<br=
>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [&#39;v8_target_arch=3D=
=3Dtarget_arch&#39;, {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Target built wi=
th an Arm CXX compiler.<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;conditions&#=
39;: [<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [ &#39;arm=
_version=3D=3D7&#39;, {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#3=
9;cflags&#39;: [&#39;-march=3Darmv7-a&#39;,],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [ &#39;arm=
_version=3D=3D7 or arm_version=3D=3D&quot;default&quot;&#39;, {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#3=
9;conditions&#39;: [<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 [ &#39;arm_fpu!=3D&quot;default&quot;&#39;, {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &#39;cflags&#39;: [&#39;-mfpu=3D&lt;(arm_fpu)&#39;,],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 }],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ],<=
br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [ &#39;arm=
_float_abi!=3D&quot;default&quot;&#39;, {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#3=
9;cflags&#39;: [&#39;-mfloat-abi=3D&lt;(arm_float_abi)&#39;,],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [ &#39;arm=
_thumb=3D=3D1&#39;, {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#3=
9;cflags&#39;: [&#39;-mthumb&#39;,],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [ &#39;arm=
_thumb=3D=3D0&#39;, {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#3=
9;cflags&#39;: [&#39;-marm&#39;,],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ],<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }, {<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # &#39;v8_target_=
arch!=3Dtarget_arch&#39;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [&#39;v8_target_arch!=3D=
target_arch&#39;, {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Target not=
 built with an Arm CXX compiler (simulator build).<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;conditi=
ons&#39;: [<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[ &#3=
9;arm_float_abi=3D=3D&quot;hard&quot;&#39;, {<br>
+-- <br>
+2.20.1<br>
+<br>
diff --git a/recipes-devtools/nodejs/nodejs-20.8.1/libatomic.patch b/recipe=
s-devtools/nodejs/nodejs-20.8.1/libatomic.patch<br>
new file mode 100644<br>
index 0000000..cb02373<br>
--- /dev/null<br>
+++ b/recipes-devtools/nodejs/nodejs-20.8.1/libatomic.patch<br>
@@ -0,0 +1,21 @@<br>
+Link mksnapshot with libatomic on x86<br>
+<br>
+Clang-12 on x86 emits atomic builtins<br>
+<br>
+Fixes<br>
+| module-compiler.cc:(.text._ZN2v88internal4wasm12_GLOBAL__N_123ExecuteCom=
pilationUnitsERKSt10shared_ptrINS2_22BackgroundCompileTokenEEPNS0_8Counters=
EiNS2_19CompileBaselineOnlyE+0x558): un<br>
+defined reference to `__atomic_load&#39;<br>
+<br>
+Upstream-Status: Pending<br>
+Signed-off-by: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=
=3D"_blank">raj.khem@gmail.com</a>&gt;<br>
+<br>
+--- a/tools/v8_gypfiles/v8.gyp<br>
++++ b/tools/v8_gypfiles/v8.gyp<br>
+@@ -1436,6 +1436,7 @@<br>
+=C2=A0 =C2=A0 =C2=A0{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;target_name&#39;: &#39;mksnapshot&#39;,<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;type&#39;: &#39;executable&#39;,<br>
++=C2=A0 =C2=A0 =C2=A0 &#39;libraries&#39;: [ &#39;-latomic&#39; ],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;dependencies&#39;: [<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;v8_base_without_compiler&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;v8_compiler_for_mksnapshot&#39;,<br=
>
diff --git a/recipes-devtools/nodejs/nodejs-20.8.1/run-ptest b/recipes-devt=
ools/nodejs/nodejs-20.8.1/run-ptest<br>
new file mode 100755<br>
index 0000000..e82f373<br>
--- /dev/null<br>
+++ b/recipes-devtools/nodejs/nodejs-20.8.1/run-ptest<br>
@@ -0,0 +1,8 @@<br>
+#!/bin/sh<br>
+<br>
+./cctest<br>
+if [ $? =3D 0 ]; then<br>
+=C2=A0 echo &quot;PASS: nodejs&quot;<br>
+else<br>
+=C2=A0 echo &quot;FAIL: nodejs&quot;<br>
+fi<br>
diff --git a/recipes-devtools/nodejs/nodejs-20.8.1/system-c-ares.patch b/re=
cipes-devtools/nodejs/nodejs-20.8.1/system-c-ares.patch<br>
new file mode 100644<br>
index 0000000..141889a<br>
--- /dev/null<br>
+++ b/recipes-devtools/nodejs/nodejs-20.8.1/system-c-ares.patch<br>
@@ -0,0 +1,24 @@<br>
+keep nodejs compatible with c-ares 1.17.1<br>
+<br>
+Upstream-Status: Inappropriate [c-ares specific]<br>
+Signed-off-by: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=
=3D"_blank">raj.khem@gmail.com</a>&gt;<br>
+<br>
+--- a/src/cares_wrap.h<br>
++++ b/src/cares_wrap.h<br>
+@@ -22,7 +22,15 @@<br>
+ # include &lt;netdb.h&gt;<br>
+ #endif=C2=A0 // __POSIX__<br>
+ <br>
+-# include &lt;ares_nameser.h&gt;<br>
++#if defined(__ANDROID__) || \<br>
++=C2=A0 =C2=A0 defined(__MINGW32__) || \<br>
++=C2=A0 =C2=A0 defined(__OpenBSD__) || \<br>
++=C2=A0 =C2=A0 defined(_MSC_VER)<br>
++<br>
++# include &lt;nameser.h&gt;<br>
++#else<br>
++# include &lt;arpa/nameser.h&gt;<br>
++#endif<br>
+ <br>
+ namespace node {<br>
+ namespace cares_wrap {<br>
diff --git a/recipes-devtools/nodejs/nodejs-oe-cache-18.17/oe-npm-cache b/r=
ecipes-devtools/nodejs/nodejs-oe-cache-18.17/oe-npm-cache<br>
new file mode 100755<br>
index 0000000..f596207<br>
--- /dev/null<br>
+++ b/recipes-devtools/nodejs/nodejs-oe-cache-18.17/oe-npm-cache<br>
@@ -0,0 +1,77 @@<br>
+#!/usr/bin/env node<br>
+<br>
+/// Usage: oe-npm-cache &lt;cache-dir&gt; &lt;type&gt; &lt;key&gt; &lt;fil=
e-name&gt;<br>
+///=C2=A0 =C2=A0 &lt;type&gt; ... meta - metainformation about package<br>
+///=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tgz=C2=A0 - tarb=
all<br>
+<br>
+const process =3D require(&quot;node:process&quot;);<br>
+<br>
+module.paths.unshift(&quot;@@libdir@@/node_modules/npm/node_modules&quot;)=
;<br>
+<br>
+const cacache =3D require(&#39;cacache&#39;)<br>
+const fs =3D require(&#39;fs&#39;)<br>
+<br>
+// argv[0] is &#39;node&#39;, argv[1] is this script<br>
+const cache_dir =3D process.argv[2]<br>
+const type=C2=A0 =C2=A0 =C2=A0 =3D process.argv[3]<br>
+const key=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D process.argv[4]<br>
+const file=C2=A0 =C2=A0 =C2=A0 =3D process.argv[5]<br>
+<br>
+const data =3D fs.readFileSync(file)<br>
+<br>
+// metadata content is highly nodejs dependent; when cache entries are not=
<br>
+// found, place debug statements in &#39;make-fetch-happen/lib/cache/polic=
y.js&#39;<br>
+// (CachePolicy::satisfies())<br>
+const xlate =3D {<br>
+=C2=A0 =C2=A0 &#39;meta&#39;: {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;key_prefix&#39;: &#39;make-fetch-happen:re=
quest-cache:&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;metadata&#39;: function() {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0time: Date.now(),<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0url:=C2=A0 key,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0reqHeaders: {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;=
accept&#39;: &#39;application/vnd.npm.install-v1+json; q=3D1.0, application=
/json; q=3D0.8, */*&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0resHeaders: {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot=
;content-type&quot;: &quot;application/json&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot=
;status&quot;: 200,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0options: {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0compr=
ess: true,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
+=C2=A0 =C2=A0 },<br>
+<br>
+=C2=A0 =C2=A0 &#39;tgz&#39;: {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;key_prefix&#39;: &#39;make-fetch-happen:re=
quest-cache:&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;metadata&#39;: function() {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0time: Date.now(),<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0url:=C2=A0 key,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0reqHeaders: {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;=
accept&#39;: &#39;*/*&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0resHeaders: {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot=
;content-type&quot;: &quot;application/octet-stream&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot=
;status&quot;: 200,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0options: {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0compr=
ess: true,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
+=C2=A0 =C2=A0 },<br>
+};<br>
+<br>
+const info =3D xlate[type];<br>
+let opts =3D {}<br>
+<br>
+if (info.metadata) {<br>
+=C2=A0 =C2=A0 opts[&#39;metadata&#39;] =3D info.metadata();<br>
+}<br>
+<br>
+cacache.put(cache_dir, info.key_prefix + key, data, opts)<br>
+=C2=A0 =C2=A0 .then(integrity =3D&gt; {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0console.log(`Saved content of ${key} (${file}).=
`);<br>
+})<br>
diff --git a/recipes-devtools/nodejs/nodejs-oe-cache-20.5/oe-npm-cache b/re=
cipes-devtools/nodejs/nodejs-oe-cache-20.5/oe-npm-cache<br>
new file mode 100755<br>
index 0000000..f596207<br>
--- /dev/null<br>
+++ b/recipes-devtools/nodejs/nodejs-oe-cache-20.5/oe-npm-cache<br>
@@ -0,0 +1,77 @@<br>
+#!/usr/bin/env node<br>
+<br>
+/// Usage: oe-npm-cache &lt;cache-dir&gt; &lt;type&gt; &lt;key&gt; &lt;fil=
e-name&gt;<br>
+///=C2=A0 =C2=A0 &lt;type&gt; ... meta - metainformation about package<br>
+///=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tgz=C2=A0 - tarb=
all<br>
+<br>
+const process =3D require(&quot;node:process&quot;);<br>
+<br>
+module.paths.unshift(&quot;@@libdir@@/node_modules/npm/node_modules&quot;)=
;<br>
+<br>
+const cacache =3D require(&#39;cacache&#39;)<br>
+const fs =3D require(&#39;fs&#39;)<br>
+<br>
+// argv[0] is &#39;node&#39;, argv[1] is this script<br>
+const cache_dir =3D process.argv[2]<br>
+const type=C2=A0 =C2=A0 =C2=A0 =3D process.argv[3]<br>
+const key=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D process.argv[4]<br>
+const file=C2=A0 =C2=A0 =C2=A0 =3D process.argv[5]<br>
+<br>
+const data =3D fs.readFileSync(file)<br>
+<br>
+// metadata content is highly nodejs dependent; when cache entries are not=
<br>
+// found, place debug statements in &#39;make-fetch-happen/lib/cache/polic=
y.js&#39;<br>
+// (CachePolicy::satisfies())<br>
+const xlate =3D {<br>
+=C2=A0 =C2=A0 &#39;meta&#39;: {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;key_prefix&#39;: &#39;make-fetch-happen:re=
quest-cache:&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;metadata&#39;: function() {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0time: Date.now(),<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0url:=C2=A0 key,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0reqHeaders: {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;=
accept&#39;: &#39;application/vnd.npm.install-v1+json; q=3D1.0, application=
/json; q=3D0.8, */*&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0resHeaders: {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot=
;content-type&quot;: &quot;application/json&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot=
;status&quot;: 200,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0options: {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0compr=
ess: true,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
+=C2=A0 =C2=A0 },<br>
+<br>
+=C2=A0 =C2=A0 &#39;tgz&#39;: {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;key_prefix&#39;: &#39;make-fetch-happen:re=
quest-cache:&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;metadata&#39;: function() {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0time: Date.now(),<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0url:=C2=A0 key,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0reqHeaders: {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;=
accept&#39;: &#39;*/*&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0resHeaders: {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot=
;content-type&quot;: &quot;application/octet-stream&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot=
;status&quot;: 200,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0options: {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0compr=
ess: true,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
+=C2=A0 =C2=A0 },<br>
+};<br>
+<br>
+const info =3D xlate[type];<br>
+let opts =3D {}<br>
+<br>
+if (info.metadata) {<br>
+=C2=A0 =C2=A0 opts[&#39;metadata&#39;] =3D info.metadata();<br>
+}<br>
+<br>
+cacache.put(cache_dir, info.key_prefix + key, data, opts)<br>
+=C2=A0 =C2=A0 .then(integrity =3D&gt; {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0console.log(`Saved content of ${key} (${file}).=
`);<br>
+})<br>
diff --git a/recipes-devtools/nodejs/<a href=3D"http://nodejs-oe-cache-nati=
ve_18.17.bb" rel=3D"noreferrer" target=3D"_blank">nodejs-oe-cache-native_18=
.17.bb</a> b/recipes-devtools/nodejs/<a href=3D"http://nodejs-oe-cache-nati=
ve_18.17.bb" rel=3D"noreferrer" target=3D"_blank">nodejs-oe-cache-native_18=
.17.bb</a><br>
new file mode 100644<br>
index 0000000..a61dd50<br>
--- /dev/null<br>
+++ b/recipes-devtools/nodejs/<a href=3D"http://nodejs-oe-cache-native_18.1=
7.bb" rel=3D"noreferrer" target=3D"_blank">nodejs-oe-cache-native_18.17.bb<=
/a><br>
@@ -0,0 +1,21 @@<br>
+DESCRIPTION =3D &quot;OE helper for manipulating npm cache&quot;<br>
+LICENSE =3D &quot;Apache-2.0&quot;<br>
+LIC_FILES_CHKSUM =3D &quot;file://${COMMON_LICENSE_DIR}/Apache-2.0;md5=3D8=
9aea4e17d99a7cacdbeed46a0096b10&quot;<br>
+<br>
+SRC_URI =3D &quot;\<br>
+=C2=A0 =C2=A0 file://oe-npm-cache \<br>
+&quot;<br>
+<br>
+inherit native<br>
+<br>
+B =3D &quot;${WORKDIR}/build&quot;<br>
+<br>
+do_configure() {<br>
+=C2=A0 =C2=A0 sed -e &#39;s!@@libdir@@!${libdir}!g&#39; &lt; &#39;${WORKDI=
R}/oe-npm-cache&#39; &gt; &#39;${B}/oe-npm-cache&#39;<br>
+}<br>
+<br>
+do_install() {<br>
+=C2=A0 =C2=A0 install -D -p -m 0755 ${B}/oe-npm-cache ${D}${bindir}/oe-npm=
-cache<br>
+}<br>
+<br>
+RDEPENDS:${PN} =3D &quot;nodejs-native&quot;<br>
diff --git a/recipes-devtools/nodejs/<a href=3D"http://nodejs-oe-cache-nati=
ve_20.5.bb" rel=3D"noreferrer" target=3D"_blank">nodejs-oe-cache-native_20.=
5.bb</a> b/recipes-devtools/nodejs/<a href=3D"http://nodejs-oe-cache-native=
_20.5.bb" rel=3D"noreferrer" target=3D"_blank">nodejs-oe-cache-native_20.5.=
bb</a><br>
new file mode 100644<br>
index 0000000..a61dd50<br>
--- /dev/null<br>
+++ b/recipes-devtools/nodejs/<a href=3D"http://nodejs-oe-cache-native_20.5=
.bb" rel=3D"noreferrer" target=3D"_blank">nodejs-oe-cache-native_20.5.bb</a=
><br>
@@ -0,0 +1,21 @@<br>
+DESCRIPTION =3D &quot;OE helper for manipulating npm cache&quot;<br>
+LICENSE =3D &quot;Apache-2.0&quot;<br>
+LIC_FILES_CHKSUM =3D &quot;file://${COMMON_LICENSE_DIR}/Apache-2.0;md5=3D8=
9aea4e17d99a7cacdbeed46a0096b10&quot;<br>
+<br>
+SRC_URI =3D &quot;\<br>
+=C2=A0 =C2=A0 file://oe-npm-cache \<br>
+&quot;<br>
+<br>
+inherit native<br>
+<br>
+B =3D &quot;${WORKDIR}/build&quot;<br>
+<br>
+do_configure() {<br>
+=C2=A0 =C2=A0 sed -e &#39;s!@@libdir@@!${libdir}!g&#39; &lt; &#39;${WORKDI=
R}/oe-npm-cache&#39; &gt; &#39;${B}/oe-npm-cache&#39;<br>
+}<br>
+<br>
+do_install() {<br>
+=C2=A0 =C2=A0 install -D -p -m 0755 ${B}/oe-npm-cache ${D}${bindir}/oe-npm=
-cache<br>
+}<br>
+<br>
+RDEPENDS:${PN} =3D &quot;nodejs-native&quot;<br>
diff --git a/recipes-devtools/nodejs/<a href=3D"http://nodejs_18.17.1.bb" r=
el=3D"noreferrer" target=3D"_blank">nodejs_18.17.1.bb</a> b/recipes-devtool=
s/nodejs/<a href=3D"http://nodejs_18.17.1.bb" rel=3D"noreferrer" target=3D"=
_blank">nodejs_18.17.1.bb</a><br>
new file mode 100644<br>
index 0000000..402cf56<br>
--- /dev/null<br>
+++ b/recipes-devtools/nodejs/<a href=3D"http://nodejs_18.17.1.bb" rel=3D"n=
oreferrer" target=3D"_blank">nodejs_18.17.1.bb</a><br>
@@ -0,0 +1,185 @@<br>
+DESCRIPTION =3D &quot;nodeJS Evented I/O for V8 JavaScript&quot;<br>
+HOMEPAGE =3D &quot;<a href=3D"http://nodejs.org" rel=3D"noreferrer" target=
=3D"_blank">http://nodejs.org</a>&quot;<br>
+LICENSE =3D &quot;MIT &amp; ISC &amp; BSD-2-Clause &amp; BSD-3-Clause &amp=
; Artistic-2.0 &amp; Apache-2.0&quot;<br>
+LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3Dbc1f9ebe76be76f163e3b67530=
3ad9cd&quot;<br>
+<br>
+CVE_PRODUCT =3D &quot;nodejs node.js&quot;<br>
+<br>
+DEPENDS =3D &quot;openssl file-replacement-native&quot;<br>
+DEPENDS:append:class-target =3D &quot; qemu-native&quot;<br>
+DEPENDS:append:class-native =3D &quot; c-ares-native&quot;<br>
+<br>
+inherit pkgconfig python3native qemu ptest<br>
+<br>
+COMPATIBLE_MACHINE:armv4 =3D &quot;(!.*armv4).*&quot;<br>
+COMPATIBLE_MACHINE:armv5 =3D &quot;(!.*armv5).*&quot;<br>
+COMPATIBLE_MACHINE:mips64 =3D &quot;(!.*mips64).*&quot;<br>
+<br>
+COMPATIBLE_HOST:riscv64 =3D &quot;null&quot;<br>
+COMPATIBLE_HOST:riscv32 =3D &quot;null&quot;<br>
+COMPATIBLE_HOST:powerpc =3D &quot;null&quot;<br>
+<br>
+SRC_URI =3D &quot;<a href=3D"http://nodejs.org/dist/v$%7BPV%7D/node-v$%7BP=
V%7D.tar.xz" rel=3D"noreferrer" target=3D"_blank">http://nodejs.org/dist/v$=
{PV}/node-v${PV}.tar.xz</a> \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0001-Disable-running-gyp-f=
iles-for-bundled-deps.patch \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0004-v8-don-t-override-ARM=
-CFLAGS.patch \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://big-endian.patch \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://mips-less-memory.patch \<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://system-c-ares.patch \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0001-liftoff-Correct-funct=
ion-signatures.patch \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0001-mips-Use-32bit-cast-f=
or-operand-on-mips32.patch \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://run-ptest \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
+<br>
+SRC_URI:append:class-target =3D &quot; \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0001-Using-native-binaries=
.patch \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
+SRC_URI:append:toolchain-clang:x86 =3D &quot; \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://libatomic.patch \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
+SRC_URI:append:toolchain-clang:powerpc64le =3D &quot; \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0001-ppc64-Do-not-use-mmin=
imal-toc-with-clang.patch \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
+SRC_URI[sha256sum] =3D &quot;f215cf03d0f00f07ac0b674c6819f804c1542e16f152d=
a04980022aeccf5e65a&quot;<br>
+<br>
+S =3D &quot;${WORKDIR}/node-v${PV}&quot;<br>
+<br>
+# v8 errors out if you have set CCACHE<br>
+CCACHE =3D &quot;&quot;<br>
+<br>
+def map_nodejs_arch(a, d):<br>
+=C2=A0 =C2=A0 import re<br>
+<br>
+=C2=A0 =C2=A0 if=C2=A0 =C2=A0re.match(&#39;i.86$&#39;, a): return &#39;ia3=
2&#39;<br>
+=C2=A0 =C2=A0 elif re.match(&#39;x86_64$&#39;, a): return &#39;x64&#39;<br=
>
+=C2=A0 =C2=A0 elif re.match(&#39;aarch64$&#39;, a): return &#39;arm64&#39;=
<br>
+=C2=A0 =C2=A0 elif re.match(&#39;(powerpc64|powerpc64le|ppc64le)$&#39;, a)=
: return &#39;ppc64&#39;<br>
+=C2=A0 =C2=A0 elif re.match(&#39;powerpc$&#39;, a): return &#39;ppc&#39;<b=
r>
+=C2=A0 =C2=A0 return a<br>
+<br>
+ARCHFLAGS:arm =3D &quot;${@bb.utils.contains(&#39;TUNE_FEATURES&#39;, &#39=
;callconvention-hard&#39;, &#39;--with-arm-float-abi=3Dhard&#39;, &#39;--wi=
th-arm-float-abi=3Dsoftfp&#39;, d)} \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${@bb.utils.=
contains(&#39;TUNE_FEATURES&#39;, &#39;neon&#39;, &#39;--with-arm-fpu=3Dneo=
n&#39;, \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.u=
tils.contains(&#39;TUNE_FEATURES&#39;, &#39;vfpv3d16&#39;, &#39;--with-arm-=
fpu=3Dvfpv3-d16&#39;, \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.u=
tils.contains(&#39;TUNE_FEATURES&#39;, &#39;vfpv3&#39;, &#39;--with-arm-fpu=
=3Dvfpv3&#39;, \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39=
;--with-arm-fpu=3Dvfp&#39;, d), d), d)}&quot;<br>
+ARCHFLAGS:append:mips =3D &quot; --v8-lite-mode&quot;<br>
+ARCHFLAGS:append:mipsel =3D &quot; --v8-lite-mode&quot;<br>
+ARCHFLAGS ?=3D &quot;&quot;<br>
+<br>
+PACKAGECONFIG ??=3D &quot;ares brotli icu zlib&quot;<br>
+<br>
+PACKAGECONFIG[ares] =3D &quot;--shared-cares,,c-ares&quot;<br>
+PACKAGECONFIG[brotli] =3D &quot;--shared-brotli,,brotli&quot;<br>
+PACKAGECONFIG[icu] =3D &quot;--with-intl=3Dsystem-icu,--without-intl,icu&q=
uot;<br>
+PACKAGECONFIG[libuv] =3D &quot;--shared-libuv,,libuv&quot;<br>
+PACKAGECONFIG[nghttp2] =3D &quot;--shared-nghttp2,,nghttp2&quot;<br>
+PACKAGECONFIG[shared] =3D &quot;--shared&quot;<br>
+PACKAGECONFIG[zlib] =3D &quot;--shared-zlib,,zlib&quot;<br>
+<br>
+# We don&#39;t want to cross-compile during target compile,<br>
+# and we need to use the right flags during host compile,<br>
+# too.<br>
+EXTRA_OEMAKE =3D &quot;\<br>
+=C2=A0 =C2=A0 CC.host=3D&#39;${CC}&#39; \<br>
+=C2=A0 =C2=A0 CFLAGS.host=3D&#39;${CPPFLAGS} ${CFLAGS}&#39; \<br>
+=C2=A0 =C2=A0 CXX.host=3D&#39;${CXX}&#39; \<br>
+=C2=A0 =C2=A0 CXXFLAGS.host=3D&#39;${CPPFLAGS} ${CXXFLAGS}&#39; \<br>
+=C2=A0 =C2=A0 LDFLAGS.host=3D&#39;${LDFLAGS}&#39; \<br>
+=C2=A0 =C2=A0 AR.host=3D&#39;${AR}&#39; \<br>
+=C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 builddir_name=3D./ \<br>
+&quot;<br>
+<br>
+EXTRANATIVEPATH +=3D &quot;file-native&quot;<br>
+<br>
+python prune_sources() {<br>
+=C2=A0 =C2=A0 import shutil<br>
+<br>
+=C2=A0 =C2=A0 shutil.rmtree(d.getVar(&#39;S&#39;) + &#39;/deps/openssl&#39=
;)<br>
+=C2=A0 =C2=A0 if &#39;ares&#39; in d.getVar(&#39;PACKAGECONFIG&#39;):<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 shutil.rmtree(d.getVar(&#39;S&#39;) + &#39;/de=
ps/cares&#39;)<br>
+=C2=A0 =C2=A0 if &#39;brotli&#39; in d.getVar(&#39;PACKAGECONFIG&#39;):<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 shutil.rmtree(d.getVar(&#39;S&#39;) + &#39;/de=
ps/brotli&#39;)<br>
+=C2=A0 =C2=A0 if &#39;libuv&#39; in d.getVar(&#39;PACKAGECONFIG&#39;):<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 shutil.rmtree(d.getVar(&#39;S&#39;) + &#39;/de=
ps/uv&#39;)<br>
+=C2=A0 =C2=A0 if &#39;nghttp2&#39; in d.getVar(&#39;PACKAGECONFIG&#39;):<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 shutil.rmtree(d.getVar(&#39;S&#39;) + &#39;/de=
ps/nghttp2&#39;)<br>
+=C2=A0 =C2=A0 if &#39;zlib&#39; in d.getVar(&#39;PACKAGECONFIG&#39;):<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 shutil.rmtree(d.getVar(&#39;S&#39;) + &#39;/de=
ps/zlib&#39;)<br>
+}<br>
+do_unpack[postfuncs] +=3D &quot;prune_sources&quot;<br>
+<br>
+# V8&#39;s JIT infrastructure requires binaries such as mksnapshot and<br>
+# mkpeephole to be run in the host during the build. However, these<br>
+# binaries must have the same bit-width as the target (e.g. a x86_64<br>
+# host targeting ARMv6 needs to produce a 32-bit binary). Instead of<br>
+# depending on a third Yocto toolchain, we just build those binaries<br>
+# for the target and run them on the host with QEMU.<br>
+python do_create_v8_qemu_wrapper () {<br>
+=C2=A0 =C2=A0 &quot;&quot;&quot;Creates a small wrapper that invokes QEMU =
to run some target V8 binaries<br>
+=C2=A0 =C2=A0 on the host.&quot;&quot;&quot;<br>
+=C2=A0 =C2=A0 qemu_libdirs =3D [d.expand(&#39;${STAGING_DIR_HOST}${libdir}=
&#39;),<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 d.ex=
pand(&#39;${STAGING_DIR_HOST}${base_libdir}&#39;)]<br>
+=C2=A0 =C2=A0 qemu_cmd =3D qemu_wrapper_cmdline(d, d.getVar(&#39;STAGING_D=
IR_HOST&#39;),<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 qemu_libdirs)<br>
+=C2=A0 =C2=A0 wrapper_path =3D d.expand(&#39;${B}/v8-qemu-wrapper.sh&#39;)=
<br>
+=C2=A0 =C2=A0 with open(wrapper_path, &#39;w&#39;) as wrapper_file:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 wrapper_file.write(&quot;&quot;&quot;#!/bin/sh=
<br>
+<br>
+# This file has been generated automatically.<br>
+# It invokes QEMU to run binaries built for the target in the host during =
the<br>
+# build process.<br>
+<br>
+%s &quot;$@&quot;<br>
+&quot;&quot;&quot; % qemu_cmd)<br>
+=C2=A0 =C2=A0 os.chmod(wrapper_path, 0o755)<br>
+}<br>
+<br>
+do_create_v8_qemu_wrapper[dirs] =3D &quot;${B}&quot;<br>
+addtask create_v8_qemu_wrapper after do_configure before do_compile<br>
+<br>
+LDFLAGS:append:x86 =3D &quot; -latomic&quot;<br>
+<br>
+CROSS_FLAGS =3D &quot;--cross-compiling&quot;<br>
+CROSS_FLAGS:class-native =3D &quot;--no-cross-compiling&quot;<br>
+<br>
+# Node is way too cool to use proper autotools, so we install two wrappers=
 to forcefully inject proper arch cflags to workaround gypi<br>
+do_configure () {<br>
+=C2=A0 =C2=A0 GYP_DEFINES=3D&quot;${GYP_DEFINES}&quot; export GYP_DEFINES<=
br>
+=C2=A0 =C2=A0 # $TARGET_ARCH settings don&#39;t match --dest-cpu settings<=
br>
+=C2=A0 =C2=A0 python3 configure.py --verbose --prefix=3D${prefix} \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--shared-openssl \<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--without-dtrace \<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--without-etw \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--dest-cpu=3D&quot;=
${@map_nodejs_arch(d.getVar(&#39;TARGET_ARCH&#39;), d)}&quot; \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--dest-os=3Dlinux \=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--libdir=3D${baseli=
b} \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${CROSS_FLAGS} \<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${ARCHFLAGS} \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PACKAGECONFIG_CON=
FARGS}<br>
+}<br>
+<br>
+do_compile () {<br>
+=C2=A0 =C2=A0 install -D ${RECIPE_SYSROOT_NATIVE}/etc/ssl/openssl.cnf ${B}=
/deps/openssl/nodejs-openssl.cnf<br>
+=C2=A0 =C2=A0 install -D ${B}/v8-qemu-wrapper.sh ${B}/out/Release/v8-qemu-=
wrapper.sh<br>
+=C2=A0 =C2=A0 oe_runmake BUILDTYPE=3DRelease<br>
+}<br>
+<br>
+do_install () {<br>
+=C2=A0 =C2=A0 oe_runmake install DESTDIR=3D${D}<br>
+}<br>
+<br>
+do_install_ptest () {<br>
+=C2=A0 =C2=A0 cp -r=C2=A0 ${B}/out/Release/cctest ${D}${PTEST_PATH}/<br>
+=C2=A0 =C2=A0 cp -r ${B}/test ${D}${PTEST_PATH}<br>
+=C2=A0 =C2=A0 chown -R root:root ${D}${PTEST_PATH}<br>
+}<br>
+<br>
+PACKAGES =3D+ &quot;${PN}-npm&quot;<br>
+FILES:${PN}-npm =3D &quot;${nonarch_libdir}/node_modules ${bindir}/npm ${b=
indir}/npx ${bindir}/corepack&quot;<br>
+RDEPENDS:${PN}-npm =3D &quot;bash python3-core python3-shell python3-datet=
ime \<br>
+=C2=A0 =C2=A0 python3-misc python3-multiprocessing&quot;<br>
+<br>
+PACKAGES =3D+ &quot;${PN}-systemtap&quot;<br>
+FILES:${PN}-systemtap =3D &quot;${datadir}/systemtap&quot;<br>
+<br>
+BBCLASSEXTEND =3D &quot;native&quot;<br>
diff --git a/recipes-devtools/nodejs/<a href=3D"http://nodejs_20.8.1.bb" re=
l=3D"noreferrer" target=3D"_blank">nodejs_20.8.1.bb</a> b/recipes-devtools/=
nodejs/<a href=3D"http://nodejs_20.8.1.bb" rel=3D"noreferrer" target=3D"_bl=
ank">nodejs_20.8.1.bb</a><br>
new file mode 100644<br>
index 0000000..65f4eb3<br>
--- /dev/null<br>
+++ b/recipes-devtools/nodejs/<a href=3D"http://nodejs_20.8.1.bb" rel=3D"no=
referrer" target=3D"_blank">nodejs_20.8.1.bb</a><br>
@@ -0,0 +1,182 @@<br>
+DESCRIPTION =3D &quot;nodeJS Evented I/O for V8 JavaScript&quot;<br>
+HOMEPAGE =3D &quot;<a href=3D"http://nodejs.org" rel=3D"noreferrer" target=
=3D"_blank">http://nodejs.org</a>&quot;<br>
+LICENSE =3D &quot;MIT &amp; ISC &amp; BSD-2-Clause &amp; BSD-3-Clause &amp=
; Artistic-2.0 &amp; Apache-2.0&quot;<br>
+LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D162595a4a2f3453a0534e60b0a=
fe4e7b&quot;<br>
+<br>
+CVE_PRODUCT =3D &quot;nodejs node.js&quot;<br>
+<br>
+DEPENDS =3D &quot;openssl file-replacement-native&quot;<br>
+DEPENDS:append:class-target =3D &quot; qemu-native&quot;<br>
+DEPENDS:append:class-native =3D &quot; c-ares-native&quot;<br>
+<br>
+inherit pkgconfig python3native qemu ptest<br>
+<br>
+COMPATIBLE_MACHINE:armv4 =3D &quot;(!.*armv4).*&quot;<br>
+COMPATIBLE_MACHINE:armv5 =3D &quot;(!.*armv5).*&quot;<br>
+COMPATIBLE_MACHINE:mips64 =3D &quot;(!.*mips64).*&quot;<br>
+<br>
+COMPATIBLE_HOST:riscv64 =3D &quot;null&quot;<br>
+COMPATIBLE_HOST:riscv32 =3D &quot;null&quot;<br>
+COMPATIBLE_HOST:powerpc =3D &quot;null&quot;<br>
+<br>
+SRC_URI =3D &quot;<a href=3D"http://nodejs.org/dist/v$%7BPV%7D/node-v$%7BP=
V%7D.tar.xz" rel=3D"noreferrer" target=3D"_blank">http://nodejs.org/dist/v$=
{PV}/node-v${PV}.tar.xz</a> \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0001-Disable-running-gyp-f=
iles-for-bundled-deps.patch \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0004-v8-don-t-override-ARM=
-CFLAGS.patch \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://system-c-ares.patch \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0001-liftoff-Correct-funct=
ion-signatures.patch \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0001-Revert-io_uring-chang=
es-from-libuv-1.46.0.patch \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0002-Revert-io_uring-chang=
es-from-libuv-1.45.0.patch \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://run-ptest \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
+<br>
+SRC_URI:append:class-target =3D &quot; \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0001-Using-native-binaries=
.patch \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
+SRC_URI:append:toolchain-clang:x86 =3D &quot; \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://libatomic.patch \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
+SRC_URI:append:toolchain-clang:powerpc64le =3D &quot; \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0001-ppc64-Do-not-use-mmin=
imal-toc-with-clang.patch \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
+SRC_URI[sha256sum] =3D &quot;f799c66f6a6386bb8ac2c75a378f740c455e97f1fe964=
393dd39c9f9f6efbc70&quot;<br>
+<br>
+S =3D &quot;${WORKDIR}/node-v${PV}&quot;<br>
+<br>
+# v8 errors out if you have set CCACHE<br>
+CCACHE =3D &quot;&quot;<br>
+<br>
+def map_nodejs_arch(a, d):<br>
+=C2=A0 =C2=A0 import re<br>
+<br>
+=C2=A0 =C2=A0 if=C2=A0 =C2=A0re.match(&#39;i.86$&#39;, a): return &#39;ia3=
2&#39;<br>
+=C2=A0 =C2=A0 elif re.match(&#39;x86_64$&#39;, a): return &#39;x64&#39;<br=
>
+=C2=A0 =C2=A0 elif re.match(&#39;aarch64$&#39;, a): return &#39;arm64&#39;=
<br>
+=C2=A0 =C2=A0 elif re.match(&#39;(powerpc64|powerpc64le|ppc64le)$&#39;, a)=
: return &#39;ppc64&#39;<br>
+=C2=A0 =C2=A0 elif re.match(&#39;powerpc$&#39;, a): return &#39;ppc&#39;<b=
r>
+=C2=A0 =C2=A0 return a<br>
+<br>
+ARCHFLAGS:arm =3D &quot;${@bb.utils.contains(&#39;TUNE_FEATURES&#39;, &#39=
;callconvention-hard&#39;, &#39;--with-arm-float-abi=3Dhard&#39;, &#39;--wi=
th-arm-float-abi=3Dsoftfp&#39;, d)} \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${@bb.utils.=
contains(&#39;TUNE_FEATURES&#39;, &#39;neon&#39;, &#39;--with-arm-fpu=3Dneo=
n&#39;, \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.u=
tils.contains(&#39;TUNE_FEATURES&#39;, &#39;vfpv3d16&#39;, &#39;--with-arm-=
fpu=3Dvfpv3-d16&#39;, \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.u=
tils.contains(&#39;TUNE_FEATURES&#39;, &#39;vfpv3&#39;, &#39;--with-arm-fpu=
=3Dvfpv3&#39;, \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39=
;--with-arm-fpu=3Dvfp&#39;, d), d), d)}&quot;<br>
+ARCHFLAGS:append:mips =3D &quot; --v8-lite-mode&quot;<br>
+ARCHFLAGS:append:mipsel =3D &quot; --v8-lite-mode&quot;<br>
+ARCHFLAGS ?=3D &quot;&quot;<br>
+<br>
+PACKAGECONFIG ??=3D &quot;ares brotli icu zlib&quot;<br>
+<br>
+PACKAGECONFIG[ares] =3D &quot;--shared-cares,,c-ares&quot;<br>
+PACKAGECONFIG[brotli] =3D &quot;--shared-brotli,,brotli&quot;<br>
+PACKAGECONFIG[icu] =3D &quot;--with-intl=3Dsystem-icu,--without-intl,icu&q=
uot;<br>
+PACKAGECONFIG[libuv] =3D &quot;--shared-libuv,,libuv&quot;<br>
+PACKAGECONFIG[nghttp2] =3D &quot;--shared-nghttp2,,nghttp2&quot;<br>
+PACKAGECONFIG[shared] =3D &quot;--shared&quot;<br>
+PACKAGECONFIG[zlib] =3D &quot;--shared-zlib,,zlib&quot;<br>
+<br>
+# We don&#39;t want to cross-compile during target compile,<br>
+# and we need to use the right flags during host compile,<br>
+# too.<br>
+EXTRA_OEMAKE =3D &quot;\<br>
+=C2=A0 =C2=A0 CC.host=3D&#39;${CC} -pie -fPIE&#39; \<br>
+=C2=A0 =C2=A0 CFLAGS.host=3D&#39;${CPPFLAGS} ${CFLAGS}&#39; \<br>
+=C2=A0 =C2=A0 CXX.host=3D&#39;${CXX} -pie -fPIE&#39; \<br>
+=C2=A0 =C2=A0 CXXFLAGS.host=3D&#39;${CPPFLAGS} ${CXXFLAGS}&#39; \<br>
+=C2=A0 =C2=A0 LDFLAGS.host=3D&#39;${LDFLAGS}&#39; \<br>
+=C2=A0 =C2=A0 AR.host=3D&#39;${AR}&#39; \<br>
+=C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 builddir_name=3D./ \<br>
+&quot;<br>
+<br>
+EXTRANATIVEPATH +=3D &quot;file-native&quot;<br>
+<br>
+python prune_sources() {<br>
+=C2=A0 =C2=A0 import shutil<br>
+<br>
+=C2=A0 =C2=A0 shutil.rmtree(d.getVar(&#39;S&#39;) + &#39;/deps/openssl&#39=
;)<br>
+=C2=A0 =C2=A0 if &#39;ares&#39; in d.getVar(&#39;PACKAGECONFIG&#39;):<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 shutil.rmtree(d.getVar(&#39;S&#39;) + &#39;/de=
ps/cares&#39;)<br>
+=C2=A0 =C2=A0 if &#39;brotli&#39; in d.getVar(&#39;PACKAGECONFIG&#39;):<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 shutil.rmtree(d.getVar(&#39;S&#39;) + &#39;/de=
ps/brotli&#39;)<br>
+=C2=A0 =C2=A0 if &#39;libuv&#39; in d.getVar(&#39;PACKAGECONFIG&#39;):<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 shutil.rmtree(d.getVar(&#39;S&#39;) + &#39;/de=
ps/uv&#39;)<br>
+=C2=A0 =C2=A0 if &#39;nghttp2&#39; in d.getVar(&#39;PACKAGECONFIG&#39;):<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 shutil.rmtree(d.getVar(&#39;S&#39;) + &#39;/de=
ps/nghttp2&#39;)<br>
+=C2=A0 =C2=A0 if &#39;zlib&#39; in d.getVar(&#39;PACKAGECONFIG&#39;):<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 shutil.rmtree(d.getVar(&#39;S&#39;) + &#39;/de=
ps/zlib&#39;)<br>
+}<br>
+do_unpack[postfuncs] +=3D &quot;prune_sources&quot;<br>
+<br>
+# V8&#39;s JIT infrastructure requires binaries such as mksnapshot and<br>
+# mkpeephole to be run in the host during the build. However, these<br>
+# binaries must have the same bit-width as the target (e.g. a x86_64<br>
+# host targeting ARMv6 needs to produce a 32-bit binary). Instead of<br>
+# depending on a third Yocto toolchain, we just build those binaries<br>
+# for the target and run them on the host with QEMU.<br>
+python do_create_v8_qemu_wrapper () {<br>
+=C2=A0 =C2=A0 &quot;&quot;&quot;Creates a small wrapper that invokes QEMU =
to run some target V8 binaries<br>
+=C2=A0 =C2=A0 on the host.&quot;&quot;&quot;<br>
+=C2=A0 =C2=A0 qemu_libdirs =3D [d.expand(&#39;${STAGING_DIR_HOST}${libdir}=
&#39;),<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 d.ex=
pand(&#39;${STAGING_DIR_HOST}${base_libdir}&#39;)]<br>
+=C2=A0 =C2=A0 qemu_cmd =3D qemu_wrapper_cmdline(d, d.getVar(&#39;STAGING_D=
IR_HOST&#39;),<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 qemu_libdirs)<br>
+=C2=A0 =C2=A0 wrapper_path =3D d.expand(&#39;${B}/v8-qemu-wrapper.sh&#39;)=
<br>
+=C2=A0 =C2=A0 with open(wrapper_path, &#39;w&#39;) as wrapper_file:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 wrapper_file.write(&quot;&quot;&quot;#!/bin/sh=
<br>
+<br>
+# This file has been generated automatically.<br>
+# It invokes QEMU to run binaries built for the target in the host during =
the<br>
+# build process.<br>
+<br>
+%s &quot;$@&quot;<br>
+&quot;&quot;&quot; % qemu_cmd)<br>
+=C2=A0 =C2=A0 os.chmod(wrapper_path, 0o755)<br>
+}<br>
+<br>
+do_create_v8_qemu_wrapper[dirs] =3D &quot;${B}&quot;<br>
+addtask create_v8_qemu_wrapper after do_configure before do_compile<br>
+<br>
+LDFLAGS:append:x86 =3D &quot; -latomic&quot;<br>
+<br>
+CROSS_FLAGS =3D &quot;--cross-compiling&quot;<br>
+CROSS_FLAGS:class-native =3D &quot;--no-cross-compiling&quot;<br>
+<br>
+# Node is way too cool to use proper autotools, so we install two wrappers=
 to forcefully inject proper arch cflags to workaround gypi<br>
+do_configure () {<br>
+=C2=A0 =C2=A0 GYP_DEFINES=3D&quot;${GYP_DEFINES}&quot; export GYP_DEFINES<=
br>
+=C2=A0 =C2=A0 # $TARGET_ARCH settings don&#39;t match --dest-cpu settings<=
br>
+=C2=A0 =C2=A0 python3 configure.py --verbose --prefix=3D${prefix} \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--shared-openssl \<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--dest-cpu=3D&quot;=
${@map_nodejs_arch(d.getVar(&#39;TARGET_ARCH&#39;), d)}&quot; \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--dest-os=3Dlinux \=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--libdir=3D${baseli=
b} \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${CROSS_FLAGS} \<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${ARCHFLAGS} \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PACKAGECONFIG_CON=
FARGS}<br>
+}<br>
+<br>
+do_compile () {<br>
+=C2=A0 =C2=A0 install -D ${RECIPE_SYSROOT_NATIVE}/etc/ssl/openssl.cnf ${B}=
/deps/openssl/nodejs-openssl.cnf<br>
+=C2=A0 =C2=A0 install -D ${B}/v8-qemu-wrapper.sh ${B}/out/Release/v8-qemu-=
wrapper.sh<br>
+=C2=A0 =C2=A0 oe_runmake BUILDTYPE=3DRelease<br>
+}<br>
+<br>
+do_install () {<br>
+=C2=A0 =C2=A0 oe_runmake install DESTDIR=3D${D}<br>
+}<br>
+<br>
+do_install_ptest () {<br>
+=C2=A0 =C2=A0 cp -r=C2=A0 ${B}/out/Release/cctest ${D}${PTEST_PATH}/<br>
+=C2=A0 =C2=A0 cp -r ${B}/test ${D}${PTEST_PATH}<br>
+=C2=A0 =C2=A0 chown -R root:root ${D}${PTEST_PATH}<br>
+}<br>
+<br>
+PACKAGES =3D+ &quot;${PN}-npm&quot;<br>
+FILES:${PN}-npm =3D &quot;${nonarch_libdir}/node_modules ${bindir}/npm ${b=
indir}/npx ${bindir}/corepack&quot;<br>
+RDEPENDS:${PN}-npm =3D &quot;bash python3-core python3-shell python3-datet=
ime \<br>
+=C2=A0 =C2=A0 python3-misc python3-multiprocessing&quot;<br>
+<br>
+PACKAGES =3D+ &quot;${PN}-systemtap&quot;<br>
+FILES:${PN}-systemtap =3D &quot;${datadir}/systemtap&quot;<br>
+<br>
+BBCLASSEXTEND =3D &quot;native&quot;<br>
-- <br>
2.34.1<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#61792): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/61792" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/61792</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/102976462/505=
2612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/102976462/5052612</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank">quare=
sma.jose@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div></=
div>

--000000000000380c17060bc0c2d3--

