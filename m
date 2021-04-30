Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.10779.1619786056078306097
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Apr 2021 05:34:17 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 a1.net}: parse error for token &{10 18 spf.a1.net}: parse error for token &{10 18 a1telekom.at}: parse error for token &{10 18 spf.qb-feedback.com}: parse error for token &{10 18 spf2.qb-feedback.com}: limit exceeded (domain: streamunlimited.com, ip: 198.145.29.25, mailfrom: quentin.schulz@streamunlimited.com)
Received: from bsmtp3.bon.at (bsmtp3.bon.at [213.33.87.17])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 6797138C05F4
	for <yocto@yoctoproject.org>; Fri, 30 Apr 2021 12:34:14 +0000 (UTC)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp3.bon.at (Postfix) with ESMTPSA id 4FWsHm2zRqz5tlF;
	Fri, 30 Apr 2021 14:34:12 +0200 (CEST)
Date: Fri, 30 Apr 2021 14:34:10 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] any compelling reason to use SDK rather than eSDK?
Message-ID: <20210430123410.vcckkhffayup536m@qschulz>
References: <e6a4527-77e4-9caf-b2a7-a81dd959c08a@crashcourse.ca>
MIME-Version: 1.0
In-Reply-To: <e6a4527-77e4-9caf-b2a7-a81dd959c08a@crashcourse.ca>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Fri, Apr 30, 2021 at 05:49:29AM -0400, Robert P. J. Day wrote:
> 
>   colleague wants to get into working with SDKs, and as i'm just
> diving into the intricacies of that myself, i'm not sure how to
> answser the question: "is there any reason to use the regular SDK as
> opposed to the extensible SDK?"
> 
>   superficially, it would seem that the eSDK has nothing but benefits,

It's very big and probably include your proprietary SW header and
libraries at the very least... or third party prebuilt
binaries/libraries you're not supposed to share outside of your product.

This is useful if you're doing active development internally and you
don't upgrade your Yocto layers too often. This means non-Yocto verse
people could work on the main SW stack without caring about Yocto at
all.

> so other than perhaps needing more resources, is there any reason to
> use the regular SDK and forego the benefits of eSDK?
> 

Normal SDK is just a toolchain, very practical if a third party vendor
requires you to send them something so they can build a blob that works
on your machine. And usually, you don't want to send anything that is
remotely critical to your business, IP wise.

I have barely used SDK, so to be taken with a grain of salt as usual.

Cheers,
Quentin
