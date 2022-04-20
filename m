Return-Path: <andrei@gherzan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1309FC63705
	for <webhook@archiver.kernel.org>; Thu, 21 Apr 2022 16:46:09 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 by mx.groups.io with SMTP id smtpd.web12.8916.1650467337827325927
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Apr 2022 08:08:58 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gherzan.com header.s=fm2
 header.b=Ufku//8R;
 spf=pass (domain: gherzan.com, ip: 66.111.4.28, mailfrom: andrei@gherzan.com)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id 317955C00B9;
	Wed, 20 Apr 2022 11:08:57 -0400 (EDT)
Received: from imap41 ([10.202.2.91])
  by compute3.internal (MEProxy); Wed, 20 Apr 2022 11:08:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1650467337; x=1650553737; bh=ljsLbbVMTG
	5kHUlOLWb3wZsPRQKjjXF2L+zdY0KUW5Y=; b=Ufku//8RIGaY+2WxubDcFoje4C
	+/0egUYZ4ejS/HpdQ9ScJXNiv1IJ+LnbZuu7EUAgheMO8fVgK3A9ypA9riw3Towz
	e1cPasmguh3N9fWRLWeh0ZRV7cmTtBryXhm3uT1cemy5eG2H2pcpLBR7StHzFA3y
	4ARQ5S5LFFKwqnRK2xDWaLvFMeDtZPGq80GvcZSC93YURNg6smVpgzm9c5iTq0TY
	3qIHbUoc8nSJDy0S5mjkxOfrgNE8LiHuodff2oTWBKZwPvD1iJK7ZdDctkcqiAz+
	yog1nAUuGEECD0TdPnN1wYA6lv5ACELIBqKy1fL5uY1bno6XshTDKzi4GiAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1650467337; x=
	1650553737; bh=ljsLbbVMTG5kHUlOLWb3wZsPRQKjjXF2L+zdY0KUW5Y=; b=w
	KMDnG3xlfcVmK92DXpQjJhBwSHEKjzJuO08IxnZv8DgTJSEiKHsvrnJhhUjo/ZMY
	vnZx/lMaEEqOh9MnfUXmCkGju+3HqP0qfmWQNA5HrhPUa/EuIOe7Pr1cJEdH91Z3
	TZN0HRUb01bm0EmRV+cf2MKFKlrk5WM4CxTNOWsvnQd/9t0ob2FNIRAj2BlUneB+
	aEZbHFBnkQ1XASA3FC5ydmM+lpS49U5e8KZ5KcKKsP3PbS8I3ZjRcePIYrMtx+Yh
	HgA2gvtRHdbtt0b4uuLfLrB676SMsUyyNovgCcAhM9zFlYoZbDYC8F9pOnS9Kzx2
	XNSq0GhOEhAb3fVzQcrtg==
X-ME-Sender: <xms:CCJgYscPaIE98PZzn8RklR-R3GMpk-uIWyOZmvEpBPfhl-VnMXvuOw>
    <xme:CCJgYuOd5fysN4Tazj6iSEdGOsE3fy9P2NtbymXrDMaJJ42fmmgUTUbAopnONhqt0
    XdpmLFdnsmEM0tzkoI>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvfedrtddtgdeiudcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
    vghiucfihhgvrhiirghnfdcuoegrnhgurhgvihesghhhvghriigrnhdrtghomheqnecugg
    ftrfgrthhtvghrnhepffektdelfeffhfekffefueevjeduteevjedtlefhveelueeujeeg
    leeukefgffevnecuffhomhgrihhnpehgihhthhhusgdrtghomhenucevlhhushhtvghruf
    hiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvihesghhhvghriigr
    nhdrtghomh
X-ME-Proxy: <xmx:CCJgYtiDQljp2yFB5aj6M9ACeoHI95LcE8u0Xokydd8TyrJENoIPeQ>
    <xmx:CCJgYh-fyXbqFyypjhjQGjOjWZq0gAf8VOwAiWKzVk6_31m4tEZs3g>
    <xmx:CCJgYotepodUJub55QWfs85Nyr2FqY6iYwoVm4Zb4ehNJ1LIN-7zRQ>
    <xmx:CSJgYh6KPHWjJFGbTdJVerq34cZutnztztWFGnCSceGmUUebnAGVJA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id B12C13C081A; Wed, 20 Apr 2022 11:08:56 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.7.0-alpha0-568-g521196dd5d-fm-20220414.001-g521196dd
Mime-Version: 1.0
Message-Id: <ba897b80-883c-4284-8eaa-6cd3a2f092b4@www.fastmail.com>
In-Reply-To: <20220420020347.17876-1-Meng.Li@windriver.com>
References: <20220420020347.17876-1-Meng.Li@windriver.com>
Date: Wed, 20 Apr 2022 16:08:17 +0100
From: "Andrei Gherzan" <andrei@gherzan.com>
To: "Meng Li" <Meng.Li@windriver.com>, yocto@lists.yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] meta-raspberrypi: u-boot: remove the
 randundant
 patch
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Apr 2022 16:46:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56823

Hi,

On Wed, 20 Apr 2022, at 03:03, Meng Li wrote:
> This patch had been merged into u-boot upstream. Its commit is
> 29f7d05a347a("dm: core: Move ofdata_to_platdata() call earlier").
> So, remove the randundant patch to avoid building error.
>
> Signed-off-by: Meng Li <Meng.Li@windriver.com>

I have pulled this patch in https://github.com/agherzan/meta-raspberrypi/pull/1053.

Thanks,
Andrei

