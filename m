Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
 by mx.groups.io with SMTP id smtpd.web12.10400.1601046926740086998
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Sep 2020 08:15:27 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.16, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 4Byb7w6Y6Fz5tlC;
	Fri, 25 Sep 2020 17:15:24 +0200 (CEST)
Date: Fri, 25 Sep 2020 17:15:23 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Bel Hadj Salem Talel <bhstalel@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] setup.py no such file or directory
Message-ID: <20200925151523.nbnkvehttcdkebl6@qschulz>
References: <wZbD.1601046731917768605.B1ZA@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <wZbD.1601046731917768605.B1ZA@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Talel,

On Fri, Sep 25, 2020 at 08:12:11AM -0700, Bel Hadj Salem Talel wrote:
> Hi Community,
> 
> I have a python module which I downloaded from github containing a setup.py as all python modules.
> When I create a recipe with devtool it compiles correctly with no problem, but when I copy paste the same recipe source from workspace recipes to an official meta recipe I got this error :
> > 
> > 
> > /media/talel/data/menzu-zeus/menzu/tmp/work/aarch64-poky-linux/python3-wirepas_messaging/1.4.0-r0/recipe-sysroot-native/usr/bin/python3-native/python3:
> > can't open file 'setup.py': [Errno 2] No such file or directory
> 

Use devtool finish when you're done with a recipe you started with
devtool add, that should do it.

Quentin
