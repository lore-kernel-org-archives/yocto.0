Return-Path: <rahuls.work97@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7285C02192
	for <webhook@archiver.kernel.org>; Wed,  5 Feb 2025 11:52:07 +0000 (UTC)
Subject: Re: [yocto] imx-boot / u-boot for iMX95
To: "David Daniel" <david.daniel@vrag.ch>, yocto@lists.yoctoproject.org
From: rahuls.work97@gmail.com
X-Originating-Location: Mumbai, Maharashtra, IN (45.119.30.48)
X-Originating-Platform: Android Phone Chrome 132
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 05 Feb 2025 03:52:02 -0800
References: <7da91a921033b4465f9b7d28af5665e8d8cc7cfd.camel@vrag.ch>
In-Reply-To: <7da91a921033b4465f9b7d28af5665e8d8cc7cfd.camel@vrag.ch>
Message-ID: <22391.1738756322590050551@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="gY8ayQryuEiBbdwr52hg"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Feb 2025 11:52:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64712

--gY8ayQryuEiBbdwr52hg
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Daniel!
Hope you're well and good.

From a first glance, I reckon the issue you are facing is probably due to t=
he following reasons either in isolation or combination:
1. The vendor's build configuration & your custom build configuration are i=
n conflict with the required infrastructure ( probably vendor dictated infr=
astructure).
2. The boot is probably vendor-locked.
3. Might be a versioning or build order conflict or linker script issue.
Can you check the memory location of the 1st boot sector or "boot-block" fo=
r the vendor build? Compare it with your build and see if you can troublesh=
oot with that approach. And check the first reset location in hex code in c=
ase your device powers up but the boot fails.

P.S. Since you're using a yocto build I would suggest trying out with openB=
MC first then reverse engineer your way into a correct u-boot configuration=
 for your requirements.

Thanks & Regards,
Rahul

--gY8ayQryuEiBbdwr52hg
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Daniel!</div>
<div>Hope you're well and good.</div>
<div>&nbsp;</div>
<div>From a first glance, <span style=3D"background-color: var(--light-mode=
-body-color);">I reckon the issue you are facing is probably due to the fol=
lowing reasons either in isolation or combination:</span></div>
<div><span style=3D"background-color: var(--light-mode-body-color);">1. The=
 vendor's build configuration &amp; your custom build configuration are in =
conflict with the required infrastructure ( probably vendor dictated infras=
tructure).</span></div>
<div>2. The boot is probably vendor-locked.</div>
<div>3. Might be a versioning or build order conflict or linker script issu=
e.</div>
<div>Can you check the memory location of the 1st boot sector or "boot-bloc=
k" for the vendor build? Compare it with your build and see if you can trou=
bleshoot with that approach. And check the first reset location in hex code=
 in case your device powers up but the boot fails.</div>
<div>&nbsp;</div>
<div>P.S. Since you're using a yocto build I would suggest trying out with =
openBMC first then reverse engineer your way into a correct u-boot configur=
ation for your requirements.</div>
<div>&nbsp;</div>
<div>Thanks &amp; Regards,</div>
<div>Rahul</div>

--gY8ayQryuEiBbdwr52hg--

