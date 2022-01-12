Return-Path: <jerome.oufella@savoirfairelinux.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E406C433EF
	for <webhook@archiver.kernel.org>; Wed, 12 Jan 2022 21:45:21 +0000 (UTC)
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com
 [208.88.110.44])
 by mx.groups.io with SMTP id smtpd.web08.69.1642023920485857149
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Jan 2022 13:45:21 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: savoirfairelinux.com, ip: 208.88.110.44,
 mailfrom: jerome.oufella@savoirfairelinux.com)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 5BCB59C0307;
	Wed, 12 Jan 2022 16:45:18 -0500 (EST)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new,
 port 10032)
	with ESMTP id EoIv07W-OjUM; Wed, 12 Jan 2022 16:45:18 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 0A67F9C0308;
	Wed, 12 Jan 2022 16:45:18 -0500 (EST)
X-Virus-Scanned: amavisd-new at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new,
 port 10026)
	with ESMTP id 4JInJPmEpzLQ; Wed, 12 Jan 2022 16:45:17 -0500 (EST)
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com
 [192.168.48.237])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id E17E59C0307;
	Wed, 12 Jan 2022 16:45:17 -0500 (EST)
Date: Wed, 12 Jan 2022 16:45:17 -0500 (EST)
From: Jerome Oufella <jerome.oufella@savoirfairelinux.com>
To: Jean-Philippe Lebel <jp@lebel.pro>
Cc: yocto@lists.yoctoproject.org
Message-ID: 
 <847433617.77075.1642023917723.JavaMail.zimbra@savoirfairelinux.com>
In-Reply-To: 
 <CAJiLS+Tgc7XNuqJi9eVGoSskP8UULuq_mV4GrdGr+aRidQSgAg@mail.gmail.com>
References: <olEy.1641952629873571983.WQkq@lists.yoctoproject.org>
 <AM0PR10MB3107C5D3A7A14031A52258E099529@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <CAJiLS+Tgc7XNuqJi9eVGoSskP8UULuq_mV4GrdGr+aRidQSgAg@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi] Problem with RPI_USE_U_BOOT with
 RaspberryPi4
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailer: Zimbra 8.8.15_GA_4180 (ZimbraWebClient - GC97 (Mac)/8.8.15_GA_4177)
Thread-Topic: Problem with RPI_USE_U_BOOT with RaspberryPi4
Thread-Index: 68KGNAmchOUkzHUE9HtV4hOYd5Yvwg==
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Jan 2022 21:45:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55820

On Jan 12, 2022, at 3:37 PM, Jean-Philippe Lebel wrote: 

> For a reason I can't quite understand, everything stated working when I added
> ENABLE_UART = "1"
> 
> Does anyone understand the relation between ENABLE_UART = "1" and RPI_USE_U_BOOT
> = "1" ?
> 
> Thanks
> 
> -------------
> Jean-Philippe

The documentation mentions a relationship between enable_uart and
(lower) core frequency on some hardware variants - could there be a
side-effect (if yes, maybe gpu_freq/arm_freq could play a factor) ?

Jerome

