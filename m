Return-Path: <mauro@faresoftware.it>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32E91C71135
	for <webhook@archiver.kernel.org>; Sat, 14 Jun 2025 09:05:56 +0000 (UTC)
Received: from posta.faresoftware.it (posta.faresoftware.it [93.51.112.187])
 by mx.groups.io with SMTP id smtpd.web10.6798.1749891948914495213
 for <yocto@lists.yoctoproject.org>;
 Sat, 14 Jun 2025 02:05:49 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@faresoftware.it header.s=20210817 header.b=E2bkWDAt;
 spf=pass (domain: faresoftware.it, ip: 93.51.112.187, mailfrom: mauro@faresoftware.it)
Message-ID: <c6c4a006-bb34-4c40-83bf-3b8f5dad9104@faresoftware.it>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=faresoftware.it;
	s=20210817; t=1749891943;
	bh=t7TOz9X4xMw1ALYMiovbtFeWOQ8O/4z1+8f+NugTMqE=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=E2bkWDAt5dgRDBjpjtNxcMrYDgkiQIZvGz3se7/Fx0WsgXPFAISoQZntYa0wqSKU4
	 d+ezgg7ZrGG1nJvHNXd6PQUFP8eCqLGZ95cADWDq+N92c+eXVgHn7OuqZscJEIyBns
	 j6RUC0hAeeR49tucNclqtVYHOggd9dLIlngYnWZmUf6UrBIVw4AanaB6DAZ//83kv8
	 hFDBqpiWrxBwm3t2nwgT79BcwLoo4cbvUmMC9gDDkSRl+p64IyI/qnMIxS6nB3VWDV
	 E20j9Ps0MeDBrzlO52C11WUO7jHFvZcY1xAj0jKQTb5tRUeSX0Zp7uYMkgj+gQQyAz
	 UZ1KEYfJYdriA==
Date: Sat, 14 Jun 2025 11:05:19 +0200
MIME-Version: 1.0
Subject: Re: [yocto] How to manage linux-firmware recipe
To: yocto@lists.yoctoproject.org
References: <e8b3ebf1-1636-4edb-af41-421464ff71b2@faresoftware.it>
 <19279.1749711955494286548@lists.yoctoproject.org>
Content-Language: en-US
From: Mauro Ziliani <mauro@faresoftware.it>
In-Reply-To: <19279.1749711955494286548@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-Synology-Spam-Flag: no
X-Synology-Virus-Status: no
X-Synology-MCP-Status: no
X-Synology-Spam-Status: score=-3.101, required 8, autolearn=ham, FROM_HAS_DN 0, FROM_EQ_ENVFROM 0, BAYES_HAM -3, TO_DN_NONE 0, TO_MATCH_ENVRCPT_ALL 0, MIME_GOOD -0.1, MID_RHS_MATCH_FROM 0, NO_RECEIVED -0.001, RCVD_COUNT_ZERO 0, ARC_NA 0, RCPT_COUNT_ONE 0, MISSING_XM_UA 0, MIME_TRACE 0, __THREADED 0, __NOT_SPOOFED 0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 14 Jun 2025 09:05:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65512

Thanks all for your help.


Finally I remove the linux-firmware recipe from IMAGE_INSTALL

And all works ok.


Best regards,

 =C2=A0 MZ


