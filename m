Return-Path: <ManWag@FastMail.FM>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62AC8EB64D7
	for <webhook@archiver.kernel.org>; Fri, 23 Jun 2023 21:39:55 +0000 (UTC)
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com [64.147.123.25])
 by mx.groups.io with SMTP id smtpd.web11.575.1687556384807981174
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Jun 2023 14:39:45 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@fastmail.fm header.s=fm2 header.b=QoiffFDk;
 spf=pass (domain: fastmail.fm, ip: 64.147.123.25, mailfrom: manwag@fastmail.fm)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id 23E3B32009F9
	for <yocto@lists.yoctoproject.org>; Fri, 23 Jun 2023 17:39:42 -0400 (EDT)
Received: from imap43 ([10.202.2.93])
  by compute5.internal (MEProxy); Fri, 23 Jun 2023 17:39:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	cc:content-type:content-type:date:date:from:from:in-reply-to
	:message-id:mime-version:reply-to:sender:subject:subject:to:to;
	 s=fm2; t=1687556381; x=1687642781; bh=pOqaJNVVw1Yujk86s12qFXvYV
	m98zV7kiTFxpV44xlA=; b=QoiffFDkk0LdkcLJykX/JY/cLyaXRwaF/MDmmMQYJ
	L0XTvPBvdWFw9BMH5A8Xbvla15N70sXVWKpm+S8RKrdC5pC/UJERJTx2X40Rd3EY
	GNq73th2dRgGqpSk5qh3S1TkcRgq0D5CInwfPfTfm5356q8NvG1OK8K+MaAyskyo
	JPiyFRfx9s52GHB7aWfs2kyRtIDoie4qOd9icS9lEC/Dp4p/jTQfg3lv7/FRUI3J
	bv8x3+emu95HWcgp/sXqJJKvlzTxppW2rN/Zb1P63Wnar8hmpZPUh67MhJvvvP4A
	I8y00n/papAZitrEL0IfjqmIFIw7XLKqc8b4aQeET6lzg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1687556381; x=1687642781; bh=pOqaJNVVw1Yujk86s12qFXvYVm98zV7kiTF
	xpV44xlA=; b=PbO3la/VGAiMDQwEX2R39a0VvAlmKiWac3S5Fj0+KOm8jBAznZJ
	x9SwUMjgsYzOgM+ViTW6d+fd4ZZmcELbx0zMPjqtntIfV0SLJCYgFuagASTL4tj0
	n3yXU4jtuyVnBs/zMBn+kkmSHNw5KuOc30R1tP5KQasQryYHBXABndUwCVbzVJOS
	9pp28Cbx94NrWvJN8/VHqYGm5lw4K9fqmyWAX1AoXw3cdiN7MczlIhRNtx9M/Pc2
	ULfP33eDqRXIMKpC4PBRhBONh3Nm/alCKM8PRYluF9eByUXtXeTCT87lLbwNDqrZ
	o8yxDQTv+xl2+e8+sY0Vs1G55MODBpKHQzA==
X-ME-Sender: <xms:HRGWZJ2DUaFrNuAdqBx_bXvYQhRjvbmK_TkLmX3Mc8H3ObQEUj4alw>
    <xme:HRGWZAE0pq5GBgSMAY_VfBJBUZlPJeeTdhbPyzdcTvctR60-HjNvzlIk3RK8o_7pa
    jDeJFq_Zep3VKY1>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrgeeghecutefuodetggdotefrodftvfcurf
    hrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecunecujfgurhepofgfggfkfffhvffutgesthdtredtreertd
    enucfhrhhomhepfdforghnuhgvlhcuhggrghgvshhrvghithhhvghrfdcuoeforghnhggr
    gheshfgrshhtofgrihhlrdfhofeqnecuggftrfgrthhtvghrnhepueegtdeiteduueelud
    egffeggfetteekueetueekfedugfduueekffegleeivdeinecuvehluhhsthgvrhfuihii
    vgeptdenucfrrghrrghmpehmrghilhhfrhhomhepofgrnhghrghgsefhrghsthforghilh
    drhffo
X-ME-Proxy: <xmx:HRGWZJ5iyXXLjJ9Ee0In5JZJAJBeyOpmpaAAr1X1FgGSwBlR6XG6GA>
    <xmx:HRGWZG1d5EdV2Ik-srIGedT7PEgIzKEvPtddwlsP8LqWUcdttiz51A>
    <xmx:HRGWZMF566oe9sOZwmd2j1W0Mnsa69FL9UJYBuRONjTmcpfEgsNEvA>
    <xmx:HRGWZATlQYEfokHNqtbi91qzarDMp2TI1YldNqLuSL3tCXWRTI8eXA>
Feedback-ID: icb4a41f2:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 545E52D40090; Fri, 23 Jun 2023 17:39:41 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-499-gf27bbf33e2-fm-20230619.001-gf27bbf33
Mime-Version: 1.0
Message-Id: <d80d7dc4-d01e-49c1-b5b6-91140087fc7f@app.fastmail.com>
Date: Fri, 23 Jun 2023 23:39:20 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: yocto@lists.yoctoproject.org
Subject: [meta-raspberrypi] vc4-fkms-v3d vs. vc4-kms-v3d
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 23 Jun 2023 21:39:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60421

Hi users of meta-raspberrypi,

I'd like to ask around if for you people vc4-kms-v3d (opposed to vc4-fkms-v3d) *really* is the working way to get vc4 support on a Raspberry Pi 4 Model B.

Both on master and kirkstone, vc4-kms-v3d is the default. It's defined in /conf/machine/raspberrypi4-64.conf:

VC4DTBO ?= "vc4-kms-v3d"

I was mildly surprised to find this, because on my system (running Kirkstone) I can get the screen to work only if I specify vc4-fkms-v3d.

Commit a6fa6b3aec36b92c3750852dd6788af9d2ce08f6 [1] broke my build. The commit message further suggests that vc4-Fkms-v3d is broken, while vc4-kms-v3d is not. So I'm wondering:hy is it exactly the other way round on my machine?

    raspberrypi4: Use full kms (vc4-kms-v3d) DT overlay

    With latest 5.10 kernel fkms version fails to bring up VC4 and we do not
    get dri device initialized ( /dev/dri ) is empty, which means we can not
    launch wayland componsitors.

Best regards,
Manuel

