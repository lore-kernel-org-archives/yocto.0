Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C873E009D7; Thu, 23 Jul 2015 09:13:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BCF4E009B2
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 09:13:23 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 4CBD3F811D7; Thu, 23 Jul 2015 10:13:23 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id C4BC1F811D7;
	Thu, 23 Jul 2015 10:13:22 -0600 (MDT)
Message-ID: <55B112A6.50300@mlbassoc.com>
Date: Thu, 23 Jul 2015 10:13:26 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <337580094.1119907.1437666811235.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <337580094.1119907.1437666811235.JavaMail.yahoo@mail.yahoo.com>
Subject: Re: raspberry Pi core-image-sato booted okay
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
X-List-Received-Date: Thu, 23 Jul 2015 16:13:26 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-07-23 09:53, Edward Vidal wrote:
> i Gary,
>
> I added to my the 2 lines mentioned in the e-mail to my conf/local.conf
>
> PREFERRED_PROVIDER_virtual/egl ?= "vc-graphics-hardfp"
> PREFERRED_PROVIDER_virtual/libgles2 ?= "vc-graphics-hardfp"
>
> I had saved the original local.conf in ~/wkg/yocto/local.conf before making any changes.
>
> diff -u ~/wkg/yocto/local.conf conf/local.conf
> --- /home/vidal/wkg/yocto/local.conf    2015-07-21 08:15:40.228867905 -0600
> +++ conf/local.conf    2015-07-23 09:11:45.095116784 -0600
> @@ -10,6 +10,25 @@
>   # default values are provided as comments to show people example syntax. Enabling
>   # the option is a question of removing the # character and making any change to the
>   # variable as required.
> +PREFERRED_PROVIDER_virtual/egl ?= "vc-graphics-hardfp"
> +PREFERRED_PROVIDER_virtual/libgles2 ?= "vc-graphics-hardfp"
> +#
> +# Parallelism Options
> +#
> +# These two options control how much parallelism BitBake should use. The first
> +# option determines how many tasks bitbake should run in parallel:
> +#
> +BB_NUMBER_THREADS = "12"
> +#
> +# The second option controls how many processes make should run in parallel when
> +# running compile tasks:
> +#
> +PARALLEL_MAKE = "-j 12"
> +#
> +# For a quad-core machine, BB_NUMBER_THREADS = "4", PARALLEL_MAKE = "-j 4" would
> +# be appropriate for example.
> +
> +#
>
>   #
>   # Machine Selection
> @@ -34,7 +53,10 @@
>   #MACHINE ?= "edgerouter"
>   #
>   # This sets the default machine to be qemux86 if no other machine is selected:
> -MACHINE ??= "qemux86"
> +#MACHINE ??= "qemux86"
> +#MACHINE = "raspberrypi2"
> +MACHINE ??= "raspberrypi2"
> +GPU_MEM = "16"
>
>   #
>   # Where to place downloads
> @@ -48,7 +70,7 @@
>   # The default is a downloads directory under TOPDIR which is the build directory.
>   #
>   #DL_DIR ?= "${TOPDIR}/downloads"
> -
> +DL_DIR ?= "/home/vidal/wkg/yocto/downloads"
>   #
>   # Where to place shared-state files
>   #
>
> bitbake userland -c cleansstate
>
> bitbake core-image-sato
>
> WARNING: QA Issue: gstreamer1.0-plugins-bad: configure was passed unrecognised options: --with-egl-window-system [unknown-configure-option]
> NOTE: Tasks Summary: Attempted 5356 tasks of which 4131 didn't need to be rerun and all succeeded.
>
> Summary: There was 1 WARNING message shown.
> As root I created the SD
>
>
> dd if=tmp/deploy/images/raspberrypi2/core-image-sato-raspberrypi2.rpi-sdimg | pv | sudo dd of=/dev/sdb bs=16M
>
> The Raspberry Pi 2 B boot to graphical sato interface.
>
> Is there anything else that I can provide.
> How do you when to use -c cleansstate on a recipe?  This appears to be a handy command.

Whenever you want to forcibly remove some recipe/package.  This
cleans up the work (build) tree as well as removes any packaging
which is kept in the sstate-cache, i.e. it's as if you had never
built the recipe in the first place.  In your case, this was needed
because the 'userland' recipe had been previously built which staged
a lot of the libegl* files.  Those conflicted with what the  vc-graphics-hardfp
wanted to install, hence the need to "erase" the userland artifacts.

One little suggestion: when sending questions, provide as much
detail as you can as most folks reading these lists are not
experienced mind-readers :-)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

