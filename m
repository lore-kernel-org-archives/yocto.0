Return-Path: <hans.beckerus@gmail.com>
Received: from mail-oa0-f49.google.com (mail-oa0-f49.google.com
	[209.85.219.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 419FDE015BC
	for <yocto@yoctoproject.org>; Wed, 11 Sep 2013 07:56:52 -0700 (PDT)
Received: by mail-oa0-f49.google.com with SMTP id i7so9381788oag.8
	for <yocto@yoctoproject.org>; Wed, 11 Sep 2013 07:56:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=pk9U/qVDqAfEJh/sFx+opro2Nbu/2DKlE0JyaJ/6dfM=;
	b=cQbByKruO/bGN1x2KjoO/2KOYrfphxIAewKqN2OHTJFtAzzs9X4Vp4XtL2upRHFpTF
	s6qk/XtuwQbrbt9Fsx8s+b/nlwQ7jeKFvRis4ar9/lx/CP3v+JAO6ByAUMzF7gm0uNNc
	P/I7rhi6602JOwHs1r0foktfm1hkYGkjvFD15xGAJK5G5SrDjOqzGr0zNZIA2F8s/lVQ
	9Ei+40qIOvVgcyKKqAoU874djpf56Ouk4iju8D2+WenHNmsXQcuD34Ty2KB+9vlIBxOQ
	HzSS72LRVHx23Alhi+YPKfTAUmAMc0kmTtOAZEk5oGeA8/0A6koOJb5FyObvLJnfoFqn
	UpUA==
MIME-Version: 1.0
X-Received: by 10.182.251.199 with SMTP id zm7mr723009obc.99.1378911412150;
	Wed, 11 Sep 2013 07:56:52 -0700 (PDT)
Received: by 10.182.44.8 with HTTP; Wed, 11 Sep 2013 07:56:52 -0700 (PDT)
In-Reply-To: <CABHD4K9QJO=OOojPX4KmHXBMgfDK1wX-nWasJ82CL3m1ZzoZUg@mail.gmail.com>
References: <CABHD4K9QJO=OOojPX4KmHXBMgfDK1wX-nWasJ82CL3m1ZzoZUg@mail.gmail.com>
Date: Wed, 11 Sep 2013 16:56:52 +0200
Message-ID: <CAFyqS9qQd1mcQ1OYxjRbRZnwezA=V8bvCLb+uvMBDYS1EwM-dA@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: amit tomer <amittomer25@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to change machine name in yocto
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 11 Sep 2013 14:56:53 -0000
Content-Type: text/plain; charset=ISO-8859-1

The MACHINE is simply a pointer to a machine specific configuration
file. So if you set your MACHINE=foo, then somewhere in your bblayer
path(s) you need to make sure that a conf/machine/foo.conf is
available. Then it will use that.
Typically, I think you should do this in your own bsp meta, eg.
meta-foo/conf/machine/foo.conf and then add meta-foo to your
build/conf/bblayers.conf file.

Thanks,
Hans



On Wed, Sep 11, 2013 at 4:30 PM, amit tomer <amittomer25@gmail.com> wrote:
>  I am new to opensource build framework Yocto and have a requirement wherein
> wanted to change the machine name ,when I do BITBAKE image-name
>
> Build Configuration:
>
> BB_VERSION        = "1.18.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "RedHatEnterpriseServer-5.6"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "pyp-ii"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.4.1"
> TUNE_FEATURES     = "armv7a vfp neon callconvention-hard cortexa15"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto
> meta-yocto-bsp    = "(nobranch):beda5013e46da16a3d76f095869a5a5c5b1bc08a"
> meta-linaro-toolchain =
> "(nobranch):0f679485b945c1b929a44d1865eb517a096ac4ef"
> meta-ti           = "(nobranch):3eb71003af3ebb025285493721332111ac581a42
>
> Now MACHIEN name I wanted to change something like k2 from pyp-ii ,I tried
> changing it in local.conf file but I am getting error like
>
> ERROR: OE-core's config sanity checker detected a potential
> misconfiguration. Either fix the cause of this error or at your own risk
> disable the checker (see sanity.conf). Following is the list of potential
> problems / advisories:
>
> Please set a valid MACHINE in your local.conf or environment
>
> ERROR: Execution of event handler 'check_sanity_eventhandler' failed
>
> I also tried setting up export MACHINE="k2" but I am getting the same error
> message
>
> In my /var/fpwork/tomar_yocto1/snz-yocto/meta-xyz/conf/machine there exist a
> pyp-ii.conf file.
>
> I tried renaming it to k2.conf but it also didn't work out.
>
>
> Can anybody let me know what needs to be done in order to change MACHINE
> name here.
>
>
> Thanks
>
> Amit Singh Tomar
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

