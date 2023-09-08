Return-Path: <alexandre.belloni@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A17EE57DC
	for <webhook@archiver.kernel.org>; Fri,  8 Sep 2023 07:20:43 +0000 (UTC)
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
 by mx.groups.io with SMTP id smtpd.web10.34089.1694157638477477558
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Sep 2023 00:20:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=B/s6bq1B;
 spf=pass (domain: bootlin.com, ip: 217.70.183.193, mailfrom: alexandre.belloni@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 31FDE240008;
	Fri,  8 Sep 2023 07:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1694157635;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=iKziMVeKYCs/BTXCO41U3BiCcT97ClQOFPeNY1K3nlE=;
	b=B/s6bq1Bdz/xDhqeGIWmSa5h2Sli/SsNzv9x9YYqZPhGFu4SEzXarhm/J5c3kF5zL0QrhF
	/pBi0UgEmCU+Ty0z88ChdNJ89JWVVlv5S7pNfdVHpUNUMbAlHbHuCfRzUbbAJEgpmUsqSY
	yZLTdstsll+KGLdLOoGgRdpgpzDhJ3ODVvjmwdGiDQ/10dIS+XngdUGxpT0aFJE+zIa+vs
	k/mLpovIlzoVty9tUEY0KhVcp/jhbkGX+P7BcDH7buCgvhyVquvcjMN2jlok+jwMFRZeGQ
	dA6atceYOxdIbDZM6Pdal9FQjH7fFHz7D+F1R2vPc3ejBgAUxtUYgv+Ki/3ORQ==
Date: Fri, 8 Sep 2023 09:20:34 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Martin Jansa <Martin.Jansa@gmail.com>
Cc: Yoann Congal <yoann.congal@smile.fr>,
	MOHAMMED HASSAN <hassanchattarki@gmail.com>,
	yocto@lists.yoctoproject.org
Subject: Re: [yocto] Memory requirements for building images with different
 architectures
Message-ID: <20230908072034c8e150e6@mail.local>
References: <c737f04f-7bf3-c0f6-4816-87ea4f5c81ac@bootlin.com>
 <3255.1694152878755997438@lists.yoctoproject.org>
 <CAMSfU+579tns5UJg4=6ryXsstfPYar9YCvghbT3piuNzzCVbWg@mail.gmail.com>
 <CA+chaQdiOTNYTsrhPzbT=9aB3fT9Mo=DoorvNm4Bay2ioRTsdA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CA+chaQdiOTNYTsrhPzbT=9aB3fT9Mo=DoorvNm4Bay2ioRTsdA@mail.gmail.com>
X-GND-Sasl: alexandre.belloni@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Sep 2023 07:20:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60947

On 08/09/2023 09:06:39+0200, Martin Jansa wrote:
> On Fri, Sep 8, 2023 at 8:42 AM Yoann Congal <yoann.congal@smile.fr> wrote:
> 
> > Hi!
> > Le ven. 8 sept. 2023 à 08:01, MOHAMMED HASSAN <hassanchattarki@gmail.com>
> > a écrit :
> >
> >> Right, you're not the only one!
> >> See
> >>
> >> https://docs.yoctoproject.org/ref-manual/system-requirements.html#minimum-free-disk-space
> >> and https://docs.yoctoproject.org/dev/dev-manual/disk-space.html
> >>
> >> I can use rm_work and remove all the build related files, however every
> >> subsequent build would take a lot more time to build. I want my builds to
> >> be as fast as possible. Do you have any suggestions to for faster builds
> >> while consuming less memory space.
> >>
> >
> > rm_work does not impact build time.
> >
> 
> That's not true, if only do_install task checksum changed, then without
> rm_work you can reuse existing do_compile and re-run just following tasks,
> while with rm_work it will need to rebuild from scratch (because
> do_populate_sysroot and do_package sstate archives won't be valid anymore)
> adding more wear to those NVME drives.
> 

Did you really have any wear related issues on SSD disks? The
autobuilders are churning a lot of builds and the disk are doing just
fine.



-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

