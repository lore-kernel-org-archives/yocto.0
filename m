Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F76DC4167B
	for <webhook@archiver.kernel.org>; Fri, 10 Nov 2023 14:57:16 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web11.29397.1699628235240399444
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Nov 2023 06:57:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=OokZmhHu;
 spf=pass (domain: bootlin.com, ip: 217.70.183.194, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 4D68F40008;
	Fri, 10 Nov 2023 14:57:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1699628232;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=z6a/0qrr2M/tzrhlfccXr24/rYWIBoGcp823H5w8lNY=;
	b=OokZmhHuABHoFHMFUTkY2BO6H51JPZZYt2O2sVj5LgMXCcBi7Q5jhgdVqUeTi23zx2RaZu
	ylEHpu2r7rkh9igBLkcZzbDn7yu1NuML0k53gUidKEG8qRRVXYTxnmp+frsuLjfv6f/TK/
	hDgo5LK8BvixiVGyth2xVW4Ino92hsGYJ9z5WzTKSUAEpYluc4tlD0VdD2Dmrlnaf+6FjX
	srVnTO3HMV3PTHqk1XqeLSmyv5jYmaQ8WcSlz99e2+bQfzqScdS8iDzYSIUuTKg0CV8Dw6
	MqZUNtswI5jQeFH8rPMVikNludRkzRpC2aFXokSUIYUblF2FOk5KJW0RRYcxDA==
Message-ID: <0dc758ee-2e07-436a-b274-f1b25c847bee@bootlin.com>
Date: Fri, 10 Nov 2023 15:57:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [ANNOUNCEMENT] Yocto Project 4.3 is Released
Content-Language: en-US
To: Lee Chee Yang <chee.yang.lee@intel.com>
References: <CH3PR11MB809364115B3E18ABF048E076B9AFA@CH3PR11MB8093.namprd11.prod.outlook.com>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <CH3PR11MB809364115B3E18ABF048E076B9AFA@CH3PR11MB8093.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Nov 2023 14:57:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61650

Hi Lee

On 09.11.23 at 16:29, Lee Chee Yang wrote:
>
> Hi
>
> We are pleased to announce the Yocto Project 4.3 Release is now 
> available for download.
>
>
> https://downloads.yoctoproject.org/releases/yocto/yocto-4.3/poky-15b576c4101231d248fda7ae0824e1780e1a8901.tar.bz2
>
> http://mirrors.kernel.org/yocto/yocto/yocto-4.3/poky-15b576c4101231d248fda7ae0824e1780e1a8901.tar.bz2
>
> A gpg signed version of these release notes is available at:
>
> http://downloads.yoctoproject.org/releases/yocto/yocto-4.3/RELEASENOTES
>

Many thanks for the release. Maybe fore the next major release you could 
mention the HTML version of the release notes, as well as the migration 
notes, as they were available when the release was made:
https://docs.yoctoproject.org/dev/migration-guides/release-4.3.html

That's a little better than the raw rst sources :)

For release updates, I'm not sure that's possible, as the release notes 
are usually available in HTML after the release is made.
Thanks again
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


