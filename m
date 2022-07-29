Return-Path: <poornesh.g@mindteck.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15136C00144
	for <webhook@archiver.kernel.org>; Fri, 29 Jul 2022 06:37:02 +0000 (UTC)
Subject: Re : rdepends upon non-existent task do_package_write_deb
To: yocto@lists.yoctoproject.org
From: poornesh.g@mindteck.com
X-Originating-Location: Kolkata, West Bengal, IN (182.71.223.114)
X-Originating-Platform: Linux Firefox 102
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 28 Jul 2022 23:36:52 -0700
Message-ID: <Lysv.1659076612285788528.9LDe@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Yq3IEjH1HDrDpO6tUdxs"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Jul 2022 06:37:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57687

--Yq3IEjH1HDrDpO6tUdxs
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Greetings !
I am trying to add go.opentelemetry.io-proto-otlp-native package in yocto (=
krikstone) .

When I give : *bitbake go.opentelemetry.io-proto-otlp-native* , it is succe=
ssfully compiling .=C2=A0 But when I trying to add in *local.conf* as *IMAG=
E_INSTALL:append +=3D "go.opentelemetry.io-proto-otlp-native"* , it is givi=
ng the below error .

-------------------------------------------------

ERROR: Task do_populate_sdk in /home/user/yocto/imx_krikstone/sources/poky/=
meta/recipes-core/images/core-image-minimal.bb rdepends upon non-existent t=
ask do_package_write_deb in /home/user/yocto/imx_krikstone/sources/meta-sca=
/recipes-go/go.opentelemetry.io-proto-otlp-native_0.12.0.bb
ERROR: Command execution failed: 1

-------------------------------------------------

Requesting you to help me out to solve this issue .

Thanks in advance .

--Yq3IEjH1HDrDpO6tUdxs
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Greetings !<br />I am trying to add go.opentelemetry.io-proto-otlp-nativ=
e package in yocto (krikstone) .</p>
<p>When I give :&nbsp;<strong> bitbake go.opentelemetry.io-proto-otlp-nativ=
e</strong>&nbsp; , it is successfully compiling .&nbsp; But when I trying t=
o add in <strong>local.conf</strong> as <strong>IMAGE_INSTALL:append +=3D "=
go.opentelemetry.io-proto-otlp-native"</strong> , it is giving the below er=
ror .<br /><br />-------------------------------------------------<br /><br=
 />ERROR: Task do_populate_sdk in /home/user/yocto/imx_krikstone/sources/po=
ky/meta/recipes-core/images/core-image-minimal.bb rdepends upon non-existen=
t task do_package_write_deb in /home/user/yocto/imx_krikstone/sources/meta-=
sca/recipes-go/go.opentelemetry.io-proto-otlp-native_0.12.0.bb<br />ERROR: =
Command execution failed: 1<br /><br />------------------------------------=
-------------<br /><br />Requesting you to help me out to solve this issue =
.<br /><br />Thanks in advance .<br /><br /></p>

--Yq3IEjH1HDrDpO6tUdxs--

