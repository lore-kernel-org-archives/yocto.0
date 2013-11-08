Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E124E01828
	for <yocto@yoctoproject.org>; Thu,  7 Nov 2013 20:34:08 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id rA84XeFj000785
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 7 Nov 2013 20:33:40 -0800 (PST)
Received: from server.local (147.11.118.133) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.2.347.0;
	Thu, 7 Nov 2013 20:33:40 -0800
Message-ID: <527C69A7.1020002@windriver.com>
Date: Thu, 7 Nov 2013 23:33:43 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: John Whitmore <arigead@gmail.com>
References: <20131106214039.GA16472@griso.site> <527AFEA2.40204@windriver.com>
	<20131108010411.GB29643@griso.site>
In-Reply-To: <20131108010411.GB29643@griso.site>
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
X-List-Received-Date: Fri, 08 Nov 2013 04:34:09 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 11/7/2013, 8:04 PM, John Whitmore wrote:
> On Wed, Nov 06, 2013 at 09:44:50PM -0500, Bruce Ashfield wrote:
>> On 11/6/2013, 4:40 PM, John Whitmore wrote:
>>> Was struggling with the documentation on making chages to the config file used
>>> by the raspberrypi linux kernel. I'd got my own layer with a two line append file:
>>>
>>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}"
>>> KERNEL_DEFCONFIG = "defconfig"
>>>
>>> I'd got my defconfig config file into the directory structure under my layer.
>>>
>>> .
>>> ├── conf
>>> │   └── layer.conf
>>> └── recipes-kernel
>>>      └── linux
>>>          ├── linux-raspberrypi
>>>          │   └── defconfig
>>>          └── linux-raspberrypi_3.6.11.bbappend.jfw
>>>
>>>
>>> So all looked good to me thankfully "<kergoth>" on the #yocto IRC Channel
>>> pointed me to bitbake -e linux-raspberrypi and I was able to check stuff
>>> out. Took me a while but I eventually found the problem.
>>>
>>> The origional recipe "linux-raspberrypi_3.6.11.bb" contains the lines:
>>>
>>> do_configure_prepend() {
>>> 	install -m 0644 ${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} ${WORKDIR}/defconfig || die "No default configuration for ${MACHINE} / ${KERNEL_DEFCONFIG} available."
>>> }
>>>
>>> So even though my append is changing the FILESEXTRAPATHS and KERNEL_DEFCONFIG
>>> values it makes no difference at all. Well luckily I did manage to change the
>>> name of KERNEL_DEFCONFIG so when the above "install" command was executed it
>>> produced errors all over the place. If that hadn't happened I'd have got a
>>> kernel with none of my changes and there'd have been naughty words.
>>>
>>> So given that the text book approach to making changes to the kernel, outlined
>>> in section "2.2.1. Creating the Append File" of the Linux Kernel Development
>>> Manual has been subverted. How do I change the kernel config?
>>>
>>> Can I do my own do_configure_prepend() in my bbappend to prepend the recipe's do_configure_prepend()
>>> and get my config file into the place it's going to install from? That sounds
>>> really messy to me but I'm new.
>>>
>>> That seems the only alternative short of re-writing the linux-raspberrypi
>>> recipe which doesn't sound too good either.
>>>
>>> If somebody could point me in the right direction on how to make changes to
>>> the kernel in this case I'd be very grateful.
>>
>> Why not use use the defconfig in the SRC_URI ?
>>
>> The variable and rules you are trying to work with are specific to the
>> raspberrypi, so you aren't likely to find much help in the typical
>> documentation places (outside of understanding ordering, how variables
>> are assigned, etc).
>>
>> If you check out some of the other kernel recipes in the various layers,
>> you'll see use of:
>>
>>    file://defconfig
>>
>> And the defconfig in the layer, in the typical location ${PN}/defconfig.
>> The fetcher takes care of propagating that file to ${WORKDIR} (just like
>> you are seeing with the raspberry pi recipe) and then the kernel.bbclass's
>> configure will take the defconfig and copy it to .config (if one hasn't
>> already been generated).
>>
>> But chances are you are simply seeing both layer precedence and SRC_URI
>> evaluation order issues that is preventing your defconfig from being
>> picked up
>> that would be the same regardless of the recipe.
>>
>> I could also suggest using some of the linux-yocto features like the
>> configuration fragments, but they are applied after defconfig processing
>> (if a defconfig is supplied at all), so that's a secondary avenue, control
>> the defconfig order first .. and then worry about something like this.
>>
>> Cheers,
>>
>> Bruce
>
> Thanks for that. I'm new to this so still getting to grips with the varibales
> which control the build system. I decided I'd forget about my append file for
> the moment and see if I could ammed the linux-raspberrypi recipe to use a more
> typical defconfig rather then hard wiring it into:
>
> do_configure_prepend() {
> 	install -m 0644 ${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} ${WORKDIR}/defconfig || die "No default configuration for ${MACHINE} / ${KERNEL_DEFCONFIG} available."
> }
>
> If I can get the base recipe using the proper variable then I can appent
> it. Well that would be the hope. First off I tried to mimic what the above do_configure_prepend() is doing by
> setting the KERNEL_DEFCONFIG to that location where it's installing from:
>
> KERNEL_DEFCONFIG = "${S}/arch/arm/configs/bcmrpi_defconfig"
>
> I did comment out the above do_configure_prepend() That strikes me as hard wiring.
>
> That gives me an error when building the kernel:
>
> build/tmp/work/raspberrypi-poky-linux-gnueabi/linux-raspberrypi/3.6.11+git63b69a8806ce1890711ff55280c90673ea415933-r7/defconfig: No such file or directory
>

The command that you are modifying is attempting to yank a defconfig out
of the kernel source dir and put it in workdir. presumably to allow the
standard kernel.bbclass processing to pick it up.

If your defconfig isn't in the kernel tree you are building (is it?) or
patched into the kernel tree, the command is going to error like you
have above.

> So I'm not sure what KERNEL_DEFCONFIG does but it seems to be ignored. Bitbake
> -e tells me:
>
> # $KERNEL_DEFCONFIG
> #   set /home/john/raspberrypi/poky/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb:17
> #     "${S}/arch/arm/configs/bcmrpi_defconfig"
> KERNEL_DEFCONFIG="/home/john/raspberrypi/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/linux-raspberrypi/3.6.11+git63b69a8806ce1890711ff55280c90673ea415933-r7/git/arch/arm/configs/bcmrpi_defconfig"
>
> So the variable is getting set correctly.
>
>
>
> Bruce mentioned that the more typical method is to store the default
> configuration in ${PN}/defconfig. It makes sense to me that the build should
> do the typical way so that perhaps then I can bbappend it. So pull the config
> into the layer and:
>
> KERNEL_DEFCONFIG="${PN}/defconfig"
>
> Same Erorr:
>
> /home/john/raspberrypi/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/linux-raspberrypi/3.6.11+git63b69a8806ce1890711ff55280c90673ea415933-r7/defconfig: No such file or directory
>

I actually meant to not use the KERNEL_DECONFIG variable at all and just
go straight to the SRC_URI. But that won't work, since the rsp kernel
recipe will overwrite it in its do_configure_prepend()

> I know this is getting old already but obviously something is forcing the
> above line to happen and ignore all KERNEL_DEFCONFIG settings. Further
> searching found yet another do_configure_prepend() in a linux.inc file in the
> raspberrypi layer. This function contained the line:
>
> 	# Keep this the last line
> 	# Remove all modified configs and add the rest to .config
> 	sed -e "${CONF_SED_SCRIPT}" < '${WORKDIR}/defconfig' >> '${S}/.config'
>
> When I commented out this line the kernel built. I'm not sure what that
> kernel's configuration would be as the linux.inc file contains a lot of
> "kernel_configure_variable" directives. Which would suggest that the kernel
> configuraiton of the raspberrypi is cobbled together from a number of differnet places.

Yep. Regardless of what you do in your deconfig, if left in place those
routines will modify the configuration and potentially overwrite
settings that you are changing.

i.e. it is enforcing a policy, which isn't a bad thing, and I can see
the logic in it. Since I don't have the background, suffice it to say
that you might be wanting to do something that isn't envisioned in the
use model. Or maybe it is .. and it is just being overlooked.

I'd try a build myself, but I'm getting git timeouts from 
git.yoctoproject.org
and can only browse via cgit at the moment.

>
> Anyhow even though the kernel did build I'm afraid it did not package up, generating
> yet another error:
>
> DEBUG: Executing python function split_kernel_module_packages
> depmod: ERROR: could not open directory /home/john/raspberrypi/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/linux-raspberrypi/3.6.11+git63b69a8806ce1890711ff55280c90673ea415933-r7/package/lib/modules/3.6.11: No such file or directory
> depmod: FATAL: could not search modules: No such file or directory
>
>
> I'm giving up for now. I'm new to this so I'm not seeing it with expierenced
> eyes but man this is convoluted. It appears that the Raspberrypi kernel
> configuration is the way it is and that's it. There will be no changes.
>

I'll avoid preaching to the choir, but what you are trying to do is
actually what the kernel tools and yocto packaging are supposed to 
provide. You set a baseline configuration and policy, allow it to be
augmented and changed via configuration fragments (or *gasp*
defconfigs), and then audit the results.

Not that the tools and techniques don't have their own problems, but
it's an option to look into.

> Eight hours for a kernel build on the actual raspberrypi would be far
> easier. I'm hoping to connect daughter board to the RPi and write drivers but
> the board might only be good for python work.

Alternatively, you can still use the rsp upstream kernel tree and
patches, and create your own recipe that has a configuration that
meets your needs.

Cheers,

Bruce

>
>>
>>
>>
>>>
>>> Thanks a million for any advice.
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>


