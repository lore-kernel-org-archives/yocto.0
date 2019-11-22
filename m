Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.940.1574435884049993793
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Nov 2019 07:18:05 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 sendgrid.net}: limit exceeded (domain: streamunlimited.com, ip: 140.211.169.56, mailfrom: quentin.schulz@streamunlimited.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC2E3E00C5C; Fri, 22 Nov 2019 07:18:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [213.33.87.16 listed in list.dnswl.org]
Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A63D1E00BDC
	for <yocto@yoctoproject.org>; Fri, 22 Nov 2019 07:18:00 -0800 (PST)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 47KKn31Ncjz5tlB;
	Fri, 22 Nov 2019 16:17:59 +0100 (CET)
Date: Fri, 22 Nov 2019 16:17:58 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: pavan <pawan4749@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Warning message after building recipe:
Message-ID: <20191122151757.n63qon6ichkhmips@qschulz>
References: <CALd6x_siiqxqhC4n4Ynf45tT0LiaTUdy-T48mTuGZT=e9mDsXw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALd6x_siiqxqhC4n4Ynf45tT0LiaTUdy-T48mTuGZT=e9mDsXw@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Pavan,

On Fri, Nov 22, 2019 at 09:38:05PM +0800, pavan wrote:
> Hi All,
> 
> After building the recipe, I'm getting warning message:
> "Warning: do_package_qa QA Issue: <recipe-dbg>: found library in wrong
> location.
> Any suggestion to resolve this issue?
> 

Hopefully explained well enough here:
https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#qa-issue-libdir

Regards,
Quentin
-- 
StreamUnlimited Engineering GmbH
High Tech Campus Vienna, Gutheil-Schoder-Gasse 10, 1100 Vienna, Austria
quentin.schulz@streamunlimited.com, www.streamunlimited.com
