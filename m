Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0019CD1292
	for <webhook@archiver.kernel.org>; Thu, 11 Apr 2024 09:39:45 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web11.13491.1712828381165052585
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Apr 2024 02:39:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=p5PhI40w;
 spf=pass (domain: bootlin.com, ip: 217.70.183.200, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 32ADB2000A;
	Thu, 11 Apr 2024 09:39:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1712828379;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dnGRQqlY7mejoGsq8z7dg+3ShoRvppyrmKbMlDkKLdY=;
	b=p5PhI40wUbrCFPXv0g80riMG6tZtZ4I/YqexZEpvx5Dz7xZThNT/4qxPTT5KCzZMd+epQA
	VgLJlH4P5iLb9knp4BJrl3vjLkwheVNZMEqI0YtYcLskpnl17Pgf1Go3eAEoZ32VTyCI65
	XAgXywWrpj/tUu71xwtHai0hYfuTkyBZTldiz2H9M+YCaQpykbV1pPx8sn/xA8DtzI5r/f
	ty0jiDJ9b5Z223D6YbS7bGTxOIgJMoAu3EGBefypMWrMZ9rrmEbNMwlne1hxNGg2SXY9xF
	JiK9TZdsnIE74StJzJazD9iNoNgsmsKWqt8A+6lNEaw0s2ONZRs6BxYg3sqoHw==
Message-ID: <5bdf017a-b7fc-4124-ad5a-79bf42873370@bootlin.com>
Date: Thu, 11 Apr 2024 11:39:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [ANNOUNCEMENT] Yocto Project 4.3.4 is Released
To: chee.yang.lee@intel.com
References: <CH3PR11MB8093B804A555BA168F74110EB9062@CH3PR11MB8093.namprd11.prod.outlook.com>
Content-Language: en-US
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <CH3PR11MB8093B804A555BA168F74110EB9062@CH3PR11MB8093.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 Apr 2024 09:39:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62917

Hi Lee

On 4/10/24 at 10:51, Lee Chee Yang wrote:
>
> Hi
>
> We are pleased to announce the Yocto Project 4.3.4 Release is now 
> available for download.
>

Can we expect a last 4.3.5 release, or was this the last one?
I'm asking to know whether the documentation branch for "nanbield" still 
needs maintaining for a few more weeks.

Thanks in advance
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


