Return-Path: <antonio@amsobr.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6236C10F05
	for <webhook@archiver.kernel.org>; Tue,  5 Dec 2023 18:22:11 +0000 (UTC)
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
 by mx.groups.io with SMTP id smtpd.web10.1185.1701800528764297552
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Dec 2023 10:22:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amsobr.com header.s=google header.b=c4DdU7gk;
 spf=pass (domain: amsobr.com, ip: 209.85.215.169, mailfrom: antonio@amsobr.com)
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-5c67c1ad5beso35148a12.1
        for <yocto@lists.yoctoproject.org>; Tue, 05 Dec 2023 10:22:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amsobr.com; s=google; t=1701800528; x=1702405328; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nLyrQObqW2g2z32+TYEjLWP1DujwyZmWpi61XSflngk=;
        b=c4DdU7gk0jD22TQOObWNdmaKox1kycPc4cnZyHgGOdSm9FVnKmpMFNXpLdU9GOO6T0
         CGbvCSKHIPEe/qEFXFoj96S6R3eaDKXiVtepi/B4URJUgHqX6Fx5jkbGyqXUa51zaa5i
         W6Lun9uxrXvP4W8nKtSIFekj7ZGtay2v8AsRJNT4XTUxlRI+cnYYgh3cq2tR4IYiMQjy
         X/sZxvHt4oj3U7x31sNsDHV+IYi4b2KbBddeu+AgfPDSUUfxUpxW2kWNAIcyYXTB6Fsx
         BAHRRcnJiWy4ba7n+jifwINPqGkRqQSPCW8x6L6nv8xCwQF75MAsrDOBwR2XMcgaeRZZ
         mZIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701800528; x=1702405328;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nLyrQObqW2g2z32+TYEjLWP1DujwyZmWpi61XSflngk=;
        b=guIE8mwrBfamJyGyMulQyDcHOqq01Bq+NwgDsZdkJxHWZVZdyCQaQlw9S9GUZXc5R7
         80xsz6ZvA9vDJImzE49TrcCZwv/prTDqxHSG49I0mkbkqtOoOANmBZm1M3m/GV42lROe
         iVkoXbV6EtyKF9zCyPy+k3cTHO0jsAFYhNlEuVdL6K766QG/GKUrI5ZKaUbMiwV24hMy
         vrrAjvLiABeB/MO+PUXh6vCJzhYTJWVbB3NTTLZk6hiFkMOwE4707LKLkidRyQgChWRo
         G71uCLdem9uGjE3xKtyDZj+hqAPFOT412hjYPwd4PwxwV0SAP3jCwoWadoOwfhi8sLuL
         MRMQ==
X-Gm-Message-State: AOJu0YzZ9fAzlw5AWki/Fp6QX1l2reDT8aPJ2K6DTsEyWodVT6w5bDWU
	dVapTzQ+oQ1kAS9AI9fLLJ0MbJ8fRmuRstEYnhlEFLfAC7eDttLK
X-Google-Smtp-Source: AGHT+IGEgq/tDNJK/mzWfSdk7zobjwQ3Guau5xAJZFVdsiiejhxQ53XkbhN1OUwL2TlqcVI8O125Xz/awk6mvAALlI4=
X-Received: by 2002:a17:90a:d801:b0:286:79b7:e86b with SMTP id
 a1-20020a17090ad80100b0028679b7e86bmr1948167pjv.14.1701800526674; Tue, 05 Dec
 2023 10:22:06 -0800 (PST)
MIME-Version: 1.0
References: <20231204183055.29931-1-antonio@amsobr.com> <20231204183055.29931-2-antonio@amsobr.com>
 <CANPvuRk=EYMBbWFQKCDPDFnGBSA2OX=km4VUTjdPO0yaC+tMgg@mail.gmail.com>
In-Reply-To: <CANPvuRk=EYMBbWFQKCDPDFnGBSA2OX=km4VUTjdPO0yaC+tMgg@mail.gmail.com>
From: =?UTF-8?Q?Ant=C3=B3nio_Oliveira?= <antonio@amsobr.com>
Date: Tue, 5 Dec 2023 18:21:53 +0000
Message-ID: <CAGfGMDE2Zut=_Y4qkMDpb8Ow5j2XadZ_5bvSYx1p9Vz8f+THfw@mail.gmail.com>
Subject: Re: [yocto] [RFC PATCH 1/1] initial commit
To: Jose Quaresma <quaresma.jose@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Dec 2023 18:22:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61805

On Tue, Dec 5, 2023 at 10:33=E2=80=AFAM Jose Quaresma <quaresma.jose@gmail.=
com> wrote:
>
>
>
> Ant=C3=B3nio Oliveira <antonio@amsobr.com> escreveu no dia segunda, 4/12/=
2023 =C3=A0(s) 18:31:
>>
>> * Added nodejs-20.8.1 from master, nodejs-18.17.1 from Mickledore
>> * added layer config, readme and license
>>
>> Signed-off-by: Ant=C3=B3nio Oliveira <antonio@amsobr.com>
>> ---
>>  COPYING.MIT                                   |   17 +
>>  README                                        |   22 +
>>  conf/layer.conf                               |   20 +
>>  ...e-running-gyp-files-for-bundled-deps.patch |   51 +
>>  .../0001-Using-native-binaries.patch          |   77 +
>>  ...-liftoff-Correct-function-signatures.patch |   85 +
>>  ...Use-32bit-cast-for-operand-on-mips32.patch |   34 +
>>  ...4-Do-not-use-mminimal-toc-with-clang.patch |   23 +
>>  .../0004-v8-don-t-override-ARM-CFLAGS.patch   |  102 +
>>  .../nodejs/nodejs-18.17.1/big-endian.patch    |   18 +
>>  .../nodejs/nodejs-18.17.1/libatomic.patch     |   21 +
>>  .../nodejs-18.17.1/mips-less-memory.patch     |   37 +
>>  .../nodejs/nodejs-18.17.1/run-ptest           |    3 +
>>  .../nodejs/nodejs-18.17.1/system-c-ares.patch |   24 +
>>  ...e-running-gyp-files-for-bundled-deps.patch |   46 +
>>  ...t-io_uring-changes-from-libuv-1.46.0.patch | 3414 +++++++++++++++++
>>  .../0001-Using-native-binaries.patch          |   94 +
>>  ...-liftoff-Correct-function-signatures.patch |   71 +
>>  ...4-Do-not-use-mminimal-toc-with-clang.patch |   25 +
>>  ...t-io_uring-changes-from-libuv-1.45.0.patch | 1803 +++++++++
>>  .../0004-v8-don-t-override-ARM-CFLAGS.patch   |  102 +
>>  .../nodejs/nodejs-20.8.1/libatomic.patch      |   21 +
>>  .../nodejs/nodejs-20.8.1/run-ptest            |    8 +
>>  .../nodejs/nodejs-20.8.1/system-c-ares.patch  |   24 +
>>  .../nodejs/nodejs-oe-cache-18.17/oe-npm-cache |   77 +
>>  .../nodejs/nodejs-oe-cache-20.5/oe-npm-cache  |   77 +
>>  .../nodejs/nodejs-oe-cache-native_18.17.bb    |   21 +
>>  .../nodejs/nodejs-oe-cache-native_20.5.bb     |   21 +
>>  recipes-devtools/nodejs/nodejs_18.17.1.bb     |  185 +
>>  recipes-devtools/nodejs/nodejs_20.8.1.bb      |  182 +
>>  30 files changed, 6705 insertions(+)
>>  create mode 100644 COPYING.MIT
>>  create mode 100644 README
>>  create mode 100644 conf/layer.conf
>>  create mode 100644 recipes-devtools/nodejs/nodejs-18.17.1/0001-Disable-=
running-gyp-files-for-bundled-deps.patch
>>  create mode 100644 recipes-devtools/nodejs/nodejs-18.17.1/0001-Using-na=
tive-binaries.patch
>>  create mode 100644 recipes-devtools/nodejs/nodejs-18.17.1/0001-liftoff-=
Correct-function-signatures.patch
>>  create mode 100644 recipes-devtools/nodejs/nodejs-18.17.1/0001-mips-Use=
-32bit-cast-for-operand-on-mips32.patch
>>  create mode 100644 recipes-devtools/nodejs/nodejs-18.17.1/0001-ppc64-Do=
-not-use-mminimal-toc-with-clang.patch
>>  create mode 100644 recipes-devtools/nodejs/nodejs-18.17.1/0004-v8-don-t=
-override-ARM-CFLAGS.patch
>>  create mode 100644 recipes-devtools/nodejs/nodejs-18.17.1/big-endian.pa=
tch
>>  create mode 100644 recipes-devtools/nodejs/nodejs-18.17.1/libatomic.pat=
ch
>>  create mode 100644 recipes-devtools/nodejs/nodejs-18.17.1/mips-less-mem=
ory.patch
>>  create mode 100755 recipes-devtools/nodejs/nodejs-18.17.1/run-ptest
>>  create mode 100644 recipes-devtools/nodejs/nodejs-18.17.1/system-c-ares=
.patch
>>  create mode 100644 recipes-devtools/nodejs/nodejs-20.8.1/0001-Disable-r=
unning-gyp-files-for-bundled-deps.patch
>>  create mode 100644 recipes-devtools/nodejs/nodejs-20.8.1/0001-Revert-io=
_uring-changes-from-libuv-1.46.0.patch
>>  create mode 100644 recipes-devtools/nodejs/nodejs-20.8.1/0001-Using-nat=
ive-binaries.patch
>>  create mode 100644 recipes-devtools/nodejs/nodejs-20.8.1/0001-liftoff-C=
orrect-function-signatures.patch
>>  create mode 100644 recipes-devtools/nodejs/nodejs-20.8.1/0001-ppc64-Do-=
not-use-mminimal-toc-with-clang.patch
>>  create mode 100644 recipes-devtools/nodejs/nodejs-20.8.1/0002-Revert-io=
_uring-changes-from-libuv-1.45.0.patch
>>  create mode 100644 recipes-devtools/nodejs/nodejs-20.8.1/0004-v8-don-t-=
override-ARM-CFLAGS.patch
>>  create mode 100644 recipes-devtools/nodejs/nodejs-20.8.1/libatomic.patc=
h
>>  create mode 100755 recipes-devtools/nodejs/nodejs-20.8.1/run-ptest
>>  create mode 100644 recipes-devtools/nodejs/nodejs-20.8.1/system-c-ares.=
patch
>>  create mode 100755 recipes-devtools/nodejs/nodejs-oe-cache-18.17/oe-npm=
-cache
>>  create mode 100755 recipes-devtools/nodejs/nodejs-oe-cache-20.5/oe-npm-=
cache
>>  create mode 100644 recipes-devtools/nodejs/nodejs-oe-cache-native_18.17=
.bb
>>  create mode 100644 recipes-devtools/nodejs/nodejs-oe-cache-native_20.5.=
bb
>>  create mode 100644 recipes-devtools/nodejs/nodejs_18.17.1.bb
>>  create mode 100644 recipes-devtools/nodejs/nodejs_20.8.1.bb
>>
>> diff --git a/COPYING.MIT b/COPYING.MIT
>> new file mode 100644
>> index 0000000..fb950dc
>> --- /dev/null
>> +++ b/COPYING.MIT
>> @@ -0,0 +1,17 @@
>> +Permission is hereby granted, free of charge, to any person obtaining a=
 copy
>> +of this software and associated documentation files (the "Software"), t=
o deal
>> +in the Software without restriction, including without limitation the r=
ights
>> +to use, copy, modify, merge, publish, distribute, sublicense, and/or se=
ll
>> +copies of the Software, and to permit persons to whom the Software is
>> +furnished to do so, subject to the following conditions:
>> +
>> +The above copyright notice and this permission notice shall be included=
 in
>> +all copies or substantial portions of the Software.
>> +
>> +THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS=
 OR
>> +IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY=
,
>> +FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL=
 THE
>> +AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
>> +LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING=
 FROM,
>> +OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS =
IN
>> +THE SOFTWARE.
>> diff --git a/README b/README
>> new file mode 100644
>> index 0000000..57433de
>> --- /dev/null
>> +++ b/README
>> @@ -0,0 +1,22 @@
>> +"Mixin" layer for adding latest nodejs-18.x into the Yocto Project LTS.
>> +
>> +At the time Kirkstone was released in May 2022, nodejs v16 was the late=
st
>> +version and officially it's the only nodejs version supported by Kirkst=
one.
>> +Kirkstone will be supported until April 2026 but nodejs-16 is EOL as of=
 October
>> +2023, making it unsuitable for projects during the lifetimg of Kirkston=
e.
>> +
>> +This mixin layer is meant to address this issue by backporting nodejs-1=
8 and
>> +nodejs-20 versions from the mickledore and master branches of meta-open=
embedded,
>> +respectively.
>> +
>> +The actual versions of nodejs that are available can be found by inspec=
ting the
>> +contents of recipes-devtools/nodejs.
>> +
>> +Including the layer automatically picks up the latest nodejs version; d=
ifferent
>> +versions must be set explicitly by adding the following line to your di=
stro
>> +config or local.conf:
>> +
>> +NODE_VERSION =3D "20%"
>> +
>> +Maintainers:
>> +Ant=C3=B3nio Oliveira <antonio@amsobr.com>
>> diff --git a/conf/layer.conf b/conf/layer.conf
>> new file mode 100644
>> index 0000000..4ef1e91
>> --- /dev/null
>> +++ b/conf/layer.conf
>> @@ -0,0 +1,20 @@
>> +# We have a conf and classes directory, append to BBPATH
>> +BBPATH .=3D ":${LAYERDIR}"
>> +
>> +# We have a recipes directory, add to BBFILES
>> +BBFILES +=3D "${LAYERDIR}/recipes*/*/*.bb ${LAYERDIR}/recipes*/*/*.bbap=
pend"
>> +
>> +BBFILE_COLLECTIONS +=3D "lts-nodejs-mixin"
>> +BBFILE_PATTERN_lts-nodejs-mixin :=3D "^${LAYERDIR}/"
>> +BBFILE_PRIORITY_lts-nodejs-mixin =3D "6"
>> +
>> +LAYERSERIES_COMPAT_lts-nodejs-mixin =3D "kirkstone"
>> +
>> +LAYERDEPENDS_lts-nodejs-mixin =3D " \
>> +    core \
>> +"
>
>
> Hi Antonio,
>
> Looks like the recipe recipes-devtools/nodejs/nodejs_20.8.1.bb
> have ares and brotli enabled by default in PACKAGECONFIG and they
> will pull in dependencies from the openembedded-layer at meta-openembedde=
d/meta-oe.
> So the layer 'openembedded-layer' should be also included in LAYERDEPENDS=
_lts-nodejs-mixin.
>
> +PACKAGECONFIG ??=3D "ares brotli icu zlib"
> +
> +PACKAGECONFIG[ares] =3D "--shared-cares,,c-ares"
> +PACKAGECONFIG[brotli] =3D "--shared-brotli,,brotli"
>
> meta-openembedded/meta-oe/recipes-extended/brotli/brotli_1.1.0.bb
> meta-openembedded/meta-oe/recipes-support/c-ares/c-ares_1.22.1.bb
>
> Jose

OK, that makes sense.

I'll make the dependency explicit in the layer configuration.

>
>> +
>> +NODE_VERSION ??=3D "20.%"
>> +
>> +PREFERRED_VERSION_nodejs ??=3D "${NODE_VERSION}"
>> +PREFERRED_VERSION_nodejs-oe-cache-native ??=3D "${NODE_VERSION}"
>> diff --git a/recipes-devtools/nodejs/nodejs-18.17.1/0001-Disable-running=
-gyp-files-for-bundled-deps.patch b/recipes-devtools/nodejs/nodejs-18.17.1/=
0001-Disable-running-gyp-files-for-bundled-deps.patch
>> new file mode 100644
>> index 0000000..059b5cc
>> --- /dev/null
>> +++ b/recipes-devtools/nodejs/nodejs-18.17.1/0001-Disable-running-gyp-fi=
les-for-bundled-deps.patch
>> @@ -0,0 +1,51 @@
>> +From 7d94bfe53beeb2d25eb5f2ff6b1d509df7e6ab80 Mon Sep 17 00:00:00 2001
>> +From: Zuzana Svetlikova <zsvetlik@redhat.com>
>> +Date: Thu, 27 Apr 2017 14:25:42 +0200
>> +Subject: [PATCH] Disable running gyp on shared deps
>> +
>> +Upstream-Status: Inappropriate [embedded specific]
>> +
>> +Probably imported from:
>> +https://src.fedoraproject.org/rpms/nodejs/c/41af04f2a3c050fb44628e91ac6=
5fd225b927acb?branch=3D22609d8c1bfeaa21fe0057645af20b3a2ccc7f53
>> +which is probably based on dont-run-gyp-files-for-bundled-deps.patch ad=
ded in:
>> +https://github.com/alpinelinux/aports/commit/6662eb3199902e8451fb20dce8=
2554ad96f796bb
>> +
>> +We also explicitly prune some dependencies from source in the bitbake r=
ecipe:
>> +
>> +python prune_sources() {
>> +    import shutil
>> +
>> +    shutil.rmtree(d.getVar('S') + '/deps/openssl')
>> +    if 'ares' in d.getVar('PACKAGECONFIG'):
>> +        shutil.rmtree(d.getVar('S') + '/deps/cares')
>> +    if 'brotli' in d.getVar('PACKAGECONFIG'):
>> +        shutil.rmtree(d.getVar('S') + '/deps/brotli')
>> +    if 'libuv' in d.getVar('PACKAGECONFIG'):
>> +        shutil.rmtree(d.getVar('S') + '/deps/uv')
>> +    if 'nghttp2' in d.getVar('PACKAGECONFIG'):
>> +        shutil.rmtree(d.getVar('S') + '/deps/nghttp2')
>> +    if 'zlib' in d.getVar('PACKAGECONFIG'):
>> +        shutil.rmtree(d.getVar('S') + '/deps/zlib')
>> +}
>> +do_unpack[postfuncs] +=3D "prune_sources"
>> +
>> +Signed-off-by: Archana Polampalli <archana.polampalli@windriver.com>
>> +---
>> + Makefile | 2 +-
>> + 1 file changed, 1 insertion(+), 1 deletion(-)
>> +
>> +diff --git a/Makefile b/Makefile
>> +index 0be0659d..3c442014 100644
>> +--- a/Makefile
>> ++++ b/Makefile
>> +@@ -169,7 +169,7 @@ with-code-cache test-code-cache:
>> +       $(warning '$@' target is a noop)
>> +
>> + out/Makefile: config.gypi common.gypi node.gyp \
>> +-      deps/uv/uv.gyp deps/llhttp/llhttp.gyp deps/zlib/zlib.gyp \
>> ++      deps/llhttp/llhttp.gyp \
>> +       deps/simdutf/simdutf.gyp deps/ada/ada.gyp \
>> +       tools/v8_gypfiles/toolchain.gypi tools/v8_gypfiles/features.gypi=
 \
>> +       tools/v8_gypfiles/inspector.gypi tools/v8_gypfiles/v8.gyp
>> +--
>> +2.40.0
>> diff --git a/recipes-devtools/nodejs/nodejs-18.17.1/0001-Using-native-bi=
naries.patch b/recipes-devtools/nodejs/nodejs-18.17.1/0001-Using-native-bin=
aries.patch
>> new file mode 100644
>> index 0000000..66e10a0
>> --- /dev/null
>> +++ b/recipes-devtools/nodejs/nodejs-18.17.1/0001-Using-native-binaries.=
patch
>> @@ -0,0 +1,77 @@
>> +From 6c3ac20477a4bac643088f24df3c042e627fafa9 Mon Sep 17 00:00:00 2001
>> +From: Guillaume Burel <guillaume.burel@stormshield.eu>
>> +Date: Fri, 3 Jan 2020 11:25:54 +0100
>> +Subject: [PATCH] Using native binaries
>> +
>> +Upstream-Status: Inappropriate [embedded specific]
>> +
>> +Originally added in:
>> +https://git.openembedded.org/meta-openembedded/commit/?id=3D1c8e4a679ae=
382f953b2e5c7a4966a4646314f3e
>> +later extended and renamed in:
>> +https://git.openembedded.org/meta-openembedded/commit/?id=3Dfeeb172d1a8=
bf010490d22b8df9448b20d9d2aed
>> +
>> +Signed-off-by: Archana Polampalli <archana.polampalli@windriver.com>
>> +---
>> + node.gyp                 | 1 +
>> + tools/v8_gypfiles/v8.gyp | 5 +++++
>> + 2 files changed, 6 insertions(+)
>> +
>> +diff --git a/node.gyp b/node.gyp
>> +index e8e1d9f9..e60ccc10 100644
>> +--- a/node.gyp
>> ++++ b/node.gyp
>> +@@ -320,6 +320,7 @@
>> +                   'action_name': 'node_mksnapshot',
>> +                   'process_outputs_as_sources': 1,
>> +                   'inputs': [
>> ++                    '<(PRODUCT_DIR)/v8-qemu-wrapper.sh',
>> +                     '<(node_mksnapshot_exec)',
>> +                     '<(node_snapshot_main)',
>> +                   ],
>> +diff --git a/tools/v8_gypfiles/v8.gyp b/tools/v8_gypfiles/v8.gyp
>> +index 42e26cd9..bc721991 100644
>> +--- a/tools/v8_gypfiles/v8.gyp
>> ++++ b/tools/v8_gypfiles/v8.gyp
>> +@@ -68,6 +68,7 @@
>> +         {
>> +           'action_name': 'run_torque_action',
>> +           'inputs': [  # Order matters.
>> ++            '<(PRODUCT_DIR)/v8-qemu-wrapper.sh',
>> +             '<(PRODUCT_DIR)/<(EXECUTABLE_PREFIX)torque<(EXECUTABLE_SUF=
FIX)',
>> +             '<@(torque_files)',
>> +           ],
>> +@@ -99,6 +100,7 @@
>> +             '<@(torque_outputs_inc)',
>> +           ],
>> +           'action': [
>> ++            '<(PRODUCT_DIR)/v8-qemu-wrapper.sh',
>> +             '<(PRODUCT_DIR)/<(EXECUTABLE_PREFIX)torque<(EXECUTABLE_SUF=
FIX)',
>> +             '-o', '<(SHARED_INTERMEDIATE_DIR)/torque-generated',
>> +             '-v8-root', '<(V8_ROOT)',
>> +@@ -211,6 +213,7 @@
>> +         {
>> +           'action_name': 'generate_bytecode_builtins_list_action',
>> +           'inputs': [
>> ++            '<(PRODUCT_DIR)/v8-qemu-wrapper.sh',
>> +             '<(PRODUCT_DIR)/<(EXECUTABLE_PREFIX)bytecode_builtins_list=
_generator<(EXECUTABLE_SUFFIX)',
>> +           ],
>> +           'outputs': [
>> +@@ -400,6 +403,7 @@
>> +             ],
>> +           },
>> +           'inputs': [
>> ++            '<(PRODUCT_DIR)/v8-qemu-wrapper.sh',
>> +             '<(mksnapshot_exec)',
>> +           ],
>> +           'outputs': [
>> +@@ -1539,6 +1543,7 @@
>> +         {
>> +           'action_name': 'run_gen-regexp-special-case_action',
>> +           'inputs': [
>> ++            '<(PRODUCT_DIR)/v8-qemu-wrapper.sh',
>> +             '<(PRODUCT_DIR)/<(EXECUTABLE_PREFIX)gen-regexp-special-cas=
e<(EXECUTABLE_SUFFIX)',
>> +           ],
>> +           'outputs': [
>> +--
>> +2.34.1
>> +
>> diff --git a/recipes-devtools/nodejs/nodejs-18.17.1/0001-liftoff-Correct=
-function-signatures.patch b/recipes-devtools/nodejs/nodejs-18.17.1/0001-li=
ftoff-Correct-function-signatures.patch
>> new file mode 100644
>> index 0000000..c9a522d
>> --- /dev/null
>> +++ b/recipes-devtools/nodejs/nodejs-18.17.1/0001-liftoff-Correct-functi=
on-signatures.patch
>> @@ -0,0 +1,85 @@
>> +From dc3652c0abcdf8573fd044907b19d8eda7ca1124 Mon Sep 17 00:00:00 2001
>> +From: Khem Raj <raj.khem@gmail.com>
>> +Date: Wed, 20 Oct 2021 12:49:58 -0700
>> +Subject: [PATCH] [liftoff] Correct function signatures
>> +
>> +Fixes builds on mips where clang reports an error
>> +../deps/v8/src/wasm/baseline/mips/liftoff-assembler-mips.h:661:5: error=
: no matching member function for call to 'Move'
>> +    Move(tmp, src, type.value_type());
>> +    ^~~~
>> +
>> +Upstream-Status: Submitted [https://chromium-review.googlesource.com/c/=
v8/v8/+/3235674]
>> +
>> +Signed-off-by: Archana Polampalli <archana.polampalli@windriver.com>
>> +---
>> + deps/v8/src/wasm/baseline/liftoff-assembler.h               | 6 +++---
>> + deps/v8/src/wasm/baseline/mips/liftoff-assembler-mips.h     | 2 +-
>> + deps/v8/src/wasm/baseline/mips64/liftoff-assembler-mips64.h | 2 +-
>> + .../src/wasm/baseline/riscv64/liftoff-assembler-riscv64.h   | 2 +-
>> + 4 files changed, 6 insertions(+), 6 deletions(-)
>> +
>> +diff --git a/deps/v8/src/wasm/baseline/liftoff-assembler.h b/deps/v8/sr=
c/wasm/baseline/liftoff-assembler.h
>> +index 22c7f73a..db4cb168 100644
>> +--- a/deps/v8/src/wasm/baseline/liftoff-assembler.h
>> ++++ b/deps/v8/src/wasm/baseline/liftoff-assembler.h
>> +@@ -646,7 +646,7 @@ class LiftoffAssembler : public TurboAssembler {
>> +   void FinishCall(const ValueKindSig*, compiler::CallDescriptor*);
>> +
>> +   // Move {src} into {dst}. {src} and {dst} must be different.
>> +-  void Move(LiftoffRegister dst, LiftoffRegister src, ValueKind);
>> ++  void Move(LiftoffRegister dst, LiftoffRegister src, ValueKind kind);
>> +
>> +   // Parallel register move: For a list of tuples <dst, src, kind>, mo=
ve the
>> +   // {src} register of kind {kind} into {dst}. If {src} equals {dst}, =
ignore
>> +@@ -795,8 +795,8 @@ class LiftoffAssembler : public TurboAssembler {
>> +   inline void MoveStackValue(uint32_t dst_offset, uint32_t src_offset,
>> +                              ValueKind);
>> +
>> +-  inline void Move(Register dst, Register src, ValueKind);
>> +-  inline void Move(DoubleRegister dst, DoubleRegister src, ValueKind);
>> ++  inline void Move(Register dst, Register src, ValueKind kind);
>> ++  inline void Move(DoubleRegister dst, DoubleRegister src, ValueKind k=
ind);
>> +
>> +   inline void Spill(int offset, LiftoffRegister, ValueKind);
>> +   inline void Spill(int offset, WasmValue);
>> +diff --git a/deps/v8/src/wasm/baseline/mips/liftoff-assembler-mips.h b/=
deps/v8/src/wasm/baseline/mips/liftoff-assembler-mips.h
>> +index c76fd2f4..0fffe231 100644
>> +--- a/deps/v8/src/wasm/baseline/mips/liftoff-assembler-mips.h
>> ++++ b/deps/v8/src/wasm/baseline/mips/liftoff-assembler-mips.h
>> +@@ -661,7 +661,7 @@ void LiftoffAssembler::Store(Register dst_addr, Reg=
ister offset_reg,
>> +     pinned =3D pinned | LiftoffRegList{dst_op.rm(), src};
>> +     LiftoffRegister tmp =3D GetUnusedRegister(src.reg_class(), pinned)=
;
>> +     // Save original value.
>> +-    Move(tmp, src, type.value_type());
>> ++    Move(tmp, src, type.value_type().kind());
>> +
>> +     src =3D tmp;
>> +     pinned.set(tmp);
>> +diff --git a/deps/v8/src/wasm/baseline/mips64/liftoff-assembler-mips64.=
h b/deps/v8/src/wasm/baseline/mips64/liftoff-assembler-mips64.h
>> +index 36413545..48207337 100644
>> +--- a/deps/v8/src/wasm/baseline/mips64/liftoff-assembler-mips64.h
>> ++++ b/deps/v8/src/wasm/baseline/mips64/liftoff-assembler-mips64.h
>> +@@ -593,7 +593,7 @@ void LiftoffAssembler::Store(Register dst_addr, Reg=
ister offset_reg,
>> +     pinned.set(dst_op.rm());
>> +     LiftoffRegister tmp =3D GetUnusedRegister(src.reg_class(), pinned)=
;
>> +     // Save original value.
>> +-    Move(tmp, src, type.value_type());
>> ++    Move(tmp, src, type.value_type().kind());
>> +
>> +     src =3D tmp;
>> +     pinned.set(tmp);
>> +diff --git a/deps/v8/src/wasm/baseline/riscv64/liftoff-assembler-riscv6=
4.h b/deps/v8/src/wasm/baseline/riscv64/liftoff-assembler-riscv64.h
>> +index 642a7d2a..56ffcc2a 100644
>> +--- a/deps/v8/src/wasm/baseline/riscv64/liftoff-assembler-riscv64.h
>> ++++ b/deps/v8/src/wasm/baseline/riscv64/liftoff-assembler-riscv64.h
>> +@@ -589,7 +589,7 @@ void LiftoffAssembler::Store(Register dst_addr, Reg=
ister offset_reg,
>> +     pinned.set(dst_op.rm());
>> +     LiftoffRegister tmp =3D GetUnusedRegister(src.reg_class(), pinned)=
;
>> +     // Save original value.
>> +-    Move(tmp, src, type.value_type());
>> ++    Move(tmp, src, type.value_type().kind());
>> +
>> +     src =3D tmp;
>> +     pinned.set(tmp);
>> +--
>> +2.34.1
>> diff --git a/recipes-devtools/nodejs/nodejs-18.17.1/0001-mips-Use-32bit-=
cast-for-operand-on-mips32.patch b/recipes-devtools/nodejs/nodejs-18.17.1/0=
001-mips-Use-32bit-cast-for-operand-on-mips32.patch
>> new file mode 100644
>> index 0000000..a0242d8
>> --- /dev/null
>> +++ b/recipes-devtools/nodejs/nodejs-18.17.1/0001-mips-Use-32bit-cast-fo=
r-operand-on-mips32.patch
>> @@ -0,0 +1,34 @@
>> +From e65dde8db17da5acddeef7eb9316199c4e5e0811 Mon Sep 17 00:00:00 2001
>> +From: Khem Raj <raj.khem@gmail.com>
>> +Date: Tue, 19 Apr 2022 12:40:25 -0700
>> +Subject: [PATCH] mips: Use 32bit cast for operand on mips32
>> +
>> +Fixes
>> +deps/v8/src/compiler/backend/mips/code-generator-mips.cc: In member fun=
ction 'void v8::internal::compiler::CodeGenerator::AssembleReturn(v8::inter=
nal::compiler::InstructionOperand*)':
>> +../deps/v8/src/compiler/backend/mips/code-generator-mips.cc:4233:48: er=
ror: call of overloaded 'Operand(int64_t)' is ambiguous
>> + 4233 |                 Operand(static_cast<int64_t>(0)));
>> +      |                                                ^
>> +
>> +Upstream-Status: Pending
>> +
>> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> +---
>> + deps/v8/src/compiler/backend/mips/code-generator-mips.cc | 2 +-
>> + 1 file changed, 1 insertion(+), 1 deletion(-)
>> +
>> +diff --git a/deps/v8/src/compiler/backend/mips/code-generator-mips.cc b=
/deps/v8/src/compiler/backend/mips/code-generator-mips.cc
>> +index 2b8197e..b226140 100644
>> +--- a/deps/v8/src/compiler/backend/mips/code-generator-mips.cc
>> ++++ b/deps/v8/src/compiler/backend/mips/code-generator-mips.cc
>> +@@ -4230,7 +4230,7 @@ void CodeGenerator::AssembleReturn(InstructionOpe=
rand* additional_pop_count) {
>> +     } else if (FLAG_debug_code) {
>> +       __ Assert(eq, AbortReason::kUnexpectedAdditionalPopValue,
>> +                 g.ToRegister(additional_pop_count),
>> +-                Operand(static_cast<int64_t>(0)));
>> ++                Operand(static_cast<int32_t>(0)));
>> +     }
>> +   }
>> +   // Functions with JS linkage have at least one parameter (the receiv=
er).
>> +--
>> +2.36.0
>> +
>> diff --git a/recipes-devtools/nodejs/nodejs-18.17.1/0001-ppc64-Do-not-us=
e-mminimal-toc-with-clang.patch b/recipes-devtools/nodejs/nodejs-18.17.1/00=
01-ppc64-Do-not-use-mminimal-toc-with-clang.patch
>> new file mode 100644
>> index 0000000..4773f05
>> --- /dev/null
>> +++ b/recipes-devtools/nodejs/nodejs-18.17.1/0001-ppc64-Do-not-use-mmini=
mal-toc-with-clang.patch
>> @@ -0,0 +1,23 @@
>> +From 0976af0f3b328436ea44a74a406f311adb2ab211 Mon Sep 17 00:00:00 2001
>> +From: Khem Raj <raj.khem@gmail.com>
>> +Date: Tue, 15 Jun 2021 19:01:31 -0700
>> +Subject: [PATCH] ppc64: Do not use -mminimal-toc with clang
>> +
>> +clang does not support this option
>> +
>> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> +---
>> + common.gypi | 2 +-
>> + 1 file changed, 1 insertion(+), 1 deletion(-)
>> +
>> +--- a/common.gypi
>> ++++ b/common.gypi
>> +@@ -417,7 +417,7 @@
>> +             'ldflags': [ '-m32' ],
>> +           }],
>> +           [ 'target_arch=3D=3D"ppc64" and OS!=3D"aix"', {
>> +-            'cflags': [ '-m64', '-mminimal-toc' ],
>> ++            'cflags': [ '-m64' ],
>> +             'ldflags': [ '-m64' ],
>> +           }],
>> +           [ 'target_arch=3D=3D"s390x"', {
>> diff --git a/recipes-devtools/nodejs/nodejs-18.17.1/0004-v8-don-t-overri=
de-ARM-CFLAGS.patch b/recipes-devtools/nodejs/nodejs-18.17.1/0004-v8-don-t-=
override-ARM-CFLAGS.patch
>> new file mode 100644
>> index 0000000..97ed972
>> --- /dev/null
>> +++ b/recipes-devtools/nodejs/nodejs-18.17.1/0004-v8-don-t-override-ARM-=
CFLAGS.patch
>> @@ -0,0 +1,102 @@
>> +From 47ee5cc5501289205d3e8e9f27ea9daf18cebac1 Mon Sep 17 00:00:00 2001
>> +From: =3D?UTF-8?q?Andr=3DC3=3DA9=3D20Draszik?=3D <git@andred.net>
>> +Date: Sat, 9 Nov 2019 14:45:30 +0000
>> +Subject: [PATCH] v8: don't override ARM CFLAGS
>> +MIME-Version: 1.0
>> +Content-Type: text/plain; charset=3DUTF-8
>> +Content-Transfer-Encoding: 8bit
>> +
>> +This overrides yocto-provided build flags with its own, e.g we get
>> +    arm-poky-linux-musleabi-g++  -mthumb -mfpu=3Dneon -mfloat-abi=3Dhar=
d -mcpu=3Dcortex-a7 \
>> +                                 ... \
>> +                                  -march=3Darmv7-a -mfpu=3Dneon -mfloat=
-abi=3Dhard -marm
>> +
>> +Causing the latter to override the former, and compiler warnings:
>> +    cc1plus: warning: switch '-mcpu=3Dcortex-a7' conflicts with '-march=
=3Darmv7-a' switch
>> +
>> +Patch this out, so that yocto-provided flags take precedence.
>> +Note that in reality the same should probably be done for all the other
>> +supported architectures, too.
>> +
>> +Note that this also switches to Thumb(2) mode (in my case). No obvious
>> +problems have been noted during compilation or runtime.
>> +
>> +Upstream-Status: Inappropriate [oe-specific]
>> +Signed-off-by: Andr=C3=A9 Draszik <git@andred.net>
>> +---
>> + tools/v8_gypfiles/toolchain.gypi | 52 ++------------------------------
>> + 1 file changed, 2 insertions(+), 50 deletions(-)
>> +
>> +diff --git a/tools/v8_gypfiles/toolchain.gypi b/tools/v8_gypfiles/toolc=
hain.gypi
>> +index 264b3e478e..0b41848145 100644
>> +--- a/tools/v8_gypfiles/toolchain.gypi
>> ++++ b/tools/v8_gypfiles/toolchain.gypi
>> +@@ -211,31 +211,7 @@
>> +         'target_conditions': [
>> +           ['_toolset=3D=3D"host"', {
>> +             'conditions': [
>> +-              ['v8_target_arch=3D=3Dhost_arch', {
>> +-                # Host built with an Arm CXX compiler.
>> +-                'conditions': [
>> +-                  [ 'arm_version=3D=3D7', {
>> +-                    'cflags': ['-march=3Darmv7-a',],
>> +-                  }],
>> +-                  [ 'arm_version=3D=3D7 or arm_version=3D=3D"default"'=
, {
>> +-                    'conditions': [
>> +-                      [ 'arm_fpu!=3D"default"', {
>> +-                        'cflags': ['-mfpu=3D<(arm_fpu)',],
>> +-                      }],
>> +-                    ],
>> +-                  }],
>> +-                  [ 'arm_float_abi!=3D"default"', {
>> +-                    'cflags': ['-mfloat-abi=3D<(arm_float_abi)',],
>> +-                  }],
>> +-                  [ 'arm_thumb=3D=3D1', {
>> +-                    'cflags': ['-mthumb',],
>> +-                  }],
>> +-                  [ 'arm_thumb=3D=3D0', {
>> +-                    'cflags': ['-marm',],
>> +-                  }],
>> +-                ],
>> +-              }, {
>> +-                # 'v8_target_arch!=3Dhost_arch'
>> ++              ['v8_target_arch!=3Dhost_arch', {
>> +                 # Host not built with an Arm CXX compiler (simulator b=
uild).
>> +                 'conditions': [
>> +                   [ 'arm_float_abi=3D=3D"hard"', {
>> +@@ -254,31 +230,7 @@
>> +           }],  # _toolset=3D=3D"host"
>> +           ['_toolset=3D=3D"target"', {
>> +             'conditions': [
>> +-              ['v8_target_arch=3D=3Dtarget_arch', {
>> +-                # Target built with an Arm CXX compiler.
>> +-                'conditions': [
>> +-                  [ 'arm_version=3D=3D7', {
>> +-                    'cflags': ['-march=3Darmv7-a',],
>> +-                  }],
>> +-                  [ 'arm_version=3D=3D7 or arm_version=3D=3D"default"'=
, {
>> +-                    'conditions': [
>> +-                      [ 'arm_fpu!=3D"default"', {
>> +-                        'cflags': ['-mfpu=3D<(arm_fpu)',],
>> +-                      }],
>> +-                    ],
>> +-                  }],
>> +-                  [ 'arm_float_abi!=3D"default"', {
>> +-                    'cflags': ['-mfloat-abi=3D<(arm_float_abi)',],
>> +-                  }],
>> +-                  [ 'arm_thumb=3D=3D1', {
>> +-                    'cflags': ['-mthumb',],
>> +-                  }],
>> +-                  [ 'arm_thumb=3D=3D0', {
>> +-                    'cflags': ['-marm',],
>> +-                  }],
>> +-                ],
>> +-              }, {
>> +-                # 'v8_target_arch!=3Dtarget_arch'
>> ++              ['v8_target_arch!=3Dtarget_arch', {
>> +                 # Target not built with an Arm CXX compiler (simulator=
 build).
>> +                 'conditions': [
>> +                   [ 'arm_float_abi=3D=3D"hard"', {
>> +--
>> +2.20.1
>> +
>> diff --git a/recipes-devtools/nodejs/nodejs-18.17.1/big-endian.patch b/r=
ecipes-devtools/nodejs/nodejs-18.17.1/big-endian.patch
>> new file mode 100644
>> index 0000000..5293818
>> --- /dev/null
>> +++ b/recipes-devtools/nodejs/nodejs-18.17.1/big-endian.patch
>> @@ -0,0 +1,18 @@
>> +
>> +https://github.com/v8/v8/commit/878ccb33bd3cf0e6dc018ff8d15843f585ac07b=
e
>> +
>> +did some automated cleanups but it missed big-endian code.
>> +
>> +Upstream-Status: Pending
>> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> +--- a/deps/v8/src/runtime/runtime-utils.h
>> ++++ b/deps/v8/src/runtime/runtime-utils.h
>> +@@ -126,7 +126,7 @@ static inline ObjectPair MakePair(Object
>> + #if defined(V8_TARGET_LITTLE_ENDIAN)
>> +   return x.ptr() | (static_cast<ObjectPair>(y.ptr()) << 32);
>> + #elif defined(V8_TARGET_BIG_ENDIAN)
>> +-  return y->ptr() | (static_cast<ObjectPair>(x->ptr()) << 32);
>> ++  return y.ptr() | (static_cast<ObjectPair>(x.ptr()) << 32);
>> + #else
>> + #error Unknown endianness
>> + #endif
>> diff --git a/recipes-devtools/nodejs/nodejs-18.17.1/libatomic.patch b/re=
cipes-devtools/nodejs/nodejs-18.17.1/libatomic.patch
>> new file mode 100644
>> index 0000000..cb02373
>> --- /dev/null
>> +++ b/recipes-devtools/nodejs/nodejs-18.17.1/libatomic.patch
>> @@ -0,0 +1,21 @@
>> +Link mksnapshot with libatomic on x86
>> +
>> +Clang-12 on x86 emits atomic builtins
>> +
>> +Fixes
>> +| module-compiler.cc:(.text._ZN2v88internal4wasm12_GLOBAL__N_123Execute=
CompilationUnitsERKSt10shared_ptrINS2_22BackgroundCompileTokenEEPNS0_8Count=
ersEiNS2_19CompileBaselineOnlyE+0x558): un
>> +defined reference to `__atomic_load'
>> +
>> +Upstream-Status: Pending
>> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> +
>> +--- a/tools/v8_gypfiles/v8.gyp
>> ++++ b/tools/v8_gypfiles/v8.gyp
>> +@@ -1436,6 +1436,7 @@
>> +     {
>> +       'target_name': 'mksnapshot',
>> +       'type': 'executable',
>> ++      'libraries': [ '-latomic' ],
>> +       'dependencies': [
>> +         'v8_base_without_compiler',
>> +         'v8_compiler_for_mksnapshot',
>> diff --git a/recipes-devtools/nodejs/nodejs-18.17.1/mips-less-memory.pat=
ch b/recipes-devtools/nodejs/nodejs-18.17.1/mips-less-memory.patch
>> new file mode 100644
>> index 0000000..16776cb
>> --- /dev/null
>> +++ b/recipes-devtools/nodejs/nodejs-18.17.1/mips-less-memory.patch
>> @@ -0,0 +1,37 @@
>> +Description: mksnapshot uses too much memory on 32-bit mipsel
>> +Author: J=C3=A9r=C3=A9my Lal <kapouer@melix.org>
>> +Last-Update: 2020-06-03
>> +Forwarded: https://bugs.chromium.org/p/v8/issues/detail?id=3D10586
>> +
>> +This ensures that we reserve 500M instead of 2G range for codegen
>> +ensures that qemu-mips can allocate such large ranges
>> +
>> +Upstream-Status: Inappropriate [embedded specific]
>> +
>> +Imported from debian https://salsa.debian.org/js-team/nodejs/-/blob/mas=
ter-12.x/debian/patches/mips-less-memory.patch
>> +https://buildd.debian.org/status/fetch.php?pkg=3Dnodejs&arch=3Dmipsel&v=
er=3D12.17.0~dfsg-2&stamp=3D1591050388&raw=3D0
>> +
>> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> +
>> +--- a/deps/v8/src/common/globals.h
>> ++++ b/deps/v8/src/common/globals.h
>> +@@ -224,7 +224,7 @@ constexpr size_t kMinimumCodeRangeSize =3D
>> + constexpr size_t kMinExpectedOSPageSize =3D 64 * KB;  // OS page on PP=
C Linux
>> + #elif V8_TARGET_ARCH_MIPS
>> + constexpr bool kPlatformRequiresCodeRange =3D false;
>> +-constexpr size_t kMaximalCodeRangeSize =3D 2048LL * MB;
>> ++constexpr size_t kMaximalCodeRangeSize =3D 512 * MB;
>> + constexpr size_t kMinimumCodeRangeSize =3D 0 * MB;
>> + constexpr size_t kMinExpectedOSPageSize =3D 4 * KB;  // OS page.
>> + #else
>> +--- a/deps/v8/src/codegen/mips/constants-mips.h
>> ++++ b/deps/v8/src/codegen/mips/constants-mips.h
>> +@@ -140,7 +140,7 @@ const uint32_t kLeastSignificantByteInIn
>> + namespace v8 {
>> + namespace internal {
>> +
>> +-constexpr size_t kMaxPCRelativeCodeRangeInMB =3D 4096;
>> ++constexpr size_t kMaxPCRelativeCodeRangeInMB =3D 1024;
>> +
>> + // -------------------------------------------------------------------=
----------
>> + // Registers and FPURegisters.
>> diff --git a/recipes-devtools/nodejs/nodejs-18.17.1/run-ptest b/recipes-=
devtools/nodejs/nodejs-18.17.1/run-ptest
>> new file mode 100755
>> index 0000000..07a8f2a
>> --- /dev/null
>> +++ b/recipes-devtools/nodejs/nodejs-18.17.1/run-ptest
>> @@ -0,0 +1,3 @@
>> +#!/bin/sh
>> +
>> +./cctest
>> diff --git a/recipes-devtools/nodejs/nodejs-18.17.1/system-c-ares.patch =
b/recipes-devtools/nodejs/nodejs-18.17.1/system-c-ares.patch
>> new file mode 100644
>> index 0000000..141889a
>> --- /dev/null
>> +++ b/recipes-devtools/nodejs/nodejs-18.17.1/system-c-ares.patch
>> @@ -0,0 +1,24 @@
>> +keep nodejs compatible with c-ares 1.17.1
>> +
>> +Upstream-Status: Inappropriate [c-ares specific]
>> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> +
>> +--- a/src/cares_wrap.h
>> ++++ b/src/cares_wrap.h
>> +@@ -22,7 +22,15 @@
>> + # include <netdb.h>
>> + #endif  // __POSIX__
>> +
>> +-# include <ares_nameser.h>
>> ++#if defined(__ANDROID__) || \
>> ++    defined(__MINGW32__) || \
>> ++    defined(__OpenBSD__) || \
>> ++    defined(_MSC_VER)
>> ++
>> ++# include <nameser.h>
>> ++#else
>> ++# include <arpa/nameser.h>
>> ++#endif
>> +
>> + namespace node {
>> + namespace cares_wrap {
>> diff --git a/recipes-devtools/nodejs/nodejs-20.8.1/0001-Disable-running-=
gyp-files-for-bundled-deps.patch b/recipes-devtools/nodejs/nodejs-20.8.1/00=
01-Disable-running-gyp-files-for-bundled-deps.patch
>> new file mode 100644
>> index 0000000..12f6cd8
>> --- /dev/null
>> +++ b/recipes-devtools/nodejs/nodejs-20.8.1/0001-Disable-running-gyp-fil=
es-for-bundled-deps.patch
>> @@ -0,0 +1,46 @@
>> +From 7d94bfe53beeb2d25eb5f2ff6b1d509df7e6ab80 Mon Sep 17 00:00:00 2001
>> +From: Zuzana Svetlikova <zsvetlik@redhat.com>
>> +Date: Thu, 27 Apr 2017 14:25:42 +0200
>> +Subject: [PATCH] Disable running gyp on shared deps
>> +
>> +Upstream-Status: Inappropriate [embedded specific]
>> +
>> +Probably imported from:
>> +https://src.fedoraproject.org/rpms/nodejs/c/41af04f2a3c050fb44628e91ac6=
5fd225b927acb?branch=3D22609d8c1bfeaa21fe0057645af20b3a2ccc7f53
>> +which is probably based on dont-run-gyp-files-for-bundled-deps.patch ad=
ded in:
>> +https://github.com/alpinelinux/aports/commit/6662eb3199902e8451fb20dce8=
2554ad96f796bb
>> +
>> +We also explicitly prune some dependencies from source in the bitbake r=
ecipe:
>> +
>> +python prune_sources() {
>> +    import shutil
>> +
>> +    shutil.rmtree(d.getVar('S') + '/deps/openssl')
>> +    if 'ares' in d.getVar('PACKAGECONFIG'):
>> +        shutil.rmtree(d.getVar('S') + '/deps/cares')
>> +    if 'brotli' in d.getVar('PACKAGECONFIG'):
>> +        shutil.rmtree(d.getVar('S') + '/deps/brotli')
>> +    if 'libuv' in d.getVar('PACKAGECONFIG'):
>> +        shutil.rmtree(d.getVar('S') + '/deps/uv')
>> +    if 'nghttp2' in d.getVar('PACKAGECONFIG'):
>> +        shutil.rmtree(d.getVar('S') + '/deps/nghttp2')
>> +    if 'zlib' in d.getVar('PACKAGECONFIG'):
>> +        shutil.rmtree(d.getVar('S') + '/deps/zlib')
>> +}
>> +do_unpack[postfuncs] +=3D "prune_sources"
>> +
>> +---
>> + Makefile | 2 +-
>> + 1 file changed, 1 insertion(+), 1 deletion(-)
>> +
>> +--- a/Makefile
>> ++++ b/Makefile
>> +@@ -169,7 +169,7 @@ with-code-cache test-code-cache:
>> +       $(warning '$@' target is a noop)
>> +
>> + out/Makefile: config.gypi common.gypi node.gyp \
>> +-      deps/uv/uv.gyp deps/llhttp/llhttp.gyp deps/zlib/zlib.gyp \
>> ++      deps/llhttp/llhttp.gyp \
>> +       deps/simdutf/simdutf.gyp deps/ada/ada.gyp \
>> +       tools/v8_gypfiles/toolchain.gypi tools/v8_gypfiles/features.gypi=
 \
>> +       tools/v8_gypfiles/inspector.gypi tools/v8_gypfiles/v8.gyp
>> diff --git a/recipes-devtools/nodejs/nodejs-20.8.1/0001-Revert-io_uring-=
changes-from-libuv-1.46.0.patch b/recipes-devtools/nodejs/nodejs-20.8.1/000=
1-Revert-io_uring-changes-from-libuv-1.46.0.patch
>> new file mode 100644
>> index 0000000..d98463d
>> --- /dev/null
>> +++ b/recipes-devtools/nodejs/nodejs-20.8.1/0001-Revert-io_uring-changes=
-from-libuv-1.46.0.patch
>> @@ -0,0 +1,3414 @@
>> +From 937dfa70104b7401a7570a98cf6e0a534e250557 Mon Sep 17 00:00:00 2001
>> +From: Martin Jansa <martin.jansa@gmail.com>
>> +Date: Wed, 18 Oct 2023 22:43:55 +0200
>> +Subject: [PATCH] Revert io_uring changes from libuv-1.46.0
>> +
>> +Included in nodejs-20.4.0 with the libuv upgrade to 1.46.0 in:
>> +https://github.com/nodejs/node/commit/6199e1946c9abd59bd71a61870a4f6c85=
e100b18
>> +
>> +Revert "linux: work around io_uring IORING_OP_CLOSE bug (#4059)"
>> +This reverts commit 1752791c9ea89dbf54e2a20a9d9f899119a2d179.
>> +Revert "linux: fs_read to use io_uring if iovcnt > IOV_MAX (#4023)"
>> +This reverts commit e7b96331703e929e75d93c574573c9736e34b0c0.
>> +Revert "linux: add some more iouring backed fs ops (#4012)"
>> +This reverts commit 962b8e626ceaaf296eecab1d008e8b70dc6da5e7.
>> +Revert "android: disable io_uring support (#4016)"
>> +This reverts commit 281e6185cc9e77c582ff6ca9e4c00d57e6b90d95.
>> +Revert "unix,win: replace QUEUE with struct uv__queue (#4022)"
>> +This reverts commit 1b01b786c0180d29f07dccbb98001a2b3148828a.
>> +Revert "fs: use WTF-8 on Windows (#2970)"
>> +This reverts commit 8f32a14afaaa47514a7d28e1e069a8329e2dd939.
>> +
>> +Dropped deps/uv/docs deps/uv/test changes as these dirs aren't included
>> +in nodejs tarballs.
>> +
>> +Signed-off-by: Martin Jansa <martin.jansa@gmail.com>
>> +---
>> +Upstream-Status: Inappropriate [OE specific]
>> +
>> + deps/uv/include/uv.h                     |  10 +-
>> + deps/uv/include/uv/darwin.h              |   6 +-
>> + deps/uv/include/uv/linux.h               |   2 +-
>> + deps/uv/include/uv/threadpool.h          |   2 +-
>> + deps/uv/include/uv/unix.h                |  44 ++--
>> + deps/uv/include/uv/win.h                 |   4 +-
>> + deps/uv/src/queue.h                      | 154 ++++++-----
>> + deps/uv/src/threadpool.c                 |  72 +++---
>> + deps/uv/src/unix/aix.c                   |  14 +-
>> + deps/uv/src/unix/async.c                 |  52 ++--
>> + deps/uv/src/unix/core.c                  |  53 ++--
>> + deps/uv/src/unix/fs.c                    |  41 +--
>> + deps/uv/src/unix/fsevents.c              |  84 +++---
>> + deps/uv/src/unix/internal.h              |  11 -
>> + deps/uv/src/unix/kqueue.c                |  18 +-
>> + deps/uv/src/unix/linux.c                 | 257 +++----------------
>> + deps/uv/src/unix/loop-watcher.c          |  20 +-
>> + deps/uv/src/unix/loop.c                  |  28 +-
>> + deps/uv/src/unix/os390-syscalls.c        |  24 +-
>> + deps/uv/src/unix/os390-syscalls.h        |   2 +-
>> + deps/uv/src/unix/os390.c                 |  14 +-
>> + deps/uv/src/unix/pipe.c                  |   2 +-
>> + deps/uv/src/unix/posix-poll.c            |  14 +-
>> + deps/uv/src/unix/process.c               |  38 +--
>> + deps/uv/src/unix/signal.c                |   8 +-
>> + deps/uv/src/unix/stream.c                |  56 ++--
>> + deps/uv/src/unix/sunos.c                 |  18 +-
>> + deps/uv/src/unix/tcp.c                   |   4 +-
>> + deps/uv/src/unix/tty.c                   |   2 +-
>> + deps/uv/src/unix/udp.c                   |  76 +++---
>> + deps/uv/src/uv-common.c                  |  28 +-
>> + deps/uv/src/uv-common.h                  |   3 +-
>> + deps/uv/src/win/core.c                   |   6 +-
>> + deps/uv/src/win/fs.c                     | 311 ++++++++---------------
>> + deps/uv/src/win/handle-inl.h             |   2 +-
>> + deps/uv/src/win/pipe.c                   |  26 +-
>> + deps/uv/src/win/tcp.c                    |   4 +-
>> + deps/uv/src/win/udp.c                    |   4 +-
>> + deps/uv/test/test-fs.c                   |  53 ----
>> + deps/uv/test/test-list.h                 |   2 -
>> + deps/uv/test/test-queue-foreach-delete.c |   5 +-
>> + deps/uv/test/test-threadpool-cancel.c    |   5 -
>> + 42 files changed, 625 insertions(+), 954 deletions(-)
>> +
>> +diff --git a/deps/uv/include/uv.h b/deps/uv/include/uv.h
>> +index 02397dd0fdd..1af95289776 100644
>> +--- a/deps/uv/include/uv.h
>> ++++ b/deps/uv/include/uv.h
>> +@@ -59,12 +59,6 @@ extern "C" {
>> + #include <stdio.h>
>> + #include <stdint.h>
>> +
>> +-/* Internal type, do not use. */
>> +-struct uv__queue {
>> +-  struct uv__queue* next;
>> +-  struct uv__queue* prev;
>> +-};
>> +-
>> + #if defined(_WIN32)
>> + # include "uv/win.h"
>> + #else
>> +@@ -466,7 +460,7 @@ struct uv_shutdown_s {
>> +   uv_handle_type type;                                                =
        \
>> +   /* private */                                                       =
        \
>> +   uv_close_cb close_cb;                                               =
        \
>> +-  struct uv__queue handle_queue;                                      =
        \
>> ++  void* handle_queue[2];                                              =
        \
>> +   union {                                                             =
        \
>> +     int fd;                                                           =
        \
>> +     void* reserved[4];                                                =
        \
>> +@@ -1870,7 +1864,7 @@ struct uv_loop_s {
>> +   void* data;
>> +   /* Loop reference counting. */
>> +   unsigned int active_handles;
>> +-  struct uv__queue handle_queue;
>> ++  void* handle_queue[2];
>> +   union {
>> +     void* unused;
>> +     unsigned int count;
>> +diff --git a/deps/uv/include/uv/darwin.h b/deps/uv/include/uv/darwin.h
>> +index 06962bfda80..d226415820b 100644
>> +--- a/deps/uv/include/uv/darwin.h
>> ++++ b/deps/uv/include/uv/darwin.h
>> +@@ -40,7 +40,7 @@
>> +   void* cf_state;                                                     =
        \
>> +   uv_mutex_t cf_mutex;                                                =
        \
>> +   uv_sem_t cf_sem;                                                    =
        \
>> +-  struct uv__queue cf_signals;                                        =
        \
>> ++  void* cf_signals[2];                                                =
        \
>> +
>> + #define UV_PLATFORM_FS_EVENT_FIELDS                                   =
        \
>> +   uv__io_t event_watcher;                                             =
        \
>> +@@ -48,8 +48,8 @@
>> +   int realpath_len;                                                   =
        \
>> +   int cf_flags;                                                       =
        \
>> +   uv_async_t* cf_cb;                                                  =
        \
>> +-  struct uv__queue cf_events;                                         =
        \
>> +-  struct uv__queue cf_member;                                         =
        \
>> ++  void* cf_events[2];                                                 =
        \
>> ++  void* cf_member[2];                                                 =
        \
>> +   int cf_error;                                                       =
        \
>> +   uv_mutex_t cf_mutex;                                                =
        \
>> +
>> +diff --git a/deps/uv/include/uv/linux.h b/deps/uv/include/uv/linux.h
>> +index 9f22f8cf726..9b38405a190 100644
>> +--- a/deps/uv/include/uv/linux.h
>> ++++ b/deps/uv/include/uv/linux.h
>> +@@ -28,7 +28,7 @@
>> +   int inotify_fd;                                                     =
        \
>> +
>> + #define UV_PLATFORM_FS_EVENT_FIELDS                                   =
        \
>> +-  struct uv__queue watchers;                                          =
        \
>> ++  void* watchers[2];                                                  =
        \
>> +   int wd;                                                             =
        \
>> +
>> + #endif /* UV_LINUX_H */
>> +diff --git a/deps/uv/include/uv/threadpool.h b/deps/uv/include/uv/threa=
dpool.h
>> +index 24ce916fda4..9708ebdd530 100644
>> +--- a/deps/uv/include/uv/threadpool.h
>> ++++ b/deps/uv/include/uv/threadpool.h
>> +@@ -31,7 +31,7 @@ struct uv__work {
>> +   void (*work)(struct uv__work *w);
>> +   void (*done)(struct uv__work *w, int status);
>> +   struct uv_loop_s* loop;
>> +-  struct uv__queue wq;
>> ++  void* wq[2];
>> + };
>> +
>> + #endif /* UV_THREADPOOL_H_ */
>> +diff --git a/deps/uv/include/uv/unix.h b/deps/uv/include/uv/unix.h
>> +index 09f88a56742..95447b8dd67 100644
>> +--- a/deps/uv/include/uv/unix.h
>> ++++ b/deps/uv/include/uv/unix.h
>> +@@ -92,8 +92,8 @@ typedef struct uv__io_s uv__io_t;
>> +
>> + struct uv__io_s {
>> +   uv__io_cb cb;
>> +-  struct uv__queue pending_queue;
>> +-  struct uv__queue watcher_queue;
>> ++  void* pending_queue[2];
>> ++  void* watcher_queue[2];
>> +   unsigned int pevents; /* Pending event mask i.e. mask at next tick. =
*/
>> +   unsigned int events;  /* Current event mask. */
>> +   int fd;
>> +@@ -220,21 +220,21 @@ typedef struct {
>> + #define UV_LOOP_PRIVATE_FIELDS                                        =
        \
>> +   unsigned long flags;                                                =
        \
>> +   int backend_fd;                                                     =
        \
>> +-  struct uv__queue pending_queue;                                     =
        \
>> +-  struct uv__queue watcher_queue;                                     =
        \
>> ++  void* pending_queue[2];                                             =
        \
>> ++  void* watcher_queue[2];                                             =
        \
>> +   uv__io_t** watchers;                                                =
        \
>> +   unsigned int nwatchers;                                             =
        \
>> +   unsigned int nfds;                                                  =
        \
>> +-  struct uv__queue wq;                                                =
        \
>> ++  void* wq[2];                                                        =
        \
>> +   uv_mutex_t wq_mutex;                                                =
        \
>> +   uv_async_t wq_async;                                                =
        \
>> +   uv_rwlock_t cloexec_lock;                                           =
        \
>> +   uv_handle_t* closing_handles;                                       =
        \
>> +-  struct uv__queue process_handles;                                   =
        \
>> +-  struct uv__queue prepare_handles;                                   =
        \
>> +-  struct uv__queue check_handles;                                     =
        \
>> +-  struct uv__queue idle_handles;                                      =
        \
>> +-  struct uv__queue async_handles;                                     =
        \
>> ++  void* process_handles[2];                                           =
        \
>> ++  void* prepare_handles[2];                                           =
        \
>> ++  void* check_handles[2];                                             =
        \
>> ++  void* idle_handles[2];                                              =
        \
>> ++  void* async_handles[2];                                             =
        \
>> +   void (*async_unused)(void);  /* TODO(bnoordhuis) Remove in libuv v2.=
 */     \
>> +   uv__io_t async_io_watcher;                                          =
        \
>> +   int async_wfd;                                                      =
        \
>> +@@ -257,7 +257,7 @@ typedef struct {
>> + #define UV_PRIVATE_REQ_TYPES /* empty */
>> +
>> + #define UV_WRITE_PRIVATE_FIELDS                                       =
        \
>> +-  struct uv__queue queue;                                             =
        \
>> ++  void* queue[2];                                                     =
        \
>> +   unsigned int write_index;                                           =
        \
>> +   uv_buf_t* bufs;                                                     =
        \
>> +   unsigned int nbufs;                                                 =
        \
>> +@@ -265,12 +265,12 @@ typedef struct {
>> +   uv_buf_t bufsml[4];                                                 =
        \
>> +
>> + #define UV_CONNECT_PRIVATE_FIELDS                                     =
        \
>> +-  struct uv__queue queue;                                             =
        \
>> ++  void* queue[2];                                                     =
        \
>> +
>> + #define UV_SHUTDOWN_PRIVATE_FIELDS /* empty */
>> +
>> + #define UV_UDP_SEND_PRIVATE_FIELDS                                    =
        \
>> +-  struct uv__queue queue;                                             =
        \
>> ++  void* queue[2];                                                     =
        \
>> +   struct sockaddr_storage addr;                                       =
        \
>> +   unsigned int nbufs;                                                 =
        \
>> +   uv_buf_t* bufs;                                                     =
        \
>> +@@ -286,8 +286,8 @@ typedef struct {
>> +   uv_connect_t *connect_req;                                          =
        \
>> +   uv_shutdown_t *shutdown_req;                                        =
        \
>> +   uv__io_t io_watcher;                                                =
        \
>> +-  struct uv__queue write_queue;                                       =
        \
>> +-  struct uv__queue write_completed_queue;                             =
        \
>> ++  void* write_queue[2];                                               =
        \
>> ++  void* write_completed_queue[2];                                     =
        \
>> +   uv_connection_cb connection_cb;                                     =
        \
>> +   int delayed_error;                                                  =
        \
>> +   int accepted_fd;                                                    =
        \
>> +@@ -300,8 +300,8 @@ typedef struct {
>> +   uv_alloc_cb alloc_cb;                                               =
        \
>> +   uv_udp_recv_cb recv_cb;                                             =
        \
>> +   uv__io_t io_watcher;                                                =
        \
>> +-  struct uv__queue write_queue;                                       =
        \
>> +-  struct uv__queue write_completed_queue;                             =
        \
>> ++  void* write_queue[2];                                               =
        \
>> ++  void* write_completed_queue[2];                                     =
        \
>> +
>> + #define UV_PIPE_PRIVATE_FIELDS                                        =
        \
>> +   const char* pipe_fname; /* NULL or strdup'ed */
>> +@@ -311,19 +311,19 @@ typedef struct {
>> +
>> + #define UV_PREPARE_PRIVATE_FIELDS                                     =
        \
>> +   uv_prepare_cb prepare_cb;                                           =
        \
>> +-  struct uv__queue queue;                                             =
        \
>> ++  void* queue[2];                                                     =
        \
>> +
>> + #define UV_CHECK_PRIVATE_FIELDS                                       =
        \
>> +   uv_check_cb check_cb;                                               =
        \
>> +-  struct uv__queue queue;                                             =
        \
>> ++  void* queue[2];                                                     =
        \
>> +
>> + #define UV_IDLE_PRIVATE_FIELDS                                        =
        \
>> +   uv_idle_cb idle_cb;                                                 =
        \
>> +-  struct uv__queue queue;                                             =
        \
>> ++  void* queue[2];                                                     =
        \
>> +
>> + #define UV_ASYNC_PRIVATE_FIELDS                                       =
        \
>> +   uv_async_cb async_cb;                                               =
        \
>> +-  struct uv__queue queue;                                             =
        \
>> ++  void* queue[2];                                                     =
        \
>> +   int pending;                                                        =
        \
>> +
>> + #define UV_TIMER_PRIVATE_FIELDS                                       =
        \
>> +@@ -352,7 +352,7 @@ typedef struct {
>> +   int retcode;
>> +
>> + #define UV_PROCESS_PRIVATE_FIELDS                                     =
        \
>> +-  struct uv__queue queue;                                             =
        \
>> ++  void* queue[2];                                                     =
        \
>> +   int status;                                                         =
        \
>> +
>> + #define UV_FS_PRIVATE_FIELDS                                          =
        \
>> +diff --git a/deps/uv/include/uv/win.h b/deps/uv/include/uv/win.h
>> +index 6f8c47298e4..92a95fa15f1 100644
>> +--- a/deps/uv/include/uv/win.h
>> ++++ b/deps/uv/include/uv/win.h
>> +@@ -357,7 +357,7 @@ typedef struct {
>> +   /* Counter to started timer */                                      =
        \
>> +   uint64_t timer_counter;                                             =
        \
>> +   /* Threadpool */                                                    =
        \
>> +-  struct uv__queue wq;                                                =
        \
>> ++  void* wq[2];                                                        =
        \
>> +   uv_mutex_t wq_mutex;                                                =
        \
>> +   uv_async_t wq_async;
>> +
>> +@@ -486,7 +486,7 @@ typedef struct {
>> +     uint32_t payload_remaining;                                       =
        \
>> +     uint64_t dummy; /* TODO: retained for ABI compat; remove this in v=
2.x. */ \
>> +   } ipc_data_frame;                                                   =
        \
>> +-  struct uv__queue ipc_xfer_queue;                                    =
        \
>> ++  void* ipc_xfer_queue[2];                                            =
        \
>> +   int ipc_xfer_queue_length;                                          =
        \
>> +   uv_write_t* non_overlapped_writes_tail;                             =
        \
>> +   CRITICAL_SECTION readfile_thread_lock;                              =
        \
>> +diff --git a/deps/uv/src/queue.h b/deps/uv/src/queue.h
>> +index 5f8489e9bc5..ff3540a0a51 100644
>> +--- a/deps/uv/src/queue.h
>> ++++ b/deps/uv/src/queue.h
>> +@@ -18,73 +18,91 @@
>> +
>> + #include <stddef.h>
>> +
>> +-#define uv__queue_data(pointer, type, field)                          =
        \
>> +-  ((type*) ((char*) (pointer) - offsetof(type, field)))
>> +-
>> +-#define uv__queue_foreach(q, h)                                       =
        \
>> +-  for ((q) =3D (h)->next; (q) !=3D (h); (q) =3D (q)->next)
>> +-
>> +-static inline void uv__queue_init(struct uv__queue* q) {
>> +-  q->next =3D q;
>> +-  q->prev =3D q;
>> +-}
>> +-
>> +-static inline int uv__queue_empty(const struct uv__queue* q) {
>> +-  return q =3D=3D q->next;
>> +-}
>> +-
>> +-static inline struct uv__queue* uv__queue_head(const struct uv__queue*=
 q) {
>> +-  return q->next;
>> +-}
>> +-
>> +-static inline struct uv__queue* uv__queue_next(const struct uv__queue*=
 q) {
>> +-  return q->next;
>> +-}
>> +-
>> +-static inline void uv__queue_add(struct uv__queue* h, struct uv__queue=
* n) {
>> +-  h->prev->next =3D n->next;
>> +-  n->next->prev =3D h->prev;
>> +-  h->prev =3D n->prev;
>> +-  h->prev->next =3D h;
>> +-}
>> +-
>> +-static inline void uv__queue_split(struct uv__queue* h,
>> +-                                   struct uv__queue* q,
>> +-                                   struct uv__queue* n) {
>> +-  n->prev =3D h->prev;
>> +-  n->prev->next =3D n;
>> +-  n->next =3D q;
>> +-  h->prev =3D q->prev;
>> +-  h->prev->next =3D h;
>> +-  q->prev =3D n;
>> +-}
>> +-
>> +-static inline void uv__queue_move(struct uv__queue* h, struct uv__queu=
e* n) {
>> +-  if (uv__queue_empty(h))
>> +-    uv__queue_init(n);
>> +-  else
>> +-    uv__queue_split(h, h->next, n);
>> +-}
>> +-
>> +-static inline void uv__queue_insert_head(struct uv__queue* h,
>> +-                                         struct uv__queue* q) {
>> +-  q->next =3D h->next;
>> +-  q->prev =3D h;
>> +-  q->next->prev =3D q;
>> +-  h->next =3D q;
>> +-}
>> +-
>> +-static inline void uv__queue_insert_tail(struct uv__queue* h,
>> +-                                         struct uv__queue* q) {
>> +-  q->next =3D h;
>> +-  q->prev =3D h->prev;
>> +-  q->prev->next =3D q;
>> +-  h->prev =3D q;
>> +-}
>> +-
>> +-static inline void uv__queue_remove(struct uv__queue* q) {
>> +-  q->prev->next =3D q->next;
>> +-  q->next->prev =3D q->prev;
>> +-}
>> ++typedef void *QUEUE[2];
>> ++
>> ++/* Private macros. */
>> ++#define QUEUE_NEXT(q)       (*(QUEUE **) &((*(q))[0]))
>> ++#define QUEUE_PREV(q)       (*(QUEUE **) &((*(q))[1]))
>> ++#define QUEUE_PREV_NEXT(q)  (QUEUE_NEXT(QUEUE_PREV(q)))
>> ++#define QUEUE_NEXT_PREV(q)  (QUEUE_PREV(QUEUE_NEXT(q)))
>> ++
>> ++/* Public macros. */
>> ++#define QUEUE_DATA(ptr, type, field)                                  =
        \
>> ++  ((type *) ((char *) (ptr) - offsetof(type, field)))
>> ++
>> ++/* Important note: mutating the list while QUEUE_FOREACH is
>> ++ * iterating over its elements results in undefined behavior.
>> ++ */
>> ++#define QUEUE_FOREACH(q, h)                                           =
        \
>> ++  for ((q) =3D QUEUE_NEXT(h); (q) !=3D (h); (q) =3D QUEUE_NEXT(q))
>> ++
>> ++#define QUEUE_EMPTY(q)                                                =
        \
>> ++  ((const QUEUE *) (q) =3D=3D (const QUEUE *) QUEUE_NEXT(q))
>> ++
>> ++#define QUEUE_HEAD(q)                                                 =
        \
>> ++  (QUEUE_NEXT(q))
>> ++
>> ++#define QUEUE_INIT(q)                                                 =
        \
>> ++  do {                                                                =
        \
>> ++    QUEUE_NEXT(q) =3D (q);                                            =
          \
>> ++    QUEUE_PREV(q) =3D (q);                                            =
          \
>> ++  }                                                                   =
        \
>> ++  while (0)
>> ++
>> ++#define QUEUE_ADD(h, n)                                               =
        \
>> ++  do {                                                                =
        \
>> ++    QUEUE_PREV_NEXT(h) =3D QUEUE_NEXT(n);                             =
          \
>> ++    QUEUE_NEXT_PREV(n) =3D QUEUE_PREV(h);                             =
          \
>> ++    QUEUE_PREV(h) =3D QUEUE_PREV(n);                                  =
          \
>> ++    QUEUE_PREV_NEXT(h) =3D (h);                                       =
          \
>> ++  }                                                                   =
        \
>> ++  while (0)
>> ++
>> ++#define QUEUE_SPLIT(h, q, n)                                          =
        \
>> ++  do {                                                                =
        \
>> ++    QUEUE_PREV(n) =3D QUEUE_PREV(h);                                  =
          \
>> ++    QUEUE_PREV_NEXT(n) =3D (n);                                       =
          \
>> ++    QUEUE_NEXT(n) =3D (q);                                            =
          \
>> ++    QUEUE_PREV(h) =3D QUEUE_PREV(q);                                  =
          \
>> ++    QUEUE_PREV_NEXT(h) =3D (h);                                       =
          \
>> ++    QUEUE_PREV(q) =3D (n);                                            =
          \
>> ++  }                                                                   =
        \
>> ++  while (0)
>> ++
>> ++#define QUEUE_MOVE(h, n)                                              =
        \
>> ++  do {                                                                =
        \
>> ++    if (QUEUE_EMPTY(h))                                               =
        \
>> ++      QUEUE_INIT(n);                                                  =
        \
>> ++    else {                                                            =
        \
>> ++      QUEUE* q =3D QUEUE_HEAD(h);                                     =
          \
>> ++      QUEUE_SPLIT(h, q, n);                                           =
        \
>> ++    }                                                                 =
        \
>> ++  }                                                                   =
        \
>> ++  while (0)
>> ++
>> ++#define QUEUE_INSERT_HEAD(h, q)                                       =
        \
>> ++  do {                                                                =
        \
>> ++    QUEUE_NEXT(q) =3D QUEUE_NEXT(h);                                  =
          \
>> ++    QUEUE_PREV(q) =3D (h);                                            =
          \
>> ++    QUEUE_NEXT_PREV(q) =3D (q);                                       =
          \
>> ++    QUEUE_NEXT(h) =3D (q);                                            =
          \
>> ++  }                                                                   =
        \
>> ++  while (0)
>> ++
>> ++#define QUEUE_INSERT_TAIL(h, q)                                       =
        \
>> ++  do {                                                                =
        \
>> ++    QUEUE_NEXT(q) =3D (h);                                            =
          \
>> ++    QUEUE_PREV(q) =3D QUEUE_PREV(h);                                  =
          \
>> ++    QUEUE_PREV_NEXT(q) =3D (q);                                       =
          \
>> ++    QUEUE_PREV(h) =3D (q);                                            =
          \
>> ++  }                                                                   =
        \
>> ++  while (0)
>> ++
>> ++#define QUEUE_REMOVE(q)                                               =
        \
>> ++  do {                                                                =
        \
>> ++    QUEUE_PREV_NEXT(q) =3D QUEUE_NEXT(q);                             =
          \
>> ++    QUEUE_NEXT_PREV(q) =3D QUEUE_PREV(q);                             =
          \
>> ++  }                                                                   =
        \
>> ++  while (0)
>> +
>> + #endif /* QUEUE_H_ */
>> +diff --git a/deps/uv/src/threadpool.c b/deps/uv/src/threadpool.c
>> +index dbef67f2f10..51962bf0021 100644
>> +--- a/deps/uv/src/threadpool.c
>> ++++ b/deps/uv/src/threadpool.c
>> +@@ -37,10 +37,10 @@ static unsigned int slow_io_work_running;
>> + static unsigned int nthreads;
>> + static uv_thread_t* threads;
>> + static uv_thread_t default_threads[4];
>> +-static struct uv__queue exit_message;
>> +-static struct uv__queue wq;
>> +-static struct uv__queue run_slow_work_message;
>> +-static struct uv__queue slow_io_pending_wq;
>> ++static QUEUE exit_message;
>> ++static QUEUE wq;
>> ++static QUEUE run_slow_work_message;
>> ++static QUEUE slow_io_pending_wq;
>> +
>> + static unsigned int slow_work_thread_threshold(void) {
>> +   return (nthreads + 1) / 2;
>> +@@ -56,7 +56,7 @@ static void uv__cancelled(struct uv__work* w) {
>> +  */
>> + static void worker(void* arg) {
>> +   struct uv__work* w;
>> +-  struct uv__queue* q;
>> ++  QUEUE* q;
>> +   int is_slow_work;
>> +
>> +   uv_sem_post((uv_sem_t*) arg);
>> +@@ -68,49 +68,49 @@ static void worker(void* arg) {
>> +
>> +     /* Keep waiting while either no work is present or only slow I/O
>> +        and we're at the threshold for that. */
>> +-    while (uv__queue_empty(&wq) ||
>> +-           (uv__queue_head(&wq) =3D=3D &run_slow_work_message &&
>> +-            uv__queue_next(&run_slow_work_message) =3D=3D &wq &&
>> ++    while (QUEUE_EMPTY(&wq) ||
>> ++           (QUEUE_HEAD(&wq) =3D=3D &run_slow_work_message &&
>> ++            QUEUE_NEXT(&run_slow_work_message) =3D=3D &wq &&
>> +             slow_io_work_running >=3D slow_work_thread_threshold())) {
>> +       idle_threads +=3D 1;
>> +       uv_cond_wait(&cond, &mutex);
>> +       idle_threads -=3D 1;
>> +     }
>> +
>> +-    q =3D uv__queue_head(&wq);
>> ++    q =3D QUEUE_HEAD(&wq);
>> +     if (q =3D=3D &exit_message) {
>> +       uv_cond_signal(&cond);
>> +       uv_mutex_unlock(&mutex);
>> +       break;
>> +     }
>> +
>> +-    uv__queue_remove(q);
>> +-    uv__queue_init(q);  /* Signal uv_cancel() that the work req is exe=
cuting. */
>> ++    QUEUE_REMOVE(q);
>> ++    QUEUE_INIT(q);  /* Signal uv_cancel() that the work req is executi=
ng. */
>> +
>> +     is_slow_work =3D 0;
>> +     if (q =3D=3D &run_slow_work_message) {
>> +       /* If we're at the slow I/O threshold, re-schedule until after a=
ll
>> +          other work in the queue is done. */
>> +       if (slow_io_work_running >=3D slow_work_thread_threshold()) {
>> +-        uv__queue_insert_tail(&wq, q);
>> ++        QUEUE_INSERT_TAIL(&wq, q);
>> +         continue;
>> +       }
>> +
>> +       /* If we encountered a request to run slow I/O work but there is=
 none
>> +          to run, that means it's cancelled =3D> Start over. */
>> +-      if (uv__queue_empty(&slow_io_pending_wq))
>> ++      if (QUEUE_EMPTY(&slow_io_pending_wq))
>> +         continue;
>> +
>> +       is_slow_work =3D 1;
>> +       slow_io_work_running++;
>> +
>> +-      q =3D uv__queue_head(&slow_io_pending_wq);
>> +-      uv__queue_remove(q);
>> +-      uv__queue_init(q);
>> ++      q =3D QUEUE_HEAD(&slow_io_pending_wq);
>> ++      QUEUE_REMOVE(q);
>> ++      QUEUE_INIT(q);
>> +
>> +       /* If there is more slow I/O work, schedule it to be run as well=
. */
>> +-      if (!uv__queue_empty(&slow_io_pending_wq)) {
>> +-        uv__queue_insert_tail(&wq, &run_slow_work_message);
>> ++      if (!QUEUE_EMPTY(&slow_io_pending_wq)) {
>> ++        QUEUE_INSERT_TAIL(&wq, &run_slow_work_message);
>> +         if (idle_threads > 0)
>> +           uv_cond_signal(&cond);
>> +       }
>> +@@ -118,13 +118,13 @@ static void worker(void* arg) {
>> +
>> +     uv_mutex_unlock(&mutex);
>> +
>> +-    w =3D uv__queue_data(q, struct uv__work, wq);
>> ++    w =3D QUEUE_DATA(q, struct uv__work, wq);
>> +     w->work(w);
>> +
>> +     uv_mutex_lock(&w->loop->wq_mutex);
>> +     w->work =3D NULL;  /* Signal uv_cancel() that the work req is done
>> +                         executing. */
>> +-    uv__queue_insert_tail(&w->loop->wq, &w->wq);
>> ++    QUEUE_INSERT_TAIL(&w->loop->wq, &w->wq);
>> +     uv_async_send(&w->loop->wq_async);
>> +     uv_mutex_unlock(&w->loop->wq_mutex);
>> +
>> +@@ -139,12 +139,12 @@ static void worker(void* arg) {
>> + }
>> +
>> +
>> +-static void post(struct uv__queue* q, enum uv__work_kind kind) {
>> ++static void post(QUEUE* q, enum uv__work_kind kind) {
>> +   uv_mutex_lock(&mutex);
>> +   if (kind =3D=3D UV__WORK_SLOW_IO) {
>> +     /* Insert into a separate queue. */
>> +-    uv__queue_insert_tail(&slow_io_pending_wq, q);
>> +-    if (!uv__queue_empty(&run_slow_work_message)) {
>> ++    QUEUE_INSERT_TAIL(&slow_io_pending_wq, q);
>> ++    if (!QUEUE_EMPTY(&run_slow_work_message)) {
>> +       /* Running slow I/O tasks is already scheduled =3D> Nothing to d=
o here.
>> +          The worker that runs said other task will schedule this one a=
s well. */
>> +       uv_mutex_unlock(&mutex);
>> +@@ -153,7 +153,7 @@ static void post(struct uv__queue* q, enum uv__work=
_kind kind) {
>> +     q =3D &run_slow_work_message;
>> +   }
>> +
>> +-  uv__queue_insert_tail(&wq, q);
>> ++  QUEUE_INSERT_TAIL(&wq, q);
>> +   if (idle_threads > 0)
>> +     uv_cond_signal(&cond);
>> +   uv_mutex_unlock(&mutex);
>> +@@ -220,9 +220,9 @@ static void init_threads(void) {
>> +   if (uv_mutex_init(&mutex))
>> +     abort();
>> +
>> +-  uv__queue_init(&wq);
>> +-  uv__queue_init(&slow_io_pending_wq);
>> +-  uv__queue_init(&run_slow_work_message);
>> ++  QUEUE_INIT(&wq);
>> ++  QUEUE_INIT(&slow_io_pending_wq);
>> ++  QUEUE_INIT(&run_slow_work_message);
>> +
>> +   if (uv_sem_init(&sem, 0))
>> +     abort();
>> +@@ -285,9 +285,9 @@ static int uv__work_cancel(uv_loop_t* loop, uv_req_=
t* req, struct uv__work* w) {
>> +   uv_mutex_lock(&mutex);
>> +   uv_mutex_lock(&w->loop->wq_mutex);
>> +
>> +-  cancelled =3D !uv__queue_empty(&w->wq) && w->work !=3D NULL;
>> ++  cancelled =3D !QUEUE_EMPTY(&w->wq) && w->work !=3D NULL;
>> +   if (cancelled)
>> +-    uv__queue_remove(&w->wq);
>> ++    QUEUE_REMOVE(&w->wq);
>> +
>> +   uv_mutex_unlock(&w->loop->wq_mutex);
>> +   uv_mutex_unlock(&mutex);
>> +@@ -297,7 +297,7 @@ static int uv__work_cancel(uv_loop_t* loop, uv_req_=
t* req, struct uv__work* w) {
>> +
>> +   w->work =3D uv__cancelled;
>> +   uv_mutex_lock(&loop->wq_mutex);
>> +-  uv__queue_insert_tail(&loop->wq, &w->wq);
>> ++  QUEUE_INSERT_TAIL(&loop->wq, &w->wq);
>> +   uv_async_send(&loop->wq_async);
>> +   uv_mutex_unlock(&loop->wq_mutex);
>> +
>> +@@ -308,21 +308,21 @@ static int uv__work_cancel(uv_loop_t* loop, uv_re=
q_t* req, struct uv__work* w) {
>> + void uv__work_done(uv_async_t* handle) {
>> +   struct uv__work* w;
>> +   uv_loop_t* loop;
>> +-  struct uv__queue* q;
>> +-  struct uv__queue wq;
>> ++  QUEUE* q;
>> ++  QUEUE wq;
>> +   int err;
>> +   int nevents;
>> +
>> +   loop =3D container_of(handle, uv_loop_t, wq_async);
>> +   uv_mutex_lock(&loop->wq_mutex);
>> +-  uv__queue_move(&loop->wq, &wq);
>> ++  QUEUE_MOVE(&loop->wq, &wq);
>> +   uv_mutex_unlock(&loop->wq_mutex);
>> +
>> +   nevents =3D 0;
>> +
>> +-  while (!uv__queue_empty(&wq)) {
>> +-    q =3D uv__queue_head(&wq);
>> +-    uv__queue_remove(q);
>> ++  while (!QUEUE_EMPTY(&wq)) {
>> ++    q =3D QUEUE_HEAD(&wq);
>> ++    QUEUE_REMOVE(q);
>> +
>> +     w =3D container_of(q, struct uv__work, wq);
>> +     err =3D (w->work =3D=3D uv__cancelled) ? UV_ECANCELED : 0;
>> +diff --git a/deps/uv/src/unix/aix.c b/deps/uv/src/unix/aix.c
>> +index 3af3009a216..f1afbed49ec 100644
>> +--- a/deps/uv/src/unix/aix.c
>> ++++ b/deps/uv/src/unix/aix.c
>> +@@ -136,7 +136,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +   struct pollfd pqry;
>> +   struct pollfd* pe;
>> +   struct poll_ctl pc;
>> +-  struct uv__queue* q;
>> ++  QUEUE* q;
>> +   uv__io_t* w;
>> +   uint64_t base;
>> +   uint64_t diff;
>> +@@ -151,18 +151,18 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +   int reset_timeout;
>> +
>> +   if (loop->nfds =3D=3D 0) {
>> +-    assert(uv__queue_empty(&loop->watcher_queue));
>> ++    assert(QUEUE_EMPTY(&loop->watcher_queue));
>> +     return;
>> +   }
>> +
>> +   lfields =3D uv__get_internal_fields(loop);
>> +
>> +-  while (!uv__queue_empty(&loop->watcher_queue)) {
>> +-    q =3D uv__queue_head(&loop->watcher_queue);
>> +-    uv__queue_remove(q);
>> +-    uv__queue_init(q);
>> ++  while (!QUEUE_EMPTY(&loop->watcher_queue)) {
>> ++    q =3D QUEUE_HEAD(&loop->watcher_queue);
>> ++    QUEUE_REMOVE(q);
>> ++    QUEUE_INIT(q);
>> +
>> +-    w =3D uv__queue_data(q, uv__io_t, watcher_queue);
>> ++    w =3D QUEUE_DATA(q, uv__io_t, watcher_queue);
>> +     assert(w->pevents !=3D 0);
>> +     assert(w->fd >=3D 0);
>> +     assert(w->fd < (int) loop->nwatchers);
>> +diff --git a/deps/uv/src/unix/async.c b/deps/uv/src/unix/async.c
>> +index 0ff2669e30a..5751b6d02be 100644
>> +--- a/deps/uv/src/unix/async.c
>> ++++ b/deps/uv/src/unix/async.c
>> +@@ -55,7 +55,7 @@ int uv_async_init(uv_loop_t* loop, uv_async_t* handle=
, uv_async_cb async_cb) {
>> +   handle->pending =3D 0;
>> +   handle->u.fd =3D 0; /* This will be used as a busy flag. */
>> +
>> +-  uv__queue_insert_tail(&loop->async_handles, &handle->queue);
>> ++  QUEUE_INSERT_TAIL(&loop->async_handles, &handle->queue);
>> +   uv__handle_start(handle);
>> +
>> +   return 0;
>> +@@ -124,7 +124,7 @@ static void uv__async_spin(uv_async_t* handle) {
>> +
>> + void uv__async_close(uv_async_t* handle) {
>> +   uv__async_spin(handle);
>> +-  uv__queue_remove(&handle->queue);
>> ++  QUEUE_REMOVE(&handle->queue);
>> +   uv__handle_stop(handle);
>> + }
>> +
>> +@@ -132,8 +132,8 @@ void uv__async_close(uv_async_t* handle) {
>> + static void uv__async_io(uv_loop_t* loop, uv__io_t* w, unsigned int ev=
ents) {
>> +   char buf[1024];
>> +   ssize_t r;
>> +-  struct uv__queue queue;
>> +-  struct uv__queue* q;
>> ++  QUEUE queue;
>> ++  QUEUE* q;
>> +   uv_async_t* h;
>> +   _Atomic int *pending;
>> +
>> +@@ -157,13 +157,13 @@ static void uv__async_io(uv_loop_t* loop, uv__io_=
t* w, unsigned int events) {
>> +     abort();
>> +   }
>> +
>> +-  uv__queue_move(&loop->async_handles, &queue);
>> +-  while (!uv__queue_empty(&queue)) {
>> +-    q =3D uv__queue_head(&queue);
>> +-    h =3D uv__queue_data(q, uv_async_t, queue);
>> ++  QUEUE_MOVE(&loop->async_handles, &queue);
>> ++  while (!QUEUE_EMPTY(&queue)) {
>> ++    q =3D QUEUE_HEAD(&queue);
>> ++    h =3D QUEUE_DATA(q, uv_async_t, queue);
>> +
>> +-    uv__queue_remove(q);
>> +-    uv__queue_insert_tail(&loop->async_handles, q);
>> ++    QUEUE_REMOVE(q);
>> ++    QUEUE_INSERT_TAIL(&loop->async_handles, q);
>> +
>> +     /* Atomically fetch and clear pending flag */
>> +     pending =3D (_Atomic int*) &h->pending;
>> +@@ -241,8 +241,8 @@ static int uv__async_start(uv_loop_t* loop) {
>> +
>> +
>> + void uv__async_stop(uv_loop_t* loop) {
>> +-  struct uv__queue queue;
>> +-  struct uv__queue* q;
>> ++  QUEUE queue;
>> ++  QUEUE* q;
>> +   uv_async_t* h;
>> +
>> +   if (loop->async_io_watcher.fd =3D=3D -1)
>> +@@ -251,13 +251,13 @@ void uv__async_stop(uv_loop_t* loop) {
>> +   /* Make sure no other thread is accessing the async handle fd after =
the loop
>> +    * cleanup.
>> +    */
>> +-  uv__queue_move(&loop->async_handles, &queue);
>> +-  while (!uv__queue_empty(&queue)) {
>> +-    q =3D uv__queue_head(&queue);
>> +-    h =3D uv__queue_data(q, uv_async_t, queue);
>> ++  QUEUE_MOVE(&loop->async_handles, &queue);
>> ++  while (!QUEUE_EMPTY(&queue)) {
>> ++    q =3D QUEUE_HEAD(&queue);
>> ++    h =3D QUEUE_DATA(q, uv_async_t, queue);
>> +
>> +-    uv__queue_remove(q);
>> +-    uv__queue_insert_tail(&loop->async_handles, q);
>> ++    QUEUE_REMOVE(q);
>> ++    QUEUE_INSERT_TAIL(&loop->async_handles, q);
>> +
>> +     uv__async_spin(h);
>> +   }
>> +@@ -275,20 +275,20 @@ void uv__async_stop(uv_loop_t* loop) {
>> +
>> +
>> + int uv__async_fork(uv_loop_t* loop) {
>> +-  struct uv__queue queue;
>> +-  struct uv__queue* q;
>> ++  QUEUE queue;
>> ++  QUEUE* q;
>> +   uv_async_t* h;
>> +
>> +   if (loop->async_io_watcher.fd =3D=3D -1) /* never started */
>> +     return 0;
>> +
>> +-  uv__queue_move(&loop->async_handles, &queue);
>> +-  while (!uv__queue_empty(&queue)) {
>> +-    q =3D uv__queue_head(&queue);
>> +-    h =3D uv__queue_data(q, uv_async_t, queue);
>> ++  QUEUE_MOVE(&loop->async_handles, &queue);
>> ++  while (!QUEUE_EMPTY(&queue)) {
>> ++    q =3D QUEUE_HEAD(&queue);
>> ++    h =3D QUEUE_DATA(q, uv_async_t, queue);
>> +
>> +-    uv__queue_remove(q);
>> +-    uv__queue_insert_tail(&loop->async_handles, q);
>> ++    QUEUE_REMOVE(q);
>> ++    QUEUE_INSERT_TAIL(&loop->async_handles, q);
>> +
>> +     /* The state of any thread that set pending is now likely corrupt =
in this
>> +      * child because the user called fork, so just clear these flags a=
nd move
>> +diff --git a/deps/uv/src/unix/core.c b/deps/uv/src/unix/core.c
>> +index 25c5181f370..55aa962787e 100644
>> +--- a/deps/uv/src/unix/core.c
>> ++++ b/deps/uv/src/unix/core.c
>> +@@ -344,7 +344,7 @@ static void uv__finish_close(uv_handle_t* handle) {
>> +   }
>> +
>> +   uv__handle_unref(handle);
>> +-  uv__queue_remove(&handle->handle_queue);
>> ++  QUEUE_REMOVE(&handle->handle_queue);
>> +
>> +   if (handle->close_cb) {
>> +     handle->close_cb(handle);
>> +@@ -380,7 +380,7 @@ int uv_backend_fd(const uv_loop_t* loop) {
>> + static int uv__loop_alive(const uv_loop_t* loop) {
>> +   return uv__has_active_handles(loop) ||
>> +          uv__has_active_reqs(loop) ||
>> +-         !uv__queue_empty(&loop->pending_queue) ||
>> ++         !QUEUE_EMPTY(&loop->pending_queue) ||
>> +          loop->closing_handles !=3D NULL;
>> + }
>> +
>> +@@ -389,8 +389,8 @@ static int uv__backend_timeout(const uv_loop_t* loo=
p) {
>> +   if (loop->stop_flag =3D=3D 0 &&
>> +       /* uv__loop_alive(loop) && */
>> +       (uv__has_active_handles(loop) || uv__has_active_reqs(loop)) &&
>> +-      uv__queue_empty(&loop->pending_queue) &&
>> +-      uv__queue_empty(&loop->idle_handles) &&
>> ++      QUEUE_EMPTY(&loop->pending_queue) &&
>> ++      QUEUE_EMPTY(&loop->idle_handles) &&
>> +       (loop->flags & UV_LOOP_REAP_CHILDREN) =3D=3D 0 &&
>> +       loop->closing_handles =3D=3D NULL)
>> +     return uv__next_timeout(loop);
>> +@@ -399,7 +399,7 @@ static int uv__backend_timeout(const uv_loop_t* loo=
p) {
>> +
>> +
>> + int uv_backend_timeout(const uv_loop_t* loop) {
>> +-  if (uv__queue_empty(&loop->watcher_queue))
>> ++  if (QUEUE_EMPTY(&loop->watcher_queue))
>> +     return uv__backend_timeout(loop);
>> +   /* Need to call uv_run to update the backend fd state. */
>> +   return 0;
>> +@@ -431,8 +431,7 @@ int uv_run(uv_loop_t* loop, uv_run_mode mode) {
>> +
>> +   while (r !=3D 0 && loop->stop_flag =3D=3D 0) {
>> +     can_sleep =3D
>> +-        uv__queue_empty(&loop->pending_queue) &&
>> +-        uv__queue_empty(&loop->idle_handles);
>> ++        QUEUE_EMPTY(&loop->pending_queue) && QUEUE_EMPTY(&loop->idle_h=
andles);
>> +
>> +     uv__run_pending(loop);
>> +     uv__run_idle(loop);
>> +@@ -448,7 +447,7 @@ int uv_run(uv_loop_t* loop, uv_run_mode mode) {
>> +
>> +     /* Process immediate callbacks (e.g. write_cb) a small fixed numbe=
r of
>> +      * times to avoid loop starvation.*/
>> +-    for (r =3D 0; r < 8 && !uv__queue_empty(&loop->pending_queue); r++=
)
>> ++    for (r =3D 0; r < 8 && !QUEUE_EMPTY(&loop->pending_queue); r++)
>> +       uv__run_pending(loop);
>> +
>> +     /* Run one final update on the provider_idle_time in case uv__io_p=
oll
>> +@@ -827,17 +826,17 @@ int uv_fileno(const uv_handle_t* handle, uv_os_fd=
_t* fd) {
>> +
>> +
>> + static void uv__run_pending(uv_loop_t* loop) {
>> +-  struct uv__queue* q;
>> +-  struct uv__queue pq;
>> ++  QUEUE* q;
>> ++  QUEUE pq;
>> +   uv__io_t* w;
>> +
>> +-  uv__queue_move(&loop->pending_queue, &pq);
>> ++  QUEUE_MOVE(&loop->pending_queue, &pq);
>> +
>> +-  while (!uv__queue_empty(&pq)) {
>> +-    q =3D uv__queue_head(&pq);
>> +-    uv__queue_remove(q);
>> +-    uv__queue_init(q);
>> +-    w =3D uv__queue_data(q, uv__io_t, pending_queue);
>> ++  while (!QUEUE_EMPTY(&pq)) {
>> ++    q =3D QUEUE_HEAD(&pq);
>> ++    QUEUE_REMOVE(q);
>> ++    QUEUE_INIT(q);
>> ++    w =3D QUEUE_DATA(q, uv__io_t, pending_queue);
>> +     w->cb(loop, w, POLLOUT);
>> +   }
>> + }
>> +@@ -892,8 +891,8 @@ static void maybe_resize(uv_loop_t* loop, unsigned =
int len) {
>> + void uv__io_init(uv__io_t* w, uv__io_cb cb, int fd) {
>> +   assert(cb !=3D NULL);
>> +   assert(fd >=3D -1);
>> +-  uv__queue_init(&w->pending_queue);
>> +-  uv__queue_init(&w->watcher_queue);
>> ++  QUEUE_INIT(&w->pending_queue);
>> ++  QUEUE_INIT(&w->watcher_queue);
>> +   w->cb =3D cb;
>> +   w->fd =3D fd;
>> +   w->events =3D 0;
>> +@@ -919,8 +918,8 @@ void uv__io_start(uv_loop_t* loop, uv__io_t* w, uns=
igned int events) {
>> +     return;
>> + #endif
>> +
>> +-  if (uv__queue_empty(&w->watcher_queue))
>> +-    uv__queue_insert_tail(&loop->watcher_queue, &w->watcher_queue);
>> ++  if (QUEUE_EMPTY(&w->watcher_queue))
>> ++    QUEUE_INSERT_TAIL(&loop->watcher_queue, &w->watcher_queue);
>> +
>> +   if (loop->watchers[w->fd] =3D=3D NULL) {
>> +     loop->watchers[w->fd] =3D w;
>> +@@ -945,8 +944,8 @@ void uv__io_stop(uv_loop_t* loop, uv__io_t* w, unsi=
gned int events) {
>> +   w->pevents &=3D ~events;
>> +
>> +   if (w->pevents =3D=3D 0) {
>> +-    uv__queue_remove(&w->watcher_queue);
>> +-    uv__queue_init(&w->watcher_queue);
>> ++    QUEUE_REMOVE(&w->watcher_queue);
>> ++    QUEUE_INIT(&w->watcher_queue);
>> +     w->events =3D 0;
>> +
>> +     if (w =3D=3D loop->watchers[w->fd]) {
>> +@@ -955,14 +954,14 @@ void uv__io_stop(uv_loop_t* loop, uv__io_t* w, un=
signed int events) {
>> +       loop->nfds--;
>> +     }
>> +   }
>> +-  else if (uv__queue_empty(&w->watcher_queue))
>> +-    uv__queue_insert_tail(&loop->watcher_queue, &w->watcher_queue);
>> ++  else if (QUEUE_EMPTY(&w->watcher_queue))
>> ++    QUEUE_INSERT_TAIL(&loop->watcher_queue, &w->watcher_queue);
>> + }
>> +
>> +
>> + void uv__io_close(uv_loop_t* loop, uv__io_t* w) {
>> +   uv__io_stop(loop, w, POLLIN | POLLOUT | UV__POLLRDHUP | UV__POLLPRI)=
;
>> +-  uv__queue_remove(&w->pending_queue);
>> ++  QUEUE_REMOVE(&w->pending_queue);
>> +
>> +   /* Remove stale events for this file descriptor */
>> +   if (w->fd !=3D -1)
>> +@@ -971,8 +970,8 @@ void uv__io_close(uv_loop_t* loop, uv__io_t* w) {
>> +
>> +
>> + void uv__io_feed(uv_loop_t* loop, uv__io_t* w) {
>> +-  if (uv__queue_empty(&w->pending_queue))
>> +-    uv__queue_insert_tail(&loop->pending_queue, &w->pending_queue);
>> ++  if (QUEUE_EMPTY(&w->pending_queue))
>> ++    QUEUE_INSERT_TAIL(&loop->pending_queue, &w->pending_queue);
>> + }
>> +
>> +
>> +diff --git a/deps/uv/src/unix/fs.c b/deps/uv/src/unix/fs.c
>> +index 6b051c124f2..00d385c24b7 100644
>> +--- a/deps/uv/src/unix/fs.c
>> ++++ b/deps/uv/src/unix/fs.c
>> +@@ -62,6 +62,7 @@
>> +
>> + #if defined(__linux__)
>> + # include <sys/sendfile.h>
>> ++# include <sys/utsname.h>
>> + #endif
>> +
>> + #if defined(__sun)
>> +@@ -903,6 +904,31 @@ out:
>> +
>> +
>> + #ifdef __linux__
>> ++static unsigned uv__kernel_version(void) {
>> ++  static _Atomic unsigned cached_version;
>> ++  struct utsname u;
>> ++  unsigned version;
>> ++  unsigned major;
>> ++  unsigned minor;
>> ++  unsigned patch;
>> ++
>> ++  version =3D atomic_load_explicit(&cached_version, memory_order_relax=
ed);
>> ++  if (version !=3D 0)
>> ++    return version;
>> ++
>> ++  if (-1 =3D=3D uname(&u))
>> ++    return 0;
>> ++
>> ++  if (3 !=3D sscanf(u.release, "%u.%u.%u", &major, &minor, &patch))
>> ++    return 0;
>> ++
>> ++  version =3D major * 65536 + minor * 256 + patch;
>> ++  atomic_store_explicit(&cached_version, version, memory_order_relaxed=
);
>> ++
>> ++  return version;
>> ++}
>> ++
>> ++
>> + /* Pre-4.20 kernels have a bug where CephFS uses the RADOS copy-from c=
ommand
>> +  * in copy_file_range() when it shouldn't. There is no workaround exce=
pt to
>> +  * fall back to a regular copy.
>> +@@ -1905,9 +1931,6 @@ int uv_fs_link(uv_loop_t* loop,
>> +                uv_fs_cb cb) {
>> +   INIT(LINK);
>> +   PATH2;
>> +-  if (cb !=3D NULL)
>> +-    if (uv__iou_fs_link(loop, req))
>> +-      return 0;
>> +   POST;
>> + }
>> +
>> +@@ -1920,9 +1943,6 @@ int uv_fs_mkdir(uv_loop_t* loop,
>> +   INIT(MKDIR);
>> +   PATH;
>> +   req->mode =3D mode;
>> +-  if (cb !=3D NULL)
>> +-    if (uv__iou_fs_mkdir(loop, req))
>> +-      return 0;
>> +   POST;
>> + }
>> +
>> +@@ -2074,9 +2094,6 @@ int uv_fs_rename(uv_loop_t* loop,
>> +                  uv_fs_cb cb) {
>> +   INIT(RENAME);
>> +   PATH2;
>> +-  if (cb !=3D NULL)
>> +-    if (uv__iou_fs_rename(loop, req))
>> +-      return 0;
>> +   POST;
>> + }
>> +
>> +@@ -2123,9 +2140,6 @@ int uv_fs_symlink(uv_loop_t* loop,
>> +   INIT(SYMLINK);
>> +   PATH2;
>> +   req->flags =3D flags;
>> +-  if (cb !=3D NULL)
>> +-    if (uv__iou_fs_symlink(loop, req))
>> +-      return 0;
>> +   POST;
>> + }
>> +
>> +@@ -2133,9 +2147,6 @@ int uv_fs_symlink(uv_loop_t* loop,
>> + int uv_fs_unlink(uv_loop_t* loop, uv_fs_t* req, const char* path, uv_f=
s_cb cb) {
>> +   INIT(UNLINK);
>> +   PATH;
>> +-  if (cb !=3D NULL)
>> +-    if (uv__iou_fs_unlink(loop, req))
>> +-      return 0;
>> +   POST;
>> + }
>> +
>> +diff --git a/deps/uv/src/unix/fsevents.c b/deps/uv/src/unix/fsevents.c
>> +index df703f3635f..0535b4547aa 100644
>> +--- a/deps/uv/src/unix/fsevents.c
>> ++++ b/deps/uv/src/unix/fsevents.c
>> +@@ -80,13 +80,13 @@ enum uv__cf_loop_signal_type_e {
>> + typedef enum uv__cf_loop_signal_type_e uv__cf_loop_signal_type_t;
>> +
>> + struct uv__cf_loop_signal_s {
>> +-  struct uv__queue member;
>> ++  QUEUE member;
>> +   uv_fs_event_t* handle;
>> +   uv__cf_loop_signal_type_t type;
>> + };
>> +
>> + struct uv__fsevents_event_s {
>> +-  struct uv__queue member;
>> ++  QUEUE member;
>> +   int events;
>> +   char path[1];
>> + };
>> +@@ -98,7 +98,7 @@ struct uv__cf_loop_state_s {
>> +   FSEventStreamRef fsevent_stream;
>> +   uv_sem_t fsevent_sem;
>> +   uv_mutex_t fsevent_mutex;
>> +-  struct uv__queue fsevent_handles;
>> ++  void* fsevent_handles[2];
>> +   unsigned int fsevent_handle_count;
>> + };
>> +
>> +@@ -150,22 +150,22 @@ static void (*pFSEventStreamStop)(FSEventStreamRe=
f);
>> +
>> + #define UV__FSEVENTS_PROCESS(handle, block)                           =
        \
>> +     do {                                                              =
        \
>> +-      struct uv__queue events;                                        =
        \
>> +-      struct uv__queue* q;                                            =
        \
>> ++      QUEUE events;                                                   =
        \
>> ++      QUEUE* q;                                                       =
        \
>> +       uv__fsevents_event_t* event;                                    =
        \
>> +       int err;                                                        =
        \
>> +       uv_mutex_lock(&(handle)->cf_mutex);                             =
        \
>> +       /* Split-off all events and empty original queue */             =
        \
>> +-      uv__queue_move(&(handle)->cf_events, &events);                  =
        \
>> ++      QUEUE_MOVE(&(handle)->cf_events, &events);                      =
        \
>> +       /* Get error (if any) and zero original one */                  =
        \
>> +       err =3D (handle)->cf_error;                                     =
          \
>> +       (handle)->cf_error =3D 0;                                       =
          \
>> +       uv_mutex_unlock(&(handle)->cf_mutex);                           =
        \
>> +       /* Loop through events, deallocating each after processing */   =
        \
>> +-      while (!uv__queue_empty(&events)) {                             =
        \
>> +-        q =3D uv__queue_head(&events);                                =
          \
>> +-        event =3D uv__queue_data(q, uv__fsevents_event_t, member);    =
          \
>> +-        uv__queue_remove(q);                                          =
        \
>> ++      while (!QUEUE_EMPTY(&events)) {                                 =
        \
>> ++        q =3D QUEUE_HEAD(&events);                                    =
          \
>> ++        event =3D QUEUE_DATA(q, uv__fsevents_event_t, member);        =
          \
>> ++        QUEUE_REMOVE(q);                                              =
        \
>> +         /* NOTE: Checking uv__is_active() is required here, because ha=
ndle    \
>> +          * callback may close handle and invoking it after it will lea=
d to    \
>> +          * incorrect behaviour */                                     =
        \
>> +@@ -193,14 +193,14 @@ static void uv__fsevents_cb(uv_async_t* cb) {
>> +
>> + /* Runs in CF thread, pushed event into handle's event list */
>> + static void uv__fsevents_push_event(uv_fs_event_t* handle,
>> +-                                    struct uv__queue* events,
>> ++                                    QUEUE* events,
>> +                                     int err) {
>> +   assert(events !=3D NULL || err !=3D 0);
>> +   uv_mutex_lock(&handle->cf_mutex);
>> +
>> +   /* Concatenate two queues */
>> +   if (events !=3D NULL)
>> +-    uv__queue_add(&handle->cf_events, events);
>> ++    QUEUE_ADD(&handle->cf_events, events);
>> +
>> +   /* Propagate error */
>> +   if (err !=3D 0)
>> +@@ -224,12 +224,12 @@ static void uv__fsevents_event_cb(const FSEventSt=
reamRef streamRef,
>> +   char* path;
>> +   char* pos;
>> +   uv_fs_event_t* handle;
>> +-  struct uv__queue* q;
>> ++  QUEUE* q;
>> +   uv_loop_t* loop;
>> +   uv__cf_loop_state_t* state;
>> +   uv__fsevents_event_t* event;
>> +   FSEventStreamEventFlags flags;
>> +-  struct uv__queue head;
>> ++  QUEUE head;
>> +
>> +   loop =3D info;
>> +   state =3D loop->cf_state;
>> +@@ -238,9 +238,9 @@ static void uv__fsevents_event_cb(const FSEventStre=
amRef streamRef,
>> +
>> +   /* For each handle */
>> +   uv_mutex_lock(&state->fsevent_mutex);
>> +-  uv__queue_foreach(q, &state->fsevent_handles) {
>> +-    handle =3D uv__queue_data(q, uv_fs_event_t, cf_member);
>> +-    uv__queue_init(&head);
>> ++  QUEUE_FOREACH(q, &state->fsevent_handles) {
>> ++    handle =3D QUEUE_DATA(q, uv_fs_event_t, cf_member);
>> ++    QUEUE_INIT(&head);
>> +
>> +     /* Process and filter out events */
>> +     for (i =3D 0; i < numEvents; i++) {
>> +@@ -318,10 +318,10 @@ static void uv__fsevents_event_cb(const FSEventSt=
reamRef streamRef,
>> +           event->events =3D UV_CHANGE;
>> +       }
>> +
>> +-      uv__queue_insert_tail(&head, &event->member);
>> ++      QUEUE_INSERT_TAIL(&head, &event->member);
>> +     }
>> +
>> +-    if (!uv__queue_empty(&head))
>> ++    if (!QUEUE_EMPTY(&head))
>> +       uv__fsevents_push_event(handle, &head, 0);
>> +   }
>> +   uv_mutex_unlock(&state->fsevent_mutex);
>> +@@ -403,7 +403,7 @@ static void uv__fsevents_destroy_stream(uv__cf_loop=
_state_t* state) {
>> + static void uv__fsevents_reschedule(uv__cf_loop_state_t* state,
>> +                                     uv_loop_t* loop,
>> +                                     uv__cf_loop_signal_type_t type) {
>> +-  struct uv__queue* q;
>> ++  QUEUE* q;
>> +   uv_fs_event_t* curr;
>> +   CFArrayRef cf_paths;
>> +   CFStringRef* paths;
>> +@@ -446,9 +446,9 @@ static void uv__fsevents_reschedule(uv__cf_loop_sta=
te_t* state,
>> +
>> +     q =3D &state->fsevent_handles;
>> +     for (; i < path_count; i++) {
>> +-      q =3D uv__queue_next(q);
>> ++      q =3D QUEUE_NEXT(q);
>> +       assert(q !=3D &state->fsevent_handles);
>> +-      curr =3D uv__queue_data(q, uv_fs_event_t, cf_member);
>> ++      curr =3D QUEUE_DATA(q, uv_fs_event_t, cf_member);
>> +
>> +       assert(curr->realpath !=3D NULL);
>> +       paths[i] =3D
>> +@@ -486,8 +486,8 @@ final:
>> +
>> +     /* Broadcast error to all handles */
>> +     uv_mutex_lock(&state->fsevent_mutex);
>> +-    uv__queue_foreach(q, &state->fsevent_handles) {
>> +-      curr =3D uv__queue_data(q, uv_fs_event_t, cf_member);
>> ++    QUEUE_FOREACH(q, &state->fsevent_handles) {
>> ++      curr =3D QUEUE_DATA(q, uv_fs_event_t, cf_member);
>> +       uv__fsevents_push_event(curr, NULL, err);
>> +     }
>> +     uv_mutex_unlock(&state->fsevent_mutex);
>> +@@ -606,7 +606,7 @@ static int uv__fsevents_loop_init(uv_loop_t* loop) =
{
>> +   if (err)
>> +     goto fail_sem_init;
>> +
>> +-  uv__queue_init(&loop->cf_signals);
>> ++  QUEUE_INIT(&loop->cf_signals);
>> +
>> +   err =3D uv_sem_init(&state->fsevent_sem, 0);
>> +   if (err)
>> +@@ -616,7 +616,7 @@ static int uv__fsevents_loop_init(uv_loop_t* loop) =
{
>> +   if (err)
>> +     goto fail_fsevent_mutex_init;
>> +
>> +-  uv__queue_init(&state->fsevent_handles);
>> ++  QUEUE_INIT(&state->fsevent_handles);
>> +   state->fsevent_need_reschedule =3D 0;
>> +   state->fsevent_handle_count =3D 0;
>> +
>> +@@ -675,7 +675,7 @@ fail_mutex_init:
>> + void uv__fsevents_loop_delete(uv_loop_t* loop) {
>> +   uv__cf_loop_signal_t* s;
>> +   uv__cf_loop_state_t* state;
>> +-  struct uv__queue* q;
>> ++  QUEUE* q;
>> +
>> +   if (loop->cf_state =3D=3D NULL)
>> +     return;
>> +@@ -688,10 +688,10 @@ void uv__fsevents_loop_delete(uv_loop_t* loop) {
>> +   uv_mutex_destroy(&loop->cf_mutex);
>> +
>> +   /* Free any remaining data */
>> +-  while (!uv__queue_empty(&loop->cf_signals)) {
>> +-    q =3D uv__queue_head(&loop->cf_signals);
>> +-    s =3D uv__queue_data(q, uv__cf_loop_signal_t, member);
>> +-    uv__queue_remove(q);
>> ++  while (!QUEUE_EMPTY(&loop->cf_signals)) {
>> ++    q =3D QUEUE_HEAD(&loop->cf_signals);
>> ++    s =3D QUEUE_DATA(q, uv__cf_loop_signal_t, member);
>> ++    QUEUE_REMOVE(q);
>> +     uv__free(s);
>> +   }
>> +
>> +@@ -735,22 +735,22 @@ static void* uv__cf_loop_runner(void* arg) {
>> + static void uv__cf_loop_cb(void* arg) {
>> +   uv_loop_t* loop;
>> +   uv__cf_loop_state_t* state;
>> +-  struct uv__queue* item;
>> +-  struct uv__queue split_head;
>> ++  QUEUE* item;
>> ++  QUEUE split_head;
>> +   uv__cf_loop_signal_t* s;
>> +
>> +   loop =3D arg;
>> +   state =3D loop->cf_state;
>> +
>> +   uv_mutex_lock(&loop->cf_mutex);
>> +-  uv__queue_move(&loop->cf_signals, &split_head);
>> ++  QUEUE_MOVE(&loop->cf_signals, &split_head);
>> +   uv_mutex_unlock(&loop->cf_mutex);
>> +
>> +-  while (!uv__queue_empty(&split_head)) {
>> +-    item =3D uv__queue_head(&split_head);
>> +-    uv__queue_remove(item);
>> ++  while (!QUEUE_EMPTY(&split_head)) {
>> ++    item =3D QUEUE_HEAD(&split_head);
>> ++    QUEUE_REMOVE(item);
>> +
>> +-    s =3D uv__queue_data(item, uv__cf_loop_signal_t, member);
>> ++    s =3D QUEUE_DATA(item, uv__cf_loop_signal_t, member);
>> +
>> +     /* This was a termination signal */
>> +     if (s->handle =3D=3D NULL)
>> +@@ -778,7 +778,7 @@ int uv__cf_loop_signal(uv_loop_t* loop,
>> +   item->type =3D type;
>> +
>> +   uv_mutex_lock(&loop->cf_mutex);
>> +-  uv__queue_insert_tail(&loop->cf_signals, &item->member);
>> ++  QUEUE_INSERT_TAIL(&loop->cf_signals, &item->member);
>> +
>> +   state =3D loop->cf_state;
>> +   assert(state !=3D NULL);
>> +@@ -807,7 +807,7 @@ int uv__fsevents_init(uv_fs_event_t* handle) {
>> +   handle->realpath_len =3D strlen(handle->realpath);
>> +
>> +   /* Initialize event queue */
>> +-  uv__queue_init(&handle->cf_events);
>> ++  QUEUE_INIT(&handle->cf_events);
>> +   handle->cf_error =3D 0;
>> +
>> +   /*
>> +@@ -832,7 +832,7 @@ int uv__fsevents_init(uv_fs_event_t* handle) {
>> +   /* Insert handle into the list */
>> +   state =3D handle->loop->cf_state;
>> +   uv_mutex_lock(&state->fsevent_mutex);
>> +-  uv__queue_insert_tail(&state->fsevent_handles, &handle->cf_member);
>> ++  QUEUE_INSERT_TAIL(&state->fsevent_handles, &handle->cf_member);
>> +   state->fsevent_handle_count++;
>> +   state->fsevent_need_reschedule =3D 1;
>> +   uv_mutex_unlock(&state->fsevent_mutex);
>> +@@ -872,7 +872,7 @@ int uv__fsevents_close(uv_fs_event_t* handle) {
>> +   /* Remove handle from  the list */
>> +   state =3D handle->loop->cf_state;
>> +   uv_mutex_lock(&state->fsevent_mutex);
>> +-  uv__queue_remove(&handle->cf_member);
>> ++  QUEUE_REMOVE(&handle->cf_member);
>> +   state->fsevent_handle_count--;
>> +   state->fsevent_need_reschedule =3D 1;
>> +   uv_mutex_unlock(&state->fsevent_mutex);
>> +diff --git a/deps/uv/src/unix/internal.h b/deps/uv/src/unix/internal.h
>> +index fe588513603..6c5822e6a0d 100644
>> +--- a/deps/uv/src/unix/internal.h
>> ++++ b/deps/uv/src/unix/internal.h
>> +@@ -335,30 +335,20 @@ int uv__iou_fs_close(uv_loop_t* loop, uv_fs_t* re=
q);
>> + int uv__iou_fs_fsync_or_fdatasync(uv_loop_t* loop,
>> +                                   uv_fs_t* req,
>> +                                   uint32_t fsync_flags);
>> +-int uv__iou_fs_link(uv_loop_t* loop, uv_fs_t* req);
>> +-int uv__iou_fs_mkdir(uv_loop_t* loop, uv_fs_t* req);
>> + int uv__iou_fs_open(uv_loop_t* loop, uv_fs_t* req);
>> + int uv__iou_fs_read_or_write(uv_loop_t* loop,
>> +                              uv_fs_t* req,
>> +                              int is_read);
>> +-int uv__iou_fs_rename(uv_loop_t* loop, uv_fs_t* req);
>> + int uv__iou_fs_statx(uv_loop_t* loop,
>> +                      uv_fs_t* req,
>> +                      int is_fstat,
>> +                      int is_lstat);
>> +-int uv__iou_fs_symlink(uv_loop_t* loop, uv_fs_t* req);
>> +-int uv__iou_fs_unlink(uv_loop_t* loop, uv_fs_t* req);
>> + #else
>> + #define uv__iou_fs_close(loop, req) 0
>> + #define uv__iou_fs_fsync_or_fdatasync(loop, req, fsync_flags) 0
>> +-#define uv__iou_fs_link(loop, req) 0
>> +-#define uv__iou_fs_mkdir(loop, req) 0
>> + #define uv__iou_fs_open(loop, req) 0
>> + #define uv__iou_fs_read_or_write(loop, req, is_read) 0
>> +-#define uv__iou_fs_rename(loop, req) 0
>> + #define uv__iou_fs_statx(loop, req, is_fstat, is_lstat) 0
>> +-#define uv__iou_fs_symlink(loop, req) 0
>> +-#define uv__iou_fs_unlink(loop, req) 0
>> + #endif
>> +
>> + #if defined(__APPLE__)
>> +@@ -439,7 +429,6 @@ int uv__statx(int dirfd,
>> +               struct uv__statx* statxbuf);
>> + void uv__statx_to_stat(const struct uv__statx* statxbuf, uv_stat_t* bu=
f);
>> + ssize_t uv__getrandom(void* buf, size_t buflen, unsigned flags);
>> +-unsigned uv__kernel_version(void);
>> + #endif
>> +
>> + typedef int (*uv__peersockfunc)(int, struct sockaddr*, socklen_t*);
>> +diff --git a/deps/uv/src/unix/kqueue.c b/deps/uv/src/unix/kqueue.c
>> +index b78242d3be4..82916d65933 100644
>> +--- a/deps/uv/src/unix/kqueue.c
>> ++++ b/deps/uv/src/unix/kqueue.c
>> +@@ -133,7 +133,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +   struct timespec spec;
>> +   unsigned int nevents;
>> +   unsigned int revents;
>> +-  struct uv__queue* q;
>> ++  QUEUE* q;
>> +   uv__io_t* w;
>> +   uv_process_t* process;
>> +   sigset_t* pset;
>> +@@ -152,19 +152,19 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +   int reset_timeout;
>> +
>> +   if (loop->nfds =3D=3D 0) {
>> +-    assert(uv__queue_empty(&loop->watcher_queue));
>> ++    assert(QUEUE_EMPTY(&loop->watcher_queue));
>> +     return;
>> +   }
>> +
>> +   lfields =3D uv__get_internal_fields(loop);
>> +   nevents =3D 0;
>> +
>> +-  while (!uv__queue_empty(&loop->watcher_queue)) {
>> +-    q =3D uv__queue_head(&loop->watcher_queue);
>> +-    uv__queue_remove(q);
>> +-    uv__queue_init(q);
>> ++  while (!QUEUE_EMPTY(&loop->watcher_queue)) {
>> ++    q =3D QUEUE_HEAD(&loop->watcher_queue);
>> ++    QUEUE_REMOVE(q);
>> ++    QUEUE_INIT(q);
>> +
>> +-    w =3D uv__queue_data(q, uv__io_t, watcher_queue);
>> ++    w =3D QUEUE_DATA(q, uv__io_t, watcher_queue);
>> +     assert(w->pevents !=3D 0);
>> +     assert(w->fd >=3D 0);
>> +     assert(w->fd < (int) loop->nwatchers);
>> +@@ -307,8 +307,8 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +
>> +       /* Handle kevent NOTE_EXIT results */
>> +       if (ev->filter =3D=3D EVFILT_PROC) {
>> +-        uv__queue_foreach(q, &loop->process_handles) {
>> +-          process =3D uv__queue_data(q, uv_process_t, queue);
>> ++        QUEUE_FOREACH(q, &loop->process_handles) {
>> ++          process =3D QUEUE_DATA(q, uv_process_t, queue);
>> +           if (process->pid =3D=3D fd) {
>> +             process->flags |=3D UV_HANDLE_REAP;
>> +             loop->flags |=3D UV_LOOP_REAP_CHILDREN;
>> +diff --git a/deps/uv/src/unix/linux.c b/deps/uv/src/unix/linux.c
>> +index 48b9c2c43e1..5f84ad0eea3 100644
>> +--- a/deps/uv/src/unix/linux.c
>> ++++ b/deps/uv/src/unix/linux.c
>> +@@ -48,7 +48,6 @@
>> + #include <sys/sysinfo.h>
>> + #include <sys/sysmacros.h>
>> + #include <sys/types.h>
>> +-#include <sys/utsname.h>
>> + #include <time.h>
>> + #include <unistd.h>
>> +
>> +@@ -151,11 +150,6 @@ enum {
>> +   UV__IORING_OP_CLOSE =3D 19,
>> +   UV__IORING_OP_STATX =3D 21,
>> +   UV__IORING_OP_EPOLL_CTL =3D 29,
>> +-  UV__IORING_OP_RENAMEAT =3D 35,
>> +-  UV__IORING_OP_UNLINKAT =3D 36,
>> +-  UV__IORING_OP_MKDIRAT =3D 37,
>> +-  UV__IORING_OP_SYMLINKAT =3D 38,
>> +-  UV__IORING_OP_LINKAT =3D 39,
>> + };
>> +
>> + enum {
>> +@@ -168,10 +162,6 @@ enum {
>> +   UV__IORING_SQ_CQ_OVERFLOW =3D 2u,
>> + };
>> +
>> +-enum {
>> +-  UV__MKDIRAT_SYMLINKAT_LINKAT =3D 1u,
>> +-};
>> +-
>> + struct uv__io_cqring_offsets {
>> +   uint32_t head;
>> +   uint32_t tail;
>> +@@ -267,7 +257,7 @@ STATIC_ASSERT(EPOLL_CTL_MOD < 4);
>> +
>> + struct watcher_list {
>> +   RB_ENTRY(watcher_list) entry;
>> +-  struct uv__queue watchers;
>> ++  QUEUE watchers;
>> +   int iterating;
>> +   char* path;
>> +   int wd;
>> +@@ -310,31 +300,6 @@ static struct watcher_root* uv__inotify_watchers(u=
v_loop_t* loop) {
>> + }
>> +
>> +
>> +-unsigned uv__kernel_version(void) {
>> +-  static _Atomic unsigned cached_version;
>> +-  struct utsname u;
>> +-  unsigned version;
>> +-  unsigned major;
>> +-  unsigned minor;
>> +-  unsigned patch;
>> +-
>> +-  version =3D atomic_load_explicit(&cached_version, memory_order_relax=
ed);
>> +-  if (version !=3D 0)
>> +-    return version;
>> +-
>> +-  if (-1 =3D=3D uname(&u))
>> +-    return 0;
>> +-
>> +-  if (3 !=3D sscanf(u.release, "%u.%u.%u", &major, &minor, &patch))
>> +-    return 0;
>> +-
>> +-  version =3D major * 65536 + minor * 256 + patch;
>> +-  atomic_store_explicit(&cached_version, version, memory_order_relaxed=
);
>> +-
>> +-  return version;
>> +-}
>> +-
>> +-
>> + ssize_t
>> + uv__fs_copy_file_range(int fd_in,
>> +                        off_t* off_in,
>> +@@ -420,9 +385,6 @@ int uv__io_uring_register(int fd, unsigned opcode, =
void* arg, unsigned nargs) {
>> +
>> +
>> + static int uv__use_io_uring(void) {
>> +-#if defined(__ANDROID_API__)
>> +-  return 0;  /* Possibly available but blocked by seccomp. */
>> +-#else
>> +   /* Ternary: unknown=3D0, yes=3D1, no=3D-1 */
>> +   static _Atomic int use_io_uring;
>> +   char* val;
>> +@@ -437,7 +399,6 @@ static int uv__use_io_uring(void) {
>> +   }
>> +
>> +   return use > 0;
>> +-#endif
>> + }
>> +
>> +
>> +@@ -542,10 +503,6 @@ static void uv__iou_init(int epollfd,
>> +   iou->sqelen =3D sqelen;
>> +   iou->ringfd =3D ringfd;
>> +   iou->in_flight =3D 0;
>> +-  iou->flags =3D 0;
>> +-
>> +-  if (uv__kernel_version() >=3D /* 5.15.0 */ 0x050F00)
>> +-    iou->flags |=3D UV__MKDIRAT_SYMLINKAT_LINKAT;
>> +
>> +   for (i =3D 0; i <=3D iou->sqmask; i++)
>> +     iou->sqarray[i] =3D i;  /* Slot -> sqe identity mapping. */
>> +@@ -727,7 +684,7 @@ static struct uv__io_uring_sqe* uv__iou_get_sqe(str=
uct uv__iou* iou,
>> +   req->work_req.loop =3D loop;
>> +   req->work_req.work =3D NULL;
>> +   req->work_req.done =3D NULL;
>> +-  uv__queue_init(&req->work_req.wq);
>> ++  QUEUE_INIT(&req->work_req.wq);
>> +
>> +   uv__req_register(loop, req);
>> +   iou->in_flight++;
>> +@@ -757,17 +714,6 @@ int uv__iou_fs_close(uv_loop_t* loop, uv_fs_t* req=
) {
>> +   struct uv__io_uring_sqe* sqe;
>> +   struct uv__iou* iou;
>> +
>> +-  /* Work around a poorly understood bug in older kernels where closin=
g a file
>> +-   * descriptor pointing to /foo/bar results in ETXTBSY errors when tr=
ying to
>> +-   * execve("/foo/bar") later on. The bug seems to have been fixed som=
ewhere
>> +-   * between 5.15.85 and 5.15.90. I couldn't pinpoint the responsible =
commit
>> +-   * but good candidates are the several data race fixes. Interestingl=
y, it
>> +-   * seems to manifest only when running under Docker so the possibili=
ty of
>> +-   * a Docker bug can't be completely ruled out either. Yay, computers=
.
>> +-   */
>> +-  if (uv__kernel_version() < /* 5.15.90 */ 0x050F5A)
>> +-    return 0;
>> +-
>> +   iou =3D &uv__get_internal_fields(loop)->iou;
>> +
>> +   sqe =3D uv__iou_get_sqe(iou, loop, req);
>> +@@ -808,55 +754,6 @@ int uv__iou_fs_fsync_or_fdatasync(uv_loop_t* loop,
>> + }
>> +
>> +
>> +-int uv__iou_fs_link(uv_loop_t* loop, uv_fs_t* req) {
>> +-  struct uv__io_uring_sqe* sqe;
>> +-  struct uv__iou* iou;
>> +-
>> +-  iou =3D &uv__get_internal_fields(loop)->iou;
>> +-
>> +-  if (!(iou->flags & UV__MKDIRAT_SYMLINKAT_LINKAT))
>> +-    return 0;
>> +-
>> +-  sqe =3D uv__iou_get_sqe(iou, loop, req);
>> +-  if (sqe =3D=3D NULL)
>> +-    return 0;
>> +-
>> +-  sqe->addr =3D (uintptr_t) req->path;
>> +-  sqe->fd =3D AT_FDCWD;
>> +-  sqe->addr2 =3D (uintptr_t) req->new_path;
>> +-  sqe->len =3D AT_FDCWD;
>> +-  sqe->opcode =3D UV__IORING_OP_LINKAT;
>> +-
>> +-  uv__iou_submit(iou);
>> +-
>> +-  return 1;
>> +-}
>> +-
>> +-
>> +-int uv__iou_fs_mkdir(uv_loop_t* loop, uv_fs_t* req) {
>> +-  struct uv__io_uring_sqe* sqe;
>> +-  struct uv__iou* iou;
>> +-
>> +-  iou =3D &uv__get_internal_fields(loop)->iou;
>> +-
>> +-  if (!(iou->flags & UV__MKDIRAT_SYMLINKAT_LINKAT))
>> +-    return 0;
>> +-
>> +-  sqe =3D uv__iou_get_sqe(iou, loop, req);
>> +-  if (sqe =3D=3D NULL)
>> +-    return 0;
>> +-
>> +-  sqe->addr =3D (uintptr_t) req->path;
>> +-  sqe->fd =3D AT_FDCWD;
>> +-  sqe->len =3D req->mode;
>> +-  sqe->opcode =3D UV__IORING_OP_MKDIRAT;
>> +-
>> +-  uv__iou_submit(iou);
>> +-
>> +-  return 1;
>> +-}
>> +-
>> +-
>> + int uv__iou_fs_open(uv_loop_t* loop, uv_fs_t* req) {
>> +   struct uv__io_uring_sqe* sqe;
>> +   struct uv__iou* iou;
>> +@@ -879,86 +776,16 @@ int uv__iou_fs_open(uv_loop_t* loop, uv_fs_t* req=
) {
>> + }
>> +
>> +
>> +-int uv__iou_fs_rename(uv_loop_t* loop, uv_fs_t* req) {
>> +-  struct uv__io_uring_sqe* sqe;
>> +-  struct uv__iou* iou;
>> +-
>> +-  iou =3D &uv__get_internal_fields(loop)->iou;
>> +-
>> +-  sqe =3D uv__iou_get_sqe(iou, loop, req);
>> +-  if (sqe =3D=3D NULL)
>> +-    return 0;
>> +-
>> +-  sqe->addr =3D (uintptr_t) req->path;
>> +-  sqe->fd =3D AT_FDCWD;
>> +-  sqe->addr2 =3D (uintptr_t) req->new_path;
>> +-  sqe->len =3D AT_FDCWD;
>> +-  sqe->opcode =3D UV__IORING_OP_RENAMEAT;
>> +-
>> +-  uv__iou_submit(iou);
>> +-
>> +-  return 1;
>> +-}
>> +-
>> +-
>> +-int uv__iou_fs_symlink(uv_loop_t* loop, uv_fs_t* req) {
>> +-  struct uv__io_uring_sqe* sqe;
>> +-  struct uv__iou* iou;
>> +-
>> +-  iou =3D &uv__get_internal_fields(loop)->iou;
>> +-
>> +-  if (!(iou->flags & UV__MKDIRAT_SYMLINKAT_LINKAT))
>> +-    return 0;
>> +-
>> +-  sqe =3D uv__iou_get_sqe(iou, loop, req);
>> +-  if (sqe =3D=3D NULL)
>> +-    return 0;
>> +-
>> +-  sqe->addr =3D (uintptr_t) req->path;
>> +-  sqe->fd =3D AT_FDCWD;
>> +-  sqe->addr2 =3D (uintptr_t) req->new_path;
>> +-  sqe->opcode =3D UV__IORING_OP_SYMLINKAT;
>> +-
>> +-  uv__iou_submit(iou);
>> +-
>> +-  return 1;
>> +-}
>> +-
>> +-
>> +-int uv__iou_fs_unlink(uv_loop_t* loop, uv_fs_t* req) {
>> +-  struct uv__io_uring_sqe* sqe;
>> +-  struct uv__iou* iou;
>> +-
>> +-  iou =3D &uv__get_internal_fields(loop)->iou;
>> +-
>> +-  sqe =3D uv__iou_get_sqe(iou, loop, req);
>> +-  if (sqe =3D=3D NULL)
>> +-    return 0;
>> +-
>> +-  sqe->addr =3D (uintptr_t) req->path;
>> +-  sqe->fd =3D AT_FDCWD;
>> +-  sqe->opcode =3D UV__IORING_OP_UNLINKAT;
>> +-
>> +-  uv__iou_submit(iou);
>> +-
>> +-  return 1;
>> +-}
>> +-
>> +-
>> + int uv__iou_fs_read_or_write(uv_loop_t* loop,
>> +                              uv_fs_t* req,
>> +                              int is_read) {
>> +   struct uv__io_uring_sqe* sqe;
>> +   struct uv__iou* iou;
>> +
>> +-  /* If iovcnt is greater than IOV_MAX, cap it to IOV_MAX on reads and=
 fallback
>> +-   * to the threadpool on writes */
>> +-  if (req->nbufs > IOV_MAX) {
>> +-    if (is_read)
>> +-      req->nbufs =3D IOV_MAX;
>> +-    else
>> +-      return 0;
>> +-  }
>> ++  /* For the moment, if iovcnt is greater than IOV_MAX, fallback to th=
e
>> ++   * threadpool. In the future we might take advantage of IOSQE_IO_LIN=
K. */
>> ++  if (req->nbufs > IOV_MAX)
>> ++    return 0;
>> +
>> +   iou =3D &uv__get_internal_fields(loop)->iou;
>> +
>> +@@ -1265,7 +1092,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +   struct uv__iou* ctl;
>> +   struct uv__iou* iou;
>> +   int real_timeout;
>> +-  struct uv__queue* q;
>> ++  QUEUE* q;
>> +   uv__io_t* w;
>> +   sigset_t* sigmask;
>> +   sigset_t sigset;
>> +@@ -1311,11 +1138,11 @@ void uv__io_poll(uv_loop_t* loop, int timeout) =
{
>> +
>> +   memset(&e, 0, sizeof(e));
>> +
>> +-  while (!uv__queue_empty(&loop->watcher_queue)) {
>> +-    q =3D uv__queue_head(&loop->watcher_queue);
>> +-    w =3D uv__queue_data(q, uv__io_t, watcher_queue);
>> +-    uv__queue_remove(q);
>> +-    uv__queue_init(q);
>> ++  while (!QUEUE_EMPTY(&loop->watcher_queue)) {
>> ++    q =3D QUEUE_HEAD(&loop->watcher_queue);
>> ++    w =3D QUEUE_DATA(q, uv__io_t, watcher_queue);
>> ++    QUEUE_REMOVE(q);
>> ++    QUEUE_INIT(q);
>> +
>> +     op =3D EPOLL_CTL_MOD;
>> +     if (w->events =3D=3D 0)
>> +@@ -2272,8 +2099,8 @@ static int uv__inotify_fork(uv_loop_t* loop, stru=
ct watcher_list* root) {
>> +   struct watcher_list* tmp_watcher_list_iter;
>> +   struct watcher_list* watcher_list;
>> +   struct watcher_list tmp_watcher_list;
>> +-  struct uv__queue queue;
>> +-  struct uv__queue* q;
>> ++  QUEUE queue;
>> ++  QUEUE* q;
>> +   uv_fs_event_t* handle;
>> +   char* tmp_path;
>> +
>> +@@ -2285,41 +2112,41 @@ static int uv__inotify_fork(uv_loop_t* loop, st=
ruct watcher_list* root) {
>> +    */
>> +   loop->inotify_watchers =3D root;
>> +
>> +-  uv__queue_init(&tmp_watcher_list.watchers);
>> ++  QUEUE_INIT(&tmp_watcher_list.watchers);
>> +   /* Note that the queue we use is shared with the start and stop()
>> +-   * functions, making uv__queue_foreach unsafe to use. So we use the
>> +-   * uv__queue_move trick to safely iterate. Also don't free the watch=
er
>> ++   * functions, making QUEUE_FOREACH unsafe to use. So we use the
>> ++   * QUEUE_MOVE trick to safely iterate. Also don't free the watcher
>> +    * list until we're done iterating. c.f. uv__inotify_read.
>> +    */
>> +   RB_FOREACH_SAFE(watcher_list, watcher_root,
>> +                   uv__inotify_watchers(loop), tmp_watcher_list_iter) {
>> +     watcher_list->iterating =3D 1;
>> +-    uv__queue_move(&watcher_list->watchers, &queue);
>> +-    while (!uv__queue_empty(&queue)) {
>> +-      q =3D uv__queue_head(&queue);
>> +-      handle =3D uv__queue_data(q, uv_fs_event_t, watchers);
>> ++    QUEUE_MOVE(&watcher_list->watchers, &queue);
>> ++    while (!QUEUE_EMPTY(&queue)) {
>> ++      q =3D QUEUE_HEAD(&queue);
>> ++      handle =3D QUEUE_DATA(q, uv_fs_event_t, watchers);
>> +       /* It's critical to keep a copy of path here, because it
>> +        * will be set to NULL by stop() and then deallocated by
>> +        * maybe_free_watcher_list
>> +        */
>> +       tmp_path =3D uv__strdup(handle->path);
>> +       assert(tmp_path !=3D NULL);
>> +-      uv__queue_remove(q);
>> +-      uv__queue_insert_tail(&watcher_list->watchers, q);
>> ++      QUEUE_REMOVE(q);
>> ++      QUEUE_INSERT_TAIL(&watcher_list->watchers, q);
>> +       uv_fs_event_stop(handle);
>> +
>> +-      uv__queue_insert_tail(&tmp_watcher_list.watchers, &handle->watch=
ers);
>> ++      QUEUE_INSERT_TAIL(&tmp_watcher_list.watchers, &handle->watchers)=
;
>> +       handle->path =3D tmp_path;
>> +     }
>> +     watcher_list->iterating =3D 0;
>> +     maybe_free_watcher_list(watcher_list, loop);
>> +   }
>> +
>> +-  uv__queue_move(&tmp_watcher_list.watchers, &queue);
>> +-  while (!uv__queue_empty(&queue)) {
>> +-      q =3D uv__queue_head(&queue);
>> +-      uv__queue_remove(q);
>> +-      handle =3D uv__queue_data(q, uv_fs_event_t, watchers);
>> ++  QUEUE_MOVE(&tmp_watcher_list.watchers, &queue);
>> ++  while (!QUEUE_EMPTY(&queue)) {
>> ++      q =3D QUEUE_HEAD(&queue);
>> ++      QUEUE_REMOVE(q);
>> ++      handle =3D QUEUE_DATA(q, uv_fs_event_t, watchers);
>> +       tmp_path =3D handle->path;
>> +       handle->path =3D NULL;
>> +       err =3D uv_fs_event_start(handle, handle->cb, tmp_path, 0);
>> +@@ -2341,7 +2168,7 @@ static struct watcher_list* find_watcher(uv_loop_=
t* loop, int wd) {
>> +
>> + static void maybe_free_watcher_list(struct watcher_list* w, uv_loop_t*=
 loop) {
>> +   /* if the watcher_list->watchers is being iterated over, we can't fr=
ee it. */
>> +-  if ((!w->iterating) && uv__queue_empty(&w->watchers)) {
>> ++  if ((!w->iterating) && QUEUE_EMPTY(&w->watchers)) {
>> +     /* No watchers left for this path. Clean up. */
>> +     RB_REMOVE(watcher_root, uv__inotify_watchers(loop), w);
>> +     inotify_rm_watch(loop->inotify_fd, w->wd);
>> +@@ -2356,8 +2183,8 @@ static void uv__inotify_read(uv_loop_t* loop,
>> +   const struct inotify_event* e;
>> +   struct watcher_list* w;
>> +   uv_fs_event_t* h;
>> +-  struct uv__queue queue;
>> +-  struct uv__queue* q;
>> ++  QUEUE queue;
>> ++  QUEUE* q;
>> +   const char* path;
>> +   ssize_t size;
>> +   const char *p;
>> +@@ -2400,7 +2227,7 @@ static void uv__inotify_read(uv_loop_t* loop,
>> +        * What can go wrong?
>> +        * A callback could call uv_fs_event_stop()
>> +        * and the queue can change under our feet.
>> +-       * So, we use uv__queue_move() trick to safely iterate over the =
queue.
>> ++       * So, we use QUEUE_MOVE() trick to safely iterate over the queu=
e.
>> +        * And we don't free the watcher_list until we're done iterating=
.
>> +        *
>> +        * First,
>> +@@ -2408,13 +2235,13 @@ static void uv__inotify_read(uv_loop_t* loop,
>> +        * not to free watcher_list.
>> +        */
>> +       w->iterating =3D 1;
>> +-      uv__queue_move(&w->watchers, &queue);
>> +-      while (!uv__queue_empty(&queue)) {
>> +-        q =3D uv__queue_head(&queue);
>> +-        h =3D uv__queue_data(q, uv_fs_event_t, watchers);
>> ++      QUEUE_MOVE(&w->watchers, &queue);
>> ++      while (!QUEUE_EMPTY(&queue)) {
>> ++        q =3D QUEUE_HEAD(&queue);
>> ++        h =3D QUEUE_DATA(q, uv_fs_event_t, watchers);
>> +
>> +-        uv__queue_remove(q);
>> +-        uv__queue_insert_tail(&w->watchers, q);
>> ++        QUEUE_REMOVE(q);
>> ++        QUEUE_INSERT_TAIL(&w->watchers, q);
>> +
>> +         h->cb(h, path, events, 0);
>> +       }
>> +@@ -2476,13 +2303,13 @@ int uv_fs_event_start(uv_fs_event_t* handle,
>> +
>> +   w->wd =3D wd;
>> +   w->path =3D memcpy(w + 1, path, len);
>> +-  uv__queue_init(&w->watchers);
>> ++  QUEUE_INIT(&w->watchers);
>> +   w->iterating =3D 0;
>> +   RB_INSERT(watcher_root, uv__inotify_watchers(loop), w);
>> +
>> + no_insert:
>> +   uv__handle_start(handle);
>> +-  uv__queue_insert_tail(&w->watchers, &handle->watchers);
>> ++  QUEUE_INSERT_TAIL(&w->watchers, &handle->watchers);
>> +   handle->path =3D w->path;
>> +   handle->cb =3D cb;
>> +   handle->wd =3D wd;
>> +@@ -2503,7 +2330,7 @@ int uv_fs_event_stop(uv_fs_event_t* handle) {
>> +   handle->wd =3D -1;
>> +   handle->path =3D NULL;
>> +   uv__handle_stop(handle);
>> +-  uv__queue_remove(&handle->watchers);
>> ++  QUEUE_REMOVE(&handle->watchers);
>> +
>> +   maybe_free_watcher_list(w, handle->loop);
>> +
>> +diff --git a/deps/uv/src/unix/loop-watcher.c b/deps/uv/src/unix/loop-wa=
tcher.c
>> +index 2db8b515df7..b8c1c2a7102 100644
>> +--- a/deps/uv/src/unix/loop-watcher.c
>> ++++ b/deps/uv/src/unix/loop-watcher.c
>> +@@ -32,7 +32,7 @@
>> +   int uv_##name##_start(uv_##name##_t* handle, uv_##name##_cb cb) {   =
        \
>> +     if (uv__is_active(handle)) return 0;                              =
        \
>> +     if (cb =3D=3D NULL) return UV_EINVAL;                             =
            \
>> +-    uv__queue_insert_head(&handle->loop->name##_handles, &handle->queu=
e);     \
>> ++    QUEUE_INSERT_HEAD(&handle->loop->name##_handles, &handle->queue); =
        \
>> +     handle->name##_cb =3D cb;                                         =
          \
>> +     uv__handle_start(handle);                                         =
        \
>> +     return 0;                                                         =
        \
>> +@@ -40,21 +40,21 @@
>> +                                                                       =
        \
>> +   int uv_##name##_stop(uv_##name##_t* handle) {                       =
        \
>> +     if (!uv__is_active(handle)) return 0;                             =
        \
>> +-    uv__queue_remove(&handle->queue);                                 =
        \
>> ++    QUEUE_REMOVE(&handle->queue);                                     =
        \
>> +     uv__handle_stop(handle);                                          =
        \
>> +     return 0;                                                         =
        \
>> +   }                                                                   =
        \
>> +                                                                       =
        \
>> +   void uv__run_##name(uv_loop_t* loop) {                              =
        \
>> +     uv_##name##_t* h;                                                 =
        \
>> +-    struct uv__queue queue;                                           =
        \
>> +-    struct uv__queue* q;                                              =
        \
>> +-    uv__queue_move(&loop->name##_handles, &queue);                    =
        \
>> +-    while (!uv__queue_empty(&queue)) {                                =
        \
>> +-      q =3D uv__queue_head(&queue);                                   =
          \
>> +-      h =3D uv__queue_data(q, uv_##name##_t, queue);                  =
          \
>> +-      uv__queue_remove(q);                                            =
        \
>> +-      uv__queue_insert_tail(&loop->name##_handles, q);                =
        \
>> ++    QUEUE queue;                                                      =
        \
>> ++    QUEUE* q;                                                         =
        \
>> ++    QUEUE_MOVE(&loop->name##_handles, &queue);                        =
        \
>> ++    while (!QUEUE_EMPTY(&queue)) {                                    =
        \
>> ++      q =3D QUEUE_HEAD(&queue);                                       =
          \
>> ++      h =3D QUEUE_DATA(q, uv_##name##_t, queue);                      =
          \
>> ++      QUEUE_REMOVE(q);                                                =
        \
>> ++      QUEUE_INSERT_TAIL(&loop->name##_handles, q);                    =
        \
>> +       h->name##_cb(h);                                                =
        \
>> +     }                                                                 =
        \
>> +   }                                                                   =
        \
>> +diff --git a/deps/uv/src/unix/loop.c b/deps/uv/src/unix/loop.c
>> +index a9468e8e19c..90a51b339de 100644
>> +--- a/deps/uv/src/unix/loop.c
>> ++++ b/deps/uv/src/unix/loop.c
>> +@@ -50,20 +50,20 @@ int uv_loop_init(uv_loop_t* loop) {
>> +          sizeof(lfields->loop_metrics.metrics));
>> +
>> +   heap_init((struct heap*) &loop->timer_heap);
>> +-  uv__queue_init(&loop->wq);
>> +-  uv__queue_init(&loop->idle_handles);
>> +-  uv__queue_init(&loop->async_handles);
>> +-  uv__queue_init(&loop->check_handles);
>> +-  uv__queue_init(&loop->prepare_handles);
>> +-  uv__queue_init(&loop->handle_queue);
>> ++  QUEUE_INIT(&loop->wq);
>> ++  QUEUE_INIT(&loop->idle_handles);
>> ++  QUEUE_INIT(&loop->async_handles);
>> ++  QUEUE_INIT(&loop->check_handles);
>> ++  QUEUE_INIT(&loop->prepare_handles);
>> ++  QUEUE_INIT(&loop->handle_queue);
>> +
>> +   loop->active_handles =3D 0;
>> +   loop->active_reqs.count =3D 0;
>> +   loop->nfds =3D 0;
>> +   loop->watchers =3D NULL;
>> +   loop->nwatchers =3D 0;
>> +-  uv__queue_init(&loop->pending_queue);
>> +-  uv__queue_init(&loop->watcher_queue);
>> ++  QUEUE_INIT(&loop->pending_queue);
>> ++  QUEUE_INIT(&loop->watcher_queue);
>> +
>> +   loop->closing_handles =3D NULL;
>> +   uv__update_time(loop);
>> +@@ -85,7 +85,7 @@ int uv_loop_init(uv_loop_t* loop) {
>> +   err =3D uv__process_init(loop);
>> +   if (err)
>> +     goto fail_signal_init;
>> +-  uv__queue_init(&loop->process_handles);
>> ++  QUEUE_INIT(&loop->process_handles);
>> +
>> +   err =3D uv_rwlock_init(&loop->cloexec_lock);
>> +   if (err)
>> +@@ -152,9 +152,9 @@ int uv_loop_fork(uv_loop_t* loop) {
>> +     if (w =3D=3D NULL)
>> +       continue;
>> +
>> +-    if (w->pevents !=3D 0 && uv__queue_empty(&w->watcher_queue)) {
>> ++    if (w->pevents !=3D 0 && QUEUE_EMPTY(&w->watcher_queue)) {
>> +       w->events =3D 0; /* Force re-registration in uv__io_poll. */
>> +-      uv__queue_insert_tail(&loop->watcher_queue, &w->watcher_queue);
>> ++      QUEUE_INSERT_TAIL(&loop->watcher_queue, &w->watcher_queue);
>> +     }
>> +   }
>> +
>> +@@ -180,7 +180,7 @@ void uv__loop_close(uv_loop_t* loop) {
>> +   }
>> +
>> +   uv_mutex_lock(&loop->wq_mutex);
>> +-  assert(uv__queue_empty(&loop->wq) && "thread pool work queue not emp=
ty!");
>> ++  assert(QUEUE_EMPTY(&loop->wq) && "thread pool work queue not empty!"=
);
>> +   assert(!uv__has_active_reqs(loop));
>> +   uv_mutex_unlock(&loop->wq_mutex);
>> +   uv_mutex_destroy(&loop->wq_mutex);
>> +@@ -192,8 +192,8 @@ void uv__loop_close(uv_loop_t* loop) {
>> +   uv_rwlock_destroy(&loop->cloexec_lock);
>> +
>> + #if 0
>> +-  assert(uv__queue_empty(&loop->pending_queue));
>> +-  assert(uv__queue_empty(&loop->watcher_queue));
>> ++  assert(QUEUE_EMPTY(&loop->pending_queue));
>> ++  assert(QUEUE_EMPTY(&loop->watcher_queue));
>> +   assert(loop->nfds =3D=3D 0);
>> + #endif
>> +
>> +diff --git a/deps/uv/src/unix/os390-syscalls.c b/deps/uv/src/unix/os390=
-syscalls.c
>> +index 7f90c270906..5861aaaa202 100644
>> +--- a/deps/uv/src/unix/os390-syscalls.c
>> ++++ b/deps/uv/src/unix/os390-syscalls.c
>> +@@ -27,7 +27,7 @@
>> + #include <termios.h>
>> + #include <sys/msg.h>
>> +
>> +-static struct uv__queue global_epoll_queue;
>> ++static QUEUE global_epoll_queue;
>> + static uv_mutex_t global_epoll_lock;
>> + static uv_once_t once =3D UV_ONCE_INIT;
>> +
>> +@@ -178,18 +178,18 @@ static void after_fork(void) {
>> +
>> +
>> + static void child_fork(void) {
>> +-  struct uv__queue* q;
>> ++  QUEUE* q;
>> +   uv_once_t child_once =3D UV_ONCE_INIT;
>> +
>> +   /* reset once */
>> +   memcpy(&once, &child_once, sizeof(child_once));
>> +
>> +   /* reset epoll list */
>> +-  while (!uv__queue_empty(&global_epoll_queue)) {
>> ++  while (!QUEUE_EMPTY(&global_epoll_queue)) {
>> +     uv__os390_epoll* lst;
>> +-    q =3D uv__queue_head(&global_epoll_queue);
>> +-    uv__queue_remove(q);
>> +-    lst =3D uv__queue_data(q, uv__os390_epoll, member);
>> ++    q =3D QUEUE_HEAD(&global_epoll_queue);
>> ++    QUEUE_REMOVE(q);
>> ++    lst =3D QUEUE_DATA(q, uv__os390_epoll, member);
>> +     uv__free(lst->items);
>> +     lst->items =3D NULL;
>> +     lst->size =3D 0;
>> +@@ -201,7 +201,7 @@ static void child_fork(void) {
>> +
>> +
>> + static void epoll_init(void) {
>> +-  uv__queue_init(&global_epoll_queue);
>> ++  QUEUE_INIT(&global_epoll_queue);
>> +   if (uv_mutex_init(&global_epoll_lock))
>> +     abort();
>> +
>> +@@ -225,7 +225,7 @@ uv__os390_epoll* epoll_create1(int flags) {
>> +     lst->items[lst->size - 1].revents =3D 0;
>> +     uv_once(&once, epoll_init);
>> +     uv_mutex_lock(&global_epoll_lock);
>> +-    uv__queue_insert_tail(&global_epoll_queue, &lst->member);
>> ++    QUEUE_INSERT_TAIL(&global_epoll_queue, &lst->member);
>> +     uv_mutex_unlock(&global_epoll_lock);
>> +   }
>> +
>> +@@ -352,14 +352,14 @@ int epoll_wait(uv__os390_epoll* lst, struct epoll=
_event* events,
>> +
>> +
>> + int epoll_file_close(int fd) {
>> +-  struct uv__queue* q;
>> ++  QUEUE* q;
>> +
>> +   uv_once(&once, epoll_init);
>> +   uv_mutex_lock(&global_epoll_lock);
>> +-  uv__queue_foreach(q, &global_epoll_queue) {
>> ++  QUEUE_FOREACH(q, &global_epoll_queue) {
>> +     uv__os390_epoll* lst;
>> +
>> +-    lst =3D uv__queue_data(q, uv__os390_epoll, member);
>> ++    lst =3D QUEUE_DATA(q, uv__os390_epoll, member);
>> +     if (fd < lst->size && lst->items !=3D NULL && lst->items[fd].fd !=
=3D -1)
>> +       lst->items[fd].fd =3D -1;
>> +   }
>> +@@ -371,7 +371,7 @@ int epoll_file_close(int fd) {
>> + void epoll_queue_close(uv__os390_epoll* lst) {
>> +   /* Remove epoll instance from global queue */
>> +   uv_mutex_lock(&global_epoll_lock);
>> +-  uv__queue_remove(&lst->member);
>> ++  QUEUE_REMOVE(&lst->member);
>> +   uv_mutex_unlock(&global_epoll_lock);
>> +
>> +   /* Free resources */
>> +diff --git a/deps/uv/src/unix/os390-syscalls.h b/deps/uv/src/unix/os390=
-syscalls.h
>> +index d5f3bcf8b1c..9f504171d85 100644
>> +--- a/deps/uv/src/unix/os390-syscalls.h
>> ++++ b/deps/uv/src/unix/os390-syscalls.h
>> +@@ -45,7 +45,7 @@ struct epoll_event {
>> + };
>> +
>> + typedef struct {
>> +-  struct uv__queue member;
>> ++  QUEUE member;
>> +   struct pollfd* items;
>> +   unsigned long size;
>> +   int msg_queue;
>> +diff --git a/deps/uv/src/unix/os390.c b/deps/uv/src/unix/os390.c
>> +index bbd37692d1d..a87c2d77faf 100644
>> +--- a/deps/uv/src/unix/os390.c
>> ++++ b/deps/uv/src/unix/os390.c
>> +@@ -815,7 +815,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +   uv__os390_epoll* ep;
>> +   int have_signals;
>> +   int real_timeout;
>> +-  struct uv__queue* q;
>> ++  QUEUE* q;
>> +   uv__io_t* w;
>> +   uint64_t base;
>> +   int count;
>> +@@ -827,19 +827,19 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +   int reset_timeout;
>> +
>> +   if (loop->nfds =3D=3D 0) {
>> +-    assert(uv__queue_empty(&loop->watcher_queue));
>> ++    assert(QUEUE_EMPTY(&loop->watcher_queue));
>> +     return;
>> +   }
>> +
>> +   lfields =3D uv__get_internal_fields(loop);
>> +
>> +-  while (!uv__queue_empty(&loop->watcher_queue)) {
>> ++  while (!QUEUE_EMPTY(&loop->watcher_queue)) {
>> +     uv_stream_t* stream;
>> +
>> +-    q =3D uv__queue_head(&loop->watcher_queue);
>> +-    uv__queue_remove(q);
>> +-    uv__queue_init(q);
>> +-    w =3D uv__queue_data(q, uv__io_t, watcher_queue);
>> ++    q =3D QUEUE_HEAD(&loop->watcher_queue);
>> ++    QUEUE_REMOVE(q);
>> ++    QUEUE_INIT(q);
>> ++    w =3D QUEUE_DATA(q, uv__io_t, watcher_queue);
>> +
>> +     assert(w->pevents !=3D 0);
>> +     assert(w->fd >=3D 0);
>> +diff --git a/deps/uv/src/unix/pipe.c b/deps/uv/src/unix/pipe.c
>> +index d332f351830..ce91ac49b30 100644
>> +--- a/deps/uv/src/unix/pipe.c
>> ++++ b/deps/uv/src/unix/pipe.c
>> +@@ -297,7 +297,7 @@ out:
>> +   uv__req_init(handle->loop, req, UV_CONNECT);
>> +   req->handle =3D (uv_stream_t*)handle;
>> +   req->cb =3D cb;
>> +-  uv__queue_init(&req->queue);
>> ++  QUEUE_INIT(&req->queue);
>> +
>> +   /* Force callback to run on next tick in case of error. */
>> +   if (err)
>> +diff --git a/deps/uv/src/unix/posix-poll.c b/deps/uv/src/unix/posix-pol=
l.c
>> +index 2e016c2fbae..7e7de86845d 100644
>> +--- a/deps/uv/src/unix/posix-poll.c
>> ++++ b/deps/uv/src/unix/posix-poll.c
>> +@@ -137,7 +137,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +   sigset_t set;
>> +   uint64_t time_base;
>> +   uint64_t time_diff;
>> +-  struct uv__queue* q;
>> ++  QUEUE* q;
>> +   uv__io_t* w;
>> +   size_t i;
>> +   unsigned int nevents;
>> +@@ -149,19 +149,19 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +   int reset_timeout;
>> +
>> +   if (loop->nfds =3D=3D 0) {
>> +-    assert(uv__queue_empty(&loop->watcher_queue));
>> ++    assert(QUEUE_EMPTY(&loop->watcher_queue));
>> +     return;
>> +   }
>> +
>> +   lfields =3D uv__get_internal_fields(loop);
>> +
>> +   /* Take queued watchers and add their fds to our poll fds array.  */
>> +-  while (!uv__queue_empty(&loop->watcher_queue)) {
>> +-    q =3D uv__queue_head(&loop->watcher_queue);
>> +-    uv__queue_remove(q);
>> +-    uv__queue_init(q);
>> ++  while (!QUEUE_EMPTY(&loop->watcher_queue)) {
>> ++    q =3D QUEUE_HEAD(&loop->watcher_queue);
>> ++    QUEUE_REMOVE(q);
>> ++    QUEUE_INIT(q);
>> +
>> +-    w =3D uv__queue_data(q, uv__io_t, watcher_queue);
>> ++    w =3D QUEUE_DATA(q, uv__io_t, watcher_queue);
>> +     assert(w->pevents !=3D 0);
>> +     assert(w->fd >=3D 0);
>> +     assert(w->fd < (int) loop->nwatchers);
>> +diff --git a/deps/uv/src/unix/process.c b/deps/uv/src/unix/process.c
>> +index dd58c18d9b9..bbf367b57d3 100644
>> +--- a/deps/uv/src/unix/process.c
>> ++++ b/deps/uv/src/unix/process.c
>> +@@ -108,17 +108,17 @@ void uv__wait_children(uv_loop_t* loop) {
>> +   int status;
>> +   int options;
>> +   pid_t pid;
>> +-  struct uv__queue pending;
>> +-  struct uv__queue* q;
>> +-  struct uv__queue* h;
>> ++  QUEUE pending;
>> ++  QUEUE* q;
>> ++  QUEUE* h;
>> +
>> +-  uv__queue_init(&pending);
>> ++  QUEUE_INIT(&pending);
>> +
>> +   h =3D &loop->process_handles;
>> +-  q =3D uv__queue_head(h);
>> ++  q =3D QUEUE_HEAD(h);
>> +   while (q !=3D h) {
>> +-    process =3D uv__queue_data(q, uv_process_t, queue);
>> +-    q =3D uv__queue_next(q);
>> ++    process =3D QUEUE_DATA(q, uv_process_t, queue);
>> ++    q =3D QUEUE_NEXT(q);
>> +
>> + #ifndef UV_USE_SIGCHLD
>> +     if ((process->flags & UV_HANDLE_REAP) =3D=3D 0)
>> +@@ -149,18 +149,18 @@ void uv__wait_children(uv_loop_t* loop) {
>> +
>> +     assert(pid =3D=3D process->pid);
>> +     process->status =3D status;
>> +-    uv__queue_remove(&process->queue);
>> +-    uv__queue_insert_tail(&pending, &process->queue);
>> ++    QUEUE_REMOVE(&process->queue);
>> ++    QUEUE_INSERT_TAIL(&pending, &process->queue);
>> +   }
>> +
>> +   h =3D &pending;
>> +-  q =3D uv__queue_head(h);
>> ++  q =3D QUEUE_HEAD(h);
>> +   while (q !=3D h) {
>> +-    process =3D uv__queue_data(q, uv_process_t, queue);
>> +-    q =3D uv__queue_next(q);
>> ++    process =3D QUEUE_DATA(q, uv_process_t, queue);
>> ++    q =3D QUEUE_NEXT(q);
>> +
>> +-    uv__queue_remove(&process->queue);
>> +-    uv__queue_init(&process->queue);
>> ++    QUEUE_REMOVE(&process->queue);
>> ++    QUEUE_INIT(&process->queue);
>> +     uv__handle_stop(process);
>> +
>> +     if (process->exit_cb =3D=3D NULL)
>> +@@ -176,7 +176,7 @@ void uv__wait_children(uv_loop_t* loop) {
>> +
>> +     process->exit_cb(process, exit_status, term_signal);
>> +   }
>> +-  assert(uv__queue_empty(&pending));
>> ++  assert(QUEUE_EMPTY(&pending));
>> + }
>> +
>> + /*
>> +@@ -978,7 +978,7 @@ int uv_spawn(uv_loop_t* loop,
>> +                               UV_PROCESS_WINDOWS_VERBATIM_ARGUMENTS)))=
;
>> +
>> +   uv__handle_init(loop, (uv_handle_t*)process, UV_PROCESS);
>> +-  uv__queue_init(&process->queue);
>> ++  QUEUE_INIT(&process->queue);
>> +   process->status =3D 0;
>> +
>> +   stdio_count =3D options->stdio_count;
>> +@@ -1041,7 +1041,7 @@ int uv_spawn(uv_loop_t* loop,
>> +
>> +     process->pid =3D pid;
>> +     process->exit_cb =3D options->exit_cb;
>> +-    uv__queue_insert_tail(&loop->process_handles, &process->queue);
>> ++    QUEUE_INSERT_TAIL(&loop->process_handles, &process->queue);
>> +     uv__handle_start(process);
>> +   }
>> +
>> +@@ -1103,10 +1103,10 @@ int uv_kill(int pid, int signum) {
>> +
>> +
>> + void uv__process_close(uv_process_t* handle) {
>> +-  uv__queue_remove(&handle->queue);
>> ++  QUEUE_REMOVE(&handle->queue);
>> +   uv__handle_stop(handle);
>> + #ifdef UV_USE_SIGCHLD
>> +-  if (uv__queue_empty(&handle->loop->process_handles))
>> ++  if (QUEUE_EMPTY(&handle->loop->process_handles))
>> +     uv_signal_stop(&handle->loop->child_watcher);
>> + #endif
>> + }
>> +diff --git a/deps/uv/src/unix/signal.c b/deps/uv/src/unix/signal.c
>> +index 63aba5a60e0..bb70523f561 100644
>> +--- a/deps/uv/src/unix/signal.c
>> ++++ b/deps/uv/src/unix/signal.c
>> +@@ -291,16 +291,16 @@ int uv__signal_loop_fork(uv_loop_t* loop) {
>> +
>> +
>> + void uv__signal_loop_cleanup(uv_loop_t* loop) {
>> +-  struct uv__queue* q;
>> ++  QUEUE* q;
>> +
>> +   /* Stop all the signal watchers that are still attached to this loop=
. This
>> +    * ensures that the (shared) signal tree doesn't contain any invalid=
 entries
>> +    * entries, and that signal handlers are removed when appropriate.
>> +-   * It's safe to use uv__queue_foreach here because the handles and t=
he handle
>> ++   * It's safe to use QUEUE_FOREACH here because the handles and the h=
andle
>> +    * queue are not modified by uv__signal_stop().
>> +    */
>> +-  uv__queue_foreach(q, &loop->handle_queue) {
>> +-    uv_handle_t* handle =3D uv__queue_data(q, uv_handle_t, handle_queu=
e);
>> ++  QUEUE_FOREACH(q, &loop->handle_queue) {
>> ++    uv_handle_t* handle =3D QUEUE_DATA(q, uv_handle_t, handle_queue);
>> +
>> +     if (handle->type =3D=3D UV_SIGNAL)
>> +       uv__signal_stop((uv_signal_t*) handle);
>> +diff --git a/deps/uv/src/unix/stream.c b/deps/uv/src/unix/stream.c
>> +index 28c4d5463c4..03f92b5045a 100644
>> +--- a/deps/uv/src/unix/stream.c
>> ++++ b/deps/uv/src/unix/stream.c
>> +@@ -94,8 +94,8 @@ void uv__stream_init(uv_loop_t* loop,
>> +   stream->accepted_fd =3D -1;
>> +   stream->queued_fds =3D NULL;
>> +   stream->delayed_error =3D 0;
>> +-  uv__queue_init(&stream->write_queue);
>> +-  uv__queue_init(&stream->write_completed_queue);
>> ++  QUEUE_INIT(&stream->write_queue);
>> ++  QUEUE_INIT(&stream->write_completed_queue);
>> +   stream->write_queue_size =3D 0;
>> +
>> +   if (loop->emfile_fd =3D=3D -1) {
>> +@@ -439,15 +439,15 @@ int uv__stream_open(uv_stream_t* stream, int fd, =
int flags) {
>> +
>> + void uv__stream_flush_write_queue(uv_stream_t* stream, int error) {
>> +   uv_write_t* req;
>> +-  struct uv__queue* q;
>> +-  while (!uv__queue_empty(&stream->write_queue)) {
>> +-    q =3D uv__queue_head(&stream->write_queue);
>> +-    uv__queue_remove(q);
>> ++  QUEUE* q;
>> ++  while (!QUEUE_EMPTY(&stream->write_queue)) {
>> ++    q =3D QUEUE_HEAD(&stream->write_queue);
>> ++    QUEUE_REMOVE(q);
>> +
>> +-    req =3D uv__queue_data(q, uv_write_t, queue);
>> ++    req =3D QUEUE_DATA(q, uv_write_t, queue);
>> +     req->error =3D error;
>> +
>> +-    uv__queue_insert_tail(&stream->write_completed_queue, &req->queue)=
;
>> ++    QUEUE_INSERT_TAIL(&stream->write_completed_queue, &req->queue);
>> +   }
>> + }
>> +
>> +@@ -627,7 +627,7 @@ static void uv__drain(uv_stream_t* stream) {
>> +   uv_shutdown_t* req;
>> +   int err;
>> +
>> +-  assert(uv__queue_empty(&stream->write_queue));
>> ++  assert(QUEUE_EMPTY(&stream->write_queue));
>> +   if (!(stream->flags & UV_HANDLE_CLOSING)) {
>> +     uv__io_stop(stream->loop, &stream->io_watcher, POLLOUT);
>> +     uv__stream_osx_interrupt_select(stream);
>> +@@ -714,7 +714,7 @@ static void uv__write_req_finish(uv_write_t* req) {
>> +   uv_stream_t* stream =3D req->handle;
>> +
>> +   /* Pop the req off tcp->write_queue. */
>> +-  uv__queue_remove(&req->queue);
>> ++  QUEUE_REMOVE(&req->queue);
>> +
>> +   /* Only free when there was no error. On error, we touch up write_qu=
eue_size
>> +    * right before making the callback. The reason we don't do that rig=
ht away
>> +@@ -731,7 +731,7 @@ static void uv__write_req_finish(uv_write_t* req) {
>> +   /* Add it to the write_completed_queue where it will have its
>> +    * callback called in the near future.
>> +    */
>> +-  uv__queue_insert_tail(&stream->write_completed_queue, &req->queue);
>> ++  QUEUE_INSERT_TAIL(&stream->write_completed_queue, &req->queue);
>> +   uv__io_feed(stream->loop, &stream->io_watcher);
>> + }
>> +
>> +@@ -837,7 +837,7 @@ static int uv__try_write(uv_stream_t* stream,
>> + }
>> +
>> + static void uv__write(uv_stream_t* stream) {
>> +-  struct uv__queue* q;
>> ++  QUEUE* q;
>> +   uv_write_t* req;
>> +   ssize_t n;
>> +   int count;
>> +@@ -851,11 +851,11 @@ static void uv__write(uv_stream_t* stream) {
>> +   count =3D 32;
>> +
>> +   for (;;) {
>> +-    if (uv__queue_empty(&stream->write_queue))
>> ++    if (QUEUE_EMPTY(&stream->write_queue))
>> +       return;
>> +
>> +-    q =3D uv__queue_head(&stream->write_queue);
>> +-    req =3D uv__queue_data(q, uv_write_t, queue);
>> ++    q =3D QUEUE_HEAD(&stream->write_queue);
>> ++    req =3D QUEUE_DATA(q, uv_write_t, queue);
>> +     assert(req->handle =3D=3D stream);
>> +
>> +     n =3D uv__try_write(stream,
>> +@@ -899,19 +899,19 @@ error:
>> +
>> + static void uv__write_callbacks(uv_stream_t* stream) {
>> +   uv_write_t* req;
>> +-  struct uv__queue* q;
>> +-  struct uv__queue pq;
>> ++  QUEUE* q;
>> ++  QUEUE pq;
>> +
>> +-  if (uv__queue_empty(&stream->write_completed_queue))
>> ++  if (QUEUE_EMPTY(&stream->write_completed_queue))
>> +     return;
>> +
>> +-  uv__queue_move(&stream->write_completed_queue, &pq);
>> ++  QUEUE_MOVE(&stream->write_completed_queue, &pq);
>> +
>> +-  while (!uv__queue_empty(&pq)) {
>> ++  while (!QUEUE_EMPTY(&pq)) {
>> +     /* Pop a req off write_completed_queue. */
>> +-    q =3D uv__queue_head(&pq);
>> +-    req =3D uv__queue_data(q, uv_write_t, queue);
>> +-    uv__queue_remove(q);
>> ++    q =3D QUEUE_HEAD(&pq);
>> ++    req =3D QUEUE_DATA(q, uv_write_t, queue);
>> ++    QUEUE_REMOVE(q);
>> +     uv__req_unregister(stream->loop, req);
>> +
>> +     if (req->bufs !=3D NULL) {
>> +@@ -1174,7 +1174,7 @@ int uv_shutdown(uv_shutdown_t* req, uv_stream_t* =
stream, uv_shutdown_cb cb) {
>> +   stream->shutdown_req =3D req;
>> +   stream->flags &=3D ~UV_HANDLE_WRITABLE;
>> +
>> +-  if (uv__queue_empty(&stream->write_queue))
>> ++  if (QUEUE_EMPTY(&stream->write_queue))
>> +     uv__io_feed(stream->loop, &stream->io_watcher);
>> +
>> +   return 0;
>> +@@ -1227,7 +1227,7 @@ static void uv__stream_io(uv_loop_t* loop, uv__io=
_t* w, unsigned int events) {
>> +     uv__write_callbacks(stream);
>> +
>> +     /* Write queue drained. */
>> +-    if (uv__queue_empty(&stream->write_queue))
>> ++    if (QUEUE_EMPTY(&stream->write_queue))
>> +       uv__drain(stream);
>> +   }
>> + }
>> +@@ -1270,7 +1270,7 @@ static void uv__stream_connect(uv_stream_t* strea=
m) {
>> +   stream->connect_req =3D NULL;
>> +   uv__req_unregister(stream->loop, req);
>> +
>> +-  if (error < 0 || uv__queue_empty(&stream->write_queue)) {
>> ++  if (error < 0 || QUEUE_EMPTY(&stream->write_queue)) {
>> +     uv__io_stop(stream->loop, &stream->io_watcher, POLLOUT);
>> +   }
>> +
>> +@@ -1352,7 +1352,7 @@ int uv_write2(uv_write_t* req,
>> +   req->handle =3D stream;
>> +   req->error =3D 0;
>> +   req->send_handle =3D send_handle;
>> +-  uv__queue_init(&req->queue);
>> ++  QUEUE_INIT(&req->queue);
>> +
>> +   req->bufs =3D req->bufsml;
>> +   if (nbufs > ARRAY_SIZE(req->bufsml))
>> +@@ -1367,7 +1367,7 @@ int uv_write2(uv_write_t* req,
>> +   stream->write_queue_size +=3D uv__count_bufs(bufs, nbufs);
>> +
>> +   /* Append the request to write_queue. */
>> +-  uv__queue_insert_tail(&stream->write_queue, &req->queue);
>> ++  QUEUE_INSERT_TAIL(&stream->write_queue, &req->queue);
>> +
>> +   /* If the queue was empty when this function began, we should attemp=
t to
>> +    * do the write immediately. Otherwise start the write_watcher and w=
ait
>> +diff --git a/deps/uv/src/unix/sunos.c b/deps/uv/src/unix/sunos.c
>> +index 2d6bae79604..75b6fbad493 100644
>> +--- a/deps/uv/src/unix/sunos.c
>> ++++ b/deps/uv/src/unix/sunos.c
>> +@@ -148,7 +148,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +   struct port_event events[1024];
>> +   struct port_event* pe;
>> +   struct timespec spec;
>> +-  struct uv__queue* q;
>> ++  QUEUE* q;
>> +   uv__io_t* w;
>> +   sigset_t* pset;
>> +   sigset_t set;
>> +@@ -166,16 +166,16 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +   int reset_timeout;
>> +
>> +   if (loop->nfds =3D=3D 0) {
>> +-    assert(uv__queue_empty(&loop->watcher_queue));
>> ++    assert(QUEUE_EMPTY(&loop->watcher_queue));
>> +     return;
>> +   }
>> +
>> +-  while (!uv__queue_empty(&loop->watcher_queue)) {
>> +-    q =3D uv__queue_head(&loop->watcher_queue);
>> +-    uv__queue_remove(q);
>> +-    uv__queue_init(q);
>> ++  while (!QUEUE_EMPTY(&loop->watcher_queue)) {
>> ++    q =3D QUEUE_HEAD(&loop->watcher_queue);
>> ++    QUEUE_REMOVE(q);
>> ++    QUEUE_INIT(q);
>> +
>> +-    w =3D uv__queue_data(q, uv__io_t, watcher_queue);
>> ++    w =3D QUEUE_DATA(q, uv__io_t, watcher_queue);
>> +     assert(w->pevents !=3D 0);
>> +
>> +     if (port_associate(loop->backend_fd,
>> +@@ -316,8 +316,8 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +         continue;  /* Disabled by callback. */
>> +
>> +       /* Events Ports operates in oneshot mode, rearm timer on next ru=
n. */
>> +-      if (w->pevents !=3D 0 && uv__queue_empty(&w->watcher_queue))
>> +-        uv__queue_insert_tail(&loop->watcher_queue, &w->watcher_queue)=
;
>> ++      if (w->pevents !=3D 0 && QUEUE_EMPTY(&w->watcher_queue))
>> ++        QUEUE_INSERT_TAIL(&loop->watcher_queue, &w->watcher_queue);
>> +     }
>> +
>> +     uv__metrics_inc_events(loop, nevents);
>> +diff --git a/deps/uv/src/unix/tcp.c b/deps/uv/src/unix/tcp.c
>> +index d6c848f4610..ab4e06c2f67 100644
>> +--- a/deps/uv/src/unix/tcp.c
>> ++++ b/deps/uv/src/unix/tcp.c
>> +@@ -124,7 +124,7 @@ int uv_tcp_init_ex(uv_loop_t* loop, uv_tcp_t* tcp, =
unsigned int flags) {
>> +   if (domain !=3D AF_UNSPEC) {
>> +     err =3D new_socket(tcp, domain, 0);
>> +     if (err) {
>> +-      uv__queue_remove(&tcp->handle_queue);
>> ++      QUEUE_REMOVE(&tcp->handle_queue);
>> +       if (tcp->io_watcher.fd !=3D -1)
>> +         uv__close(tcp->io_watcher.fd);
>> +       tcp->io_watcher.fd =3D -1;
>> +@@ -252,7 +252,7 @@ out:
>> +   uv__req_init(handle->loop, req, UV_CONNECT);
>> +   req->cb =3D cb;
>> +   req->handle =3D (uv_stream_t*) handle;
>> +-  uv__queue_init(&req->queue);
>> ++  QUEUE_INIT(&req->queue);
>> +   handle->connect_req =3D req;
>> +
>> +   uv__io_start(handle->loop, &handle->io_watcher, POLLOUT);
>> +diff --git a/deps/uv/src/unix/tty.c b/deps/uv/src/unix/tty.c
>> +index d099bdb3b67..7a5390c1a8b 100644
>> +--- a/deps/uv/src/unix/tty.c
>> ++++ b/deps/uv/src/unix/tty.c
>> +@@ -222,7 +222,7 @@ skip:
>> +     int rc =3D r;
>> +     if (newfd !=3D -1)
>> +       uv__close(newfd);
>> +-    uv__queue_remove(&tty->handle_queue);
>> ++    QUEUE_REMOVE(&tty->handle_queue);
>> +     do
>> +       r =3D fcntl(fd, F_SETFL, saved_flags);
>> +     while (r =3D=3D -1 && errno =3D=3D EINTR);
>> +diff --git a/deps/uv/src/unix/udp.c b/deps/uv/src/unix/udp.c
>> +index c2814512a5f..f556808fbae 100644
>> +--- a/deps/uv/src/unix/udp.c
>> ++++ b/deps/uv/src/unix/udp.c
>> +@@ -62,18 +62,18 @@ void uv__udp_close(uv_udp_t* handle) {
>> +
>> + void uv__udp_finish_close(uv_udp_t* handle) {
>> +   uv_udp_send_t* req;
>> +-  struct uv__queue* q;
>> ++  QUEUE* q;
>> +
>> +   assert(!uv__io_active(&handle->io_watcher, POLLIN | POLLOUT));
>> +   assert(handle->io_watcher.fd =3D=3D -1);
>> +
>> +-  while (!uv__queue_empty(&handle->write_queue)) {
>> +-    q =3D uv__queue_head(&handle->write_queue);
>> +-    uv__queue_remove(q);
>> ++  while (!QUEUE_EMPTY(&handle->write_queue)) {
>> ++    q =3D QUEUE_HEAD(&handle->write_queue);
>> ++    QUEUE_REMOVE(q);
>> +
>> +-    req =3D uv__queue_data(q, uv_udp_send_t, queue);
>> ++    req =3D QUEUE_DATA(q, uv_udp_send_t, queue);
>> +     req->status =3D UV_ECANCELED;
>> +-    uv__queue_insert_tail(&handle->write_completed_queue, &req->queue)=
;
>> ++    QUEUE_INSERT_TAIL(&handle->write_completed_queue, &req->queue);
>> +   }
>> +
>> +   uv__udp_run_completed(handle);
>> +@@ -90,16 +90,16 @@ void uv__udp_finish_close(uv_udp_t* handle) {
>> +
>> + static void uv__udp_run_completed(uv_udp_t* handle) {
>> +   uv_udp_send_t* req;
>> +-  struct uv__queue* q;
>> ++  QUEUE* q;
>> +
>> +   assert(!(handle->flags & UV_HANDLE_UDP_PROCESSING));
>> +   handle->flags |=3D UV_HANDLE_UDP_PROCESSING;
>> +
>> +-  while (!uv__queue_empty(&handle->write_completed_queue)) {
>> +-    q =3D uv__queue_head(&handle->write_completed_queue);
>> +-    uv__queue_remove(q);
>> ++  while (!QUEUE_EMPTY(&handle->write_completed_queue)) {
>> ++    q =3D QUEUE_HEAD(&handle->write_completed_queue);
>> ++    QUEUE_REMOVE(q);
>> +
>> +-    req =3D uv__queue_data(q, uv_udp_send_t, queue);
>> ++    req =3D QUEUE_DATA(q, uv_udp_send_t, queue);
>> +     uv__req_unregister(handle->loop, req);
>> +
>> +     handle->send_queue_size -=3D uv__count_bufs(req->bufs, req->nbufs)=
;
>> +@@ -121,7 +121,7 @@ static void uv__udp_run_completed(uv_udp_t* handle)=
 {
>> +       req->send_cb(req, req->status);
>> +   }
>> +
>> +-  if (uv__queue_empty(&handle->write_queue)) {
>> ++  if (QUEUE_EMPTY(&handle->write_queue)) {
>> +     /* Pending queue and completion queue empty, stop watcher. */
>> +     uv__io_stop(handle->loop, &handle->io_watcher, POLLOUT);
>> +     if (!uv__io_active(&handle->io_watcher, POLLIN))
>> +@@ -280,20 +280,20 @@ static void uv__udp_sendmsg(uv_udp_t* handle) {
>> +   uv_udp_send_t* req;
>> +   struct mmsghdr h[20];
>> +   struct mmsghdr* p;
>> +-  struct uv__queue* q;
>> ++  QUEUE* q;
>> +   ssize_t npkts;
>> +   size_t pkts;
>> +   size_t i;
>> +
>> +-  if (uv__queue_empty(&handle->write_queue))
>> ++  if (QUEUE_EMPTY(&handle->write_queue))
>> +     return;
>> +
>> + write_queue_drain:
>> +-  for (pkts =3D 0, q =3D uv__queue_head(&handle->write_queue);
>> ++  for (pkts =3D 0, q =3D QUEUE_HEAD(&handle->write_queue);
>> +        pkts < ARRAY_SIZE(h) && q !=3D &handle->write_queue;
>> +-       ++pkts, q =3D uv__queue_head(q)) {
>> ++       ++pkts, q =3D QUEUE_HEAD(q)) {
>> +     assert(q !=3D NULL);
>> +-    req =3D uv__queue_data(q, uv_udp_send_t, queue);
>> ++    req =3D QUEUE_DATA(q, uv_udp_send_t, queue);
>> +     assert(req !=3D NULL);
>> +
>> +     p =3D &h[pkts];
>> +@@ -325,16 +325,16 @@ write_queue_drain:
>> +   if (npkts < 1) {
>> +     if (errno =3D=3D EAGAIN || errno =3D=3D EWOULDBLOCK || errno =3D=
=3D ENOBUFS)
>> +       return;
>> +-    for (i =3D 0, q =3D uv__queue_head(&handle->write_queue);
>> ++    for (i =3D 0, q =3D QUEUE_HEAD(&handle->write_queue);
>> +          i < pkts && q !=3D &handle->write_queue;
>> +-         ++i, q =3D uv__queue_head(&handle->write_queue)) {
>> ++         ++i, q =3D QUEUE_HEAD(&handle->write_queue)) {
>> +       assert(q !=3D NULL);
>> +-      req =3D uv__queue_data(q, uv_udp_send_t, queue);
>> ++      req =3D QUEUE_DATA(q, uv_udp_send_t, queue);
>> +       assert(req !=3D NULL);
>> +
>> +       req->status =3D UV__ERR(errno);
>> +-      uv__queue_remove(&req->queue);
>> +-      uv__queue_insert_tail(&handle->write_completed_queue, &req->queu=
e);
>> ++      QUEUE_REMOVE(&req->queue);
>> ++      QUEUE_INSERT_TAIL(&handle->write_completed_queue, &req->queue);
>> +     }
>> +     uv__io_feed(handle->loop, &handle->io_watcher);
>> +     return;
>> +@@ -343,11 +343,11 @@ write_queue_drain:
>> +   /* Safety: npkts known to be >0 below. Hence cast from ssize_t
>> +    * to size_t safe.
>> +    */
>> +-  for (i =3D 0, q =3D uv__queue_head(&handle->write_queue);
>> ++  for (i =3D 0, q =3D QUEUE_HEAD(&handle->write_queue);
>> +        i < (size_t)npkts && q !=3D &handle->write_queue;
>> +-       ++i, q =3D uv__queue_head(&handle->write_queue)) {
>> ++       ++i, q =3D QUEUE_HEAD(&handle->write_queue)) {
>> +     assert(q !=3D NULL);
>> +-    req =3D uv__queue_data(q, uv_udp_send_t, queue);
>> ++    req =3D QUEUE_DATA(q, uv_udp_send_t, queue);
>> +     assert(req !=3D NULL);
>> +
>> +     req->status =3D req->bufs[0].len;
>> +@@ -357,25 +357,25 @@ write_queue_drain:
>> +      * why we don't handle partial writes. Just pop the request
>> +      * off the write queue and onto the completed queue, done.
>> +      */
>> +-    uv__queue_remove(&req->queue);
>> +-    uv__queue_insert_tail(&handle->write_completed_queue, &req->queue)=
;
>> ++    QUEUE_REMOVE(&req->queue);
>> ++    QUEUE_INSERT_TAIL(&handle->write_completed_queue, &req->queue);
>> +   }
>> +
>> +   /* couldn't batch everything, continue sending (jump to avoid stack =
growth) */
>> +-  if (!uv__queue_empty(&handle->write_queue))
>> ++  if (!QUEUE_EMPTY(&handle->write_queue))
>> +     goto write_queue_drain;
>> +   uv__io_feed(handle->loop, &handle->io_watcher);
>> + #else  /* __linux__ || ____FreeBSD__ */
>> +   uv_udp_send_t* req;
>> +   struct msghdr h;
>> +-  struct uv__queue* q;
>> ++  QUEUE* q;
>> +   ssize_t size;
>> +
>> +-  while (!uv__queue_empty(&handle->write_queue)) {
>> +-    q =3D uv__queue_head(&handle->write_queue);
>> ++  while (!QUEUE_EMPTY(&handle->write_queue)) {
>> ++    q =3D QUEUE_HEAD(&handle->write_queue);
>> +     assert(q !=3D NULL);
>> +
>> +-    req =3D uv__queue_data(q, uv_udp_send_t, queue);
>> ++    req =3D QUEUE_DATA(q, uv_udp_send_t, queue);
>> +     assert(req !=3D NULL);
>> +
>> +     memset(&h, 0, sizeof h);
>> +@@ -414,8 +414,8 @@ write_queue_drain:
>> +      * why we don't handle partial writes. Just pop the request
>> +      * off the write queue and onto the completed queue, done.
>> +      */
>> +-    uv__queue_remove(&req->queue);
>> +-    uv__queue_insert_tail(&handle->write_completed_queue, &req->queue)=
;
>> ++    QUEUE_REMOVE(&req->queue);
>> ++    QUEUE_INSERT_TAIL(&handle->write_completed_queue, &req->queue);
>> +     uv__io_feed(handle->loop, &handle->io_watcher);
>> +   }
>> + #endif  /* __linux__ || ____FreeBSD__ */
>> +@@ -729,7 +729,7 @@ int uv__udp_send(uv_udp_send_t* req,
>> +   memcpy(req->bufs, bufs, nbufs * sizeof(bufs[0]));
>> +   handle->send_queue_size +=3D uv__count_bufs(req->bufs, req->nbufs);
>> +   handle->send_queue_count++;
>> +-  uv__queue_insert_tail(&handle->write_queue, &req->queue);
>> ++  QUEUE_INSERT_TAIL(&handle->write_queue, &req->queue);
>> +   uv__handle_start(handle);
>> +
>> +   if (empty_queue && !(handle->flags & UV_HANDLE_UDP_PROCESSING)) {
>> +@@ -739,7 +739,7 @@ int uv__udp_send(uv_udp_send_t* req,
>> +      * away. In such cases the `io_watcher` has to be queued for async=
hronous
>> +      * write.
>> +      */
>> +-    if (!uv__queue_empty(&handle->write_queue))
>> ++    if (!QUEUE_EMPTY(&handle->write_queue))
>> +       uv__io_start(handle->loop, &handle->io_watcher, POLLOUT);
>> +   } else {
>> +     uv__io_start(handle->loop, &handle->io_watcher, POLLOUT);
>> +@@ -1007,8 +1007,8 @@ int uv__udp_init_ex(uv_loop_t* loop,
>> +   handle->send_queue_size =3D 0;
>> +   handle->send_queue_count =3D 0;
>> +   uv__io_init(&handle->io_watcher, uv__udp_io, fd);
>> +-  uv__queue_init(&handle->write_queue);
>> +-  uv__queue_init(&handle->write_completed_queue);
>> ++  QUEUE_INIT(&handle->write_queue);
>> ++  QUEUE_INIT(&handle->write_completed_queue);
>> +
>> +   return 0;
>> + }
>> +diff --git a/deps/uv/src/uv-common.c b/deps/uv/src/uv-common.c
>> +index 916f3f4e006..cec771fab21 100644
>> +--- a/deps/uv/src/uv-common.c
>> ++++ b/deps/uv/src/uv-common.c
>> +@@ -533,17 +533,17 @@ int uv_udp_recv_stop(uv_udp_t* handle) {
>> +
>> +
>> + void uv_walk(uv_loop_t* loop, uv_walk_cb walk_cb, void* arg) {
>> +-  struct uv__queue queue;
>> +-  struct uv__queue* q;
>> ++  QUEUE queue;
>> ++  QUEUE* q;
>> +   uv_handle_t* h;
>> +
>> +-  uv__queue_move(&loop->handle_queue, &queue);
>> +-  while (!uv__queue_empty(&queue)) {
>> +-    q =3D uv__queue_head(&queue);
>> +-    h =3D uv__queue_data(q, uv_handle_t, handle_queue);
>> ++  QUEUE_MOVE(&loop->handle_queue, &queue);
>> ++  while (!QUEUE_EMPTY(&queue)) {
>> ++    q =3D QUEUE_HEAD(&queue);
>> ++    h =3D QUEUE_DATA(q, uv_handle_t, handle_queue);
>> +
>> +-    uv__queue_remove(q);
>> +-    uv__queue_insert_tail(&loop->handle_queue, q);
>> ++    QUEUE_REMOVE(q);
>> ++    QUEUE_INSERT_TAIL(&loop->handle_queue, q);
>> +
>> +     if (h->flags & UV_HANDLE_INTERNAL) continue;
>> +     walk_cb(h, arg);
>> +@@ -553,14 +553,14 @@ void uv_walk(uv_loop_t* loop, uv_walk_cb walk_cb,=
 void* arg) {
>> +
>> + static void uv__print_handles(uv_loop_t* loop, int only_active, FILE* =
stream) {
>> +   const char* type;
>> +-  struct uv__queue* q;
>> ++  QUEUE* q;
>> +   uv_handle_t* h;
>> +
>> +   if (loop =3D=3D NULL)
>> +     loop =3D uv_default_loop();
>> +
>> +-  uv__queue_foreach(q, &loop->handle_queue) {
>> +-    h =3D uv__queue_data(q, uv_handle_t, handle_queue);
>> ++  QUEUE_FOREACH(q, &loop->handle_queue) {
>> ++    h =3D QUEUE_DATA(q, uv_handle_t, handle_queue);
>> +
>> +     if (only_active && !uv__is_active(h))
>> +       continue;
>> +@@ -846,7 +846,7 @@ uv_loop_t* uv_loop_new(void) {
>> +
>> +
>> + int uv_loop_close(uv_loop_t* loop) {
>> +-  struct uv__queue* q;
>> ++  QUEUE* q;
>> +   uv_handle_t* h;
>> + #ifndef NDEBUG
>> +   void* saved_data;
>> +@@ -855,8 +855,8 @@ int uv_loop_close(uv_loop_t* loop) {
>> +   if (uv__has_active_reqs(loop))
>> +     return UV_EBUSY;
>> +
>> +-  uv__queue_foreach(q, &loop->handle_queue) {
>> +-    h =3D uv__queue_data(q, uv_handle_t, handle_queue);
>> ++  QUEUE_FOREACH(q, &loop->handle_queue) {
>> ++    h =3D QUEUE_DATA(q, uv_handle_t, handle_queue);
>> +     if (!(h->flags & UV_HANDLE_INTERNAL))
>> +       return UV_EBUSY;
>> +   }
>> +diff --git a/deps/uv/src/uv-common.h b/deps/uv/src/uv-common.h
>> +index cd57e5a3515..decde5362c8 100644
>> +--- a/deps/uv/src/uv-common.h
>> ++++ b/deps/uv/src/uv-common.h
>> +@@ -323,7 +323,7 @@ void uv__threadpool_cleanup(void);
>> +     (h)->loop =3D (loop_);                                            =
          \
>> +     (h)->type =3D (type_);                                            =
          \
>> +     (h)->flags =3D UV_HANDLE_REF;  /* Ref the loop when active. */    =
          \
>> +-    uv__queue_insert_tail(&(loop_)->handle_queue, &(h)->handle_queue);=
        \
>> ++    QUEUE_INSERT_TAIL(&(loop_)->handle_queue, &(h)->handle_queue);    =
        \
>> +     uv__handle_platform_init(h);                                      =
        \
>> +   }                                                                   =
        \
>> +   while (0)
>> +@@ -415,7 +415,6 @@ struct uv__iou {
>> +   size_t sqelen;
>> +   int ringfd;
>> +   uint32_t in_flight;
>> +-  uint32_t flags;
>> + };
>> + #endif  /* __linux__ */
>> +
>> +diff --git a/deps/uv/src/win/core.c b/deps/uv/src/win/core.c
>> +index e9885a0f1ff..9a3be58849a 100644
>> +--- a/deps/uv/src/win/core.c
>> ++++ b/deps/uv/src/win/core.c
>> +@@ -255,8 +255,8 @@ int uv_loop_init(uv_loop_t* loop) {
>> +   loop->time =3D 0;
>> +   uv_update_time(loop);
>> +
>> +-  uv__queue_init(&loop->wq);
>> +-  uv__queue_init(&loop->handle_queue);
>> ++  QUEUE_INIT(&loop->wq);
>> ++  QUEUE_INIT(&loop->handle_queue);
>> +   loop->active_reqs.count =3D 0;
>> +   loop->active_handles =3D 0;
>> +
>> +@@ -358,7 +358,7 @@ void uv__loop_close(uv_loop_t* loop) {
>> +   }
>> +
>> +   uv_mutex_lock(&loop->wq_mutex);
>> +-  assert(uv__queue_empty(&loop->wq) && "thread pool work queue not emp=
ty!");
>> ++  assert(QUEUE_EMPTY(&loop->wq) && "thread pool work queue not empty!"=
);
>> +   assert(!uv__has_active_reqs(loop));
>> +   uv_mutex_unlock(&loop->wq_mutex);
>> +   uv_mutex_destroy(&loop->wq_mutex);
>> +diff --git a/deps/uv/src/win/fs.c b/deps/uv/src/win/fs.c
>> +index fc209c54f47..deb9438d689 100644
>> +--- a/deps/uv/src/win/fs.c
>> ++++ b/deps/uv/src/win/fs.c
>> +@@ -144,97 +144,26 @@ void uv__fs_init(void) {
>> + }
>> +
>> +
>> +-static int32_t fs__decode_wtf8_char(const char** input) {
>> +-  uint32_t code_point;
>> +-  uint8_t b1;
>> +-  uint8_t b2;
>> +-  uint8_t b3;
>> +-  uint8_t b4;
>> +-
>> +-  b1 =3D **input;
>> +-  if (b1 <=3D 0x7F)
>> +-    return b1; /* ASCII code point */
>> +-  if (b1 < 0xC2)
>> +-    return -1; /* invalid: continuation byte */
>> +-  code_point =3D b1;
>> +-
>> +-  b2 =3D *++*input;
>> +-  if ((b2 & 0xC0) !=3D 0x80)
>> +-    return -1; /* invalid: not a continuation byte */
>> +-  code_point =3D (code_point << 6) | (b2 & 0x3F);
>> +-  if (b1 <=3D 0xDF)
>> +-    return 0x7FF & code_point; /* two-byte character */
>> +-
>> +-  b3 =3D *++*input;
>> +-  if ((b3 & 0xC0) !=3D 0x80)
>> +-    return -1; /* invalid: not a continuation byte */
>> +-  code_point =3D (code_point << 6) | (b3 & 0x3F);
>> +-  if (b1 <=3D 0xEF)
>> +-    return 0xFFFF & code_point; /* three-byte character */
>> +-
>> +-  b4 =3D *++*input;
>> +-  if ((b4 & 0xC0) !=3D 0x80)
>> +-    return -1; /* invalid: not a continuation byte */
>> +-  code_point =3D (code_point << 6) | (b4 & 0x3F);
>> +-  if (b1 <=3D 0xF4)
>> +-    if (code_point <=3D 0x10FFFF)
>> +-      return code_point; /* four-byte character */
>> +-
>> +-  /* code point too large */
>> +-  return -1;
>> +-}
>> +-
>> +-
>> +-static ssize_t fs__get_length_wtf8(const char* source_ptr) {
>> +-  size_t w_target_len =3D 0;
>> +-  int32_t code_point;
>> +-
>> +-  do {
>> +-    code_point =3D fs__decode_wtf8_char(&source_ptr);
>> +-    if (code_point < 0)
>> +-      return -1;
>> +-    if (code_point > 0xFFFF)
>> +-      w_target_len++;
>> +-    w_target_len++;
>> +-  } while (*source_ptr++);
>> +-  return w_target_len;
>> +-}
>> +-
>> +-
>> +-static void fs__wtf8_to_wide(const char* source_ptr, WCHAR* w_target) =
{
>> +-  int32_t code_point;
>> +-
>> +-  do {
>> +-    code_point =3D fs__decode_wtf8_char(&source_ptr);
>> +-    /* fs__get_length_wtf8 should have been called and checked first. =
*/
>> +-    assert(code_point >=3D 0);
>> +-    if (code_point > 0x10000) {
>> +-      assert(code_point < 0x10FFFF);
>> +-      *w_target++ =3D (((code_point - 0x10000) >> 10) + 0xD800);
>> +-      *w_target++ =3D ((code_point - 0x10000) & 0x3FF) + 0xDC00;
>> +-    } else {
>> +-      *w_target++ =3D code_point;
>> +-    }
>> +-  } while (*source_ptr++);
>> +-}
>> +-
>> +-
>> + INLINE static int fs__capture_path(uv_fs_t* req, const char* path,
>> +     const char* new_path, const int copy_path) {
>> +-  WCHAR* buf;
>> +-  WCHAR* pos;
>> +-  size_t buf_sz =3D 0;
>> +-  size_t path_len =3D 0;
>> +-  ssize_t pathw_len =3D 0;
>> +-  ssize_t new_pathw_len =3D 0;
>> ++  char* buf;
>> ++  char* pos;
>> ++  ssize_t buf_sz =3D 0, path_len =3D 0, pathw_len =3D 0, new_pathw_len=
 =3D 0;
>> +
>> +   /* new_path can only be set if path is also set. */
>> +   assert(new_path =3D=3D NULL || path !=3D NULL);
>> +
>> +   if (path !=3D NULL) {
>> +-    pathw_len =3D fs__get_length_wtf8(path);
>> +-    if (pathw_len < 0)
>> +-      return ERROR_INVALID_NAME;
>> ++    pathw_len =3D MultiByteToWideChar(CP_UTF8,
>> ++                                    0,
>> ++                                    path,
>> ++                                    -1,
>> ++                                    NULL,
>> ++                                    0);
>> ++    if (pathw_len =3D=3D 0) {
>> ++      return GetLastError();
>> ++    }
>> ++
>> +     buf_sz +=3D pathw_len * sizeof(WCHAR);
>> +   }
>> +
>> +@@ -244,9 +173,16 @@ INLINE static int fs__capture_path(uv_fs_t* req, c=
onst char* path,
>> +   }
>> +
>> +   if (new_path !=3D NULL) {
>> +-    new_pathw_len =3D fs__get_length_wtf8(new_path);
>> +-    if (new_pathw_len < 0)
>> +-      return ERROR_INVALID_NAME;
>> ++    new_pathw_len =3D MultiByteToWideChar(CP_UTF8,
>> ++                                        0,
>> ++                                        new_path,
>> ++                                        -1,
>> ++                                        NULL,
>> ++                                        0);
>> ++    if (new_pathw_len =3D=3D 0) {
>> ++      return GetLastError();
>> ++    }
>> ++
>> +     buf_sz +=3D new_pathw_len * sizeof(WCHAR);
>> +   }
>> +
>> +@@ -258,7 +194,7 @@ INLINE static int fs__capture_path(uv_fs_t* req, co=
nst char* path,
>> +     return 0;
>> +   }
>> +
>> +-  buf =3D uv__malloc(buf_sz);
>> ++  buf =3D (char*) uv__malloc(buf_sz);
>> +   if (buf =3D=3D NULL) {
>> +     return ERROR_OUTOFMEMORY;
>> +   }
>> +@@ -266,17 +202,29 @@ INLINE static int fs__capture_path(uv_fs_t* req, =
const char* path,
>> +   pos =3D buf;
>> +
>> +   if (path !=3D NULL) {
>> +-    fs__wtf8_to_wide(path, pos);
>> +-    req->file.pathw =3D pos;
>> +-    pos +=3D pathw_len;
>> ++    DWORD r =3D MultiByteToWideChar(CP_UTF8,
>> ++                                  0,
>> ++                                  path,
>> ++                                  -1,
>> ++                                  (WCHAR*) pos,
>> ++                                  pathw_len);
>> ++    assert(r =3D=3D (DWORD) pathw_len);
>> ++    req->file.pathw =3D (WCHAR*) pos;
>> ++    pos +=3D r * sizeof(WCHAR);
>> +   } else {
>> +     req->file.pathw =3D NULL;
>> +   }
>> +
>> +   if (new_path !=3D NULL) {
>> +-    fs__wtf8_to_wide(new_path, pos);
>> +-    req->fs.info.new_pathw =3D pos;
>> +-    pos +=3D new_pathw_len;
>> ++    DWORD r =3D MultiByteToWideChar(CP_UTF8,
>> ++                                  0,
>> ++                                  new_path,
>> ++                                  -1,
>> ++                                  (WCHAR*) pos,
>> ++                                  new_pathw_len);
>> ++    assert(r =3D=3D (DWORD) new_pathw_len);
>> ++    req->fs.info.new_pathw =3D (WCHAR*) pos;
>> ++    pos +=3D r * sizeof(WCHAR);
>> +   } else {
>> +     req->fs.info.new_pathw =3D NULL;
>> +   }
>> +@@ -284,8 +232,8 @@ INLINE static int fs__capture_path(uv_fs_t* req, co=
nst char* path,
>> +   req->path =3D path;
>> +   if (path !=3D NULL && copy_path) {
>> +     memcpy(pos, path, path_len);
>> +-    assert(path_len =3D=3D buf_sz - (pos - buf) * sizeof(WCHAR));
>> +-    req->path =3D (char*) pos;
>> ++    assert(path_len =3D=3D buf_sz - (pos - buf));
>> ++    req->path =3D pos;
>> +   }
>> +
>> +   req->flags |=3D UV_FS_FREE_PATHS;
>> +@@ -311,115 +259,57 @@ INLINE static void uv__fs_req_init(uv_loop_t* lo=
op, uv_fs_t* req,
>> + }
>> +
>> +
>> +-static int32_t fs__get_surrogate_value(const WCHAR* w_source_ptr,
>> +-                                       size_t w_source_len) {
>> +-  WCHAR u;
>> +-  WCHAR next;
>> +-
>> +-  u =3D w_source_ptr[0];
>> +-  if (u >=3D 0xD800 && u <=3D 0xDBFF && w_source_len > 1) {
>> +-    next =3D w_source_ptr[1];
>> +-    if (next >=3D 0xDC00 && next <=3D 0xDFFF)
>> +-      return 0x10000 + ((u - 0xD800) << 10) + (next - 0xDC00);
>> +-  }
>> +-  return u;
>> +-}
>> +-
>> +-
>> +-static size_t fs__get_length_wide(const WCHAR* w_source_ptr,
>> +-                                  size_t w_source_len) {
>> +-  size_t target_len;
>> +-  int32_t code_point;
>> ++static int fs__wide_to_utf8(WCHAR* w_source_ptr,
>> ++                               DWORD w_source_len,
>> ++                               char** target_ptr,
>> ++                               uint64_t* target_len_ptr) {
>> ++  int r;
>> ++  int target_len;
>> ++  char* target;
>> ++  target_len =3D WideCharToMultiByte(CP_UTF8,
>> ++                                   0,
>> ++                                   w_source_ptr,
>> ++                                   w_source_len,
>> ++                                   NULL,
>> ++                                   0,
>> ++                                   NULL,
>> ++                                   NULL);
>> +
>> +-  target_len =3D 0;
>> +-  for (; w_source_len; w_source_len--, w_source_ptr++) {
>> +-    code_point =3D fs__get_surrogate_value(w_source_ptr, w_source_len)=
;
>> +-    /* Can be invalid UTF-8 but must be valid WTF-8. */
>> +-    assert(code_point >=3D 0);
>> +-    if (code_point < 0x80)
>> +-      target_len +=3D 1;
>> +-    else if (code_point < 0x800)
>> +-      target_len +=3D 2;
>> +-    else if (code_point < 0x10000)
>> +-      target_len +=3D 3;
>> +-    else {
>> +-      target_len +=3D 4;
>> +-      w_source_ptr++;
>> +-      w_source_len--;
>> +-    }
>> ++  if (target_len =3D=3D 0) {
>> ++    return -1;
>> +   }
>> +-  return target_len;
>> +-}
>> +
>> +-
>> +-static int fs__wide_to_wtf8(WCHAR* w_source_ptr,
>> +-                            size_t w_source_len,
>> +-                            char** target_ptr,
>> +-                            size_t* target_len_ptr) {
>> +-  size_t target_len;
>> +-  char* target;
>> +-  int32_t code_point;
>> +-
>> +-  /* If *target_ptr is provided, then *target_len_ptr must be its leng=
th
>> +-   * (excluding space for null), otherwise we will compute the target_=
len_ptr
>> +-   * length and may return a new allocation in *target_ptr if target_p=
tr is
>> +-   * provided. */
>> +-  if (target_ptr =3D=3D NULL || *target_ptr =3D=3D NULL) {
>> +-    target_len =3D fs__get_length_wide(w_source_ptr, w_source_len);
>> +-    if (target_len_ptr !=3D NULL)
>> +-      *target_len_ptr =3D target_len;
>> +-  } else {
>> +-    target_len =3D *target_len_ptr;
>> ++  if (target_len_ptr !=3D NULL) {
>> ++    *target_len_ptr =3D target_len;
>> +   }
>> +
>> +-  if (target_ptr =3D=3D NULL)
>> ++  if (target_ptr =3D=3D NULL) {
>> +     return 0;
>> +-
>> +-  if (*target_ptr =3D=3D NULL) {
>> +-    target =3D uv__malloc(target_len + 1);
>> +-    if (target =3D=3D NULL) {
>> +-      SetLastError(ERROR_OUTOFMEMORY);
>> +-      return -1;
>> +-    }
>> +-    *target_ptr =3D target;
>> +-  } else {
>> +-    target =3D *target_ptr;
>> +-  }
>> +-
>> +-  for (; w_source_len; w_source_len--, w_source_ptr++) {
>> +-    code_point =3D fs__get_surrogate_value(w_source_ptr, w_source_len)=
;
>> +-    /* Can be invalid UTF-8 but must be valid WTF-8. */
>> +-    assert(code_point >=3D 0);
>> +-
>> +-    if (code_point < 0x80) {
>> +-      *target++ =3D code_point;
>> +-    } else if (code_point < 0x800) {
>> +-      *target++ =3D 0xC0 | (code_point >> 6);
>> +-      *target++ =3D 0x80 | (code_point & 0x3F);
>> +-    } else if (code_point < 0x10000) {
>> +-      *target++ =3D 0xE0 | (code_point >> 12);
>> +-      *target++ =3D 0x80 | ((code_point >> 6) & 0x3F);
>> +-      *target++ =3D 0x80 | (code_point & 0x3F);
>> +-    } else {
>> +-      *target++ =3D 0xF0 | (code_point >> 18);
>> +-      *target++ =3D 0x80 | ((code_point >> 12) & 0x3F);
>> +-      *target++ =3D 0x80 | ((code_point >> 6) & 0x3F);
>> +-      *target++ =3D 0x80 | (code_point & 0x3F);
>> +-      w_source_ptr++;
>> +-      w_source_len--;
>> +-    }
>> +   }
>> +-  assert((size_t) (target - *target_ptr) =3D=3D target_len);
>> +
>> +-  *target++ =3D '\0';
>> ++  target =3D uv__malloc(target_len + 1);
>> ++  if (target =3D=3D NULL) {
>> ++    SetLastError(ERROR_OUTOFMEMORY);
>> ++    return -1;
>> ++  }
>> +
>> ++  r =3D WideCharToMultiByte(CP_UTF8,
>> ++                          0,
>> ++                          w_source_ptr,
>> ++                          w_source_len,
>> ++                          target,
>> ++                          target_len,
>> ++                          NULL,
>> ++                          NULL);
>> ++  assert(r =3D=3D target_len);
>> ++  target[target_len] =3D '\0';
>> ++  *target_ptr =3D target;
>> +   return 0;
>> + }
>> +
>> +
>> +-INLINE static int fs__readlink_handle(HANDLE handle,
>> +-                                      char** target_ptr,
>> +-                                      size_t* target_len_ptr) {
>> ++INLINE static int fs__readlink_handle(HANDLE handle, char** target_ptr=
,
>> ++    uint64_t* target_len_ptr) {
>> +   char buffer[MAXIMUM_REPARSE_DATA_BUFFER_SIZE];
>> +   REPARSE_DATA_BUFFER* reparse_data =3D (REPARSE_DATA_BUFFER*) buffer;
>> +   WCHAR* w_target;
>> +@@ -549,8 +439,7 @@ INLINE static int fs__readlink_handle(HANDLE handle=
,
>> +     return -1;
>> +   }
>> +
>> +-  assert(target_ptr =3D=3D NULL || *target_ptr =3D=3D NULL);
>> +-  return fs__wide_to_wtf8(w_target, w_target_len, target_ptr, target_l=
en_ptr);
>> ++  return fs__wide_to_utf8(w_target, w_target_len, target_ptr, target_l=
en_ptr);
>> + }
>> +
>> +
>> +@@ -1540,8 +1429,7 @@ void fs__scandir(uv_fs_t* req) {
>> +       uv__dirent_t* dirent;
>> +
>> +       size_t wchar_len;
>> +-      size_t wtf8_len;
>> +-      char* wtf8;
>> ++      size_t utf8_len;
>> +
>> +       /* Obtain a pointer to the current directory entry. */
>> +       position +=3D next_entry_offset;
>> +@@ -1568,8 +1456,11 @@ void fs__scandir(uv_fs_t* req) {
>> +           info->FileName[1] =3D=3D L'.')
>> +         continue;
>> +
>> +-      /* Compute the space required to store the filename as WTF-8. */
>> +-      wtf8_len =3D fs__get_length_wide(&info->FileName[0], wchar_len);
>> ++      /* Compute the space required to store the filename as UTF-8. */
>> ++      utf8_len =3D WideCharToMultiByte(
>> ++          CP_UTF8, 0, &info->FileName[0], wchar_len, NULL, 0, NULL, NU=
LL);
>> ++      if (utf8_len =3D=3D 0)
>> ++        goto win32_error;
>> +
>> +       /* Resize the dirent array if needed. */
>> +       if (dirents_used >=3D dirents_size) {
>> +@@ -1589,17 +1480,26 @@ void fs__scandir(uv_fs_t* req) {
>> +        * includes room for the first character of the filename, but `u=
tf8_len`
>> +        * doesn't count the NULL terminator at this point.
>> +        */
>> +-      dirent =3D uv__malloc(sizeof *dirent + wtf8_len);
>> ++      dirent =3D uv__malloc(sizeof *dirent + utf8_len);
>> +       if (dirent =3D=3D NULL)
>> +         goto out_of_memory_error;
>> +
>> +       dirents[dirents_used++] =3D dirent;
>> +
>> +       /* Convert file name to UTF-8. */
>> +-      wtf8 =3D &dirent->d_name[0];
>> +-      if (fs__wide_to_wtf8(&info->FileName[0], wchar_len, &wtf8, &wtf8=
_len) =3D=3D -1)
>> ++      if (WideCharToMultiByte(CP_UTF8,
>> ++                              0,
>> ++                              &info->FileName[0],
>> ++                              wchar_len,
>> ++                              &dirent->d_name[0],
>> ++                              utf8_len,
>> ++                              NULL,
>> ++                              NULL) =3D=3D 0)
>> +         goto win32_error;
>> +
>> ++      /* Add a null terminator to the filename. */
>> ++      dirent->d_name[utf8_len] =3D '\0';
>> ++
>> +       /* Fill out the type field. */
>> +       if (info->FileAttributes & FILE_ATTRIBUTE_DEVICE)
>> +         dirent->d_type =3D UV__DT_CHAR;
>> +@@ -1808,7 +1708,6 @@ void fs__closedir(uv_fs_t* req) {
>> +
>> + INLINE static int fs__stat_handle(HANDLE handle, uv_stat_t* statbuf,
>> +     int do_lstat) {
>> +-  size_t target_length =3D 0;
>> +   FILE_FS_DEVICE_INFORMATION device_info;
>> +   FILE_ALL_INFORMATION file_info;
>> +   FILE_FS_VOLUME_INFORMATION volume_info;
>> +@@ -1904,10 +1803,9 @@ INLINE static int fs__stat_handle(HANDLE handle,=
 uv_stat_t* statbuf,
>> +      * to be treated as a regular file. The higher level lstat functio=
n will
>> +      * detect this failure and retry without do_lstat if appropriate.
>> +      */
>> +-    if (fs__readlink_handle(handle, NULL, &target_length) !=3D 0)
>> ++    if (fs__readlink_handle(handle, NULL, &statbuf->st_size) !=3D 0)
>> +       return -1;
>> +     statbuf->st_mode |=3D S_IFLNK;
>> +-    statbuf->st_size =3D target_length;
>> +   }
>> +
>> +   if (statbuf->st_mode =3D=3D 0) {
>> +@@ -2763,7 +2661,6 @@ static void fs__readlink(uv_fs_t* req) {
>> +     return;
>> +   }
>> +
>> +-  assert(req->ptr =3D=3D NULL);
>> +   if (fs__readlink_handle(handle, (char**) &req->ptr, NULL) !=3D 0) {
>> +     DWORD error =3D GetLastError();
>> +     SET_REQ_WIN32_ERROR(req, error);
>> +@@ -2823,8 +2720,7 @@ static ssize_t fs__realpath_handle(HANDLE handle,=
 char** realpath_ptr) {
>> +     return -1;
>> +   }
>> +
>> +-  assert(*realpath_ptr =3D=3D NULL);
>> +-  r =3D fs__wide_to_wtf8(w_realpath_ptr, w_realpath_len, realpath_ptr,=
 NULL);
>> ++  r =3D fs__wide_to_utf8(w_realpath_ptr, w_realpath_len, realpath_ptr,=
 NULL);
>> +   uv__free(w_realpath_buf);
>> +   return r;
>> + }
>> +@@ -2844,7 +2740,6 @@ static void fs__realpath(uv_fs_t* req) {
>> +     return;
>> +   }
>> +
>> +-  assert(req->ptr =3D=3D NULL);
>> +   if (fs__realpath_handle(handle, (char**) &req->ptr) =3D=3D -1) {
>> +     CloseHandle(handle);
>> +     SET_REQ_WIN32_ERROR(req, GetLastError());
>> +diff --git a/deps/uv/src/win/handle-inl.h b/deps/uv/src/win/handle-inl.=
h
>> +index 4722e85790a..5c843c241ef 100644
>> +--- a/deps/uv/src/win/handle-inl.h
>> ++++ b/deps/uv/src/win/handle-inl.h
>> +@@ -75,7 +75,7 @@
>> +
>> + #define uv__handle_close(handle)                                      =
  \
>> +   do {                                                                =
  \
>> +-    uv__queue_remove(&(handle)->handle_queue);                        =
  \
>> ++    QUEUE_REMOVE(&(handle)->handle_queue);                            =
  \
>> +     uv__active_handle_rm((uv_handle_t*) (handle));                    =
  \
>> +                                                                       =
  \
>> +     (handle)->flags |=3D UV_HANDLE_CLOSED;                            =
    \
>> +diff --git a/deps/uv/src/win/pipe.c b/deps/uv/src/win/pipe.c
>> +index f0cac382256..5e4276387ac 100644
>> +--- a/deps/uv/src/win/pipe.c
>> ++++ b/deps/uv/src/win/pipe.c
>> +@@ -55,7 +55,7 @@ static const int pipe_prefix_len =3D sizeof(pipe_pref=
ix) - 1;
>> + typedef struct {
>> +   uv__ipc_socket_xfer_type_t xfer_type;
>> +   uv__ipc_socket_xfer_info_t xfer_info;
>> +-  struct uv__queue member;
>> ++  QUEUE member;
>> + } uv__ipc_xfer_queue_item_t;
>> +
>> + /* IPC frame header flags. */
>> +@@ -111,7 +111,7 @@ int uv_pipe_init(uv_loop_t* loop, uv_pipe_t* handle=
, int ipc) {
>> +   handle->name =3D NULL;
>> +   handle->pipe.conn.ipc_remote_pid =3D 0;
>> +   handle->pipe.conn.ipc_data_frame.payload_remaining =3D 0;
>> +-  uv__queue_init(&handle->pipe.conn.ipc_xfer_queue);
>> ++  QUEUE_INIT(&handle->pipe.conn.ipc_xfer_queue);
>> +   handle->pipe.conn.ipc_xfer_queue_length =3D 0;
>> +   handle->ipc =3D ipc;
>> +   handle->pipe.conn.non_overlapped_writes_tail =3D NULL;
>> +@@ -637,13 +637,13 @@ void uv__pipe_endgame(uv_loop_t* loop, uv_pipe_t*=
 handle) {
>> +
>> +   if (handle->flags & UV_HANDLE_CONNECTION) {
>> +     /* Free pending sockets */
>> +-    while (!uv__queue_empty(&handle->pipe.conn.ipc_xfer_queue)) {
>> +-      struct uv__queue* q;
>> ++    while (!QUEUE_EMPTY(&handle->pipe.conn.ipc_xfer_queue)) {
>> ++      QUEUE* q;
>> +       SOCKET socket;
>> +
>> +-      q =3D uv__queue_head(&handle->pipe.conn.ipc_xfer_queue);
>> +-      uv__queue_remove(q);
>> +-      xfer_queue_item =3D uv__queue_data(q, uv__ipc_xfer_queue_item_t,=
 member);
>> ++      q =3D QUEUE_HEAD(&handle->pipe.conn.ipc_xfer_queue);
>> ++      QUEUE_REMOVE(q);
>> ++      xfer_queue_item =3D QUEUE_DATA(q, uv__ipc_xfer_queue_item_t, mem=
ber);
>> +
>> +       /* Materialize socket and close it */
>> +       socket =3D WSASocketW(FROM_PROTOCOL_INFO,
>> +@@ -1124,20 +1124,20 @@ int uv__pipe_accept(uv_pipe_t* server, uv_strea=
m_t* client) {
>> +   uv_loop_t* loop =3D server->loop;
>> +   uv_pipe_t* pipe_client;
>> +   uv_pipe_accept_t* req;
>> +-  struct uv__queue* q;
>> ++  QUEUE* q;
>> +   uv__ipc_xfer_queue_item_t* item;
>> +   int err;
>> +
>> +   if (server->ipc) {
>> +-    if (uv__queue_empty(&server->pipe.conn.ipc_xfer_queue)) {
>> ++    if (QUEUE_EMPTY(&server->pipe.conn.ipc_xfer_queue)) {
>> +       /* No valid pending sockets. */
>> +       return WSAEWOULDBLOCK;
>> +     }
>> +
>> +-    q =3D uv__queue_head(&server->pipe.conn.ipc_xfer_queue);
>> +-    uv__queue_remove(q);
>> ++    q =3D QUEUE_HEAD(&server->pipe.conn.ipc_xfer_queue);
>> ++    QUEUE_REMOVE(q);
>> +     server->pipe.conn.ipc_xfer_queue_length--;
>> +-    item =3D uv__queue_data(q, uv__ipc_xfer_queue_item_t, member);
>> ++    item =3D QUEUE_DATA(q, uv__ipc_xfer_queue_item_t, member);
>> +
>> +     err =3D uv__tcp_xfer_import(
>> +         (uv_tcp_t*) client, item->xfer_type, &item->xfer_info);
>> +@@ -1891,7 +1891,7 @@ static void uv__pipe_queue_ipc_xfer_info(
>> +   item->xfer_type =3D xfer_type;
>> +   item->xfer_info =3D *xfer_info;
>> +
>> +-  uv__queue_insert_tail(&handle->pipe.conn.ipc_xfer_queue, &item->memb=
er);
>> ++  QUEUE_INSERT_TAIL(&handle->pipe.conn.ipc_xfer_queue, &item->member);
>> +   handle->pipe.conn.ipc_xfer_queue_length++;
>> + }
>> +
>> +diff --git a/deps/uv/src/win/tcp.c b/deps/uv/src/win/tcp.c
>> +index 187f36e2a61..6b282e0b501 100644
>> +--- a/deps/uv/src/win/tcp.c
>> ++++ b/deps/uv/src/win/tcp.c
>> +@@ -175,14 +175,14 @@ int uv_tcp_init_ex(uv_loop_t* loop, uv_tcp_t* han=
dle, unsigned int flags) {
>> +     sock =3D socket(domain, SOCK_STREAM, 0);
>> +     if (sock =3D=3D INVALID_SOCKET) {
>> +       err =3D WSAGetLastError();
>> +-      uv__queue_remove(&handle->handle_queue);
>> ++      QUEUE_REMOVE(&handle->handle_queue);
>> +       return uv_translate_sys_error(err);
>> +     }
>> +
>> +     err =3D uv__tcp_set_socket(handle->loop, handle, sock, domain, 0);
>> +     if (err) {
>> +       closesocket(sock);
>> +-      uv__queue_remove(&handle->handle_queue);
>> ++      QUEUE_REMOVE(&handle->handle_queue);
>> +       return uv_translate_sys_error(err);
>> +     }
>> +
>> +diff --git a/deps/uv/src/win/udp.c b/deps/uv/src/win/udp.c
>> +index eab53842d4f..8a982d1907d 100644
>> +--- a/deps/uv/src/win/udp.c
>> ++++ b/deps/uv/src/win/udp.c
>> +@@ -146,14 +146,14 @@ int uv__udp_init_ex(uv_loop_t* loop,
>> +     sock =3D socket(domain, SOCK_DGRAM, 0);
>> +     if (sock =3D=3D INVALID_SOCKET) {
>> +       err =3D WSAGetLastError();
>> +-      uv__queue_remove(&handle->handle_queue);
>> ++      QUEUE_REMOVE(&handle->handle_queue);
>> +       return uv_translate_sys_error(err);
>> +     }
>> +
>> +     err =3D uv__udp_set_socket(handle->loop, handle, sock, domain);
>> +     if (err) {
>> +       closesocket(sock);
>> +-      uv__queue_remove(&handle->handle_queue);
>> ++      QUEUE_REMOVE(&handle->handle_queue);
>> +       return uv_translate_sys_error(err);
>> +     }
>> +   }
>> diff --git a/recipes-devtools/nodejs/nodejs-20.8.1/0001-Using-native-bin=
aries.patch b/recipes-devtools/nodejs/nodejs-20.8.1/0001-Using-native-binar=
ies.patch
>> new file mode 100644
>> index 0000000..0178cec
>> --- /dev/null
>> +++ b/recipes-devtools/nodejs/nodejs-20.8.1/0001-Using-native-binaries.p=
atch
>> @@ -0,0 +1,94 @@
>> +From 6c3ac20477a4bac643088f24df3c042e627fafa9 Mon Sep 17 00:00:00 2001
>> +From: Guillaume Burel <guillaume.burel@stormshield.eu>
>> +Date: Fri, 3 Jan 2020 11:25:54 +0100
>> +Subject: [PATCH] Using native binaries
>> +
>> +Upstream-Status: Inappropriate [embedded specific]
>> +
>> +Originally added in:
>> +https://git.openembedded.org/meta-openembedded/commit/?id=3D1c8e4a679ae=
382f953b2e5c7a4966a4646314f3e
>> +later extended and renamed in:
>> +https://git.openembedded.org/meta-openembedded/commit/?id=3Dfeeb172d1a8=
bf010490d22b8df9448b20d9d2aed
>> +
>> +Signed-off-by: Archana Polampalli <archana.polampalli@windriver.com>
>> +---
>> + node.gyp                 | 3 +
>> + tools/v8_gypfiles/v8.gyp | 5 +++++
>> + 2 files changed, 6 insertions(+)
>> +
>> +diff --git a/node.gyp b/node.gyp
>> +index e8e1d9f9..e60ccc10 100644
>> +--- a/node.gyp
>> ++++ b/node.gyp
>> +@@ -320,6 +320,7 @@
>> +                   'action_name': 'node_mksnapshot',
>> +                   'process_outputs_as_sources': 1,
>> +                   'inputs': [
>> ++                    '<(PRODUCT_DIR)/v8-qemu-wrapper.sh',
>> +                     '<(node_mksnapshot_exec)',
>> +                     '<(node_snapshot_main)',
>> +                   ],
>> +@@ -935,6 +935,7 @@
>> +           'action_name': 'node_js2c',
>> +           'process_outputs_as_sources': 1,
>> +           'inputs': [
>> ++            '<(PRODUCT_DIR)/v8-qemu-wrapper.sh',
>> +             '<(node_js2c_exec)',
>> +             '<@(library_files)',
>> +             '<@(deps_files)',
>> +@@ -944,6 +945,7 @@
>> +             '<(SHARED_INTERMEDIATE_DIR)/node_javascript.cc',
>> +           ],
>> +           'action': [
>> ++            '<(PRODUCT_DIR)/v8-qemu-wrapper.sh',
>> +             '<(node_js2c_exec)',
>> +             '<@(_outputs)',
>> +             'lib',
>> +
>> +diff --git a/tools/v8_gypfiles/v8.gyp b/tools/v8_gypfiles/v8.gyp
>> +index 42e26cd9..bc721991 100644
>> +--- a/tools/v8_gypfiles/v8.gyp
>> ++++ b/tools/v8_gypfiles/v8.gyp
>> +@@ -68,6 +68,7 @@
>> +         {
>> +           'action_name': 'run_torque_action',
>> +           'inputs': [  # Order matters.
>> ++            '<(PRODUCT_DIR)/v8-qemu-wrapper.sh',
>> +             '<(PRODUCT_DIR)/<(EXECUTABLE_PREFIX)torque<(EXECUTABLE_SUF=
FIX)',
>> +             '<@(torque_files)',
>> +           ],
>> +@@ -99,6 +100,7 @@
>> +             '<@(torque_outputs_inc)',
>> +           ],
>> +           'action': [
>> ++            '<(PRODUCT_DIR)/v8-qemu-wrapper.sh',
>> +             '<(PRODUCT_DIR)/<(EXECUTABLE_PREFIX)torque<(EXECUTABLE_SUF=
FIX)',
>> +             '-o', '<(SHARED_INTERMEDIATE_DIR)/torque-generated',
>> +             '-v8-root', '<(V8_ROOT)',
>> +@@ -211,6 +213,7 @@
>> +         {
>> +           'action_name': 'generate_bytecode_builtins_list_action',
>> +           'inputs': [
>> ++            '<(PRODUCT_DIR)/v8-qemu-wrapper.sh',
>> +             '<(PRODUCT_DIR)/<(EXECUTABLE_PREFIX)bytecode_builtins_list=
_generator<(EXECUTABLE_SUFFIX)',
>> +           ],
>> +           'outputs': [
>> +@@ -400,6 +403,7 @@
>> +             ],
>> +           },
>> +           'inputs': [
>> ++            '<(PRODUCT_DIR)/v8-qemu-wrapper.sh',
>> +             '<(mksnapshot_exec)',
>> +           ],
>> +           'outputs': [
>> +@@ -1539,6 +1543,7 @@
>> +         {
>> +           'action_name': 'run_gen-regexp-special-case_action',
>> +           'inputs': [
>> ++            '<(PRODUCT_DIR)/v8-qemu-wrapper.sh',
>> +             '<(PRODUCT_DIR)/<(EXECUTABLE_PREFIX)gen-regexp-special-cas=
e<(EXECUTABLE_SUFFIX)',
>> +           ],
>> +           'outputs': [
>> +--
>> +2.34.1
>> +
>> diff --git a/recipes-devtools/nodejs/nodejs-20.8.1/0001-liftoff-Correct-=
function-signatures.patch b/recipes-devtools/nodejs/nodejs-20.8.1/0001-lift=
off-Correct-function-signatures.patch
>> new file mode 100644
>> index 0000000..5af87d8
>> --- /dev/null
>> +++ b/recipes-devtools/nodejs/nodejs-20.8.1/0001-liftoff-Correct-functio=
n-signatures.patch
>> @@ -0,0 +1,71 @@
>> +From dc3652c0abcdf8573fd044907b19d8eda7ca1124 Mon Sep 17 00:00:00 2001
>> +From: Khem Raj <raj.khem@gmail.com>
>> +Date: Mon, 3 Jul 2023 12:33:16 +0000
>> +Subject: [PATCH] [liftoff] Correct function signatures
>> +
>> +Fixes builds on mips where clang reports an error
>> +../deps/v8/src/wasm/baseline/mips/liftoff-assembler-mips.h:661:5: error=
: no matching member function for call to 'Move'
>> +    Move(tmp, src, type.value_type());
>> +    ^~~~
>> +
>> +Upstream-Status: Submitted [https://chromium-review.googlesource.com/c/=
v8/v8/+/3235674]
>> +
>> +Signed-off-by: Archana Polampalli <archana.polampalli@windriver.com>
>> +---
>> + deps/v8/src/wasm/baseline/liftoff-assembler.h               | 6 +++---
>> + deps/v8/src/wasm/baseline/mips64/liftoff-assembler-mips64.h | 2 +-
>> + deps/v8/src/wasm/baseline/riscv/liftoff-assembler-riscv64.h | 2 +-
>> + 3 files changed, 5 insertions(+), 5 deletions(-)
>> +
>> +diff --git a/deps/v8/src/wasm/baseline/liftoff-assembler.h b/deps/v8/sr=
c/wasm/baseline/liftoff-assembler.h
>> +index aef63c64..f2a11b01 100644
>> +--- a/deps/v8/src/wasm/baseline/liftoff-assembler.h
>> ++++ b/deps/v8/src/wasm/baseline/liftoff-assembler.h
>> +@@ -717,7 +717,7 @@ class LiftoffAssembler : public MacroAssembler {
>> +   void FinishCall(const ValueKindSig*, compiler::CallDescriptor*);
>> +
>> +   // Move {src} into {dst}. {src} and {dst} must be different.
>> +-  void Move(LiftoffRegister dst, LiftoffRegister src, ValueKind);
>> ++  void Move(LiftoffRegister dst, LiftoffRegister src, ValueKind kind);
>> +
>> +   // Parallel register move: For a list of tuples <dst, src, kind>, mo=
ve the
>> +   // {src} register of kind {kind} into {dst}. If {src} equals {dst}, =
ignore
>> +@@ -884,8 +884,8 @@ class LiftoffAssembler : public MacroAssembler {
>> +   inline void MoveStackValue(uint32_t dst_offset, uint32_t src_offset,
>> +                              ValueKind);
>> +
>> +-  inline void Move(Register dst, Register src, ValueKind);
>> +-  inline void Move(DoubleRegister dst, DoubleRegister src, ValueKind);
>> ++  inline void Move(Register dst, Register src, ValueKind kind);
>> ++  inline void Move(DoubleRegister dst, DoubleRegister src, ValueKind k=
ind);
>> +
>> +   inline void Spill(int offset, LiftoffRegister, ValueKind);
>> +   inline void Spill(int offset, WasmValue);
>> +diff --git a/deps/v8/src/wasm/baseline/mips64/liftoff-assembler-mips64.=
h b/deps/v8/src/wasm/baseline/mips64/liftoff-assembler-mips64.h
>> +index 96cba24c..53e1842d 100644
>> +--- a/deps/v8/src/wasm/baseline/mips64/liftoff-assembler-mips64.h
>> ++++ b/deps/v8/src/wasm/baseline/mips64/liftoff-assembler-mips64.h
>> +@@ -592,7 +592,7 @@ void LiftoffAssembler::Store(Register dst_addr, Reg=
ister offset_reg,
>> +     pinned.set(dst_op.rm());
>> +     LiftoffRegister tmp =3D GetUnusedRegister(src.reg_class(), pinned)=
;
>> +     // Save original value.
>> +-    Move(tmp, src, type.value_type());
>> ++    Move(tmp, src, type.value_type().kind());
>> +
>> +     src =3D tmp;
>> +     pinned.set(tmp);
>> +diff --git a/deps/v8/src/wasm/baseline/riscv/liftoff-assembler-riscv64.=
h b/deps/v8/src/wasm/baseline/riscv/liftoff-assembler-riscv64.h
>> +index 1d6ae09e..397e82b2 100644
>> +--- a/deps/v8/src/wasm/baseline/riscv/liftoff-assembler-riscv64.h
>> ++++ b/deps/v8/src/wasm/baseline/riscv/liftoff-assembler-riscv64.h
>> +@@ -286,7 +286,7 @@ void LiftoffAssembler::Store(Register dst_addr, Reg=
ister offset_reg,
>> +     pinned.set(dst_op.rm());
>> +     LiftoffRegister tmp =3D GetUnusedRegister(src.reg_class(), pinned)=
;
>> +     // Save original value.
>> +-    Move(tmp, src, type.value_type());
>> ++    Move(tmp, src, type.value_type().kind());
>> +
>> +     src =3D tmp;
>> +     pinned.set(tmp);
>> +--
>> +2.40.0
>> diff --git a/recipes-devtools/nodejs/nodejs-20.8.1/0001-ppc64-Do-not-use=
-mminimal-toc-with-clang.patch b/recipes-devtools/nodejs/nodejs-20.8.1/0001=
-ppc64-Do-not-use-mminimal-toc-with-clang.patch
>> new file mode 100644
>> index 0000000..dd9c901
>> --- /dev/null
>> +++ b/recipes-devtools/nodejs/nodejs-20.8.1/0001-ppc64-Do-not-use-mminim=
al-toc-with-clang.patch
>> @@ -0,0 +1,25 @@
>> +From 0976af0f3b328436ea44a74a406f311adb2ab211 Mon Sep 17 00:00:00 2001
>> +From: Khem Raj <raj.khem@gmail.com>
>> +Date: Tue, 15 Jun 2021 19:01:31 -0700
>> +Subject: [PATCH] ppc64: Do not use -mminimal-toc with clang
>> +
>> +clang does not support this option
>> +
>> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> +---
>> +Upstream-Status: Pending
>> +
>> + common.gypi | 2 +-
>> + 1 file changed, 1 insertion(+), 1 deletion(-)
>> +
>> +--- a/common.gypi
>> ++++ b/common.gypi
>> +@@ -417,7 +417,7 @@
>> +             'ldflags': [ '-m32' ],
>> +           }],
>> +           [ 'target_arch=3D=3D"ppc64" and OS!=3D"aix"', {
>> +-            'cflags': [ '-m64', '-mminimal-toc' ],
>> ++            'cflags': [ '-m64' ],
>> +             'ldflags': [ '-m64' ],
>> +           }],
>> +           [ 'target_arch=3D=3D"s390x"', {
>> diff --git a/recipes-devtools/nodejs/nodejs-20.8.1/0002-Revert-io_uring-=
changes-from-libuv-1.45.0.patch b/recipes-devtools/nodejs/nodejs-20.8.1/000=
2-Revert-io_uring-changes-from-libuv-1.45.0.patch
>> new file mode 100644
>> index 0000000..77cd53b
>> --- /dev/null
>> +++ b/recipes-devtools/nodejs/nodejs-20.8.1/0002-Revert-io_uring-changes=
-from-libuv-1.45.0.patch
>> @@ -0,0 +1,1803 @@
>> +From 6d2ef4c8ba2304ee4941a6719b3ad9bd63e415a9 Mon Sep 17 00:00:00 2001
>> +From: Martin Jansa <martin.jansa@gmail.com>
>> +Date: Wed, 18 Oct 2023 21:09:44 +0200
>> +Subject: [PATCH] Revert io_uring changes from libuv-1.45.0
>> +
>> +This reverts https://github.com/libuv/libuv/pull/3952/commits/26c79a942=
b92573a1388c0ee8a6ad4397f009318
>> +
>> +Included in nodejs-20.3.0 with the libuv upgrade to 1.45.0 in:
>> +https://github.com/nodejs/node/commit/bfcb3d1d9a876f399013d326bd65804f9=
eda77e4
>> +
>> +Reverted libuv commits:
>> +Revert "linux: fix WRITEV with lots of bufs using io_uring (#4004)"
>> +This reverts commit ef6a9a624df0a00687037474025a3608472f722a.
>> +Revert "linux: work around EOWNERDEAD io_uring kernel bug (#4002)"
>> +This reverts commit d23a20f62cc50b9fd7694992263f1d296d8f5cb4.
>> +Revert "unix: handle CQ overflow in iou ring (#3991)"
>> +This reverts commit 30fc896cc1b5822e9f1eb462587fe4b368a6215c.
>> +Revert "unix: constrained_memory should return UINT64_MAX (#3753)"
>> +This reverts commit 6ad347fae4520f39520d34bd7c7f5ddafab13a69.
>> +Revert "linux: use io_uring to batch epoll_ctl calls (#3979)"
>> +This reverts commit 6e073ef5daf93b708a654008959b823b58029e88.
>> +Revert "linux: fix logic bug in sqe ring space check (#3980)"
>> +This reverts commit f27208224084fc972b9d2802486d97ef31b51a39.
>> +Revert "src: fix events/events_waiting metrics counter (#3957)"
>> +This reverts commit e02642cf3b768b2c58a41f97fa38507e032ae415.
>> +Revert "linux: remove bug workaround for obsolete kernels (#3965)"
>> +This reverts commit 1c935a34454167b23f8eef7f0f63d7119f0de747.
>> +Revert "linux: add IORING_OP_CLOSE support (#3964)"
>> +This reverts commit dfae365f844e127621128a76bce7165e3f99a8d9.
>> +Revert "linux: add IORING_OP_OPENAT support (#3963)"
>> +This reverts commit 5ca5e475bb1711e65323ef1594a31818e5a1a9eb.
>> +Revert "linux: fix academic valgrind warning (#3960)"
>> +This reverts commit a7ff759ca1deacb2e0e6ae3c2d3dce91cc637dfe.
>> +Revert "linux: introduce io_uring support (#3952)"
>> +This reverts commit d2c31f429b87b476a7f1344d145dad4752a406d4.
>> +
>> +Dropped deps/uv/docs deps/uv/test changes as these dirs aren't included
>> +in nodejs tarballs.
>> +
>> +Signed-off-by: Martin Jansa <martin.jansa@gmail.com>
>> +---
>> +Upstream-Status: Inappropriate [OE specific]
>> +
>> + deps/uv/docs/src/fs.rst               |   6 -
>> + deps/uv/docs/src/misc.rst             |   5 +-
>> + deps/uv/src/threadpool.c              |  21 -
>> + deps/uv/src/unix/aix.c                |  11 +-
>> + deps/uv/src/unix/fs.c                 |  57 +-
>> + deps/uv/src/unix/internal.h           |  23 -
>> + deps/uv/src/unix/kqueue.c             |  10 +-
>> + deps/uv/src/unix/linux.c              | 998 +++-----------------------
>> + deps/uv/src/unix/os390.c              |  11 +-
>> + deps/uv/src/unix/posix-poll.c         |  11 +-
>> + deps/uv/src/uv-common.h               |  28 -
>> + deps/uv/src/win/core.c                |  20 +-
>> + deps/uv/test/test-fs.c                |  33 -
>> + deps/uv/test/test-list.h              |   4 -
>> + deps/uv/test/test-metrics.c           | 151 ----
>> + deps/uv/test/test-threadpool-cancel.c |  34 +-
>> + 16 files changed, 138 insertions(+), 1285 deletions(-)
>> +
>> +diff --git a/deps/uv/src/threadpool.c b/deps/uv/src/threadpool.c
>> +index 51962bf0021..a3da53026f9 100644
>> +--- a/deps/uv/src/threadpool.c
>> ++++ b/deps/uv/src/threadpool.c
>> +@@ -275,13 +275,9 @@ void uv__work_submit(uv_loop_t* loop,
>> + }
>> +
>> +
>> +-/* TODO(bnoordhuis) teach libuv how to cancel file operations
>> +- * that go through io_uring instead of the thread pool.
>> +- */
>> + static int uv__work_cancel(uv_loop_t* loop, uv_req_t* req, struct uv__=
work* w) {
>> +   int cancelled;
>> +
>> +-  uv_once(&once, init_once);  /* Ensure |mutex| is initialized. */
>> +   uv_mutex_lock(&mutex);
>> +   uv_mutex_lock(&w->loop->wq_mutex);
>> +
>> +@@ -311,15 +307,12 @@ void uv__work_done(uv_async_t* handle) {
>> +   QUEUE* q;
>> +   QUEUE wq;
>> +   int err;
>> +-  int nevents;
>> +
>> +   loop =3D container_of(handle, uv_loop_t, wq_async);
>> +   uv_mutex_lock(&loop->wq_mutex);
>> +   QUEUE_MOVE(&loop->wq, &wq);
>> +   uv_mutex_unlock(&loop->wq_mutex);
>> +
>> +-  nevents =3D 0;
>> +-
>> +   while (!QUEUE_EMPTY(&wq)) {
>> +     q =3D QUEUE_HEAD(&wq);
>> +     QUEUE_REMOVE(q);
>> +@@ -327,20 +320,6 @@ void uv__work_done(uv_async_t* handle) {
>> +     w =3D container_of(q, struct uv__work, wq);
>> +     err =3D (w->work =3D=3D uv__cancelled) ? UV_ECANCELED : 0;
>> +     w->done(w, err);
>> +-    nevents++;
>> +-  }
>> +-
>> +-  /* This check accomplishes 2 things:
>> +-   * 1. Even if the queue was empty, the call to uv__work_done() shoul=
d count
>> +-   *    as an event. Which will have been added by the event loop when
>> +-   *    calling this callback.
>> +-   * 2. Prevents accidental wrap around in case nevents =3D=3D 0 event=
s =3D=3D 0.
>> +-   */
>> +-  if (nevents > 1) {
>> +-    /* Subtract 1 to counter the call to uv__work_done(). */
>> +-    uv__metrics_inc_events(loop, nevents - 1);
>> +-    if (uv__get_internal_fields(loop)->current_timeout =3D=3D 0)
>> +-      uv__metrics_inc_events_waiting(loop, nevents - 1);
>> +   }
>> + }
>> +
>> +diff --git a/deps/uv/src/unix/aix.c b/deps/uv/src/unix/aix.c
>> +index f1afbed49ec..b855282ebc8 100644
>> +--- a/deps/uv/src/unix/aix.c
>> ++++ b/deps/uv/src/unix/aix.c
>> +@@ -131,7 +131,6 @@ int uv__io_check_fd(uv_loop_t* loop, int fd) {
>> +
>> +
>> + void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +-  uv__loop_internal_fields_t* lfields;
>> +   struct pollfd events[1024];
>> +   struct pollfd pqry;
>> +   struct pollfd* pe;
>> +@@ -155,8 +154,6 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +     return;
>> +   }
>> +
>> +-  lfields =3D uv__get_internal_fields(loop);
>> +-
>> +   while (!QUEUE_EMPTY(&loop->watcher_queue)) {
>> +     q =3D QUEUE_HEAD(&loop->watcher_queue);
>> +     QUEUE_REMOVE(q);
>> +@@ -220,7 +217,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +   base =3D loop->time;
>> +   count =3D 48; /* Benchmarks suggest this gives the best throughput. =
*/
>> +
>> +-  if (lfields->flags & UV_METRICS_IDLE_TIME) {
>> ++  if (uv__get_internal_fields(loop)->flags & UV_METRICS_IDLE_TIME) {
>> +     reset_timeout =3D 1;
>> +     user_timeout =3D timeout;
>> +     timeout =3D 0;
>> +@@ -235,12 +232,6 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +     if (timeout !=3D 0)
>> +       uv__metrics_set_provider_entry_time(loop);
>> +
>> +-    /* Store the current timeout in a location that's globally accessi=
ble so
>> +-     * other locations like uv__work_done() can determine whether the =
queue
>> +-     * of events in the callback were waiting when poll was called.
>> +-     */
>> +-    lfields->current_timeout =3D timeout;
>> +-
>> +     nfds =3D pollset_poll(loop->backend_fd,
>> +                         events,
>> +                         ARRAY_SIZE(events),
>> +diff --git a/deps/uv/src/unix/fs.c b/deps/uv/src/unix/fs.c
>> +index 00d385c24b7..c696a8d5500 100644
>> +--- a/deps/uv/src/unix/fs.c
>> ++++ b/deps/uv/src/unix/fs.c
>> +@@ -61,11 +61,10 @@
>> + #endif
>> +
>> + #if defined(__linux__)
>> +-# include <sys/sendfile.h>
>> +-# include <sys/utsname.h>
>> ++# include "sys/utsname.h"
>> + #endif
>> +
>> +-#if defined(__sun)
>> ++#if defined(__linux__) || defined(__sun)
>> + # include <sys/sendfile.h>
>> + # include <sys/sysmacros.h>
>> + #endif
>> +@@ -1554,7 +1553,26 @@ static int uv__fs_statx(int fd,
>> +     return UV_ENOSYS;
>> +   }
>> +
>> +-  uv__statx_to_stat(&statxbuf, buf);
>> ++  buf->st_dev =3D makedev(statxbuf.stx_dev_major, statxbuf.stx_dev_min=
or);
>> ++  buf->st_mode =3D statxbuf.stx_mode;
>> ++  buf->st_nlink =3D statxbuf.stx_nlink;
>> ++  buf->st_uid =3D statxbuf.stx_uid;
>> ++  buf->st_gid =3D statxbuf.stx_gid;
>> ++  buf->st_rdev =3D makedev(statxbuf.stx_rdev_major, statxbuf.stx_rdev_=
minor);
>> ++  buf->st_ino =3D statxbuf.stx_ino;
>> ++  buf->st_size =3D statxbuf.stx_size;
>> ++  buf->st_blksize =3D statxbuf.stx_blksize;
>> ++  buf->st_blocks =3D statxbuf.stx_blocks;
>> ++  buf->st_atim.tv_sec =3D statxbuf.stx_atime.tv_sec;
>> ++  buf->st_atim.tv_nsec =3D statxbuf.stx_atime.tv_nsec;
>> ++  buf->st_mtim.tv_sec =3D statxbuf.stx_mtime.tv_sec;
>> ++  buf->st_mtim.tv_nsec =3D statxbuf.stx_mtime.tv_nsec;
>> ++  buf->st_ctim.tv_sec =3D statxbuf.stx_ctime.tv_sec;
>> ++  buf->st_ctim.tv_nsec =3D statxbuf.stx_ctime.tv_nsec;
>> ++  buf->st_birthtim.tv_sec =3D statxbuf.stx_btime.tv_sec;
>> ++  buf->st_birthtim.tv_nsec =3D statxbuf.stx_btime.tv_nsec;
>> ++  buf->st_flags =3D 0;
>> ++  buf->st_gen =3D 0;
>> +
>> +   return 0;
>> + #else
>> +@@ -1798,9 +1816,6 @@ int uv_fs_chown(uv_loop_t* loop,
>> + int uv_fs_close(uv_loop_t* loop, uv_fs_t* req, uv_file file, uv_fs_cb =
cb) {
>> +   INIT(CLOSE);
>> +   req->file =3D file;
>> +-  if (cb !=3D NULL)
>> +-    if (uv__iou_fs_close(loop, req))
>> +-      return 0;
>> +   POST;
>> + }
>> +
>> +@@ -1848,9 +1863,6 @@ int uv_fs_lchown(uv_loop_t* loop,
>> + int uv_fs_fdatasync(uv_loop_t* loop, uv_fs_t* req, uv_file file, uv_fs=
_cb cb) {
>> +   INIT(FDATASYNC);
>> +   req->file =3D file;
>> +-  if (cb !=3D NULL)
>> +-    if (uv__iou_fs_fsync_or_fdatasync(loop, req, /* IORING_FSYNC_DATAS=
YNC */ 1))
>> +-      return 0;
>> +   POST;
>> + }
>> +
>> +@@ -1858,9 +1870,6 @@ int uv_fs_fdatasync(uv_loop_t* loop, uv_fs_t* req=
, uv_file file, uv_fs_cb cb) {
>> + int uv_fs_fstat(uv_loop_t* loop, uv_fs_t* req, uv_file file, uv_fs_cb =
cb) {
>> +   INIT(FSTAT);
>> +   req->file =3D file;
>> +-  if (cb !=3D NULL)
>> +-    if (uv__iou_fs_statx(loop, req, /* is_fstat */ 1, /* is_lstat */ 0=
))
>> +-      return 0;
>> +   POST;
>> + }
>> +
>> +@@ -1868,9 +1877,6 @@ int uv_fs_fstat(uv_loop_t* loop, uv_fs_t* req, uv=
_file file, uv_fs_cb cb) {
>> + int uv_fs_fsync(uv_loop_t* loop, uv_fs_t* req, uv_file file, uv_fs_cb =
cb) {
>> +   INIT(FSYNC);
>> +   req->file =3D file;
>> +-  if (cb !=3D NULL)
>> +-    if (uv__iou_fs_fsync_or_fdatasync(loop, req, /* no flags */ 0))
>> +-      return 0;
>> +   POST;
>> + }
>> +
>> +@@ -1917,9 +1923,6 @@ int uv_fs_lutime(uv_loop_t* loop,
>> + int uv_fs_lstat(uv_loop_t* loop, uv_fs_t* req, const char* path, uv_fs=
_cb cb) {
>> +   INIT(LSTAT);
>> +   PATH;
>> +-  if (cb !=3D NULL)
>> +-    if (uv__iou_fs_statx(loop, req, /* is_fstat */ 0, /* is_lstat */ 1=
))
>> +-      return 0;
>> +   POST;
>> + }
>> +
>> +@@ -1981,9 +1984,6 @@ int uv_fs_open(uv_loop_t* loop,
>> +   PATH;
>> +   req->flags =3D flags;
>> +   req->mode =3D mode;
>> +-  if (cb !=3D NULL)
>> +-    if (uv__iou_fs_open(loop, req))
>> +-      return 0;
>> +   POST;
>> + }
>> +
>> +@@ -2012,11 +2012,6 @@ int uv_fs_read(uv_loop_t* loop, uv_fs_t* req,
>> +   memcpy(req->bufs, bufs, nbufs * sizeof(*bufs));
>> +
>> +   req->off =3D off;
>> +-
>> +-  if (cb !=3D NULL)
>> +-    if (uv__iou_fs_read_or_write(loop, req, /* is_read */ 1))
>> +-      return 0;
>> +-
>> +   POST;
>> + }
>> +
>> +@@ -2124,9 +2119,6 @@ int uv_fs_sendfile(uv_loop_t* loop,
>> + int uv_fs_stat(uv_loop_t* loop, uv_fs_t* req, const char* path, uv_fs_=
cb cb) {
>> +   INIT(STAT);
>> +   PATH;
>> +-  if (cb !=3D NULL)
>> +-    if (uv__iou_fs_statx(loop, req, /* is_fstat */ 0, /* is_lstat */ 0=
))
>> +-      return 0;
>> +   POST;
>> + }
>> +
>> +@@ -2190,11 +2182,6 @@ int uv_fs_write(uv_loop_t* loop,
>> +   memcpy(req->bufs, bufs, nbufs * sizeof(*bufs));
>> +
>> +   req->off =3D off;
>> +-
>> +-  if (cb !=3D NULL)
>> +-    if (uv__iou_fs_read_or_write(loop, req, /* is_read */ 0))
>> +-      return 0;
>> +-
>> +   POST;
>> + }
>> +
>> +diff --git a/deps/uv/src/unix/internal.h b/deps/uv/src/unix/internal.h
>> +index 6c5822e6a0d..d439ae6dd3d 100644
>> +--- a/deps/uv/src/unix/internal.h
>> ++++ b/deps/uv/src/unix/internal.h
>> +@@ -329,28 +329,6 @@ int uv__random_getentropy(void* buf, size_t buflen=
);
>> + int uv__random_readpath(const char* path, void* buf, size_t buflen);
>> + int uv__random_sysctl(void* buf, size_t buflen);
>> +
>> +-/* io_uring */
>> +-#ifdef __linux__
>> +-int uv__iou_fs_close(uv_loop_t* loop, uv_fs_t* req);
>> +-int uv__iou_fs_fsync_or_fdatasync(uv_loop_t* loop,
>> +-                                  uv_fs_t* req,
>> +-                                  uint32_t fsync_flags);
>> +-int uv__iou_fs_open(uv_loop_t* loop, uv_fs_t* req);
>> +-int uv__iou_fs_read_or_write(uv_loop_t* loop,
>> +-                             uv_fs_t* req,
>> +-                             int is_read);
>> +-int uv__iou_fs_statx(uv_loop_t* loop,
>> +-                     uv_fs_t* req,
>> +-                     int is_fstat,
>> +-                     int is_lstat);
>> +-#else
>> +-#define uv__iou_fs_close(loop, req) 0
>> +-#define uv__iou_fs_fsync_or_fdatasync(loop, req, fsync_flags) 0
>> +-#define uv__iou_fs_open(loop, req) 0
>> +-#define uv__iou_fs_read_or_write(loop, req, is_read) 0
>> +-#define uv__iou_fs_statx(loop, req, is_fstat, is_lstat) 0
>> +-#endif
>> +-
>> + #if defined(__APPLE__)
>> + int uv___stream_fd(const uv_stream_t* handle);
>> + #define uv__stream_fd(handle) (uv___stream_fd((const uv_stream_t*) (ha=
ndle)))
>> +@@ -427,7 +405,6 @@ int uv__statx(int dirfd,
>> +               int flags,
>> +               unsigned int mask,
>> +               struct uv__statx* statxbuf);
>> +-void uv__statx_to_stat(const struct uv__statx* statxbuf, uv_stat_t* bu=
f);
>> + ssize_t uv__getrandom(void* buf, size_t buflen, unsigned flags);
>> + #endif
>> +
>> +diff --git a/deps/uv/src/unix/kqueue.c b/deps/uv/src/unix/kqueue.c
>> +index 82916d65933..deb486bae7a 100644
>> +--- a/deps/uv/src/unix/kqueue.c
>> ++++ b/deps/uv/src/unix/kqueue.c
>> +@@ -127,7 +127,6 @@ static void uv__kqueue_delete(int kqfd, const struc=
t kevent *ev) {
>> +
>> +
>> + void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +-  uv__loop_internal_fields_t* lfields;
>> +   struct kevent events[1024];
>> +   struct kevent* ev;
>> +   struct timespec spec;
>> +@@ -156,7 +155,6 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +     return;
>> +   }
>> +
>> +-  lfields =3D uv__get_internal_fields(loop);
>> +   nevents =3D 0;
>> +
>> +   while (!QUEUE_EMPTY(&loop->watcher_queue)) {
>> +@@ -224,7 +222,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +   base =3D loop->time;
>> +   count =3D 48; /* Benchmarks suggest this gives the best throughput. =
*/
>> +
>> +-  if (lfields->flags & UV_METRICS_IDLE_TIME) {
>> ++  if (uv__get_internal_fields(loop)->flags & UV_METRICS_IDLE_TIME) {
>> +     reset_timeout =3D 1;
>> +     user_timeout =3D timeout;
>> +     timeout =3D 0;
>> +@@ -247,12 +245,6 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +     if (pset !=3D NULL)
>> +       pthread_sigmask(SIG_BLOCK, pset, NULL);
>> +
>> +-    /* Store the current timeout in a location that's globally accessi=
ble so
>> +-     * other locations like uv__work_done() can determine whether the =
queue
>> +-     * of events in the callback were waiting when poll was called.
>> +-     */
>> +-    lfields->current_timeout =3D timeout;
>> +-
>> +     nfds =3D kevent(loop->backend_fd,
>> +                   events,
>> +                   nevents,
>> +diff --git a/deps/uv/src/unix/linux.c b/deps/uv/src/unix/linux.c
>> +index 5f84ad0eea3..343e37f2527 100644
>> +--- a/deps/uv/src/unix/linux.c
>> ++++ b/deps/uv/src/unix/linux.c
>> +@@ -27,8 +27,6 @@
>> + #include "internal.h"
>> +
>> + #include <inttypes.h>
>> +-#include <stdatomic.h>
>> +-#include <stddef.h>  /* offsetof */
>> + #include <stdint.h>
>> + #include <stdio.h>
>> + #include <stdlib.h>
>> +@@ -40,29 +38,15 @@
>> + #include <net/if.h>
>> + #include <sys/epoll.h>
>> + #include <sys/inotify.h>
>> +-#include <sys/mman.h>
>> + #include <sys/param.h>
>> + #include <sys/prctl.h>
>> + #include <sys/stat.h>
>> + #include <sys/syscall.h>
>> + #include <sys/sysinfo.h>
>> +-#include <sys/sysmacros.h>
>> + #include <sys/types.h>
>> + #include <time.h>
>> + #include <unistd.h>
>> +
>> +-#ifndef __NR_io_uring_setup
>> +-# define __NR_io_uring_setup 425
>> +-#endif
>> +-
>> +-#ifndef __NR_io_uring_enter
>> +-# define __NR_io_uring_enter 426
>> +-#endif
>> +-
>> +-#ifndef __NR_io_uring_register
>> +-# define __NR_io_uring_register 427
>> +-#endif
>> +-
>> + #ifndef __NR_copy_file_range
>> + # if defined(__x86_64__)
>> + #  define __NR_copy_file_range 326
>> +@@ -132,129 +116,6 @@
>> + # include <netpacket/packet.h>
>> + #endif /* HAVE_IFADDRS_H */
>> +
>> +-enum {
>> +-  UV__IORING_SETUP_SQPOLL =3D 2u,
>> +-};
>> +-
>> +-enum {
>> +-  UV__IORING_FEAT_SINGLE_MMAP =3D 1u,
>> +-  UV__IORING_FEAT_NODROP =3D 2u,
>> +-  UV__IORING_FEAT_RSRC_TAGS =3D 1024u,  /* linux v5.13 */
>> +-};
>> +-
>> +-enum {
>> +-  UV__IORING_OP_READV =3D 1,
>> +-  UV__IORING_OP_WRITEV =3D 2,
>> +-  UV__IORING_OP_FSYNC =3D 3,
>> +-  UV__IORING_OP_OPENAT =3D 18,
>> +-  UV__IORING_OP_CLOSE =3D 19,
>> +-  UV__IORING_OP_STATX =3D 21,
>> +-  UV__IORING_OP_EPOLL_CTL =3D 29,
>> +-};
>> +-
>> +-enum {
>> +-  UV__IORING_ENTER_GETEVENTS =3D 1u,
>> +-  UV__IORING_ENTER_SQ_WAKEUP =3D 2u,
>> +-};
>> +-
>> +-enum {
>> +-  UV__IORING_SQ_NEED_WAKEUP =3D 1u,
>> +-  UV__IORING_SQ_CQ_OVERFLOW =3D 2u,
>> +-};
>> +-
>> +-struct uv__io_cqring_offsets {
>> +-  uint32_t head;
>> +-  uint32_t tail;
>> +-  uint32_t ring_mask;
>> +-  uint32_t ring_entries;
>> +-  uint32_t overflow;
>> +-  uint32_t cqes;
>> +-  uint64_t reserved0;
>> +-  uint64_t reserved1;
>> +-};
>> +-
>> +-STATIC_ASSERT(40 =3D=3D sizeof(struct uv__io_cqring_offsets));
>> +-
>> +-struct uv__io_sqring_offsets {
>> +-  uint32_t head;
>> +-  uint32_t tail;
>> +-  uint32_t ring_mask;
>> +-  uint32_t ring_entries;
>> +-  uint32_t flags;
>> +-  uint32_t dropped;
>> +-  uint32_t array;
>> +-  uint32_t reserved0;
>> +-  uint64_t reserved1;
>> +-};
>> +-
>> +-STATIC_ASSERT(40 =3D=3D sizeof(struct uv__io_sqring_offsets));
>> +-
>> +-struct uv__io_uring_cqe {
>> +-  uint64_t user_data;
>> +-  int32_t res;
>> +-  uint32_t flags;
>> +-};
>> +-
>> +-STATIC_ASSERT(16 =3D=3D sizeof(struct uv__io_uring_cqe));
>> +-
>> +-struct uv__io_uring_sqe {
>> +-  uint8_t opcode;
>> +-  uint8_t flags;
>> +-  uint16_t ioprio;
>> +-  int32_t fd;
>> +-  union {
>> +-    uint64_t off;
>> +-    uint64_t addr2;
>> +-  };
>> +-  union {
>> +-    uint64_t addr;
>> +-  };
>> +-  uint32_t len;
>> +-  union {
>> +-    uint32_t rw_flags;
>> +-    uint32_t fsync_flags;
>> +-    uint32_t open_flags;
>> +-    uint32_t statx_flags;
>> +-  };
>> +-  uint64_t user_data;
>> +-  union {
>> +-    uint16_t buf_index;
>> +-    uint64_t pad[3];
>> +-  };
>> +-};
>> +-
>> +-STATIC_ASSERT(64 =3D=3D sizeof(struct uv__io_uring_sqe));
>> +-STATIC_ASSERT(0 =3D=3D offsetof(struct uv__io_uring_sqe, opcode));
>> +-STATIC_ASSERT(1 =3D=3D offsetof(struct uv__io_uring_sqe, flags));
>> +-STATIC_ASSERT(2 =3D=3D offsetof(struct uv__io_uring_sqe, ioprio));
>> +-STATIC_ASSERT(4 =3D=3D offsetof(struct uv__io_uring_sqe, fd));
>> +-STATIC_ASSERT(8 =3D=3D offsetof(struct uv__io_uring_sqe, off));
>> +-STATIC_ASSERT(16 =3D=3D offsetof(struct uv__io_uring_sqe, addr));
>> +-STATIC_ASSERT(24 =3D=3D offsetof(struct uv__io_uring_sqe, len));
>> +-STATIC_ASSERT(28 =3D=3D offsetof(struct uv__io_uring_sqe, rw_flags));
>> +-STATIC_ASSERT(32 =3D=3D offsetof(struct uv__io_uring_sqe, user_data));
>> +-STATIC_ASSERT(40 =3D=3D offsetof(struct uv__io_uring_sqe, buf_index));
>> +-
>> +-struct uv__io_uring_params {
>> +-  uint32_t sq_entries;
>> +-  uint32_t cq_entries;
>> +-  uint32_t flags;
>> +-  uint32_t sq_thread_cpu;
>> +-  uint32_t sq_thread_idle;
>> +-  uint32_t features;
>> +-  uint32_t reserved[4];
>> +-  struct uv__io_sqring_offsets sq_off;  /* 40 bytes */
>> +-  struct uv__io_cqring_offsets cq_off;  /* 40 bytes */
>> +-};
>> +-
>> +-STATIC_ASSERT(40 + 40 + 40 =3D=3D sizeof(struct uv__io_uring_params));
>> +-STATIC_ASSERT(40 =3D=3D offsetof(struct uv__io_uring_params, sq_off));
>> +-STATIC_ASSERT(80 =3D=3D offsetof(struct uv__io_uring_params, cq_off));
>> +-
>> +-STATIC_ASSERT(EPOLL_CTL_ADD < 4);
>> +-STATIC_ASSERT(EPOLL_CTL_DEL < 4);
>> +-STATIC_ASSERT(EPOLL_CTL_MOD < 4);
>> +-
>> + struct watcher_list {
>> +   RB_ENTRY(watcher_list) entry;
>> +   QUEUE watchers;
>> +@@ -276,17 +137,6 @@ static int compare_watchers(const struct watcher_l=
ist* a,
>> + static void maybe_free_watcher_list(struct watcher_list* w,
>> +                                     uv_loop_t* loop);
>> +
>> +-static void uv__epoll_ctl_flush(int epollfd,
>> +-                                struct uv__iou* ctl,
>> +-                                struct epoll_event (*events)[256]);
>> +-
>> +-static void uv__epoll_ctl_prep(int epollfd,
>> +-                               struct uv__iou* ctl,
>> +-                               struct epoll_event (*events)[256],
>> +-                               int op,
>> +-                               int fd,
>> +-                               struct epoll_event* e);
>> +-
>> + RB_GENERATE_STATIC(watcher_root, watcher_list, entry, compare_watchers=
)
>> +
>> +
>> +@@ -356,187 +206,7 @@ ssize_t uv__getrandom(void* buf, size_t buflen, u=
nsigned flags) {
>> + }
>> +
>> +
>> +-int uv__io_uring_setup(int entries, struct uv__io_uring_params* params=
) {
>> +-  return syscall(__NR_io_uring_setup, entries, params);
>> +-}
>> +-
>> +-
>> +-int uv__io_uring_enter(int fd,
>> +-                       unsigned to_submit,
>> +-                       unsigned min_complete,
>> +-                       unsigned flags) {
>> +-  /* io_uring_enter used to take a sigset_t but it's unused
>> +-   * in newer kernels unless IORING_ENTER_EXT_ARG is set,
>> +-   * in which case it takes a struct io_uring_getevents_arg.
>> +-   */
>> +-  return syscall(__NR_io_uring_enter,
>> +-                 fd,
>> +-                 to_submit,
>> +-                 min_complete,
>> +-                 flags,
>> +-                 NULL,
>> +-                 0L);
>> +-}
>> +-
>> +-
>> +-int uv__io_uring_register(int fd, unsigned opcode, void* arg, unsigned=
 nargs) {
>> +-  return syscall(__NR_io_uring_register, fd, opcode, arg, nargs);
>> +-}
>> +-
>> +-
>> +-static int uv__use_io_uring(void) {
>> +-  /* Ternary: unknown=3D0, yes=3D1, no=3D-1 */
>> +-  static _Atomic int use_io_uring;
>> +-  char* val;
>> +-  int use;
>> +-
>> +-  use =3D atomic_load_explicit(&use_io_uring, memory_order_relaxed);
>> +-
>> +-  if (use =3D=3D 0) {
>> +-    val =3D getenv("UV_USE_IO_URING");
>> +-    use =3D val =3D=3D NULL || atoi(val) ? 1 : -1;
>> +-    atomic_store_explicit(&use_io_uring, use, memory_order_relaxed);
>> +-  }
>> +-
>> +-  return use > 0;
>> +-}
>> +-
>> +-
>> +-static void uv__iou_init(int epollfd,
>> +-                         struct uv__iou* iou,
>> +-                         uint32_t entries,
>> +-                         uint32_t flags) {
>> +-  struct uv__io_uring_params params;
>> +-  struct epoll_event e;
>> +-  size_t cqlen;
>> +-  size_t sqlen;
>> +-  size_t maxlen;
>> +-  size_t sqelen;
>> +-  uint32_t i;
>> +-  char* sq;
>> +-  char* sqe;
>> +-  int ringfd;
>> +-
>> +-  sq =3D MAP_FAILED;
>> +-  sqe =3D MAP_FAILED;
>> +-
>> +-  if (!uv__use_io_uring())
>> +-    return;
>> +-
>> +-  /* SQPOLL required CAP_SYS_NICE until linux v5.12 relaxed that requi=
rement.
>> +-   * Mostly academic because we check for a v5.13 kernel afterwards an=
yway.
>> +-   */
>> +-  memset(&params, 0, sizeof(params));
>> +-  params.flags =3D flags;
>> +-
>> +-  if (flags & UV__IORING_SETUP_SQPOLL)
>> +-    params.sq_thread_idle =3D 10;  /* milliseconds */
>> +-
>> +-  /* Kernel returns a file descriptor with O_CLOEXEC flag set. */
>> +-  ringfd =3D uv__io_uring_setup(entries, &params);
>> +-  if (ringfd =3D=3D -1)
>> +-    return;
>> +-
>> +-  /* IORING_FEAT_RSRC_TAGS is used to detect linux v5.13 but what we'r=
e
>> +-   * actually detecting is whether IORING_OP_STATX works with SQPOLL.
>> +-   */
>> +-  if (!(params.features & UV__IORING_FEAT_RSRC_TAGS))
>> +-    goto fail;
>> +-
>> +-  /* Implied by IORING_FEAT_RSRC_TAGS but checked explicitly anyway. *=
/
>> +-  if (!(params.features & UV__IORING_FEAT_SINGLE_MMAP))
>> +-    goto fail;
>> +-
>> +-  /* Implied by IORING_FEAT_RSRC_TAGS but checked explicitly anyway. *=
/
>> +-  if (!(params.features & UV__IORING_FEAT_NODROP))
>> +-    goto fail;
>> +-
>> +-  sqlen =3D params.sq_off.array + params.sq_entries * sizeof(uint32_t)=
;
>> +-  cqlen =3D
>> +-      params.cq_off.cqes + params.cq_entries * sizeof(struct uv__io_ur=
ing_cqe);
>> +-  maxlen =3D sqlen < cqlen ? cqlen : sqlen;
>> +-  sqelen =3D params.sq_entries * sizeof(struct uv__io_uring_sqe);
>> +-
>> +-  sq =3D mmap(0,
>> +-            maxlen,
>> +-            PROT_READ | PROT_WRITE,
>> +-            MAP_SHARED | MAP_POPULATE,
>> +-            ringfd,
>> +-            0);  /* IORING_OFF_SQ_RING */
>> +-
>> +-  sqe =3D mmap(0,
>> +-             sqelen,
>> +-             PROT_READ | PROT_WRITE,
>> +-             MAP_SHARED | MAP_POPULATE,
>> +-             ringfd,
>> +-             0x10000000ull);  /* IORING_OFF_SQES */
>> +-
>> +-  if (sq =3D=3D MAP_FAILED || sqe =3D=3D MAP_FAILED)
>> +-    goto fail;
>> +-
>> +-  if (flags & UV__IORING_SETUP_SQPOLL) {
>> +-    /* Only interested in completion events. To get notified when
>> +-     * the kernel pulls items from the submission ring, add POLLOUT.
>> +-     */
>> +-    memset(&e, 0, sizeof(e));
>> +-    e.events =3D POLLIN;
>> +-    e.data.fd =3D ringfd;
>> +-
>> +-    if (epoll_ctl(epollfd, EPOLL_CTL_ADD, ringfd, &e))
>> +-      goto fail;
>> +-  }
>> +-
>> +-  iou->sqhead =3D (uint32_t*) (sq + params.sq_off.head);
>> +-  iou->sqtail =3D (uint32_t*) (sq + params.sq_off.tail);
>> +-  iou->sqmask =3D *(uint32_t*) (sq + params.sq_off.ring_mask);
>> +-  iou->sqarray =3D (uint32_t*) (sq + params.sq_off.array);
>> +-  iou->sqflags =3D (uint32_t*) (sq + params.sq_off.flags);
>> +-  iou->cqhead =3D (uint32_t*) (sq + params.cq_off.head);
>> +-  iou->cqtail =3D (uint32_t*) (sq + params.cq_off.tail);
>> +-  iou->cqmask =3D *(uint32_t*) (sq + params.cq_off.ring_mask);
>> +-  iou->sq =3D sq;
>> +-  iou->cqe =3D sq + params.cq_off.cqes;
>> +-  iou->sqe =3D sqe;
>> +-  iou->sqlen =3D sqlen;
>> +-  iou->cqlen =3D cqlen;
>> +-  iou->maxlen =3D maxlen;
>> +-  iou->sqelen =3D sqelen;
>> +-  iou->ringfd =3D ringfd;
>> +-  iou->in_flight =3D 0;
>> +-
>> +-  for (i =3D 0; i <=3D iou->sqmask; i++)
>> +-    iou->sqarray[i] =3D i;  /* Slot -> sqe identity mapping. */
>> +-
>> +-  return;
>> +-
>> +-fail:
>> +-  if (sq !=3D MAP_FAILED)
>> +-    munmap(sq, maxlen);
>> +-
>> +-  if (sqe !=3D MAP_FAILED)
>> +-    munmap(sqe, sqelen);
>> +-
>> +-  uv__close(ringfd);
>> +-}
>> +-
>> +-
>> +-static void uv__iou_delete(struct uv__iou* iou) {
>> +-  if (iou->ringfd !=3D -1) {
>> +-    munmap(iou->sq, iou->maxlen);
>> +-    munmap(iou->sqe, iou->sqelen);
>> +-    uv__close(iou->ringfd);
>> +-    iou->ringfd =3D -1;
>> +-  }
>> +-}
>> +-
>> +-
>> + int uv__platform_loop_init(uv_loop_t* loop) {
>> +-  uv__loop_internal_fields_t* lfields;
>> +-
>> +-  lfields =3D uv__get_internal_fields(loop);
>> +-  lfields->ctl.ringfd =3D -1;
>> +-  lfields->iou.ringfd =3D -1;
>> +-
>> +   loop->inotify_watchers =3D NULL;
>> +   loop->inotify_fd =3D -1;
>> +   loop->backend_fd =3D epoll_create1(O_CLOEXEC);
>> +@@ -544,9 +214,6 @@ int uv__platform_loop_init(uv_loop_t* loop) {
>> +   if (loop->backend_fd =3D=3D -1)
>> +     return UV__ERR(errno);
>> +
>> +-  uv__iou_init(loop->backend_fd, &lfields->iou, 64, UV__IORING_SETUP_S=
QPOLL);
>> +-  uv__iou_init(loop->backend_fd, &lfields->ctl, 256, 0);
>> +-
>> +   return 0;
>> + }
>> +
>> +@@ -559,8 +226,6 @@ int uv__io_fork(uv_loop_t* loop) {
>> +
>> +   uv__close(loop->backend_fd);
>> +   loop->backend_fd =3D -1;
>> +-
>> +-  /* TODO(bnoordhuis) Loses items from the submission and completion r=
ings. */
>> +   uv__platform_loop_delete(loop);
>> +
>> +   err =3D uv__platform_loop_init(loop);
>> +@@ -572,62 +237,42 @@ int uv__io_fork(uv_loop_t* loop) {
>> +
>> +
>> + void uv__platform_loop_delete(uv_loop_t* loop) {
>> +-  uv__loop_internal_fields_t* lfields;
>> +-
>> +-  lfields =3D uv__get_internal_fields(loop);
>> +-  uv__iou_delete(&lfields->ctl);
>> +-  uv__iou_delete(&lfields->iou);
>> +-
>> +-  if (loop->inotify_fd !=3D -1) {
>> +-    uv__io_stop(loop, &loop->inotify_read_watcher, POLLIN);
>> +-    uv__close(loop->inotify_fd);
>> +-    loop->inotify_fd =3D -1;
>> +-  }
>> ++  if (loop->inotify_fd =3D=3D -1) return;
>> ++  uv__io_stop(loop, &loop->inotify_read_watcher, POLLIN);
>> ++  uv__close(loop->inotify_fd);
>> ++  loop->inotify_fd =3D -1;
>> + }
>> +
>> +
>> +-struct uv__invalidate {
>> +-  struct epoll_event (*prep)[256];
>> +-  struct epoll_event* events;
>> +-  int nfds;
>> +-};
>> +-
>> +-
>> + void uv__platform_invalidate_fd(uv_loop_t* loop, int fd) {
>> +-  uv__loop_internal_fields_t* lfields;
>> +-  struct uv__invalidate* inv;
>> ++  struct epoll_event* events;
>> +   struct epoll_event dummy;
>> +-  int i;
>> ++  uintptr_t i;
>> ++  uintptr_t nfds;
>> +
>> +-  lfields =3D uv__get_internal_fields(loop);
>> +-  inv =3D lfields->inv;
>> ++  assert(loop->watchers !=3D NULL);
>> ++  assert(fd >=3D 0);
>> +
>> +-  /* Invalidate events with same file descriptor */
>> +-  if (inv !=3D NULL)
>> +-    for (i =3D 0; i < inv->nfds; i++)
>> +-      if (inv->events[i].data.fd =3D=3D fd)
>> +-        inv->events[i].data.fd =3D -1;
>> ++  events =3D (struct epoll_event*) loop->watchers[loop->nwatchers];
>> ++  nfds =3D (uintptr_t) loop->watchers[loop->nwatchers + 1];
>> ++  if (events !=3D NULL)
>> ++    /* Invalidate events with same file descriptor */
>> ++    for (i =3D 0; i < nfds; i++)
>> ++      if (events[i].data.fd =3D=3D fd)
>> ++        events[i].data.fd =3D -1;
>> +
>> +   /* Remove the file descriptor from the epoll.
>> +    * This avoids a problem where the same file description remains ope=
n
>> +    * in another process, causing repeated junk epoll events.
>> +    *
>> +    * We pass in a dummy epoll_event, to work around a bug in old kerne=
ls.
>> +-   *
>> +-   * Work around a bug in kernels 3.10 to 3.19 where passing a struct =
that
>> +-   * has the EPOLLWAKEUP flag set generates spurious audit syslog warn=
ings.
>> +    */
>> +-  memset(&dummy, 0, sizeof(dummy));
>> +-
>> +-  if (inv =3D=3D NULL) {
>> ++  if (loop->backend_fd >=3D 0) {
>> ++    /* Work around a bug in kernels 3.10 to 3.19 where passing a struc=
t that
>> ++     * has the EPOLLWAKEUP flag set generates spurious audit syslog wa=
rnings.
>> ++     */
>> ++    memset(&dummy, 0, sizeof(dummy));
>> +     epoll_ctl(loop->backend_fd, EPOLL_CTL_DEL, fd, &dummy);
>> +-  } else {
>> +-    uv__epoll_ctl_prep(loop->backend_fd,
>> +-                       &lfields->ctl,
>> +-                       inv->prep,
>> +-                       EPOLL_CTL_DEL,
>> +-                       fd,
>> +-                       &dummy);
>> +   }
>> + }
>> +
>> +@@ -653,454 +298,27 @@ int uv__io_check_fd(uv_loop_t* loop, int fd) {
>> + }
>> +
>> +
>> +-/* Caller must initialize SQE and call uv__iou_submit(). */
>> +-static struct uv__io_uring_sqe* uv__iou_get_sqe(struct uv__iou* iou,
>> +-                                                uv_loop_t* loop,
>> +-                                                uv_fs_t* req) {
>> +-  struct uv__io_uring_sqe* sqe;
>> +-  uint32_t head;
>> +-  uint32_t tail;
>> +-  uint32_t mask;
>> +-  uint32_t slot;
>> +-
>> +-  if (iou->ringfd =3D=3D -1)
>> +-    return NULL;
>> +-
>> +-  head =3D atomic_load_explicit((_Atomic uint32_t*) iou->sqhead,
>> +-                              memory_order_acquire);
>> +-  tail =3D *iou->sqtail;
>> +-  mask =3D iou->sqmask;
>> +-
>> +-  if ((head & mask) =3D=3D ((tail + 1) & mask))
>> +-    return NULL;  /* No room in ring buffer. TODO(bnoordhuis) maybe fl=
ush it? */
>> +-
>> +-  slot =3D tail & mask;
>> +-  sqe =3D iou->sqe;
>> +-  sqe =3D &sqe[slot];
>> +-  memset(sqe, 0, sizeof(*sqe));
>> +-  sqe->user_data =3D (uintptr_t) req;
>> +-
>> +-  /* Pacify uv_cancel(). */
>> +-  req->work_req.loop =3D loop;
>> +-  req->work_req.work =3D NULL;
>> +-  req->work_req.done =3D NULL;
>> +-  QUEUE_INIT(&req->work_req.wq);
>> +-
>> +-  uv__req_register(loop, req);
>> +-  iou->in_flight++;
>> +-
>> +-  return sqe;
>> +-}
>> +-
>> +-
>> +-static void uv__iou_submit(struct uv__iou* iou) {
>> +-  uint32_t flags;
>> +-
>> +-  atomic_store_explicit((_Atomic uint32_t*) iou->sqtail,
>> +-                        *iou->sqtail + 1,
>> +-                        memory_order_release);
>> +-
>> +-  flags =3D atomic_load_explicit((_Atomic uint32_t*) iou->sqflags,
>> +-                               memory_order_acquire);
>> +-
>> +-  if (flags & UV__IORING_SQ_NEED_WAKEUP)
>> +-    if (uv__io_uring_enter(iou->ringfd, 0, 0, UV__IORING_ENTER_SQ_WAKE=
UP))
>> +-      if (errno !=3D EOWNERDEAD)  /* Kernel bug. Harmless, ignore. */
>> +-        perror("libuv: io_uring_enter(wakeup)");  /* Can't happen. */
>> +-}
>> +-
>> +-
>> +-int uv__iou_fs_close(uv_loop_t* loop, uv_fs_t* req) {
>> +-  struct uv__io_uring_sqe* sqe;
>> +-  struct uv__iou* iou;
>> +-
>> +-  iou =3D &uv__get_internal_fields(loop)->iou;
>> +-
>> +-  sqe =3D uv__iou_get_sqe(iou, loop, req);
>> +-  if (sqe =3D=3D NULL)
>> +-    return 0;
>> +-
>> +-  sqe->fd =3D req->file;
>> +-  sqe->opcode =3D UV__IORING_OP_CLOSE;
>> +-
>> +-  uv__iou_submit(iou);
>> +-
>> +-  return 1;
>> +-}
>> +-
>> +-
>> +-int uv__iou_fs_fsync_or_fdatasync(uv_loop_t* loop,
>> +-                                  uv_fs_t* req,
>> +-                                  uint32_t fsync_flags) {
>> +-  struct uv__io_uring_sqe* sqe;
>> +-  struct uv__iou* iou;
>> +-
>> +-  iou =3D &uv__get_internal_fields(loop)->iou;
>> +-
>> +-  sqe =3D uv__iou_get_sqe(iou, loop, req);
>> +-  if (sqe =3D=3D NULL)
>> +-    return 0;
>> +-
>> +-  /* Little known fact: setting seq->off and seq->len turns
>> +-   * it into an asynchronous sync_file_range() operation.
>> +-   */
>> +-  sqe->fd =3D req->file;
>> +-  sqe->fsync_flags =3D fsync_flags;
>> +-  sqe->opcode =3D UV__IORING_OP_FSYNC;
>> +-
>> +-  uv__iou_submit(iou);
>> +-
>> +-  return 1;
>> +-}
>> +-
>> +-
>> +-int uv__iou_fs_open(uv_loop_t* loop, uv_fs_t* req) {
>> +-  struct uv__io_uring_sqe* sqe;
>> +-  struct uv__iou* iou;
>> +-
>> +-  iou =3D &uv__get_internal_fields(loop)->iou;
>> +-
>> +-  sqe =3D uv__iou_get_sqe(iou, loop, req);
>> +-  if (sqe =3D=3D NULL)
>> +-    return 0;
>> +-
>> +-  sqe->addr =3D (uintptr_t) req->path;
>> +-  sqe->fd =3D AT_FDCWD;
>> +-  sqe->len =3D req->mode;
>> +-  sqe->opcode =3D UV__IORING_OP_OPENAT;
>> +-  sqe->open_flags =3D req->flags | O_CLOEXEC;
>> +-
>> +-  uv__iou_submit(iou);
>> +-
>> +-  return 1;
>> +-}
>> +-
>> +-
>> +-int uv__iou_fs_read_or_write(uv_loop_t* loop,
>> +-                             uv_fs_t* req,
>> +-                             int is_read) {
>> +-  struct uv__io_uring_sqe* sqe;
>> +-  struct uv__iou* iou;
>> +-
>> +-  /* For the moment, if iovcnt is greater than IOV_MAX, fallback to th=
e
>> +-   * threadpool. In the future we might take advantage of IOSQE_IO_LIN=
K. */
>> +-  if (req->nbufs > IOV_MAX)
>> +-    return 0;
>> +-
>> +-  iou =3D &uv__get_internal_fields(loop)->iou;
>> +-
>> +-  sqe =3D uv__iou_get_sqe(iou, loop, req);
>> +-  if (sqe =3D=3D NULL)
>> +-    return 0;
>> +-
>> +-  sqe->addr =3D (uintptr_t) req->bufs;
>> +-  sqe->fd =3D req->file;
>> +-  sqe->len =3D req->nbufs;
>> +-  sqe->off =3D req->off < 0 ? -1 : req->off;
>> +-  sqe->opcode =3D is_read ? UV__IORING_OP_READV : UV__IORING_OP_WRITEV=
;
>> +-
>> +-  uv__iou_submit(iou);
>> +-
>> +-  return 1;
>> +-}
>> +-
>> +-
>> +-int uv__iou_fs_statx(uv_loop_t* loop,
>> +-                     uv_fs_t* req,
>> +-                     int is_fstat,
>> +-                     int is_lstat) {
>> +-  struct uv__io_uring_sqe* sqe;
>> +-  struct uv__statx* statxbuf;
>> +-  struct uv__iou* iou;
>> +-
>> +-  statxbuf =3D uv__malloc(sizeof(*statxbuf));
>> +-  if (statxbuf =3D=3D NULL)
>> +-    return 0;
>> +-
>> +-  iou =3D &uv__get_internal_fields(loop)->iou;
>> +-
>> +-  sqe =3D uv__iou_get_sqe(iou, loop, req);
>> +-  if (sqe =3D=3D NULL) {
>> +-    uv__free(statxbuf);
>> +-    return 0;
>> +-  }
>> +-
>> +-  req->ptr =3D statxbuf;
>> +-
>> +-  sqe->addr =3D (uintptr_t) req->path;
>> +-  sqe->addr2 =3D (uintptr_t) statxbuf;
>> +-  sqe->fd =3D AT_FDCWD;
>> +-  sqe->len =3D 0xFFF; /* STATX_BASIC_STATS + STATX_BTIME */
>> +-  sqe->opcode =3D UV__IORING_OP_STATX;
>> +-
>> +-  if (is_fstat) {
>> +-    sqe->addr =3D (uintptr_t) "";
>> +-    sqe->fd =3D req->file;
>> +-    sqe->statx_flags |=3D 0x1000; /* AT_EMPTY_PATH */
>> +-  }
>> +-
>> +-  if (is_lstat)
>> +-    sqe->statx_flags |=3D AT_SYMLINK_NOFOLLOW;
>> +-
>> +-  uv__iou_submit(iou);
>> +-
>> +-  return 1;
>> +-}
>> +-
>> +-
>> +-void uv__statx_to_stat(const struct uv__statx* statxbuf, uv_stat_t* bu=
f) {
>> +-  buf->st_dev =3D makedev(statxbuf->stx_dev_major, statxbuf->stx_dev_m=
inor);
>> +-  buf->st_mode =3D statxbuf->stx_mode;
>> +-  buf->st_nlink =3D statxbuf->stx_nlink;
>> +-  buf->st_uid =3D statxbuf->stx_uid;
>> +-  buf->st_gid =3D statxbuf->stx_gid;
>> +-  buf->st_rdev =3D makedev(statxbuf->stx_rdev_major, statxbuf->stx_rde=
v_minor);
>> +-  buf->st_ino =3D statxbuf->stx_ino;
>> +-  buf->st_size =3D statxbuf->stx_size;
>> +-  buf->st_blksize =3D statxbuf->stx_blksize;
>> +-  buf->st_blocks =3D statxbuf->stx_blocks;
>> +-  buf->st_atim.tv_sec =3D statxbuf->stx_atime.tv_sec;
>> +-  buf->st_atim.tv_nsec =3D statxbuf->stx_atime.tv_nsec;
>> +-  buf->st_mtim.tv_sec =3D statxbuf->stx_mtime.tv_sec;
>> +-  buf->st_mtim.tv_nsec =3D statxbuf->stx_mtime.tv_nsec;
>> +-  buf->st_ctim.tv_sec =3D statxbuf->stx_ctime.tv_sec;
>> +-  buf->st_ctim.tv_nsec =3D statxbuf->stx_ctime.tv_nsec;
>> +-  buf->st_birthtim.tv_sec =3D statxbuf->stx_btime.tv_sec;
>> +-  buf->st_birthtim.tv_nsec =3D statxbuf->stx_btime.tv_nsec;
>> +-  buf->st_flags =3D 0;
>> +-  buf->st_gen =3D 0;
>> +-}
>> +-
>> +-
>> +-static void uv__iou_fs_statx_post(uv_fs_t* req) {
>> +-  struct uv__statx* statxbuf;
>> +-  uv_stat_t* buf;
>> +-
>> +-  buf =3D &req->statbuf;
>> +-  statxbuf =3D req->ptr;
>> +-  req->ptr =3D NULL;
>> +-
>> +-  if (req->result =3D=3D 0) {
>> +-    uv__msan_unpoison(statxbuf, sizeof(*statxbuf));
>> +-    uv__statx_to_stat(statxbuf, buf);
>> +-    req->ptr =3D buf;
>> +-  }
>> +-
>> +-  uv__free(statxbuf);
>> +-}
>> +-
>> +-
>> +-static void uv__poll_io_uring(uv_loop_t* loop, struct uv__iou* iou) {
>> +-  struct uv__io_uring_cqe* cqe;
>> +-  struct uv__io_uring_cqe* e;
>> +-  uv_fs_t* req;
>> +-  uint32_t head;
>> +-  uint32_t tail;
>> +-  uint32_t mask;
>> +-  uint32_t i;
>> +-  uint32_t flags;
>> +-  int nevents;
>> +-  int rc;
>> +-
>> +-  head =3D *iou->cqhead;
>> +-  tail =3D atomic_load_explicit((_Atomic uint32_t*) iou->cqtail,
>> +-                              memory_order_acquire);
>> +-  mask =3D iou->cqmask;
>> +-  cqe =3D iou->cqe;
>> +-  nevents =3D 0;
>> +-
>> +-  for (i =3D head; i !=3D tail; i++) {
>> +-    e =3D &cqe[i & mask];
>> +-
>> +-    req =3D (uv_fs_t*) (uintptr_t) e->user_data;
>> +-    assert(req->type =3D=3D UV_FS);
>> +-
>> +-    uv__req_unregister(loop, req);
>> +-    iou->in_flight--;
>> +-
>> +-    /* io_uring stores error codes as negative numbers, same as libuv.=
 */
>> +-    req->result =3D e->res;
>> +-
>> +-    switch (req->fs_type) {
>> +-      case UV_FS_FSTAT:
>> +-      case UV_FS_LSTAT:
>> +-      case UV_FS_STAT:
>> +-        uv__iou_fs_statx_post(req);
>> +-        break;
>> +-      default:  /* Squelch -Wswitch warnings. */
>> +-        break;
>> +-    }
>> +-
>> +-    uv__metrics_update_idle_time(loop);
>> +-    req->cb(req);
>> +-    nevents++;
>> +-  }
>> +-
>> +-  atomic_store_explicit((_Atomic uint32_t*) iou->cqhead,
>> +-                        tail,
>> +-                        memory_order_release);
>> +-
>> +-  /* Check whether CQE's overflowed, if so enter the kernel to make th=
em
>> +-   * available. Don't grab them immediately but in the next loop itera=
tion to
>> +-   * avoid loop starvation. */
>> +-  flags =3D atomic_load_explicit((_Atomic uint32_t*) iou->sqflags,
>> +-                               memory_order_acquire);
>> +-
>> +-  if (flags & UV__IORING_SQ_CQ_OVERFLOW) {
>> +-    do
>> +-      rc =3D uv__io_uring_enter(iou->ringfd, 0, 0, UV__IORING_ENTER_GE=
TEVENTS);
>> +-    while (rc =3D=3D -1 && errno =3D=3D EINTR);
>> +-
>> +-    if (rc < 0)
>> +-      perror("libuv: io_uring_enter(getevents)");  /* Can't happen. */
>> +-  }
>> +-
>> +-  uv__metrics_inc_events(loop, nevents);
>> +-  if (uv__get_internal_fields(loop)->current_timeout =3D=3D 0)
>> +-    uv__metrics_inc_events_waiting(loop, nevents);
>> +-}
>> +-
>> +-
>> +-static void uv__epoll_ctl_prep(int epollfd,
>> +-                               struct uv__iou* ctl,
>> +-                               struct epoll_event (*events)[256],
>> +-                               int op,
>> +-                               int fd,
>> +-                               struct epoll_event* e) {
>> +-  struct uv__io_uring_sqe* sqe;
>> +-  struct epoll_event* pe;
>> +-  uint32_t mask;
>> +-  uint32_t slot;
>> +-
>> +-  if (ctl->ringfd =3D=3D -1) {
>> +-    if (!epoll_ctl(epollfd, op, fd, e))
>> +-      return;
>> +-
>> +-    if (op =3D=3D EPOLL_CTL_DEL)
>> +-      return;  /* Ignore errors, may be racing with another thread. */
>> +-
>> +-    if (op !=3D EPOLL_CTL_ADD)
>> +-      abort();
>> +-
>> +-    if (errno !=3D EEXIST)
>> +-      abort();
>> +-
>> +-    /* File descriptor that's been watched before, update event mask. =
*/
>> +-    if (!epoll_ctl(epollfd, EPOLL_CTL_MOD, fd, e))
>> +-      return;
>> +-
>> +-    abort();
>> +-  } else {
>> +-    mask =3D ctl->sqmask;
>> +-    slot =3D (*ctl->sqtail)++ & mask;
>> +-
>> +-    pe =3D &(*events)[slot];
>> +-    *pe =3D *e;
>> +-
>> +-    sqe =3D ctl->sqe;
>> +-    sqe =3D &sqe[slot];
>> +-
>> +-    memset(sqe, 0, sizeof(*sqe));
>> +-    sqe->addr =3D (uintptr_t) pe;
>> +-    sqe->fd =3D epollfd;
>> +-    sqe->len =3D op;
>> +-    sqe->off =3D fd;
>> +-    sqe->opcode =3D UV__IORING_OP_EPOLL_CTL;
>> +-    sqe->user_data =3D op | slot << 2 | (int64_t) fd << 32;
>> +-
>> +-    if ((*ctl->sqhead & mask) =3D=3D (*ctl->sqtail & mask))
>> +-      uv__epoll_ctl_flush(epollfd, ctl, events);
>> +-  }
>> +-}
>> +-
>> +-
>> +-static void uv__epoll_ctl_flush(int epollfd,
>> +-                                struct uv__iou* ctl,
>> +-                                struct epoll_event (*events)[256]) {
>> +-  struct epoll_event oldevents[256];
>> +-  struct uv__io_uring_cqe* cqe;
>> +-  uint32_t oldslot;
>> +-  uint32_t slot;
>> +-  uint32_t n;
>> +-  int fd;
>> +-  int op;
>> +-  int rc;
>> +-
>> +-  STATIC_ASSERT(sizeof(oldevents) =3D=3D sizeof(*events));
>> +-  assert(ctl->ringfd !=3D -1);
>> +-  assert(*ctl->sqhead !=3D *ctl->sqtail);
>> +-
>> +-  n =3D *ctl->sqtail - *ctl->sqhead;
>> +-  do
>> +-    rc =3D uv__io_uring_enter(ctl->ringfd, n, n, UV__IORING_ENTER_GETE=
VENTS);
>> +-  while (rc =3D=3D -1 && errno =3D=3D EINTR);
>> +-
>> +-  if (rc < 0)
>> +-    perror("libuv: io_uring_enter(getevents)");  /* Can't happen. */
>> +-
>> +-  if (rc !=3D (int) n)
>> +-    abort();
>> +-
>> +-  assert(*ctl->sqhead =3D=3D *ctl->sqtail);
>> +-
>> +-  memcpy(oldevents, *events, sizeof(*events));
>> +-
>> +-  /* Failed submissions are either EPOLL_CTL_DEL commands for file des=
criptors
>> +-   * that have been closed, or EPOLL_CTL_ADD commands for file descrip=
tors
>> +-   * that we are already watching. Ignore the former and retry the lat=
ter
>> +-   * with EPOLL_CTL_MOD.
>> +-   */
>> +-  while (*ctl->cqhead !=3D *ctl->cqtail) {
>> +-    slot =3D (*ctl->cqhead)++ & ctl->cqmask;
>> +-
>> +-    cqe =3D ctl->cqe;
>> +-    cqe =3D &cqe[slot];
>> +-
>> +-    if (cqe->res =3D=3D 0)
>> +-      continue;
>> +-
>> +-    fd =3D cqe->user_data >> 32;
>> +-    op =3D 3 & cqe->user_data;
>> +-    oldslot =3D 255 & (cqe->user_data >> 2);
>> +-
>> +-    if (op =3D=3D EPOLL_CTL_DEL)
>> +-      continue;
>> +-
>> +-    if (op !=3D EPOLL_CTL_ADD)
>> +-      abort();
>> +-
>> +-    if (cqe->res !=3D -EEXIST)
>> +-      abort();
>> +-
>> +-    uv__epoll_ctl_prep(epollfd,
>> +-                       ctl,
>> +-                       events,
>> +-                       EPOLL_CTL_MOD,
>> +-                       fd,
>> +-                       &oldevents[oldslot]);
>> +-  }
>> +-}
>> +-
>> +-
>> + void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +-  uv__loop_internal_fields_t* lfields;
>> ++  /* A bug in kernels < 2.6.37 makes timeouts larger than ~30 minutes
>> ++   * effectively infinite on 32 bits architectures.  To avoid blocking
>> ++   * indefinitely, we cap the timeout and poll again if necessary.
>> ++   *
>> ++   * Note that "30 minutes" is a simplification because it depends on
>> ++   * the value of CONFIG_HZ.  The magic constant assumes CONFIG_HZ=3D1=
200,
>> ++   * that being the largest value I have seen in the wild (and only on=
ce.)
>> ++   */
>> ++  static const int max_safe_timeout =3D 1789569;
>> +   struct epoll_event events[1024];
>> +-  struct epoll_event prep[256];
>> +-  struct uv__invalidate inv;
>> +   struct epoll_event* pe;
>> +   struct epoll_event e;
>> +-  struct uv__iou* ctl;
>> +-  struct uv__iou* iou;
>> +   int real_timeout;
>> +   QUEUE* q;
>> +   uv__io_t* w;
>> +   sigset_t* sigmask;
>> +   sigset_t sigset;
>> +   uint64_t base;
>> +-  int have_iou_events;
>> +   int have_signals;
>> +   int nevents;
>> +-  int epollfd;
>> +   int count;
>> +   int nfds;
>> +   int fd;
>> +@@ -1109,9 +327,47 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +   int user_timeout;
>> +   int reset_timeout;
>> +
>> +-  lfields =3D uv__get_internal_fields(loop);
>> +-  ctl =3D &lfields->ctl;
>> +-  iou =3D &lfields->iou;
>> ++  if (loop->nfds =3D=3D 0) {
>> ++    assert(QUEUE_EMPTY(&loop->watcher_queue));
>> ++    return;
>> ++  }
>> ++
>> ++  memset(&e, 0, sizeof(e));
>> ++
>> ++  while (!QUEUE_EMPTY(&loop->watcher_queue)) {
>> ++    q =3D QUEUE_HEAD(&loop->watcher_queue);
>> ++    QUEUE_REMOVE(q);
>> ++    QUEUE_INIT(q);
>> ++
>> ++    w =3D QUEUE_DATA(q, uv__io_t, watcher_queue);
>> ++    assert(w->pevents !=3D 0);
>> ++    assert(w->fd >=3D 0);
>> ++    assert(w->fd < (int) loop->nwatchers);
>> ++
>> ++    e.events =3D w->pevents;
>> ++    e.data.fd =3D w->fd;
>> ++
>> ++    if (w->events =3D=3D 0)
>> ++      op =3D EPOLL_CTL_ADD;
>> ++    else
>> ++      op =3D EPOLL_CTL_MOD;
>> ++
>> ++    /* XXX Future optimization: do EPOLL_CTL_MOD lazily if we stop wat=
ching
>> ++     * events, skip the syscall and squelch the events after epoll_wai=
t().
>> ++     */
>> ++    if (epoll_ctl(loop->backend_fd, op, w->fd, &e)) {
>> ++      if (errno !=3D EEXIST)
>> ++        abort();
>> ++
>> ++      assert(op =3D=3D EPOLL_CTL_ADD);
>> ++
>> ++      /* We've reactivated a file descriptor that's been watched befor=
e. */
>> ++      if (epoll_ctl(loop->backend_fd, EPOLL_CTL_MOD, w->fd, &e))
>> ++        abort();
>> ++    }
>> ++
>> ++    w->events =3D w->pevents;
>> ++  }
>> +
>> +   sigmask =3D NULL;
>> +   if (loop->flags & UV_LOOP_BLOCK_SIGPROF) {
>> +@@ -1125,7 +381,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +   count =3D 48; /* Benchmarks suggest this gives the best throughput. =
*/
>> +   real_timeout =3D timeout;
>> +
>> +-  if (lfields->flags & UV_METRICS_IDLE_TIME) {
>> ++  if (uv__get_internal_fields(loop)->flags & UV_METRICS_IDLE_TIME) {
>> +     reset_timeout =3D 1;
>> +     user_timeout =3D timeout;
>> +     timeout =3D 0;
>> +@@ -1134,56 +390,24 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +     user_timeout =3D 0;
>> +   }
>> +
>> +-  epollfd =3D loop->backend_fd;
>> +-
>> +-  memset(&e, 0, sizeof(e));
>> +-
>> +-  while (!QUEUE_EMPTY(&loop->watcher_queue)) {
>> +-    q =3D QUEUE_HEAD(&loop->watcher_queue);
>> +-    w =3D QUEUE_DATA(q, uv__io_t, watcher_queue);
>> +-    QUEUE_REMOVE(q);
>> +-    QUEUE_INIT(q);
>> +-
>> +-    op =3D EPOLL_CTL_MOD;
>> +-    if (w->events =3D=3D 0)
>> +-      op =3D EPOLL_CTL_ADD;
>> +-
>> +-    w->events =3D w->pevents;
>> +-    e.events =3D w->pevents;
>> +-    e.data.fd =3D w->fd;
>> +-
>> +-    uv__epoll_ctl_prep(epollfd, ctl, &prep, op, w->fd, &e);
>> +-  }
>> +-
>> +-  inv.events =3D events;
>> +-  inv.prep =3D &prep;
>> +-  inv.nfds =3D -1;
>> +-
>> +   for (;;) {
>> +-    if (loop->nfds =3D=3D 0)
>> +-      if (iou->in_flight =3D=3D 0)
>> +-        break;
>> +-
>> +-    /* All event mask mutations should be visible to the kernel before
>> +-     * we enter epoll_pwait().
>> +-     */
>> +-    if (ctl->ringfd !=3D -1)
>> +-      while (*ctl->sqhead !=3D *ctl->sqtail)
>> +-        uv__epoll_ctl_flush(epollfd, ctl, &prep);
>> +-
>> +     /* Only need to set the provider_entry_time if timeout !=3D 0. The=
 function
>> +      * will return early if the loop isn't configured with UV_METRICS_=
IDLE_TIME.
>> +      */
>> +     if (timeout !=3D 0)
>> +       uv__metrics_set_provider_entry_time(loop);
>> +
>> +-    /* Store the current timeout in a location that's globally accessi=
ble so
>> +-     * other locations like uv__work_done() can determine whether the =
queue
>> +-     * of events in the callback were waiting when poll was called.
>> ++    /* See the comment for max_safe_timeout for an explanation of why
>> ++     * this is necessary.  Executive summary: kernel bug workaround.
>> +      */
>> +-    lfields->current_timeout =3D timeout;
>> ++    if (sizeof(int32_t) =3D=3D sizeof(long) && timeout >=3D max_safe_t=
imeout)
>> ++      timeout =3D max_safe_timeout;
>> +
>> +-    nfds =3D epoll_pwait(epollfd, events, ARRAY_SIZE(events), timeout,=
 sigmask);
>> ++    nfds =3D epoll_pwait(loop->backend_fd,
>> ++                       events,
>> ++                       ARRAY_SIZE(events),
>> ++                       timeout,
>> ++                       sigmask);
>> +
>> +     /* Update loop->time unconditionally. It's tempting to skip the up=
date when
>> +      * timeout =3D=3D 0 (i.e. non-blocking poll) but there is no guara=
ntee that the
>> +@@ -1203,7 +427,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +         continue;
>> +
>> +       if (timeout =3D=3D 0)
>> +-        break;
>> ++        return;
>> +
>> +       /* We may have been inside the system call for longer than |time=
out|
>> +        * milliseconds so we need to update the timestamp to avoid drif=
t.
>> +@@ -1224,18 +448,27 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +         continue;
>> +
>> +       if (timeout =3D=3D 0)
>> +-        break;
>> ++        return;
>> +
>> +       /* Interrupted by a signal. Update timeout and poll again. */
>> +       goto update_timeout;
>> +     }
>> +
>> +-    have_iou_events =3D 0;
>> +     have_signals =3D 0;
>> +     nevents =3D 0;
>> +
>> +-    inv.nfds =3D nfds;
>> +-    lfields->inv =3D &inv;
>> ++    {
>> ++      /* Squelch a -Waddress-of-packed-member warning with gcc >=3D 9.=
 */
>> ++      union {
>> ++        struct epoll_event* events;
>> ++        uv__io_t* watchers;
>> ++      } x;
>> ++
>> ++      x.events =3D events;
>> ++      assert(loop->watchers !=3D NULL);
>> ++      loop->watchers[loop->nwatchers] =3D x.watchers;
>> ++      loop->watchers[loop->nwatchers + 1] =3D (void*) (uintptr_t) nfds=
;
>> ++    }
>> +
>> +     for (i =3D 0; i < nfds; i++) {
>> +       pe =3D events + i;
>> +@@ -1245,12 +478,6 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +       if (fd =3D=3D -1)
>> +         continue;
>> +
>> +-      if (fd =3D=3D iou->ringfd) {
>> +-        uv__poll_io_uring(loop, iou);
>> +-        have_iou_events =3D 1;
>> +-        continue;
>> +-      }
>> +-
>> +       assert(fd >=3D 0);
>> +       assert((unsigned) fd < loop->nwatchers);
>> +
>> +@@ -1262,7 +489,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +          * Ignore all errors because we may be racing with another thr=
ead
>> +          * when the file descriptor is closed.
>> +          */
>> +-        uv__epoll_ctl_prep(epollfd, ctl, &prep, EPOLL_CTL_DEL, fd, pe)=
;
>> ++        epoll_ctl(loop->backend_fd, EPOLL_CTL_DEL, fd, pe);
>> +         continue;
>> +       }
>> +
>> +@@ -1319,13 +546,11 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +       loop->signal_io_watcher.cb(loop, &loop->signal_io_watcher, POLLI=
N);
>> +     }
>> +
>> +-    lfields->inv =3D NULL;
>> +-
>> +-    if (have_iou_events !=3D 0)
>> +-      break;  /* Event loop should cycle now so don't poll again. */
>> ++    loop->watchers[loop->nwatchers] =3D NULL;
>> ++    loop->watchers[loop->nwatchers + 1] =3D NULL;
>> +
>> +     if (have_signals !=3D 0)
>> +-      break;  /* Event loop should cycle now so don't poll again. */
>> ++      return;  /* Event loop should cycle now so don't poll again. */
>> +
>> +     if (nevents !=3D 0) {
>> +       if (nfds =3D=3D ARRAY_SIZE(events) && --count !=3D 0) {
>> +@@ -1333,11 +558,11 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +         timeout =3D 0;
>> +         continue;
>> +       }
>> +-      break;
>> ++      return;
>> +     }
>> +
>> +     if (timeout =3D=3D 0)
>> +-      break;
>> ++      return;
>> +
>> +     if (timeout =3D=3D -1)
>> +       continue;
>> +@@ -1347,14 +572,10 @@ update_timeout:
>> +
>> +     real_timeout -=3D (loop->time - base);
>> +     if (real_timeout <=3D 0)
>> +-      break;
>> ++      return;
>> +
>> +     timeout =3D real_timeout;
>> +   }
>> +-
>> +-  if (ctl->ringfd !=3D -1)
>> +-    while (*ctl->sqhead !=3D *ctl->sqtail)
>> +-      uv__epoll_ctl_flush(epollfd, ctl, &prep);
>> + }
>> +
>> + uint64_t uv__hrtime(uv_clocktype_t type) {
>> +@@ -1867,7 +1088,7 @@ static uint64_t uv__read_uint64(const char* filen=
ame) {
>> +   if (0 =3D=3D uv__slurp(filename, buf, sizeof(buf)))
>> +     if (1 !=3D sscanf(buf, "%" PRIu64, &rc))
>> +       if (0 =3D=3D strcmp(buf, "max\n"))
>> +-        rc =3D UINT64_MAX;
>> ++        rc =3D ~0ull;
>> +
>> +   return rc;
>> + }
>> +@@ -1903,7 +1124,6 @@ static void uv__get_cgroup1_memory_limits(char bu=
f[static 1024], uint64_t* high,
>> +   char filename[4097];
>> +   char* p;
>> +   int n;
>> +-  uint64_t cgroup1_max;
>> +
>> +   /* Find out where the controller is mounted. */
>> +   p =3D uv__cgroup1_find_memory_controller(buf, &n);
>> +@@ -1920,22 +1140,12 @@ static void uv__get_cgroup1_memory_limits(char =
buf[static 1024], uint64_t* high,
>> +      * as indicated by uv__read_uint64 returning 0.
>> +      */
>> +      if (*high !=3D 0 && *max !=3D 0)
>> +-       goto update_limits;
>> ++       return;
>> +   }
>> +
>> +   /* Fall back to the limits of the global memory controller. */
>> +   *high =3D uv__read_uint64("/sys/fs/cgroup/memory/memory.soft_limit_i=
n_bytes");
>> +   *max =3D uv__read_uint64("/sys/fs/cgroup/memory/memory.limit_in_byte=
s");
>> +-
>> +-  /* uv__read_uint64 detects cgroup2's "max", so we need to separately=
 detect
>> +-   * cgroup1's maximum value (which is derived from LONG_MAX and PAGE_=
SIZE).
>> +-   */
>> +-update_limits:
>> +-  cgroup1_max =3D LONG_MAX & ~(sysconf(_SC_PAGESIZE) - 1);
>> +-  if (*high =3D=3D cgroup1_max)
>> +-    *high =3D UINT64_MAX;
>> +-  if (*max =3D=3D cgroup1_max)
>> +-    *max =3D UINT64_MAX;
>> + }
>> +
>> + static void uv__get_cgroup2_memory_limits(char buf[static 1024], uint6=
4_t* high,
>> +diff --git a/deps/uv/src/unix/os390.c b/deps/uv/src/unix/os390.c
>> +index a87c2d77faf..3954b2c2753 100644
>> +--- a/deps/uv/src/unix/os390.c
>> ++++ b/deps/uv/src/unix/os390.c
>> +@@ -808,7 +808,6 @@ static int os390_message_queue_handler(uv__os390_ep=
oll* ep) {
>> +
>> + void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +   static const int max_safe_timeout =3D 1789569;
>> +-  uv__loop_internal_fields_t* lfields;
>> +   struct epoll_event events[1024];
>> +   struct epoll_event* pe;
>> +   struct epoll_event e;
>> +@@ -831,8 +830,6 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +     return;
>> +   }
>> +
>> +-  lfields =3D uv__get_internal_fields(loop);
>> +-
>> +   while (!QUEUE_EMPTY(&loop->watcher_queue)) {
>> +     uv_stream_t* stream;
>> +
>> +@@ -880,7 +877,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +   int nevents =3D 0;
>> +   have_signals =3D 0;
>> +
>> +-  if (lfields->flags & UV_METRICS_IDLE_TIME) {
>> ++  if (uv__get_internal_fields(loop)->flags & UV_METRICS_IDLE_TIME) {
>> +     reset_timeout =3D 1;
>> +     user_timeout =3D timeout;
>> +     timeout =3D 0;
>> +@@ -899,12 +896,6 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +     if (sizeof(int32_t) =3D=3D sizeof(long) && timeout >=3D max_safe_t=
imeout)
>> +       timeout =3D max_safe_timeout;
>> +
>> +-    /* Store the current timeout in a location that's globally accessi=
ble so
>> +-     * other locations like uv__work_done() can determine whether the =
queue
>> +-     * of events in the callback were waiting when poll was called.
>> +-     */
>> +-    lfields->current_timeout =3D timeout;
>> +-
>> +     nfds =3D epoll_wait(loop->ep, events,
>> +                       ARRAY_SIZE(events), timeout);
>> +
>> +diff --git a/deps/uv/src/unix/posix-poll.c b/deps/uv/src/unix/posix-pol=
l.c
>> +index 7e7de86845d..711780ece8d 100644
>> +--- a/deps/uv/src/unix/posix-poll.c
>> ++++ b/deps/uv/src/unix/posix-poll.c
>> +@@ -132,7 +132,6 @@ static void uv__pollfds_del(uv_loop_t* loop, int fd=
) {
>> +
>> +
>> + void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +-  uv__loop_internal_fields_t* lfields;
>> +   sigset_t* pset;
>> +   sigset_t set;
>> +   uint64_t time_base;
>> +@@ -153,8 +152,6 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +     return;
>> +   }
>> +
>> +-  lfields =3D uv__get_internal_fields(loop);
>> +-
>> +   /* Take queued watchers and add their fds to our poll fds array.  */
>> +   while (!QUEUE_EMPTY(&loop->watcher_queue)) {
>> +     q =3D QUEUE_HEAD(&loop->watcher_queue);
>> +@@ -182,7 +179,7 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +   assert(timeout >=3D -1);
>> +   time_base =3D loop->time;
>> +
>> +-  if (lfields->flags & UV_METRICS_IDLE_TIME) {
>> ++  if (uv__get_internal_fields(loop)->flags & UV_METRICS_IDLE_TIME) {
>> +     reset_timeout =3D 1;
>> +     user_timeout =3D timeout;
>> +     timeout =3D 0;
>> +@@ -201,12 +198,6 @@ void uv__io_poll(uv_loop_t* loop, int timeout) {
>> +     if (timeout !=3D 0)
>> +       uv__metrics_set_provider_entry_time(loop);
>> +
>> +-    /* Store the current timeout in a location that's globally accessi=
ble so
>> +-     * other locations like uv__work_done() can determine whether the =
queue
>> +-     * of events in the callback were waiting when poll was called.
>> +-     */
>> +-    lfields->current_timeout =3D timeout;
>> +-
>> +     if (pset !=3D NULL)
>> +       if (pthread_sigmask(SIG_BLOCK, pset, NULL))
>> +         abort();
>> +diff --git a/deps/uv/src/uv-common.h b/deps/uv/src/uv-common.h
>> +index decde5362c8..2720121addc 100644
>> +--- a/deps/uv/src/uv-common.h
>> ++++ b/deps/uv/src/uv-common.h
>> +@@ -396,37 +396,9 @@ struct uv__loop_metrics_s {
>> + void uv__metrics_update_idle_time(uv_loop_t* loop);
>> + void uv__metrics_set_provider_entry_time(uv_loop_t* loop);
>> +
>> +-#ifdef __linux__
>> +-struct uv__iou {
>> +-  uint32_t* sqhead;
>> +-  uint32_t* sqtail;
>> +-  uint32_t* sqarray;
>> +-  uint32_t sqmask;
>> +-  uint32_t* sqflags;
>> +-  uint32_t* cqhead;
>> +-  uint32_t* cqtail;
>> +-  uint32_t cqmask;
>> +-  void* sq;   /* pointer to munmap() on event loop teardown */
>> +-  void* cqe;  /* pointer to array of struct uv__io_uring_cqe */
>> +-  void* sqe;  /* pointer to array of struct uv__io_uring_sqe */
>> +-  size_t sqlen;
>> +-  size_t cqlen;
>> +-  size_t maxlen;
>> +-  size_t sqelen;
>> +-  int ringfd;
>> +-  uint32_t in_flight;
>> +-};
>> +-#endif  /* __linux__ */
>> +-
>> + struct uv__loop_internal_fields_s {
>> +   unsigned int flags;
>> +   uv__loop_metrics_t loop_metrics;
>> +-  int current_timeout;
>> +-#ifdef __linux__
>> +-  struct uv__iou ctl;
>> +-  struct uv__iou iou;
>> +-  void* inv;  /* used by uv__platform_invalidate_fd() */
>> +-#endif  /* __linux__ */
>> + };
>> +
>> + #endif /* UV_COMMON_H_ */
>> +diff --git a/deps/uv/src/win/core.c b/deps/uv/src/win/core.c
>> +index 9a3be58849a..e4041ec86a6 100644
>> +--- a/deps/uv/src/win/core.c
>> ++++ b/deps/uv/src/win/core.c
>> +@@ -424,7 +424,6 @@ int uv_backend_timeout(const uv_loop_t* loop) {
>> +
>> +
>> + static void uv__poll_wine(uv_loop_t* loop, DWORD timeout) {
>> +-  uv__loop_internal_fields_t* lfields;
>> +   DWORD bytes;
>> +   ULONG_PTR key;
>> +   OVERLAPPED* overlapped;
>> +@@ -434,10 +433,9 @@ static void uv__poll_wine(uv_loop_t* loop, DWORD t=
imeout) {
>> +   uint64_t user_timeout;
>> +   int reset_timeout;
>> +
>> +-  lfields =3D uv__get_internal_fields(loop);
>> +   timeout_time =3D loop->time + timeout;
>> +
>> +-  if (lfields->flags & UV_METRICS_IDLE_TIME) {
>> ++  if (uv__get_internal_fields(loop)->flags & UV_METRICS_IDLE_TIME) {
>> +     reset_timeout =3D 1;
>> +     user_timeout =3D timeout;
>> +     timeout =3D 0;
>> +@@ -452,12 +450,6 @@ static void uv__poll_wine(uv_loop_t* loop, DWORD t=
imeout) {
>> +     if (timeout !=3D 0)
>> +       uv__metrics_set_provider_entry_time(loop);
>> +
>> +-    /* Store the current timeout in a location that's globally accessi=
ble so
>> +-     * other locations like uv__work_done() can determine whether the =
queue
>> +-     * of events in the callback were waiting when poll was called.
>> +-     */
>> +-    lfields->current_timeout =3D timeout;
>> +-
>> +     GetQueuedCompletionStatus(loop->iocp,
>> +                               &bytes,
>> +                               &key,
>> +@@ -515,7 +507,6 @@ static void uv__poll_wine(uv_loop_t* loop, DWORD ti=
meout) {
>> +
>> +
>> + static void uv__poll(uv_loop_t* loop, DWORD timeout) {
>> +-  uv__loop_internal_fields_t* lfields;
>> +   BOOL success;
>> +   uv_req_t* req;
>> +   OVERLAPPED_ENTRY overlappeds[128];
>> +@@ -527,10 +518,9 @@ static void uv__poll(uv_loop_t* loop, DWORD timeou=
t) {
>> +   uint64_t actual_timeout;
>> +   int reset_timeout;
>> +
>> +-  lfields =3D uv__get_internal_fields(loop);
>> +   timeout_time =3D loop->time + timeout;
>> +
>> +-  if (lfields->flags & UV_METRICS_IDLE_TIME) {
>> ++  if (uv__get_internal_fields(loop)->flags & UV_METRICS_IDLE_TIME) {
>> +     reset_timeout =3D 1;
>> +     user_timeout =3D timeout;
>> +     timeout =3D 0;
>> +@@ -547,12 +537,6 @@ static void uv__poll(uv_loop_t* loop, DWORD timeou=
t) {
>> +     if (timeout !=3D 0)
>> +       uv__metrics_set_provider_entry_time(loop);
>> +
>> +-    /* Store the current timeout in a location that's globally accessi=
ble so
>> +-     * other locations like uv__work_done() can determine whether the =
queue
>> +-     * of events in the callback were waiting when poll was called.
>> +-     */
>> +-    lfields->current_timeout =3D timeout;
>> +-
>> +     success =3D pGetQueuedCompletionStatusEx(loop->iocp,
>> +                                            overlappeds,
>> +                                            ARRAY_SIZE(overlappeds),
>> diff --git a/recipes-devtools/nodejs/nodejs-20.8.1/0004-v8-don-t-overrid=
e-ARM-CFLAGS.patch b/recipes-devtools/nodejs/nodejs-20.8.1/0004-v8-don-t-ov=
erride-ARM-CFLAGS.patch
>> new file mode 100644
>> index 0000000..97ed972
>> --- /dev/null
>> +++ b/recipes-devtools/nodejs/nodejs-20.8.1/0004-v8-don-t-override-ARM-C=
FLAGS.patch
>> @@ -0,0 +1,102 @@
>> +From 47ee5cc5501289205d3e8e9f27ea9daf18cebac1 Mon Sep 17 00:00:00 2001
>> +From: =3D?UTF-8?q?Andr=3DC3=3DA9=3D20Draszik?=3D <git@andred.net>
>> +Date: Sat, 9 Nov 2019 14:45:30 +0000
>> +Subject: [PATCH] v8: don't override ARM CFLAGS
>> +MIME-Version: 1.0
>> +Content-Type: text/plain; charset=3DUTF-8
>> +Content-Transfer-Encoding: 8bit
>> +
>> +This overrides yocto-provided build flags with its own, e.g we get
>> +    arm-poky-linux-musleabi-g++  -mthumb -mfpu=3Dneon -mfloat-abi=3Dhar=
d -mcpu=3Dcortex-a7 \
>> +                                 ... \
>> +                                  -march=3Darmv7-a -mfpu=3Dneon -mfloat=
-abi=3Dhard -marm
>> +
>> +Causing the latter to override the former, and compiler warnings:
>> +    cc1plus: warning: switch '-mcpu=3Dcortex-a7' conflicts with '-march=
=3Darmv7-a' switch
>> +
>> +Patch this out, so that yocto-provided flags take precedence.
>> +Note that in reality the same should probably be done for all the other
>> +supported architectures, too.
>> +
>> +Note that this also switches to Thumb(2) mode (in my case). No obvious
>> +problems have been noted during compilation or runtime.
>> +
>> +Upstream-Status: Inappropriate [oe-specific]
>> +Signed-off-by: Andr=C3=A9 Draszik <git@andred.net>
>> +---
>> + tools/v8_gypfiles/toolchain.gypi | 52 ++------------------------------
>> + 1 file changed, 2 insertions(+), 50 deletions(-)
>> +
>> +diff --git a/tools/v8_gypfiles/toolchain.gypi b/tools/v8_gypfiles/toolc=
hain.gypi
>> +index 264b3e478e..0b41848145 100644
>> +--- a/tools/v8_gypfiles/toolchain.gypi
>> ++++ b/tools/v8_gypfiles/toolchain.gypi
>> +@@ -211,31 +211,7 @@
>> +         'target_conditions': [
>> +           ['_toolset=3D=3D"host"', {
>> +             'conditions': [
>> +-              ['v8_target_arch=3D=3Dhost_arch', {
>> +-                # Host built with an Arm CXX compiler.
>> +-                'conditions': [
>> +-                  [ 'arm_version=3D=3D7', {
>> +-                    'cflags': ['-march=3Darmv7-a',],
>> +-                  }],
>> +-                  [ 'arm_version=3D=3D7 or arm_version=3D=3D"default"'=
, {
>> +-                    'conditions': [
>> +-                      [ 'arm_fpu!=3D"default"', {
>> +-                        'cflags': ['-mfpu=3D<(arm_fpu)',],
>> +-                      }],
>> +-                    ],
>> +-                  }],
>> +-                  [ 'arm_float_abi!=3D"default"', {
>> +-                    'cflags': ['-mfloat-abi=3D<(arm_float_abi)',],
>> +-                  }],
>> +-                  [ 'arm_thumb=3D=3D1', {
>> +-                    'cflags': ['-mthumb',],
>> +-                  }],
>> +-                  [ 'arm_thumb=3D=3D0', {
>> +-                    'cflags': ['-marm',],
>> +-                  }],
>> +-                ],
>> +-              }, {
>> +-                # 'v8_target_arch!=3Dhost_arch'
>> ++              ['v8_target_arch!=3Dhost_arch', {
>> +                 # Host not built with an Arm CXX compiler (simulator b=
uild).
>> +                 'conditions': [
>> +                   [ 'arm_float_abi=3D=3D"hard"', {
>> +@@ -254,31 +230,7 @@
>> +           }],  # _toolset=3D=3D"host"
>> +           ['_toolset=3D=3D"target"', {
>> +             'conditions': [
>> +-              ['v8_target_arch=3D=3Dtarget_arch', {
>> +-                # Target built with an Arm CXX compiler.
>> +-                'conditions': [
>> +-                  [ 'arm_version=3D=3D7', {
>> +-                    'cflags': ['-march=3Darmv7-a',],
>> +-                  }],
>> +-                  [ 'arm_version=3D=3D7 or arm_version=3D=3D"default"'=
, {
>> +-                    'conditions': [
>> +-                      [ 'arm_fpu!=3D"default"', {
>> +-                        'cflags': ['-mfpu=3D<(arm_fpu)',],
>> +-                      }],
>> +-                    ],
>> +-                  }],
>> +-                  [ 'arm_float_abi!=3D"default"', {
>> +-                    'cflags': ['-mfloat-abi=3D<(arm_float_abi)',],
>> +-                  }],
>> +-                  [ 'arm_thumb=3D=3D1', {
>> +-                    'cflags': ['-mthumb',],
>> +-                  }],
>> +-                  [ 'arm_thumb=3D=3D0', {
>> +-                    'cflags': ['-marm',],
>> +-                  }],
>> +-                ],
>> +-              }, {
>> +-                # 'v8_target_arch!=3Dtarget_arch'
>> ++              ['v8_target_arch!=3Dtarget_arch', {
>> +                 # Target not built with an Arm CXX compiler (simulator=
 build).
>> +                 'conditions': [
>> +                   [ 'arm_float_abi=3D=3D"hard"', {
>> +--
>> +2.20.1
>> +
>> diff --git a/recipes-devtools/nodejs/nodejs-20.8.1/libatomic.patch b/rec=
ipes-devtools/nodejs/nodejs-20.8.1/libatomic.patch
>> new file mode 100644
>> index 0000000..cb02373
>> --- /dev/null
>> +++ b/recipes-devtools/nodejs/nodejs-20.8.1/libatomic.patch
>> @@ -0,0 +1,21 @@
>> +Link mksnapshot with libatomic on x86
>> +
>> +Clang-12 on x86 emits atomic builtins
>> +
>> +Fixes
>> +| module-compiler.cc:(.text._ZN2v88internal4wasm12_GLOBAL__N_123Execute=
CompilationUnitsERKSt10shared_ptrINS2_22BackgroundCompileTokenEEPNS0_8Count=
ersEiNS2_19CompileBaselineOnlyE+0x558): un
>> +defined reference to `__atomic_load'
>> +
>> +Upstream-Status: Pending
>> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> +
>> +--- a/tools/v8_gypfiles/v8.gyp
>> ++++ b/tools/v8_gypfiles/v8.gyp
>> +@@ -1436,6 +1436,7 @@
>> +     {
>> +       'target_name': 'mksnapshot',
>> +       'type': 'executable',
>> ++      'libraries': [ '-latomic' ],
>> +       'dependencies': [
>> +         'v8_base_without_compiler',
>> +         'v8_compiler_for_mksnapshot',
>> diff --git a/recipes-devtools/nodejs/nodejs-20.8.1/run-ptest b/recipes-d=
evtools/nodejs/nodejs-20.8.1/run-ptest
>> new file mode 100755
>> index 0000000..e82f373
>> --- /dev/null
>> +++ b/recipes-devtools/nodejs/nodejs-20.8.1/run-ptest
>> @@ -0,0 +1,8 @@
>> +#!/bin/sh
>> +
>> +./cctest
>> +if [ $? =3D 0 ]; then
>> +  echo "PASS: nodejs"
>> +else
>> +  echo "FAIL: nodejs"
>> +fi
>> diff --git a/recipes-devtools/nodejs/nodejs-20.8.1/system-c-ares.patch b=
/recipes-devtools/nodejs/nodejs-20.8.1/system-c-ares.patch
>> new file mode 100644
>> index 0000000..141889a
>> --- /dev/null
>> +++ b/recipes-devtools/nodejs/nodejs-20.8.1/system-c-ares.patch
>> @@ -0,0 +1,24 @@
>> +keep nodejs compatible with c-ares 1.17.1
>> +
>> +Upstream-Status: Inappropriate [c-ares specific]
>> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> +
>> +--- a/src/cares_wrap.h
>> ++++ b/src/cares_wrap.h
>> +@@ -22,7 +22,15 @@
>> + # include <netdb.h>
>> + #endif  // __POSIX__
>> +
>> +-# include <ares_nameser.h>
>> ++#if defined(__ANDROID__) || \
>> ++    defined(__MINGW32__) || \
>> ++    defined(__OpenBSD__) || \
>> ++    defined(_MSC_VER)
>> ++
>> ++# include <nameser.h>
>> ++#else
>> ++# include <arpa/nameser.h>
>> ++#endif
>> +
>> + namespace node {
>> + namespace cares_wrap {
>> diff --git a/recipes-devtools/nodejs/nodejs-oe-cache-18.17/oe-npm-cache =
b/recipes-devtools/nodejs/nodejs-oe-cache-18.17/oe-npm-cache
>> new file mode 100755
>> index 0000000..f596207
>> --- /dev/null
>> +++ b/recipes-devtools/nodejs/nodejs-oe-cache-18.17/oe-npm-cache
>> @@ -0,0 +1,77 @@
>> +#!/usr/bin/env node
>> +
>> +/// Usage: oe-npm-cache <cache-dir> <type> <key> <file-name>
>> +///    <type> ... meta - metainformation about package
>> +///               tgz  - tarball
>> +
>> +const process =3D require("node:process");
>> +
>> +module.paths.unshift("@@libdir@@/node_modules/npm/node_modules");
>> +
>> +const cacache =3D require('cacache')
>> +const fs =3D require('fs')
>> +
>> +// argv[0] is 'node', argv[1] is this script
>> +const cache_dir =3D process.argv[2]
>> +const type      =3D process.argv[3]
>> +const key       =3D process.argv[4]
>> +const file      =3D process.argv[5]
>> +
>> +const data =3D fs.readFileSync(file)
>> +
>> +// metadata content is highly nodejs dependent; when cache entries are =
not
>> +// found, place debug statements in 'make-fetch-happen/lib/cache/policy=
.js'
>> +// (CachePolicy::satisfies())
>> +const xlate =3D {
>> +    'meta': {
>> +       'key_prefix': 'make-fetch-happen:request-cache:',
>> +       'metadata': function() {
>> +           return {
>> +               time: Date.now(),
>> +               url:  key,
>> +               reqHeaders: {
>> +                   'accept': 'application/vnd.npm.install-v1+json; q=3D=
1.0, application/json; q=3D0.8, */*',
>> +               },
>> +               resHeaders: {
>> +                   "content-type": "application/json",
>> +                   "status": 200,
>> +               },
>> +               options: {
>> +                   compress: true,
>> +               }
>> +           };
>> +       },
>> +    },
>> +
>> +    'tgz': {
>> +       'key_prefix': 'make-fetch-happen:request-cache:',
>> +       'metadata': function() {
>> +           return {
>> +               time: Date.now(),
>> +               url:  key,
>> +               reqHeaders: {
>> +                   'accept': '*/*',
>> +               },
>> +               resHeaders: {
>> +                   "content-type": "application/octet-stream",
>> +                   "status": 200,
>> +               },
>> +               options: {
>> +                   compress: true,
>> +               },
>> +           };
>> +       },
>> +    },
>> +};
>> +
>> +const info =3D xlate[type];
>> +let opts =3D {}
>> +
>> +if (info.metadata) {
>> +    opts['metadata'] =3D info.metadata();
>> +}
>> +
>> +cacache.put(cache_dir, info.key_prefix + key, data, opts)
>> +    .then(integrity =3D> {
>> +       console.log(`Saved content of ${key} (${file}).`);
>> +})
>> diff --git a/recipes-devtools/nodejs/nodejs-oe-cache-20.5/oe-npm-cache b=
/recipes-devtools/nodejs/nodejs-oe-cache-20.5/oe-npm-cache
>> new file mode 100755
>> index 0000000..f596207
>> --- /dev/null
>> +++ b/recipes-devtools/nodejs/nodejs-oe-cache-20.5/oe-npm-cache
>> @@ -0,0 +1,77 @@
>> +#!/usr/bin/env node
>> +
>> +/// Usage: oe-npm-cache <cache-dir> <type> <key> <file-name>
>> +///    <type> ... meta - metainformation about package
>> +///               tgz  - tarball
>> +
>> +const process =3D require("node:process");
>> +
>> +module.paths.unshift("@@libdir@@/node_modules/npm/node_modules");
>> +
>> +const cacache =3D require('cacache')
>> +const fs =3D require('fs')
>> +
>> +// argv[0] is 'node', argv[1] is this script
>> +const cache_dir =3D process.argv[2]
>> +const type      =3D process.argv[3]
>> +const key       =3D process.argv[4]
>> +const file      =3D process.argv[5]
>> +
>> +const data =3D fs.readFileSync(file)
>> +
>> +// metadata content is highly nodejs dependent; when cache entries are =
not
>> +// found, place debug statements in 'make-fetch-happen/lib/cache/policy=
.js'
>> +// (CachePolicy::satisfies())
>> +const xlate =3D {
>> +    'meta': {
>> +       'key_prefix': 'make-fetch-happen:request-cache:',
>> +       'metadata': function() {
>> +           return {
>> +               time: Date.now(),
>> +               url:  key,
>> +               reqHeaders: {
>> +                   'accept': 'application/vnd.npm.install-v1+json; q=3D=
1.0, application/json; q=3D0.8, */*',
>> +               },
>> +               resHeaders: {
>> +                   "content-type": "application/json",
>> +                   "status": 200,
>> +               },
>> +               options: {
>> +                   compress: true,
>> +               }
>> +           };
>> +       },
>> +    },
>> +
>> +    'tgz': {
>> +       'key_prefix': 'make-fetch-happen:request-cache:',
>> +       'metadata': function() {
>> +           return {
>> +               time: Date.now(),
>> +               url:  key,
>> +               reqHeaders: {
>> +                   'accept': '*/*',
>> +               },
>> +               resHeaders: {
>> +                   "content-type": "application/octet-stream",
>> +                   "status": 200,
>> +               },
>> +               options: {
>> +                   compress: true,
>> +               },
>> +           };
>> +       },
>> +    },
>> +};
>> +
>> +const info =3D xlate[type];
>> +let opts =3D {}
>> +
>> +if (info.metadata) {
>> +    opts['metadata'] =3D info.metadata();
>> +}
>> +
>> +cacache.put(cache_dir, info.key_prefix + key, data, opts)
>> +    .then(integrity =3D> {
>> +       console.log(`Saved content of ${key} (${file}).`);
>> +})
>> diff --git a/recipes-devtools/nodejs/nodejs-oe-cache-native_18.17.bb b/r=
ecipes-devtools/nodejs/nodejs-oe-cache-native_18.17.bb
>> new file mode 100644
>> index 0000000..a61dd50
>> --- /dev/null
>> +++ b/recipes-devtools/nodejs/nodejs-oe-cache-native_18.17.bb
>> @@ -0,0 +1,21 @@
>> +DESCRIPTION =3D "OE helper for manipulating npm cache"
>> +LICENSE =3D "Apache-2.0"
>> +LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/Apache-2.0;md5=3D89a=
ea4e17d99a7cacdbeed46a0096b10"
>> +
>> +SRC_URI =3D "\
>> +    file://oe-npm-cache \
>> +"
>> +
>> +inherit native
>> +
>> +B =3D "${WORKDIR}/build"
>> +
>> +do_configure() {
>> +    sed -e 's!@@libdir@@!${libdir}!g' < '${WORKDIR}/oe-npm-cache' > '${=
B}/oe-npm-cache'
>> +}
>> +
>> +do_install() {
>> +    install -D -p -m 0755 ${B}/oe-npm-cache ${D}${bindir}/oe-npm-cache
>> +}
>> +
>> +RDEPENDS:${PN} =3D "nodejs-native"
>> diff --git a/recipes-devtools/nodejs/nodejs-oe-cache-native_20.5.bb b/re=
cipes-devtools/nodejs/nodejs-oe-cache-native_20.5.bb
>> new file mode 100644
>> index 0000000..a61dd50
>> --- /dev/null
>> +++ b/recipes-devtools/nodejs/nodejs-oe-cache-native_20.5.bb
>> @@ -0,0 +1,21 @@
>> +DESCRIPTION =3D "OE helper for manipulating npm cache"
>> +LICENSE =3D "Apache-2.0"
>> +LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/Apache-2.0;md5=3D89a=
ea4e17d99a7cacdbeed46a0096b10"
>> +
>> +SRC_URI =3D "\
>> +    file://oe-npm-cache \
>> +"
>> +
>> +inherit native
>> +
>> +B =3D "${WORKDIR}/build"
>> +
>> +do_configure() {
>> +    sed -e 's!@@libdir@@!${libdir}!g' < '${WORKDIR}/oe-npm-cache' > '${=
B}/oe-npm-cache'
>> +}
>> +
>> +do_install() {
>> +    install -D -p -m 0755 ${B}/oe-npm-cache ${D}${bindir}/oe-npm-cache
>> +}
>> +
>> +RDEPENDS:${PN} =3D "nodejs-native"
>> diff --git a/recipes-devtools/nodejs/nodejs_18.17.1.bb b/recipes-devtool=
s/nodejs/nodejs_18.17.1.bb
>> new file mode 100644
>> index 0000000..402cf56
>> --- /dev/null
>> +++ b/recipes-devtools/nodejs/nodejs_18.17.1.bb
>> @@ -0,0 +1,185 @@
>> +DESCRIPTION =3D "nodeJS Evented I/O for V8 JavaScript"
>> +HOMEPAGE =3D "http://nodejs.org"
>> +LICENSE =3D "MIT & ISC & BSD-2-Clause & BSD-3-Clause & Artistic-2.0 & A=
pache-2.0"
>> +LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3Dbc1f9ebe76be76f163e3b675303a=
d9cd"
>> +
>> +CVE_PRODUCT =3D "nodejs node.js"
>> +
>> +DEPENDS =3D "openssl file-replacement-native"
>> +DEPENDS:append:class-target =3D " qemu-native"
>> +DEPENDS:append:class-native =3D " c-ares-native"
>> +
>> +inherit pkgconfig python3native qemu ptest
>> +
>> +COMPATIBLE_MACHINE:armv4 =3D "(!.*armv4).*"
>> +COMPATIBLE_MACHINE:armv5 =3D "(!.*armv5).*"
>> +COMPATIBLE_MACHINE:mips64 =3D "(!.*mips64).*"
>> +
>> +COMPATIBLE_HOST:riscv64 =3D "null"
>> +COMPATIBLE_HOST:riscv32 =3D "null"
>> +COMPATIBLE_HOST:powerpc =3D "null"
>> +
>> +SRC_URI =3D "http://nodejs.org/dist/v${PV}/node-v${PV}.tar.xz \
>> +           file://0001-Disable-running-gyp-files-for-bundled-deps.patch=
 \
>> +           file://0004-v8-don-t-override-ARM-CFLAGS.patch \
>> +           file://big-endian.patch \
>> +           file://mips-less-memory.patch \
>> +           file://system-c-ares.patch \
>> +           file://0001-liftoff-Correct-function-signatures.patch \
>> +           file://0001-mips-Use-32bit-cast-for-operand-on-mips32.patch =
\
>> +           file://run-ptest \
>> +           "
>> +
>> +SRC_URI:append:class-target =3D " \
>> +           file://0001-Using-native-binaries.patch \
>> +           "
>> +SRC_URI:append:toolchain-clang:x86 =3D " \
>> +           file://libatomic.patch \
>> +           "
>> +SRC_URI:append:toolchain-clang:powerpc64le =3D " \
>> +           file://0001-ppc64-Do-not-use-mminimal-toc-with-clang.patch \
>> +           "
>> +SRC_URI[sha256sum] =3D "f215cf03d0f00f07ac0b674c6819f804c1542e16f152da0=
4980022aeccf5e65a"
>> +
>> +S =3D "${WORKDIR}/node-v${PV}"
>> +
>> +# v8 errors out if you have set CCACHE
>> +CCACHE =3D ""
>> +
>> +def map_nodejs_arch(a, d):
>> +    import re
>> +
>> +    if   re.match('i.86$', a): return 'ia32'
>> +    elif re.match('x86_64$', a): return 'x64'
>> +    elif re.match('aarch64$', a): return 'arm64'
>> +    elif re.match('(powerpc64|powerpc64le|ppc64le)$', a): return 'ppc64=
'
>> +    elif re.match('powerpc$', a): return 'ppc'
>> +    return a
>> +
>> +ARCHFLAGS:arm =3D "${@bb.utils.contains('TUNE_FEATURES', 'callconventio=
n-hard', '--with-arm-float-abi=3Dhard', '--with-arm-float-abi=3Dsoftfp', d)=
} \
>> +                 ${@bb.utils.contains('TUNE_FEATURES', 'neon', '--with-=
arm-fpu=3Dneon', \
>> +                    bb.utils.contains('TUNE_FEATURES', 'vfpv3d16', '--w=
ith-arm-fpu=3Dvfpv3-d16', \
>> +                    bb.utils.contains('TUNE_FEATURES', 'vfpv3', '--with=
-arm-fpu=3Dvfpv3', \
>> +                    '--with-arm-fpu=3Dvfp', d), d), d)}"
>> +ARCHFLAGS:append:mips =3D " --v8-lite-mode"
>> +ARCHFLAGS:append:mipsel =3D " --v8-lite-mode"
>> +ARCHFLAGS ?=3D ""
>> +
>> +PACKAGECONFIG ??=3D "ares brotli icu zlib"
>> +
>> +PACKAGECONFIG[ares] =3D "--shared-cares,,c-ares"
>> +PACKAGECONFIG[brotli] =3D "--shared-brotli,,brotli"
>> +PACKAGECONFIG[icu] =3D "--with-intl=3Dsystem-icu,--without-intl,icu"
>> +PACKAGECONFIG[libuv] =3D "--shared-libuv,,libuv"
>> +PACKAGECONFIG[nghttp2] =3D "--shared-nghttp2,,nghttp2"
>> +PACKAGECONFIG[shared] =3D "--shared"
>> +PACKAGECONFIG[zlib] =3D "--shared-zlib,,zlib"
>> +
>> +# We don't want to cross-compile during target compile,
>> +# and we need to use the right flags during host compile,
>> +# too.
>> +EXTRA_OEMAKE =3D "\
>> +    CC.host=3D'${CC}' \
>> +    CFLAGS.host=3D'${CPPFLAGS} ${CFLAGS}' \
>> +    CXX.host=3D'${CXX}' \
>> +    CXXFLAGS.host=3D'${CPPFLAGS} ${CXXFLAGS}' \
>> +    LDFLAGS.host=3D'${LDFLAGS}' \
>> +    AR.host=3D'${AR}' \
>> +    \
>> +    builddir_name=3D./ \
>> +"
>> +
>> +EXTRANATIVEPATH +=3D "file-native"
>> +
>> +python prune_sources() {
>> +    import shutil
>> +
>> +    shutil.rmtree(d.getVar('S') + '/deps/openssl')
>> +    if 'ares' in d.getVar('PACKAGECONFIG'):
>> +        shutil.rmtree(d.getVar('S') + '/deps/cares')
>> +    if 'brotli' in d.getVar('PACKAGECONFIG'):
>> +        shutil.rmtree(d.getVar('S') + '/deps/brotli')
>> +    if 'libuv' in d.getVar('PACKAGECONFIG'):
>> +        shutil.rmtree(d.getVar('S') + '/deps/uv')
>> +    if 'nghttp2' in d.getVar('PACKAGECONFIG'):
>> +        shutil.rmtree(d.getVar('S') + '/deps/nghttp2')
>> +    if 'zlib' in d.getVar('PACKAGECONFIG'):
>> +        shutil.rmtree(d.getVar('S') + '/deps/zlib')
>> +}
>> +do_unpack[postfuncs] +=3D "prune_sources"
>> +
>> +# V8's JIT infrastructure requires binaries such as mksnapshot and
>> +# mkpeephole to be run in the host during the build. However, these
>> +# binaries must have the same bit-width as the target (e.g. a x86_64
>> +# host targeting ARMv6 needs to produce a 32-bit binary). Instead of
>> +# depending on a third Yocto toolchain, we just build those binaries
>> +# for the target and run them on the host with QEMU.
>> +python do_create_v8_qemu_wrapper () {
>> +    """Creates a small wrapper that invokes QEMU to run some target V8 =
binaries
>> +    on the host."""
>> +    qemu_libdirs =3D [d.expand('${STAGING_DIR_HOST}${libdir}'),
>> +                    d.expand('${STAGING_DIR_HOST}${base_libdir}')]
>> +    qemu_cmd =3D qemu_wrapper_cmdline(d, d.getVar('STAGING_DIR_HOST'),
>> +                                    qemu_libdirs)
>> +    wrapper_path =3D d.expand('${B}/v8-qemu-wrapper.sh')
>> +    with open(wrapper_path, 'w') as wrapper_file:
>> +        wrapper_file.write("""#!/bin/sh
>> +
>> +# This file has been generated automatically.
>> +# It invokes QEMU to run binaries built for the target in the host duri=
ng the
>> +# build process.
>> +
>> +%s "$@"
>> +""" % qemu_cmd)
>> +    os.chmod(wrapper_path, 0o755)
>> +}
>> +
>> +do_create_v8_qemu_wrapper[dirs] =3D "${B}"
>> +addtask create_v8_qemu_wrapper after do_configure before do_compile
>> +
>> +LDFLAGS:append:x86 =3D " -latomic"
>> +
>> +CROSS_FLAGS =3D "--cross-compiling"
>> +CROSS_FLAGS:class-native =3D "--no-cross-compiling"
>> +
>> +# Node is way too cool to use proper autotools, so we install two wrapp=
ers to forcefully inject proper arch cflags to workaround gypi
>> +do_configure () {
>> +    GYP_DEFINES=3D"${GYP_DEFINES}" export GYP_DEFINES
>> +    # $TARGET_ARCH settings don't match --dest-cpu settings
>> +    python3 configure.py --verbose --prefix=3D${prefix} \
>> +               --shared-openssl \
>> +               --without-dtrace \
>> +               --without-etw \
>> +               --dest-cpu=3D"${@map_nodejs_arch(d.getVar('TARGET_ARCH')=
, d)}" \
>> +               --dest-os=3Dlinux \
>> +               --libdir=3D${baselib} \
>> +               ${CROSS_FLAGS} \
>> +               ${ARCHFLAGS} \
>> +               ${PACKAGECONFIG_CONFARGS}
>> +}
>> +
>> +do_compile () {
>> +    install -D ${RECIPE_SYSROOT_NATIVE}/etc/ssl/openssl.cnf ${B}/deps/o=
penssl/nodejs-openssl.cnf
>> +    install -D ${B}/v8-qemu-wrapper.sh ${B}/out/Release/v8-qemu-wrapper=
.sh
>> +    oe_runmake BUILDTYPE=3DRelease
>> +}
>> +
>> +do_install () {
>> +    oe_runmake install DESTDIR=3D${D}
>> +}
>> +
>> +do_install_ptest () {
>> +    cp -r  ${B}/out/Release/cctest ${D}${PTEST_PATH}/
>> +    cp -r ${B}/test ${D}${PTEST_PATH}
>> +    chown -R root:root ${D}${PTEST_PATH}
>> +}
>> +
>> +PACKAGES =3D+ "${PN}-npm"
>> +FILES:${PN}-npm =3D "${nonarch_libdir}/node_modules ${bindir}/npm ${bin=
dir}/npx ${bindir}/corepack"
>> +RDEPENDS:${PN}-npm =3D "bash python3-core python3-shell python3-datetim=
e \
>> +    python3-misc python3-multiprocessing"
>> +
>> +PACKAGES =3D+ "${PN}-systemtap"
>> +FILES:${PN}-systemtap =3D "${datadir}/systemtap"
>> +
>> +BBCLASSEXTEND =3D "native"
>> diff --git a/recipes-devtools/nodejs/nodejs_20.8.1.bb b/recipes-devtools=
/nodejs/nodejs_20.8.1.bb
>> new file mode 100644
>> index 0000000..65f4eb3
>> --- /dev/null
>> +++ b/recipes-devtools/nodejs/nodejs_20.8.1.bb
>> @@ -0,0 +1,182 @@
>> +DESCRIPTION =3D "nodeJS Evented I/O for V8 JavaScript"
>> +HOMEPAGE =3D "http://nodejs.org"
>> +LICENSE =3D "MIT & ISC & BSD-2-Clause & BSD-3-Clause & Artistic-2.0 & A=
pache-2.0"
>> +LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D162595a4a2f3453a0534e60b0afe=
4e7b"
>> +
>> +CVE_PRODUCT =3D "nodejs node.js"
>> +
>> +DEPENDS =3D "openssl file-replacement-native"
>> +DEPENDS:append:class-target =3D " qemu-native"
>> +DEPENDS:append:class-native =3D " c-ares-native"
>> +
>> +inherit pkgconfig python3native qemu ptest
>> +
>> +COMPATIBLE_MACHINE:armv4 =3D "(!.*armv4).*"
>> +COMPATIBLE_MACHINE:armv5 =3D "(!.*armv5).*"
>> +COMPATIBLE_MACHINE:mips64 =3D "(!.*mips64).*"
>> +
>> +COMPATIBLE_HOST:riscv64 =3D "null"
>> +COMPATIBLE_HOST:riscv32 =3D "null"
>> +COMPATIBLE_HOST:powerpc =3D "null"
>> +
>> +SRC_URI =3D "http://nodejs.org/dist/v${PV}/node-v${PV}.tar.xz \
>> +           file://0001-Disable-running-gyp-files-for-bundled-deps.patch=
 \
>> +           file://0004-v8-don-t-override-ARM-CFLAGS.patch \
>> +           file://system-c-ares.patch \
>> +           file://0001-liftoff-Correct-function-signatures.patch \
>> +           file://0001-Revert-io_uring-changes-from-libuv-1.46.0.patch =
\
>> +           file://0002-Revert-io_uring-changes-from-libuv-1.45.0.patch =
\
>> +           file://run-ptest \
>> +           "
>> +
>> +SRC_URI:append:class-target =3D " \
>> +           file://0001-Using-native-binaries.patch \
>> +           "
>> +SRC_URI:append:toolchain-clang:x86 =3D " \
>> +           file://libatomic.patch \
>> +           "
>> +SRC_URI:append:toolchain-clang:powerpc64le =3D " \
>> +           file://0001-ppc64-Do-not-use-mminimal-toc-with-clang.patch \
>> +           "
>> +SRC_URI[sha256sum] =3D "f799c66f6a6386bb8ac2c75a378f740c455e97f1fe96439=
3dd39c9f9f6efbc70"
>> +
>> +S =3D "${WORKDIR}/node-v${PV}"
>> +
>> +# v8 errors out if you have set CCACHE
>> +CCACHE =3D ""
>> +
>> +def map_nodejs_arch(a, d):
>> +    import re
>> +
>> +    if   re.match('i.86$', a): return 'ia32'
>> +    elif re.match('x86_64$', a): return 'x64'
>> +    elif re.match('aarch64$', a): return 'arm64'
>> +    elif re.match('(powerpc64|powerpc64le|ppc64le)$', a): return 'ppc64=
'
>> +    elif re.match('powerpc$', a): return 'ppc'
>> +    return a
>> +
>> +ARCHFLAGS:arm =3D "${@bb.utils.contains('TUNE_FEATURES', 'callconventio=
n-hard', '--with-arm-float-abi=3Dhard', '--with-arm-float-abi=3Dsoftfp', d)=
} \
>> +                 ${@bb.utils.contains('TUNE_FEATURES', 'neon', '--with-=
arm-fpu=3Dneon', \
>> +                    bb.utils.contains('TUNE_FEATURES', 'vfpv3d16', '--w=
ith-arm-fpu=3Dvfpv3-d16', \
>> +                    bb.utils.contains('TUNE_FEATURES', 'vfpv3', '--with=
-arm-fpu=3Dvfpv3', \
>> +                    '--with-arm-fpu=3Dvfp', d), d), d)}"
>> +ARCHFLAGS:append:mips =3D " --v8-lite-mode"
>> +ARCHFLAGS:append:mipsel =3D " --v8-lite-mode"
>> +ARCHFLAGS ?=3D ""
>> +
>> +PACKAGECONFIG ??=3D "ares brotli icu zlib"
>> +
>> +PACKAGECONFIG[ares] =3D "--shared-cares,,c-ares"
>> +PACKAGECONFIG[brotli] =3D "--shared-brotli,,brotli"
>> +PACKAGECONFIG[icu] =3D "--with-intl=3Dsystem-icu,--without-intl,icu"
>> +PACKAGECONFIG[libuv] =3D "--shared-libuv,,libuv"
>> +PACKAGECONFIG[nghttp2] =3D "--shared-nghttp2,,nghttp2"
>> +PACKAGECONFIG[shared] =3D "--shared"
>> +PACKAGECONFIG[zlib] =3D "--shared-zlib,,zlib"
>> +
>> +# We don't want to cross-compile during target compile,
>> +# and we need to use the right flags during host compile,
>> +# too.
>> +EXTRA_OEMAKE =3D "\
>> +    CC.host=3D'${CC} -pie -fPIE' \
>> +    CFLAGS.host=3D'${CPPFLAGS} ${CFLAGS}' \
>> +    CXX.host=3D'${CXX} -pie -fPIE' \
>> +    CXXFLAGS.host=3D'${CPPFLAGS} ${CXXFLAGS}' \
>> +    LDFLAGS.host=3D'${LDFLAGS}' \
>> +    AR.host=3D'${AR}' \
>> +    \
>> +    builddir_name=3D./ \
>> +"
>> +
>> +EXTRANATIVEPATH +=3D "file-native"
>> +
>> +python prune_sources() {
>> +    import shutil
>> +
>> +    shutil.rmtree(d.getVar('S') + '/deps/openssl')
>> +    if 'ares' in d.getVar('PACKAGECONFIG'):
>> +        shutil.rmtree(d.getVar('S') + '/deps/cares')
>> +    if 'brotli' in d.getVar('PACKAGECONFIG'):
>> +        shutil.rmtree(d.getVar('S') + '/deps/brotli')
>> +    if 'libuv' in d.getVar('PACKAGECONFIG'):
>> +        shutil.rmtree(d.getVar('S') + '/deps/uv')
>> +    if 'nghttp2' in d.getVar('PACKAGECONFIG'):
>> +        shutil.rmtree(d.getVar('S') + '/deps/nghttp2')
>> +    if 'zlib' in d.getVar('PACKAGECONFIG'):
>> +        shutil.rmtree(d.getVar('S') + '/deps/zlib')
>> +}
>> +do_unpack[postfuncs] +=3D "prune_sources"
>> +
>> +# V8's JIT infrastructure requires binaries such as mksnapshot and
>> +# mkpeephole to be run in the host during the build. However, these
>> +# binaries must have the same bit-width as the target (e.g. a x86_64
>> +# host targeting ARMv6 needs to produce a 32-bit binary). Instead of
>> +# depending on a third Yocto toolchain, we just build those binaries
>> +# for the target and run them on the host with QEMU.
>> +python do_create_v8_qemu_wrapper () {
>> +    """Creates a small wrapper that invokes QEMU to run some target V8 =
binaries
>> +    on the host."""
>> +    qemu_libdirs =3D [d.expand('${STAGING_DIR_HOST}${libdir}'),
>> +                    d.expand('${STAGING_DIR_HOST}${base_libdir}')]
>> +    qemu_cmd =3D qemu_wrapper_cmdline(d, d.getVar('STAGING_DIR_HOST'),
>> +                                    qemu_libdirs)
>> +    wrapper_path =3D d.expand('${B}/v8-qemu-wrapper.sh')
>> +    with open(wrapper_path, 'w') as wrapper_file:
>> +        wrapper_file.write("""#!/bin/sh
>> +
>> +# This file has been generated automatically.
>> +# It invokes QEMU to run binaries built for the target in the host duri=
ng the
>> +# build process.
>> +
>> +%s "$@"
>> +""" % qemu_cmd)
>> +    os.chmod(wrapper_path, 0o755)
>> +}
>> +
>> +do_create_v8_qemu_wrapper[dirs] =3D "${B}"
>> +addtask create_v8_qemu_wrapper after do_configure before do_compile
>> +
>> +LDFLAGS:append:x86 =3D " -latomic"
>> +
>> +CROSS_FLAGS =3D "--cross-compiling"
>> +CROSS_FLAGS:class-native =3D "--no-cross-compiling"
>> +
>> +# Node is way too cool to use proper autotools, so we install two wrapp=
ers to forcefully inject proper arch cflags to workaround gypi
>> +do_configure () {
>> +    GYP_DEFINES=3D"${GYP_DEFINES}" export GYP_DEFINES
>> +    # $TARGET_ARCH settings don't match --dest-cpu settings
>> +    python3 configure.py --verbose --prefix=3D${prefix} \
>> +               --shared-openssl \
>> +               --dest-cpu=3D"${@map_nodejs_arch(d.getVar('TARGET_ARCH')=
, d)}" \
>> +               --dest-os=3Dlinux \
>> +               --libdir=3D${baselib} \
>> +               ${CROSS_FLAGS} \
>> +               ${ARCHFLAGS} \
>> +               ${PACKAGECONFIG_CONFARGS}
>> +}
>> +
>> +do_compile () {
>> +    install -D ${RECIPE_SYSROOT_NATIVE}/etc/ssl/openssl.cnf ${B}/deps/o=
penssl/nodejs-openssl.cnf
>> +    install -D ${B}/v8-qemu-wrapper.sh ${B}/out/Release/v8-qemu-wrapper=
.sh
>> +    oe_runmake BUILDTYPE=3DRelease
>> +}
>> +
>> +do_install () {
>> +    oe_runmake install DESTDIR=3D${D}
>> +}
>> +
>> +do_install_ptest () {
>> +    cp -r  ${B}/out/Release/cctest ${D}${PTEST_PATH}/
>> +    cp -r ${B}/test ${D}${PTEST_PATH}
>> +    chown -R root:root ${D}${PTEST_PATH}
>> +}
>> +
>> +PACKAGES =3D+ "${PN}-npm"
>> +FILES:${PN}-npm =3D "${nonarch_libdir}/node_modules ${bindir}/npm ${bin=
dir}/npx ${bindir}/corepack"
>> +RDEPENDS:${PN}-npm =3D "bash python3-core python3-shell python3-datetim=
e \
>> +    python3-misc python3-multiprocessing"
>> +
>> +PACKAGES =3D+ "${PN}-systemtap"
>> +FILES:${PN}-systemtap =3D "${datadir}/systemtap"
>> +
>> +BBCLASSEXTEND =3D "native"
>> --
>> 2.34.1
>>
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#61792): https://lists.yoctoproject.org/g/yocto/messa=
ge/61792
>> Mute This Topic: https://lists.yoctoproject.org/mt/102976462/5052612
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [quaresma.jose=
@gmail.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>
>
>
> --
> Best regards,
>
> Jos=C3=A9 Quaresma

