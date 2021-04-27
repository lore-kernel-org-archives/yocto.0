Received: from bsmtp1.bon.at (bsmtp1.bon.at [213.33.87.15])
 by mx.groups.io with SMTP id smtpd.web11.5549.1619511721346051104
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Apr 2021 01:22:02 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.15, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp1.bon.at (Postfix) with ESMTPSA id 4FTvr65hByz5tlH;
	Tue, 27 Apr 2021 10:21:58 +0200 (CEST)
Date: Tue, 27 Apr 2021 10:21:57 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: jchludzinski@vivaldi.net
Cc: Yocto <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] ERROR: Fetcher failure: Fetch command export...
Message-ID: <20210427082157.ejgupbni2ronc2b3@qschulz>
References: <5bdffd88cda11c8ca92eb10bb2d7fe25@vivaldi.net>
MIME-Version: 1.0
In-Reply-To: <5bdffd88cda11c8ca92eb10bb2d7fe25@vivaldi.net>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Apr 27, 2021 at 02:01:24AM -0400, jchludzinski via lists.yoctoproject.org wrote:
> When I trying using bitbake to build openembedded Linux kernel, it dies with
> these download failures:
> 
> NOTE: Fetching uninative binary shim http://downloads.yoctoproject.org/releases/uninative/3.0/x86_64-nativesdk-libc.tar.xz;sha256sum=5ec5a9276046e7eceeac749a18b175667384e1f445cd4526300a41404d985a5b
> (will check PREMIRRORS first)
> WARNING: Failed to fetch URL http://downloads.yoctoproject.org/releases/uninative/3.0/x86_64-nativesdk-libc.tar.xz;sha256sum=5ec5a9276046e7eceeac749a18b175667384e1f445cd4526300a41404d985a5b,
> attempting MIRRORS if available
> ERROR: Fetcher failure: Fetch command export PSEUDO_DISABLED=1; export
> DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"; export
> SSH_AUTH_SOCK="/run/user/1000/keyring/ssh"; export PATH="/home/jski/poky/scripts:/home/jski/poky/build/tmp/work/core2-64-poky-linux/defaultpkgname/1.0-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux:/home/jski/poky/build/tmp/work/core2-64-poky-linux/defaultpkgname/1.0-r0/recipe-sysroot/usr/bin/crossscripts:/home/jski/poky/build/tmp/work/core2-64-poky-linux/defaultpkgname/1.0-r0/recipe-sysroot-native/usr/sbin:/home/jski/poky/build/tmp/work/core2-64-poky-linux/defaultpkgname/1.0-r0/recipe-sysroot-native/usr/bin:/home/jski/poky/build/tmp/work/core2-64-poky-linux/defaultpkgname/1.0-r0/recipe-sysroot-native/sbin:/home/jski/poky/build/tmp/work/core2-64-poky-linux/defaultpkgname/1.0-r0/recipe-sysroot-native/bin:/home/jski/poky/bitbake/bin:/home/jski/poky/build/tmp/hosttools";
> export HOME="/home/jski"; /usr/bin/env wget -t 2 -T 30 --passive-ftp
> --no-check-certificate -P /home/jski/poky/build/downloads/uninative/5ec5a9276046e7eceeac749a18b175667384e1f445cd4526300a41404d985a5b 'http://downloads.yoctoproject.org/releases/uninative/3.0/x86_64-nativesdk-libc.tar.xz'
> --progress=dot -v failed with exit code 4, output:
> --2021-04-27 01:49:09--  http://downloads.yoctoproject.org/releases/uninative/3.0/x86_64-nativesdk-libc.tar.xz
> Resolving downloads.yoctoproject.org (downloads.yoctoproject.org)... failed:
> Connection timed out.
> wget: unable to resolve host address 'downloads.yoctoproject.org'
> 

It looks like an issue with your DNS which does not return anything for
downloads.yoctoproject.org?

Cheers,
Quentin
