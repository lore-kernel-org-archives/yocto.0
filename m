Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.11656.1609756264355711126
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Jan 2021 02:31:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=oNZoqgeO;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: marek.belisko@gmail.com)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 0CEBF38C058A
	for <yocto@yoctoproject.org>; Mon,  4 Jan 2021 10:31:03 +0000 (UTC)
Received: by mail-ej1-f43.google.com with SMTP id lt17so36143972ejb.3
        for <yocto@yoctoproject.org>; Mon, 04 Jan 2021 02:31:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=DAClWVowjbc6JESZw6PETvWx2LmphrJYUAaRa/rbad8=;
        b=oNZoqgeOSYcOh/fZXtnu/ejhGiiSfDAPu7PMTOZFRP8hItnhabyV3pQPRMVVoBT8eJ
         4MBdTQ6Nin7ZwJLTG1Rc/JmgEs3UHuMQ20exAmfjaAUsiOSKzxQ7Pu/UcJpuPz6BR8zv
         O6mIF8d16LeSkCkStiR5yihOIcqBtMVAJA8m6FDu/WNlZ7z/FIJF2aAvp3FBOAco97Om
         jKuZw3prGKhqOLllGOkKHPVKM6EJVzFTLeTD0FThLDVyR6KKwxcJFsei4MgULfNwH4rS
         lo/c9HVUcCbp1z4F1ncAhHx3qVjyvog4WHP5u4jjsqaVO1MYP1e/43Y+doujdrePQYEk
         ZVtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=DAClWVowjbc6JESZw6PETvWx2LmphrJYUAaRa/rbad8=;
        b=YsK8XOo4zkaiVoG6A2G6N8ZrLkh9UI/e6GAHovN+IfYVbyClJxHNB4Z7m5TuxkbVEK
         QYhIeTG9Uz5eEXfPqawXHpEuYQf55TAQuqzEhp73iyLEdM5KLoKT7fxk7XVHECS3H5TB
         cH+EdfDqwUNSK7XtcO4mBot5YrtT+G5JBZ6wJiUUjVNMBVv9VyASQGqBWdJGDF0G5Daz
         OeI+Oa4QIjuOojezpwu2zG8Vf4c4FyvQaKcvm4Sy65gZo34MDaJ0MP5ESXRooP6C6n3X
         aq1liNVOEZjhFLIninQRGEJRv/MVrdcPUbFR8k8rBMPvpA+/zQbSt2+dEc1mfW9YUD1H
         U0vA==
X-Gm-Message-State: AOAM531q53IRJv2hzIffMbS8G1YcqTbmqywDRZx3z3TzwUNBAtnLYQYX
	KWzj74wKjEfoastqkcBpqh1aECNtagzRgfV7db8=
X-Google-Smtp-Source: ABdhPJztoc01uncQYl/VPOIU4ZKlm23lWsy4Flb0cetsDNunQjiE0A3ms0GWjAtlQwYP/0XU0q6WAtMglU5p2zrXmpw=
X-Received: by 2002:a17:906:a015:: with SMTP id p21mr58556510ejy.49.1609756261533;
 Mon, 04 Jan 2021 02:31:01 -0800 (PST)
MIME-Version: 1.0
References: <20201216130822.28476-1-hongxu.jia@windriver.com> <20201216130822.28476-9-hongxu.jia@windriver.com>
In-Reply-To: <20201216130822.28476-9-hongxu.jia@windriver.com>
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Mon, 4 Jan 2021 11:30:50 +0100
Message-ID: <CAAfyv37zRgtJ_n2RZmWoHPOado1=LYw9cHVEVUZT1n497XB8yw@mail.gmail.com>
Subject: Re: [meta-tensorflow][PATCH 8/25] tensorflow-estimator: 1.13 -> 2.4
To: Hongxu Jia <hongxu.jia@windriver.com>
Cc: Randy MacLeod <randy.macleod@windriver.com>, philip@balister.org, 
	akuster808 <akuster808@gmail.com>, yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Hongxu,

On Wed, Dec 16, 2020 at 2:09 PM Hongxu Jia <hongxu.jia@windriver.com> wrote=
:
>
> Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
> ---
>  .../0001-customize-for-yocto.patch            | 28 +++++++++++++++++++
>  .../tensorflow/tensorflow-estimator_1.13.bb   | 12 ++++++--
>  2 files changed, 37 insertions(+), 3 deletions(-)
>  create mode 100644 recipes-framework/tensorflow/tensorflow-estimator/000=
1-customize-for-yocto.patch
>
> diff --git a/recipes-framework/tensorflow/tensorflow-estimator/0001-custo=
mize-for-yocto.patch b/recipes-framework/tensorflow/tensorflow-estimator/00=
01-customize-for-yocto.patch
> new file mode 100644
> index 0000000..e9b66d5
> --- /dev/null
> +++ b/recipes-framework/tensorflow/tensorflow-estimator/0001-customize-fo=
r-yocto.patch
> @@ -0,0 +1,28 @@
> +From a1bcf09a43fc44ad5e04c441ee45cc23d16cf7d2 Mon Sep 17 00:00:00 2001
> +From: Hongxu Jia <hongxu.jia@windriver.com>
> +Date: Wed, 9 Dec 2020 17:59:01 +0800
> +Subject: [PATCH] customize for yocto
> +
> +Upstream-Status: Inappropriate [oe specific]
> +
> +Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
> +---
> + tensorflow_estimator/tools/pip_package/build_pip_package.sh | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +diff --git a/tensorflow_estimator/tools/pip_package/build_pip_package.sh=
 b/tensorflow_estimator/tools/pip_package/build_pip_package.sh
> +index d4953a6..e08cd8a 100755
> +--- a/tensorflow_estimator/tools/pip_package/build_pip_package.sh
> ++++ b/tensorflow_estimator/tools/pip_package/build_pip_package.sh
> +@@ -38,7 +38,7 @@ function prepare_src() {
> +
> +   # Verifies all expected files are in pip.
> +   # Creates init files in all directory in pip.
> +-  python tensorflow_estimator/tools/pip_package/create_pip_helper.py --=
pip-root "${TMPDIR}/tensorflow_estimator/" --bazel-root "./tensorflow_estim=
ator"
> ++  nativepython3 tensorflow_estimator/tools/pip_package/create_pip_helpe=
r.py --pip-root "${TMPDIR}/tensorflow_estimator/" --bazel-root "./tensorflo=
w_estimator"
> + }
> +
> + function build_wheel() {
> +--
> +2.18.2
> +
> diff --git a/recipes-framework/tensorflow/tensorflow-estimator_1.13.bb b/=
recipes-framework/tensorflow/tensorflow-estimator_1.13.bb
> index f3a5098..5b2fe5d 100644
> --- a/recipes-framework/tensorflow/tensorflow-estimator_1.13.bb
> +++ b/recipes-framework/tensorflow/tensorflow-estimator_1.13.bb
> @@ -3,9 +3,10 @@ learning programming."
>  LICENSE =3D "Apache-2.0"
>  LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D01e86893010a1b87e69a213faa753=
ebd"
>
> -SRC_URI =3D "git://github.com/tensorflow/estimator.git;branch=3Dr1.13 \
> +SRC_URI =3D "git://github.com/tensorflow/estimator.git;branch=3Dr2.4 \
> +           file://0001-customize-for-yocto.patch \
>            "
> -SRCREV =3D "340703eed78ba4854862f749ed94f91598826e79"
> +SRCREV =3D "c3e7f2b5bbcc35185ef71797955a28cadce28f60"
>  S =3D "${WORKDIR}/git"
>
>  inherit python3native bazel
> @@ -19,12 +20,18 @@ DEPENDS +=3D " \
>      python3-astor-native \
>      python3-gast-native \
>      python3-termcolor-native \
> +    python3-wrapt-native \
> +    python3-opt-einsum-native \
> +    python3-astunparse-native \
> +    flatbuffers-native \
I'm getting issue when building tensorflow-estimator (I add small
changes to be able to build this patches on top of dunfell) and I'm
getting:
|   /bin/bash -c 'source
external/bazel_tools/tools/genrule/genrule-setup.sh;
bazel-out/k8-opt-exec-2B5CBBC6/bin/tensorflow_estimator/python/estimator/ap=
i/create_tensorflow_estimator.python.estimator_api_1_estimator_python_api_g=
en_compat_v1
 --apidir=3Dbazel-out/k8-fastbuild/bin/tensorflow_estimator/python/estimato=
r/api_v1/
--apiname=3Destimator --apiversion=3D1
--package=3Dtensorflow_estimator.python.estimator
--output_package=3Dtensorflow_estimator.python.estimator.api._v1
bazel-out/k8-fastbuild/bin/tensorflow_estimator/python/estimator/api/_v1/v1=
.py
bazel-out/k8-fastbuild/bin/tensorflow_estimator/python/estimator/api/_v1/es=
timator/__init__.py
bazel-out/k8-fastbuild/bin/tensorflow_estimator/python/estimator/api/_v1/es=
timator/experimental/__init__.py
bazel-out/k8-fastbuild/bin/tensorflow_estimator/python/estimator/api/_v1/es=
timator/export/__init__.py
bazel-out/k8-fastbuild/bin/tensorflow_estimator/python/estimator/api/_v1/es=
timator/inputs/__init__.py
bazel-out/k8-fastbuild/bin/tensorflow_estimator/python/estimator/api/_v1/es=
timator/tpu/__init__.py
bazel-out/k8-fastbuild/bin/tensorflow_estimator/python/estimator/api/_v1/es=
timator/tpu/experimental/__init__.py')
| Execution platform: @local_config_platform//:host
| /home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux/tensorflow-e=
stimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-packages/h5py/=
__init__.py:72:
UserWarning: h5py is running against HDF5 1.8.21 when it was built
against 1.8.19, this may cause problems
|   _warn(("h5py is running against HDF5 {0} when it was built against {1},=
 "
| Traceback (most recent call last):
|   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux/tens=
orflow-estimator/2.4-r0/bazel/output_base/execroot/org_tensorflow_estimator=
/bazel-out/k8-opt-exec-2B5CBBC6/bin/tensorflow_estimator/python/estimator/a=
pi/create_tensorflow_estimator.python.estimator_api_1_estimator_python_api_=
gen_compat_v1.runfiles/org_tensorflow_estimator/tensorflow_estimator/python=
/estimator/api/create_python_api_wrapper.py",
line 26, in <module>
|     from tensorflow_estimator.python.estimator import estimator_lib
# pylint: disable=3Dunused-import
|   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux/tens=
orflow-estimator/2.4-r0/bazel/output_base/execroot/org_tensorflow_estimator=
/bazel-out/k8-opt-exec-2B5CBBC6/bin/tensorflow_estimator/python/estimator/a=
pi/create_tensorflow_estimator.python.estimator_api_1_estimator_python_api_=
gen_compat_v1.runfiles/org_tensorflow_estimator/tensorflow_estimator/python=
/estimator/estimator_lib.py",
line 22, in <module>
|     from tensorflow_estimator.python.estimator.canned.baseline
import BaselineClassifier
|   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux/tens=
orflow-estimator/2.4-r0/bazel/output_base/execroot/org_tensorflow_estimator=
/bazel-out/k8-opt-exec-2B5CBBC6/bin/tensorflow_estimator/python/estimator/a=
pi/create_tensorflow_estimator.python.estimator_api_1_estimator_python_api_=
gen_compat_v1.runfiles/org_tensorflow_estimator/tensorflow_estimator/python=
/estimator/canned/baseline.py",
line 53, in <module>
|     import tensorflow as tf
|   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux/tens=
orflow-estimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-packag=
es/tensorflow/__init__.py",
line 55, in <module>
|     from ._api.v2 import compat
|   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux/tens=
orflow-estimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-packag=
es/tensorflow/_api/v2/compat/__init__.py",
line 39, in <module>
|     from . import v1
|   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux/tens=
orflow-estimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-packag=
es/tensorflow/_api/v2/compat/v1/__init__.py",
line 34, in <module>
|     from . import compat
|   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux/tens=
orflow-estimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-packag=
es/tensorflow/_api/v2/compat/v1/compat/__init__.py",
line 39, in <module>
|     from . import v1
|   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux/tens=
orflow-estimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-packag=
es/tensorflow/_api/v2/compat/v1/compat/v1/__init__.py",
line 51, in <module>
|     from tensorflow._api.v2.compat.v1 import lite
|   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux/tens=
orflow-estimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-packag=
es/tensorflow/_api/v2/compat/v1/lite/__init__.py",
line 11, in <module>
|     from . import experimental
|   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux/tens=
orflow-estimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-packag=
es/tensorflow/_api/v2/compat/v1/lite/experimental/__init__.py",
line 10, in <module>
|     from . import nn
|   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux/tens=
orflow-estimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-packag=
es/tensorflow/_api/v2/compat/v1/lite/experimental/nn/__init__.py",
line 10, in <module>
|     from tensorflow.lite.python.lite import TFLiteLSTMCell
|   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux/tens=
orflow-estimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-packag=
es/tensorflow/lite/python/lite.py",
line 40, in <module>
|     from tensorflow.lite.python.convert import
build_toco_convert_protos  # pylint: disable=3Dunused-import
|   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux/tens=
orflow-estimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-packag=
es/tensorflow/lite/python/convert.py",
line 33, in <module>
|     from tensorflow.lite.python import util
|   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux/tens=
orflow-estimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-packag=
es/tensorflow/lite/python/util.py",
line 30, in <module>
|     import flatbuffers
| ModuleNotFoundError: No module named 'flatbuffers'

FLatbuffers from openembedded are available version 1.12. Do you have
an idea what is can cause?
>      tensorflow-native \
>  "
>
>  do_compile () {
>      unset CC
>      export TMPDIR=3D"${WORKDIR}"
> +    export PYTHON_BIN_PATH=3D"${PYTHON}"
> +
>      ${BAZEL} build \
>          --subcommands --explain=3D${T}/explain.log \
>          --verbose_explanations --verbose_failures \
> @@ -32,7 +39,6 @@ do_compile () {
>          --python_path=3D"${PYTHON}" \
>          //tensorflow_estimator/tools/pip_package:build_pip_package
>
> -    PYTHON_BIN_PATH=3D"${PYTHON}" \
>      ${S}/bazel-bin/tensorflow_estimator/tools/pip_package/build_pip_pack=
age \
>          ${WORKDIR}/estimator_pip
>  }
> --
> 2.21.0
>

Thanks and BR,

marek
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
