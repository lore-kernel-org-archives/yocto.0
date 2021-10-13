Return-Path: <ManWag@FastMail.FM>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94054C433EF
	for <webhook@archiver.kernel.org>; Wed, 13 Oct 2021 20:09:24 +0000 (UTC)
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
 [66.111.4.27])
 by mx.groups.io with SMTP id smtpd.web11.3.1634155763847219987
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Oct 2021 13:09:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm1 header.b=Mi4lGai0;
 spf=pass (domain: fastmail.fm, ip: 66.111.4.27, mailfrom: manwag@fastmail.fm)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id 6B4B15C01FA;
	Wed, 13 Oct 2021 16:09:22 -0400 (EDT)
Received: from imap41 ([10.202.2.91])
  by compute4.internal (MEProxy); Wed, 13 Oct 2021 16:09:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm1; bh=Qj5ZTd8opuTwnxIYA4C1NTcWDNxyQho
	1q7b7DM/WKE0=; b=Mi4lGai0HGY43FaBSdAmtAfxmN7cpVz6jpBd5e61KEWv0wW
	CkT6XiaZC1aOcmo4Bsp27E+957sgp6mtsZjEVi6EkU6GqAw06hcAmN753V/96O7p
	Z33DeRdu2sOOkmzbxPWhTdf0i6LH2foY3x2C9eDm4SGzkTHVkHv6iI6foiCyGwmL
	easCRkXu+KOiOfQJwLWkA+1raTyHSnAyh/wJNnTJAsA8Suw7Hn7keqpGJ7a9O4tJ
	MCEgdheOCWfK1k13NrY+kAwbEMAc36L2fw0oMy/whXqZvekJ84zIQTsNXghMKpgG
	yQIA7swpE38xyGcb+a5+7caoa6ZBrESa3aCPGDA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=Qj5ZTd
	8opuTwnxIYA4C1NTcWDNxyQho1q7b7DM/WKE0=; b=Cv9DMPWAs7WToojWBLsvnH
	lCxqq/TV9IEcBTTrFWINqvDnDT+JwooGJsNpgz9J0R+sGSI/6rERPHJDrUW47cMJ
	vV80ZKGojBtzBuHSDe7457nA2hoKPQSUhbRzYBwNdJaqlqubqdFmA/pP4Sql6MFy
	2wG/RfmoZpa/Me4rYpVRocQQ5x4Falm7T4emSbKYlaEoeFW3HmYVbRVeYM23MLzh
	W4J4B2llR5M07d1kAn1frXgj2oVbn8KC9ncYXW5bUHQBSoU5YHZ0ns/NAtAvlBAW
	7jD+mK2WrpgbB05i2zyw5s089qUrBL4Fh0I2XQv2YnLAvsnkfQufxqppnVcksjng
	==
X-ME-Sender: <xms:8jxnYX5qqcuxuNhtujeg7jGLMTmGVVkYu1PnFImbA9G_tDY7L-KX7A>
    <xme:8jxnYc6n7aStNOHMgcHi-I321TkvhPydItFJ6xmiruZcG7200nMI_yG2SfyEZQVWA
    WF6YS-W_y6GIMbU>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvtddrvddutddgudegfecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefofgggkfgjfhffhffvufgtsegrtderreerredtnecuhfhrohhmpedfofgr
    nhhuvghlucghrghgvghsrhgvihhthhgvrhdfuceoofgrnhghrghgsefhrghsthforghilh
    drhffoqeenucggtffrrghtthgvrhhnpeelhedthfehieetfeetgfdvjeefueelheevgfdv
    keeiheejfedvueehveffudejvdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
    epmhgrihhlfhhrohhmpeforghnhggrgheshfgrshhtofgrihhlrdfhof
X-ME-Proxy: <xmx:8jxnYefeOwurG2PmHuNViRzDyu869PGTpgtdNOHM3Af1OGuQ36_fGQ>
    <xmx:8jxnYYLemKZyZxWTwDn8EZFb7Gku0RusdJ1AdRhGuzsfjLCdYLsHqw>
    <xmx:8jxnYbJNG1_S-hle070Pyi6XNp3W1Jg5n4TdUU67n4kvAEXV5e5bcQ>
    <xmx:8jxnYWnGZYBqmesq8MIvnT731TL8OUsK71O0b0ssSCitLgHVGE8vHg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 4D3143C0246; Wed, 13 Oct 2021 16:09:22 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-1345-g8441cd7852-fm-20211006.001-g8441cd78
Mime-Version: 1.0
Message-Id: <c39ba639-c4a6-4260-83b0-37a88d247a3a@www.fastmail.com>
In-Reply-To: 
 <CANNYZj-_znrzjOb_cjtDEg4=ZxMCGEaVzCJ+txkJEMoqzBf_Zw@mail.gmail.com>
References: <31cf8b88-5441-4779-a26d-4b6b3c310b77@www.fastmail.com>
 <CANNYZj_OpPwNOb+jADgG5Escpwj+WLcr_nhihfLd-NUhyHFTNQ@mail.gmail.com>
 <af53ff0e-5abc-40fb-b4c5-3f36a3c1d8c4@www.fastmail.com>
 <CANNYZj-_znrzjOb_cjtDEg4=ZxMCGEaVzCJ+txkJEMoqzBf_Zw@mail.gmail.com>
Date: Wed, 13 Oct 2021 22:09:00 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: "Alexander Kanavin" <alex.kanavin@gmail.com>,
 "yocto@lists.yoctoproject.org," <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] How to enable graphics acceleration on qemux86-64?
Content-Type: multipart/alternative;
 boundary=976692eea26c49718f8871d7f1971bb6
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Oct 2021 20:09:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55060

--976692eea26c49718f8871d7f1971bb6
Content-Type: text/plain

`export DISPLAY=:0` did the trick.

The following shows when still on poky dunfell:

* I can now boot `runqmu kvm slirp sdl core-image-weston`. But gui is still slow. I cannot even type `systemctl poweroff` in weston-terminal, it inevitably becomes `wweesssttooo[...]`.
* `runqemu kvm slirp sdl gl core-image-weston` still fails with `Failed to run qemu: qemu-system-x86_64: OpenGL support is disabled`.

Updated to current poky master, but got this: `ERROR: ParseError in configuration INHERITs: Could not inherit file classes/image-mklibs.bbclass`.

Switched to hardknott-3.3.3 which is four weeks old and perhaps a little riper. It's currently building.

Regards,
Manuel

--976692eea26c49718f8871d7f1971bb6
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">p.Mso=
Normal,p.MsoNoSpacing{margin:0}</style></head><body><div>`export DISPLAY=
=3D:0` did the trick.</div><div><br></div><div>The following shows when =
still on poky dunfell:<br></div><div><br></div><div>* I can now boot `ru=
nqmu kvm slirp sdl core-image-weston`. But gui is still slow. I cannot e=
ven type `systemctl poweroff` in weston-terminal, it inevitably becomes =
`wweesssttooo[...]`.<br></div><div><div>* `runqemu kvm slirp sdl gl core=
-image-weston` still fails with `Failed to run qemu: qemu-system-x86_64:=
 OpenGL support is disabled`.<br></div><div><br>Updated to current poky =
master, but got this: `ERROR: ParseError in configuration INHERITs: Coul=
d not inherit file classes/image-mklibs.bbclass`.<br></div><div><br></di=
v></div><div>Switched to hardknott-3.3.3 which is four weeks old and per=
haps a little riper. It's currently building.<br></div><div><br></div><d=
iv>Regards,<br></div><div>Manuel<br></div><div><br></div><div></div></bo=
dy></html>
--976692eea26c49718f8871d7f1971bb6--

