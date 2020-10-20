Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web10.2806.1603184264277550325
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Oct 2020 01:57:45 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4CFnZY4DtWz5tlM;
	Tue, 20 Oct 2020 10:57:41 +0200 (CEST)
Date: Tue, 20 Oct 2020 10:57:40 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Zoltan Kerenyi Nagy <kerenyi.nagy.zoltan@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] network-manager #yocto #nmcli
Message-ID: <20201020085740.wmadecvuajrpcit7@qschulz>
References: <QYDf.1603183717679989166.nHWa@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <QYDf.1603183717679989166.nHWa@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, Oct 20, 2020 at 01:48:37AM -0700, Zoltan Kerenyi Nagy wrote:
> Hi All,
> 
> My board is a Barix Ipam400, and I'd like to add 4G conenction to it via a USB and 4G Dongle. The dongle is a Huewei E3372 stick.
> I'd spent some time with wvdial and usbmodeswitch with no success. Then I tried the stick in my laptop with network-manager, it was working like a charm
> Then I've found this ( https://github.com/openembedded/meta-openembedded/tree/master/meta-networking/recipes-connectivity/networkmanager/networkmanager ) source, since the original recipe file would not compile.
> 
> Ive bitbaked network.manager loaded to the hardware however there is no nmcli and nmtoi included.
> 

You need to bitbake networkmanager but install networkmanager-nmcli
and/or networkmanager-nmtui, c.f.
http://cgit.openembedded.org/meta-openembedded/tree/meta-networking/recipes-connectivity/networkmanager/networkmanager_1.22.14.bb?h=master#n89

I'd probably triple check all the PACKAGECONFIG you need are set:
http://cgit.openembedded.org/meta-openembedded/tree/meta-networking/recipes-connectivity/networkmanager/networkmanager_1.22.14.bb?h=master#n65

Since you want 4G, it might be a good idea to have modemmanager enabled?
I've never used networmanager so can't help much more than that.

Quentin
