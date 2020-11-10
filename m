Received: from bsmtp3.bon.at (bsmtp3.bon.at [213.33.87.17])
 by mx.groups.io with SMTP id smtpd.web12.27334.1605014730893924370
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Nov 2020 05:25:31 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.17, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp3.bon.at (Postfix) with ESMTPSA id 4CVpWq72PJz5tlT;
	Tue, 10 Nov 2020 14:25:27 +0100 (CET)
Date: Tue, 10 Nov 2020 14:25:26 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Bel Hadj Salem Talel <bhstalel@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] python3-psycopg2cffi DEPENDS error cffi
Message-ID: <20201110132526.fzp74psoeflsbn5r@qschulz>
References: <sd9w.1605014589683022175.fL1s@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <sd9w.1605014589683022175.fL1s@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Talel,

On Tue, Nov 10, 2020 at 05:23:09AM -0800, Bel Hadj Salem Talel wrote:
> HI All,
> I created a recipe with pipoe for python3-psycopg2cffi when compiling this error occured:
> 
> > 
> > ERROR: Do not try to fetch `cffi>=1.0' for building. Please add its native
> > recipe to DEPENDS.
> 
> I created a recipe for python3-cffi and I made it native with BBCLASSEXTEND = "native" and it depends also on python3-pycparser which is already native and exist.
> Then I added DEPENDS = "python3-cffi" to python3-psycopg2cffi recipe but failed with same error, I tried to rename the python3-cffi to just cffi but same error.
> 

If the native version of python3-cffi is needed, add
DEPENDS = "python3-cffi-native".

Quentin
