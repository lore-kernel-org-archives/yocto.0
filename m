Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web09.6069.1616488544980176083
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Mar 2021 01:35:45 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4F4Pp54P8pz5tlK;
	Tue, 23 Mar 2021 09:35:40 +0100 (CET)
Date: Tue, 23 Mar 2021 09:35:39 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Randall <randall.crook@au.ngc.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] package_rpm and file conflicts.
Message-ID: <20210323083539.irnoq4vnlh35pafn@qschulz>
References: <oJmL.1616461319381089258.O5Nj@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <oJmL.1616461319381089258.O5Nj@lists.yoctoproject.org>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Randall,

On Mon, Mar 22, 2021 at 06:01:59PM -0700, Randall wrote:
> HI,
> 
> Building up a customization layer over the top of poke to install 3rd party RPM files at build time. These packages contain some basic global configuration changes for the destination environment.
> 
> Unfortunately I am getting RPM file conflicts (EG: /etc/network/interfaces) when I go to build. How can force the package installation allowing for the conflicting file from the custom layer to over write the files in the base packages?
> 

You cannot, you need to either not instal init-ifupdown and
busybox-udhdpc or modify them to not install this file in your image.

Cheers,
Quentin
