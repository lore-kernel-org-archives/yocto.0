Return-Path: <pavel@zhukoff.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11505C61DA3
	for <webhook@archiver.kernel.org>; Fri, 24 Feb 2023 15:58:01 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com [66.111.4.29])
 by mx.groups.io with SMTP id smtpd.web11.21227.1677254275741935268
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Feb 2023 07:57:56 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@zhukoff.net header.s=fm1 header.b=mXLqNZry;
 spf=pass (domain: zhukoff.net, ip: 66.111.4.29, mailfrom: pavel@zhukoff.net)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 9B3805C00E0;
	Fri, 24 Feb 2023 10:57:54 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Fri, 24 Feb 2023 10:57:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zhukoff.net; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:reply-to:sender
	:subject:subject:to:to; s=fm1; t=1677254274; x=1677340674; bh=3R
	uQc6E6Qsa5TzfZmGiZPHdzR8w6LuldB2yAk4hEHk8=; b=mXLqNZry24IFExIBDb
	SWUpeOgg3LzBAObiQnT0Y3SnQ9Z87QjBMNeFzqD8A99CiK74JUZPZGp+vHMUBrgn
	PdUPZx+h3T8alCoz6gDZWaEck/R7qeCdEWApaHlIvZ2w5SwQsXaf/4CK4kca5sKM
	siKh9pf5m9eae6ylH1rG/Ui4Qzcke41oVXgMI0Z2E5gaSTjiqKRQsy0DOhhtyu5p
	T0Jz4uYrkxfx3a+3I7EwDIkIESTQ1ZRBY+tz4WpsUNOgZByb+v9PtJTxGaAVa/TG
	5Ux1wY6D8DfRPskOVNSKZ9YDK55IwwSZriNd46DlRrMVkOSnV3j3nJUJAQtJ1iTP
	z91Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; t=1677254274; x=1677340674; bh=3RuQc6E6Qsa5T
	zfZmGiZPHdzR8w6LuldB2yAk4hEHk8=; b=OyrCafk27cSFX3q3QrGRz0QHZvfGp
	q13L1SheQYS+LxfqioKb5loRopcjx3c0H+H1ukHam0jgByE4I+3+fA8B0WtyKB//
	vZINHyfJl2R3hcAk/fbQJE3NonvwFRMAajUBRXbEFtSdy1Gs7i8Jlns2g5OgYyJT
	NqTGTuxTKji1zOe7xOoIne6JoxdhO1azyZ3iY6YqNgpfQ3+D7kh0F8jNiMkBff+S
	9+mikHgWr0+vJp2G+PufdByYQ+ZEnoEw9dXy4C+JX452ihu62IbrPeYogQnQvwtY
	zMj5OEtRbeAD3GJ4vBoxQUnu3QAJIE1fHe5y5Q9WnVBzqStO5cJgoFeqQ==
X-ME-Sender: <xms:gt74Y3P83S60wHHptfxLS3uno7b6sLpcJW3oohMxplVjVcfJxYH2_g>
    <xme:gt74Yx_rTSGIXYHMaLGIkxNgrwJoLoVM59xXsDUGBgjTXu4veUP__kTrfAL9lS8v1
    pyFOhXU3V2_s5QNKVM>
X-ME-Received: <xmr:gt74Y2ROX8nLE4GbocEn7HCMvHt-jE-M2jbQC7UTO4zUHdxT8JIE66-Y6fHbKljy2R1iPM_eSfkIIspS6lZw6z9x>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrudekfedgjeekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfhgfhffvvefuffhorhgjkfggtgesthdtredttdertdenucfhrhhomheprfgr
    vhgvlhcukghhuhhkohhvuceophgrvhgvlhesiihhuhhkohhffhdrnhgvtheqnecuggftrf
    grthhtvghrnhephefhteejveffgfehtedvteeitdduffevudffledvueehfeeutddukeev
    tefhteegnecuffhomhgrihhnpeihohgtthhophhrohhjvggtthdrohhrghenucevlhhush
    htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehprghvvghlseiihhhu
    khhofhhfrdhnvght
X-ME-Proxy: <xmx:gt74Y7ukFZ8tnSXQv56-Yk6-7aAwGYKLNLdTkvDOlXp6mReinffnKQ>
    <xmx:gt74Y_fp3nAa_a8CEV-9pd-T5pr251pih7cHGZY6P0pqwxmtptWeYQ>
    <xmx:gt74Y30kuLcXU6d2u2GN2arodK4rd_Wk63bddEXHBs7W75XiDTi_Yg>
    <xmx:gt74Y_lTur8eZ66eyc6x6I82bsMGqM5P2VG8C1_Qe9MNqnCKdNEeLQ>
Feedback-ID: ib94946c9:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 24 Feb 2023 10:57:53 -0500 (EST)
References: <CAGUWaEFoZ0bNxu3RKM+pNfkSF43xdQkxp-ttLOwaMERa5Krhdg@mail.gmail.com>
User-agent: mu4e 1.8.13; emacs 28.2
From: Pavel Zhukov <pavel@zhukoff.net>
To: Electronic Consult <electronicconsult1@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] No SSH access after removing debug_tweaks
Date: Fri, 24 Feb 2023 16:55:41 +0100
Organization: Linux Private Site
Reply-To: pavel@zhukoff.net
In-reply-to: <CAGUWaEFoZ0bNxu3RKM+pNfkSF43xdQkxp-ttLOwaMERa5Krhdg@mail.gmail.com>
Message-ID: <87a613xdhc.fsf@desktop.zhukoff.net>
MIME-Version: 1.0
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Feb 2023 15:58:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59300


"Electronic Consult" <electronicconsult1@gmail.com> writes:

> Hello all,
>
> I'm trying to add a root password to add some security to ssh access. I plan also to enable/ disable the ssh via GUI.
>
> I'm using meta-atmel on a dunfell build. I've added:
>
> INHERIT += "extrausers"
> EXTRA_USERS_PARAMS = "usermod -p $(openssl passwd mypassword) root"
>
> And commented out:
>
> EXTRA_IMAGE_FEATURES ?= "debug-tweaks"
>
> When I try to SSH in I'm now getting:
>
> Connection closed by 192.168.178.13 port 22
>
> Do I need to set a password for ssh also?
root login is disabled by default in modern ssh servers.
Either enable add allow-root-login to EXTRA_IMAGE_FEATURES or add
another user for this purpose.
>
> Thanks
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59299): https://lists.yoctoproject.org/g/yocto/message/59299
> Mute This Topic: https://lists.yoctoproject.org/mt/97208307/6390638
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [pavel@zhukoff.net]
> -=-=-=-=-=-=-=-=-=-=-=-


