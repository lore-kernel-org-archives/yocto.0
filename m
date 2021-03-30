Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.3895.1617108331556551533
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Mar 2021 05:45:33 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 a1.net}: parse error for token &{10 18 spf.a1.net}: parse error for token &{10 18 a1telekom.at}: parse error for token &{10 18 spf.qb-feedback.com}: parse error for token &{10 18 spf2.qb-feedback.com}: limit exceeded (domain: streamunlimited.com, ip: 198.145.29.25, mailfrom: quentin.schulz@streamunlimited.com)
Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 0A36D38C06D7
	for <yocto@yoctoproject.org>; Tue, 30 Mar 2021 12:45:31 +0000 (UTC)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 4F8q152nvQz5tlB;
	Tue, 30 Mar 2021 14:45:29 +0200 (CEST)
Date: Tue, 30 Mar 2021 14:45:28 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto] Get PR value of another recipe
Message-ID: <20210330124528.xs2kmfcw7urjzhg2@qschulz>
References: <BEC32350-FB95-4EA8-8F01-754104D706D9@getmailspring.com>
MIME-Version: 1.0
In-Reply-To: <BEC32350-FB95-4EA8-8F01-754104D706D9@getmailspring.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Mauro,

On Tue, Mar 30, 2021 at 02:44:14PM +0200, Mauro Ziliani wrote:
> Hi all.
> 
> From an image recipe a-image_1.0.bb with IMAGE_INSTALL_append = " a " defined, can I get the PR value of recipe a?

No. Recipe data is local to the recipe.

Cheers,
Quentin
