Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00144E011AB
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2013 05:59:29 -0800 (PST)
Received: from cpebcc81008dd2c-cmbcc81008dd29.cpe.net.cable.rogers.com
	([99.253.156.71]:57541 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1TvTWa-0004kZ-Ci; Wed, 16 Jan 2013 08:59:28 -0500
Date: Wed, 16 Jan 2013 08:59:21 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
In-Reply-To: <50F6AF06.3020908@dynamicdevices.co.uk>
Message-ID: <alpine.DEB.2.02.1301160857110.20863@oneiric>
References: <50E31E11.2090708@comcast.net>
	<50E73A16.4070303@dynamicdevices.co.uk>
	<50EA5C2E.9060701@comcast.net>
	<50EAB28F.6080506@dynamicdevices.co.uk>
	<alpine.DEB.2.02.1301071251510.1319@oneiric>
	<CAK18fxFLb3PsK0c=kBucStW_7OFj+UrxCg=g4b7M=D3MXCvw5A@mail.gmail.com>
	<alpine.DEB.2.02.1301071450500.21516@oneiric>
	<50F63E70.3000000@comcast.net>
	<50F6AF06.3020908@dynamicdevices.co.uk>
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
Cc: Yocto Project <yocto@yoctoproject.org>, Ed Nelson <enelson1000@comcast.net>
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
X-List-Received-Date: Wed, 16 Jan 2013 13:59:30 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 16 Jan 2013, Alex J Lennon wrote:

> On 16/01/2013 05:45, Ed Nelson wrote:
> > I finally got a response back from github ....
> >
> > Hi Ed,
> >
> > We tracked the issue down to an internal network timeout (it only happens
> > when `--quiet` is used, because git is silent on the network while preparing
> > the clone in that case). We've bumped up the limit, and you should be able
> > to clone now. Please let us know if you have any more trouble.
> >
> > ....
> >
> > I have not tried it yet but hopefully they fixed the problem
>
> I've just tried it and it is still failing -
>
> WARNING: Failed to fetch URL
> git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27,
> attempting MIRRORS if available
> ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
> Cloning into bare repository
> '/data_drive/RPiMonoSmoke/yoctoProject/raspberryPiBuild/downloads/git2/github.com.raspberrypi.linux.git'...
>
> fatal: read error: Connection timed out
> fatal: early EOF
> fatal: index-pack failed
>
> ERROR: Function failed: Fetcher failure for URL:
> 'git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27'.
> Unable to fetch URL from any source.

  github has been particularly annoying with respect to this lately.
my workaround is to simply clone what you need manually, then tweak
the recipe thusly to point at your local repo:

SRCREV = "10182a3bc434b27740f81c2b836a1af943060241"
SRC_URI =
"git:///home/rpjday/oe/dist/t/linux;protocol=git;branch=rpi-3.2.27 \
          "

  yes, it's hacky, but it lets me get back to work.  sure be nice when
this silliness is resolved.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

