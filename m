Return-Path: <ManWag@FastMail.FM>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 31898C433EF
	for <webhook@archiver.kernel.org>; Mon, 21 Mar 2022 06:03:16 +0000 (UTC)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 by mx.groups.io with SMTP id smtpd.web10.27083.1647842591344368962
 for <yocto@lists.yoctoproject.org>;
 Sun, 20 Mar 2022 23:03:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm3 header.b=AUpLmDw0;
 spf=pass (domain: fastmail.fm, ip: 66.111.4.26, mailfrom: manwag@fastmail.fm)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id A9B855C01A6;
	Mon, 21 Mar 2022 02:03:10 -0400 (EDT)
Received: from imap41 ([10.202.2.91])
  by compute2.internal (MEProxy); Mon, 21 Mar 2022 02:03:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; bh=OEO2U7NzeSdsnN
	rI/kvarzLYvRVm+YahkIf5a8CmCq4=; b=AUpLmDw0csGT6fJ61oAhb0gGhsL/eL
	V7mQdMXHHMDa7/C0d3KOPzRZ9dz4WTtUVmEnBI/snLSBcg6awjGKolMRAxQiLn0Q
	ZeblGJCXQEQ6P3+MLSHq7WIDYHRqUtEpyyqs+tRL3aN1K/LSoXMHEvPPqEGVvJ3R
	GT/MsSitRXIW67RwYIYZLllaj+CejWrWxaaro8rWiDaZ2DFdZvufOjuKh7XiJcVQ
	OUWHBTN3fAsUx67S4aGb0Ahkz8tj+7mye3aIldCFajYg2r/W9FsSsCmzyYndLHh0
	/3rbe519e7VzNEPxDyUEXm5fPNXcuvycOhixid6UZAwVwoqYCLI0mtJQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; bh=OEO2U7NzeSdsnNrI/kvarzLYvRVm+YahkIf5a8CmCq4=; b=UJ8SMqMn
	nyTCeIt+tXLAml7hQ/T9C9UcRwhXK/SRYkBONbAyW6M2TFYNSUexSvzzThcose5w
	AShv5YvVyCjD/cgMD2WPQDP/WNvsDarMu29BB1vgPOEAOQ8SbL0LfrqOyxN2AGNl
	zveI5glBD0x0LjJy2Eh0LdWYpSxXx4YZtJVMwUguCJX8Yr72lVs80lGMgme707hq
	bcBvvqOmPYVCbkVt8p3OAU9GS9ka8ClyKXstKPZf4xr70/MDCoiX2thTYVKD/g+T
	paVVYm0uISDFMWSJTTcamHQ/m8sbudfXu7uHx4qaPUW8RHYDEcq3n/D8/HrQ1JfX
	ZGXDyR/MoVjsEw==
X-ME-Sender: <xms:HhU4Yl9e2nHa4ANOxXSGzeeTTydXSjfn9zparTS46P7lUFa4G1NkCA>
    <xme:HhU4YpukTVSr9GhFg5E1LxghCTE7z_MNgiXbU6Is8COA7KslnEk-SIJCOyb_avUjy
    rWwlaPCBWS8w6VU>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvvddrudegvddgleduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfgjfhffhffvufgtgfesth
    hqredtreerjeenucfhrhhomhepfdforghnuhgvlhcuhggrghgvshhrvghithhhvghrfdcu
    oeforghnhggrgheshfgrshhtofgrihhlrdfhofeqnecuggftrfgrthhtvghrnhepieeiff
    fhhfevieekvdekveekteeggeeugfeihfeuheehleffteegjefhgfffuddvnecuffhomhgr
    ihhnpehgihhthhhusgdrtghomhdprghrthhhuhhrqdgvmhgsvggurdgssgdphihouhhtuh
    drsggvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhep
    ofgrnhghrghgsefhrghsthforghilhdrhffo
X-ME-Proxy: <xmx:HhU4YjCwNsfJ7vH7L--lJBukEeaX27cwKWcknysqQchpu3-RSf4d3A>
    <xmx:HhU4YpeQt0VRZuP1AX-t26xrVuYHHFqdRVMExVfTNWzk7FqbFrZrFg>
    <xmx:HhU4YqP-hxRlWQcHKEiNi7SuFr5q-1JyLPz-0NVKV12rBFsdMnUJ9g>
    <xmx:HhU4YtavaZaXPvZKmiGIvHjjlL_dHD5kNGXHiwVio8lfCc5qj-rEHg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 144F63C00CF; Mon, 21 Mar 2022 02:03:10 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-4907-g25ce6f34a9-fm-20220311.001-g25ce6f34
Mime-Version: 1.0
Message-Id: <c6ff5ff6-a11f-43fb-b85a-d6426c94212d@www.fastmail.com>
In-Reply-To: <4392d158-e0cb-0776-93c3-62972ed28431@kaa.org.ua>
References: <4392d158-e0cb-0776-93c3-62972ed28431@kaa.org.ua>
Date: Mon, 21 Mar 2022 07:02:48 +0100
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: "Oleh Kravchenko" <oleg@kaa.org.ua>, yocto@lists.yoctoproject.org
Subject: Re: [yocto] Multiconfig dependency
Content-Type: text/plain;charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Mar 2022 06:03:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56509

Hi Oleh,

Am Do, 17. M=C3=A4r 2022, um 21:29, schrieb Oleh Kravchenko:
>  do_install[mcdepends] =3D "mc:initramfs::core-image-minimal:do_image_=
complete"

I have zero practical experience with multiconfig, but isn't this missin=
g one argument?

See here:

https://github.com/JPEWdev/meta-multiconfig-demos/blob/main/recipes-misc=
/arthur-embed/arthur-embed.bb#L21https://youtu.be/YvtlGjWrL-M?list=3DPLD=
4M5FoHz-TwWYbaJwduH8ZYNYvva76QQ&t=3D5030

Regards,
Manuel

