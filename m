Return-Path: <ManWag@FastMail.FM>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB37FC433EF
	for <webhook@archiver.kernel.org>; Wed, 16 Mar 2022 09:12:59 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 by mx.groups.io with SMTP id smtpd.web12.22535.1647421977998820749
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Mar 2022 02:12:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm3 header.b=D2rZuU+C;
 spf=pass (domain: fastmail.fm, ip: 66.111.4.28, mailfrom: manwag@fastmail.fm)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 830415C0236;
	Wed, 16 Mar 2022 05:12:56 -0400 (EDT)
Received: from imap41 ([10.202.2.91])
  by compute2.internal (MEProxy); Wed, 16 Mar 2022 05:12:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm3; bh=EPDGXmEb/0cuL7c97pXXEdeKrmGQDHco93pWFb
	QHzeE=; b=D2rZuU+C5+P0m6TdxqAtOVJJlYCY+8nopRbWQdVOm3PR3YZVubYp8z
	QvtmBPj2aLDIea0BFfaBwtQ0I0okzIJbXiGSh68HJkNde8VNlDAHWEiyWhVBgH2l
	2oCuAb9mQWh8wVaGoNQRyw80GOiRIADgU3dMcilZTsa+hTuhOtFb/4pDmNFbtJ6O
	W0f3UApG/HIjdoLS9sWI8JUXK3iZG4vXWcYIa+5tSdMT0hgrlDR0nmG6D1bOm6KQ
	eI75SQ89fgauyl5NwIJ+/PsqPXj8zHRKOlNRDK1VTOxWY+XsPqaU7Di4ZESMyVlP
	1RjEPQ3VG8IyNOHufNnApxjr3LxVFfAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=EPDGXmEb/0cuL7c97
	pXXEdeKrmGQDHco93pWFbQHzeE=; b=gfhKvxkCBPk308csJRF6bU6C2YG8ey4LJ
	20WR+CNMLlvMe13gcPSiULisZuB++ICyGWPg3lQWJrM+6IsjUEhgbeG4WW4nxl7Y
	QKXI8Vf1c8IWi3jf6ukPVWwLZvsJNp2SzJoG3TPvk/seShKVr6J1iBm9G9hY0pc5
	h/rAQFxp2CDnbs3hdutDVqV5ni786B4PyjmW2qz6ZYnIm0t90yDsoecpT9nQza94
	DWcO6RXu78/BwD6OCIpwdF7OAccsk/24Zo6CUf2X7d/ivOdOu4T8aBfuurGdXAzo
	QlDy5b8gsRySUvzYOLGcwBn6fZZl8TA+h9rOtQfwGI7EUM5dBwhBw==
X-ME-Sender: <xms:GKoxYsR2GiCYAx4w_j7kGrH8gXZ8FQoumsgW9uzFsvcefuYVRVL0Jw>
    <xme:GKoxYpzFni5OMjxlBc-tXxKnYNW43oRJYUv36Xf4BIe19zlhHQfqWa-rOu4vddzBS
    _9J8z9dCkir7xBN>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvvddrudefuddguddvjecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefofgggkfgjfhffhffvufgtsegrtderreerreejnecuhfhrohhmpedfofgr
    nhhuvghlucghrghgvghsrhgvihhthhgvrhdfuceoofgrnhghrghgsefhrghsthforghilh
    drhffoqeenucggtffrrghtthgvrhhnpeejjeefleejveduheejtdfhudevfeegffduteeg
    ueehgeffhfefudfgheeftedtueenucffohhmrghinheptghonhhfrdhithenucevlhhush
    htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeforghnhggrgheshfgr
    shhtofgrihhlrdfhof
X-ME-Proxy: <xmx:GKoxYp2jVOqtgPwE1uk1CTLi9bpQQ5R7BsNK2q7whWgC-flZoiMZJw>
    <xmx:GKoxYgAkqBD1RuC7vXxWsIRYc9m4waJweZ4Atgnb85ISkyJ6_15AbA>
    <xmx:GKoxYlgYM5R6Y3hA1ihrggX-TIHxoTC53-ylUCliNSsw34OskqjlBg>
    <xmx:GKoxYvePg4IvNtoftFW8bYdg6PGAwfil9eqSmhWNemFGca_1lLVPNQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 4848D3C00CF; Wed, 16 Mar 2022 05:12:56 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-4907-g25ce6f34a9-fm-20220311.001-g25ce6f34
Mime-Version: 1.0
Message-Id: <bb12b230-34fa-416f-b4f1-f94ecd35ca59@www.fastmail.com>
In-Reply-To: <Glxl.1647417254477654340.oyPL@lists.yoctoproject.org>
References: <Glxl.1647417254477654340.oyPL@lists.yoctoproject.org>
Date: Wed, 16 Mar 2022 10:12:36 +0100
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: "Sourabh Hegde" <hrsourabh011@gmail.com>, yocto@lists.yoctoproject.org
Subject: Re: [yocto] How to manage disk space while working with Yocto?
Content-Type: multipart/alternative;
 boundary=85572983bfdc44eab53e75fa53f12587
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Mar 2022 09:12:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56458

--85572983bfdc44eab53e75fa53f12587
Content-Type: text/plain;charset=utf-8
Content-Transfer-Encoding: quoted-printable

Am Mi, 16. M=C3=A4r 2022, um 08:54, schrieb Sourabh Hegde:
> I have tried deleting `$TMPDIR (build/tmp)`, `$SSTATE_DIR (build/sstat=
e-cache)`, `$DL_DIR (build/downloads)`. But these things didn't help me.

These directories are crucial for a yocto build and they will get recrea=
ted if not existing. Deleting them does nothing besides prolonging the b=
uild process.

You could try putting `INHERIT +=3D "rm_work"` in the build/conf/local.c=
onf. It will delete the work directories at build completition. I just d=
on't know if they get deleted when building of the individual package is=
 finished (which would be good for you), or after completition of the co=
mplete build. (That would be too late for you, as you already ran out of=
 disk space then.)

Regards, Manuel

--85572983bfdc44eab53e75fa53f12587
Content-Type: text/html;charset=utf-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">p.Mso=
Normal,p.MsoNoSpacing{margin:0}</style></head><body><div>Am Mi, 16. M=C3=
=A4r 2022, um 08:54, schrieb Sourabh Hegde:<br></div><blockquote type=3D=
"cite" id=3D"qt" style=3D""><div>I have tried deleting&nbsp;<code style=3D=
"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;borde=
r-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-le=
ft-width:0px;border-top-style:initial;border-right-style:initial;border-=
bottom-style:initial;border-left-style:initial;border-top-color:initial;=
border-right-color:initial;border-bottom-color:initial;border-left-color=
:initial;border-image-source:initial;border-image-slice:initial;border-i=
mage-width:initial;border-image-outset:initial;border-image-repeat:initi=
al;font-style:inherit;font-variant-ligatures:inherit;font-variant-caps:i=
nherit;font-variant-numeric:inherit;font-variant-east-asian:inherit;font=
-weight:inherit;font-stretch:inherit;line-height:inherit;font-family:var=
(--ff-mono);font-size:13px;vertical-align:baseline;box-sizing:inherit;ba=
ckground-color:var(--black-075);white-space:pre-wrap;color:var(--black-8=
00);border-top-left-radius:3px;border-top-right-radius:3px;border-bottom=
-right-radius:3px;border-bottom-left-radius:3px;">$TMPDIR (build/tmp)</c=
ode>,&nbsp;<code style=3D"margin-top:0px;margin-right:0px;margin-bottom:=
0px;margin-left:0px;border-top-width:0px;border-right-width:0px;border-b=
ottom-width:0px;border-left-width:0px;border-top-style:initial;border-ri=
ght-style:initial;border-bottom-style:initial;border-left-style:initial;=
border-top-color:initial;border-right-color:initial;border-bottom-color:=
initial;border-left-color:initial;border-image-source:initial;border-ima=
ge-slice:initial;border-image-width:initial;border-image-outset:initial;=
border-image-repeat:initial;font-style:inherit;font-variant-ligatures:in=
herit;font-variant-caps:inherit;font-variant-numeric:inherit;font-varian=
t-east-asian:inherit;font-weight:inherit;font-stretch:inherit;line-heigh=
t:inherit;font-family:var(--ff-mono);font-size:13px;vertical-align:basel=
ine;box-sizing:inherit;background-color:var(--black-075);white-space:pre=
-wrap;color:var(--black-800);border-top-left-radius:3px;border-top-right=
-radius:3px;border-bottom-right-radius:3px;border-bottom-left-radius:3px=
;">$SSTATE_DIR (build/sstate-cache)</code>,&nbsp;<code style=3D"margin-t=
op:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;border-top-wid=
th:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:=
0px;border-top-style:initial;border-right-style:initial;border-bottom-st=
yle:initial;border-left-style:initial;border-top-color:initial;border-ri=
ght-color:initial;border-bottom-color:initial;border-left-color:initial;=
border-image-source:initial;border-image-slice:initial;border-image-widt=
h:initial;border-image-outset:initial;border-image-repeat:initial;font-s=
tyle:inherit;font-variant-ligatures:inherit;font-variant-caps:inherit;fo=
nt-variant-numeric:inherit;font-variant-east-asian:inherit;font-weight:i=
nherit;font-stretch:inherit;line-height:inherit;font-family:var(--ff-mon=
o);font-size:13px;vertical-align:baseline;box-sizing:inherit;background-=
color:var(--black-075);white-space:pre-wrap;color:var(--black-800);borde=
r-top-left-radius:3px;border-top-right-radius:3px;border-bottom-right-ra=
dius:3px;border-bottom-left-radius:3px;">$DL_DIR (build/downloads)</code=
>. But these things didn't help me.<br></div></blockquote><div><br></div=
><div><div>These directories are crucial for a yocto build and they will=
 get recreated if not existing. Deleting them does nothing besides prolo=
nging the build process.<br></div><div><br></div><div>You could try putt=
ing `INHERIT +=3D "rm_work"` in the build/conf/local.conf. It will delet=
e the work directories at build completition. I just don't know if they =
get deleted when building of the individual package is finished (which w=
ould be good for you), or after completition of the complete build. (Tha=
t would be too late for you, as you already ran out of disk space then.)=
<br></div><div><br></div><div>Regards, Manuel<br></div></div><div><br></=
div></body></html>
--85572983bfdc44eab53e75fa53f12587--

