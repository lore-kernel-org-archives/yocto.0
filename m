Return-Path: <konstantin.kletschke@inside-m2m.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEB2EEE4993
	for <webhook@archiver.kernel.org>; Wed, 23 Aug 2023 08:59:45 +0000 (UTC)
Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
 by mx.groups.io with SMTP id smtpd.web10.7306.1692781178655280896
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Aug 2023 01:59:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@inside-m2m.de header.s=default header.b=Ixa+xlX/;
 spf=pass (domain: inside-m2m.de, ip: 188.68.57.244, mailfrom: konstantin.kletschke@inside-m2m.de)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1692781177;
	bh=sV8D1rExvfoBYC5p04r/qm3fXyOge1Q+dyHpKsxTvq4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ixa+xlX/QSa4SqwEKshFNDdiuiXhrhZ+1geuIAeODlRUo4FYwomNNYUoRXenIfiqJ
	 9pBrMIiZxq2siS/kFIYYXzDzTQRG4vToR8B4rmWZs4YZ7GxgUNE1wXthjmd34Gpxqu
	 GlCrKY95dIpXiOzNKF6JcQb6W3SP4YooYDB9yfJIn4J7ye2B5JIWKOV8TeHptsZFIb
	 8cuYeIUdRScplsBybxVeCqppwz3muuCu08/GlyItbBzZVJY3vCeljoUJuEQjfKwvfK
	 UpOsf32xu9l0dk6lJ78wi6L/sIlqON47mP2ojFO/BS8/WpNrDebJ4XDPIOG6CwxBAE
	 uYHYfmLfvXyNw==
Received: from insidem2ms-MBP.inside-m2m.de (pd95bb737.dip0.t-ipconnect.de [217.91.183.55])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 3A4A54019E;
	Wed, 23 Aug 2023 10:59:36 +0200 (CEST)
Date: Wed, 23 Aug 2023 10:59:35 +0200
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Pick up ${PV} dynamically from environment or file or
 filename
Message-ID: <ZOXKdxJdKjtxF-mv@insidem2ms-MBP.inside-m2m.de>
References: <ZN9m5Edu4sszrpcx@insidem2ms-MacBook-Pro.local>
 <CANNYZj969r-C5WBSHmCweE_WB_Xwxgc-0jhXTZ+ECDWvYoyXCg@mail.gmail.com>
 <ZN_VfdJcE28H6sFX@insidem2ms-MacBook-Pro.local>
 <CANNYZj_5nKJkGbE78=gmd4gpknJAHSQEokN_SUALEwM0LJi-Dg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANNYZj_5nKJkGbE78=gmd4gpknJAHSQEokN_SUALEwM0LJi-Dg@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Aug 2023 08:59:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60856

On Sat, Aug 19, 2023 at 12:07:08PM +0200, Alexander Kanavin wrote:

> I think the easiest would be to run a shell script prior to starting
> bitbake, which would check what jar needs to be used, and write the
> SRC_URI with the name and the checksum into a .inc file in the
> meta-layer. Then there's a static .bb file that would include the
> .inc, and do the installation/packaging. Changes to .inc would then be
> under version control and thus reproducible.

Thanks for this extermely helpful advice I did not think of.

I made a shell script, inspecting the jar files and extracting the
version with a regexp from the filename.

This is injected as PV into a inc file the latter bb recipe require.
This way the inc contains only PV, the bb recipe is fix.

The shell script is invoked from the outer build brocess between maven
and bitbake.

Many thanks!
Kind Regards
Konstantin

