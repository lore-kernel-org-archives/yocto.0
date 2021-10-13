Return-Path: <ManWag@FastMail.FM>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E37C433F5
	for <webhook@archiver.kernel.org>; Wed, 13 Oct 2021 19:21:09 +0000 (UTC)
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
 [66.111.4.27])
 by mx.groups.io with SMTP id smtpd.web11.1707.1634152868618972337
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Oct 2021 12:21:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm1 header.b=K4GroaEW;
 spf=pass (domain: fastmail.fm, ip: 66.111.4.27, mailfrom: manwag@fastmail.fm)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id E08E85C0138;
	Wed, 13 Oct 2021 15:21:07 -0400 (EDT)
Received: from imap41 ([10.202.2.91])
  by compute4.internal (MEProxy); Wed, 13 Oct 2021 15:21:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm1; bh=HKrAW4G3C0FonU6CDmZt/hVcfH2qUPc
	grg2Z98ZeVQ0=; b=K4GroaEWpdeSgYYSmoXeEC8MkcfU3H+3IGsGCza9Bvp4gqe
	DOmWp+MsGq/9ajsyIpi3Om36mIYYMc+3hvZ0MbM+OSKoaE80RR9F0YcCP6YT0Zg/
	XQBezab3Xtc13J0smA4SDzcNPfPMzud+Xx/rjlQxTGsi732F+AR0uTbpMYg1hdqw
	f6ZblZJqv8b8c10yr87y2Jg9GdmeBEfo3DNO6eFtukFqaspWJ6VfaqSXXoVVwo9h
	0iNRoyuSIVNcRZZvYSWy5hvDJBaEJt4u8Uwk7ILltIJYaNz/9jRsr735dopfiVZ9
	J/GpaxxSq/5085bMN1ysqFwMb1VRmeqf52R2x6A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=HKrAW4
	G3C0FonU6CDmZt/hVcfH2qUPcgrg2Z98ZeVQ0=; b=Ac/OJqpxK+hkq3HqYVU0+V
	/vAyl3oUVND52LmyiN/1EzE/IeFgC0zr/eG/I74jsnK33m1xOymFPqTvjchlS1FM
	XBbuRA3qHQyj/4xHGtTQQtgCrU+lC7r5wLS2iJy5Nt7cK2bMMoBQayzqWcd2Gx/F
	9Lj3znzwf650oM4MZm1hWQ6v9GbQHvz1KKOFwOBeT1qQScxtmlHKnRW0jCZQxcSy
	Yqk6b2e2fgUL8vUgDz6fQ6T5+WsLlPEa3RNvztYIrafSrQ5IJfO/o+pAjmrGxJF+
	aTqaPrDFKOrQWKEKym2jWo2NLQRYgEvJ8P2gTWIF1R0OnAddyNJCnyCBC9e5cRGw
	==
X-ME-Sender: <xms:ozFnYeXsHR3wC5Ji3SisQExbYuQ0z95wVSN0xvR6H3md4iwCYwlb9w>
    <xme:ozFnYam3pYnY8bG1YQp3tBZf5PZgY0yr8m683M0PNgjK30vtzH-fFnultJ3Atwp-o
    GGPsSLvpIoafnfW>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvtddrvddutddgudeffecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefofgggkfgjfhffhffvufgtsegrtderreerredtnecuhfhrohhmpedfofgr
    nhhuvghlucghrghgvghsrhgvihhthhgvrhdfuceoofgrnhghrghgsefhrghsthforghilh
    drhffoqeenucggtffrrghtthgvrhhnpeehgeduvdeufeefffejvefftdfhieejgfeitedu
    ueeufeeuieetieeljeelheevtdenucffohhmrghinhephihotghtohhprhhojhgvtghtrd
    horhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhep
    ofgrnhghrghgsefhrghsthforghilhdrhffo
X-ME-Proxy: <xmx:ozFnYSZhvVNeAs0CCNwnDSG08q2YQZdTUqTt3v5BRm6oE9NHjoAluA>
    <xmx:ozFnYVXt1ZTLyZd1zUkqzyDhlIL_Bw7dJVbvKVhpRuUOyBvTufnVwA>
    <xmx:ozFnYYkv8E4DcFBom6AVnYnnb1WoTnwUuDuU8uJBG_9h9LKww-d1gg>
    <xmx:ozFnYaTWn52PurH7sgOT3ydCx2WejB5Lmh0H17QDdfWSlPd_1G3OEw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id B61403C04A3; Wed, 13 Oct 2021 15:21:07 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-1345-g8441cd7852-fm-20211006.001-g8441cd78
Mime-Version: 1.0
Message-Id: <af53ff0e-5abc-40fb-b4c5-3f36a3c1d8c4@www.fastmail.com>
In-Reply-To: 
 <CANNYZj_OpPwNOb+jADgG5Escpwj+WLcr_nhihfLd-NUhyHFTNQ@mail.gmail.com>
References: <31cf8b88-5441-4779-a26d-4b6b3c310b77@www.fastmail.com>
 <CANNYZj_OpPwNOb+jADgG5Escpwj+WLcr_nhihfLd-NUhyHFTNQ@mail.gmail.com>
Date: Wed, 13 Oct 2021 21:20:47 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: "yocto@lists.yoctoproject.org," <yocto@lists.yoctoproject.org>,
 "Alexander Kanavin" <alex.kanavin@gmail.com>
Subject: Re: [yocto] How to enable graphics acceleration on qemux86-64?
Content-Type: multipart/alternative;
 boundary=ccdab2c2971a41c68b6751afb173cad3
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Oct 2021 19:21:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55056

--ccdab2c2971a41c68b6751afb173cad3
Content-Type: text/plain

Hi Alex,

Am Fr, 8. Okt 2021, um 11:00, schrieb Alexander Kanavin:
> Something in your custom setup disables opengl in qemu-system-native. 
> 
> Can you try core-image-weston with plain poky only?
> 
> This is the test we use to ensure it does work, it lists all the settings that have to be in place
> (but in poky they are enabled by default, except the gtk frontend):
> http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/lib/oeqa/selftest/cases/runtime_test.py?h=master-next#n165
> http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/lib/oeqa/selftest/cases/runtime_test.py?h=master-next#n206

Interesting. Things don't work on both my Debian Buster machines.

How does opengl get set in qemu-system-native? Am Yocto novice and don't speak Python.

Am using poky repo on tag dunfell-23.0.10 = 2a848e9507.

Here's my complete test results:

* `runqemu kvm slirp core-image-weston` fails with `Failed to run qemu: Could not initialize SDL(x11 not available) - exiting`
* `runqemu kvm slirp sdl core-image-minimal` fails with `Failed to run qemu: Could not initialize SDL(x11 not available) - exiting`
* `runqemu kvm slirp sdl gl core-image-minimal` fails with `Failed to run qemu: qemu-system-x86_64: OpenGL support is disabled`
* `runqemu kvm slirp gtk core-image-minimal` fails with `Failed to run qemu: qemu-system-x86_64: Display 'gtk' is not available.`

How would I enable gtk frontend in poky?

Thanks, Manuel

--ccdab2c2971a41c68b6751afb173cad3
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">p.Mso=
Normal,p.MsoNoSpacing{margin:0}
p.MsoNormal,p.MsoNoSpacing{margin:0}</style></head><body><div>Hi Alex,<b=
r></div><div><br></div><div>Am Fr, 8. Okt 2021, um 11:00, schrieb Alexan=
der Kanavin:<br></div><blockquote type=3D"cite" id=3D"qt" style=3D""><di=
v dir=3D"ltr"><div>Something in your custom setup disables opengl in qem=
u-system-native. <br></div><div><br></div><div>Can you try core-image-we=
ston with plain poky only?<br></div><div><br></div><div>This is the test=
 we use to ensure it does work, it lists all the settings that have to b=
e in place<br></div><div>(but in poky they are enabled by default, excep=
t the gtk frontend):<br></div><div><a href=3D"http://git.yoctoproject.or=
g/cgit.cgi/poky/tree/meta/lib/oeqa/selftest/cases/runtime_test.py?h=3Dma=
ster-next#n165">http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/lib/=
oeqa/selftest/cases/runtime_test.py?h=3Dmaster-next#n165</a><br></div><d=
iv><a href=3D"http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/lib/oe=
qa/selftest/cases/runtime_test.py?h=3Dmaster-next#n206">http://git.yocto=
project.org/cgit.cgi/poky/tree/meta/lib/oeqa/selftest/cases/runtime_test=
.py?h=3Dmaster-next#n206</a><br></div></div></blockquote><div><div><br><=
/div><div>Interesting. Things don't work on both my Debian Buster machin=
es.<br></div><div><br></div><div>How does opengl get set in qemu-system-=
native? Am Yocto novice and don't speak Python.<br></div><div><br></div>=
<div>Am using poky repo on tag&nbsp;dunfell-23.0.10 =3D&nbsp;2a848e9507.=
<br></div><div><br></div><div>Here's my complete test results:<br></div>=
<div><br></div><div>* `runqemu kvm slirp core-image-weston` fails with `=
Failed to run qemu: Could not initialize SDL(x11 not available) - exitin=
g`<br></div></div><div>* `runqemu kvm slirp sdl core-image-minimal` fail=
s with `Failed to run qemu: Could not initialize SDL(x11 not available) =
- exiting`<br></div><div>* `runqemu kvm slirp sdl gl core-image-minimal`=
 fails with `Failed to run qemu: qemu-system-x86_64: OpenGL support is d=
isabled`<br></div><div>* `runqemu kvm slirp gtk core-image-minimal` fail=
s with `Failed to run qemu: qemu-system-x86_64: Display 'gtk' is not ava=
ilable.`<br></div><div><br></div><div>How would I enable gtk frontend in=
 poky?<br></div><div><br></div><div>Thanks, Manuel</div><div><br></div><=
/body></html>
--ccdab2c2971a41c68b6751afb173cad3--

