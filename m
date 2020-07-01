Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web10.23209.1593613841671798041
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Jul 2020 07:30:42 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 49xkCz50MQz5tlD;
	Wed,  1 Jul 2020 16:30:39 +0200 (CEST)
Date: Wed, 1 Jul 2020 16:30:38 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: ingemar0720@gmail.com
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] How to install rrdtool-per package?
Message-ID: <20200701143038.bxz7gbufzbdc6gsb@qschulz>
References: <f148084c-81a8-aa23-5581-735b30dd054b@rsi-elektrotechnik.de>
 <3093.1593613560762629137@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <3093.1593613560762629137@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jul 01, 2020 at 07:26:00AM -0700, ingemar0720@gmail.com wrote:
> On Wed, Jul 1, 2020 at 05:27 AM, "Josef Holzmayr" <holzmayr@rsi-elektrotechnik.de> wrote:
> 
> > 
> > Howdy!
> > 
> > Am 01.07.2020 um 14:05 schrieb ingemar0720@gmail.com:
> > 
> >> On Wed, Jul 1, 2020 at 04:46 AM, Josef Holzmayr wrote:
> >> 
> >> The correct place to do this is your DISTRO conf file.
> >> 
> >> Is this the correct way to set up it?
> >> 
> >> PACKAGECONFIG_pn-rrdtool="rrdtool rrdtool-perl"
> > 
> > Please see
> > 
> > https://www.yoctoproject.org/docs/3.1/ref-manual/ref-manual.html#var-PACKAGECONFIG
> > 
> > 
> > Section "configuration file"
> > 
> > 
> 
> I've added "PACKAGECONFIG_pn-rrdtool" into my distro conf file but still get same result.
> 
> I also tried adding .bbappend but it doesn't help.
> 
> My distro conf file is in below, could you see any issue in it?
> 
> *include conf/distro/poky.conf*
> *DISTRO = "rpi"*
> *DISTRO_NAME = "rpi"*
> *DISTRO_VERSION = "1.0"*
> 
> *PACKAGECONFIG_pn-rrdtool = "perl systemd"*
> 
> *# Use systemd as init manager*
> *DISTRO_FEATURES_append = " virtualization systemd bluez5 bluetooth wifi ssh-server-openssl"*
> *DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"*
> *VIRTUAL-RUNTIME_init_manager = "systemd"*
> *VIRTUAL-RUNTIME_initscripts = "systemd-compat-units"*
> 

bitbake rrdtool -e and look for the line starting with PACKAGECONFIG.
CHeck it's set to what you want, if not, look the lines above to
understand why it's not set "correctly".

Quentin
