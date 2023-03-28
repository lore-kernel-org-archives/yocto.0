Return-Path: <me@zygoon.pl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F703C76196
	for <webhook@archiver.kernel.org>; Tue, 28 Mar 2023 14:03:56 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com [66.111.4.28])
 by mx.groups.io with SMTP id smtpd.web10.67368.1680012228427654146
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Mar 2023 07:03:49 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@zygoon.pl header.s=fm1 header.b=S2MmNB9t;
 spf=pass (domain: zygoon.pl, ip: 66.111.4.28, mailfrom: me@zygoon.pl)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id 84E285C005C
	for <yocto@lists.yoctoproject.org>; Tue, 28 Mar 2023 10:03:47 -0400 (EDT)
Received: from imap44 ([10.202.2.94])
  by compute3.internal (MEProxy); Tue, 28 Mar 2023 10:03:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zygoon.pl; h=cc
	:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm1; t=1680012227; x=1680098627; bh=6E
	z2zsuEs2N2IGL2wpJaq/2L3HMlCL1SxhGKkS4jSow=; b=S2MmNB9tPH2jWGDglr
	fiYmg3SC2rG+Ya3kzOtSLXeCu9Wny71D/+dx1kAKNW6wAMKdQI3afzPb0NOWuhWG
	V9KJL1uBcDZH5c1pBCwidyl+CWoJlvMdpP9ZzmY4VUlbK3/h63TWTFNNsYKyLbsb
	l51oMyOiWSGr6aABg5T+w9l1TDsjelJQJWwT4/yMpYz0W7ix3Vo7j0Lpg9VeEFRE
	kQWnRNO3x+WHJFYJYcfx5xRl/R35fq+QraFe6eV0vvrndZFBZExi2I6a5qXRuDCH
	LoXiGlHpx2MNai6o9+wmWpggTkoBvXGgiBa1JXnwHqG3V9G44srK97bYiUmEKsgP
	hosA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; t=1680012227; x=1680098627; bh=6Ez2zsuEs2N2I
	GL2wpJaq/2L3HMlCL1SxhGKkS4jSow=; b=quBZZI/cPuTYNWRnmQE8lj8j0jj35
	zcO7G7VJTn5Jp4l/tYjAUD0sYV/7FhoYF/L9PpH5p0QlTHOESUxTWjN4bKFqjqG5
	K8ZA5R+aG9TYiloKChSgPfwDudjPlQVU5kgQ5tfw3M5Z6nn9PnOcNKPrd1vZOJ1x
	C6suPdn7RhzDF2USjUY4oXfvJK6TBFbDF9cV3gPmYO/MIS29pAmzexolD/HCCJo1
	XCg4n7hZOpxNrTDVkot1ax2vIX29goT4e0t+on3o08RLHE/OCJiIW9JE9/XM6avK
	69ru20Rf+6jdWeTjdfu7E0mKjs7WQ+iXz172YZidKTiS6v2o8Vzgw4fpA==
X-ME-Sender: <xms:w_MiZOysLPz6O8HT5n6qIGLZi2eS6MxODaVTaps37VUJ3TRz6OvOgw>
    <xme:w_MiZKTE59tssd-xPRvzMik-90AH6OWT5RHY6kOOUdTAM3rWyFzDb9YYWDqMmHKrg
    7D14QXFQluaNHPFXQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrvdehgedgjedvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfgjfhffhffvufgtsehttd
    ertderredtnecuhfhrohhmpedfkgihghhmuhhnthcumfhrhihnihgtkhhifdcuoehmvges
    iiihghhoohhnrdhplheqnecuggftrfgrthhtvghrnhepteejhfevtdelieeulefhhfduhf
    eugeelieefueelkeejgffggeeiheeuudeugefhnecuvehluhhsthgvrhfuihiivgeptden
    ucfrrghrrghmpehmrghilhhfrhhomhepmhgvseiihihgohhonhdrphhl
X-ME-Proxy: <xmx:w_MiZAVq6lL8-jX9HeHbnuwR4o3DqVa1SBokTR9oy40LU6qugHUFHw>
    <xmx:w_MiZEgOj0A9I0Z4FamDIvvUUy_N1h1VzbxovWijTNNi1J7TeKtx_g>
    <xmx:w_MiZACJYdozUxCU2w7t-1FgxXw78J2tJBsbNPM0rUTshyWsrrznbQ>
    <xmx:w_MiZDNJlV_m9jZGJ-JzAMgZJnd1cfT18WEYQ-WOHItoeo2vHfFhuQ>
Feedback-ID: i416c40e7:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 3378336A007A; Tue, 28 Mar 2023 10:03:47 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-237-g62623e8e3f-fm-20230327.001-g62623e8e
Mime-Version: 1.0
Message-Id: <77c1fa29-4b32-413a-92a5-dd9f69a44255@app.fastmail.com>
In-Reply-To: <17508E12CA70B264.28404@lists.yoctoproject.org>
References: <17508E12CA70B264.28404@lists.yoctoproject.org>
Date: Tue, 28 Mar 2023 16:03:21 +0200
From: "Zygmunt Krynicki" <me@zygoon.pl>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [PATCH] dm-verity-img.bbclass: detect veritysetup failure
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Mar 2023 14:03:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59539

> diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bbclass
> index d809985..60e535b 100644
> --- a/classes/dm-verity-img.bbclass
> +++ b/classes/dm-verity-img.bbclass
> @@ -43,12 +43,19 @@ process_verity() {
>      # underscores to create correct shell variable names. For the value part:
>      # just trim all white-spaces.
>      IFS=":"
> +    local N=0
>      while read KEY VAL; do
>          printf '%s=%s\n' \
>              "$(echo "$KEY" | tr '[:lower:]' '[:upper:]' | sed 's/ /_/g')" \
>              "$(echo "$VAL" | tr -d ' \t')" >> $ENV
> +        N=$(expr N + 1)

This should have said $(expo $N + 1), I've only tested the failing case before submitting.

ZK

