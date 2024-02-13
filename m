Return-Path: <paul@pbarker.dev>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78EFFC48260
	for <webhook@archiver.kernel.org>; Tue, 13 Feb 2024 11:39:44 +0000 (UTC)
Received: from wfout7-smtp.messagingengine.com (wfout7-smtp.messagingengine.com [64.147.123.150])
 by mx.groups.io with SMTP id smtpd.web11.9714.1707824376310206268
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Feb 2024 03:39:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pbarker.dev header.s=fm2 header.b=Ze1OqMxN;
 dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=lNKv5fTm;
 spf=pass (domain: pbarker.dev, ip: 64.147.123.150, mailfrom: paul@pbarker.dev)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailfout.west.internal (Postfix) with ESMTP id 3DC671C000A4;
	Tue, 13 Feb 2024 06:39:35 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Tue, 13 Feb 2024 06:39:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pbarker.dev; h=
	cc:content-transfer-encoding:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1707824374;
	 x=1707910774; bh=i+ATTnspWds25QHIz8c2REwOwDscmRkrMdSFTd4LK4M=; b=
	Ze1OqMxNh8Nu+oIrK53vRiRBeN+EQlbzBW1pLALGq4n0RsD+ImrNPSi4//zyLe/k
	Ef+8mbhJ3q8+QwU8HHXYVqA/dhrW/Bmk6Q20vzekdo4HpwxRapgGbuVatwCAcruH
	EzDR2VHV4OptLyIOpk82ueEsgfTW9ogACQHDkb7bFcpAOFVSrJZEFGzL3Us4KAgm
	2FKMpLKpY+AYLfyw1YH9CLPsUK0ddkX2fIsPckVCSpsCvy1oD5V+5pwdbfzegtgA
	0zoMlBQm/8YchDvEMzdf7VAnqznYso81XKKnwFQSaNQBe/TaoWbY95wfM7BeUwOL
	aAyXJzbaebbdH66lKH1I/Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1707824374; x=
	1707910774; bh=i+ATTnspWds25QHIz8c2REwOwDscmRkrMdSFTd4LK4M=; b=l
	NKv5fTmnvsv11LBY1NBpAe0J08tox25TJS3ezY3pc4eJMMy7Aj4f/Oj+EZjBMfdS
	XG9j9lQvgSat4aC8wh8OUyfq9jaJ5FPVDjiM5ws4YHJYJGSS64oiRGNYyR36Fv5Z
	6+XXq5tqH1Hvl77zxDIgfZ8WZE5jGUX5ykWUSm+pwpWRVX+/l4QJnB+2D0c/ySrS
	ivaj8yuAmvmcmAr5Wb/6v59XGPkK+sPp3kEE0oJqYggWxgWGFz1ovJ3pi9fuXvzz
	k3MEBY2DNIKDoG1w5t62fSymKo8qVXT2yHMxXpJgAleKI18qY/Bn8OJRjlaaHZ0m
	1ql4g+8m+fDeuxpenuvSg==
X-ME-Sender: <xms:9lTLZbprrDmZA3y8_Y5Hyzym4rad7tcdeCqmd1-GElE3IC7Ux3L26A>
    <xme:9lTLZVoWoVrCWL6TGazhasXHUB4ecx8ArDr8ap9HI8uLPFeN6SThX7RE-1te7_fMa
    ektXQAsAxtPbQpHAzU>
X-ME-Received: <xmr:9lTLZYO4A-9MU0bN0Le1oGB838P3c6Ohh9cGCukj5NACENQsrrNAh_S9G1Kw-OJBglUi>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudehgdeftdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepkfffgggfuffvfhfhjggtgfesthejre
    dttddvjeenucfhrhhomheprfgruhhluceurghrkhgvrhcuoehprghulhesphgsrghrkhgv
    rhdruggvvheqnecuggftrfgrthhtvghrnhepgfdugedtjefffffhkeelledtvdfgheefff
    ffvdejvdeuuedvfeetuefgleetgfeknecuffhomhgrihhnpehpsggrrhhkvghrrdguvghv
    necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepphgruh
    hlsehpsggrrhhkvghrrdguvghv
X-ME-Proxy: <xmx:9lTLZe6tAhRyVfQrV7-SEM1xCdtjQLktZjYwEWgv6WOzYGDvoAyqfw>
    <xmx:9lTLZa6mE-XCgAvKNbWjfp9UhXU-wi7RhAIb6ZFUy2sQPQbT78iwHA>
    <xmx:9lTLZWjobD7uvSLX-8xqF_2KAhIy7BZdVa2qutKhAhM13PtAf_HVfg>
    <xmx:9lTLZaGb_6EBb4jFxd_Ktt0ZhjAyvjOrGpDG9AcmWuoZV2t0TA00rVJzzgg>
Feedback-ID: i51494658:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 13 Feb 2024 06:39:34 -0500 (EST)
Message-ID: <c8debf1e-267f-40e0-bf8b-378d73ecaf54@pbarker.dev>
Date: Tue, 13 Feb 2024 11:39:33 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: condition based bbapend compilation
Content-Language: en-GB
To: saswatinayak2010@gmail.com, yocto@lists.yoctoproject.org
References: <oOqR.1707584165907539093.EjWg@lists.yoctoproject.org>
From: Paul Barker <paul@pbarker.dev>
In-Reply-To: <oOqR.1707584165907539093.EjWg@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Feb 2024 11:39:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62475

On 10/02/2024 16:56, saswatinayak2010@gmail.com wrote:
> Hello All,
>  
> Seeking assistance to identify a FLAG that allows the application of a condition-based bbappend file during the image compilation process. Any guidance or insights would be greatly appreciated.
>  
> For example If 1 is set in the flag, it will indicate inclusion, while 0 will signify exclusion.
>  
> Please anyone help me with an example.

You can move your bbappend contents to a .inc file, e.g. 'example.inc'.

Then in the bbappend file, you can conditionally include your .inc file
with something like:

    require ${@bb.utils.contains('FLAG', '1', 'example.inc', '', d)}

There are some more tricks in the slides for my talk "Creating Friendly
Layers, 2022 Edition" [1] from the Yocto Project Summit 2022.11.

[1]: https://pub.pbarker.dev/presentations/2022-12-01%20Yocto%20Project%20Summit%202022.11%20-%20Creating%20Friendly%20Layers%202022%20Edition/Friendly%20Layers%202022.pdf

Thanks,

-- 
Paul Barker

