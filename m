Return-Path: <jstephan@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B104FC433F5
	for <webhook@archiver.kernel.org>; Fri, 14 Jan 2022 10:20:36 +0000 (UTC)
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com
 [209.85.210.43])
 by mx.groups.io with SMTP id smtpd.web12.5503.1642155635447492501
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Jan 2022 02:20:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baylibre-com.20210112.gappssmtp.com header.s=20210112
 header.b=OBoVyEOQ;
 spf=pass (domain: baylibre.com, ip: 209.85.210.43,
 mailfrom: jstephan@baylibre.com)
Received: by mail-ot1-f43.google.com with SMTP id
 g1-20020a9d6481000000b00592d01f2b6eso5447762otl.5
        for <yocto@lists.yoctoproject.org>;
 Fri, 14 Jan 2022 02:20:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5Gi8Xbv4gmhxRlEDS2bm22vH1fCKFh1gba/gFxxht04=;
        b=OBoVyEOQFufr2k7r6MHhTo4aHGrLncoXa1t0efbb5yDWJs3vsQBgbkF50Hrjnu0cgA
         jWh5il2VHCNZ5/R8foEZft5Xt1TO3FTLXVavgHH5xNLR+hBdi0knjnlwEwhekxVoRwNM
         1dLFIKe0hBNEvAnfJZs056gdCSxfDxnZx2hBmwy9jo98RGxtuOKfv/ZeleCeE6nSorK7
         J2iTWppX+3xj/cF8VUG9AqSlDRpJn1Wfoyh8zDCLd6ZU41dgjDodvqeo4RHxbwJRJGui
         mzeqxy+7nEKo5eBRFZ0TgGkTAqTBSbC3csosVHI8Y3BmHQHlSTwZL14qYVWtdk+qF6qj
         KUOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5Gi8Xbv4gmhxRlEDS2bm22vH1fCKFh1gba/gFxxht04=;
        b=oFVfemF4BmmytixrTsxPV7EM4kjAVn/YxWkPSUw8KEHtCSmKiN+jVH5coNEmnv0rTh
         AxeiSP78IrIL4pER1gt1pfX7Y2ueYcudHotPmXy9ped8nbI5l8aZvDOP8ZM8n/8zr4GF
         Z92X/uqSK4fD9EOMFtPoXdICEpdDyMNkGmsInFgJHdnZ/SmSx95i9Hyyj7xITf6Wcax2
         ViCVjnWf1zcfnUckq+MdwiS8efiUajHd5w6h4RlA409XM2UVG4d7EZYSSVqu3X2FW3lO
         /iWsrZBLw7CjMCE48p8fv7zXUXyD6FJO2D5sTfCIbOqHcjp8ro14GlTezBbG411weO5A
         yrfw==
X-Gm-Message-State: AOAM53174t7zbMW7Xfk6zXYb75Sie7I/CksLHryqtO8RamvgvTPjzsb0
	0ZhzQ/slRiJyNmyvjk5326iwjp3NXdj8UZHhsZGFtQ==
X-Google-Smtp-Source: 
 ABdhPJzP8tHTRIFxc4sd+AiPEdBycIqiMRujxaSLFeyBrb2vQBd/jdpPKXIFMs7iQU1+cZOUKeARIWpQQoTBJ0onePY=
X-Received: by 2002:a05:6830:1419:: with SMTP id
 v25mr6352958otp.73.1642155634348;
 Fri, 14 Jan 2022 02:20:34 -0800 (PST)
MIME-Version: 1.0
References: <20211221084222.1442456-1-jstephan@baylibre.com>
 <20211221084222.1442456-3-jstephan@baylibre.com>
 <9bf97639-b046-435a-434f-739f393f11b7@windriver.com>
In-Reply-To: <9bf97639-b046-435a-434f-739f393f11b7@windriver.com>
From: Julien Stephan <jstephan@baylibre.com>
Date: Fri, 14 Jan 2022 11:19:36 +0100
Message-ID: 
 <CAEHHSvZQN6enHGznE7mAHErwUPb1yZVH6eXtLinqSG-emPnQeA@mail.gmail.com>
Subject: Re: [yocto] [meta-tensorflow][PATCH 3/3] tensorflow-lite: add recipe
To: Randy MacLeod <randy.macleod@windriver.com>
Cc: yocto@lists.yoctoproject.org, "Jia, Hongxu" <Hongxu.Jia@windriver.com>
Content-Type: multipart/alternative; boundary="0000000000004066e705d5882752"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jan 2022 10:20:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55875

--0000000000004066e705d5882752
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Hongxu

Did you have a chance to take a look at it?

Best
Julien

Le ven. 24 d=C3=A9c. 2021 =C3=A0 19:48, Randy MacLeod <randy.macleod@windri=
ver.com> a
=C3=A9crit :

> Thanks Stephan.
>
> Hongxu, did you miss this?
>
> ../Randy
>
> On 2021-12-21 3:42 a.m., Julien STEPHAN wrote:
> > Adding 2.6.1 tensorflow-lite recipe.
> > This recipe is directly based on the corresponding 2.6.1 tensorflow
> > recipe.
> >
> > It has been build tested with latest honister and tested on
> > several mediatek soc using benchmark_model and label_image (C++ and
> > python)
> >
> > Signed-off-by: Julien STEPHAN <jstephan@baylibre.com>
> > ---
> >   .../tensorflow/tensorflow-lite_2.6.1.bb       | 156 +++++++++++++++++=
+
> >   1 file changed, 156 insertions(+)
> >   create mode 100644 recipes-framework/tensorflow/
> tensorflow-lite_2.6.1.bb
> >
> > diff --git a/recipes-framework/tensorflow/tensorflow-lite_2.6.1.bb
> b/recipes-framework/tensorflow/tensorflow-lite_2.6.1.bb
> > new file mode 100644
> > index 0000000..104e5a3
> > --- /dev/null
> > +++ b/recipes-framework/tensorflow/tensorflow-lite_2.6.1.bb
> > @@ -0,0 +1,156 @@
> > +include tensorflow.inc
> > +
> > +SRC_URI +=3D " \
> > +
>  file://0001-add-yocto-toolchain-to-support-cross-compiling.patch \
> > +
>  file://0001-fix-build-tensorflow-lite-examples-label_image-label.patch \
> > +           file://0001-label_image-tweak-default-model-location.patch =
\
> > +
>  file://0001-label_image.lite-tweak-default-model-location.patch \
> > +           file://0001-CheckFeatureOrDie-use-warning-to-avoid-die.patc=
h
> \
> > +           file://0001-support-32-bit-x64-and-arm-for-yocto.patch \
> > +
>  file://0001-Revert-set-distinct_host_configuration-false-by-defa.patch \
> > +           file://0001-fix-default-Bazel-toolchain-not-work.patch \
> > +
>  file://0001-distutils-is-deprecated-in-Python-3.10-cross.patch \
> > +           file://BUILD.in \
> > +           file://BUILD.yocto_compiler \
> > +           file://cc_config.bzl.tpl \
> > +           file://yocto_compiler_configure.bzl \
> > +          "
> > +
> > +SRC_URI +=3D "
> https://storage.googleapis.com/download.tensorflow.org/models/inception_v=
3_2016_08_28_frozen.pb.tar.gz;name=3Dmodel-inv3
> "
> > +SRC_URI[model-inv3.md5sum] =3D "a904ddf15593d03c7dd786d552e22d73"
> > +SRC_URI[model-inv3.sha256sum] =3D
> "7045b72a954af4dce36346f478610acdccbf149168fa25c78e54e32f0c723d6d"
> > +
> > +SRC_URI +=3D "
> https://storage.googleapis.com/download.tensorflow.org/models/tflite/mobi=
lenet_v1_1.0_224_quant_and_labels.zip;name=3Dmodel-mobv1
> "
> > +SRC_URI[model-mobv1.md5sum] =3D "38ac0c626947875bd311ef96c8baab62"
> > +SRC_URI[model-mobv1.sha256sum] =3D
> "2f8054076cf655e1a73778a49bd8fd0306d32b290b7e576dda9574f00f186c0f"
> > +
> > +RDEPENDS:${PN} +=3D " \
> > +    python3 \
> > +    python3-core \
> > +    python3-numpy \
> > +"
> > +
> > +export PYTHON_BIN_PATH=3D"${PYTHON}"
> > +export
> PYTHON_LIB_PATH=3D"${STAGING_LIBDIR_NATIVE}/${PYTHON_DIR}/site-packages"
> > +
> > +export
> CROSSTOOL_PYTHON_INCLUDE_PATH=3D"${STAGING_INCDIR}/python${PYTHON_BASEVER=
SION}${PYTHON_ABI}"
> > +
> > +do_configure:append () {
> > +    if [ ! -e ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig-target.h ];the=
n
> > +        mv ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig.h
> ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig-target.h
> > +    fi
> > +
> > +    install -m 644
> ${STAGING_INCDIR_NATIVE}/python${PYTHON_BASEVERSION}${PYTHON_ABI}/pyconfi=
g.h
> \
> > +       ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig-native.h
> > +
> > +    cat > ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig.h <<ENDOF
> > +#if defined (_PYTHON_INCLUDE_TARGET)
> > +#include "pyconfig-target.h"
> > +#elif defined (_PYTHON_INCLUDE_NATIVE)
> > +#include "pyconfig-native.h"
> > +#else
> > +#error "_PYTHON_INCLUDE_TARGET or _PYTHON_INCLUDE_NATIVE is not define=
d"
> > +#endif // End of #if defined (_PYTHON_INCLUDE_TARGET)
> > +
> > +ENDOF
> > +
> > +    mkdir -p ${S}/third_party/toolchains/yocto/
> > +    sed "s#%%CPU%%#${BAZEL_TARGET_CPU}#g" ${WORKDIR}/BUILD.in  >
> ${S}/third_party/toolchains/yocto/BUILD
> > +    chmod 644 ${S}/third_party/toolchains/yocto/BUILD
> > +    install -m 644 ${WORKDIR}/cc_config.bzl.tpl
> ${S}/third_party/toolchains/yocto/
> > +    install -m 644 ${WORKDIR}/yocto_compiler_configure.bzl
> ${S}/third_party/toolchains/yocto/
> > +    install -m 644 ${WORKDIR}/BUILD.yocto_compiler ${S}
> > +
> > +    CT_NAME=3D$(echo ${HOST_PREFIX} | rev | cut -c 2- | rev)
> > +    SED_COMMAND=3D"s#%%CT_NAME%%#${CT_NAME}#g"
> > +    SED_COMMAND=3D"${SED_COMMAND}; s#%%WORKDIR%%#${WORKDIR}#g"
> > +    SED_COMMAND=3D"${SED_COMMAND};
> s#%%YOCTO_COMPILER_PATH%%#${BAZEL_OUTPUTBASE_DIR}/external/yocto_compiler=
#g"
> > +
> > +    sed -i "${SED_COMMAND}" ${S}/BUILD.yocto_compiler \
> > +                            ${S}/WORKSPACE
> > +
> > +    ${TF_CONFIG} \
> > +    ./configure
> > +}
> > +
> > +TF_TARGET_EXTRA ??=3D ""
> > +
> > +export CUSTOM_BAZEL_FLAGS =3D " \
> > +    ${TF_ARGS_EXTRA} \
> > +    --jobs=3Dauto \
> > +    -c opt \
> > +    --cpu=3D${BAZEL_TARGET_CPU} \
> > +    --crosstool_top=3D@local_config_yocto_compiler//:toolchain \
> > +    --host_crosstool_top=3D@bazel_tools//tools/cpp:toolchain \
> > +"
> > +
> > +do_compile () {
> > +    export CT_NAME=3D$(echo ${HOST_PREFIX} | rev | cut -c 2- | rev)
> > +    unset CC
> > +
> > +    ${BAZEL} build \
> > +        ${CUSTOM_BAZEL_FLAGS} \
> > +        --copt -DTF_LITE_DISABLE_X86_NEON --copt
> -DMESA_EGL_NO_X11_HEADERS \
> > +        tensorflow/lite:libtensorflowlite.so \
> > +        tensorflow/lite/tools/benchmark:benchmark_model \
> > +        //tensorflow/lite/examples/label_image:label_image \
> > +        ${TF_TARGET_EXTRA}
> > +
> > +    # build pip package
> > +
> ${S}/tensorflow/lite/tools/pip_package/build_pip_package_with_bazel.sh
> > +
> > +}
> > +
> > +do_install() {
> > +    install -d ${D}${libdir}
> > +    install -m 644 ${S}/bazel-bin/tensorflow/lite/libtensorflowlite.so=
 \
> > +        ${D}${libdir}
> > +
> > +    install -d ${D}${sbindir}
> > +    install -m 755
> ${S}/bazel-bin/tensorflow/lite/tools/benchmark/benchmark_model \
> > +        ${D}${sbindir}
> > +
> > +    install -m 755
> ${S}/bazel-bin/tensorflow/lite/examples/label_image/label_image \
> > +        ${D}${sbindir}/label_image
> > +
> > +    install -d ${D}${datadir}/label_image
> > +    install -m 644 ${WORKDIR}/imagenet_slim_labels.txt
> ${D}${datadir}/label_image
> > +    install -m 644 ${WORKDIR}/inception_v3_2016_08_28_frozen.pb \
> > +        ${D}${datadir}/label_image
> > +    install -m 644
> ${S}/tensorflow/examples/label_image/data/grace_hopper.jpg \
> > +        ${D}${datadir}/label_image
> > +
> > +    install -m 644 ${WORKDIR}/labels_mobilenet_quant_v1_224.txt
> ${D}${datadir}/label_image
> > +    install -m 644 ${WORKDIR}/mobilenet_v1_1.0_224_quant.tflite \
> > +        ${D}${datadir}/label_image
> > +    install -m 644
> ${S}/tensorflow/lite/examples/label_image/testdata/grace_hopper.bmp \
> > +        ${D}${datadir}/label_image
> > +
> > +
> > +    #echo "Installing pip package"
> > +    install -d ${D}/${PYTHON_SITEPACKAGES_DIR}
> > +    ${STAGING_BINDIR_NATIVE}/pip3 install --disable-pip-version-check
> -v \
> > +        -t ${D}/${PYTHON_SITEPACKAGES_DIR} --no-cache-dir --no-deps \
> > +
> ${S}/tensorflow/lite/tools/pip_package/gen/tflite_pip/python3/dist/tflite=
_runtime-${PV}-*.whl
> > +
> > +}
> > +
> > +FILES:${PN} +=3D "${libdir} ${sbindir} ${datadir}/*"
> > +INSANE_SKIP:${PN} +=3D "dev-so \
> > +                      already-stripped \
> > +                     "
> > +
> > +SOLIBS =3D ".so"
> > +FILES_SOLIBSDEV =3D ""
> > +ALLOW_EMPTY:${PN} =3D "1"
> > +
> > +FILES:${PN} +=3D "${libdir} /home/root/*"
> > +
> > +inherit siteinfo unsupportarch
> > +python __anonymous() {
> > +    if d.getVar("SITEINFO_ENDIANNESS") =3D=3D 'be':
> > +        msg =3D  "\nIt failed to use pre-build model to do
> predict/inference on big-endian platform"
> > +        msg +=3D "\n(such as qemumips), since upstream does not suppor=
t
> big-endian very well."
> > +        msg +=3D "\nDetails:
> https://github.com/tensorflow/tensorflow/issues/16364"
> > +        bb.warn(msg)
> > +}
> >
> >
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#55634):
> https://lists.yoctoproject.org/g/yocto/message/55634
> > Mute This Topic: https://lists.yoctoproject.org/mt/87873857/3616765
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> randy.macleod@windriver.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>
>
> --
> # Randy MacLeod
> # Wind River Linux
>
>

--0000000000004066e705d5882752
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Hongxu</div><div><br></div><div>Did you have a cha=
nce to take a look at it? <br></div><div><br></div><div>Best</div><div>Juli=
en<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">Le=C2=A0ven. 24 d=C3=A9c. 2021 =C3=A0=C2=A019:48, Randy MacLeod=
 &lt;<a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver=
.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">Thanks Stephan.<br>
<br>
Hongxu, did you miss this?<br>
<br>
../Randy<br>
<br>
On 2021-12-21 3:42 a.m., Julien STEPHAN wrote:<br>
&gt; Adding 2.6.1 tensorflow-lite recipe.<br>
&gt; This recipe is directly based on the corresponding 2.6.1 tensorflow<br=
>
&gt; recipe.<br>
&gt; <br>
&gt; It has been build tested with latest honister and tested on<br>
&gt; several mediatek soc using benchmark_model and label_image (C++ and<br=
>
&gt; python)<br>
&gt; <br>
&gt; Signed-off-by: Julien STEPHAN &lt;<a href=3D"mailto:jstephan@baylibre.=
com" target=3D"_blank">jstephan@baylibre.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 =C2=A0.../tensorflow/<a href=3D"http://tensorflow-lite_2.6.1.bb"=
 rel=3D"noreferrer" target=3D"_blank">tensorflow-lite_2.6.1.bb</a>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0| 156 ++++++++++++++++++<br>
&gt;=C2=A0 =C2=A01 file changed, 156 insertions(+)<br>
&gt;=C2=A0 =C2=A0create mode 100644 recipes-framework/tensorflow/<a href=3D=
"http://tensorflow-lite_2.6.1.bb" rel=3D"noreferrer" target=3D"_blank">tens=
orflow-lite_2.6.1.bb</a><br>
&gt; <br>
&gt; diff --git a/recipes-framework/tensorflow/<a href=3D"http://tensorflow=
-lite_2.6.1.bb" rel=3D"noreferrer" target=3D"_blank">tensorflow-lite_2.6.1.=
bb</a> b/recipes-framework/tensorflow/<a href=3D"http://tensorflow-lite_2.6=
.1.bb" rel=3D"noreferrer" target=3D"_blank">tensorflow-lite_2.6.1.bb</a><br=
>
&gt; new file mode 100644<br>
&gt; index 0000000..104e5a3<br>
&gt; --- /dev/null<br>
&gt; +++ b/recipes-framework/tensorflow/<a href=3D"http://tensorflow-lite_2=
.6.1.bb" rel=3D"noreferrer" target=3D"_blank">tensorflow-lite_2.6.1.bb</a><=
br>
&gt; @@ -0,0 +1,156 @@<br>
&gt; +include tensorflow.inc<br>
&gt; +<br>
&gt; +SRC_URI +=3D &quot; \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0001-add-yocto-toolch=
ain-to-support-cross-compiling.patch \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0001-fix-build-tensor=
flow-lite-examples-label_image-label.patch \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0001-label_image-twea=
k-default-model-location.patch \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0001-label_image.lite=
-tweak-default-model-location.patch \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0001-CheckFeatureOrDi=
e-use-warning-to-avoid-die.patch \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0001-support-32-bit-x=
64-and-arm-for-yocto.patch \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0001-Revert-set-disti=
nct_host_configuration-false-by-defa.patch \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0001-fix-default-Baze=
l-toolchain-not-work.patch \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0001-distutils-is-dep=
recated-in-Python-3.10-cross.patch \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://BUILD.in \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://BUILD.yocto_compiler =
\<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://cc_config.bzl.tpl \<b=
r>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://yocto_compiler_config=
ure.bzl \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<br>
&gt; +<br>
&gt; +SRC_URI +=3D &quot;<a href=3D"https://storage.googleapis.com/download=
.tensorflow.org/models/inception_v3_2016_08_28_frozen.pb.tar.gz;name=3Dmode=
l-inv3" rel=3D"noreferrer" target=3D"_blank">https://storage.googleapis.com=
/download.tensorflow.org/models/inception_v3_2016_08_28_frozen.pb.tar.gz;na=
me=3Dmodel-inv3</a>&quot;<br>
&gt; +SRC_URI[model-inv3.md5sum] =3D &quot;a904ddf15593d03c7dd786d552e22d73=
&quot;<br>
&gt; +SRC_URI[model-inv3.sha256sum] =3D &quot;7045b72a954af4dce36346f478610=
acdccbf149168fa25c78e54e32f0c723d6d&quot;<br>
&gt; +<br>
&gt; +SRC_URI +=3D &quot;<a href=3D"https://storage.googleapis.com/download=
.tensorflow.org/models/tflite/mobilenet_v1_1.0_224_quant_and_labels.zip;nam=
e=3Dmodel-mobv1" rel=3D"noreferrer" target=3D"_blank">https://storage.googl=
eapis.com/download.tensorflow.org/models/tflite/mobilenet_v1_1.0_224_quant_=
and_labels.zip;name=3Dmodel-mobv1</a>&quot;<br>
&gt; +SRC_URI[model-mobv1.md5sum] =3D &quot;38ac0c626947875bd311ef96c8baab6=
2&quot;<br>
&gt; +SRC_URI[model-mobv1.sha256sum] =3D &quot;2f8054076cf655e1a73778a49bd8=
fd0306d32b290b7e576dda9574f00f186c0f&quot;<br>
&gt; +<br>
&gt; +RDEPENDS:${PN} +=3D &quot; \<br>
&gt; +=C2=A0 =C2=A0 python3 \<br>
&gt; +=C2=A0 =C2=A0 python3-core \<br>
&gt; +=C2=A0 =C2=A0 python3-numpy \<br>
&gt; +&quot;<br>
&gt; +<br>
&gt; +export PYTHON_BIN_PATH=3D&quot;${PYTHON}&quot;<br>
&gt; +export PYTHON_LIB_PATH=3D&quot;${STAGING_LIBDIR_NATIVE}/${PYTHON_DIR}=
/site-packages&quot;<br>
&gt; +<br>
&gt; +export CROSSTOOL_PYTHON_INCLUDE_PATH=3D&quot;${STAGING_INCDIR}/python=
${PYTHON_BASEVERSION}${PYTHON_ABI}&quot;<br>
&gt; +<br>
&gt; +do_configure:append () {<br>
&gt; +=C2=A0 =C2=A0 if [ ! -e ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig-tar=
get.h ];then<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 mv ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pycon=
fig.h ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig-target.h<br>
&gt; +=C2=A0 =C2=A0 fi<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 install -m 644 ${STAGING_INCDIR_NATIVE}/python${PYTHON_=
BASEVERSION}${PYTHON_ABI}/pyconfig.h \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig-=
native.h<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 cat &gt; ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig.h &l=
t;&lt;ENDOF<br>
&gt; +#if defined (_PYTHON_INCLUDE_TARGET)<br>
&gt; +#include &quot;pyconfig-target.h&quot;<br>
&gt; +#elif defined (_PYTHON_INCLUDE_NATIVE)<br>
&gt; +#include &quot;pyconfig-native.h&quot;<br>
&gt; +#else<br>
&gt; +#error &quot;_PYTHON_INCLUDE_TARGET or _PYTHON_INCLUDE_NATIVE is not =
defined&quot;<br>
&gt; +#endif // End of #if defined (_PYTHON_INCLUDE_TARGET)<br>
&gt; +<br>
&gt; +ENDOF<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 mkdir -p ${S}/third_party/toolchains/yocto/<br>
&gt; +=C2=A0 =C2=A0 sed &quot;s#%%CPU%%#${BAZEL_TARGET_CPU}#g&quot; ${WORKD=
IR}/BUILD.in=C2=A0 &gt; ${S}/third_party/toolchains/yocto/BUILD<br>
&gt; +=C2=A0 =C2=A0 chmod 644 ${S}/third_party/toolchains/yocto/BUILD<br>
&gt; +=C2=A0 =C2=A0 install -m 644 ${WORKDIR}/cc_config.bzl.tpl ${S}/third_=
party/toolchains/yocto/<br>
&gt; +=C2=A0 =C2=A0 install -m 644 ${WORKDIR}/yocto_compiler_configure.bzl =
${S}/third_party/toolchains/yocto/<br>
&gt; +=C2=A0 =C2=A0 install -m 644 ${WORKDIR}/BUILD.yocto_compiler ${S}<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 CT_NAME=3D$(echo ${HOST_PREFIX} | rev | cut -c 2- | rev=
)<br>
&gt; +=C2=A0 =C2=A0 SED_COMMAND=3D&quot;s#%%CT_NAME%%#${CT_NAME}#g&quot;<br=
>
&gt; +=C2=A0 =C2=A0 SED_COMMAND=3D&quot;${SED_COMMAND}; s#%%WORKDIR%%#${WOR=
KDIR}#g&quot;<br>
&gt; +=C2=A0 =C2=A0 SED_COMMAND=3D&quot;${SED_COMMAND}; s#%%YOCTO_COMPILER_=
PATH%%#${BAZEL_OUTPUTBASE_DIR}/external/yocto_compiler#g&quot;<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 sed -i &quot;${SED_COMMAND}&quot; ${S}/BUILD.yocto_comp=
iler \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${S}/WORKSPACE<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 ${TF_CONFIG} \<br>
&gt; +=C2=A0 =C2=A0 ./configure<br>
&gt; +}<br>
&gt; +<br>
&gt; +TF_TARGET_EXTRA ??=3D &quot;&quot;<br>
&gt; +<br>
&gt; +export CUSTOM_BAZEL_FLAGS =3D &quot; \<br>
&gt; +=C2=A0 =C2=A0 ${TF_ARGS_EXTRA} \<br>
&gt; +=C2=A0 =C2=A0 --jobs=3Dauto \<br>
&gt; +=C2=A0 =C2=A0 -c opt \<br>
&gt; +=C2=A0 =C2=A0 --cpu=3D${BAZEL_TARGET_CPU} \<br>
&gt; +=C2=A0 =C2=A0 --crosstool_top=3D@local_config_yocto_compiler//:toolch=
ain \<br>
&gt; +=C2=A0 =C2=A0 --host_crosstool_top=3D@bazel_tools//tools/cpp:toolchai=
n \<br>
&gt; +&quot;<br>
&gt; +<br>
&gt; +do_compile () {<br>
&gt; +=C2=A0 =C2=A0 export CT_NAME=3D$(echo ${HOST_PREFIX} | rev | cut -c 2=
- | rev)<br>
&gt; +=C2=A0 =C2=A0 unset CC<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 ${BAZEL} build \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${CUSTOM_BAZEL_FLAGS} \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 --copt -DTF_LITE_DISABLE_X86_NEON --copt =
-DMESA_EGL_NO_X11_HEADERS \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 tensorflow/lite:libtensorflowlite.so \<br=
>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 tensorflow/lite/tools/benchmark:benchmark=
_model \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 //tensorflow/lite/examples/label_image:la=
bel_image \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${TF_TARGET_EXTRA}<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 # build pip package<br>
&gt; +=C2=A0 =C2=A0 ${S}/tensorflow/lite/tools/pip_package/build_pip_packag=
e_with_bazel.sh<br>
&gt; +<br>
&gt; +}<br>
&gt; +<br>
&gt; +do_install() {<br>
&gt; +=C2=A0 =C2=A0 install -d ${D}${libdir}<br>
&gt; +=C2=A0 =C2=A0 install -m 644 ${S}/bazel-bin/tensorflow/lite/libtensor=
flowlite.so \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${D}${libdir}<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 install -d ${D}${sbindir}<br>
&gt; +=C2=A0 =C2=A0 install -m 755 ${S}/bazel-bin/tensorflow/lite/tools/ben=
chmark/benchmark_model \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${D}${sbindir}<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 install -m 755 ${S}/bazel-bin/tensorflow/lite/examples/=
label_image/label_image \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${D}${sbindir}/label_image<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 install -d ${D}${datadir}/label_image<br>
&gt; +=C2=A0 =C2=A0 install -m 644 ${WORKDIR}/imagenet_slim_labels.txt ${D}=
${datadir}/label_image<br>
&gt; +=C2=A0 =C2=A0 install -m 644 ${WORKDIR}/inception_v3_2016_08_28_froze=
n.pb \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${D}${datadir}/label_image<br>
&gt; +=C2=A0 =C2=A0 install -m 644 ${S}/tensorflow/examples/label_image/dat=
a/grace_hopper.jpg \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${D}${datadir}/label_image<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 install -m 644 ${WORKDIR}/labels_mobilenet_quant_v1_224=
.txt ${D}${datadir}/label_image<br>
&gt; +=C2=A0 =C2=A0 install -m 644 ${WORKDIR}/mobilenet_v1_1.0_224_quant.tf=
lite \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${D}${datadir}/label_image<br>
&gt; +=C2=A0 =C2=A0 install -m 644 ${S}/tensorflow/lite/examples/label_imag=
e/testdata/grace_hopper.bmp \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${D}${datadir}/label_image<br>
&gt; +<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 #echo &quot;Installing pip package&quot;<br>
&gt; +=C2=A0 =C2=A0 install -d ${D}/${PYTHON_SITEPACKAGES_DIR}<br>
&gt; +=C2=A0 =C2=A0 ${STAGING_BINDIR_NATIVE}/pip3 install --disable-pip-ver=
sion-check -v \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 -t ${D}/${PYTHON_SITEPACKAGES_DIR} --no-c=
ache-dir --no-deps \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${S}/tensorflow/lite/tools/pip_package/ge=
n/tflite_pip/python3/dist/tflite_runtime-${PV}-*.whl<br>
&gt; +<br>
&gt; +}<br>
&gt; +<br>
&gt; +FILES:${PN} +=3D &quot;${libdir} ${sbindir} ${datadir}/*&quot;<br>
&gt; +INSANE_SKIP:${PN} +=3D &quot;dev-so \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 already-stripped \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0&quot;<br>
&gt; +<br>
&gt; +SOLIBS =3D &quot;.so&quot;<br>
&gt; +FILES_SOLIBSDEV =3D &quot;&quot;<br>
&gt; +ALLOW_EMPTY:${PN} =3D &quot;1&quot;<br>
&gt; +<br>
&gt; +FILES:${PN} +=3D &quot;${libdir} /home/root/*&quot;<br>
&gt; +<br>
&gt; +inherit siteinfo unsupportarch<br>
&gt; +python __anonymous() {<br>
&gt; +=C2=A0 =C2=A0 if d.getVar(&quot;SITEINFO_ENDIANNESS&quot;) =3D=3D &#3=
9;be&#39;:<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 msg =3D=C2=A0 &quot;\nIt failed to use pr=
e-build model to do predict/inference on big-endian platform&quot;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 msg +=3D &quot;\n(such as qemumips), sinc=
e upstream does not support big-endian very well.&quot;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 msg +=3D &quot;\nDetails: <a href=3D"http=
s://github.com/tensorflow/tensorflow/issues/16364" rel=3D"noreferrer" targe=
t=3D"_blank">https://github.com/tensorflow/tensorflow/issues/16364</a>&quot=
;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.warn(msg)<br>
&gt; +}<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#55634): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/55634" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/55634</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/87873857=
/3616765" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/mt/87873857/3616765</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:randy.macleod@windriver.com" target=3D"_blank=
">randy.macleod@windriver.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; <br>
<br>
<br>
-- <br>
# Randy MacLeod<br>
# Wind River Linux<br>
<br>
</blockquote></div>

--0000000000004066e705d5882752--

