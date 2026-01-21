Return-Path: <paul@pbarker.dev>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 596D7C44536
	for <webhook@archiver.kernel.org>; Wed, 21 Jan 2026 13:39:32 +0000 (UTC)
Received: from fhigh-a4-smtp.messagingengine.com (fhigh-a4-smtp.messagingengine.com [103.168.172.155])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.11896.1769002765532358011
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jan 2026 05:39:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pbarker.dev header.s=fm1 header.b=OpUev0FG;
 dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=JT0NJZ4q;
 spf=pass (domain: pbarker.dev, ip: 103.168.172.155, mailfrom: paul@pbarker.dev)
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 971681400090;
	Wed, 21 Jan 2026 08:39:24 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-01.internal (MEProxy); Wed, 21 Jan 2026 08:39:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pbarker.dev; h=
	cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm1; t=1769002764; x=1769089164; bh=7bSNR6PmgS
	zu45Mzw406STBOe1dRrQUmfetJycdkwvg=; b=OpUev0FGfS5EaFNWAl7drmrNd+
	jGR5pu52V2aXCDWA4CcfX5s3PXl94S8ZWhxiMFyUGYkl/W/jUTOekEcGb4aX031L
	l9BdraCMfRwX2D4mt4pWNzPLyTFW5zBo0XFAtDKftPnlESwI0NyGilJrU7X16OTa
	xqDOWbsMQ+h0bVGSKxH0EiS02D6P3qPZeu62LBDpRw9hRIdFSgjHwbugSolLzqCE
	uTgSTv9tpS4aOG47R0a/xPIuz1ZzR+lZGU6rKcnWvCk3dBpt0mcmWJrD9l5+rPR5
	a7Uln2aiZXCZ4gns/oSdYWbgGO6r9+dFpxf5PcLYWxMrzxsoNlz+dKb2cgJw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1769002764; x=1769089164; bh=7bSNR6PmgSzu45Mzw406STBOe1dRrQUmfet
	Jycdkwvg=; b=JT0NJZ4qUssIauu8HRGfxGr+7ZbbF4vzm+UK5hABHSbIHFAx4JU
	c/n30iUfepQO1TJgRGaLEFP1SZeKE5nboJNDtg5GuNDwVlRQKPgprHcpo8PrjK0K
	2x52V70S3dV0IILqJAHbsbtakCB4Y7JjOpSXn9QbqrF8HwgUibPJmE+5Z66Ao3Ac
	7SnWc/wUZcNaoKg0dADXfkk4LftsoDt5unX8cqhpioPtRZhII0A+rxJ+u1WF57Fi
	9OG69jVkPhd1aqgdOxbFMyGIeItu6uqeOoGBVsVAwgAxcRwirzwrS2IgmzSqbe+6
	HcytjwzaUnXJnzR5o83tPbESjHtt4IX2n1Q==
X-ME-Sender: <xms:C9dwab8shqOYapLF7FA8YGCNDtd9HrVzGMmDMh_w4F8yJ5UtWBMAJA>
    <xme:C9dwaZPRCZReZB85H4yDL2qirkWut-77tnfm0ZEYhocIB6z0oDDIHukMATCs2vUj5
    JZKEZV-K2EHBG5FbSszxAMEEoHxoyw_QEPDzlKnCEyMyUMQJ5IAag>
X-ME-Received: <xmr:C9dwaZEKEr3zfWiMC8TOa5Vgo1H3iQEP0U6wbOWjhOdgMVTQh5Emstgfmdg4lCHiIc_MBsgV8EFMZKqVcOJqJYwfo2cbBkRrKpRgLYE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddugeefgedvucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepkffuhffvffgjfhgtfgggsehgtderredtreejnecuhfhrohhmpefrrghulhcuuegr
    rhhkvghruceophgruhhlsehpsggrrhhkvghrrdguvghvqeenucggtffrrghtthgvrhhnpe
    dugfeiheehteeikedvgfduvdeufeejffekledthffguedvjeefleeigffgheeivdenucff
    ohhmrghinhephihotghtohhprhhojhgvtghtrdhorhhgpdhkvghrnhgvlhdrohhrghdpoh
    hpvghnvghmsggvugguvggurdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghr
    rghmpehmrghilhhfrhhomhepphgruhhlsehpsggrrhhkvghrrdguvghvpdhnsggprhgtph
    htthhopeehpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopeihohgtthhosehlihhs
    thhsrdihohgtthhophhrohhjvggtthdrohhrghdprhgtphhtthhopehnihhkohdrmhgruh
    hnohesvhgrihhsrghlrgdrtghomhdprhgtphhtthhopegthhgvvgdrhigrnhhgrdhlvggv
    sehinhhtvghlrdgtohhmpdhrtghpthhtohephihotghtohdqrghnnhhouhhntggvsehlih
    hsthhsrdihohgtthhophhrohhjvggtthdrohhrghdprhgtphhtthhopeihohgrnhhnrdgt
    ohhnghgrlhesshhmihhlvgdrfhhr
X-ME-Proxy: <xmx:C9dwaXQf1TV9ZLAb1Bx3sEDBTRFyCDFaM6Xw4jQbl7J6oZ2QEU9Yaw>
    <xmx:C9dwaWvkKVMXHsLvYWc0DUqSvPI5PEiDIDycS76RxnnuW3fcy-DXdg>
    <xmx:C9dwafKkI2BGdpJekXtHo3UAEbXcETjGeOy1S1E0z0jmMPfSzoooIQ>
    <xmx:C9dwabkBOil4AwOmeVK7hAfaCx7nJp8An0mz7bt_CLI9AfnQ8Vp8YA>
    <xmx:DNdwae1M3qwU_bt1J4E4y1Zhodbv5fuyuWbfnmZUAtWobXDzYsOj9GGf>
Feedback-ID: i51494658:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Jan 2026 08:39:22 -0500 (EST)
Message-ID: <290988d9663a7b5f9ee57e1fe0c393ebba9d5696.camel@pbarker.dev>
Subject: Re: [yocto] [ANNOUNCEMENT] Yocto Project 5.0.15(scarthgap-5.0.15)
 is Released
From: Paul Barker <paul@pbarker.dev>
To: yocto@lists.yoctoproject.org, niko.mauno@vaisala.com, 
 chee.yang.lee@intel.com, "yocto-announce@lists.yoctoproject.org"
 <yocto-announce@lists.yoctoproject.org>, Yoann Congal
 <yoann.congal@smile.fr>
Date: Wed, 21 Jan 2026 13:39:17 +0000
In-Reply-To: <39e25689-f4d2-40d3-8495-00aadb0c331e@vaisala.com>
References: 
	<BL4PR11MB8797B987D5F7D6B03DBACE5EB996A@BL4PR11MB8797.namprd11.prod.outlook.com>
	 <39e25689-f4d2-40d3-8495-00aadb0c331e@vaisala.com>
Autocrypt: addr=paul@pbarker.dev; prefer-encrypt=mutual;
 keydata=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
 LUewj8JVy0aJsGTwI4invl
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-AwBbA/dNq/IF6uMpbGE+"
User-Agent: Evolution 3.52.3-0ubuntu1.1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Jan 2026 13:39:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66172


--=-AwBbA/dNq/IF6uMpbGE+
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2026-01-21 at 04:40 -0800, Niko Mauno via lists.yoctoproject.org
wrote:
> On 1/21/26 12:02 PM, Lee Chee Yang via lists.yoctoproject.org wrote:
> > Hi
> >=20
> > We are pleased to announce the Yocto Project 5.0.15 Release is now avai=
lable for download.
> >=20
> > https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/poky-729=
83ac391008ebceb45edc7a8f0f6d5f4fe715c.tar.bz2 <https://downloads.yoctoproje=
ct.org/releases/yocto/yocto-5.0.15/poky-72983ac391008ebceb45edc7a8f0f6d5f4f=
e715c.tar.bz2>
> > https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/poky-72983ac391008e=
bceb45edc7a8f0f6d5f4fe715c.tar.bz2 <https://mirrors.kernel.org/yocto/yocto/=
yocto-5.0.15/poky-72983ac391008ebceb45edc7a8f0f6d5f4fe715c.tar.bz2>
> >=20
> > A gpg signed version of these release notes is available at:
> >=20
> > https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/RELEASEN=
OTES <https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/RELEAS=
ENOTES>
> >=20
> > Full Test Report:
> >=20
> > https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/testrepo=
rt.txt <https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/test=
report.txt>
> >=20
> > Thank you for everyone's contributions to this release.
> >=20
> > Chee Yang
> > chee.yang.lee@intel.com
> > Yocto Project Build and Release
> >=20
> >=20
> > --------------------------
> > yocto-5.0.15 Release Notes
> > --------------------------
> >=20
> > Users of Alma 9, Rocky 9 and Centos Stream 9 rolling releases have seen=
 obtuse failures in the execution of tar in various tasks after recent host=
 distro updates. These newer versions of tar contain a CVE fix
> > which uses a new glibc call/syscall (openat2). The fix is to update to =
a newer pseudo version which handles this syscall. This is not included in =
this stable release but we aim to include it in the next one.
> >=20
> > --------------------------
> >  =C2=A0Repositories/Downloads
> > --------------------------
> >=20
> > Repository Name: yocto-docs
> > Repository Location: https://git.yoctoproject.org/yocto-docs
> > Branch: scarthgap
> > Tag: yocto-5.0.15
> > Git Revision: d84d916d4fc505e8386693306b6a90b0064c0518
> > Release Artefact: yocto-docs-d84d916d4fc505e8386693306b6a90b0064c0518
> > sha: 9020251d0bc11277df0afc1baad05566433d665f31c0b3a45e6cd01c0de6c099
> > Download Locations:
> > https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/yocto-do=
cs-d84d916d4fc505e8386693306b6a90b0064c0518.tar.bz2
> > https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/yocto-docs-d84d916d=
4fc505e8386693306b6a90b0064c0518.tar.bz2
> >=20
> > Repository Name: poky
> > Repository Location: https://git.yoctoproject.org/poky
> > Branch: scarthgap
> > Tag: yocto-5.0.15
> > Git Revision: 72983ac391008ebceb45edc7a8f0f6d5f4fe715c
> > Release Artefact: poky-72983ac391008ebceb45edc7a8f0f6d5f4fe715c
> > sha: d5336d1ef1dd48b88cb92748c669360901004d458b7786ddc1918da12fef4edd
> > Download Locations:
> > https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/poky-729=
83ac391008ebceb45edc7a8f0f6d5f4fe715c.tar.bz2
> > https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/poky-72983ac391008e=
bceb45edc7a8f0f6d5f4fe715c.tar.bz2
> >=20
> > Repository Name: openembedded-core
> > Repository Location: https://git.openembedded.org/openembedded-core
> > Branch: scarthgap
> > Tag: yocto-5.0.15
> > Git Revision: 6988157ad983978ffd6b12bcefedd4deaffdbbd1
> > Release Artefact: oecore-6988157ad983978ffd6b12bcefedd4deaffdbbd1
> > sha: 98a691ce87f9aba57007e91b56bbe0af6d6c8f62aacb68820026478ff8e1f819
> > Download Locations:
> > https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/oecore-6=
988157ad983978ffd6b12bcefedd4deaffdbbd1.tar.bz2
> > https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/oecore-6988157ad983=
978ffd6b12bcefedd4deaffdbbd1.tar.bz2
> >=20
> > Repository Name: meta-yocto
> > Repository Location: https://git.yoctoproject.org/meta-yocto
> > Branch: scarthgap
> > Tag: yocto-5.0.15
> > Git Revision: e1363aa3333cda3a4ae4706ce6577b987ba3a815
> > Release Artefact: meta-yocto-e1363aa3333cda3a4ae4706ce6577b987ba3a815
> > sha: 91a1f0c65bd4fff4af2aef4b583d1366efc347726feb36a4d2cdfb480774cc19
> > Download Locations:
> > https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/meta-yoc=
to-e1363aa3333cda3a4ae4706ce6577b987ba3a815.tar.bz2
> > https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/meta-yocto-e1363aa3=
333cda3a4ae4706ce6577b987ba3a815.tar.bz2
>=20
> Hi, curious if the 'yocto-5.0.15' tag for meta-yocto is on appropriate co=
mmit, since the layer compatibility at that point seems to be whinlatter, n=
ot scarthgap: https://git.yoctoproject.org/meta-yocto/tree/meta-poky/conf/l=
ayer.conf?h=3Dyocto-5.0.15#n12
>=20
> This seems to induce following error, when bitbake is issued:
>=20
>    ERROR: Layer yocto is not compatible with the core layer which only su=
pports these series: scarthgap (layer is compatible with whinlatter)
>=20
> BR, Niko

Hi Niko,

This does look wrong, thanks for the report! We're looking in to it...

In meta-yocto, the commit that should have been tagged is
9bb6e6e8b016a0c9dfe290369a6ed91ef4020535. In the poky repository that
commit was picked up and everything looks right.

We think we've found the root cause of the wrong commit being tagged,
patches for the autobuilder configuration are incoming.

Best regards,

--=20
Paul Barker


--=-AwBbA/dNq/IF6uMpbGE+
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iIcEABYKAC8WIQSzjPXf5Y1BDWhU2iCrY1Tsnbr0bgUCaXDXBREccGF1bEBwYmFy
a2VyLmRldgAKCRCrY1Tsnbr0btBEAQDTILEhESMsIwcMSRSXQf6mfy0smzQq2dYo
VB8x+Pn8JwEA+zpmqC2wAcNJ6MH0o2HdBlcpveUukj+lQX5dmp5mZQI=
=wvZ1
-----END PGP SIGNATURE-----

--=-AwBbA/dNq/IF6uMpbGE+--

