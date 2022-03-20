Return-Path: <ManWag@FastMail.FM>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B510C433EF
	for <webhook@archiver.kernel.org>; Sun, 20 Mar 2022 18:03:35 +0000 (UTC)
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com
 [64.147.123.21])
 by mx.groups.io with SMTP id smtpd.web10.20791.1647799414366683927
 for <yocto@lists.yoctoproject.org>;
 Sun, 20 Mar 2022 11:03:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm3 header.b=Y2xNlB6w;
 spf=pass (domain: fastmail.fm, ip: 64.147.123.21,
 mailfrom: manwag@fastmail.fm)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id B027C3200A64
	for <yocto@lists.yoctoproject.org>; Sun, 20 Mar 2022 14:03:33 -0400 (EDT)
Received: from imap41 ([10.202.2.91])
  by compute2.internal (MEProxy); Sun, 20 Mar 2022 14:03:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	cc:content-type:date:date:from:from:in-reply-to:message-id
	:mime-version:reply-to:sender:subject:subject:to:to; s=fm3; bh=e
	yPCtkDKrh4dlO/cBkniWctFijMrBlB7njiWzzEIIxU=; b=Y2xNlB6wzQj/LLlOD
	D8xo9e3l6MyK/JAw/MOp6eVHa0Ms2bzMt10s3lQVBe4P3CUP7mlpPiLJaS/3i+AP
	iE7C3ufwSALKADMVdmlUTjcqNBAVNwWHnIqk1w09x30RQqWG4fnLDKESsVPc/pcO
	bc+AbDxcCG7dPoIjNoa2YhVLIKNgUNm9dJgcSBg0uizoPJ3BXVOVg8AgMVK4vPDs
	E0VMRyW6ue56n74L/7YBH4g2PESTNvblkN4vz7uD4ZHIKWTvft5Kq+sMi0Mp6CN2
	U89H9AWRBkTIpMmcIBaG3yzBmnWJFsn636LWpAqY0BwEjSFVIwxaj5HsHWEpv4bn
	kInHw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; bh=eyPCtkDKrh4dlO/cBkniWctFijMrBlB7njiWzzEII
	xU=; b=NW5fzjEoSaPr+DQIQl1xZZrfljra/R93PfaQ98aHpJDFhS+q01HSJ1R1u
	BYOrVG7bVr43vZpnVVV36okXYz7YhqxYuxcGgus/MTFpur8r6JXf9nrmAVHB6qA/
	q4rnVc3ALIpQC8BMnLwdj563oD0Z3SRG71fYfm2iQ5QOWyWioFcYbrhPZ6ZyU9L8
	I7vxPwYzvx6USiGqab4g9Cn7SdfWYc/GNxS2IviNzxOQ5L2lbvNN7KnTDRuXfqST
	UZlceFvIdGbLS4cX4sxlFUOyRWssPTtTW6Z+LUAhOwynwrW8GT58J7zpDtFO2bZi
	gIBqB4IuP6AtXTYIWjXPhNo+Y2J3Q==
X-ME-Sender: <xms:dWw3YmFTeExrjl_asB00RnF1gCv2wu5yusHLgrk6mMVFf23S24H_pg>
    <xme:dWw3YnXChu1rQ6WKDU9IAtwha_yWOQGBPPx-CdFYvZIR7Hp_mClMGLo59FKajmUhD
    SkBMkaO67ImNhF2>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvvddrudeguddguddtlecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepofgfggfkfffhvffutgesthdtre
    dtreertdenucfhrhhomhepfdforghnuhgvlhcuhggrghgvshhrvghithhhvghrfdcuoefo
    rghnhggrgheshfgrshhtofgrihhlrdfhofeqnecuggftrfgrthhtvghrnhepueegheevle
    dtvddugeeffedtuddvueehvdffueeljeevheeigeeukeeuvdegudefnecuffhomhgrihhn
    pehushgvrhdrfhhmnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomhepofgrnhghrghgsefhrghsthforghilhdrhffo
X-ME-Proxy: <xmx:dWw3YgJCUuZlrRghyDAubYQDmc-pmgU3qtUtfa9nSxNQfNocEaEqbg>
    <xmx:dWw3YgFTD9Ol_WJVCRFCj2ZR0ueJct0obydLDCnM3iAG2W5YCHRqXA>
    <xmx:dWw3YsUBSUHT7iq7MNSYlJxOqRVvJSc3YkWpjAW-bibC-I94Zuh1mw>
    <xmx:dWw3YkhpoW_GeTh9Cflf7pdoQHV8OwHNhoJI0Bae835efeK9GtQMgw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 08D0D3C00CF; Sun, 20 Mar 2022 14:03:33 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-4907-g25ce6f34a9-fm-20220311.001-g25ce6f34
Mime-Version: 1.0
Message-Id: <971b85a6-1394-4590-8c74-4d913993ae23@www.fastmail.com>
Date: Sun, 20 Mar 2022 19:02:28 +0100
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: yocto@lists.yoctoproject.org
Subject: Booting my raspberry pi image hangs at some point. Where exactly?
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 20 Mar 2022 18:03:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56508

Hi all,

I can netboot my Raspberry Pi 4 still fine, but when I flash the image onto a usb drive using wic, booting fails. I just stops to boot at one point. I'd be glad if someone could tell me where it's hanging so I could try to start tracking it down at the right place. All metalayers are on dunfell but not at the newest commit.

USB booting was working fine months ago and I don't really know at which point it stopped working.

This is the last I get from the serial console:

    Read config.txt bytes    36302 hnd 0x00000035 
    Read start4.elf bytes  2229120 hnd 0x000025f8 
    Read fixup4.dat bytes     5448 hnd 0x0000004b 
    Firmware: 7d9a298cda813f747b51fe17e1e417e7bf5ca94d May 27 2021 14:02:15
    0x00d03114 0x00000000 0x000000ff
    MEM GPU: 76 ARM: 947 TOTAL: 1023
    Starting start4.elf @ 0xfeb00200 partition 0
    Stopping network
    Stop display
    Display stopped
    +

The rest sadly appears on the screen only, so here is an actual screenshot:

    https://user.fm/files/v2-1d64d080db788dec685957ae4863e1f4/raspi.png

It seems to detect the usb drive just fine. The last related log line I get is

    sd 0:0:0:0: [sda] Attached SCSI removable disk

Whatever is running (the kernel?) is not dead, though. Around 30 seconds later it prints a "vcc-sd: disabling" and some minutes later a "random: crng init done" (= random number generator is initialized).

Does anyone have an idea? I'll try to get my hands on an sd card in the meantime.

Regards,
Manuel

