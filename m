Return-Path: <mauro@faresoftware.it>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA11FC433F5
	for <webhook@archiver.kernel.org>; Mon, 31 Jan 2022 15:20:56 +0000 (UTC)
Received: from posta.faresoftware.it (posta.faresoftware.it [93.38.119.136])
 by mx.groups.io with SMTP id smtpd.web08.33329.1643642455123963506
 for <yocto@lists.yoctoproject.org>;
 Mon, 31 Jan 2022 07:20:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@faresoftware.it header.s=20210817 header.b=ydDAl8FJ;
 spf=pass (domain: faresoftware.it, ip: 93.38.119.136,
 mailfrom: mauro@faresoftware.it)
Message-ID: <77514b9c-0960-fa9c-13e6-19071aaeba93@faresoftware.it>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=faresoftware.it;
	s=20210817; t=1643642442;
	bh=xr5Ja7zxm5ZtdT+6lW50JsB5dA/+z5sc3McSDxpMhkU=;
	h=Date:To:From:Subject;
	b=ydDAl8FJEqalWUX6PaftrzHiM+CrUZ7RAAaI5jYRppaPv+YU8YBqUchye92iVAB5Y
	 LSDWlmz+EpWZTALcGq+Rpfp+qLWsZ4I44kVswsvOIX9gkro6AR7KC1BmceTGfmebCI
	 W087JttptF5k+qfE1OubsNfVLDs/1fd7xTI0FznQ=
Date: Mon, 31 Jan 2022 16:20:49 +0100
MIME-Version: 1.0
To: yocto <yocto@lists.yoctoproject.org>
Content-Language: en-US
From: Mauro Ziliani <mauro@faresoftware.it>
Subject: Where setup KCONF_AUDIT_LEVEL value
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Synology-Spam-Status: score=-0.101, required 5, FROM_HAS_DN 0,
 TO_MATCH_ENVRCPT_ALL 0, MIME_GOOD -0.1, RCPT_COUNT_ONE 0, TO_DN_ALL 0,
 RCVD_COUNT_ZERO 0, FROM_EQ_ENVFROM 0, MIME_TRACE 0, __NOT_SPOOFED 0,
 MID_RHS_MATCH_FROM 0, NO_RECEIVED -0.001
X-Synology-Spam-Flag: no
X-Synology-Virus-Status: no
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 31 Jan 2022 15:20:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56030

Hi all.

The KCONF_AUDIT_LEVEL variable must be setup in a .conf file or I can 
change it in a recipe?


I try to understand why my file defconfig is not used my kernel configurator


MZ


