Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F702E00742
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2011 12:36:49 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 13 Dec 2011 12:36:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="86891121"
Received: from unknown (HELO [10.255.12.215]) ([10.255.12.215])
	by orsmga002.jf.intel.com with ESMTP; 13 Dec 2011 12:36:34 -0800
Message-ID: <4EE7B752.7050802@linux.intel.com>
Date: Tue, 13 Dec 2011 12:36:34 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4EE7B44D.7000301@linux.intel.com>
In-Reply-To: <4EE7B44D.7000301@linux.intel.com>
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
X-List-Received-Date: Tue, 13 Dec 2011 20:36:49 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 13/12/11 12:23, Darren Hart wrote:
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

These all sounds like policy (and therefore distro) decisions to me. As
with much of our system there's no hard and fast rule but this certainly
sounds like a distro to me.

I think it's perfectly reasonable to assume that you can't build every
image you find in the wild for every distro configuration you create.

> 
> So what does the distro define and what does the image define?

Distro defines the build configuration policy, image defines image contents.

You shouldn't set anything in the image definition which affects how
things are built as the packages can then be used in another image.

> 
> Digging around in conf/distro for meta and meta-yocto, I see things like
> naming convention, additional dependencies, choice of toolchain and
> libc, source mirrors, default virtual providers, etc.

*nod*

> 
> The image seems to basically define the package list for the image as
> well as the format of the rootfs and boot media.

*nod* though arguably the latter 3 are likely poked elsewhere also.

> If I understand this correctly, a new "tiny" distro definition would
> change the preferred linux-yocto provider to a linux-yocto-tiny recipe
> (which would in turn specify the default KMACHINE/KTYPE as well, the
> TCLIBC, DISTRO_FEATURES_LIBC, and some naming rules.

Yes!

> I currently define a new task-core-tiny.bb to reset some
> MACHINE_ESSENTIAL bits (qemu pulls in more than is necessary for tiny)
> and redefine the REDEPENDS for the image. I believe I could do this
> instead with assignments in the new distro definition and reuse
> task-core-boot.bb.

Seems like a good approach.

> As for images, I might be able to reuse core-image-minimal - but it
> oddly contains "${POKY_EXTRA_INSTALL}" in the IMAGE_INSTALL. Since
> core-image-minimal.bb is defined in oe-core and POKY is a distro notion
> of meta-yocto, this contributes to my confusion over distro vs. image.
> 
> I'd appreciate some discussion to help me clarify where these lines
> should be.

That's just a stray variable that has yet to be properly renamed by the
looks of it.

It sounds to me like your understanding is correct and this variable has
just thrown you for a loop.

Cheers,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre

