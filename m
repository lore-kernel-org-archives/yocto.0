Return-Path: <moritz.porst@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 067BDE00D44; Fri, 12 Jul 2019 01:18:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (moritz.porst[at]gmx.de)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [212.227.17.22 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8A5BE00B8D
	for <yocto@yoctoproject.org>; Fri, 12 Jul 2019 01:17:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1562919478;
	bh=Tfg57c1oc2O/alN5SfjJdJiTxLqlqSIY11WNh/fNABM=;
	h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
	b=LrTvLle4OVn9bSZZIFCmj8LLSaEn8wVqgwPf27C+XZiKxD/2i6CBxv523b6cHREob
	XuiNWmtbhHe5wag+XEs3xcEVcnqEcaGvnR3VBgbfxP++wFvapBWOynVvpwDU7jD+Ts
	c8fQUy476Dxbt9lBTXkLTt4rm8oovic88/i1e+n8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.2.132] ([80.152.229.14]) by mail.gmx.com (mrgmx104
	[212.227.17.168]) with ESMTPSA (Nemesis) id 1MXXyJ-1hylis3tRn-00Z0N2;
	Fri, 12 Jul 2019 10:17:58 +0200
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
From: Moritz Porst <moritz.porst@gmx.de>
Message-ID: <6c83cc85-0817-64f8-5472-51e4b484be65@gmx.de>
Date: Fri, 12 Jul 2019 10:17:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAA=hcWTRAtkC_5SmHArwtQqDnc_tG4Q9JD6O4rokd_dS_A+ofA@mail.gmail.com>
X-Provags-ID: V03:K1:KGAZEYE0LrRMTV714W8qVXcRIJ0T42Be6yjt2weKtu6LzwaaiTm
	EXo7ggXStD+Nu5TVaq8YB8W6O6lVi4pZvQAc2ZQVihL6ea6kjZo2HGSvybCT7B+gcaBO2jU
	JYK3+xyuHXbmAymHCj5q+I+K3/M/QJrf91gSBC8GRvLxwkepChOnA7G82xd3BDCxCvgErbA
	Mm7WARQrs0TbtmpMP1pUw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:Y/XqfskV5XQ=:/u8ZRxz1lqDIAcueZNY5+u
	p6ZMRYWJQOrC9UQBTqe/N8LJ6O7wtOJk+kiO4HHhxhccy8Bfj+SaSZBUNq29SOpraUhwpUWoJ
	MUHJMjvUjeaqysglwpE+Mj8hFHwYTaJo4tz/Vz0Zuhosr/rKfqnpbdrm/K8+M5i1LDbvVLb14
	PwH/hikGtKpTY7IeKeu4trzEu898MdgdkZG0pwL2VDGhqW3fnoxF3K1kCXnrhLGQhqyZaA93Y
	wqADWgrkuhVfuOxXec1rGoLfxNyOdYTmPk1qx3I+LttWQB/pzqh0BffixHgY+i4I9nIKQ3+LH
	szbtBJrGFvcfcYH7SsNphjxtBeirLGP1YEicpdvodCcKwhvLbhBmaxi4ij3y71HEEpZ53VSZD
	vbBJJQ0Bh+QzCNyYA7h6THAezFTtCdLNpbOJPYgDKC6LGpyBKs80PBW/Nyaho5xAifN2YxG4f
	jyaLJbvQ2Hulei1XHQjH/NMpXZmDl0Rjs3Oitxqym1atsw49vxB2bdFe8wK3wE6EbN/43Fhkb
	1SAuZ0t8aMYepAtsgIpBGc06+E7lR8Wv+DXm5y+c/T3C5bkeGCHEURfafk7BcV/aPy3g+KnQs
	jqvpzj3erDETIaRvgpJhVgd7uSeAIuH/rDgXQUtmCHZMv87Ff9zh484EKvCdIteKQfemokdSD
	/To0mIrVPHAJlc81iOe2AtY5Roy71BxU9uxueq7v6zQR2NVE207uh3WChL9GIxI/kGXb5belo
	5Q4ldosT1ZsHiJyIXODvWOJ6JxNvyvyHKBJMZMPcjSdibz7t4CxM8MkMxm8YaiHOi4R70KToR
	89kRs6JK6BqICijjb/oY5bL+PvFWwBG/T0dQVz/PEod8KYBNVvacvmrIQJoIqLPEJYT49FRsK
	QYYZa/RZw9WPKSuuYxV5YQU6usvg7jinAv7qPwNdOvekCSZ3JSO1QorpLfCiishjzBepP479Y
	DdQc805rRVVO99lgdRb/yFjL4SLGJk16l/AmXo9buPCGF2Jr80r29juxcWldxu7QTF9cj9DtZ
	0LzGGxYhV/DsewfDAdnx3oqHyXa++IZbcdQUnxWyV3ylb4RG5Jxuoqmj7cGqOTlNBUp/LU/2o
	a8jN29x8NHuSnou6A7yo1SUpcxURCGlURJe11KbbqZfUS62jSDf+FFQC5pHL/YDA+sXuGawOG
	T8ddLRz0SHO0AGiVS2nmWkojUjNyFXL8K74RxpY9sPkPMFM1qJ8xuky/0014EkjZSAAzXR5Ol
	/YVLRrv8eFfh9gIY6
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
X-List-Received-Date: Fri, 12 Jul 2019 08:18:02 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Hey

On 12.07.19 10:05, JH wrote:
>> BOOT_IMAGE=3D/bzImage root=3DPARTUUID=3D71d1d94a-83e8-4895-98eb-35309f5=
8119f
> break=3Dpremount quiet rootwait rootwait rootfstype=3Dext4
> console=3DttyS0,115200 console=3Dtty0
>
> Which file did you add kernel boot command for bootargs, bootcmd, etc?
>
> I use meta-freescale, but I could not find BOOT_IMAGE is defined.
Ways I know to add boot arguments:
If you use .wic image via --append in the .wks file
Otherwise in your machine config via the variable "APPEND", e.g. APPEND
+=3D "quiet shell"
the "BOOT_IMAGE" is not a yocto variable, it is the bootloader syntax.
Thus this depends on which bootloader you use, but yocto abstracts this.
However for all bootloaders I know before boot you can hit "e" to edit
the boot line manually.
>
> Thank you
>
> On 7/12/19, JH <jupiter.hce@gmail.com> wrote:
>> Hi Moritz,
>>
>> I could not find zImage-initramfs:
>>
>> $ grep zImage tempfile
>>
>> ARCH_DEFAULT_KERNELIMAGETYPE=3D"bzImage"
>> KERNEL_IMAGETYPE=3D"bzImage"
>> KERNEL_IMAGETYPES=3D"bzImage"
>> QB_DEFAULT_KERNEL=3D"bzImage"
>>
>> $ grep zImage-initramfs tempfile
>>
>> $ grep INITRAMFS_IMAGE_BUNDLE tempfile
>>
>> # $INITRAMFS_IMAGE_BUNDLE
>> INITRAMFS_IMAGE_BUNDLE=3D"1"
>>
>> $ grep INITRAMFS_FSTYPES tempfile
>> INITRAMFS_FSTYPES=3D"cpio.gz"
>>
>> I added PACKAGE_INSTALL +=3D "initramfs-module-debug" and I added
>> "core-image-minimal-initramfs.bbappend" coppied from yours:
>>
>> $ cat core-image-minimal-initramfs.bbappend
>>
>> PACKAGE_INSTALL +=3D "\
>>                          busybox \
>>                          base-files \
>>                          base-passwd \
>>                          bash \
>>                          util-linux-lsblk \
>>                          vim \
>>                          "
>>
>> But I still have troubles to add INITRAMFS_IMAGE =3D
>> "core-image-minimal-initramfs" or to run core-image-minimal-initramfs,
>> both had errors:
>>
>> $ MACHINE=3D"solar" DISTRO=3D"solar" bitbake core-image-minimal-initram=
fs
>>
>> ERROR: Nothing PROVIDES 'core-image-minimal-initramfs'
>> core-image-minimal-initramfs was skipped: incompatible with host
>> arm-oe-linux-gnueabi (not in COMPATIBLE_HOST)
in meta/recipes-core/images/core-image-minimal-initramfs.bb there is the
following line:
COMPATIBLE_HOST =3D "(i.86|x86_64).*-linux"
You could try to overwrite it in your .bbappend to the value "*-linux"
but I guess there is a reason for this line.
>>
>> $ MACHINE=3D"solar" DISTRO=3D"solar" bitbake solar-image
>>
>> ERROR: Nothing PROVIDES 'core-image-minimal-initramfs'
>> core-image-minimal-initramfs was skipped: incompatible with host
>> arm-oe-linux-gnueabi (not in COMPATIBLE_HOST)
>> ERROR: Required build target 'solar-image' has no buildable providers.
>> Missing or unbuildable dependency chain was: ['solar-image',
>> 'virtual/kernel', 'core-image-minimal-initramfs']
>>
>> Sorry, still learning Yocto, what I could be missing?
>>
>>> BOOT_IMAGE=3D/bzImage root=3DPARTUUID=3D71d1d94a-83e8-4895-98eb-35309f=
58119f
>> break=3Dpremount quiet rootwait rootwait rootfstype=3Dext4
>> console=3DttyS0,115200 console=3Dtty0
>>
>> Which did you add kernel boot command for bootargs, bootcmd, etc as
>> above? I could not find BOOT_IMAGE (I use meta-freescale)
>>
>> Thank you very much.
>>
>> - jupiter
>>
>> On 7/12/19, Moritz Porst <moritz.porst@gmx.de> wrote:
>>> Forgot to CC Jupiter and the most important thing:
>>>
>>> PACKAGE_INSTALL +=3D "initramfs-module-debug"   (To my understanding t=
his
>>> enables the rescue shell)
>>>
>>> On 12.07.19 08:22, Moritz Porst wrote:
>>>> Hey,
>>>>
>>>> The only thing I can add to what I already said is my
>>>> "core-image-minimal-initramfs.bbappend":
>>>> PACKAGE_INSTALL +=3D "\
>>>>                          busybox \
>>>>                          base-files \
>>>>                          base-passwd \
>>>>                          bash \
>>>>                          util-linux-lsblk \
>>>>                          vim \
>>>>                          "
>>>> Jupiter, are you able to produce your zImage-initramfs now ? If not
>>>> further do the following:
>>>>
>>>> bitbake <your-image> -e > tempfile
>>>> [wait until done, then search]
>>>> grep <appropriate search word> tempfile
>>>>
>>>> where <appropriate search word> may be e.g.: zImage, zImage-initramfs=
,
>>>> INITRAMFS_IMAGE, INITRAMFS_IMAGE_BUNDLE
>>>> Especially check that all variables you set are not overwritten
>>>> somewhere else
>>>>
>>>> Best regards
>>>> Moritz
>>>>
>>>> On 12.07.19 06:36, Zoran Stojsavljevic wrote:
>>>>> Moritz,
>>>>>
>>>>> Thank you very much for this reply. It makes it very clear... What i=
s
>>>>> the current State of Affairs for the topic.
>>>>>
>>>>> Let us see if there will be the improvement to this topic. I'll
>>>>> document this on one of my private GitHubs. And archive this email.
>>>>>
>>>>> Zoran
>>>>> _______
>>>>>
>>>>> On Thu, Jul 11, 2019 at 12:39 PM Moritz Porst <moritz.porst@gmx.de>
>>>>> wrote:
>>>>>> Hello Zoran, Jupiter and list
>>>>>>
>>>>>> The configuration you sent seems to be correct.
>>>>>>
>>>>>> As I already said initramfs seems overly complicated in yocto. the
>>>>>> most
>>>>>> important thing to note is that 2 kernel images are created, one is
>>>>>> called bzImage (in my case) an the other bzImage-initramfs. However
>>>>>> only
>>>>>> the bzImage is written into the rootfs so you have to exchange them
>>>>>> manually. (in /boot/bzImage). I did not find a way of including the
>>>>>> bundled kernel right away.
>>>>>>
>>>>>> What you can do is to build core-image-minimal-initramfs and delete
>>>>>> the
>>>>>> symbolic link "bzImage", then recreate it and let it point to
>>>>>> bzImage-initramfs. However this is rather a hack than a solution.
>>>>>>
>>>>>> An other mistake I made was to use IMAGE_INSTALL_append which is
>>>>>> ignored. Use PACKAGE_INSTALL_append.
>>>>>>
>>>>>> Also I found that "break" does not work as a kernel parameter. Use
>>>>>> "shell" oder "debug-shell" instead. If you want to try to boot into
>>>>>> initramfs you can remove all parameters to the booting line so you
>>>>>> either end up in a kernel panic (initramfs doesn't work) or in the
>>>>>> rescue shell (initramfs works).
>>>>>>
>>>>>> In the end I actually managed to get a working shell, but I often
>>>>>> ended
>>>>>> up in initramfs telling me "dropping to shell..." but then freezing=
.
>>>>>>
>>>>>> I don't have access to my files right now but I can tell you more o=
n
>>>>>> my
>>>>>> setup tomorrow. In case the solution is not included above.
>>>>>>
>>>>>> Best regards
>>>>>> Moritz
>>>>>>
>>>>>> On 11/07/2019 09:24, Zoran Stojsavljevic wrote:
>>>>>>> Hello Moritz,
>>>>>>>
>>>>>>> I need here some help from you. I'll try to reconstruct the parts =
of
>>>>>>> the local.conf you are using, so I (and Jupiter) can understand wh=
at
>>>>>>> should we do to also bundle kernel image with initramfs, to end up=
 in
>>>>>>> Dracut/rescue shell.
>>>>>>>
>>>>>>> Here is what I anticipate after reading several YOCTO @ threads:
>>>>>>>
>>>>>>> IMAGE_FSTYPES_append =3D " cpio.gz"
>>>>>>> INITRAMFS_IMAGE =3D "core-image-minimal-initramfs"
>>>>>>> INITRAMFS_IMAGE_BUNDLE =3D "1"
>>>>>>> # debug: adds debug boot parameters like 'shell' and 'debug', see
>>>>>>> # meta/recipes-core/initrdscripts/initramfs-framework/debug for
>>>>>>> details
>>>>>>> # Could be removed in more minimal product image
>>>>>>> PACKAGE_INSTALL +=3D "initramfs-module-debug"
>>>>>>>
>>>>>>> Could you, please, review these lines and fix, if something is not
>>>>>>> correct?
>>>>>>>
>>>>>>> I what I understood, this does the magic, but you could not stop i=
n
>>>>>>> initramfs shell? Still, this problem is not solved?
>>>>>>>
>>>>>>>> I was following this site: https://wiki.debian.org/InitramfsDebug
>>>>>>>> Rescue shell (also known as initramfs shell)
>>>>>>>> Read man initramfs-tools to learn about the break=3Dsomething ker=
nel
>>>>>>>> parameter (where valid arguments for something are: top, modules,
>>>>>>>> premount, mount, mountroot, bottom, init), which starts a debug
>>>>>>>> shell.
>>>>>>>> You can try, for example, break=3Dpremount. You can edit
>>>>>>>> /boot/grub/grub.cfg
>>>>>>>> to add this to the end of the kernel line, or you can do it
>>>>>>>> interactively
>>>>>>>> from the grub boot menu: "e" to edit, and "b" to boot once you've
>>>>>>>> edited
>>>>>>>> the kernel line.
>>>>>>> Now, as my understanding is, you solved this problem actually addi=
ng
>>>>>>> to grub.cfg in command kernel line break=3Dpremount, and was able =
to
>>>>>>> stop in rescue shell?! Am I correct here?
>>>>>>>
>>>>>>> Thank you,
>>>>>>> Zoran
>>>>>>> _______
>>>>>>>
>>>>>>>
>>>>>>> On Mon, Jul 1, 2019 at 4:33 PM Moritz Porst <moritz.porst@gmx.de>
>>>>>>> wrote:
>>>>>>>> Hello,
>>>>>>>> I think I found the issue. ( see below )
>>>>>>>>
>>>>>>>> On 01.07.19 15:57, Zoran Stojsavljevic wrote:
>>>>>>>>
>>>>>>>> Hello Moritz,
>>>>>>>>
>>>>>>>> Too hot here, in Belgrade... Where I am resting for the Time bein=
g
>>>>>>>> (actually, this message given to my invisible spying security
>>>>>>>> "angels"
>>>>>>>> on this list)...  :-) Projected +38C degrees today. Too hot for t=
his
>>>>>>>> too old Siberian untouchable bobcat!
>>>>>>>>
>>>>>>>> Luckily it's a rather cold day in germany, thanks that you still
>>>>>>>> take the time to answer !
>>>>>>>>
>>>>>>>> I started from the core-image-minimal to have a small image and
>>>>>>>> extended it with the features I need, which is e.g. a graphical
>>>>>>>> system.
>>>>>>>> The console=3D[...] part in the kernel command line is probably a
>>>>>>>> remnant but my image boots into the GUI. Is this a problem ?
>>>>>>>>
>>>>>>>> Nope, it is not. If you need to do it correctly, you should use
>>>>>>>> bitbake -k core-image-sato build command (my best educated guess)=
.
>>>>>>>> Then, I do not feel comfortable seeing in your kernel command lin=
e
>>>>>>>> serial interface, do you agree?
>>>>>>>>
>>>>>>>> Yes that is true.
>>>>>>>>
>>>>>>>> YOCTO maintainers, any additional
>>>>>>>> advices?
>>>>>>>>
>>>>>>>> My bootloader is currently grub, the EFI is AM.
>>>>>>>>
>>>>>>>> Nope. Eeeeeeeeek. Wrong. Currently, your boot-loader is UEFI AMI.
>>>>>>>> Your
>>>>>>>> OS (Linux probably, U name it) boot-loader is GRUB2. Let us keep =
it
>>>>>>>> contained, sane and sober.
>>>>>>>>
>>>>>>>> Sorry but I can't find this info in the EFI.
>>>>>>>>
>>>>>>>> Could you, please try the following command being root: dmesg | g=
rep
>>>>>>>> MCU. or grep mcu, or grep CPUID or grep cpuid?? Please, post resu=
lts
>>>>>>>> to this list (to me).
>>>>>>>>
>>>>>>>> No luck unfortunately (used grep -i)
>>>>>>>>
>>>>>>>> Could you, also, send to YOCTO list/me attached file:
>>>>>>>> /boot/microcode.cpio so I can somehow (?) inspect it? ;-)
>>>>>>>>
>>>>>>>> I send it to you directly, so I don't spam the list with a large
>>>>>>>> attachment.
>>>>>>>>
>>>>>>>> 2GB, single channel.
>>>>>>>>
>>>>>>>> All Cool. E3825 by HW/silicon design could/does NOT support multi=
ple
>>>>>>>> memory channels. ONLY single... But even YOCTO primes (INTEL ones
>>>>>>>> from
>>>>>>>> this list) are not gonna tell this to you. Not 'cause they are
>>>>>>>> nasty.
>>>>>>>> They are NOT aware/they are ignorant (with the purpose)! ;-))
>>>>>>>>
>>>>>>>> No, the boot does not stop. Even if I do issue "break=3Dpremount"=
 I
>>>>>>>> end up in my graphical interface with the rootfs mounted. This is
>>>>>>>> the
>>>>>>>> last message in the log: EXT4-fs (sdb2): re-mounted. Opts: (null)
>>>>>>>> The rootfs partition is always 2, so either /dev/sda2 or /dev/sdb=
2
>>>>>>>> (when booting from stick)
>>>>>>>>
>>>>>>>> Yes, from https://pastebin.com/ya7iCtq7, so it is remounted rw, n=
ot
>>>>>>>> read only. So, it seems that you have passed dracut phase. and
>>>>>>>> mounted
>>>>>>>> SD or flash rootfs. So, initramfs is NOT your true problem, is it=
???
>>>>>>>>
>>>>>>>> The thing is that the boot works but I want an initramfs that can
>>>>>>>> be used for updating (in case the rootfs is broken). However I
>>>>>>>> need to be able to intercept the boot process there because
>>>>>>>> otherwise I can't deploy an update mechanism, that's what I was
>>>>>>>> trying.
>>>>>>>>
>>>>>>>> Zoran
>>>>>>>> _______
>>>>>>>>
>>>>>>>>
>>>>>>>> No, the boot does not stop. Even if I do issue "break=3Dpremount"=
 I
>>>>>>>> end up
>>>>>>>> in my graphical interface with the rootfs mounted. This is  the
>>>>>>>> last message
>>>>>>>> in the log: EXT4-fs (sdb2): re-mounted. Opts: (null) The rootfs
>>>>>>>> partition is
>>>>>>>> always 2, so either /dev/sda2 or /dev/sdb2 (when booting from sti=
ck)
>>>>>>>>
>>>>>>>>
>>>>>>>> So for the issue...
>>>>>>>> I expected yocto to put the bundled bzImage onto my rootfs. This
>>>>>>>> was not the case. My image directory contains 2x bzImage, one
>>>>>>>> bundled and one unbundled. Apparently yocto puts the >un<bundled
>>>>>>>> image onto my /boot partition and uses it for boot. So of course =
I
>>>>>>>> couldn't access initramfs in this case. Now I get to the initramf=
s
>>>>>>>> statement "dropping to shell" if I intentionally boot with wrong
>>>>>>>> rootfs.
>>>>>>>> Still I don't get the interactive shell.
>>>>>>>> On the github ostroproject site I found this:
>>>>>>>>
>>>>>>>> # debug: adds debug boot parameters like 'shell' and 'debug', see
>>>>>>>> # meta/recipes-core/initrdscripts/initramfs-framework/debug for
>>>>>>>> details
>>>>>>>> # Could be removed in more minimal product image.
>>>>>>>> PACKAGE_INSTALL +=3D "initramfs-module-debug"
>>>>>>>>
>>>>>>>> including the module-debug still does not enable me to get an
>>>>>>>> interactive shell.
>>>>>>>> I was following this site: https://wiki.debian.org/InitramfsDebug
>>>>>>>> I am aware that yocto is no debian but I expected that kernel
>>>>>>>> parameters (like 'break') would be independent of the distributio=
n.
>>>>>>>>
>>>>>>>> Lastly I do not really need the interactive shell, it is enough i=
f
>>>>>>>> I can deploy a custom init script in the initramfs. Still I think
>>>>>>>> that getting an initramfs shell should be as simple as stating th=
e
>>>>>>>> name of the initramfs image and setting the "INITRAMFS_DO_BUNDLE"
>>>>>>>> variable.
>>>>>>>>
>>>>>>>> Best regards
>>>>>>>> Moritz
>>>>>>>>
>>>>>>>>
>>>>>>>> On Mon, Jul 1, 2019 at 11:20 AM Moritz Porst <moritz.porst@gmx.de=
>
>>>>>>>> wrote:
>>>>>>>>
>>>>>>>> Hello Zoran,
>>>>>>>> thanks for your answer
>>>>>>>>
>>>>>>>> On 28.06.19 14:26, Zoran Stojsavljevic wrote:
>>>>>>>>
>>>>>>>> INITRAMFS_IMAGE =3D "core-image-minimal-initramfs"
>>>>>>>> INITRAMFS_IMAGE_BUNDLE =3D "1"
>>>>>>>>
>>>>>>>> ...
>>>>>>>>
>>>>>>>> You can find the /var/log/dmesg here: https://pastebin.com/ya7iCt=
q7I
>>>>>>>>
>>>>>>>> Some hints...
>>>>>>>>
>>>>>>>> [1] Kernel command line: BOOT_IMAGE=3D/bzImage
>>>>>>>> root=3DPARTUUID=3D71d1d94a-83e8-4895-98eb-35309f58119f
>>>>>>>> break=3Dpremount quiet rootwait rootwait rootfstype=3Dext4
>>>>>>>> console=3DttyS0,115200 console=3Dtty0
>>>>>>>>
>>>>>>>> input: Video Bus as
>>>>>>>> /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:00/input/inp=
ut7
>>>>>>>> fbcon: inteldrmfb (fb0) is primary device
>>>>>>>> Console: switching to colour frame buffer device 128x48
>>>>>>>> i915 0000:00:02.0: fb0: inteldrmfb frame buffer device
>>>>>>>> snd_hda_intel 0000:00:1b.0: bound 0000:00:02.0 (ops
>>>>>>>> i915_audio_component_bind_ops [i915])
>>>>>>>>
>>>>>>>> Hmmmmm... You are using console and serial, but full i915 GFX
>>>>>>>> kernel driver is still included in the build???
>>>>>>>>
>>>>>>>> I started from the core-image-minimal to have a small image and
>>>>>>>> extended it with the features I need, which is e.g. a graphical
>>>>>>>> system. The console=3D[...] part in the kernel command line is
>>>>>>>> probably a remnant but my image boots into the GUI. Is this a
>>>>>>>> problem ?
>>>>>>>>
>>>>>>>>
>>>>>>>> [2] efi: EFI v2.31 by American Megatrends
>>>>>>>>
>>>>>>>> Using AMI BIOS as boot loader FW... OK?! Am I correct?
>>>>>>>>
>>>>>>>> My bootloader is currently grub, the EFI is AM.
>>>>>>>>
>>>>>>>>
>>>>>>>> [3] smpboot: CPU0: Intel(R) Atom(TM) CPU  E3825  @ 1.33GHz
>>>>>>>> (family: 0x6, model: 0x37, stepping: 0x9)
>>>>>>>>
>>>>>>>> This is CPUID ID 0x30679, which uses MCU... Which MicroCodeUnit?
>>>>>>>> M0130679xxx (info from AMI BIOS)?
>>>>>>>>
>>>>>>>> Sorry but I can't find this info in the EFI
>>>>>>>>
>>>>>>>>
>>>>>>>> [4] Using INTEL ATOM BYT E3825 dual core (sans Hyper-threading),
>>>>>>>> implies that you are using
>>>>>>>> 4GB (e820 messages) as single channel (one memory module DDR3 as
>>>>>>>> 4GB)! Am I correct (important)?
>>>>>>>>
>>>>>>>> 2GB, single channel.
>>>>>>>>
>>>>>>>>
>>>>>>>> [5] Dracut phase?!
>>>>>>>>
>>>>>>>> To my understanding the initramfs should be embedded in
>>>>>>>> /boot/bzImage.
>>>>>>>> However since I use an intel platform I also have a
>>>>>>>> /boot/microcode.cpio
>>>>>>>> which gets loaded via "initrd /microcode.cpio". Removing this lin=
e
>>>>>>>> in
>>>>>>>> grub does not enable me to get an initramfs prompt either (again,
>>>>>>>> using
>>>>>>>> break as option).
>>>>>>>>
>>>>>>>> You are obviously stopping in boot phase called dracut. Please,
>>>>>>>> try to mount by hand
>>>>>>>> /dev/sda(whatever)... You should use fdisk -l command, or do ls
>>>>>>>> -al /dev | grep sda to
>>>>>>>> dig out which partition you need to mount to /tmp dir to see
>>>>>>>> rootfstype=3Dext4 (HDD/SSD)
>>>>>>>>
>>>>>>>> No, the boot does not stop. Even if I do issue "break=3Dpremount"=
 I
>>>>>>>> end up in my graphical interface with the rootfs mounted. This is
>>>>>>>> the last message in the log:
>>>>>>>> EXT4-fs (sdb2): re-mounted. Opts: (null)
>>>>>>>> The rootfs partition is always 2, so either /dev/sda2 or /dev/sdb=
2
>>>>>>>> (when booting from stick)
>>>>>>>>
>>>>>>>> _______
>>>>>>>>
>>>>>>>> Just thinking loud... .. .
>>>>>>>>
>>>>>>>> Hope this helps (has very little to do with YOCTO build system,
>>>>>>>> BTW) . ;-)
>>>>>>>>
>>>>>>>> Zoran
>>>>>>>> _______
>>>>>>>>
>>>>>>>>
>>>>>>>> On Fri, Jun 28, 2019 at 11:22 AM Moritz Porst
>>>>>>>> <moritz.porst@gmx.de> wrote:
>>>>>>>>
>>>>>>>> Hello,
>>>>>>>> I currently try to deploy a single rootfs update mechanism for my
>>>>>>>> embedded device. I can't boot to initramfs using either "break" o=
r
>>>>>>>> "break=3Dpremount" (without quotes...). I tried this in systemd-b=
oot
>>>>>>>> and
>>>>>>>> grub-efi (always efi boot) but the boot process just continues
>>>>>>>> normally.
>>>>>>>> If I insert at the same point e.g. "quiet" this argument is
>>>>>>>> recognised.
>>>>>>>> I boot the .wic image with a separate boot partition from a USB
>>>>>>>> stick.
>>>>>>>> in local.conf I have set:
>>>>>>>> INITRAMFS_IMAGE =3D "core-image-minimal-initramfs"
>>>>>>>> INITRAMFS_IMAGE_BUNDLE =3D "1"
>>>>>>>>
>>>>>>>> In order to reduce complexity I now use the standard
>>>>>>>> core-image-minimal-initramfs without .bbappend. I can confirm (fr=
om
>>>>>>>> seeing the task) that bitbake bundled the kernel with the initram=
fs.
>>>>>>>>
>>>>>>>> You can find the /var/log/dmesg here: https://pastebin.com/ya7iCt=
q7
>>>>>>>>
>>>>>>>> To my understanding the initramfs should be embedded in
>>>>>>>> /boot/bzImage.
>>>>>>>> However since I use an intel platform I also have a
>>>>>>>> /boot/microcode.cpio
>>>>>>>> which gets loaded via "initrd /microcode.cpio". Removing this lin=
e
>>>>>>>> in
>>>>>>>> grub does not enable me to get an initramfs prompt either (again,
>>>>>>>> using
>>>>>>>> break as option).
>>>>>>>>
>>>>>>>> Did I forget some configuration or do I have to put the break
>>>>>>>> statement
>>>>>>>> at a very specific position within the "linux ..." boot command ?
>>>>>>>> Do you
>>>>>>>> know which bitbake variables to check ? (both set in local.conf d=
o
>>>>>>>> not
>>>>>>>> get overwritten, already checked this). I got the thud branch
>>>>>>>> checked
>>>>>>>> out in all my meta-layers except for meta-qt which is currently o=
n
>>>>>>>> master branch.
>>>>>>>>
>>>>>>>> Help is much appreciated !
>>>>>>>>
>>>>>>>> Best regards
>>>>>>>> Moritz
>>>>>>>>
>>>>>>>> --
>>>>>>>> _______________________________________________
>>>>>>>> yocto mailing list
>>>>>>>> yocto@yoctoproject.org
>>>>>>>> https://lists.yoctoproject.org/listinfo/yocto

