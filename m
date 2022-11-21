Return-Path: <kenth.eriksson@infinera.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4A5BC4332F
	for <webhook@archiver.kernel.org>; Mon, 21 Nov 2022 14:31:57 +0000 (UTC)
Subject: Reproducible builds not working with musl?
To: yocto@lists.yoctoproject.org
From: "Kenth Eriksson" <kenth.eriksson@infinera.com>
X-Originating-Location: Huddinge, Stockholm County, SE (217.208.192.91)
X-Originating-Platform: Windows Firefox 102
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 21 Nov 2022 06:31:53 -0800
Message-ID: <d1OW.1669041113310591951.07DB@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="CuwzLBSGAdLTjsmAGDUg"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Nov 2022 14:31:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58600

--CuwzLBSGAdLTjsmAGDUg
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Having trouble with reproducible builds in yocto on dunfell release with mu=
sl as libc. E.g. I can see that the build path for musl crti assembler file=
 is leaking through and becomes visible when I do strings on libraries and =
binaries.

$ strings /opt/infn-xr/1.0/sysroots/aarch64-xr-linux-musl/usr/lib64/.debug/=
libcrypto.so.1.1 | grep crt[a-z]\.o
/data/jenkins/workspace/XR_yocto-xr_master/build/build/infn-xr/gmcu/tmp/wor=
k/aarch64-xr-linux-musl/openssl/1.1.1l-r0/recipe-sysroot/usr/lib64/crti.o
/data/jenkins/workspace/XR_yocto-xr_master/build/build/infn-xr/gmcu/tmp/wor=
k/aarch64-xr-linux-musl/openssl/1.1.1l-r0/recipe-sysroot/usr/lib64/crtn.o
$

Is this a known issue? Yocto passes -fmacro-prefix-map and -fdebug-prefix-m=
ap as part of DEBUG_PREFIX_MAP to eliminate paths to WORKDIR. But it looks =
as that fails for the musl assembler file?

--CuwzLBSGAdLTjsmAGDUg
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p class=3D"MsoPlainText">Having trouble with reproducible builds in yocto =
on dunfell release with musl as libc. E.g. I can see that the build path fo=
r musl crti assembler file is leaking through and becomes visible when I do=
 strings on libraries and binaries.<br /><br />$ strings /opt/infn-xr/1.0/s=
ysroots/aarch64-xr-linux-musl/usr/lib64/.debug/libcrypto.so.1.1 | grep crt[=
a-z]\.o <br />/data/jenkins/workspace/XR_yocto-xr_master/build/build/infn-x=
r/gmcu/tmp/work/aarch64-xr-linux-musl/openssl/1.1.1l-r0/recipe-sysroot/usr/=
lib64/crti.o<br />/data/jenkins/workspace/XR_yocto-xr_master/build/build/in=
fn-xr/gmcu/tmp/work/aarch64-xr-linux-musl/openssl/1.1.1l-r0/recipe-sysroot/=
usr/lib64/crtn.o <br />$<br /><br />Is this a known issue? Yocto passes -fm=
acro-prefix-map and -fdebug-prefix-map as part of DEBUG_PREFIX_MAP to elimi=
nate paths to WORKDIR. But it looks as that fails for the musl assembler fi=
le?</p>
<p class=3D"MsoPlainText">&nbsp;</p>

--CuwzLBSGAdLTjsmAGDUg--

