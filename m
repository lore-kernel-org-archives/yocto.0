Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.8792.1580834376428733250
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Feb 2020 08:39:37 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 sendgrid.net}: limit exceeded (domain: streamunlimited.com, ip: 140.211.169.56, mailfrom: quentin.schulz@streamunlimited.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09CF8E016B7; Tue,  4 Feb 2020 08:39:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [213.33.87.16 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE862E00726
	for <yocto@yoctoproject.org>; Tue,  4 Feb 2020 08:39:34 -0800 (PST)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 48Br515nmwz5tlC;
	Tue,  4 Feb 2020 17:39:33 +0100 (CET)
Date: Tue, 4 Feb 2020 17:39:32 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Ryan Harkin <ryan.harkin@linaro.org>
Cc: yocto@yoctoproject.org, Nicolas Dechesne <nicolas.dechesne@linaro.org>
Subject: Re: [yocto] Building and selecting multiple kernel versions
Message-ID: <20200204163932.zuzw6iuntxdy2r5s@qschulz>
References: <CAD0U-h+q4k-EywV8XEfZ2nsoHoRQaNyRy77E2kRLuos8dAmNTA@mail.gmail.com>
 <20200204085153.6wsex564rtrknfuq@qschulz>
 <CAD0U-h+0L_X3mS4ttcPSiRwfM7TJtPgg-hutEg0Nfp_UENL41w@mail.gmail.com>
 <20200204161517.hopwyv5nbb7yytsb@qschulz>
 <CAD0U-h+mpWJ5qQX16N9Z+M19fS4kN+LGUofnCOKFqmtmT+a2_Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAD0U-h+mpWJ5qQX16N9Z+M19fS4kN+LGUofnCOKFqmtmT+a2_Q@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Feb 04, 2020 at 04:32:34PM +0000, Ryan Harkin wrote:
[...]
> 
> Actually, it does work like this:
> 
> export MACHINE=xyz
> bitbake image
> 
> But not like this:
> 
> MACHINE=xyz bitbake image
> 
> No big deal, but I expected the last one to work.
> 

I use it every day. I don't think we're doing something special (well,
for that particular thing :D), so there's at least a way to make it work
for sure :)

Quentin
