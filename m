Return-Path: <andrei@gherzan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8BE0FC433EF
	for <webhook@archiver.kernel.org>; Fri, 19 Nov 2021 10:49:22 +0000 (UTC)
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com
 [64.147.123.24])
 by mx.groups.io with SMTP id smtpd.web09.7431.1637318961310722584
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Nov 2021 02:49:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm3 header.b=2N7R0i/3;
 spf=pass (domain: gherzan.com, ip: 64.147.123.24,
 mailfrom: andrei@gherzan.com)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id AFC703201C3B
	for <yocto@lists.yoctoproject.org>; Fri, 19 Nov 2021 05:49:18 -0500 (EST)
Received: from imap41 ([10.202.2.91])
  by compute4.internal (MEProxy); Fri, 19 Nov 2021 05:49:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm3; bh=FUcCavaSMAv/UyKp8pVR8grB4nINpuf
	jEv6lmgK5bMw=; b=2N7R0i/33otIHKcuxJHvOOH7QTsq6zmt7RoeykIg6RTSno6
	Rlc3p7K+/JAPvjNthdt8Awd/vZ2Q08XL0pni1KtEznP1w8yQB0uI1RlmLjMqOL/+
	80Krzg9Sqhyu/Y5MNUifda4BnKgdZL2+9ElUvH/GGuaBLUHSOwoOfoS5lHrd8rWN
	ovVnqvFklq1Gp6vT8vr/LwpEuJEmaAQyHeBThPo1M0qtNpM6lwyiNMIzCCEyNxFU
	BiEXteRl2hOhTP758ZNgNfE4Q6RuHUqh/CtSnLJTbCskz6kvKX2/fjR7etK81BtF
	U0igdiSGDhgw9C6Sdz2be3WMVy1OOwYU0d4usIA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=FUcCav
	aSMAv/UyKp8pVR8grB4nINpufjEv6lmgK5bMw=; b=FD3R6WWah5B5ZsuL0hdKdJ
	RHoHaU8LZMqCI5NN7YpFy4ol4eN43EtirqWNQ7vpjoFYhYkyAy1PEpJy9rpSg77X
	uaHLUV0Dap0o+bfS2GIQgsG5rJP2gHa/riLYvzQWI2EFJwe5VSaKhZFAUUq85F74
	eoixVsZFG5744PUAgArLinXsr4dCbQbdmoExUGnOVNG7Gy1uYibZBizW2R2YEBb8
	vzk/AD8mczZpHhcvvAggO/k/GqJmncVlKH5mNsTtQm/oSHrTnycMVhxlztNN9GUP
	ioVpt7yGNreT3Gc5gFWzKhIx7jDaaf6b0XCqMq3nbjV5ls/Y1S9i2A6KcTazmHmQ
	==
X-ME-Sender: <xms:LoGXYSlmXnHFKpHFTEmUwFjsBWmJVRCOIrSFErlZ8JfWhmHN5rVBBA>
    <xme:LoGXYZ1xvBi2z5iA1uR0fEVCbWNsmJzMHWjRQBUMznM6Gp0QtrU2i0GOa86ECaA0a
    cEwEFa9_edEWzetj5E>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvuddrfeekgddvtdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepofgfggfkjghffffhvffutgesrgdtre
    erreertdenucfhrhhomhepfdetnhgurhgvihcuifhhvghriigrnhdfuceorghnughrvghi
    sehghhgvrhiirghnrdgtohhmqeenucggtffrrghtthgvrhhnpeeijeejieelvdekfeehte
    elhfelgfdvjeffheevjeekgfdvfeegfeeugeeiieevhfenucffohhmrghinhepghhithhh
    uhgsrdgtohhmnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homheprghnughrvghisehghhgvrhiirghnrdgtohhm
X-ME-Proxy: <xmx:LoGXYQrGa7AF9Ow5sN3d6wp1PcNDmM4DYMPxpBS5zujpmBNLCuNAIw>
    <xmx:LoGXYWm663Mc9_GWtK_G1xguOlLsGXa0q3D7sUTEBadvQpmUlfyeVg>
    <xmx:LoGXYQ156Efvgz-mBeB_NQUPYOnSlzPJ_46WAOgty9penoaENt_nZQ>
    <xmx:LoGXYRAN3AVigJXKRfvftHSjXUAqn_e_kepTtTDAuq025ioXP2A5gA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 06E473C0C77; Fri, 19 Nov 2021 05:49:18 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-1371-g2296cc3491-fm-20211109.003-g2296cc34
Mime-Version: 1.0
Message-Id: <a4a248b1-4a28-4c38-981b-76bd7013ec6f@www.fastmail.com>
In-Reply-To: <DAA57A92-5A7F-47CE-9DFC-4CB8F2231FCC@gmail.com>
References: 
 <CA+chaQfoa9PH_aUfntLR5QSQN0h25O4AaNhMzCYrzHDgr-sUBA@mail.gmail.com>
 <E21E0994-E5B8-4763-8EC4-5A16756BC8A7@gmail.com>
 <DAA57A92-5A7F-47CE-9DFC-4CB8F2231FCC@gmail.com>
Date: Fri, 19 Nov 2021 10:48:57 +0000
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi][PATCH] linux-firmware-rpidistro: add
 branch in
 SRC_URI
Content-Type: multipart/alternative;
 boundary=703c7a6ecef943b29d570182fe4d1172
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 19 Nov 2021 10:49:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55375

--703c7a6ecef943b29d570182fe4d1172
Content-Type: text/plain

On Fri, 19 Nov 2021, at 10:26, Devendra Tewari wrote:
> https://github.com/agherzan/meta-raspberrypi/pull/951

Looks good. Waiting for CI and I will merge.

---
Andrei

--703c7a6ecef943b29d570182fe4d1172
Content-Type: text/html

<!DOCTYPE html><html><head><title></title><style type="text/css">p.MsoNormal,p.MsoNoSpacing{margin:0}</style></head><body><div>On Fri, 19 Nov 2021, at 10:26, Devendra Tewari wrote:<br></div><blockquote type="cite" id="qt" style="overflow-wrap:break-word;"><div><a href="https://github.com/agherzan/meta-raspberrypi/pull/951" class="qt-">https://github.com/agherzan/meta-raspberrypi/pull/951</a><br></div></blockquote><div><br></div><div>Looks good. Waiting for CI and I will merge.<br></div><div><br></div><div>---<br></div><div>Andrei<br></div><div><br></div></body></html>
--703c7a6ecef943b29d570182fe4d1172--

