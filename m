Return-Path: <ashish.shrikhande@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0C422CAC587
	for <webhook@archiver.kernel.org>; Sat, 13 Sep 2025 07:03:57 +0000 (UTC)
Subject: Re: [yocto] do_package error after building meta-tensorflow and libcamera-apps does not detect tensorflow-lite
To: "ashish shrikhande6" <ashish.shrikhande@gmail.com>, yocto@lists.yoctoproject.org
From: "ashish shrikhande6" <ashish.shrikhande@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (49.205.206.74)
X-Originating-Platform: Linux Firefox 142
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 13 Sep 2025 00:03:49 -0700
References: <22886.1757740136423273518@lists.yoctoproject.org>
In-Reply-To: <22886.1757740136423273518@lists.yoctoproject.org>
Message-ID: <1274.1757747029393560621@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="O6ssSHPErDNOF8N4k8l8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 13 Sep 2025 07:03:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65833

--O6ssSHPErDNOF8N4k8l8
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

ok I was able to solve the issue by replacing

install -d ${D}/${PYTHON_SITEPACKAGES_DIR}
${STAGING_BINDIR_NATIVE}/pip3 install --disable-pip-version-check -v \
-t ${D}/${PYTHON_SITEPACKAGES_DIR} --no-cache-dir --no-deps \
${S}/tensorflow/lite/tools/pip_package/gen/tflite_pip/python3/dist/tflite_r=
untime-${PV}*cp313*.whl

with

install -d ${D}/${PYTHON_SITEPACKAGES_DIR}
${STAGING_BINDIR_NATIVE}/pip3 install --disable-pip-version-check -v \
--user --no-cache-dir --no-deps \
${S}/tensorflow/lite/tools/pip_package/gen/tflite_pip/python3/dist/tflite_r=
untime-${PV}*cp313*.whl

I removed -t and replaced it with --user. Is this correct way?

Also now libcamera-apps does not detect tflite?

--O6ssSHPErDNOF8N4k8l8
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>ok I was able to solve the issue by replacing&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; install -d ${D}/${PYTHON_SITEPACKAGES_DIR}<br />&nbsp; &=
nbsp; ${STAGING_BINDIR_NATIVE}/pip3 install --disable-pip-version-check -v =
\<br />&nbsp; &nbsp; &nbsp; &nbsp; -t ${D}/${PYTHON_SITEPACKAGES_DIR} --no-=
cache-dir --no-deps \<br />&nbsp; &nbsp; &nbsp; &nbsp; ${S}/tensorflow/lite=
/tools/pip_package/gen/tflite_pip/python3/dist/tflite_runtime-${PV}*cp313*.=
whl</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>with&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; install -d ${D}/${PYTHON_SITEPACKAGES_DIR}<br />&nbsp; &=
nbsp; ${STAGING_BINDIR_NATIVE}/pip3 install --disable-pip-version-check -v =
\<br />&nbsp; &nbsp; &nbsp; &nbsp; --user --no-cache-dir --no-deps \<br />&=
nbsp; &nbsp; &nbsp; &nbsp; ${S}/tensorflow/lite/tools/pip_package/gen/tflit=
e_pip/python3/dist/tflite_runtime-${PV}*cp313*.whl</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>I removed -t and replaced it with --user. Is this correct way?</div>
<div>&nbsp;</div>
<div>Also now libcamera-apps does not detect tflite?</div>

--O6ssSHPErDNOF8N4k8l8--

