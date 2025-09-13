Return-Path: <ashish.shrikhande@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAFCCAC587
	for <webhook@archiver.kernel.org>; Sat, 13 Sep 2025 05:09:03 +0000 (UTC)
Subject: Re: [yocto] do_package error after building meta-tensorflow and libcamera-apps does not detect tensorflow-lite
To: "Khem Raj" <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
From: "ashish shrikhande6" <ashish.shrikhande@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (49.205.206.74)
X-Originating-Platform: Linux Firefox 142
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 12 Sep 2025 22:08:56 -0700
References: <CAMKF1sq1YXOkFd=OQEuaUp8qt4GMYaRDuxqWp8Qr+My+Gu57qw@mail.gmail.com>
In-Reply-To: <CAMKF1sq1YXOkFd=OQEuaUp8qt4GMYaRDuxqWp8Qr+My+Gu57qw@mail.gmail.com>
Message-ID: <22886.1757740136423273518@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="yHztyYhik8PvTxlkSgE2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 13 Sep 2025 05:09:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65832

--yHztyYhik8PvTxlkSgE2
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

the cmd here in install is trying to install a python wheel:

${STAGING_BINDIR_NATIVE}/pip3 install =C2=A0--root-user-action=3Dignore =C2=
=A0--disable-pip-version-check -v \
-t ${D}/${PYTHON_SITEPACKAGES_DIR} --no-cache-dir --no-deps \
${S}/tensorflow/lite/tools/pip_package/gen/tflite_pip/python3/dist/tflite_r=
untime-${PV}*cp313*.whl

which is causing this issue. How to change the ownership in such a case?

--yHztyYhik8PvTxlkSgE2
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>the cmd here in install is trying to install a python wheel:</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; ${STAGING_BINDIR_NATIVE}/pip3 install &nbsp;--root-user-=
action=3Dignore &nbsp;--disable-pip-version-check -v \<br />&nbsp; &nbsp; &=
nbsp; &nbsp; -t ${D}/${PYTHON_SITEPACKAGES_DIR} --no-cache-dir --no-deps \<=
br />&nbsp; &nbsp; &nbsp; &nbsp; ${S}/tensorflow/lite/tools/pip_package/gen=
/tflite_pip/python3/dist/tflite_runtime-${PV}*cp313*.whl</div>
<div>&nbsp;</div>
<div>which is causing this issue. How to change the ownership in such a cas=
e?</div>

--yHztyYhik8PvTxlkSgE2--

