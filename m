Return-Path: <jstephan@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE06DC433F5
	for <webhook@archiver.kernel.org>; Tue, 21 Dec 2021 08:43:11 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by mx.groups.io with SMTP id smtpd.web08.3594.1640076190353628588
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Dec 2021 00:43:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baylibre-com.20210112.gappssmtp.com header.s=20210112
 header.b=a7i2bXJm;
 spf=pass (domain: baylibre.com, ip: 209.85.128.68,
 mailfrom: jstephan@baylibre.com)
Received: by mail-wm1-f68.google.com with SMTP id
 a83-20020a1c9856000000b00344731e044bso1564880wme.1
        for <yocto@lists.yoctoproject.org>;
 Tue, 21 Dec 2021 00:43:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/nljxcXhzh9aQdsp2InFXAyv+Dwr7RrrMkjnJgy1g/A=;
        b=a7i2bXJmqpOWoGz402IlqjhOM2bwPgEJClTqtAFhKiEBhJ147MFNuvC5tcs4GShyxd
         4tuauXLLzPL4jip8up4pi35XISDr0L0sEKBbcEMqd9x1DhakcfQniD7litls5UwmTNJl
         DmndrTwNItiuCB1Wkm0qtfVM+w89xc0Klx3UwkGkamWRviNK3cHqIcrzqut3TXIp6wrt
         yqp9yx3sinsW7sPj83Cp0eQpocy35eGLhqKX3b1yd9rAbtTJoyS2hTrTw+aeNp0PVTgu
         rVCeBd4KBagvWLHA0TXCIQf1PXjRYHCb/9u+E4FWLJcqzybJceZQglbydYZSaIwejMRo
         ewcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/nljxcXhzh9aQdsp2InFXAyv+Dwr7RrrMkjnJgy1g/A=;
        b=m1jkBApDyZ54z/YDlBzKoPitXNXGI/16AmccACiSMCZkivZxkFvifLUzhu4jrxJBqe
         6XKnqzPldTxtOJ05Cl0QS1G+a28oPKk1qVk6z09ws91MBQ7fnIC2l/5uPEzJSxXAXEkE
         CMyfq4IlfpZucY+T7jsYtrlrXby7qzqHH/TBhL7r7PkUai9GXcIWmhHuJDyQO1rQq9kV
         7X/FeX6sOTKZlayiRcu+WbKweiv3bDULiB12A3rC15VDUA9qhqweK1Zn/U+eKts6JmE1
         IudhMy0NyzKc6xI3OsYJi95//x7t0NvETJy4WfdzZXqYK0pfCfwM/BhD1X5wnL9eQ2kS
         gqKw==
X-Gm-Message-State: AOAM532QgRFfoRm7VEshaddP1F65Vt7yl43Nyk6f/3FmAaT1EL5S0uA7
	IEQREn8W+Q9YfCbi3WfDbXLiF6WZ2J3ia/G5
X-Google-Smtp-Source: 
 ABdhPJzWXoEoRi3ii795OMHIuyxSuZi8ZtJb4PKJ+r4ZeIIqeBXdnNAHQbAPNxWkrUs/osqEpYuVKQ==
X-Received: by 2002:a1c:f20e:: with SMTP id s14mr1672547wmc.186.1640076188661;
        Tue, 21 Dec 2021 00:43:08 -0800 (PST)
Received: from localhost.localdomain (179.160.117.78.rev.sfr.net.
 [78.117.160.179])
        by smtp.gmail.com with ESMTPSA id
 d62sm1680617wmd.3.2021.12.21.00.43.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Dec 2021 00:43:08 -0800 (PST)
From: Julien STEPHAN <jstephan@baylibre.com>
To: yocto@lists.yoctoproject.org
Cc: Julien STEPHAN <jstephan@baylibre.com>
Subject: [meta-tensorflow][PATCH 3/3] tensorflow-lite: add recipe
Date: Tue, 21 Dec 2021 09:42:22 +0100
Message-Id: <20211221084222.1442456-3-jstephan@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211221084222.1442456-1-jstephan@baylibre.com>
References: <20211221084222.1442456-1-jstephan@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Dec 2021 08:43:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55634

Adding 2.6.1 tensorflow-lite recipe.
This recipe is directly based on the corresponding 2.6.1 tensorflow
recipe.

It has been build tested with latest honister and tested on
several mediatek soc using benchmark_model and label_image (C++ and
python)

Signed-off-by: Julien STEPHAN <jstephan@baylibre.com>
---
 .../tensorflow/tensorflow-lite_2.6.1.bb       | 156 ++++++++++++++++++
 1 file changed, 156 insertions(+)
 create mode 100644 recipes-framework/tensorflow/tensorflow-lite_2.6.1.bb

diff --git a/recipes-framework/tensorflow/tensorflow-lite_2.6.1.bb b/recipes-framework/tensorflow/tensorflow-lite_2.6.1.bb
new file mode 100644
index 0000000..104e5a3
--- /dev/null
+++ b/recipes-framework/tensorflow/tensorflow-lite_2.6.1.bb
@@ -0,0 +1,156 @@
+include tensorflow.inc
+
+SRC_URI += " \
+           file://0001-add-yocto-toolchain-to-support-cross-compiling.patch \
+           file://0001-fix-build-tensorflow-lite-examples-label_image-label.patch \
+           file://0001-label_image-tweak-default-model-location.patch \
+           file://0001-label_image.lite-tweak-default-model-location.patch \
+           file://0001-CheckFeatureOrDie-use-warning-to-avoid-die.patch \
+           file://0001-support-32-bit-x64-and-arm-for-yocto.patch \
+           file://0001-Revert-set-distinct_host_configuration-false-by-defa.patch \
+           file://0001-fix-default-Bazel-toolchain-not-work.patch \
+           file://0001-distutils-is-deprecated-in-Python-3.10-cross.patch \
+           file://BUILD.in \
+           file://BUILD.yocto_compiler \
+           file://cc_config.bzl.tpl \
+           file://yocto_compiler_configure.bzl \
+          "
+
+SRC_URI += "https://storage.googleapis.com/download.tensorflow.org/models/inception_v3_2016_08_28_frozen.pb.tar.gz;name=model-inv3"
+SRC_URI[model-inv3.md5sum] = "a904ddf15593d03c7dd786d552e22d73"
+SRC_URI[model-inv3.sha256sum] = "7045b72a954af4dce36346f478610acdccbf149168fa25c78e54e32f0c723d6d"
+
+SRC_URI += "https://storage.googleapis.com/download.tensorflow.org/models/tflite/mobilenet_v1_1.0_224_quant_and_labels.zip;name=model-mobv1"
+SRC_URI[model-mobv1.md5sum] = "38ac0c626947875bd311ef96c8baab62"
+SRC_URI[model-mobv1.sha256sum] = "2f8054076cf655e1a73778a49bd8fd0306d32b290b7e576dda9574f00f186c0f"
+
+RDEPENDS:${PN} += " \
+    python3 \
+    python3-core \
+    python3-numpy \
+"
+
+export PYTHON_BIN_PATH="${PYTHON}"
+export PYTHON_LIB_PATH="${STAGING_LIBDIR_NATIVE}/${PYTHON_DIR}/site-packages"
+
+export CROSSTOOL_PYTHON_INCLUDE_PATH="${STAGING_INCDIR}/python${PYTHON_BASEVERSION}${PYTHON_ABI}"
+
+do_configure:append () {
+    if [ ! -e ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig-target.h ];then
+        mv ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig.h ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig-target.h
+    fi
+
+    install -m 644 ${STAGING_INCDIR_NATIVE}/python${PYTHON_BASEVERSION}${PYTHON_ABI}/pyconfig.h \
+       ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig-native.h
+
+    cat > ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig.h <<ENDOF
+#if defined (_PYTHON_INCLUDE_TARGET)
+#include "pyconfig-target.h"
+#elif defined (_PYTHON_INCLUDE_NATIVE)
+#include "pyconfig-native.h"
+#else
+#error "_PYTHON_INCLUDE_TARGET or _PYTHON_INCLUDE_NATIVE is not defined"
+#endif // End of #if defined (_PYTHON_INCLUDE_TARGET)
+
+ENDOF
+
+    mkdir -p ${S}/third_party/toolchains/yocto/
+    sed "s#%%CPU%%#${BAZEL_TARGET_CPU}#g" ${WORKDIR}/BUILD.in  > ${S}/third_party/toolchains/yocto/BUILD
+    chmod 644 ${S}/third_party/toolchains/yocto/BUILD
+    install -m 644 ${WORKDIR}/cc_config.bzl.tpl ${S}/third_party/toolchains/yocto/
+    install -m 644 ${WORKDIR}/yocto_compiler_configure.bzl ${S}/third_party/toolchains/yocto/
+    install -m 644 ${WORKDIR}/BUILD.yocto_compiler ${S}
+
+    CT_NAME=$(echo ${HOST_PREFIX} | rev | cut -c 2- | rev)
+    SED_COMMAND="s#%%CT_NAME%%#${CT_NAME}#g"
+    SED_COMMAND="${SED_COMMAND}; s#%%WORKDIR%%#${WORKDIR}#g"
+    SED_COMMAND="${SED_COMMAND}; s#%%YOCTO_COMPILER_PATH%%#${BAZEL_OUTPUTBASE_DIR}/external/yocto_compiler#g"
+
+    sed -i "${SED_COMMAND}" ${S}/BUILD.yocto_compiler \
+                            ${S}/WORKSPACE
+
+    ${TF_CONFIG} \
+    ./configure
+}
+
+TF_TARGET_EXTRA ??= ""
+
+export CUSTOM_BAZEL_FLAGS = " \
+    ${TF_ARGS_EXTRA} \
+    --jobs=auto \
+    -c opt \
+    --cpu=${BAZEL_TARGET_CPU} \
+    --crosstool_top=@local_config_yocto_compiler//:toolchain \
+    --host_crosstool_top=@bazel_tools//tools/cpp:toolchain \
+"
+
+do_compile () {
+    export CT_NAME=$(echo ${HOST_PREFIX} | rev | cut -c 2- | rev)
+    unset CC
+
+    ${BAZEL} build \
+        ${CUSTOM_BAZEL_FLAGS} \
+        --copt -DTF_LITE_DISABLE_X86_NEON --copt -DMESA_EGL_NO_X11_HEADERS \
+        tensorflow/lite:libtensorflowlite.so \
+        tensorflow/lite/tools/benchmark:benchmark_model \
+        //tensorflow/lite/examples/label_image:label_image \
+        ${TF_TARGET_EXTRA}
+
+    # build pip package
+    ${S}/tensorflow/lite/tools/pip_package/build_pip_package_with_bazel.sh
+
+}
+
+do_install() {
+    install -d ${D}${libdir}
+    install -m 644 ${S}/bazel-bin/tensorflow/lite/libtensorflowlite.so \
+        ${D}${libdir}
+
+    install -d ${D}${sbindir}
+    install -m 755 ${S}/bazel-bin/tensorflow/lite/tools/benchmark/benchmark_model \
+        ${D}${sbindir}
+
+    install -m 755 ${S}/bazel-bin/tensorflow/lite/examples/label_image/label_image \
+        ${D}${sbindir}/label_image
+
+    install -d ${D}${datadir}/label_image
+    install -m 644 ${WORKDIR}/imagenet_slim_labels.txt ${D}${datadir}/label_image
+    install -m 644 ${WORKDIR}/inception_v3_2016_08_28_frozen.pb \
+        ${D}${datadir}/label_image
+    install -m 644 ${S}/tensorflow/examples/label_image/data/grace_hopper.jpg \
+        ${D}${datadir}/label_image
+
+    install -m 644 ${WORKDIR}/labels_mobilenet_quant_v1_224.txt ${D}${datadir}/label_image
+    install -m 644 ${WORKDIR}/mobilenet_v1_1.0_224_quant.tflite \
+        ${D}${datadir}/label_image
+    install -m 644 ${S}/tensorflow/lite/examples/label_image/testdata/grace_hopper.bmp \
+        ${D}${datadir}/label_image
+
+
+    #echo "Installing pip package"
+    install -d ${D}/${PYTHON_SITEPACKAGES_DIR}
+    ${STAGING_BINDIR_NATIVE}/pip3 install --disable-pip-version-check -v \
+        -t ${D}/${PYTHON_SITEPACKAGES_DIR} --no-cache-dir --no-deps \
+        ${S}/tensorflow/lite/tools/pip_package/gen/tflite_pip/python3/dist/tflite_runtime-${PV}-*.whl
+
+}
+
+FILES:${PN} += "${libdir} ${sbindir} ${datadir}/*"
+INSANE_SKIP:${PN} += "dev-so \
+                      already-stripped \
+                     "
+
+SOLIBS = ".so"
+FILES_SOLIBSDEV = ""
+ALLOW_EMPTY:${PN} = "1"
+
+FILES:${PN} += "${libdir} /home/root/*"
+
+inherit siteinfo unsupportarch
+python __anonymous() {
+    if d.getVar("SITEINFO_ENDIANNESS") == 'be':
+        msg =  "\nIt failed to use pre-build model to do predict/inference on big-endian platform"
+        msg += "\n(such as qemumips), since upstream does not support big-endian very well."
+        msg += "\nDetails: https://github.com/tensorflow/tensorflow/issues/16364"
+        bb.warn(msg)
+}
-- 
2.34.1


