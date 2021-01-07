Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.1038.1610045241483535540
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Jan 2021 10:47:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=J+8eqyTW;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: marek.belisko@gmail.com)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by mail.yoctoproject.org (Postfix) with ESMTPS id AFE5938C07CE
	for <yocto@yoctoproject.org>; Thu,  7 Jan 2021 18:47:20 +0000 (UTC)
Received: by mail-ed1-f45.google.com with SMTP id c7so8744701edv.6
        for <yocto@yoctoproject.org>; Thu, 07 Jan 2021 10:47:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=aKQoVkRAGejkoPdbaSXc1ZJ6VJAehS6Svqevrk5gZEc=;
        b=J+8eqyTWQVDxJOhsqi9V1inQmxfAH9PZwa5tucZd0rrcbFfMmy3kiiTdvjy3+n+dVM
         DR2IyrDrNHRkGlqSQdFzeV7vauzCH90GTbdH5LLmzJGiXuGES5G3tDhPnHpNWvht50ng
         rUxML7GryM5rU7eZBsFNMJ4Aps51iOZ9o/1SCQh/6/5pJrH2kYmKJaTgfEHz7k91EFa+
         cFxMXS9/Hd5akztEAv06lFSCimXJslvzQVh0Lx+8UJXzuMWlpQohsa113byqMwk87Jcd
         lOJOrEPX27/yxHacshHZ0PKUze+/KX13IqlKR4ydPtyrwdkdjJrpCFJpSacn4iX8xWgM
         Gzew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=aKQoVkRAGejkoPdbaSXc1ZJ6VJAehS6Svqevrk5gZEc=;
        b=BQ2exVSsmlZrGVWbM+iPQeB69iIX6HobRA523RBN1ZYRBfJS4/VZRL0zGuiCio+gia
         5RjGArH14/1hpH4r9pWjFgCeD9FXDKzQ0EzoTw5+i8EpQ19l3FTCBDTouxt1MTisCnJ9
         0MZ4uMgES3M2FmftoOCgFwNDjthMq+wMl5JX73pQVAQuy4M//SPgpqhctPmCRmMdBUxF
         fmOOO+zKCCA/pqnwQNxSxxMhEvuKn33KuFkiFNUnVJ4fEk8YE/jsS0Tc6pQkcZ0xaKOe
         cJ/L8F1IXCb1LZ2OMEEZ8EYz54rDZWxN/CMdf0mPCd992yZ8boj7FBdXbs6i4QsayYQO
         iBQQ==
X-Gm-Message-State: AOAM532EYoMJAzSAoZLI9CIc2YjnGMu17EQbQ5qi3YhVxOtTvrVT5KHE
	K0UC+F9jnLN6l9i6zgKCpCAL7ARkC4z0/RVF+RI=
X-Google-Smtp-Source: ABdhPJyHOCH72mOpbivUzCQn6jgYATy/7aAMV3UdkcWWu++GXOmpV7+NZSTJuhFJwXaNsp4U/yoDYR9kVm7Y0sEVvYk=
X-Received: by 2002:a50:bacb:: with SMTP id x69mr2642359ede.39.1610045239000;
 Thu, 07 Jan 2021 10:47:19 -0800 (PST)
MIME-Version: 1.0
References: <20201216130822.28476-1-hongxu.jia@windriver.com>
 <20201216130822.28476-9-hongxu.jia@windriver.com> <CAAfyv37zRgtJ_n2RZmWoHPOado1=LYw9cHVEVUZT1n497XB8yw@mail.gmail.com>
 <777b9a81-2d2e-7d86-bc0b-24370369135d@windriver.com>
In-Reply-To: <777b9a81-2d2e-7d86-bc0b-24370369135d@windriver.com>
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Thu, 7 Jan 2021 19:47:07 +0100
Message-ID: <CAAfyv37VGjVtn=SUan+X==VP5kbkMhWz96YP18X=x6-WkpP8GA@mail.gmail.com>
Subject: Re: [yocto] [meta-tensorflow][PATCH 8/25] tensorflow-estimator: 1.13 -> 2.4
To: Randy MacLeod <randy.macleod@windriver.com>
Cc: Hongxu Jia <hongxu.jia@windriver.com>, philip@balister.org, 
	akuster808 <akuster808@gmail.com>, yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

HI Randy,

On Thu, Jan 7, 2021 at 6:51 PM Randy MacLeod
<randy.macleod@windriver.com> wrote:
>
> On 2021-01-04 5:30 a.m., Marek Belisko wrote:
> > Hi Hongxu,
> >
> > On Wed, Dec 16, 2020 at 2:09 PM Hongxu Jia <hongxu.jia@windriver.com> =
wrote:
> >>
> >> Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
> >> ---
> >>   .../0001-customize-for-yocto.patch            | 28 ++++++++++++++++=
+++
> >>   .../tensorflow/tensorflow-estimator_1.13.bb   | 12 ++++++--
> >>   2 files changed, 37 insertions(+), 3 deletions(-)
> >>   create mode 100644 recipes-framework/tensorflow/tensorflow-estimato=
r/0001-customize-for-yocto.patch
> >>
> >> diff --git a/recipes-framework/tensorflow/tensorflow-estimator/0001-c=
ustomize-for-yocto.patch b/recipes-framework/tensorflow/tensorflow-estimato=
r/0001-customize-for-yocto.patch
> >> new file mode 100644
> >> index 0000000..e9b66d5
> >> --- /dev/null
> >> +++ b/recipes-framework/tensorflow/tensorflow-estimator/0001-customiz=
e-for-yocto.patch
> >> @@ -0,0 +1,28 @@
> >> +From a1bcf09a43fc44ad5e04c441ee45cc23d16cf7d2 Mon Sep 17 00:00:00 20=
01
> >> +From: Hongxu Jia <hongxu.jia@windriver.com>
> >> +Date: Wed, 9 Dec 2020 17:59:01 +0800
> >> +Subject: [PATCH] customize for yocto
> >> +
> >> +Upstream-Status: Inappropriate [oe specific]
> >> +
> >> +Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
> >> +---
> >> + tensorflow_estimator/tools/pip_package/build_pip_package.sh | 2 +-
> >> + 1 file changed, 1 insertion(+), 1 deletion(-)
> >> +
> >> +diff --git a/tensorflow_estimator/tools/pip_package/build_pip_packag=
e.sh b/tensorflow_estimator/tools/pip_package/build_pip_package.sh
> >> +index d4953a6..e08cd8a 100755
> >> +--- a/tensorflow_estimator/tools/pip_package/build_pip_package.sh
> >> ++++ b/tensorflow_estimator/tools/pip_package/build_pip_package.sh
> >> +@@ -38,7 +38,7 @@ function prepare_src() {
> >> +
> >> +   # Verifies all expected files are in pip.
> >> +   # Creates init files in all directory in pip.
> >> +-  python tensorflow_estimator/tools/pip_package/create_pip_helper.p=
y --pip-root "${TMPDIR}/tensorflow_estimator/" --bazel-root "./tensorflow_e=
stimator"
> >> ++  nativepython3 tensorflow_estimator/tools/pip_package/create_pip_h=
elper.py --pip-root "${TMPDIR}/tensorflow_estimator/" --bazel-root "./tenso=
rflow_estimator"
> >> + }
> >> +
> >> + function build_wheel() {
> >> +--
> >> +2.18.2
> >> +
> >> diff --git a/recipes-framework/tensorflow/tensorflow-estimator_1.13.b=
b b/recipes-framework/tensorflow/tensorflow-estimator_1.13.bb
> >> index f3a5098..5b2fe5d 100644
> >> --- a/recipes-framework/tensorflow/tensorflow-estimator_1.13.bb
> >> +++ b/recipes-framework/tensorflow/tensorflow-estimator_1.13.bb
> >> @@ -3,9 +3,10 @@ learning programming."
> >>   LICENSE =3D "Apache-2.0"
> >>   LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D01e86893010a1b87e69a213f=
aa753ebd"
> >>
> >> -SRC_URI =3D "git://github.com/tensorflow/estimator.git;branch=3Dr1.1=
3 \
> >> +SRC_URI =3D "git://github.com/tensorflow/estimator.git;branch=3Dr2.4=
 \
> >> +           file://0001-customize-for-yocto.patch \
> >>             "
> >> -SRCREV =3D "340703eed78ba4854862f749ed94f91598826e79"
> >> +SRCREV =3D "c3e7f2b5bbcc35185ef71797955a28cadce28f60"
> >>   S =3D "${WORKDIR}/git"
> >>
> >>   inherit python3native bazel
> >> @@ -19,12 +20,18 @@ DEPENDS +=3D " \
> >>       python3-astor-native \
> >>       python3-gast-native \
> >>       python3-termcolor-native \
> >> +    python3-wrapt-native \
> >> +    python3-opt-einsum-native \
> >> +    python3-astunparse-native \
> >> +    flatbuffers-native \
> > I'm getting issue when building tensorflow-estimator (I add small
> > changes to be able to build this patches on top of dunfell) and I'm
> > getting:
> > |   /bin/bash -c 'source
> > external/bazel_tools/tools/genrule/genrule-setup.sh;
> > bazel-out/k8-opt-exec-2B5CBBC6/bin/tensorflow_estimator/python/estimat=
or/api/create_tensorflow_estimator.python.estimator_api_1_estimator_python_=
api_gen_compat_v1
> >   --apidir=3Dbazel-out/k8-fastbuild/bin/tensorflow_estimator/python/es=
timator/api_v1/
> > --apiname=3Destimator --apiversion=3D1
> > --package=3Dtensorflow_estimator.python.estimator
> > --output_package=3Dtensorflow_estimator.python.estimator.api._v1
> > bazel-out/k8-fastbuild/bin/tensorflow_estimator/python/estimator/api/_=
v1/v1.py
> > bazel-out/k8-fastbuild/bin/tensorflow_estimator/python/estimator/api/_=
v1/estimator/__init__.py
> > bazel-out/k8-fastbuild/bin/tensorflow_estimator/python/estimator/api/_=
v1/estimator/experimental/__init__.py
> > bazel-out/k8-fastbuild/bin/tensorflow_estimator/python/estimator/api/_=
v1/estimator/export/__init__.py
> > bazel-out/k8-fastbuild/bin/tensorflow_estimator/python/estimator/api/_=
v1/estimator/inputs/__init__.py
> > bazel-out/k8-fastbuild/bin/tensorflow_estimator/python/estimator/api/_=
v1/estimator/tpu/__init__.py
> > bazel-out/k8-fastbuild/bin/tensorflow_estimator/python/estimator/api/_=
v1/estimator/tpu/experimental/__init__.py')
> > | Execution platform: @local_config_platform//:host
> > | /home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux/tensorf=
low-estimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-packages/=
h5py/__init__.py:72:
> > UserWarning: h5py is running against HDF5 1.8.21 when it was built
> > against 1.8.19, this may cause problems
> > |   _warn(("h5py is running against HDF5 {0} when it was built against=
 {1}, "
> > | Traceback (most recent call last):
> > |   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux=
/tensorflow-estimator/2.4-r0/bazel/output_base/execroot/org_tensorflow_esti=
mator/bazel-out/k8-opt-exec-2B5CBBC6/bin/tensorflow_estimator/python/estima=
tor/api/create_tensorflow_estimator.python.estimator_api_1_estimator_python=
_api_gen_compat_v1.runfiles/org_tensorflow_estimator/tensorflow_estimator/p=
ython/estimator/api/create_python_api_wrapper.py",
> > line 26, in <module>
> > |     from tensorflow_estimator.python.estimator import estimator_lib
> > # pylint: disable=3Dunused-import
> > |   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux=
/tensorflow-estimator/2.4-r0/bazel/output_base/execroot/org_tensorflow_esti=
mator/bazel-out/k8-opt-exec-2B5CBBC6/bin/tensorflow_estimator/python/estima=
tor/api/create_tensorflow_estimator.python.estimator_api_1_estimator_python=
_api_gen_compat_v1.runfiles/org_tensorflow_estimator/tensorflow_estimator/p=
ython/estimator/estimator_lib.py",
> > line 22, in <module>
> > |     from tensorflow_estimator.python.estimator.canned.baseline
> > import BaselineClassifier
> > |   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux=
/tensorflow-estimator/2.4-r0/bazel/output_base/execroot/org_tensorflow_esti=
mator/bazel-out/k8-opt-exec-2B5CBBC6/bin/tensorflow_estimator/python/estima=
tor/api/create_tensorflow_estimator.python.estimator_api_1_estimator_python=
_api_gen_compat_v1.runfiles/org_tensorflow_estimator/tensorflow_estimator/p=
ython/estimator/canned/baseline.py",
> > line 53, in <module>
> > |     import tensorflow as tf
> > |   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux=
/tensorflow-estimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-p=
ackages/tensorflow/__init__.py",
> > line 55, in <module>
> > |     from ._api.v2 import compat
> > |   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux=
/tensorflow-estimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-p=
ackages/tensorflow/_api/v2/compat/__init__.py",
> > line 39, in <module>
> > |     from . import v1
> > |   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux=
/tensorflow-estimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-p=
ackages/tensorflow/_api/v2/compat/v1/__init__.py",
> > line 34, in <module>
> > |     from . import compat
> > |   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux=
/tensorflow-estimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-p=
ackages/tensorflow/_api/v2/compat/v1/compat/__init__.py",
> > line 39, in <module>
> > |     from . import v1
> > |   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux=
/tensorflow-estimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-p=
ackages/tensorflow/_api/v2/compat/v1/compat/v1/__init__.py",
> > line 51, in <module>
> > |     from tensorflow._api.v2.compat.v1 import lite
> > |   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux=
/tensorflow-estimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-p=
ackages/tensorflow/_api/v2/compat/v1/lite/__init__.py",
> > line 11, in <module>
> > |     from . import experimental
> > |   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux=
/tensorflow-estimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-p=
ackages/tensorflow/_api/v2/compat/v1/lite/experimental/__init__.py",
> > line 10, in <module>
> > |     from . import nn
> > |   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux=
/tensorflow-estimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-p=
ackages/tensorflow/_api/v2/compat/v1/lite/experimental/nn/__init__.py",
> > line 10, in <module>
> > |     from tensorflow.lite.python.lite import TFLiteLSTMCell
> > |   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux=
/tensorflow-estimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-p=
ackages/tensorflow/lite/python/lite.py",
> > line 40, in <module>
> > |     from tensorflow.lite.python.convert import
> > build_toco_convert_protos  # pylint: disable=3Dunused-import
> > |   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux=
/tensorflow-estimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-p=
ackages/tensorflow/lite/python/convert.py",
> > line 33, in <module>
> > |     from tensorflow.lite.python import util
> > |   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux=
/tensorflow-estimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-p=
ackages/tensorflow/lite/python/util.py",
> > line 30, in <module>
> > |     import flatbuffers
> > | ModuleNotFoundError: No module named 'flatbuffers'
> >
> > FLatbuffers from openembedded are available version 1.12. Do you have
> > an idea what is can cause?
> >>       tensorflow-native \
> >>   "
> >>
> >>   do_compile () {
> >>       unset CC
> >>       export TMPDIR=3D"${WORKDIR}"
> >> +    export PYTHON_BIN_PATH=3D"${PYTHON}"
> >> +
> >>       ${BAZEL} build \
> >>           --subcommands --explain=3D${T}/explain.log \
> >>           --verbose_explanations --verbose_failures \
> >> @@ -32,7 +39,6 @@ do_compile () {
> >>           --python_path=3D"${PYTHON}" \
> >>           //tensorflow_estimator/tools/pip_package:build_pip_package
> >>
> >> -    PYTHON_BIN_PATH=3D"${PYTHON}" \
> >>       ${S}/bazel-bin/tensorflow_estimator/tools/pip_package/build_pip=
_package \
> >>           ${WORKDIR}/estimator_pip
> >>   }
> >> --
> >> 2.21.0
> >>
> >
> > Thanks and BR,
> >
> > marek
>
> Marek,
> Does this happen if you use the master branch?
Yes this comes from master branch.
>
> Hongxu, Any tips for Marek?
>
> ../Randy

BR,

marek
>
> >
> >
> >
> >=20
> >
>
>
> --
> # Randy MacLeod
> # Wind River Linux



--=20
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com
