Received: from linuxplesk15.openhost.net.nz (linuxplesk15.openhost.net.nz [119.47.118.83])
 by mx.groups.io with SMTP id smtpd.web12.5343.1595477140749156685
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Jul 2020 21:05:41 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: bluelightning.org, ip: 119.47.118.83, mailfrom: bluelightning@bluelightning.org)
Received: from linc.localnet (unknown [151.210.230.143])
	by linuxplesk15.openhost.net.nz (Postfix) with ESMTPSA id 66864A42D9;
	Thu, 23 Jul 2020 16:05:36 +1200 (NZST)
Authentication-Results: linuxplesk15.openhost.net.nz;
        spf=pass (sender IP is 151.210.230.143) smtp.mailfrom=bluelightning@bluelightning.org smtp.helo=linc.localnet
Received-SPF: pass (linuxplesk15.openhost.net.nz: connection is authenticated)
From: "Paul Eggleton" <bluelightning@bluelightning.org>
To: Chandana kalluri <ckalluri@xilinx.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, Mark Hatle <mhatle@xilinx.com>
Subject: Re: [yocto] RFC: Devtool support to read BB_ENV_EXTRAWHITE variables and parse the env variables same as bitbake
Date: Thu, 23 Jul 2020 16:05:36 +1200
Message-ID: <7843669.NyiUUSuA9g@linc>
In-Reply-To: <BYAPR02MB5926CA0B969618BE28ADC824B0790@BYAPR02MB5926.namprd02.prod.outlook.com>
References: <BYAPR02MB5926CA0B969618BE28ADC824B0790@BYAPR02MB5926.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Chandana,

On Thursday, 23 July 2020 11:29:24 NZST Chandana kalluri wrote:
> I have a use case where the user passes path to devtool modify using TOPDIR.
> Ex. devtool modify linux-xlnx -n ${TOPDIR}/linux-xlnx
> 
> Since devtool doesn't evaluate TOPDIR as bitbake variable, during expansion
> it expands it as devtool modify linux-xlnx -n /linux-xlnx

Assuming you are quoting the command verbatim, the issue here is that the 
shell is evaluating TOPDIR, so devtool doesn't even get to see the reference. 
Granted, even if you use single quotes to prevent the shell expansion, devtool 
does not expand the variable reference; it could be made to fairly easily 
though.
 
> Can we add support to devtool that reads BB_ENV_EXTRAWHITE variable and
> parse the env variables same as bitbake ?

I can see how this might be related but it doesn't seem necessary for the 
expansion to work - it would only be needed if you wanted to pass in TOPDIR 
externally, but that would have other implications as well. Is that needed?

Cheers
Paul



