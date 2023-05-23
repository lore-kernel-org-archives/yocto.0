Return-Path: <cheerala.rohith@spacelabs.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F25C77B75
	for <webhook@archiver.kernel.org>; Tue, 23 May 2023 11:30:39 +0000 (UTC)
Subject: Inquiry Regarding License Compatibility in OpenEmbedded Meta-Security Layer #selinux #yocto #qt5 #kernel #hardknott #bitbake #dunfell #gplv3 #imx8 #linux
To: yocto@lists.yoctoproject.org
From: cheerala.rohith@spacelabs.com
X-Originating-Location: US (136.226.244.101)
X-Originating-Platform: Windows Chrome 113
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 23 May 2023 04:30:37 -0700
Message-ID: <gwM8.1684841437492329746.Wdf3@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="JOPPLS5R6CycLi37piIg"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 May 2023 11:30:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60095

--JOPPLS5R6CycLi37piIg
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am reaching out to seek clarification regarding the license compatibility=
 within theOpenEmbedded *Meta-Security layer* , particularly in relation to=
 the presence of *LGPL, GPL 2.0 and GPL 3.0* licenses and the ambiguity=C2=
=A0in the license information of the ClamAV tool and other Security tools i=
n meta-security layer.

We have noticed that the meta-security layer within the OpenEmbedded projec=
t contains several components with LGPL, GPL 2.0 and GPL 3.0 licenses. Addi=
tionally, there is ambiguity regarding the license information for the *Cla=
mAV* tool, as the OpenEmbedded recipe documentation indicates it is LGPL ( =
https://layers.openembedded.org/layerindex/recipe/32867/ ), while the ClamA=
V documentation specifies GPL 2.0 ( https://github.com/Cisco-Talos/clamav )=
.

1. Please clarify on the ambiguity of license information for recipes and w=
hether these recipes can be integrated into commercial products that necess=
itates strict adherence to licensing requirements.
2. Which license will apply to the Image that is bitbaked with openembedded=
 recipes? will the license be *MIT as Yocto project.*

--JOPPLS5R6CycLi37piIg
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I am reaching out to seek clarification regarding the license compatib=
ility within theOpenEmbedded<strong> Meta-Security layer</strong>, particul=
arly in relation to the presence of <strong>LGPL, GPL 2.0 and GPL 3.0</stro=
ng> licenses and the ambiguity&nbsp;in the license information of the ClamA=
V tool and other Security tools in meta-security layer.</div>
<div>&nbsp;</div>
<div>We have noticed that the meta-security layer within the OpenEmbedded p=
roject contains several components with LGPL, GPL 2.0 and GPL 3.0 licenses.=
 Additionally, there is ambiguity regarding the license information for the=
 <strong>ClamAV</strong> tool, as the OpenEmbedded recipe documentation ind=
icates it is LGPL ( https://layers.openembedded.org/layerindex/recipe/32867=
/ ), while the ClamAV documentation specifies GPL 2.0 ( https://github.com/=
Cisco-Talos/clamav ).</div>
<div>&nbsp;</div>
<div>1. Please clarify on the ambiguity of license information for recipes =
and whether these recipes can be integrated into commercial products that n=
ecessitates strict adherence to licensing requirements.&nbsp;</div>
<div>2. Which license will apply to the Image that is bitbaked with openemb=
edded recipes? will the license be<strong> MIT as Yocto project.</strong></=
div>

--JOPPLS5R6CycLi37piIg--

