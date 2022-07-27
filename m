Return-Path: <ManWag@FastMail.FM>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 022C2C04A68
	for <webhook@archiver.kernel.org>; Wed, 27 Jul 2022 21:28:43 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
 [66.111.4.29])
 by mx.groups.io with SMTP id smtpd.web12.25224.1658957313477294949
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Jul 2022 14:28:33 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@fastmail.fm header.s=fm3
 header.b=QpDLHSvF;
 spf=pass (domain: fastmail.fm, ip: 66.111.4.29, mailfrom: manwag@fastmail.fm)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id ADC455C00D4
	for <yocto@lists.yoctoproject.org>; Wed, 27 Jul 2022 17:28:32 -0400 (EDT)
Received: from imap43 ([10.202.2.93])
  by compute3.internal (MEProxy); Wed, 27 Jul 2022 17:28:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	cc:content-type:date:date:from:from:in-reply-to:message-id
	:mime-version:reply-to:sender:subject:subject:to:to; s=fm3; t=
	1658957312; x=1659043712; bh=7JRSvaUtNtmR8zLmSq0kk5ged1893QAF+Py
	pDiZFF2k=; b=QpDLHSvFDJ3OByvKVxFOABglv1XpHb16DXvy82VwwBe7Vv8ITc7
	H7croSMaN2MLnHHBD2fbBY2GUVN78AFQh/j7FWia2unfvB8G4xImgdLR/88IyCze
	FSO/rfyKL0/dy6tkYljfjBs/VkcGN07jvarFtjsngpJ02TLamX9QmfrC5L8bzqyg
	jreN/PJ13NiKJg+IBH4b8XJiQb/3BA+9hyKSnvpP4GYi7amFvyJlu5r4WHLCNeut
	GmKMe/sMD+/Qcp33NBMXY1OqU95GxySnQ7Wr/z9+MCPDyKPmML1LPXEsg+FiWXTI
	6sK/5BtaiqoMo2/Yj9sO6cFBW7DLKd8JQAA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:message-id:mime-version
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1658957312; x=
	1659043712; bh=7JRSvaUtNtmR8zLmSq0kk5ged1893QAF+PypDiZFF2k=; b=k
	2gcAbUedFV+s7YeAqPXuIawmJ3Xd/wtUVu1y3hdUPxKaXRl1xR/6wnIxN4tWFt/U
	mhe9K2goIzOs4cQs4UQSG+UhNYZjURDgbvfhn/CiSeAdPjR7z3+gizJWn1La8p+k
	5XMbw+lyicUxnh/8G4M1n29O0di/2xMRQ9X+eFjMfQ7IlPkYzvehSzZUN3kBLlAD
	FuCL1A4NeFJtuX3JiHA9CYEi93DAIru34mA29DXLMg5uneBIszqk5zCRd6KPP6uJ
	EOg6DmrImeUORG8bWGWM+hpkf7YCyc0qpMwGtg+MRirseZQxUtQmlENUOmUOYE4Y
	UKc7HPkR4ZLTPxqBDSNMQ==
X-ME-Sender: <xms:AK7hYgOd74CsVr8RNEEByT-s3sKXIKqrsFAGKiChwXsrxZxnShzBxw>
    <xme:AK7hYm-o0M2cA4jyKOi2L7o-InTn8KduMMO62R9zgs0l4bpxRqU7kaEMfVWi-EMz8
    W2286K_gXcRG7zs>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvfedrvdduvddgudeivdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepofgfggfkfffhvffutgesthdtre
    dtreertdenucfhrhhomhepfdforghnuhgvlhcuhggrghgvshhrvghithhhvghrfdcuoefo
    rghnhggrgheshfgrshhtofgrihhlrdfhofeqnecuggftrfgrthhtvghrnhephfefjeeigf
    fhlefhffekkeetheevudefteetvdfgledvgffgteeffeeluddtueeunecuffhomhgrihhn
    peihohgtthhophhrohhjvggtthdrohhrghdptgholhhorhdqhhgvgidrtghomhenucevlh
    hushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeforghnhggrghes
    hfgrshhtofgrihhlrdfhof
X-ME-Proxy: <xmx:AK7hYnTJ35gw8RI8N-b49LmQ8h7892At7Z5eY9nqC3aYUL7mVoTq8A>
    <xmx:AK7hYotqGrqW2Rxlbg-fZCb0odgcv3Xc3ql-nyrBOPdnGly-1V8U9w>
    <xmx:AK7hYocDYPdNqr4AZ_vOg4NGKYByGqwcuL-weUtrnnTjXR18Er5AFA>
    <xmx:AK7hYiqFJ4zzI0sCl9O6u_0A8ZWJTfviN7lzeB20y53y6phpLt5ICA>
Feedback-ID: icb4a41f2:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 753B22D40074; Wed, 27 Jul 2022 17:28:32 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.7.0-alpha0-757-gc3ad9c75d3-fm-20220722.001-gc3ad9c75
Mime-Version: 1.0
Message-Id: <0fac14ce-79b3-4988-8bb7-89b33320f650@www.fastmail.com>
Date: Wed, 27 Jul 2022 23:28:12 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: yocto@lists.yoctoproject.org
Subject: Psplash and transparency in images
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Jul 2022 21:28:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57658

Hello all,

I need to find something out regarding Psplash. I'm currently unable to try things out so I've got to ask around here.

Does Psplash support any kind of transparency, either alpha channel in the PNG or setting one key color as the transparent one? I couldn't find any info at all regarding the former, and no indication to support the latter. Hence I think transparency is not supported and one needs to match the colors in the psplash-colors.h [1] and the actual image [2][3] for them to have the same background color. It would be cool if anyone could confirm these assumptions.

[1] https://git.yoctoproject.org/psplash/tree/psplash-colors.h#n15 https://www.color-hex.com/color/ecece1
[2] https://git.yoctoproject.org/psplash/plain/base-images/psplash-poky.png
[3] https://git.yoctoproject.org/psplash/plain/base-images/psplash-bar.png

One more question:
Where does psplash draw the border between `PSPLASH_BACKGROUND_COLOR` [4] and `PSPLASH_BAR_BACKGROUND_COLOR`? [5]

[4] https://git.yoctoproject.org/psplash/tree/psplash-colors.h#n15
[5] https://git.yoctoproject.org/psplash/tree/psplash-colors.h#n24

Thanks all,
Manuel

