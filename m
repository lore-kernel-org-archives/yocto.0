Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15D3CE01440
	for <yocto@yoctoproject.org>; Thu, 15 Aug 2013 11:39:25 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 15 Aug 2013 11:36:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,886,1367996400"; d="scan'208";a="381526233"
Received: from unknown (HELO [10.255.14.106]) ([10.255.14.106])
	by fmsmga001.fm.intel.com with ESMTP; 15 Aug 2013 11:39:24 -0700
Message-ID: <520D205C.2060105@linux.intel.com>
Date: Thu, 15 Aug 2013 11:39:24 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130514 Thunderbird/17.0.6
MIME-Version: 1.0
To: Leo Schwab <lschwab@sensity.com>
References: <CALb224_XTEf-9eX9d9ERZpHv7RRm_hGM8N8N6d+x-oSswrH-qA@mail.gmail.com>
In-Reply-To: <CALb224_XTEf-9eX9d9ERZpHv7RRm_hGM8N8N6d+x-oSswrH-qA@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: How Does Yocto Fill In UBOOT_MACHINE?
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
X-List-Received-Date: Thu, 15 Aug 2013 18:39:28 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/15/2013 11:15 AM, Leo Schwab wrote:
> Two months ago I never heard of Yocto -- now I are one.  I'm
> attempting to create a layer and pile of recipes that will allow us to
> adapt Freescale's i.MX support to our custom board.  Right now we're
> starting out with one of their evaluation boards, but will eventually
> transition to our own.  In anticipation of arriving hardware, I
> created a new config for u-boot by copying an existing config and
> renaming it.  The new config builds properly, but I don't know why.
> Grepping through the Yocto sources hasn't been very enlightening, and
> I was hoping I could get some insights into what's going on.
>
> I will try to be as succinct as I can (some of the names have been
> changed to protect the innocent).  We initially started by using the
> Freescale-furnished build targets directly.  I created a new layer
> (we'll call it meta-belis3), and in it created this
> conf/machine/ourboard.conf (apologies in advance for inappropriate
> line wrapping; GMail offers no control over this):
>
> ----
> #@TYPE: Machine
> #@NAME: ourboard
> #@DESCRIPTION: Based on machine configuration for Freescale i.MX6DL SABRE SD
>
> include conf/machine/include/imx-base.inc
> include conf/machine/include/tune-cortexa9.inc
>
> SOC_FAMILY = "mx6:mx6dl"
>
> PREFERRED_PROVIDER_u-boot = "u-boot-imx"
>
> UBOOT_MACHINE = "mx6dl_sabresd_config"
> UBOOT_SUFFIX = "bin"
> UBOOT_PADDING = "2"
>
> SERIAL_CONSOLE = "115200 ttymxc0"
>
> MACHINE_FEATURES += " pci wifi"
> ----
>
> This is basically a copy of Freescale's
> meta-fsl-arm/conf/machine/imx6dlsabresd.conf file, with trivial
> changes.  Inside the build directory's conf/local.conf, I set MACHINE
> to 'ourboard'.  This has worked for several weeks now.
>
> Yesterday, following Freescale's docs, I started making mods to u-boot
> to create a separate build target for our board.  The result is that I
> now have a working u-boot build target named 'mx6_ourboard_config".
> With that done, I created a .bbappend file to make the target
> available (in a file named
> meta-belis3/recipes-bsp/u-boot/u-boot-imx_2009.08.bbappend):
>
> ----
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>
> SRC_URI_append_ourboard = "file://u-boot-ourboard.patch"
>
> UBOOT_MACHINE_ourboard = "mx6_ourboard_config"
> ----
>
> I then ran 'bitbake u-boot', and was rewarded with a u-boot image
> built for 'ourboard' -- the logs confirm it was built using the target
> mx6_ourboard_config.
>
> ...Except I never told it to build 'ourboard'; I haven't modified
> conf/machine/ourboard.conf yet.  It should still be building
> mx6dl_sabresd_config.  So UBOOT_MACHINE is magically picking up a
> different value.  If I remove my .bbappend file, then it resumes using
> the target mx6dl_sabresd_config.
>
But you did indirectly, I have to assume that your default MACHINE is 
set for "ourboard" and what's happened here is when the bbappend was 
added, your setting of UBOOT_MACHINE_ourboard is an override so it built 
using that setting.

> So:  What are the rules governing how UBOOT_MACHINE acquires its final
> value?  What did I neglect to consider?  Is my .bbappend bogus?  Is
> there some magic setting buried somewhere else I need to be aware of?
> Thank you in advance for all suggestions.
>
The magic is the OVERRIDES mechanism in base.bbclass, so the _ourboard 
is a machine override and takes presence over the default setting, in 
this case of the UBOOT_MACHINE.

You can see this in action by running a bitbake -e (prints the variable 
contents and how they were determined).

Sau!

> Schwab
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

