Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54E86E007BF
	for <yocto@yoctoproject.org>; Fri, 14 Mar 2014 15:16:45 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 2ED6DF81201; Fri, 14 Mar 2014 16:16:42 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 69504F811EB;
	Fri, 14 Mar 2014 16:16:40 -0600 (MDT)
Message-ID: <53237FCF.8020700@mlbassoc.com>
Date: Fri, 14 Mar 2014 16:16:47 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAA7h+EpU6RVwbewuJ6r04+O2CvjPBpP1z86dpAthm4_cBrrO+Q@mail.gmail.com>	<53207D25.2040309@mlbassoc.com>	<CAA7h+Eomb_92298Y1NDmtTNiTmNcbivytLd9xT=1FVZ+My=PAw@mail.gmail.com>	<5320AB11.4060303@mlbassoc.com>	<CAA7h+EoYviRS34heBABgE-o1eQP0po=rVgE-Tc98vSg16F-5+g@mail.gmail.com>	<5323147A.8000400@mlbassoc.com>
	<CAA7h+EpRdEuYERe+N2enPyPDuP1fN+qE_PD9NnEGHYDV2wwP+Q@mail.gmail.com>
In-Reply-To: <CAA7h+EpRdEuYERe+N2enPyPDuP1fN+qE_PD9NnEGHYDV2wwP+Q@mail.gmail.com>
X-Enigmail-Version: 1.5.2
Subject: Re: Building on target
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
X-List-Received-Date: Fri, 14 Mar 2014 22:16:48 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

On 2014-03-14 08:49, Rick Bianchi wrote:
> If I have time today I will try to reproduce your results. If not, I will get to it first thing next week and post my result.

One thing I forgot to point out is I used the identical kernel+modules for
both setups.  I would be interested to see if that makes any difference for
you.  I can't fully test it as my board doesn't have a Linaro kernel.

So there are four combinations - I only tried the first two:
  Yocto kernel + Yocto rootfs
  Yocto kernel + Linaro rootfs
  Linaro kernel + Yocto rootfs
  Linaro kernel + Linaro rootfs

> On Fri, Mar 14, 2014 at 7:38 AM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
> 
>     On 2014-03-12 13:11, Rick Bianchi wrote:
>     > usbip from /usr/src/kernel/drivers/staging/usbip
> 
>     I finally managed to make this comparison.  I did this by taking my Poky/Yocto
>     built system for a i.MX6 system (ARM Cortex-A9) and replaced the rootfs with
>     one for the Gumstix Overo (linaro).  The results were nothing like yours, so
>     it's a bit confusing.
> 
>     I actually built an entire Linux kernel - not just the one directory you mentioned.
> 
>     Poky/Yocto - 37 minutes
>     Linaro     - 48 minutes
> 
>     There is some flex in these numbers as they were on different [brand] SD cards, etc,
>     but I sure did not see the "5 minutes for Linaro vs 24 hours on Yocto" that you reported.
> 
>     Perhaps the only thing I did differently was I added the SDK tools to my Yocto system
>     using these meta-packages instead of the list you used.
>       packagegroup-core-sdk packagegroup-core-standalone-sdk-target
> 
>     You might try that to see if it makes any difference.
> 
>     n.b. part of what took me so long to get these results is I was trying to run this test
>     on something closer to your Overo board.  I have an older OMAP DM3730 board here that I
>     tried to do these same steps, but it was unstable and I could not get the Linaro based
>     file system to work at all.  Very strange.  In any case, I think the comparison I did get
>     with the i.MX6 is valid.
> 
>     > On Wed, Mar 12, 2014 at 11:44 AM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>> wrote:
>     >
>     >     On 2014-03-12 10:09, Rick Bianchi wrote:
>     >     > I completely agree with regards to the comparison, but I have compiled the same exact source on the same target (arm) and it only took 5 minutes when running the Linaro image.
>     >     >
>     >     > To clarify, the only difference is the build, one is Linaro (took 5 minutes to compile source on the target) and the other Yocto (took almost 24 hours to compile source on the target).
>     >
>     >     Sorry, I missed that this was on the same hardware.
>     >
>     >     What are you building?  I'm going to try and duplicate this here
>     >     on hardware I have that's quite similar to your Gumstix board.
>     >
>     >     >
>     >     > Is there something that I am missing?
>     >     >
>     >     >
>     >     > On Wed, Mar 12, 2014 at 8:28 AM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>
>     <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>> wrote:
>     >     >
>     >     >     On 2014-03-12 09:15, Rick Bianchi wrote:
>     >     >     >
>     >     >     > I have the gumstix-console-image with the added packages below. When I compile on the target is take a very long time for it to complete, over 24 hours. I have compiled the same
>     >     >     > code on the same target, but running Linaro image, and it only takes a few minutes. Is there another recipe that I need to add to the build to speed up compiling?
>     >     >
>     >     >     Doubtful.  The reason your build on the target takes so long is merely
>     >     >     one of horsepower - that little ARM processor just doesn't have it, especially
>     >     >     if you are comparing it to a typical desktop environment.
>     >     >
>     >     >     > EXTRA_IMAGE_FEATURES += "dev-pkgs"
>     >     >     > IMAGE_INSTALL_append =" autoconf"
>     >     >     > IMAGE_INSTALL_append =" autofs"
>     >     >     > IMAGE_INSTALL_append =" automake"
>     >     >     > IMAGE_INSTALL_append =" ccache”
>     >     >     > IMAGE_INSTALL_append =" chkconfig"
>     >     >     > IMAGE_INSTALL_append =" dbus-glib"
>     >     >     > IMAGE_INSTALL_append =" gcc"
>     >     >     > IMAGE_INSTALL_append =" glib-2.0"
>     >     >     > IMAGE_INSTALL_append =" glib-networking"
>     >     >     > IMAGE_INSTALL_append =" glibmm"
>     >     >     > IMAGE_INSTALL_append =" packagegroup-core-buildessential"
>     >     >     > IMAGE_INSTALL_append =" pciutils"
>     >     >     > IMAGE_INSTALL_append =" pkgconfig”
>     >     >     > IMAGE_INSTALL_append =" python-scons"
>     >     >     > IMAGE_INSTALL_append =" systemd-compat-units”
>     >     >     > IMAGE_INSTALL_append =" sysfsutils"
>     >     >     > IMAGE_INSTALL_append =" tcp-wrappers"
>     >     >     > IMAGE_INSTALL_append =" usbutils"
>     >     >     > IMAGE_INSTALL_append =" util-macros"
> 
>     --
>     ------------------------------------------------------------
>     Gary Thomas                 |  Consulting for the
>     MLB Associates              |    Embedded world
>     ------------------------------------------------------------
>     --
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
> 
> 
> 
> 

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

