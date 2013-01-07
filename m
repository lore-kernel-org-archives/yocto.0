Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D033E0145F
	for <yocto@yoctoproject.org>; Mon,  7 Jan 2013 09:53:48 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:34680 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1TsGtO-0004Kz-QE; Mon, 07 Jan 2013 12:53:46 -0500
Date: Mon, 7 Jan 2013 12:53:42 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
In-Reply-To: <50EAB28F.6080506@dynamicdevices.co.uk>
Message-ID: <alpine.DEB.2.02.1301071251510.1319@oneiric>
References: <50E31E11.2090708@comcast.net>
	<50E73A16.4070303@dynamicdevices.co.uk>
	<50EA5C2E.9060701@comcast.net>
	<50EAB28F.6080506@dynamicdevices.co.uk>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: yocto@yoctoproject.org, ed nelson <enelson1000@comcast.net>
Subject: Re: Raspberry Pi do_fetch failure
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 07 Jan 2013 17:53:48 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 7 Jan 2013, Alex J Lennon wrote:

> > Alex
> >
> > Thanks I was able to download and build core-image-sato
> >
> > Having discussion with github but no real solution yet.
> >
>
> Hi Ed, I'm glad that was useful in moving you forward. I did some
> googling and this issue with GitHub does seem to pop up
> intermittently. My gut feeling is there's some kind of resource
> issue, perhaps related to compression on the server. Some of the
> comments do seem to suggest that disabling compression helps.
>
> I do wonder if someone from the Yocto project is able to fork the
> RPi linux repo and mirror either the Git repo itself or an archive
> of that (and indeed if that's a good idea)?

  is there a current diagnosis for this github fetching irritation?  i
thought i'd take a shot at building for rpi and, like others, i failed
to fetch the kernel from github:

WARNING: Failed to fetch URL
git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27,
attempting MIRRORS if available
ERROR: Fetcher failure: Fetch command failed with exit code 128,
output:
Cloning into bare repository
'/home/rpjday/oe/builds/rpi/downloads/git2/github.com.raspberrypi.linux.git'...

fatal: The remote end hung up unexpectedly
fatal: early EOF
fatal: index-pack failed

ERROR: Function failed: Fetcher failure for URL:
'git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27'.
Unable to fetch URL from any source.
ERROR: Logfile of failure stored in:
/home/rpjday/oe/builds/rpi/tmp-eglibc/work/armv6-vfp-oe-linux-gnueabi/linux-libc-headers-raspberrypi/3.2.27-r0/temp/log.do_fetch.1278
ERROR: Task 62
(/home/rpjday/oe/dist/layers/meta-raspberrypi/recipes-kernel/linux-libc-headers/linux-libc-headers-raspberrypi_3.2.27.bb,
do_fetch) failed with exit code '1'

  thoughts?  i've tried a few times this morning, same result each
time.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

