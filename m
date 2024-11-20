Return-Path: <hs@denx.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D4DD6E2BA
	for <webhook@archiver.kernel.org>; Wed, 20 Nov 2024 05:36:21 +0000 (UTC)
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
 by mx.groups.io with SMTP id smtpd.web10.6895.1732080977362428636
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Nov 2024 21:36:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@denx.de header.s=phobos-20191101 header.b=WBOw2Qhv;
 spf=pass (domain: denx.de, ip: 85.214.62.61, mailfrom: hs@denx.de)
Received: from [192.168.1.107] (82-131-203-244.pool.digikabel.hu [82.131.203.244])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: hs@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 9FE30895E2;
	Wed, 20 Nov 2024 06:36:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1732080975;
	bh=gEhzRFTc39NqvKcwuU65TDAScvYlut1agE4AspxQEvg=;
	h=Date:Subject:To:References:Cc:Reply-To:From:In-Reply-To:From;
	b=WBOw2QhvCP/x47ZpXaMHhqrsHu7t6Xngtj8WZIp/uv2DaNcjQQ6xDwmsCeHS9f+WU
	 RFygJZgiDX+iH4Ddjt3X4DRqOWyuxkmyVFxbn2YYJmbL+poti5fVT3yrvrULOdvdMo
	 jwab31yc0heT+7uTTMAQEZVeooEOgfmC4cuvyIyEIOSWzx0LkUilWCV3gqTZDDC1VN
	 oeITV9PY0usNJil2WTpLF5HE5n3tcC8ptzndlsNT5QMHFDku72hfSlu7oI0XjkduNs
	 JncI5TK73Y7fTqLmPv+G67AgFUJic1u4m5IckjXvK0cKwAWLmYALHpC/c2VRs3B4Gr
	 p6tOLhiGi5bQw==
Message-ID: <062d9006-3f32-3061-559b-ae9df03d14b1@denx.de>
Date: Wed, 20 Nov 2024 06:33:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Subject: Re: [yocto] sw-versions on swupdate #swupdate #stefanobabic
Content-Language: en-US
To: barath.seeni09_ee@mepcoeng.ac.in
References: <fgEV.1732079143616944331.hy37@lists.yoctoproject.org>
Cc: yocto@lists.yoctoproject.org
Reply-To: hs@denx.de
From: Heiko Schocher <hs@denx.de>
In-Reply-To: <fgEV.1732079143616944331.hy37@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Nov 2024 05:36:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64303

Hi!

On 20.11.24 06:05, barath.seeni09_ee@mepcoeng.ac.in wrote:
> Hi All,
> 
> I am doing swupdate on device which uses double copy method.
> Did anyone know how to update the sw-versions file in /etc on both partitions when update is happening.

You should ask this on swupdate mailinglist, find more info here:

https://sbabic.github.io/swupdate/help_and_support.html

The sw-versions file is created on boot! You should detect the installed
versions and write the versionsring into this file.

May you read also swupdate documentation:

https://sbabic.github.io/swupdate/

Hope it helps!

bye,
Heiko
> Thanks
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64302): https://lists.yoctoproject.org/g/yocto/message/64302
> Mute This Topic: https://lists.yoctoproject.org/mt/109679788/3616726
> Mute #swupdate:https://lists.yoctoproject.org/g/yocto/mutehashtag/swupdate
> Mute #stefanobabic:https://lists.yoctoproject.org/g/yocto/mutehashtag/stefanobabic
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [hs@denx.de]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

-- 
DENX Software Engineering GmbH,      Managing Director: Erika Unter
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-52   Fax: +49-8142-66989-80   Email: hs@denx.de

