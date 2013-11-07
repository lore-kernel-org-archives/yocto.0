Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BA24E017F4
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2013 18:44:53 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id rA72ipfC023477
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 6 Nov 2013 18:44:51 -0800 (PST)
Received: from server.local (128.224.21.34) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.2.347.0;
	Wed, 6 Nov 2013 18:44:51 -0800
Message-ID: <527AFEA2.40204@windriver.com>
Date: Wed, 6 Nov 2013 21:44:50 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: John Whitmore <arigead@gmail.com>, <yocto@yoctoproject.org>
References: <20131106214039.GA16472@griso.site>
In-Reply-To: <20131106214039.GA16472@griso.site>
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
X-List-Received-Date: Thu, 07 Nov 2013 02:44:53 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 11/6/2013, 4:40 PM, John Whitmore wrote:
> Was struggling with the documentation on making chages to the config file used
> by the raspberrypi linux kernel. I'd got my own layer with a two line append file:
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}"
> KERNEL_DEFCONFIG = "defconfig"
>
> I'd got my defconfig config file into the directory structure under my layer.
>
> .
> ├── conf
> │   └── layer.conf
> └── recipes-kernel
>      └── linux
>          ├── linux-raspberrypi
>          │   └── defconfig
>          └── linux-raspberrypi_3.6.11.bbappend.jfw
>
>
> So all looked good to me thankfully "<kergoth>" on the #yocto IRC Channel
> pointed me to bitbake -e linux-raspberrypi and I was able to check stuff
> out. Took me a while but I eventually found the problem.
>
> The origional recipe "linux-raspberrypi_3.6.11.bb" contains the lines:
>
> do_configure_prepend() {
> 	install -m 0644 ${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} ${WORKDIR}/defconfig || die "No default configuration for ${MACHINE} / ${KERNEL_DEFCONFIG} available."
> }
>
> So even though my append is changing the FILESEXTRAPATHS and KERNEL_DEFCONFIG
> values it makes no difference at all. Well luckily I did manage to change the
> name of KERNEL_DEFCONFIG so when the above "install" command was executed it
> produced errors all over the place. If that hadn't happened I'd have got a
> kernel with none of my changes and there'd have been naughty words.
>
> So given that the text book approach to making changes to the kernel, outlined
> in section "2.2.1. Creating the Append File" of the Linux Kernel Development
> Manual has been subverted. How do I change the kernel config?
>
> Can I do my own do_configure_prepend() in my bbappend to prepend the recipe's do_configure_prepend()
> and get my config file into the place it's going to install from? That sounds
> really messy to me but I'm new.
>
> That seems the only alternative short of re-writing the linux-raspberrypi
> recipe which doesn't sound too good either.
>
> If somebody could point me in the right direction on how to make changes to
> the kernel in this case I'd be very grateful.

Why not use use the defconfig in the SRC_URI ?

The variable and rules you are trying to work with are specific to the
raspberrypi, so you aren't likely to find much help in the typical
documentation places (outside of understanding ordering, how variables
are assigned, etc).

If you check out some of the other kernel recipes in the various layers,
you'll see use of:

   file://defconfig

And the defconfig in the layer, in the typical location ${PN}/defconfig.
The fetcher takes care of propagating that file to ${WORKDIR} (just like
you are seeing with the raspberry pi recipe) and then the kernel.bbclass's
configure will take the defconfig and copy it to .config (if one hasn't
already been generated).

But chances are you are simply seeing both layer precedence and SRC_URI
evaluation order issues that is preventing your defconfig from being 
picked up
that would be the same regardless of the recipe.

I could also suggest using some of the linux-yocto features like the
configuration fragments, but they are applied after defconfig processing
(if a defconfig is supplied at all), so that's a secondary avenue, control
the defconfig order first .. and then worry about something like this.

Cheers,

Bruce



>
> Thanks a million for any advice.
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


