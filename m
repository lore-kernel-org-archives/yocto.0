Return-Path: <arigead@gmail.com>
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C699E0178E
	for <yocto@yoctoproject.org>; Thu,  7 Nov 2013 17:04:59 -0800 (PST)
Received: by mail-wg0-f44.google.com with SMTP id n12so1285271wgh.11
	for <yocto@yoctoproject.org>; Thu, 07 Nov 2013 17:04:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=ce/IdMYEoK6Pr+CYfXzDBdAB8K7FvRP3EpIaYyfhSm8=;
	b=ljEq9aJKGHyXuY7UqxsmPVPmFYOitEyp92RKjglv+cr9aYXl4JXGrmhqnQtN8Gf73j
	HrbVB+ovh0tDVQIyzVzi+JI/FPtsr/P71xgoAUxIR3jaV25vgejJdqVidSJ/aCPl6wgu
	u7RTVM+J5Eun+ElMy0NSPBtgEqJYNW8AM1R7VVXDje+hnnfjVXwXas9AWFZ4vrZF9hGQ
	kzJs8071PeUMYsppMfIYHKK63KYLS7OjNNBaKDq1k0VUyusZ1PTPsUxqcV/YoRK/1Zv7
	t8b6koe/VAXNLGNQaPhu08wg2xGqm1vRMeSCsCKGtJUd29IxvwLF4JbgmTGtqQouBpz5
	1KaA==
X-Received: by 10.194.240.197 with SMTP id wc5mr10112065wjc.23.1383872697879; 
	Thu, 07 Nov 2013 17:04:57 -0800 (PST)
Received: from griso.site ([109.79.145.97])
	by mx.google.com with ESMTPSA id mw9sm1680541wib.0.2013.11.07.17.04.56
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 07 Nov 2013 17:04:57 -0800 (PST)
Date: Fri, 8 Nov 2013 01:04:15 +0000
From: John Whitmore <arigead@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <20131108010411.GB29643@griso.site>
References: <20131106214039.GA16472@griso.site> <527AFEA2.40204@windriver.com>
MIME-Version: 1.0
In-Reply-To: <527AFEA2.40204@windriver.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: Changing Config for linux-raspberrypi
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
X-List-Received-Date: Fri, 08 Nov 2013 01:05:00 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Wed, Nov 06, 2013 at 09:44:50PM -0500, Bruce Ashfield wrote:
> On 11/6/2013, 4:40 PM, John Whitmore wrote:
> >Was struggling with the documentation on making chages to the config file used
> >by the raspberrypi linux kernel. I'd got my own layer with a two line append file:
> >
> >FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}"
> >KERNEL_DEFCONFIG = "defconfig"
> >
> >I'd got my defconfig config file into the directory structure under my layer.
> >
> >.
> >├── conf
> >│   └── layer.conf
> >└── recipes-kernel
> >     └── linux
> >         ├── linux-raspberrypi
> >         │   └── defconfig
> >         └── linux-raspberrypi_3.6.11.bbappend.jfw
> >
> >
> >So all looked good to me thankfully "<kergoth>" on the #yocto IRC Channel
> >pointed me to bitbake -e linux-raspberrypi and I was able to check stuff
> >out. Took me a while but I eventually found the problem.
> >
> >The origional recipe "linux-raspberrypi_3.6.11.bb" contains the lines:
> >
> >do_configure_prepend() {
> >	install -m 0644 ${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} ${WORKDIR}/defconfig || die "No default configuration for ${MACHINE} / ${KERNEL_DEFCONFIG} available."
> >}
> >
> >So even though my append is changing the FILESEXTRAPATHS and KERNEL_DEFCONFIG
> >values it makes no difference at all. Well luckily I did manage to change the
> >name of KERNEL_DEFCONFIG so when the above "install" command was executed it
> >produced errors all over the place. If that hadn't happened I'd have got a
> >kernel with none of my changes and there'd have been naughty words.
> >
> >So given that the text book approach to making changes to the kernel, outlined
> >in section "2.2.1. Creating the Append File" of the Linux Kernel Development
> >Manual has been subverted. How do I change the kernel config?
> >
> >Can I do my own do_configure_prepend() in my bbappend to prepend the recipe's do_configure_prepend()
> >and get my config file into the place it's going to install from? That sounds
> >really messy to me but I'm new.
> >
> >That seems the only alternative short of re-writing the linux-raspberrypi
> >recipe which doesn't sound too good either.
> >
> >If somebody could point me in the right direction on how to make changes to
> >the kernel in this case I'd be very grateful.
> 
> Why not use use the defconfig in the SRC_URI ?
> 
> The variable and rules you are trying to work with are specific to the
> raspberrypi, so you aren't likely to find much help in the typical
> documentation places (outside of understanding ordering, how variables
> are assigned, etc).
> 
> If you check out some of the other kernel recipes in the various layers,
> you'll see use of:
> 
>   file://defconfig
> 
> And the defconfig in the layer, in the typical location ${PN}/defconfig.
> The fetcher takes care of propagating that file to ${WORKDIR} (just like
> you are seeing with the raspberry pi recipe) and then the kernel.bbclass's
> configure will take the defconfig and copy it to .config (if one hasn't
> already been generated).
> 
> But chances are you are simply seeing both layer precedence and SRC_URI
> evaluation order issues that is preventing your defconfig from being
> picked up
> that would be the same regardless of the recipe.
> 
> I could also suggest using some of the linux-yocto features like the
> configuration fragments, but they are applied after defconfig processing
> (if a defconfig is supplied at all), so that's a secondary avenue, control
> the defconfig order first .. and then worry about something like this.
> 
> Cheers,
> 
> Bruce

Thanks for that. I'm new to this so still getting to grips with the varibales
which control the build system. I decided I'd forget about my append file for
the moment and see if I could ammed the linux-raspberrypi recipe to use a more
typical defconfig rather then hard wiring it into:

do_configure_prepend() {
	install -m 0644 ${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} ${WORKDIR}/defconfig || die "No default configuration for ${MACHINE} / ${KERNEL_DEFCONFIG} available."
}

If I can get the base recipe using the proper variable then I can appent
it. Well that would be the hope. First off I tried to mimic what the above do_configure_prepend() is doing by
setting the KERNEL_DEFCONFIG to that location where it's installing from:

KERNEL_DEFCONFIG = "${S}/arch/arm/configs/bcmrpi_defconfig"

I did comment out the above do_configure_prepend() That strikes me as hard wiring.

That gives me an error when building the kernel:

build/tmp/work/raspberrypi-poky-linux-gnueabi/linux-raspberrypi/3.6.11+git63b69a8806ce1890711ff55280c90673ea415933-r7/defconfig: No such file or directory

So I'm not sure what KERNEL_DEFCONFIG does but it seems to be ignored. Bitbake
-e tells me:

# $KERNEL_DEFCONFIG
#   set /home/john/raspberrypi/poky/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb:17
#     "${S}/arch/arm/configs/bcmrpi_defconfig"
KERNEL_DEFCONFIG="/home/john/raspberrypi/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/linux-raspberrypi/3.6.11+git63b69a8806ce1890711ff55280c90673ea415933-r7/git/arch/arm/configs/bcmrpi_defconfig"

So the variable is getting set correctly.



Bruce mentioned that the more typical method is to store the default
configuration in ${PN}/defconfig. It makes sense to me that the build should
do the typical way so that perhaps then I can bbappend it. So pull the config
into the layer and:

KERNEL_DEFCONFIG="${PN}/defconfig"

Same Erorr:

/home/john/raspberrypi/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/linux-raspberrypi/3.6.11+git63b69a8806ce1890711ff55280c90673ea415933-r7/defconfig: No such file or directory

I know this is getting old already but obviously something is forcing the
above line to happen and ignore all KERNEL_DEFCONFIG settings. Further
searching found yet another do_configure_prepend() in a linux.inc file in the
raspberrypi layer. This function contained the line:

	# Keep this the last line
	# Remove all modified configs and add the rest to .config
	sed -e "${CONF_SED_SCRIPT}" < '${WORKDIR}/defconfig' >> '${S}/.config'

When I commented out this line the kernel built. I'm not sure what that
kernel's configuration would be as the linux.inc file contains a lot of
"kernel_configure_variable" directives. Which would suggest that the kernel
configuraiton of the raspberrypi is cobbled together from a number of differnet places.

Anyhow even though the kernel did build I'm afraid it did not package up, generating
yet another error:

DEBUG: Executing python function split_kernel_module_packages
depmod: ERROR: could not open directory /home/john/raspberrypi/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/linux-raspberrypi/3.6.11+git63b69a8806ce1890711ff55280c90673ea415933-r7/package/lib/modules/3.6.11: No such file or directory
depmod: FATAL: could not search modules: No such file or directory


I'm giving up for now. I'm new to this so I'm not seeing it with expierenced
eyes but man this is convoluted. It appears that the Raspberrypi kernel
configuration is the way it is and that's it. There will be no changes.

Eight hours for a kernel build on the actual raspberrypi would be far
easier. I'm hoping to connect daughter board to the RPi and write drivers but
the board might only be good for python work.

> 
> 
> 
> >
> >Thanks a million for any advice.
> >
> >_______________________________________________
> >yocto mailing list
> >yocto@yoctoproject.org
> >https://lists.yoctoproject.org/listinfo/yocto
> >
> 

