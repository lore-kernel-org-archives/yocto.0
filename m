Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web10.11738.1591107618765434117
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Jun 2020 07:20:19 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 49bvMM628dz5tlP;
	Tue,  2 Jun 2020 16:20:15 +0200 (CEST)
Date: Tue, 2 Jun 2020 16:20:14 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Damien LEFEVRE <lefevre.da@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] find utility alternative
Message-ID: <20200602142014.s5mg5ttmlvmzeh5n@qschulz>
References: <CA+FhBv9Xthz3G5ytMWNhRL7D0QfYRRBOPU3xwG4xY0Dj2h7nHw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+FhBv9Xthz3G5ytMWNhRL7D0QfYRRBOPU3xwG4xY0Dj2h7nHw@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Damien,

On Tue, Jun 02, 2020 at 05:13:20PM +0300, Damien LEFEVRE wrote:
> Hi,
> 
> I need to run a script using the
> find ... -empty
> 
> option which isn't supported with busybox.

It is?
https://git.busybox.net/busybox/tree/findutils/find.c#n206

You need to enable it in busybox config (you can use config fragments
IIRC).

> 
> ```
> find: unrecognized: -empty
> BusyBox v1.30.1 (2020-05-25 15:54:17 UTC) multi-call binary.
> ```
> 
> Do any other package provide an alternative for then "find" utility?
> 

layers.openembedded.org is your friend. For example, maybe findutils[1]
will work for you?

[1] http://layers.openembedded.org/layerindex/recipe/141/

Quentin
