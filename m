Return-Path: <ManWag@FastMail.FM>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F24BC433F5
	for <webhook@archiver.kernel.org>; Sun, 26 Sep 2021 10:27:28 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 by mx.groups.io with SMTP id smtpd.web10.17119.1632652046819589371
 for <yocto@lists.yoctoproject.org>;
 Sun, 26 Sep 2021 03:27:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm1 header.b=niEzbA9t;
 spf=pass (domain: fastmail.fm, ip: 66.111.4.28, mailfrom: manwag@fastmail.fm)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id 785C55C0093
	for <yocto@lists.yoctoproject.org>; Sun, 26 Sep 2021 06:27:22 -0400 (EDT)
Received: from imap41 ([10.202.2.91])
  by compute4.internal (MEProxy); Sun, 26 Sep 2021 06:27:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm1; bh=6dfMg0k2xuimdo/wGzlpGSPwlCGpoV0
	ux6z74lQ26b4=; b=niEzbA9t1atjU8U789NDjfRw26/Jbwt543PuJKDDJMPj0d3
	+h6onNjbZtSCiLxDoAqCgYo4QVP+lnCmidhsT8Q/CiDZiqDxlvnDLSUK/hJwh6Zy
	JpR4Uio+X/HLUctADFMo6EhjPxcLfjTKH660bVEepjCWH/tf8l1CfEsLtbSKeL42
	raIKS6OmtdNJqs6dr/PMzJQnnM+HV3Zz55gN53sfE8lXNgJ4Zb2TJVw5ChUNo/1t
	TCkhNPcWMMTQzunGW8tDVjNPP9d8Wyi/Lks2rjhV3t2jQtCqcBV7oLCTPxi78DML
	kC53BTNqvhiAKqLOefvz+S8zAHRTvJDnq0TqzBA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=6dfMg0
	k2xuimdo/wGzlpGSPwlCGpoV0ux6z74lQ26b4=; b=C6ebrudWXw/2dxSI757hFQ
	6sPVsTPwHxZlP1XKJas9uAKzL3KenbXNhDUoWRM2vwgsZG/eVk9FLILeg2dIT2As
	YRWrMx7LQUCC/WcnJEHJ+0vi6M9498A8WgXpKDSS6/XbJd57ePY4Rc1QpEUMrK1/
	vkSpyd7tt8zpPAijxvyrr/DwYYsdNPMCvY3GWxUy1cRwexL9x6ThOUsCPFh5hV+h
	z6CkBpPqWmyTAT0cikaV4EcpmrNlcsrNKRPS9op41eKjormfRxxyymLueNI955pK
	vYLMscOpQ1OBoCqQLuSKTF+aGq3x1nx5miJi0V3yvNhY9oFwiS9GPD4BVxOynEew
	==
X-ME-Sender: <xms:CktQYamUt2Ha43dUhK_OMrFVSnZJbyHX8XuuIW4KNtl6QwxGjVOPpg>
    <xme:CktQYR0-fGxwfMsib8KFg5vZiW9zhpr4UCD3E2qo_jSnyM8I-PwMKUvwh8SzAKUhF
    hwE3k8W6EaO3VZb>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvtddrudejiedgvdejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucgoufhushhpvggtthffohhmrghinhculdegledmne
    cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdforghn
    uhgvlhcuhggrghgvshhrvghithhhvghrfdcuoeforghnhggrgheshfgrshhtofgrihhlrd
    fhofeqnecuggftrfgrthhtvghrnhepveehjeffhfeuhfevkefhveffffdugfeihfejgfej
    vdeikeejudfgheejveevgedvnecuffhomhgrihhnpehimhhguhhrrdgtohhmnecuvehluh
    hsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepofgrnhghrghgsefh
    rghsthforghilhdrhffo
X-ME-Proxy: <xmx:CktQYYrY0DClr1uwveA2z8j1UUTp4Na_qYbeT78fpReRYR8y_Xthpg>
    <xmx:CktQYemak_udsXXTLsZmWlnBJFGwR_sjjqEwGyxjAz-OFaxOwxzSBQ>
    <xmx:CktQYY0PFtQ7FJ3cRbTfkK0iiP0RU8Fxpv-LxrDb6EpHbH3pla1k3Q>
    <xmx:CktQYZCLvJ2m-udJW8M2kT9XJkYR2bnbY0ohw6EkOY2ycQhrvSv0bQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 3109D3C03FF; Sun, 26 Sep 2021 06:27:22 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-1303-gb2406efd75-fm-20210922.002-gb2406efd
Mime-Version: 1.0
Message-Id: <b748939f-ca7f-42c8-9a14-52317c4e86c9@www.fastmail.com>
In-Reply-To: <16A832CD45D95B89.12372@lists.yoctoproject.org>
References: <16A832CD45D95B89.12372@lists.yoctoproject.org>
Date: Sun, 26 Sep 2021 12:27:02 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Gtk+3 applications are missing icons.
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 26 Sep 2021 10:27:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54862

Am So, 26. Sep 2021, um 00:58, schrieb Manuel Wagesreither:
> I built an image based on core-image and added the package gtk+3-demos. 
> I'm using wayland with weston compositor. Unfortunately icons seem to 
> be missing. Can anyone give me a hint on what went wrong? I'm on 
> Dunfell.
>
> Here's a screenshot: https://imgur.com/syLzQ1l

Seems Gtk doesn't come with a default icon set. I added package  `adwaita-icon-theme` to my build, and now I've got most icons. The icons for window maximize and minimize are still missing, though.

https://imgur.com/a/VjJiScU

Does anyone know what it needs to make them being displayed as well?

Thanks, regards,
Manuel

