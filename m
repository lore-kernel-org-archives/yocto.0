Received: from bsmtp3.bon.at (bsmtp3.bon.at [213.33.87.17])
 by mx.groups.io with SMTP id smtpd.web09.2303.1610104548204876101
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Jan 2021 03:15:48 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.17, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp3.bon.at (Postfix) with ESMTPSA id 4DC0rx4KjNz5tlG;
	Fri,  8 Jan 2021 12:15:45 +0100 (CET)
Date: Fri, 8 Jan 2021 12:15:44 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Vijay Rakesh Munganda <vijayrakeshmunganda@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Unable to extract tar file #dunfell #yocto
Message-ID: <20210108111544.3g5m5ivajln6mdpw@qschulz>
References: <20210108092613.4plbcntlv72ax3a2@qschulz>
 <11979.1610104063355267335@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <11979.1610104063355267335@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jan 08, 2021 at 03:07:43AM -0800, Vijay Rakesh Munganda wrote:
> On Fri, Jan 8, 2021 at 01:26 AM, Quentin Schulz wrote:
> 
> > 
> > Hi,
> > 
> > On Fri, Jan 08, 2021 at 01:19:51AM -0800, Vijay Rakesh Munganda wrote:
> > 
> >> Hi Paul Barker,
> >> 
> >> No, ${WORKDIR}/tokbox directory is empty, it is not getting placed. I can
> >> only see it in the downloads directory.
> > 
> > S = "${WORKDIR}/libopentok_linux_llvm_arm64"
> > 
> > This is the root directory of your archive and should be used for `S`
> > 
> > Cheers,
> > Quentin
> 
> By changing to S = "${WORKDIR}/libopentok_linux_llvm_arm64" error got eliminated, thank you.
> 
> Now, how can I install the file under opentok_linux_llvm_arm64/lib/libopentok.so into the rootfs?
> 
> I tried the below code but got an error as *install: cannot stat 'lib/libopentok.so': No such file or directory*.
> 

If you go into ${WORKDIR} of your recipe (tmp/work/<arch>/<recipe name>),
what is the path to libopentok.*.so?

Quentin
