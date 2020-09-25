Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
 by mx.groups.io with SMTP id smtpd.web10.708.1601049611503400360
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Sep 2020 09:00:12 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.16, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 4Byc7X6PCWz5tlC;
	Fri, 25 Sep 2020 18:00:08 +0200 (CEST)
Date: Fri, 25 Sep 2020 18:00:07 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Bel Hadj Salem Talel <bhstalel@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] setup.py no such file or directory
Message-ID: <20200925160007.rchieyod4atltcy5@qschulz>
References: <wZbD.1601046731917768605.B1ZA@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <wZbD.1601046731917768605.B1ZA@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

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
> Here is the recipe by devtool:
> 
> ##############
> 
> SUMMARY = "Wirepas gateway transport service that connects the local dbus to a remote MQTT broker."
> HOMEPAGE = "https://github.com/wirepas/gateway"
> LICENSE = "Apache"
> LIC_FILES_CHKSUM = "file://LICENSE;md5=cb6bb17b0d0cca188339074207e9f4d8"
> SRC_URI = "file:///media/talel/data/multigate/multigate/meta-wirepas/recipes-wirepas/wirepas-gateway/files/wirepas_gateway-${PV}/wp-gateway.zip"

If your recipe is in:
/media/talel/data/multigate/multigate/meta-wirepas/recipes-wirepas/wirepas-gateway/
and wp-gateway.zip is in:
/media/talel/data/multigate/multigate/meta-wirepas/recipes-wirepas/wirepas-gateway/files/wirepas_gateway-1.4.0
just put:
SRC_URI = "file://wirepas_gateway-${PN}/wp-gateway.zip"

I'd suggest putting your .zip file in:
/media/talel/data/multigate/multigate/meta-wirepas/recipes-wirepas/wirepas-gateway/wirepas_gateway-1.4.0
(note the missing files directory), in which case, your SRC_URI would
be:
SRC_URI = "file://wp-gateway.zip"

Also... This looks like you're taking code from
https://github.com/wirepas/gateway ? Have you thought of using the git
repo directly? e.g. devtool add python3-wirepas-gateway
https://github.com/wirepas/gateway.git?

It'll use the latest commit in master but it's changeable, and it is way
more maintainable IMO compared to a tarball you manually download every
now and then.

Please do NOT use _ in your recipe filename, so rename your recipe to
python3-wirepas-messaging.

Please answer to all when you're answering back to me or anyone in this
community, so people could benefit from the solution or discussion
around the issue,
Quentin
