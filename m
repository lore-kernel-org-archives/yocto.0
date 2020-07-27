Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web12.51031.1595838233604341669
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jul 2020 01:23:54 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4BFXrk4S49z5tlF;
	Mon, 27 Jul 2020 10:23:50 +0200 (CEST)
Date: Mon, 27 Jul 2020 10:23:49 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: paruchuribhavyasree@gmail.com
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] ERRORS while building customized yocto image for Raspberrypi #yocto
Message-ID: <20200727082349.vji4hpki47etvwuw@qschulz>
References: <20200724131423.wkpmfforkxce6adv@qschulz>
 <11928.1595650329560242513@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <11928.1595650329560242513@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Bhavya,

On Fri, Jul 24, 2020 at 09:12:09PM -0700, paruchuribhavyasree@gmail.com wrote:
> Hi Quentin
> 
> I tried changing it but facing same kind of error during Build.
> 

Your S = "${WORKDIR}" is probably wrong then.

Is there only a directory "at the root" of the tarball? I mean if you
untar it, do you get one directory where all your source code is? In
that case, if the subdirectory is named "gsm-${PV}" (replace PV with the
correct and full number), you don't need to define S because the default
should be just enough IIRC.

Otherwise, S = "${WORKDIR}/<whatever_name_of_the_dir_in_gsm-${PV}.tar.gz_is>"

Finally, since your license is not in the tarball (but it should really
be actually), you need to prefix your LIC_FILES_CHKSUM with "../"
otherwise the license won't be found.

Moreover, you can't reassign twice the same variable and expect them to
be merged. That's what you did for SRC_URI but I missed that you also
did it for LICENSE, if it's dual licensed: LICENSE = "GNUC | GPLv3" or
LICENSE = "GNUC & GPLv3", the meaning is obviously not the same but you
only can know what to put there.

N.B.: You still need the SRC_URI as I gave you in an earlier mail.

Quentin
