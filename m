Return-Path: <denis@denix.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 662AEC4345F
	for <webhook@archiver.kernel.org>; Wed, 17 Apr 2024 16:53:44 +0000 (UTC)
Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
 by mx.groups.io with SMTP id smtpd.web10.19355.1713372820246881480
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Apr 2024 09:53:41 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: denix.org, ip: 64.68.198.64, mailfrom: denis@denix.org)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id 8034440C7B;
	Wed, 17 Apr 2024 16:53:39 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jcuAcrxRYT4R; Wed, 17 Apr 2024 16:53:39 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-87-159.washdc.fios.verizon.net [100.15.87.159])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id 1C54F40301;
	Wed, 17 Apr 2024 16:53:34 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id B6A46163F21; Wed, 17 Apr 2024 12:53:34 -0400 (EDT)
Date: Wed, 17 Apr 2024 12:53:34 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: Ross Burton <ross.burton@arm.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"qa-build-notification@lists.yoctoproject.org" <qa-build-notification@lists.yoctoproject.org>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	Yocto TSC <tsc@lists.yoctoproject.org>
Subject: Re: [tsc] [qa-build-notification] QA notification for completed
 autobuilder build (yocto-5.0.rc2)
Message-ID: <20240417165334.GO28791@denix.org>
References: <0101018eeb341f1c-6cbd9227-adf8-4d80-b90e-d552b36e72cd-000000@us-west-2.amazonses.com>
 <7b21770c8dd6eae305575dc77bf968a35dba03b8.camel@linuxfoundation.org>
 <A363D55A-F4F9-4764-AB3F-A919A39B41CC@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <A363D55A-F4F9-4764-AB3F-A919A39B41CC@arm.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Apr 2024 16:53:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62952

On Wed, Apr 17, 2024 at 11:36:27AM +0000, Ross Burton wrote:
> On 17 Apr 2024, at 09:50, Richard Purdie via lists.yoctoproject.org <richard.purdie=linuxfoundation.org@lists.yoctoproject.org> wrote:
> > For b), updating buildtools should resolve it, I thought I had done
> > that but there were a lot of moving pieces so I must not have got the
> > latest.
> > 
> > I'm proposing we do but this into QA as I'd not block release on these
> > issues. I've done my best to get this into as good a shape as we can.
> 
> Agreed.  Can we do a build in the meantime of the specific job that failed 
> so we can verify the buildtools/pip issue is resolved?

Sounds reasonable.

-- 
Denys

