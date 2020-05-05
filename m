Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.10011.1588691619096178729
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 May 2020 08:13:41 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 sendgrid.net}: limit exceeded (domain: streamunlimited.com, ip: 140.211.169.56, mailfrom: quentin.schulz@streamunlimited.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8F55E01AF3; Tue,  5 May 2020 08:13:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS,URIBL_RED autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [213.33.87.14 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 URIBL_RED Contains an URL listed in the URIBL redlist
	*      [URIs: yoctoproject.org]
Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B4DFE01AF1
	for <yocto@yoctoproject.org>; Tue,  5 May 2020 08:13:35 -0700 (PDT)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 49Gjsp01M8z5tlF;
	Tue,  5 May 2020 17:13:33 +0200 (CEST)
Date: Tue, 5 May 2020 17:13:32 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Prashanth <prashanth.vadde@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Regarding gnutls package in meta-gplv2 layer
Message-ID: <20200505151332.im4kmprdtbnf2bcm@qschulz>
References: <CAGskogRNKXgy2s39PZUqD-+M6VRsLykVS7YTp8WmRGz6n+F7Mw@mail.gmail.com>
 <CAGskogT3dUtz_68XK0wzE9h2LXFgS+u-rteYn3No44CDpNK6Cw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGskogT3dUtz_68XK0wzE9h2LXFgS+u-rteYn3No44CDpNK6Cw@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Prashanth,

On Tue, May 05, 2020 at 08:22:07PM +0530, Prashanth wrote:
> Hi Team,
> I am trying to avoid GPLv3 package of gnutls from default Thud release.
> 
> So I was checking the gnutls package from meta-gplv2 layer:
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-gplv2/tree/recipes-support/gnutls/gnutls.inc?h=thud
> 
> 
> But here as well I see that, this package is with GPLv3 license. Can you
> please let me know, if I am missing anything here. If not, can you please
> suggest if I have any alternate for GPLv2 version gnutls package.
> 

It depends exactly which package you're talking about.

The superset of all licenses of all packages created by the gnutls
recipe is GPLv3+ & LGPLv2.1+. This is also the default if the license is
not explicited for a package.

gnutls package (not recipe, package) is licensed under LGPLv2.1+. Same
for gnutls-xx package.

gnutls-openssl and gnutls-bin are licensed under GPLv3+.

All other packages are under GPLv3+ & LGPLv2.1+.

Hope that helps.

Quentin
