Return-Path: <andrei@gherzan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A771C6370A
	for <webhook@archiver.kernel.org>; Thu, 21 Apr 2022 16:46:09 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 by mx.groups.io with SMTP id smtpd.web08.8987.1650467370011894707
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Apr 2022 08:09:30 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gherzan.com header.s=fm2
 header.b=J3HAB+kW;
 spf=pass (domain: gherzan.com, ip: 66.111.4.28, mailfrom: andrei@gherzan.com)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id 57B885C00B9;
	Wed, 20 Apr 2022 11:09:29 -0400 (EDT)
Received: from imap41 ([10.202.2.91])
  by compute3.internal (MEProxy); Wed, 20 Apr 2022 11:09:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1650467369; x=1650553769; bh=f3sJoPHTqk
	nOgdPHOLE5wgUI64i20wvVowp1L4+LCjw=; b=J3HAB+kWv9B5LEg1qThEIpT3A4
	NP+MF3yIrd3ZeljCyzpmyvxlBfTY6ZKThRogbHAPFnafZeeTnTDhcAxHNOKIkD/Y
	sud69tz4Rx4VpOLXjGwuku+X7Vj+c1OFurZhool9wiaOwtK3YZ2InEtv5YYLBana
	J65GLS8hJTduA+yjILfGOmJC5CMAEr1uv3TIQmAPpOqEhAbY+dCEJuj4vAeC3kKW
	t2HmDUr3SKIHKbJ2hR2A2UUys5AiA2/lnRrcOG3uyuUz4cFD7tmnP9B1JZ42d+Bo
	Db/PSsxOR4PqVZdtIXeDSgxVH+6G/pLFZ1/LMuwZacOLKHmQaXfMSbze1XMg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1650467369; x=
	1650553769; bh=f3sJoPHTqknOgdPHOLE5wgUI64i20wvVowp1L4+LCjw=; b=g
	He5W1HsDDX2MJGW1OEiCqX8nW0/anTu3+OKWpCTEkdF3witcAbYib/1f1bAQL990
	xhDJ+cXOXo1hwvOHOYEvITL6ogePkgPeSq4bXkUzL7bTyZ4Dpj4aGDe5cXcjFLSN
	qr2X4Qr/jkFYlzQyLfj+EWbMM/HXzOuKa2qmklzpWEqpoEZmIkz7osEtmCe7b6uh
	7Gic9mFUG4tCftSB/dmxKYdXGB/SlC1jSXLAWwnSdFu7JV4zLVdQPZ4Adm1IB65k
	P8upqFYLYYExSCWxMNFizdBwi8WdEIGsThl8g4++S+88a+o5zglMiMoaWiquTqli
	OBhqIRcJnXAoX24vgToVA==
X-ME-Sender: <xms:KCJgYseTe3lmOTD96NgJB1_F2GoiteTHJXc-IqTXGqsZzrn5Xg_BhA>
    <xme:KCJgYuPRzNUECCoUnpPErX7Vn5o3mjfJxwRuapZYBJouUY-rMTfhQehZzeQgHiUX8
    HJmdaPjrgOi-myXOdk>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvfedrtddtgdeiudcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepofgfggfkjghffffhvfevufgtsehttd
    ertderredtnecuhfhrohhmpedftehnughrvghiucfihhgvrhiirghnfdcuoegrnhgurhgv
    ihesghhhvghriigrnhdrtghomheqnecuggftrfgrthhtvghrnheptdehvedvuedtkeeife
    ehhedtveehtdejjedvhffgfeefhfeffeefledtteekieetnecuffhomhgrihhnpehgihht
    hhhusgdrtghomhenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegrnhgurhgvihesghhhvghriigrnhdrtghomh
X-ME-Proxy: <xmx:KCJgYtina1vEDwRDbvZGYM2OIzuvwsUbZlizzQRuemkPA65XBAdGUg>
    <xmx:KCJgYh_zpfW9-X4sQB9tA_pI3VY1LJyh0zFg9bS6NrSfFfccGrVFUw>
    <xmx:KCJgYosi7u68zIPcaJRyjT5PrcV0uFXM4OgHRNxbPC-8HgEh5SbKig>
    <xmx:KSJgYh4-VojOYrN4vEd2FvPoUBHaV5GjmB7M82jrplV7ieUeeTENVA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id E1BE83C0D56; Wed, 20 Apr 2022 11:09:28 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.7.0-alpha0-568-g521196dd5d-fm-20220414.001-g521196dd
Mime-Version: 1.0
Message-Id: <87f8c226-af3e-4fb2-a0a0-34d3a35f375b@www.fastmail.com>
In-Reply-To: <20220414123656.474960-1-davide.gardenal@huawei.com>
References: <20220414123656.474960-1-davide.gardenal@huawei.com>
Date: Wed, 20 Apr 2022 16:09:08 +0100
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: davide.gardenal@huawei.com
Subject: Re: [yocto] [meta-raspberrypi][PATCH] bluez-firmware-rpidistro: add
 compatibility to oe-core/create-spdx
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Apr 2022 16:46:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56824

Hi,

On Thu, 14 Apr 2022, at 13:36, Davide Gardenal wrote:
> Add do_create_spdx dependency to fix error when LICENCE is not found
>
> Signed-off-by: Davide Gardenal <davide.gardenal@huawei.com>

I have pulled this patch in https://github.com/agherzan/meta-raspberrypi/pull/1053.

Thanks,
Andrei

