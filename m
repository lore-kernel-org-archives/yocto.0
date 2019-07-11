Return-Path: <moritz.porst@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71009E00C5C; Thu, 11 Jul 2019 03:39:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [212.227.15.15 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (moritz.porst[at]gmx.de)
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 861B5E008F2
	for <yocto@yoctoproject.org>; Thu, 11 Jul 2019 03:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1562841541;
	bh=ykdwNOo9+iba/4Hf+D2Rn9Ri5MW9mVLR1jbZ/Lbhu7Y=;
	h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
	b=eHs8om0h5tp/gMkcECETlPRhMfXRN3IFjLM+Y5/xP5Pji1Acc1NmI4a2l15BzhvQ/
	ehi42rFN2NPAhN6mdM+o3gJURXMoD9o1BqJkaIpzdANzrSz2TsHff6CWTkKD/RhxT6
	yrcTYYCCRzuipZD8IJhcIw/D894TW8hXEQqjsGR4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [141.99.128.135] ([141.99.128.135]) by mail.gmx.com (mrgmx004
	[212.227.17.190]) with ESMTPSA (Nemesis) id 1MSc1L-1hwMEm2fWL-00StZW;
	Thu, 11 Jul 2019 12:39:01 +0200
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
References: <89d3d916-1fca-5ff5-e68e-79370dd0bfb7@gmx.de>
	<CAGAf8Lz2t90EjsaXPXxsSoioHb33u7dutnREiFr53NYp-WVD5A@mail.gmail.com>
	<34ae2007-e315-4b5a-c388-9c8adab28cbd@gmx.de>
	<CAGAf8Ly7JjRxj0aduWbB26jsuKqFVLDLVr=qgKPQMxcUhWiadg@mail.gmail.com>
	<66af0e83-056c-ee5a-7bcd-863c14da72de@gmx.de>
	<CAGAf8LxHRZ8+UcSWjE4tNfnkGEGnQGAjWjmL3svMqVUUvd60gg@mail.gmail.com>
From: Moritz Porst <moritz.porst@gmx.de>
Message-ID: <29974dbb-39f5-cf15-7c64-4b707ce0d157@gmx.de>
Date: Thu, 11 Jul 2019 12:39:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAGAf8LxHRZ8+UcSWjE4tNfnkGEGnQGAjWjmL3svMqVUUvd60gg@mail.gmail.com>
X-Provags-ID: V03:K1:9xI9fU+UqfFwKjIERQ541IRvmZ8LcOS9KpEYZBSHmWP/ndoDJ69
	1XbUwEhL6so9slpi3C3MPZoqxgdeNf9JQJ+a0HITSLN/BDjL/5hP52MYju8YBWo8sULoMYf
	abYxKR3/b5sTO2cS9epfEIqnPoduT1Nvp3YOBiKBvhrsgwH7nQvOjLIGMgV7UTzWKtXFAFf
	QHamDQOeTvFx5KyDebZ5w==
X-UI-Out-Filterresults: notjunk:1;V03:K0:DORw37nIGrA=:nEdfBumL81No1f3NuT+vBP
	Y05Y3ahL+ff1YStSdIDQN+UvtxQ5iJ9T1E9Scc2P3knyw5iqNSbd3uKGG8S3rde0wUZoLUtSV
	diXf+cNVYZypYpHhlumF4fhL4CirUl6UsQLyjl0LFDVEx7JzUSBP2x4Xypbn8Ky+Dxo1LlXiF
	RDuLRaVUp0vcEvtd24GkbkF/mqi3poWOkx4Z/EFsd/oL2xzSX1bF3bhqgE95CTHiEvlGK/ffj
	UWbps9aVOS14RJajCJhpWm9QoS87rH6rk6whyRPYLV8+V7kNil/EfGpPiFSTiQFU+njqO87oN
	Q8d2pj8HSqLEs37bTQIUexTKC6op7J/Z/Ipzuo5rpXGdAYf3+HB5/mz8osGwSeDodnX+S4xV3
	4UALrXzPe/GGuu5HJKsio1awD5esRhKNPoX3GAkF8kfRJMRtYvxXEPBZTTALPh7oGPXjmBcYh
	6+aJR3KnGdRjY29RO9prt7vMlIYsodlMyn/H94sU6BWoO0Qln35ZIGpDPmpnxrAcpu+gAchvq
	f+P3bnJIfaEahDPndwJzjVC6HlnMhmOhoVrTVnI60OszyFewNAedv1SDni94jWorZOWHvdwe2
	DtqMdu63B9nuYheGH6tg+vQPUdHc2OXb/I0Xqun+KvLXrhX1sL3AnRfxsZgrcWkRusVhXe8ND
	R6Eu8vtJD7PachaZpbTi/0L4lz3ove2UEM+/UQKwZdqmJIjHajhhv3d+cFQWWtuKebkT1TDkJ
	sUC6iHKhveVmuaf7z97x1XdZjvAcE+zTsStaBllK2tP4pW9qOGknr/cp/5y89+Zlo6dEOOnQe
	pxDaW7QZiJRIPBI4J3TdOLHHhrJ27uJH1anJ2Ac+I2VCi+9CdRG2S+UfRn1wO4DO35IU6lSa3
	fCWn4cz1MG2uwnxyRC0sT3H/afZTs4eID/mVWZOmz4/NIlqQZEiEsTHnZj/BIfOtaKa29PIJv
	fChFc+2JwvVG9OdWaoxVNhZM7rA1UADHxgl7nd8WGx1S9PeyRFyzwl/wxkTDUqyiRq0AR9uWU
	2wce2JaKvV90blVIeu+nQdZm3m1Q1EhcS4MO1DamHTXEo5FNQTaiCenDj7BFRlHCQ1mJYJv+s
	2xNLBGC/KqktPHVgi4NOodBqcikD8UoIQAv
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
X-List-Received-Date: Thu, 11 Jul 2019 10:39:05 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Hello Zoran, Jupiter and list

The configuration you sent seems to be correct.

As I already said initramfs seems overly complicated in yocto. the most
important thing to note is that 2 kernel images are created, one is
called bzImage (in my case) an the other bzImage-initramfs. However only
the bzImage is written into the rootfs so you have to exchange them
manually. (in /boot/bzImage). I did not find a way of including the
bundled kernel right away.

What you can do is to build core-image-minimal-initramfs and delete the
symbolic link "bzImage", then recreate it and let it point to
bzImage-initramfs. However this is rather a hack than a solution.

An other mistake I made was to use IMAGE_INSTALL_append which is
ignored. Use PACKAGE_INSTALL_append.

Also I found that "break" does not work as a kernel parameter. Use
"shell" oder "debug-shell" instead. If you want to try to boot into
initramfs you can remove all parameters to the booting line so you
either end up in a kernel panic (initramfs doesn't work) or in the
rescue shell (initramfs works).

In the end I actually managed to get a working shell, but I often ended
up in initramfs telling me "dropping to shell..." but then freezing.

I don't have access to my files right now but I can tell you more on my
setup tomorrow. In case the solution is not included above.

Best regards
Moritz

On 11/07/2019 09:24, Zoran Stojsavljevic wrote:
> Hello Moritz,
>
> I need here some help from you. I'll try to reconstruct the parts of
> the local.conf you are using, so I (and Jupiter) can understand what
> should we do to also bundle kernel image with initramfs, to end up in
> Dracut/rescue shell.
>
> Here is what I anticipate after reading several YOCTO @ threads:
>
> IMAGE_FSTYPES_append =3D " cpio.gz"
> INITRAMFS_IMAGE =3D "core-image-minimal-initramfs"
> INITRAMFS_IMAGE_BUNDLE =3D "1"
> # debug: adds debug boot parameters like 'shell' and 'debug', see
> # meta/recipes-core/initrdscripts/initramfs-framework/debug for details
> # Could be removed in more minimal product image
> PACKAGE_INSTALL +=3D "initramfs-module-debug"
>
> Could you, please, review these lines and fix, if something is not corre=
ct?
>
> I what I understood, this does the magic, but you could not stop in
> initramfs shell? Still, this problem is not solved?
>
>> I was following this site: https://wiki.debian.org/InitramfsDebug
>> Rescue shell (also known as initramfs shell)
>> Read man initramfs-tools to learn about the break=3Dsomething kernel
>> parameter (where valid arguments for something are: top, modules,
>> premount, mount, mountroot, bottom, init), which starts a debug shell.
>> You can try, for example, break=3Dpremount. You can edit /boot/grub/gru=
b.cfg
>> to add this to the end of the kernel line, or you can do it interactive=
ly
>> from the grub boot menu: "e" to edit, and "b" to boot once you've edite=
d
>> the kernel line.
> Now, as my understanding is, you solved this problem actually adding
> to grub.cfg in command kernel line break=3Dpremount, and was able to
> stop in rescue shell?! Am I correct here?
>
> Thank you,
> Zoran
> _______
>
>
> On Mon, Jul 1, 2019 at 4:33 PM Moritz Porst <moritz.porst@gmx.de> wrote:
>> Hello,
>> I think I found the issue. ( see below )
>>
>> On 01.07.19 15:57, Zoran Stojsavljevic wrote:
>>
>> Hello Moritz,
>>
>> Too hot here, in Belgrade... Where I am resting for the Time being
>> (actually, this message given to my invisible spying security "angels"
>> on this list)...  :-) Projected +38C degrees today. Too hot for this
>> too old Siberian untouchable bobcat!
>>
>> Luckily it's a rather cold day in germany, thanks that you still take t=
he time to answer !
>>
>> I started from the core-image-minimal to have a small image and
>> extended it with the features I need, which is e.g. a graphical system.
>> The console=3D[...] part in the kernel command line is probably a
>> remnant but my image boots into the GUI. Is this a problem ?
>>
>> Nope, it is not. If you need to do it correctly, you should use
>> bitbake -k core-image-sato build command (my best educated guess).
>> Then, I do not feel comfortable seeing in your kernel command line
>> serial interface, do you agree?
>>
>> Yes that is true.
>>
>> YOCTO maintainers, any additional
>> advices?
>>
>> My bootloader is currently grub, the EFI is AM.
>>
>> Nope. Eeeeeeeeek. Wrong. Currently, your boot-loader is UEFI AMI. Your
>> OS (Linux probably, U name it) boot-loader is GRUB2. Let us keep it
>> contained, sane and sober.
>>
>> Sorry but I can't find this info in the EFI.
>>
>> Could you, please try the following command being root: dmesg | grep
>> MCU. or grep mcu, or grep CPUID or grep cpuid?? Please, post results
>> to this list (to me).
>>
>> No luck unfortunately (used grep -i)
>>
>> Could you, also, send to YOCTO list/me attached file:
>> /boot/microcode.cpio so I can somehow (?) inspect it? ;-)
>>
>> I send it to you directly, so I don't spam the list with a large attach=
ment.
>>
>> 2GB, single channel.
>>
>> All Cool. E3825 by HW/silicon design could/does NOT support multiple
>> memory channels. ONLY single... But even YOCTO primes (INTEL ones from
>> this list) are not gonna tell this to you. Not 'cause they are nasty.
>> They are NOT aware/they are ignorant (with the purpose)! ;-))
>>
>> No, the boot does not stop. Even if I do issue "break=3Dpremount" I
>> end up in my graphical interface with the rootfs mounted. This is the
>> last message in the log: EXT4-fs (sdb2): re-mounted. Opts: (null)
>> The rootfs partition is always 2, so either /dev/sda2 or /dev/sdb2
>> (when booting from stick)
>>
>> Yes, from https://pastebin.com/ya7iCtq7, so it is remounted rw, not
>> read only. So, it seems that you have passed dracut phase. and mounted
>> SD or flash rootfs. So, initramfs is NOT your true problem, is it???
>>
>> The thing is that the boot works but I want an initramfs that can be us=
ed for updating (in case the rootfs is broken). However I need to be able =
to intercept the boot process there because otherwise I can't deploy an up=
date mechanism, that's what I was trying.
>>
>> Zoran
>> _______
>>
>>
>> No, the boot does not stop. Even if I do issue "break=3Dpremount" I end=
 up
>> in my graphical interface with the rootfs mounted. This is  the last me=
ssage
>> in the log: EXT4-fs (sdb2): re-mounted. Opts: (null) The rootfs partiti=
on is
>> always 2, so either /dev/sda2 or /dev/sdb2 (when booting from stick)
>>
>>
>> So for the issue...
>> I expected yocto to put the bundled bzImage onto my rootfs. This was no=
t the case. My image directory contains 2x bzImage, one bundled and one un=
bundled. Apparently yocto puts the >un<bundled image onto my /boot partiti=
on and uses it for boot. So of course I couldn't access initramfs in this =
case. Now I get to the initramfs statement "dropping to shell" if I intent=
ionally boot with wrong rootfs.
>> Still I don't get the interactive shell.
>> On the github ostroproject site I found this:
>>
>> # debug: adds debug boot parameters like 'shell' and 'debug', see
>> #        meta/recipes-core/initrdscripts/initramfs-framework/debug for =
details
>> # Could be removed in more minimal product image.
>> PACKAGE_INSTALL +=3D "initramfs-module-debug"
>>
>> including the module-debug still does not enable me to get an interacti=
ve shell.
>> I was following this site: https://wiki.debian.org/InitramfsDebug
>> I am aware that yocto is no debian but I expected that kernel parameter=
s (like 'break') would be independent of the distribution.
>>
>> Lastly I do not really need the interactive shell, it is enough if I ca=
n deploy a custom init script in the initramfs. Still I think that getting=
 an initramfs shell should be as simple as stating the name of the initram=
fs image and setting the "INITRAMFS_DO_BUNDLE" variable.
>>
>> Best regards
>> Moritz
>>
>>
>> On Mon, Jul 1, 2019 at 11:20 AM Moritz Porst <moritz.porst@gmx.de> wrot=
e:
>>
>> Hello Zoran,
>> thanks for your answer
>>
>> On 28.06.19 14:26, Zoran Stojsavljevic wrote:
>>
>> INITRAMFS_IMAGE =3D "core-image-minimal-initramfs"
>> INITRAMFS_IMAGE_BUNDLE =3D "1"
>>
>> ...
>>
>> You can find the /var/log/dmesg here: https://pastebin.com/ya7iCtq7I
>>
>> Some hints...
>>
>> [1] Kernel command line: BOOT_IMAGE=3D/bzImage root=3DPARTUUID=3D71d1d9=
4a-83e8-4895-98eb-35309f58119f
>> break=3Dpremount quiet rootwait rootwait rootfstype=3Dext4 console=3Dtt=
yS0,115200 console=3Dtty0
>>
>> input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDE=
O:00/input/input7
>> fbcon: inteldrmfb (fb0) is primary device
>> Console: switching to colour frame buffer device 128x48
>> i915 0000:00:02.0: fb0: inteldrmfb frame buffer device
>> snd_hda_intel 0000:00:1b.0: bound 0000:00:02.0 (ops i915_audio_componen=
t_bind_ops [i915])
>>
>> Hmmmmm... You are using console and serial, but full i915 GFX kernel dr=
iver is still included in the build???
>>
>> I started from the core-image-minimal to have a small image and extende=
d it with the features I need, which is e.g. a graphical system. The conso=
le=3D[...] part in the kernel command line is probably a remnant but my im=
age boots into the GUI. Is this a problem ?
>>
>>
>> [2] efi: EFI v2.31 by American Megatrends
>>
>> Using AMI BIOS as boot loader FW... OK?! Am I correct?
>>
>> My bootloader is currently grub, the EFI is AM.
>>
>>
>> [3] smpboot: CPU0: Intel(R) Atom(TM) CPU  E3825  @ 1.33GHz (family: 0x6=
, model: 0x37, stepping: 0x9)
>>
>> This is CPUID ID 0x30679, which uses MCU... Which MicroCodeUnit? M01306=
79xxx (info from AMI BIOS)?
>>
>> Sorry but I can't find this info in the EFI
>>
>>
>> [4] Using INTEL ATOM BYT E3825 dual core (sans Hyper-threading), implie=
s that you are using
>> 4GB (e820 messages) as single channel (one memory module DDR3 as 4GB)! =
Am I correct (important)?
>>
>> 2GB, single channel.
>>
>>
>> [5] Dracut phase?!
>>
>> To my understanding the initramfs should be embedded in /boot/bzImage.
>> However since I use an intel platform I also have a /boot/microcode.cpi=
o
>> which gets loaded via "initrd /microcode.cpio". Removing this line in
>> grub does not enable me to get an initramfs prompt either (again, using
>> break as option).
>>
>> You are obviously stopping in boot phase called dracut. Please, try to =
mount by hand
>> /dev/sda(whatever)... You should use fdisk -l command, or do ls -al /de=
v | grep sda to
>> dig out which partition you need to mount to /tmp dir to see rootfstype=
=3Dext4 (HDD/SSD)
>>
>> No, the boot does not stop. Even if I do issue "break=3Dpremount" I end=
 up in my graphical interface with the rootfs mounted. This is the last me=
ssage in the log:
>> EXT4-fs (sdb2): re-mounted. Opts: (null)
>> The rootfs partition is always 2, so either /dev/sda2 or /dev/sdb2 (whe=
n booting from stick)
>>
>> _______
>>
>> Just thinking loud... .. .
>>
>> Hope this helps (has very little to do with YOCTO build system, BTW) . =
;-)
>>
>> Zoran
>> _______
>>
>>
>> On Fri, Jun 28, 2019 at 11:22 AM Moritz Porst <moritz.porst@gmx.de> wro=
te:
>>
>> Hello,
>> I currently try to deploy a single rootfs update mechanism for my
>> embedded device. I can't boot to initramfs using either "break" or
>> "break=3Dpremount" (without quotes...). I tried this in systemd-boot an=
d
>> grub-efi (always efi boot) but the boot process just continues normally=
.
>> If I insert at the same point e.g. "quiet" this argument is recognised.
>> I boot the .wic image with a separate boot partition from a USB stick.
>> in local.conf I have set:
>> INITRAMFS_IMAGE =3D "core-image-minimal-initramfs"
>> INITRAMFS_IMAGE_BUNDLE =3D "1"
>>
>> In order to reduce complexity I now use the standard
>> core-image-minimal-initramfs without .bbappend. I can confirm (from
>> seeing the task) that bitbake bundled the kernel with the initramfs.
>>
>> You can find the /var/log/dmesg here: https://pastebin.com/ya7iCtq7
>>
>> To my understanding the initramfs should be embedded in /boot/bzImage.
>> However since I use an intel platform I also have a /boot/microcode.cpi=
o
>> which gets loaded via "initrd /microcode.cpio". Removing this line in
>> grub does not enable me to get an initramfs prompt either (again, using
>> break as option).
>>
>> Did I forget some configuration or do I have to put the break statement
>> at a very specific position within the "linux ..." boot command ? Do yo=
u
>> know which bitbake variables to check ? (both set in local.conf do not
>> get overwritten, already checked this). I got the thud branch checked
>> out in all my meta-layers except for meta-qt which is currently on
>> master branch.
>>
>> Help is much appreciated !
>>
>> Best regards
>> Moritz
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

