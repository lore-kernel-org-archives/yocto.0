Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E018E00742
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2011 13:36:22 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pBDLaJdl015183;
	Tue, 13 Dec 2011 21:36:19 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 14836-06; Tue, 13 Dec 2011 21:36:15 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pBDLaAh9015177
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 13 Dec 2011 21:36:11 GMT
Message-ID: <1323812170.25491.23.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
Date: Tue, 13 Dec 2011 21:36:10 +0000
In-Reply-To: <4EE7B44D.7000301@linux.intel.com>
References: <4EE7B44D.7000301@linux.intel.com>
X-Mailer: Evolution 3.2.1- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: The role of "distro" and "image"
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
X-List-Received-Date: Tue, 13 Dec 2011 21:36:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-12-13 at 12:23 -0800, Darren Hart wrote:
> I'm trying to wrap up my work on meta-tiny and integrate it into poky
> proper. I'm having some difficulty drawing a line between the
> responsibility of the distro definition versus that of the image definition.
> 
> For example, if I define a distro which uses tmpdevfs (no udev or mdev)
> and specifies KMACHINE=yocto/standard/tiny to build the tiny variant of
> the linux-yocto kernel, and customizes the busybox build to leave out
> various things - would it make sense for someone to then try to build
> core-image-sato with it? It doesn't to me, but nothing prevents the user
> from doing that (other than a likely build failure).
> 
> So what does the distro define and what does the image define?

I think Joshua's response is in line with what I'm thinking. Distro is
where all the policy is specified. The image is just a list of pieces of
software to include, its not meant to be much more than that.

> Digging around in conf/distro for meta and meta-yocto, I see things like
> naming convention, additional dependencies, choice of toolchain and
> libc, source mirrors, default virtual providers, etc.

Right, all of this is "policy" at some level or another.

> The image seems to basically define the package list for the image as
> well as the format of the rootfs and boot media.

The latter is often machine specific. There are some images which
specify those things but they're a minority.

> If I understand this correctly, a new "tiny" distro definition would
> change the preferred linux-yocto provider to a linux-yocto-tiny recipe
> (which would in turn specify the default KMACHINE/KTYPE as well, the
> TCLIBC, DISTRO_FEATURES_LIBC, and some naming rules.

Yes, you'd inherit something for the base config and then customise it.

> I currently define a new task-core-tiny.bb to reset some
> MACHINE_ESSENTIAL bits (qemu pulls in more than is necessary for tiny)
> and redefine the REDEPENDS for the image. I believe I could do this
> instead with assignments in the new distro definition and reuse
> task-core-boot.bb.

The latter reuse of task-core-boot would be ideal. If that can't work
I'd be interested to see why and if we couldn't enhance it so it could
work.

> As for images, I might be able to reuse core-image-minimal - but it
> oddly contains "${POKY_EXTRA_INSTALL}" in the IMAGE_INSTALL. Since
> core-image-minimal.bb is defined in oe-core and POKY is a distro notion
> of meta-yocto, this contributes to my confusion over distro vs. image.

This is a bug and there are some patches out there to turn it into
COREIMAGE_EXTRA_INSTALL. Its a feature of the core-image.bbclass
(formerly poky.bbclass, hence the name confusion).

Not all images can be built with a given distro, our base config is
rather ride ranging though for obvious reasons. You could "enforce" this
by adding some anonymous python to the distro which does something like:

if inherits("image") and PN != core-image-minimal:
    raise SkipPackage("Image PN not compatible with DISTRO=XXX")

Cheers,

Richard



