Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.1009.1615910194792769607
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Mar 2021 08:56:36 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 a1.net}: parse error for token &{10 18 spf.a1.net}: parse error for token &{10 18 a1telekom.at}: parse error for token &{10 18 spf.qb-feedback.com}: parse error for token &{10 18 spf2.qb-feedback.com}: limit exceeded (domain: streamunlimited.com, ip: 198.145.29.25, mailfrom: quentin.schulz@streamunlimited.com)
Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 23D0338C083D
	for <yocto@yoctoproject.org>; Tue, 16 Mar 2021 15:56:34 +0000 (UTC)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4F0Hw010LSz5tlC;
	Tue, 16 Mar 2021 16:56:31 +0100 (CET)
Date: Tue, 16 Mar 2021 16:56:30 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto] Which recipes put qtwebkit in my image?
Message-ID: <20210316155630.wicookhtcfdvita4@qschulz>
References: <60D63209-17B3-49B8-9FE0-1BFFC4F0BC39@getmailspring.com>
MIME-Version: 1.0
In-Reply-To: <60D63209-17B3-49B8-9FE0-1BFFC4F0BC39@getmailspring.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Mauro,

On Tue, Mar 16, 2021 at 04:50:44PM +0100, Mauro Ziliani wrote:
> Hi all.I need to find which recipe installs qtwebkit in my final image.
> 
> I look in on every recipes I make but I don't find who put qtwebkit in my image.
> I have the same matter with *-dev packages
> 
> I use bitbake -g but I don't find the "source" of qtwebkit.
> 

oe-pkgdata-util lookup-recipe qtwebkit

could help. Or if you know which file you don't want in your fs and want
to know which package is installing it:

oe-pkgdata-util find-path '*qtwebkit*'
(provided the file you're looking for has qtwebkit in its filename)

Hope this helps,
Cheers,
Quentin
