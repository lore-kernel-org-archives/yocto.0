Return-Path: <sbabic@denx.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B76E4C77B60
	for <webhook@archiver.kernel.org>; Thu, 30 Mar 2023 20:06:53 +0000 (UTC)
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
 by mx.groups.io with SMTP id smtpd.web10.37255.1680206804915022539
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Mar 2023 13:06:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@denx.de header.s=phobos-20191101 header.b=Z8fSMVsi;
 spf=pass (domain: denx.de, ip: 85.214.62.61, mailfrom: sbabic@denx.de)
Received: from [IPV6:2001:a61:6018:da01:48b3:a7cb:e33d:43a1] (unknown [IPv6:2001:a61:6018:da01:48b3:a7cb:e33d:43a1])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: sbabic@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id E43DF85E02;
	Thu, 30 Mar 2023 22:06:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1680206802;
	bh=Cj2qufBsHwDjb0y936qh43Q8x4HW24AWLy0nGFDr+EQ=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=Z8fSMVsitdiovkjgNIdGOCATnEHeatHogT9Xum430z6ajSYsE2zPZp0Gk1P/9yE8C
	 tQfXWx42ekAQct4SMwIt3ZA3XTwVDxPQWgoaKxQgz6ZxklRIkOhClGMeDLe1Vap4x5
	 +Cx2IQqrW17G4MF7JrheHgjz0qVHJ6/XYlKKK9kQYTnLp38kEDL6XVTM6pBr6cnpQc
	 CswDAz4432m6xycYvAYqCC/FxpPdRPnxQT1I6pUXA6L5I4gr62eDJh1fqKyvHNBjke
	 6Y0BzIURsqu/9LB7KBkZq2CDbAjAZ5/43RMy4E3KCxX5LIgCYbDr9glhoKDUPIja+z
	 FMnv3eg0okQLA==
Message-ID: <9192de48-157b-c9e2-d136-11f302022580@denx.de>
Date: Thu, 30 Mar 2023 22:06:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [yocto] Conditionally starting the swupdate webserver
To: Morten Bruun <morten.bruun@apide.com>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: <CAMrUZLg8BRa8Wtrhb9TKR6FK03OsHv4i=5=JPM2fO0+VO2AXxg@mail.gmail.com>
Content-Language: en-US
From: Stefano Babic <sbabic@denx.de>
In-Reply-To: <CAMrUZLg8BRa8Wtrhb9TKR6FK03OsHv4i=5=JPM2fO0+VO2AXxg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Mar 2023 20:06:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59554

Hi Morten,

On 29.03.23 16:39, Morten Bruun wrote:
> Hi Yocto experts!
> 
> Background
> ----------------
> I have a device that I build two different images for (test and prod). 
> For the prod variant I do not want the swupdate service to start the 
> webserver.
> 
> Currently I have a swupdate.service that overwrites the default from 
> swupdate.

Why ? the default service will load configuration script from 
/usr/lib/swupdate, and you can already override what yo need.


> 
> I have been experimenting with an approach where I use OVERRIDES to 
> control the inclusion of the systemd service.
> 
> Is this a "good" (tm) way of doing this? Or is there a better way?

It is enough you do not install the swupdate-www package in the prod 
image. No Webserver is started.

Best regards,
Stefano Babic

> 
> my-test-image.bb <http://my-test-image.bb>
> -----------------------
> 
> DISTRO_VARIANT = "test"
> 
> 
> my-prod-image.bb <http://my-prod-image.bb>
> -----------------------
> 
> DISTRO_VARIANT = "prod"
> 
> 
> swupdate_%.bbappend
> -------------------------------
> 
> OVERRIDES:append = ":${DISTRO_VARIANT}"
> 
> do_install:test:append() {
>    install -d ${D}/${systemd_unitdir}/system
>    install -m 0644 ${WORKDIR}/hello-test.service ${D}/${systemd_unitdir}/system
> }
> 
> do_install:prod:append() {
>    install -d ${D}/${systemd_unitdir}/system
>    install -m 0644 ${WORKDIR}/hello-prod.service ${D}/${systemd_unitdir}/system
> }
> 
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59545): https://lists.yoctoproject.org/g/yocto/message/59545
> Mute This Topic: https://lists.yoctoproject.org/mt/97929833/3618551
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [sbabic@denx.de]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

-- 
=====================================================================
DENX Software Engineering GmbH,        Managing Director: Erika Unter
HRB 165235 Munich,   Office: Kirchenstr.5, 82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================

