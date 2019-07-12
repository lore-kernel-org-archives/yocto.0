Return-Path: <moritz.porst@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0FE1E00D53; Fri, 12 Jul 2019 07:37:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [212.227.17.22 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (moritz.porst[at]gmx.de)
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34CE3E00CD2
	for <yocto@yoctoproject.org>; Fri, 12 Jul 2019 07:37:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1562942246;
	bh=laWukJv6YCpKSj9oGucbWVGpgoCs7hbnifBnWyvXLvU=;
	h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
	b=d/V52XBjZoNanWNL1DdxFZYEaoenVdD6NASMtM2TkgkDeJYLQQvVJYLTuHQ0TQjxK
	IcT4Ix9I4Q0o3fHnPBFZ8jhhj0MF40BKJ+hoZ0a+2nJ3NWAcAuEbyx9PfYDueKgymV
	ewsR73n0pIQFm9uy03CzUWFwbOZUOeWravSVgvLc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [141.99.128.172] ([141.99.128.172]) by mail.gmx.com (mrgmx101
	[212.227.17.168]) with ESMTPSA (Nemesis) id 0MNdxu-1hofRE1HBq-007HXX;
	Fri, 12 Jul 2019 16:37:26 +0200
To: JH <jupiter.hce@gmail.com>
References: <89d3d916-1fca-5ff5-e68e-79370dd0bfb7@gmx.de>
	<CAGAf8Lz2t90EjsaXPXxsSoioHb33u7dutnREiFr53NYp-WVD5A@mail.gmail.com>
	<34ae2007-e315-4b5a-c388-9c8adab28cbd@gmx.de>
	<CAGAf8Ly7JjRxj0aduWbB26jsuKqFVLDLVr=qgKPQMxcUhWiadg@mail.gmail.com>
	<66af0e83-056c-ee5a-7bcd-863c14da72de@gmx.de>
	<CAGAf8LxHRZ8+UcSWjE4tNfnkGEGnQGAjWjmL3svMqVUUvd60gg@mail.gmail.com>
	<29974dbb-39f5-cf15-7c64-4b707ce0d157@gmx.de>
	<CAGAf8Ly+e5WCacexoLK9fMxnUK_p9oE_Stsuw98o2Nk_O0O78Q@mail.gmail.com>
	<bc2d0dac-da76-9e29-cbb0-d597e264ad53@gmx.de>
	<9228f0cd-69ce-e99f-9b1c-271a39e74a45@gmx.de>
	<CAA=hcWQ1pAwNi=aSmLjiig+Rti_=rjr14W6G-ZE7W_NTdENbgA@mail.gmail.com>
	<CAA=hcWTRAtkC_5SmHArwtQqDnc_tG4Q9JD6O4rokd_dS_A+ofA@mail.gmail.com>
	<6c83cc85-0817-64f8-5472-51e4b484be65@gmx.de>
	<CAA=hcWQtiyFd4ezM+bTKRFN-vzF8kL0DPiqFRbAi_4MeHJnRLQ@mail.gmail.com>
From: Moritz Porst <moritz.porst@gmx.de>
Message-ID: <de0b47f2-772e-886a-a2ca-68ece24551ff@gmx.de>
Date: Fri, 12 Jul 2019 16:37:28 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAA=hcWQtiyFd4ezM+bTKRFN-vzF8kL0DPiqFRbAi_4MeHJnRLQ@mail.gmail.com>
X-Provags-ID: V03:K1:DmQAfeckJHAj8MbgFQinUsnjNnAn/tmuvpteK87NQZ2AxkFFyyu
	SZsiHKw269XZOTh2OReHn0vnNmVsmWasNChoV6R2PLJBrWpEqCYzSyc+m/zuoXnK8DVPEwa
	JWho9d4Gwb68B63RLS7qjoHDZYNYDW/pfxySFzsepRlSlGoUnAl+jPrT5WWsQJGhaddrBAp
	zePxmizanNCI0pFugGULQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:8qldnHuY3Bk=:ONudxliTlIlNiBP/QEYLBv
	MRj2MK0zdql+Re7L2gMMn5wB8Y0hc3s51OLGhBaDRVsKp9ByVjrZbE6G6iVaMqmaSN3uXb8a1
	i9IsUuZjy9xplTGw+64BQIGKbdTq35O9zCk0Nz6JSN5vqKtrOACLr1HkXnLEmSWonCVJ5uDmI
	ks+l+xc+rl9Eh3DOFA6VYFLsjra7mHtwoWpXEqe3PvvVGn9QCmMvWuEbWjEIBzGHUN0h32Lks
	Qn0WCGELrXzGxGe7vxf7RhwpJAe/WDzH7BRWhBFWPQudTcSG9tuiwgf5awI40pdz0VdtPlTeV
	ueXGriPlPep0bM3MaJtvZQRp6BHHrQ9Vb3H1Z/tuPBG48lzSicsDOTFm6gfDozf8F/UZoRh1h
	2Ex+AoyG7okcEhMrI8vVu408dPaTcdQoyIGyUTBoJh+2YN35eD4P43LNjbLE0wG0j/lBSYBo1
	2y6c1QwBhH1o4SvzV7hYHzoHaaiXTWmxuSOZ8wftuOeFO6eVjTdkBN0yGtq3Ruwmx7r+5WRrW
	cdkhQMI33cCWhVPsYwyJkkncMvycDvcOmMZpSESrxsdKdxOZg6qC03YQ7pNyPTHwJeaq8m/hw
	GYLtyUtnDeRTQAdjWwQthNDf82pBfrerAavqeljQzYj9qHFIeSqMThVqaZOXHkVjWTtNSGGPA
	5hxywCcMgh8Rn9c9q/zzmqlFwjxdxNDHrZ0nBYILIqrMju5zZvOsCiYtbWLTwAUkS0nmifIP2
	DT4GYz0x08f1ahokgn9M0y0K6adockyK4E7l0xBEMmapWdvCR61lqliTJmzjOCJER6yCNuCBW
	9a1gVtoUhRgNey0x2P+DgYmJGvKOwbWA5ugUCp2rsOwVXXD31puZHG0WX9QVgakVanu2WCF+I
	HiBw6F4MsXgp2CBopy5DPG0lPNICI2wzzgHyXqZQuZyzygtHLXQrj1kJacv1syMrVWOcYnTqG
	+1/Topvmn+aHG3pGF+dvFpZSu73rHoYhQVYiFlo3dcptqoZUJcqREu1X3tze4vYEkaRoKstBq
	YAVr2hKO77jE/TvnF+tmbsAtnIer3qdR2xiGpVPpLI8cc9pf2xo78j6L/4mHW9it1MuvAi8gB
	UT3WwaG7jNZ5cEUQgVT74soqncL06L+ElJh
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Can't boot to initramfs
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
X-List-Received-Date: Fri, 12 Jul 2019 14:37:31 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hey Jupiter,
you seem to confuse a few concepts, at least as far as I understand

Am 12.07.2019 um 14:53 schrieb JH:
> Hi Moritz,
>
> On 7/12/19, Moritz Porst <moritz.porst@gmx.de> wrote:
>> Hey
>>
>> On 12.07.19 10:05, JH wrote:
>>>> BOOT_IMAGE=3D/bzImage root=3DPARTUUID=3D71d1d94a-83e8-4895-98eb-35309=
f58119f
>>> break=3Dpremount quiet rootwait rootwait rootfstype=3Dext4
>>> console=3DttyS0,115200 console=3Dtty0
>>>
>>> Which file did you add kernel boot command for bootargs, bootcmd, etc?
>>>
>>> I use meta-freescale, but I could not find BOOT_IMAGE is defined.
>> Ways I know to add boot arguments:
>> If you use .wic image via --append in the .wks file
> Right, I use .wic image.
>
>> Otherwise in your machine config via the variable "APPEND", e.g. APPEND
>> +=3D "quiet shell"
> OK, I added APPEND +=3D "quiet shell" to my machine config file solar.co=
nf.
First of all this was only an example. If you don't need these arguments
don't add them. However you can check on boot if the arguments "quiet
shell" were actually appended to your kernel arguments.
If I use the .wic image, APPEND is ignored. You need to write your own
kickstart file for this and include --append option. This usually means
copy what you need from existing files (check license compliance)=C2=A0 an=
d
add what you need. See the yocto manual on kickstart files:
https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#ref-=
kickstart
>
>> the "BOOT_IMAGE" is not a yocto variable, it is the bootloader syntax.
>> Thus this depends on which bootloader you use, but yocto abstracts this=
.
>> However for all bootloaders I know before boot you can hit "e" to edit
>> the boot line manually.
> I use u-boot, I am currently running zImage-initramfs built from
> OpenWrt defined kernel boot arguement bootargs, bootcmd, console, etc.
> Although I can edit the u-boot kernel arguments during bootload
> running on imx6 ram, I really want to configure those arguments in
> Yocto to build a Yoctor zImage-initramfs.
Wait, this makes no sense to me. I take my
core-image-minimal-<machine>.wic and deploy it on my machine. On boot,
having the correct (bundled) kernel in /boot directory, I then boot
through initramfs into rootfs or - using "shell" or "shell-debug" kernel
parameter - boot into initramfs.
However these are the parameters to the kernel ON BOOT, not to build.
The way you talk it seems that you expect these arguments to build you
an initramfs inside yocto. This is not the case.
>
> I guess there must be some ways to configure it for zImage-initramfs,
> but the meta-freescale/wic/imx-uboot-bootpart.wks and other wks files
> are all used for creating SD card image which I guess that cannot be
> used to build an initramfs image for running on RAM, but correct me I
> could be wrong.
The .wks file defines how the .wic image is partitioned on the disk.
Your initramfs is your "initial ram filesystem", it is not partitioned
since it gets loaded entirely into ram.
>
> Here are kernel arguments when I run zImage-initramfs on imx6 ram:
> ....
> printenv
> baudrate=3D115200
> board_name=3DULZ-EVK
> board_rev=3D14X14
> bootargs=3Dconsole=3Dttymxc0,115200 earlycon init=3D/init ......
>
>>>> But I still have troubles to add INITRAMFS_IMAGE =3D
>>>> "core-image-minimal-initramfs" or to run core-image-minimal-initramfs=
,
>>>> both had errors:
>>>>
>>>> $ MACHINE=3D"solar" DISTRO=3D"solar" bitbake core-image-minimal-initr=
amfs
>>>>
>>>> ERROR: Nothing PROVIDES 'core-image-minimal-initramfs'
>>>> core-image-minimal-initramfs was skipped: incompatible with host
>>>> arm-oe-linux-gnueabi (not in COMPATIBLE_HOST)
>> in meta/recipes-core/images/core-image-minimal-initramfs.bb there is th=
e
>> following line:
>> COMPATIBLE_HOST =3D "(i.86|x86_64).*-linux"
>> You could try to overwrite it in your .bbappend to the value "*-linux"
>> but I guess there is a reason for this line.
> Is the following core-image-minimal-initramfs.bbappend correct? I
> still got errors to build core-image-minimal-initramfs, I must
> misplace things here:
>
> $ cat core-image-minimal-initramfs.bbappend
> PACKAGE_INSTALL +=3D "\
> busybox \
> base-files \
> base-passwd \
> bash \
> util-linux-lsblk \
> vim \
> "
Note: bash, util-linux-lsblk and vim are just my preferences, you can
remove them.
>
> COMPATIBLE_HOST =3D "(arm|arm-oe-linux-gnueabi).*-linux"
>
> $ MACHINE=3D"solar" DISTRO=3D"solar" bitbake core-image-minimal-initramf=
s
> ERROR: Nothing RPROVIDES 'initramfs-module-install'
> initramfs-module-install was skipped: incompatible with host
> arm-oe-linux-gnueabi (not in COMPATIBLE_HOST)
This is what I was saying. There seems to be a reason that arm
architectures were not chosen as compatible with initramfs. You can
pursue this problem further however (check what's initramfs-module-install=
)
You may also look into Raspberry Pi yocto project. The community is
larger and I doubt they have no functioning initramfs.
However at this point I can't give you any better advice.

Best regards and good luck
Moritz

>
> Thank you very much.
>
> - jupiter
>
>>>> $ MACHINE=3D"solar" DISTRO=3D"solar" bitbake solar-image
>>>>
>>>> ERROR: Nothing PROVIDES 'core-image-minimal-initramfs'
>>>> core-image-minimal-initramfs was skipped: incompatible with host
>>>> arm-oe-linux-gnueabi (not in COMPATIBLE_HOST)
>>>> ERROR: Required build target 'solar-image' has no buildable providers=
.
>>>> Missing or unbuildable dependency chain was: ['solar-image',
>>>> 'virtual/kernel', 'core-image-minimal-initramfs']
>>>>
>>>> Sorry, still learning Yocto, what I could be missing?
>>>>
>>>>> BOOT_IMAGE=3D/bzImage root=3DPARTUUID=3D71d1d94a-83e8-4895-98eb-3530=
9f58119f
>>>> break=3Dpremount quiet rootwait rootwait rootfstype=3Dext4
>>>> console=3DttyS0,115200 console=3Dtty0
>>>>
>>>> Which did you add kernel boot command for bootargs, bootcmd, etc as
>>>> above? I could not find BOOT_IMAGE (I use meta-freescale)
>>>>
>>>> Thank you very much.
>>>>
>>>> - jupiter
>>>>
>>>> On 7/12/19, Moritz Porst <moritz.porst@gmx.de> wrote:
>>>>> Forgot to CC Jupiter and the most important thing:
>>>>>
>>>>> PACKAGE_INSTALL +=3D "initramfs-module-debug"   (To my understanding=
 this
>>>>> enables the rescue shell)
>>>>>
>>>>> On 12.07.19 08:22, Moritz Porst wrote:
>>>>>> Hey,
>>>>>>
>>>>>> The only thing I can add to what I already said is my
>>>>>> "core-image-minimal-initramfs.bbappend":
>>>>>> PACKAGE_INSTALL +=3D "\
>>>>>>                           busybox \
>>>>> printenv
> baudrate=3D115200
> board_name=3DULZ-EVK
> board_rev=3D14X14>                          base-files \
>>>>>>                           base-passwd \
>>>>>>                           bash \
>>>>>>                           util-linux-lsblk \
>>>>>>                           vim \
>>>>>>                           "
>>>>>> Jupiter, are you able to produce your zImage-initramfs now ? If not
>>>>>> further do the following:
>>>>>>
>>>>>> bitbake <your-image> -e > tempfile
>>>>>> [wait until done, then search]
>>>>>> grep <appropriate search word> tempfile
>>>>>>
>>>>>> where <appropriate search word> may be e.g.: zImage, zImage-initram=
fs,
>>>>>> INITRAMFS_IMAGE, INITRAMFS_IMAGE_BUNDLE
>>>>>> Especially check that all variables you set are not overwritten
>>>>>> somewhere else
>>>>>>
>>>>>> Best regards
>>>>>> Moritz
>>>>>>
>>>>>> On 12.07.19 06:36, Zoran Stojsavljevic wrote:
>>>>>>> Moritz,
>>>>>>>
>>>>>>> Thank you very much for this reply. It makes it very clear... What=
 is
>>>>>>> the current State of Affairs for the topic.
>>>>>>>
>>>>>>> Let us see if there will be the improvement to this topic. I'll
>>>>>>> document this on one of my private GitHubs. And archive this email=
.
>>>>>>>
>>>>>>> Zoran
>>>>>>> _______
>>>>>>>
>>>>>>> On Thu, Jul 11, 2019 at 12:39 PM Moritz Porst <moritz.porst@gmx.de=
>
>>>>>>> wrote:
>>>>>>>> Hello Zoran, Jupiter and list
>>>>>>>>
>>>>>>>> The configuration you sent seems to be correct.
>>>>>>>>
>>>>>>>> As I already said initramfs seems overly complicated in yocto. th=
e
>>>>>>>> most
>>>>>>>> important thing to note is that 2 kernel images are created, one =
is
>>>>>>>> called bzImage (in my case) an the other bzImage-initramfs. Howev=
er
>>>>>>>> only
>>>>>>>> the bzImage is written into the rootfs so you have to exchange th=
em
>>>>>>>> manually. (in /boot/bzImage). I did not find a way of including t=
he
>>>>>>>> bundled kernel right away.
>>>>>>>>
>>>>>>>> What you can do is to build core-image-minimal-initramfs and dele=
te
>>>>>>>> the
>>>>>>>> symbolic link "bzImage", then recreate it and let it point to
>>>>>>>> bzImage-initramfs. However this is rather a hack than a solution.
>>>>>>>>
>>>>>>>> An other mistake I made was to use IMAGE_INSTALL_append which is
>>>>>>>> ignored. Use PACKAGE_INSTALL_append.
>>>>>>>>
>>>>>>>> Also I found that "break" does not work as a kernel parameter. Us=
e
>>>>>>>> "shell" oder "debug-shell" instead. If you want to try to boot in=
to
>>>>>>>> initramfs you can remove all parameters to the booting line so yo=
u
>>>>>>>> either end up in a kernel panic (initramfs doesn't work) or in th=
e
>>>>>>>> rescue shell (initramfs works).
>>>>>>>>
>>>>>>>> In the end I actually managed to get a working shell, but I often
>>>>>>>> ended
>>>>>>>> up in initramfs telling me "dropping to shell..." but then freezi=
ng.
>>>>>>>>
>>>>>>>> I don't have access to my files right now but I can tell you more=
 on
>>>>>>>> my
>>>>>>>> setup tomorrow. In case the solution is not included above.
>>>>>>>>
>>>>>>>> Best regards
>>>>>>>> Moritz
>>>>>>>>
>>>>>>>> On 11/07/2019 09:24, Zoran Stojsavljevic wrote:
>>>>>>>>> Hello Moritz,
>>>>>>>>>
>>>>>>>>> I need here some help from you. I'll try to reconstruct the part=
s
>>>>>>>>> of
>>>>>>>>> the local.conf you are using, so I (and Jupiter) can understand
>>>>>>>>> what
>>>>>>>>> should we do to also bundle kernel image with initramfs, to end =
up
>>>>>>>>> in
>>>>>>>>> Dracut/rescue shell.
>>>>>>>>>
>>>>>>>>> Here is what I anticipate after reading several YOCTO @ threads:
>>>>>>>>>
>>>>>>>>> IMAGE_FSTYPES_append =3D " cpio.gz"
>>>>>>>>> INITRAMFS_IMAGE =3D "core-image-minimal-initramfs"
>>>>>>>>> INITRAMFS_IMAGE_BUNDLE =3D "1"
>>>>>>>>> # debug: adds debug boot parameters like 'shell' and 'debug', se=
e
>>>>>>>>> # meta/recipes-core/initrdscripts/initramfs-framework/debug for
>>>>>>>>> details
>>>>>>>>> # Could be removed in more minimal product image
>>>>>>>>> PACKAGE_INSTALL +=3D "initramfs-module-debug"
>>>>>>>>>
>>>>>>>>> Could you, please, review these lines and fix, if something is n=
ot
>>>>>>>>> correct?
>>>>>>>>>
>>>>>>>>> I what I understood, this does the magic, but you could not stop=
 in
>>>>>>>>> initramfs shell? Still, this problem is not solved?
>>>>>>>>>
>>>>>>>>>> I was following this site: https://wiki.debian.org/InitramfsDeb=
ug
>>>>>>>>>> Rescue shell (also known as initramfs shell)
>>>>>>>>>> Read man initramfs-tools to learn about the break=3Dsomething k=
ernel
>>>>>>>>>> parameter (where valid arguments for something are: top, module=
s,
>>>>>>>>>> premount, mount, mountroot, bottom, init), which starts a debug
>>>>>>>>>> shell.
>>>>>>>>>> You can try, for example, break=3Dpremount. You can edit
>>>>>>>>>> /boot/grub/grub.cfg
>>>>>>>>>> to add this to the end of the kernel line, or you can do it
>>>>>>>>>> interactively
>>>>>>>>>> from the grub boot menu: "e" to edit, and "b" to boot once you'=
ve
>>>>>>>>>> edited
>>>>>>>>>> the kernel line.
>>>>>>>>> Now, as my understanding is, you solved this problem actually
>>>>>>>>> adding
>>>>>>>>> to grub.cfg in command kernel line break=3Dpremount, and was abl=
e to
>>>>>>>>> stop in rescue shell?! Am I correct here?
>>>>>>>>>
>>>>>>>>> Thank you,
>>>>>>>>> Zoran
>>>>>>>>> _______
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> On Mon, Jul 1, 2019 at 4:33 PM Moritz Porst <moritz.porst@gmx.de=
>
>>>>>>>>> wrote:
>>>>>>>>>> Hello,
>>>>>>>>>> I think I found the issue. ( see below )
>>>>>>>>>>
>>>>>>>>>> On 01.07.19 15:57, Zoran Stojsavljevic wrote:
>>>>>>>>>>
>>>>>>>>>> Hello Moritz,
>>>>>>>>>>
>>>>>>>>>> Too hot here, in Belgrade... Where I am resting for the Time be=
ing
>>>>>>>>>> (actually, this message given to my invisible spying security
>>>>>>>>>> "angels"
>>>>>>>>>> on this list)...  :-) Projected +38C degrees today. Too hot for
>>>>>>>>>> this
>>>>>>>>>> too old Siberian untouchable bobcat!
>>>>>>>>>>
>>>>>>>>>> Luckily it's a rather cold day in germany, thanks that you stil=
l
>>>>>>>>>> take the time to answer !
>>>>>>>>>>
>>>>>>>>>> I started from the core-image-minimal to have a small image and
>>>>>>>>>> extended it with the features I need, which is e.g. a graphical
>>>>>>>>>> system.
>>>>>>>>>> The console=3D[...] part in the kernel command line is probably=
 a
>>>>>>>>>> remnant but my image boots into the GUI. Is this a problem ?
>>>>>>>>>>
>>>>>>>>>> Nope, it is not. If you need to do it correctly, you should use
>>>>>>>>>> bitbake -k core-image-sato build command (my best educated gues=
s).
>>>>>>>>>> Then, I do not feel comfortable seeing in your kernel command l=
ine
>>>>>>>>>> serial interface, do you agree?
>>>>>>>>>>
>>>>>>>>>> Yes that is true.
>>>>>>>>>>
>>>>>>>>>> YOCTO maintainers, any additional
>>>>>>>>>> advices?
>>>>>>>>>>
>>>>>>>>>> My bootloader is currently grub, the EFI is AM.
>>>>>>>>>>
>>>>>>>>>> Nope. Eeeeeeeeek. Wrong. Currently, your boot-loader is UEFI AM=
I.
>>>>>>>>>> Your
>>>>>>>>>> OS (Linux probably, U name it) boot-loader is GRUB2. Let us kee=
p
>>>>>>>>>> it
>>>>>>>>>> contained, sane and sober.
>>>>>>>>>>
>>>>>>>>>> Sorry but I can't find this info in the EFI.
>>>>>>>>>>
>>>>>>>>>> Could you, please try the following command being root: dmesg |
>>>>>>>>>> grep
>>>>>>>>>> MCU. or grep mcu, or grep CPUID or grep cpuid?? Please, post
>>>>>>>>>> results
>>>>>>>>>> to this list (to me).
>>>>>>>>>>
>>>>>>>>>> No luck unfortunately (used grep -i)
>>>>>>>>>>
>>>>>>>>>> Could you, also, send to YOCTO list/me attached file:
>>>>>>>>>> /boot/microcode.cpio so I can somehow (?) inspect it? ;-)
>>>>>>>>>>
>>>>>>>>>> I send it to you directly, so I don't spam the list with a larg=
e
>>>>>>>>>> attachment.
>>>>>>>>>>
>>>>>>>>>> 2GB, single channel.
>>>>>>>>>>
>>>>>>>>>> All Cool. E3825 by HW/silicon design could/does NOT support
>>>>>>>>>> multiple
>>>>>>>>>> memory channels. ONLY single... But even YOCTO primes (INTEL on=
es
>>>>>>>>>> from
>>>>>>>>>> this list) are not gonna tell this to you. Not 'cause they are
>>>>>>>>>> nasty.
>>>>>>>>>> They are NOT aware/they are ignorant (with the purpose)! ;-))
>>>>>>>>>>
>>>>>>>>>> No, the boot does not stop. Even if I do issue "break=3Dpremoun=
t" I
>>>>>>>>>> end up in my graphical interface with the rootfs mounted. This =
is
>>>>>>>>>> the
>>>>>>>>>> last message in the log: EXT4-fs (sdb2): re-mounted. Opts: (nul=
l)
>>>>>>>>>> The rootfs partition is always 2, so either /dev/sda2 or /dev/s=
db2
>>>>>>>>>> (when booting from stick)
>>>>>>>>>>
>>>>>>>>>> Yes, from https://pastebin.com/ya7iCtq7, so it is remounted rw,
>>>>>>>>>> not
>>>>>>>>>> read only. So, it seems that you have passed dracut phase. and
>>>>>>>>>> mounted
>>>>>>>>>> SD or flash rootfs. So, initramfs is NOT your true problem, is
>>>>>>>>>> it???
>>>>>>>>>>
>>>>>>>>>> The thing is that the boot works but I want an initramfs that c=
an
>>>>>>>>>> be used for updating (in case the rootfs is broken). However I
>>>>>>>>>> need to be able to intercept the boot process there because
>>>>>>>>>> otherwise I can't deploy an update mechanism, that's what I was
>>>>>>>>>> trying.
>>>>>>>>>>
>>>>>>>>>> Zoran
>>>>>>>>>> _______
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> No, the boot does not stop. Even if I do issue "break=3Dpremoun=
t" I
>>>>>>>>>> end up
>>>>>>>>>> in my graphical interface with the rootfs mounted. This is  the
>>>>>>>>>> last message
>>>>>>>>>> in the log: EXT4-fs (sdb2): re-mounted. Opts: (null) The rootfs
>>>>>>>>>> partition is
>>>>>>>>>> always 2, so either /dev/sda2 or /dev/sdb2 (when booting from
>>>>>>>>>> stick)
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> So for the issue...
>>>>>>>>>> I expected yocto to put the bundled bzImage onto my rootfs. Thi=
s
>>>>>>>>>> was not the case. My image directory contains 2x bzImage, one
>>>>>>>>>> bundled and one unbundled. Apparently yocto puts the >un<bundle=
d
>>>>>>>>>> image onto my /boot partition and uses it for boot. So of cours=
e I
>>>>>>>>>> couldn't access initramfs in this case. Now I get to the initra=
mfs
>>>>>>>>>> statement "dropping to shell" if I intentionally boot with wron=
g
>>>>>>>>>> rootfs.
>>>>>>>>>> Still I don't get the interactive shell.
>>>>>>>>>> On the github ostroproject site I found this:
>>>>>>>>>>
>>>>>>>>>> # debug: adds debug boot parameters like 'shell' and 'debug', s=
ee
>>>>>>>>>> # meta/recipes-core/initrdscripts/initramfs-framework/debug for
>>>>>>>>>> details
>>>>>>>>>> # Could be removed in more minimal product image.
>>>>>>>>>> PACKAGE_INSTALL +=3D "initramfs-module-debug"
>>>>>>>>>>
>>>>>>>>>> including the module-debug still does not enable me to get an
>>>>>>>>>> interactive shell.
>>>>>>>>>> I was following this site: https://wiki.debian.org/InitramfsDeb=
ug
>>>>>>>>>> I am aware that yocto is no debian but I expected that kernel
>>>>>>>>>> parameters (like 'break') would be independent of the
>>>>>>>>>> distribution.
>>>>>>>>>>
>>>>>>>>>> Lastly I do not really need the interactive shell, it is enough=
 if
>>>>>>>>>> I can deploy a custom init script in the initramfs. Still I thi=
nk
>>>>>>>>>> that getting an initramfs shell should be as simple as stating =
the
>>>>>>>>>> name of the initramfs image and setting the "INITRAMFS_DO_BUNDL=
E"
>>>>>>>>>> variable.
>>>>>>>>>>
>>>>>>>>>> Best regards
>>>>>>>>>> Moritz
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> On Mon, Jul 1, 2019 at 11:20 AM Moritz Porst <moritz.porst@gmx.=
de>
>>>>>>>>>> wrote:
>>>>>>>>>>
>>>>>>>>>> Hello Zoran,
>>>>>>>>>> thanks for your answer
>>>>>>>>>>
>>>>>>>>>> On 28.06.19 14:26, Zoran Stojsavljevic wrote:
>>>>>>>>>>
>>>>>>>>>> INITRAMFS_IMAGE =3D "core-image-minimal-initramfs"
>>>>>>>>>> INITRAMFS_IMAGE_BUNDLE =3D "1"
>>>>>>>>>>
>>>>>>>>>> ...
>>>>>>>>>>
>>>>>>>>>> You can find the /var/log/dmesg here:
>>>>>>>>>> https://pastebin.com/ya7iCtq7I
>>>>>>>>>>
>>>>>>>>>> Some hints...
>>>>>>>>>>
>>>>>>>>>> [1] Kernel command line: BOOT_IMAGE=3D/bzImage
>>>>>>>>>> root=3DPARTUUID=3D71d1d94a-83e8-4895-98eb-35309f58119f
>>>>>>>>>> break=3Dpremount quiet rootwait rootwait rootfstype=3Dext4
>>>>>>>>>> console=3DttyS0,115200 console=3Dtty0
>>>>>>>>>>
>>>>>>>>>> input: Video Bus as
>>>>>>>>>> /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:00/input/i=
nput7
>>>>>>>>>> fbcon: inteldrmfb (fb0) is primary device
>>>>>>>>>> Console: switching to colour frame buffer device 128x48
>>>>>>>>>> i915 0000:00:02.0: fb0: inteldrmfb frame buffer device
>>>>>>>>>> snd_hda_intel 0000:00:1b.0: bound 0000:00:02.0 (ops
>>>>>>>>>> i915_audio_component_bind_ops [i915])
>>>>>>>>>>
>>>>>>>>>> Hmmmmm... You are using console and serial, but full i915 GFX
>>>>>>>>>> kernel driver is still included in the build???
>>>>>>>>>>
>>>>>>>>>> I started from the core-image-minimal to have a small image and
>>>>>>>>>> extended it with the features I need, which is e.g. a graphical
>>>>>>>>>> system. The console=3D[...] part in the kernel command line is
>>>>>>>>>> probably a remnant but my image boots into the GUI. Is this a
>>>>>>>>>> problem ?
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> [2] efi: EFI v2.31 by American Megatrends
>>>>>>>>>>
>>>>>>>>>> Using AMI BIOS as boot loader FW... OK?! Am I correct?
>>>>>>>>>>
>>>>>>>>>> My bootloader is currently grub, the EFI is AM.
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> [3] smpboot: CPU0: Intel(R) Atom(TM) CPU  E3825  @ 1.33GHz
>>>>>>>>>> (family: 0x6, model: 0x37, stepping: 0x9)
>>>>>>>>>>
>>>>>>>>>> This is CPUID ID 0x30679, which uses MCU... Which MicroCodeUnit=
?
>>>>>>>>>> M0130679xxx (info from AMI BIOS)?
>>>>>>>>>>
>>>>>>>>>> Sorry but I can't find this info in the EFI
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> [4] Using INTEL ATOM BYT E3825 dual core (sans Hyper-threading)=
,
>>>>>>>>>> implies that you are using
>>>>>>>>>> 4GB (e820 messages) as single channel (one memory module DDR3 a=
s
>>>>>>>>>> 4GB)! Am I correct (important)?
>>>>>>>>>>
>>>>>>>>>> 2GB, single channel.
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> [5] Dracut phase?!
>>>>>>>>>>
>>>>>>>>>> To my understanding the initramfs should be embedded in
>>>>>>>>>> /boot/bzImage.
>>>>>>>>>> However since I use an intel platform I also have a
>>>>>>>>>> /boot/microcode.cpio
>>>>>>>>>> which gets loaded via "initrd /microcode.cpio". Removing this l=
ine
>>>>>>>>>> in
>>>>>>>>>> grub does not enable me to get an initramfs prompt either (agai=
n,
>>>>>>>>>> using
>>>>>>>>>> break as option).
>>>>>>>>>>
>>>>>>>>>> You are obviously stopping in boot phase called dracut. Please,
>>>>>>>>>> try to mount by hand
>>>>>>>>>> /dev/sda(whatever)... You should use fdisk -l command, or do ls
>>>>>>>>>> -al /dev | grep sda to
>>>>>>>>>> dig out which partition you need to mount to /tmp dir to see
>>>>>>>>>> rootfstype=3Dext4 (HDD/SSD)
>>>>>>>>>>
>>>>>>>>>> No, the boot does not stop. Even if I do issue "break=3Dpremoun=
t" I
>>>>>>>>>> end up in my graphical interface with the rootfs mounted. This =
is
>>>>>>>>>> the last message in the log:
>>>>>>>>>> EXT4-fs (sdb2): re-mounted. Opts: (null)
>>>>>>>>>> The rootfs partition is always 2, so either /dev/sda2 or /dev/s=
db2
>>>>>>>>>> (when booting from stick)
>>>>>>>>>>
>>>>>>>>>> _______
>>>>>>>>>>
>>>>>>>>>> Just thinking loud... .. .
>>>>>>>>>>
>>>>>>>>>> Hope this helps (has very little to do with YOCTO build system,
>>>>>>>>>> BTW) . ;-)
>>>>>>>>>>
>>>>>>>>>> Zoran
>>>>>>>>>> _______
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> On Fri, Jun 28, 2019 at 11:22 AM Moritz Porst
>>>>>>>>>> <moritz.porst@gmx.de> wrote:
>>>>>>>>>>
>>>>>>>>>> Hello,
>>>>>>>>>> I currently try to deploy a single rootfs update mechanism for =
my
>>>>>>>>>> embedded device. I can't boot to initramfs using either "break"=
 or
>>>>>>>>>> "break=3Dpremount" (without quotes...). I tried this in systemd=
-boot
>>>>>>>>>> and
>>>>>>>>>> grub-efi (always efi boot) but the boot process just continues
>>>>>>>>>> normally.
>>>>>>>>>> If I insert at the same point e.g. "quiet" this argument is
>>>>>>>>>> recognised.
>>>>>>>>>> I boot the .wic image with a separate boot partition from a USB
>>>>>>>>>> stick.
>>>>>>>>>> in local.conf I have set:
>>>>>>>>>> INITRAMFS_IMAGE =3D "core-image-minimal-initramfs"
>>>>>>>>>> INITRAMFS_IMAGE_BUNDLE =3D "1"
>>>>>>>>>>
>>>>>>>>>> In order to reduce complexity I now use the standard
>>>>>>>>>> core-image-minimal-initramfs without .bbappend. I can confirm
>>>>>>>>>> (from
>>>>>>>>>> seeing the task) that bitbake bundled the kernel with the
>>>>>>>>>> initramfs.
>>>>>>>>>>
>>>>>>>>>> You can find the /var/log/dmesg here:
>>>>>>>>>> https://pastebin.com/ya7iCtq7
>>>>>>>>>>
>>>>>>>>>> To my understanding the initramfs should be embedded in
>>>>>>>>>> /boot/bzImage.
>>>>>>>>>> However since I use an intel platform I also have a
>>>>>>>>>> /boot/microcode.cpio
>>>>>>>>>> which gets loaded via "initrd /microcode.cpio". Removing this l=
ine
>>>>>>>>>> in
>>>>>>>>>> grub does not enable me to get an initramfs prompt either (agai=
n,
>>>>>>>>>> using
>>>>>>>>>> break as option).
>>>>>>>>>>
>>>>>>>>>> Did I forget some configuration or do I have to put the break
>>>>>>>>>> statement
>>>>>>>>>> at a very specific position within the "linux ..." boot command=
 ?
>>>>>>>>>> Do you
>>>>>>>>>> know which bitbake variables to check ? (both set in local.conf=
 do
>>>>>>>>>> not
>>>>>>>>>> get overwritten, already checked this). I got the thud branch
>>>>>>>>>> checked
>>>>>>>>>> out in all my meta-layers except for meta-qt which is currently=
 on
>>>>>>>>>> master branch.
>>>>>>>>>>
>>>>>>>>>> Help is much appreciated !
>>>>>>>>>>
>>>>>>>>>> Best regards
>>>>>>>>>> Moritz
>>>>>>>>>>
>>>>>>>>>> --
>>>>>>>>>> _______________________________________________
>>>>>>>>>> yocto mailing list
>>>>>>>>>> yocto@yoctoproject.org
>>>>>>>>>> https://lists.yoctoproject.org/listinfo/yocto

