Return-Path: <moritz.porst@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35968E00D42; Mon,  1 Jul 2019 05:20:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (moritz.porst[at]gmx.de)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [212.227.15.19 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F9D6E00BAF
	for <yocto@yoctoproject.org>; Mon,  1 Jul 2019 05:20:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1561983605;
	bh=tz2cG4+yJwFOlBgDQNI26OC8Ul9hIIf8RxFGPL7mH4U=;
	h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
	b=QiqwgsmlYQ8VTBcNUgh9Wl82tz893ZvDMLPb8uJz/cWcDq8pb23JS/S/OJRkKk+Fy
	BcSQxvSGFE45mwBRGIT6n9j1EYlxd4pG6YkTeT25I6kmz/g+WDp7577CJSX8TFGQH5
	9S53+0GKUiaRoX91J7CAZ9x+DQDLXbo+nszmmn/A=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.2.132] ([80.152.229.14]) by mail.gmx.com (mrgmx005
	[212.227.17.190]) with ESMTPSA (Nemesis) id 1MowKi-1iKm8Q3Qxa-00qOMv
	for <yocto@yoctoproject.org>; Mon, 01 Jul 2019 14:20:04 +0200
To: yocto@yoctoproject.org
References: <89d3d916-1fca-5ff5-e68e-79370dd0bfb7@gmx.de>
	<CAGAf8Lz2t90EjsaXPXxsSoioHb33u7dutnREiFr53NYp-WVD5A@mail.gmail.com>
	<34ae2007-e315-4b5a-c388-9c8adab28cbd@gmx.de>
From: Moritz Porst <moritz.porst@gmx.de>
Message-ID: <ef2f4683-959e-ec26-b8c0-b7298cb9a60b@gmx.de>
Date: Mon, 1 Jul 2019 14:19:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <34ae2007-e315-4b5a-c388-9c8adab28cbd@gmx.de>
X-Provags-ID: V03:K1:9Udr26BvzpjQRsgxW+wj7zMRBMugWoWI2FTqoxJTcn1H17hzHyO
	IcEdvCWRaDRSODNSwzgNpneUXenehAo6hzkJ12lZYq13DaBP8rRd4/r74aBRI4P+1x47Ryw
	LP3egTRzbh90WLPwAMfQd05R5goxQK3BBGehL2gmmL3w5WK1Ee5kPNNN/RJ1VrRRws1Z6ef
	LhpnA802idUuQaeWxm6+w==
X-UI-Out-Filterresults: notjunk:1;V03:K0:Ajkl/Goq9ho=:hoUfi0uAFBbB6ZlYaVTcsN
	N/xjlVepwoznBYZUw88XsOy5ixd98Yhq6N++xu3H5GSQ0wIsZNaqaZWH+7Y44BHI7O8jf2+pl
	9PyEQxUEnyVNmV+SFf18E3/mIO0jgN1kHxytNi86kZ+tFtG9jfXaVNU6hShfkPdC/3i+oBme7
	ZdgT9hI+XXoihqKI7+KqZO4ZhacMFkxXp1EPoJFYtd27C/lshtyCnPoRtpLTkfag0zVlYILsK
	ZIvFAh1hSlyrFs9gCHDOsnBDqBnq9a8bMLdDXAQ6V7SKQx6LRD/JQHmmzgylso3v2j40Dr/XN
	w/lnIf9zzUyLpS2ca2m5AJP+cK7C/59glHloYfsYMBUwZm+fKMb9DT8tRDr8EaIvsCJu9u/EB
	oNNiIqr+qUMwxupeOlTy4DyyUzGeZOyVRiwXsez3WufaNwlC4d8sttcYpm5G22WYXT3owaGUA
	Stv3NummvDRD7JtKdUYv3cEnr0Vw+tw2o3GKe/PIfIzkWZikfXncwVMBRYZ12ix7H6UKDLEJs
	OiQ4nab4IpbQ9/PQhp7WkUPKaGnd7snXONL2aIKCK8aGR3vRrQL79KIPMm5Rf5ZktvRGMWdvF
	9rDVpZJN5sMC3EtK4Fmo/IfJHDU7uMU/TsSHhnVF+n/Q3W0DpOVurAlLxp6sygciRwGzJU6sp
	+algc3Nm6SkPO+mpBwiSGxd4y4jpWh3+TxkJd6GrPCiKbSyZ9YoZa1BGvyXl+sl7/XM43NvoM
	kWc+FIZMATFiVWR+bniTWqOMZE1z0Mok9Wn9kb6Mh9OGVp0RpEZxve6XyLM5mYSrdB3nXupqv
	HrfZBmSsqTcLN7SWOE7aiMzz6Mi6asuY8m38hH/jnqckwa4TIWbQ3OQ/aKLm10tWAnA3NfHW2
	OCzOBIPF7JUKe+XoJfgS81l0u33jsrihdEYxBiPepmT8vtwLa6An1IWA1bMLS7hsXyBM66bu6
	KqugIdb8moFRWznOJVGPSrM9Rh+SQACiPGyQntZX6rCRhseLh6vfra7AaNUPY3FL4ecQ//Blz
	zAKANKFPfsBZ1HNOME1seJQwGK6M020vKA5zFRfrwMZ0/u0CEPDWsAq9deHDtlrKeEciDRycI
	WOFGg3O+OGBUFwRGgJU15/XNrLKWZUj3aThJwSyTjmZJRz77/c/TLBd7drDgduFvhIUbbpnea
	FHizDJ4+Q4lMhicvNzAeKV3yhkSuCK0JMG2o/KrJ93Dc6Uy75lg+mflfEsSmeHeR83Db8J6p/
	06GMR668urzv5LZRt
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
X-List-Received-Date: Mon, 01 Jul 2019 12:20:08 -0000
Content-Type: multipart/alternative;
	boundary="------------273F62890BC2274BA6050E1A"
Content-Language: en-US

--------------273F62890BC2274BA6050E1A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hey,
So I have proceeded a tiny bit.
What I did was to copy the core-image-minimal-initramfs.cpio.gz to my
/boot partition and boot using (EFI grub):

linux /bzimage
initrd /initramfs.cpio.gz

This way the boot process starts and at some point it says "can't find
rootfs.img, dropping to a shell". It doesn't drop to a shell though...
(busybox is included)
Booting without the initrd (or with initrd /microcode.cpio) results in a
kernel panic. This leads me to the suspicion that meta-intel overwrites
my initramfs (since microcode.cpio is present in boot)
Further more think I shouldn't even be required to set initrd for boot
since it should be embedded into the kernel ?
(INITRAMFS_IMAGE_BUNDLE=3D"1") I got the relevant variables from bitbake
-e here, maybe someone more experienced can spot an error ?

# $INITRAMFS_FSTYPES [2 operations]
#=C2=A0=C2=A0 set /opt/thudPoky/meta/conf/documentation.conf:228
#=C2=A0=C2=A0=C2=A0=C2=A0 [doc] "Defines the format for the output image o=
f an initial RAM
disk (initramfs), which is used during boot."
#=C2=A0=C2=A0 set? /opt/thudPoky/meta/conf/bitbake.conf:770
#=C2=A0=C2=A0=C2=A0=C2=A0 "cpio.gz"
# pre-expansion value:
#=C2=A0=C2=A0 "cpio.gz"
INITRAMFS_FSTYPES=3D"cpio.gz"
#
# $INITRAMFS_IMAGE
#=C2=A0=C2=A0 set /opt/thudPoky/build/conf/local.conf:257
#=C2=A0=C2=A0=C2=A0=C2=A0 "core-image-minimal-initramfs"
INITRAMFS_IMAGE=3D"core-image-minimal-initramfs"
#
# $INITRAMFS_IMAGE_BUNDLE
#=C2=A0=C2=A0 set /opt/thudPoky/build/conf/local.conf:258
#=C2=A0=C2=A0=C2=A0=C2=A0 "1"
INITRAMFS_IMAGE_BUNDLE=3D"1"
#
# $INITRAMFS_MAXSIZE [2 operations]
#=C2=A0=C2=A0 set /opt/thudPoky/meta-ccns5/conf/machine/ccns5.conf:34
#=C2=A0=C2=A0=C2=A0=C2=A0 "200000"
#=C2=A0=C2=A0 set /opt/thudPoky/meta/conf/bitbake.conf:774
#=C2=A0=C2=A0=C2=A0=C2=A0 [_defaultval] "131072"
# pre-expansion value:
#=C2=A0=C2=A0 "200000"
INITRAMFS_MAXSIZE=3D"200000"
#
# $INITRD
#=C2=A0=C2=A0 set /opt/thudPoky/meta/conf/documentation.conf:229
#=C2=A0=C2=A0=C2=A0=C2=A0 [doc] "Indicates a list of filesystem images to =
concatenate and
use as an initial RAM disk (initrd)."
#
# $INITRD_IMAGE_LIVE
#=C2=A0=C2=A0 set? /opt/thudPoky/meta/classes/image-live.bbclass:39
#=C2=A0=C2=A0=C2=A0=C2=A0 "${MLPREFIX}core-image-minimal-initramfs"
INITRD_IMAGE_LIVE=3D"core-image-minimal-initramfs"
#
# $INITRD_LIVE [2 operations]
#=C2=A0=C2=A0 _prepend /opt/thudPoky/meta-intel/conf/machine/include/meta-=
intel.inc:23
#=C2=A0=C2=A0=C2=A0=C2=A0 "${@bb.utils.contains('MACHINE_FEATURES', 'intel=
-ucode',
'${DEPLOY_DIR_IMAGE}/microcode.cpio ', '', d)}"
#=C2=A0=C2=A0 set? /opt/thudPoky/meta/classes/image-live.bbclass:40
# "${DEPLOY_DIR_IMAGE}/${INITRD_IMAGE_LIVE}-${MACHINE}.cpio.gz"
# pre-expansion value:
#=C2=A0=C2=A0 "${@bb.utils.contains('MACHINE_FEATURES', 'intel-ucode',
'${DEPLOY_DIR_IMAGE}/microcode.cpio ', '',
d)}${DEPLOY_DIR_IMAGE}/${INITRD_IMAGE_LIVE}-${MACHINE}.cpio.gz"
INITRD_LIVE=3D"/opt/thudPoky/build/tmp/deploy/images/ccns5/microcode.cpio
/opt/thudPoky/build/tmp/deploy/images/ccns5/core-image-minimal-initramfs-c=
cns5.cpio.gz"

The last line seems strange to me because 2 different images are set.
.cpio on it's own is not included in INITRAMFS_FSTYPES and I can not
find any documentation on the variable INITRD_LIVE.

Best regards
Moritz

On 01.07.19 11:19, Moritz Porst wrote:
>
> Hello Zoran,
> thanks for your answer
>
> On 28.06.19 14:26, Zoran Stojsavljevic wrote:
>> > INITRAMFS_IMAGE =3D /*"core-image-minimal-initramfs"*/
>> > INITRAMFS_IMAGE_BUNDLE =3D "1"
>> ...
>> > You can find the /var/log/dmesg here: https://pastebin.com/ya7iCtq7I
>>
>> Some hints...
>>
>> [1] Kernel command line: BOOT_IMAGE=3D/bzImage
>> root=3DPARTUUID=3D71d1d94a-83e8-4895-98eb-35309f58119f
>> break=3Dpremount quiet rootwait rootwait rootfstype=3Dext4
>> /*console=3DttyS0,115200 console=3Dtty0*/
>> /*
>> */
>> input: Video Bus as
>> /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:00/input/input7
>> fbcon: inteldrmfb (fb0) is primary device
>> Console: switching to colour frame buffer device 128x48
>> /*i915 0000:00:02.0: fb0: inteldrmfb frame buffer device*/
>> snd_hda_intel 0000:00:1b.0: bound 0000:00:02.0 (ops
>> i915_audio_component_bind_ops [i915])
>>
>> Hmmmmm... You are using console and serial, but full i915 GFX kernel
>> driver is still included in the build???
> I started from the core-image-minimal to have a small image and
> extended it with the features I need, which is e.g. a graphical
> system. The console=3D[...] part in the kernel command line is probably
> a remnant but my image boots into the GUI. Is this a problem ?
>> /*
>> */
>> [2] efi: EFI v2.31 by American Megatrends
>>
>> Using AMI BIOS as boot loader FW... OK?! Am I correct?
> My bootloader is currently grub, the EFI is AM.
>>
>> [3] smpboot: CPU0: Intel(R) Atom(TM) CPU =C2=A0E3825 =C2=A0@ 1.33GHz (f=
amily:
>> 0x6, model: 0x37, stepping: 0x9)
>>
>> This is CPUID ID 0x30679, which uses MCU... Which MicroCodeUnit?
>> M0130679xxx (info from AMI BIOS)?
> Sorry but I can't find this info in the EFI
>>
>> [4] Using INTEL ATOM BYT E3825 dual core (sans Hyper-threading),
>> implies that you are using
>> 4GB (e820 messages) as single channel (one memory module DDR3 as
>> 4GB)! Am I correct (important)?
> 2GB, single channel.
>>
>> [5] Dracut phase?!
>> > To my understanding the initramfs should be embedded in /boot/bzImage=
.
>> > However since I use an intel platform I also have a
>> /boot/microcode.cpio
>> > which gets loaded via "initrd /microcode.cpio". Removing this line in
>> > grub does not enable me to get an initramfs prompt either (again, usi=
ng
>> > break as option).
>>
>> You are obviously stopping in boot phase called dracut. Please, try
>> to mount by hand
>> /dev/sda(whatever)... You should use fdisk -l command, or do ls -al
>> /dev | grep sda to
>> dig out which partition you need to mount to /tmp dir to see
>> rootfstype=3Dext4 (HDD/SSD)
> No, the boot does not stop. Even if I do issue "break=3Dpremount" I end
> up in my graphical interface with the rootfs mounted. This is the last
> message in the log:
> EXT4-fs (sdb2): re-mounted. Opts: (null)
> The rootfs partition is always 2, so either /dev/sda2 or /dev/sdb2
> (when booting from stick)
>> _______
>>
>> Just thinking loud... .. .
>>
>> Hope this helps (has very little to do with YOCTO build system, BTW)
>> . ;-)
>>
>> Zoran
>> _______
>>
>>
>> On Fri, Jun 28, 2019 at 11:22 AM Moritz Porst <moritz.porst@gmx.de
>> <mailto:moritz.porst@gmx.de>> wrote:
>>
>>     Hello,
>>     I currently try to deploy a single rootfs update mechanism for my
>>     embedded device. I can't boot to initramfs using either "break" or
>>     "break=3Dpremount" (without quotes...). I tried this in
>>     systemd-boot and
>>     grub-efi (always efi boot) but the boot process just continues
>>     normally.
>>     If I insert at the same point e.g. "quiet" this argument is
>>     recognised.
>>     I boot the .wic image with a separate boot partition from a USB
>>     stick.
>>     in local.conf I have set:
>>     INITRAMFS_IMAGE =3D "core-image-minimal-initramfs"
>>     INITRAMFS_IMAGE_BUNDLE =3D "1"
>>
>>     In order to reduce complexity I now use the standard
>>     core-image-minimal-initramfs without .bbappend. I can confirm (from
>>     seeing the task) that bitbake bundled the kernel with the initramfs=
.
>>
>>     You can find the /var/log/dmesg here: https://pastebin.com/ya7iCtq7
>>
>>     To my understanding the initramfs should be embedded in
>>     /boot/bzImage.
>>     However since I use an intel platform I also have a
>>     /boot/microcode.cpio
>>     which gets loaded via "initrd /microcode.cpio". Removing this line =
in
>>     grub does not enable me to get an initramfs prompt either (again,
>>     using
>>     break as option).
>>
>>     Did I forget some configuration or do I have to put the break
>>     statement
>>     at a very specific position within the "linux ..." boot command ?
>>     Do you
>>     know which bitbake variables to check ? (both set in local.conf
>>     do not
>>     get overwritten, already checked this). I got the thud branch check=
ed
>>     out in all my meta-layers except for meta-qt which is currently on
>>     master branch.
>>
>>     Help is much appreciated !
>>
>>     Best regards
>>     Moritz
>>
>>     --
>>     _______________________________________________
>>     yocto mailing list
>>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>     https://lists.yoctoproject.org/listinfo/yocto
>>
>

--------------273F62890BC2274BA6050E1A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>Hey,<br>
      So I have proceeded a tiny bit.<br>
      What I did was to copy the core-image-minimal-initramfs.cpio.gz to
      my /boot partition and boot using (EFI grub):</p>
    <p>linux /bzimage<br>
      initrd /initramfs.cpio.gz</p>
    <p>This way the boot process starts and at some point it says "can't
      find rootfs.img, dropping to a shell". It doesn't drop to a shell
      though... (busybox is included)<br>
      Booting without the initrd (or with initrd /microcode.cpio)
      results in a kernel panic. This leads me to the suspicion that
      meta-intel overwrites my initramfs (since microcode.cpio is
      present in boot)<br>
      Further more think I shouldn't even be required to set initrd for
      boot since it should be embedded into the kernel ?
      (INITRAMFS_IMAGE_BUNDLE=3D"1") I got the relevant variables from
      bitbake -e here, maybe someone more experienced can spot an error
      ?</p>
    <p># $INITRAMFS_FSTYPES [2 operations]<br>
      #=C2=A0=C2=A0 set /opt/thudPoky/meta/conf/documentation.conf:228<br>
      #=C2=A0=C2=A0=C2=A0=C2=A0 [doc] "Defines the format for the output i=
mage of an initial
      RAM disk (initramfs), which is used during boot."<br>
      #=C2=A0=C2=A0 set? /opt/thudPoky/meta/conf/bitbake.conf:770<br>
      #=C2=A0=C2=A0=C2=A0=C2=A0 "cpio.gz"<br>
      # pre-expansion value:<br>
      #=C2=A0=C2=A0 "cpio.gz"<br>
      INITRAMFS_FSTYPES=3D"cpio.gz"<br>
      #<br>
      # $INITRAMFS_IMAGE<br>
      #=C2=A0=C2=A0 set /opt/thudPoky/build/conf/local.conf:257<br>
      #=C2=A0=C2=A0=C2=A0=C2=A0 "core-image-minimal-initramfs"<br>
      INITRAMFS_IMAGE=3D"core-image-minimal-initramfs"<br>
      #<br>
      # $INITRAMFS_IMAGE_BUNDLE<br>
      #=C2=A0=C2=A0 set /opt/thudPoky/build/conf/local.conf:258<br>
      #=C2=A0=C2=A0=C2=A0=C2=A0 "1"<br>
      INITRAMFS_IMAGE_BUNDLE=3D"1"<br>
      #<br>
      # $INITRAMFS_MAXSIZE [2 operations]<br>
      #=C2=A0=C2=A0 set /opt/thudPoky/meta-ccns5/conf/machine/ccns5.conf:3=
4<br>
      #=C2=A0=C2=A0=C2=A0=C2=A0 "200000"<br>
      #=C2=A0=C2=A0 set /opt/thudPoky/meta/conf/bitbake.conf:774<br>
      #=C2=A0=C2=A0=C2=A0=C2=A0 [_defaultval] "131072"<br>
      # pre-expansion value:<br>
      #=C2=A0=C2=A0 "200000"<br>
      INITRAMFS_MAXSIZE=3D"200000"<br>
      #<br>
      # $INITRD<br>
      #=C2=A0=C2=A0 set /opt/thudPoky/meta/conf/documentation.conf:229<br>
      #=C2=A0=C2=A0=C2=A0=C2=A0 [doc] "Indicates a list of filesystem imag=
es to concatenate
      and use as an initial RAM disk (initrd)."<br>
      #<br>
      # $INITRD_IMAGE_LIVE<br>
      #=C2=A0=C2=A0 set? /opt/thudPoky/meta/classes/image-live.bbclass:39<=
br>
      #=C2=A0=C2=A0=C2=A0=C2=A0 "${MLPREFIX}core-image-minimal-initramfs"<=
br>
      INITRD_IMAGE_LIVE=3D"core-image-minimal-initramfs"<br>
      #<br>
      # $INITRD_LIVE [2 operations]<br>
      #=C2=A0=C2=A0 _prepend
      /opt/thudPoky/meta-intel/conf/machine/include/meta-intel.inc:23<br>
      #=C2=A0=C2=A0=C2=A0=C2=A0 <a class=3D"moz-txt-link-rfc2396E" href=3D=
"mailto:${@bb.utils.contains('MACHINE_FEATURES','intel-ucode','${DEPLOY_DI=
R_IMAGE}/microcode.cpio','',d)}">"${@bb.utils.contains('MACHINE_FEATURES',=
 'intel-ucode',
      '${DEPLOY_DIR_IMAGE}/microcode.cpio ', '', d)}"</a><br>
      #=C2=A0=C2=A0 set? /opt/thudPoky/meta/classes/image-live.bbclass:40<=
br>
      #=C2=A0=C2=A0=C2=A0=C2=A0
      "${DEPLOY_DIR_IMAGE}/${INITRD_IMAGE_LIVE}-${MACHINE}.cpio.gz"<br>
      # pre-expansion value:<br>
      #=C2=A0=C2=A0 <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:${@b=
b.utils.contains('MACHINE_FEATURES','intel-ucode','${DEPLOY_DIR_IMAGE}/mic=
rocode.cpio','',d)}${DEPLOY_DIR_IMAGE}/${INITRD_IMAGE_LIVE}-${MACHINE}.cpi=
o.gz">"${@bb.utils.contains('MACHINE_FEATURES', 'intel-ucode',
      '${DEPLOY_DIR_IMAGE}/microcode.cpio ', '',
      d)}${DEPLOY_DIR_IMAGE}/${INITRD_IMAGE_LIVE}-${MACHINE}.cpio.gz"</a><=
br>
INITRD_LIVE=3D"/opt/thudPoky/build/tmp/deploy/images/ccns5/microcode.cpio
/opt/thudPoky/build/tmp/deploy/images/ccns5/core-image-minimal-initramfs-c=
cns5.cpio.gz"</p>
    <p>The last line seems strange to me because 2 different images are
      set. .cpio on it's own is not included in INITRAMFS_FSTYPES and I
      can not find any documentation on the variable INITRD_LIVE.</p>
    <p>Best regards<br>
      Moritz<br>
    </p>
    <div class=3D"moz-cite-prefix">On 01.07.19 11:19, Moritz Porst wrote:<=
br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:34ae2007-e315-4b5a-c388-9c8adab28cbd@gmx.de">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUT=
F-8">
      <p>Hello Zoran, <br>
        thanks for your answer</p>
      <div class=3D"moz-cite-prefix">On 28.06.19 14:26, Zoran
        Stojsavljevic wrote:<br>
      </div>
      <blockquote type=3D"cite"
cite=3D"mid:CAGAf8Lz2t90EjsaXPXxsSoioHb33u7dutnREiFr53NYp-WVD5A@mail.gmail=
.com">
        <meta http-equiv=3D"content-type" content=3D"text/html;
          charset=3DUTF-8">
        <div dir=3D"ltr">&gt; INITRAMFS_IMAGE =3D <span
            style=3D"color:rgb(255,0,0)"><i><b>"core-image-minimal-initram=
fs"</b></i></span><br>
          &gt; INITRAMFS_IMAGE_BUNDLE =3D "1"<br>
          ...<br>
          &gt; You can find the /var/log/dmesg here: <a
            href=3D"https://pastebin.com/ya7iCtq7I" target=3D"_blank"
            moz-do-not-send=3D"true">https://pastebin.com/ya7iCtq7I</a><br=
>
          <div><br>
          </div>
          <div>Some hints...<br>
          </div>
          <div><br>
          </div>
          <div>[1] Kernel command line: BOOT_IMAGE=3D/bzImage
            root=3DPARTUUID=3D71d1d94a-83e8-4895-98eb-35309f58119f</div>
          <div> break=3Dpremount quiet rootwait rootwait rootfstype=3Dext4=
 <span
              style=3D"color:rgb(255,0,0)"><i><b>console=3DttyS0,115200
                  console=3Dtty0</b></i></span></div>
          <div><span style=3D"color:rgb(255,0,0)"><i><b><br>
                </b></i></span></div>
          <div>
            <div
class=3D"m_7608936463979074663m_8346544213632041194m_-7765005672330660518g=
mail-de1">input:
              Video Bus as
              /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:00/inpu=
t/input7</div>
            <div
class=3D"m_7608936463979074663m_8346544213632041194m_-7765005672330660518g=
mail-de2">fbcon:
              inteldrmfb (fb0) is primary device</div>
            <div
class=3D"m_7608936463979074663m_8346544213632041194m_-7765005672330660518g=
mail-de1">Console:
              switching to colour frame buffer device 128x48</div>
            <div
class=3D"m_7608936463979074663m_8346544213632041194m_-7765005672330660518g=
mail-de1"><span
                style=3D"color:rgb(255,0,0)"><i><b>i915 0000:00:02.0: fb0:
                    inteldrmfb frame buffer device</b></i></span></div>
            snd_hda_intel 0000:00:1b.0: bound 0000:00:02.0 (ops
            i915_audio_component_bind_ops [i915])</div>
          <div><br>
          </div>
          <div>Hmmmmm... You are using console and serial, but full i915
            GFX kernel driver is still included in the build???<br>
          </div>
        </div>
      </blockquote>
      I started from the core-image-minimal to have a small image and
      extended it with the features I need, which is e.g. a graphical
      system. The console=3D[...] part in the kernel command line is
      probably a remnant but my image boots into the GUI. Is this a
      problem ?<br>
      <blockquote type=3D"cite"
cite=3D"mid:CAGAf8Lz2t90EjsaXPXxsSoioHb33u7dutnREiFr53NYp-WVD5A@mail.gmail=
.com">
        <div dir=3D"ltr">
          <div><span style=3D"color:rgb(255,0,0)"></span></div>
          <div><span style=3D"color:rgb(255,0,0)"><i><b><br>
                </b></i></span></div>
          <div><span style=3D"color:rgb(0,0,0)">[2] efi: EFI v2.31 by
              American Megatrends</span></div>
          <div><span style=3D"color:rgb(0,0,0)"><br>
            </span></div>
          <div><span style=3D"color:rgb(0,0,0)">Using AMI BIOS as boot
              loader FW... OK?! Am I correct?<br>
            </span></div>
        </div>
      </blockquote>
      My bootloader is currently grub, the EFI is AM.<br>
      <blockquote type=3D"cite"
cite=3D"mid:CAGAf8Lz2t90EjsaXPXxsSoioHb33u7dutnREiFr53NYp-WVD5A@mail.gmail=
.com">
        <div dir=3D"ltr">
          <div><span style=3D"color:rgb(0,0,0)"><br>
            </span></div>
          <div><span style=3D"color:rgb(0,0,0)">[3] smpboot: CPU0:
              Intel(R) Atom(TM) CPU =C2=A0E3825 =C2=A0@ 1.33GHz (family: 0=
x6,
              model: 0x37, stepping: 0x9)</span></div>
          <div><span style=3D"color:rgb(0,0,0)"><br>
            </span></div>
          <div><span style=3D"color:rgb(0,0,0)"></span>This is CPUID ID
            0x30679, which uses MCU... Which MicroCodeUnit? <span
              style=3D"font-size:12.8px">M0130679xxx (info from AMI BIOS)<=
/span>?<span
              style=3D"font-size:12.8px"><br>
            </span></div>
        </div>
      </blockquote>
      Sorry but I can't find this info in the EFI<br>
      <blockquote type=3D"cite"
cite=3D"mid:CAGAf8Lz2t90EjsaXPXxsSoioHb33u7dutnREiFr53NYp-WVD5A@mail.gmail=
.com">
        <div dir=3D"ltr">
          <div><span style=3D"color:rgb(0,0,0)"><br>
            </span></div>
          <div><span style=3D"color:rgb(0,0,0)">[4] Using INTEL ATOM BYT
              E3825 dual core (sans Hyper-threading), implies that you
              are using</span></div>
          <div><span style=3D"color:rgb(0,0,0)">4GB (e820 messages) as
              single channel (one memory module DDR3 as 4GB)! Am I
              correct (important)?</span></div>
        </div>
      </blockquote>
      2GB, single channel. <br>
      <blockquote type=3D"cite"
cite=3D"mid:CAGAf8Lz2t90EjsaXPXxsSoioHb33u7dutnREiFr53NYp-WVD5A@mail.gmail=
.com">
        <div dir=3D"ltr">
          <div><span style=3D"color:rgb(0,0,0)"><br>
            </span></div>
          <div><span style=3D"color:rgb(0,0,0)">[5] Dracut phase?!<br>
            </span></div>
          <div><span style=3D"color:rgb(0,0,0)">&gt; To my understanding
              the initramfs should be embedded in /boot/bzImage.<br>
              &gt; However since I use an intel platform I also have a
              /boot/microcode.cpio<br>
              &gt; which gets loaded via "initrd /microcode.cpio".
              Removing this line in<br>
              &gt; grub does not enable me to get an initramfs prompt
              either (again, using<br>
              &gt; break as option).<br>
            </span></div>
          <div><span style=3D"color:rgb(0,0,0)"><br>
            </span></div>
          <div><span style=3D"color:rgb(0,0,0)">You are obviously stopping
              in boot phase called dracut. Please, try to mount by hand</s=
pan></div>
          <div><span style=3D"color:rgb(0,0,0)">/dev/sda(whatever)... You
              should use fdisk -l command, or do ls -al /dev | grep sda
              to</span></div>
          <div><span style=3D"color:rgb(0,0,0)">dig out which partition
              you need to mount to /tmp dir to see rootfstype=3Dext4
              (HDD/SSD)<br>
            </span></div>
        </div>
      </blockquote>
      No, the boot does not stop. Even if I do issue "break=3Dpremount" I
      end up in my graphical interface with the rootfs mounted. This is
      the last message in the log:<br>
      EXT4-fs (sdb2): re-mounted. Opts: (null)<br>
      The rootfs partition is always 2, so either /dev/sda2 or /dev/sdb2
      (when booting from stick)<br>
      <blockquote type=3D"cite"
cite=3D"mid:CAGAf8Lz2t90EjsaXPXxsSoioHb33u7dutnREiFr53NYp-WVD5A@mail.gmail=
.com">
        <div dir=3D"ltr">
          <div><span style=3D"color:rgb(0,0,0)">_______<br>
            </span></div>
          <div><span style=3D"color:rgb(0,0,0)"><br>
            </span></div>
          <div><span style=3D"color:rgb(0,0,0)">Just thinking loud... .. .=
<br>
            </span></div>
          <div><span style=3D"color:rgb(0,0,0)"><br>
            </span></div>
          <div><span style=3D"color:rgb(0,0,0)">Hope this helps (has very
              little to do with YOCTO build system, BTW) . ;-)<br>
            </span></div>
          <div><span style=3D"color:rgb(0,0,0)"><br>
            </span></div>
          <div><span style=3D"color:rgb(0,0,0)">Zoran</span></div>
          <div><span style=3D"color:rgb(0,0,0)">_______<br>
            </span></div>
        </div>
        <br>
        <br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 28, 2019 at
            11:22 AM Moritz Porst &lt;<a
              href=3D"mailto:moritz.porst@gmx.de" target=3D"_blank"
              moz-do-not-send=3D"true">moritz.porst@gmx.de</a>&gt; wrote:<=
br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">Hello,<br>
            I currently try to deploy a single rootfs update mechanism
            for my<br>
            embedded device. I can't boot to initramfs using either
            "break" or<br>
            "break=3Dpremount" (without quotes...). I tried this in
            systemd-boot and<br>
            grub-efi (always efi boot) but the boot process just
            continues normally.<br>
            If I insert at the same point e.g. "quiet" this argument is
            recognised.<br>
            I boot the .wic image with a separate boot partition from a
            USB stick.<br>
            in local.conf I have set:<br>
            INITRAMFS_IMAGE =3D "core-image-minimal-initramfs"<br>
            INITRAMFS_IMAGE_BUNDLE =3D "1"<br>
            <br>
            In order to reduce complexity I now use the standard<br>
            core-image-minimal-initramfs without .bbappend. I can
            confirm (from<br>
            seeing the task) that bitbake bundled the kernel with the
            initramfs.<br>
            <br>
            You can find the /var/log/dmesg here: <a
              href=3D"https://pastebin.com/ya7iCtq7" rel=3D"noreferrer"
              target=3D"_blank" moz-do-not-send=3D"true">https://pastebin.=
com/ya7iCtq7</a><br>
            <br>
            To my understanding the initramfs should be embedded in
            /boot/bzImage.<br>
            However since I use an intel platform I also have a
            /boot/microcode.cpio<br>
            which gets loaded via "initrd /microcode.cpio". Removing
            this line in<br>
            grub does not enable me to get an initramfs prompt either
            (again, using<br>
            break as option).<br>
            <br>
            Did I forget some configuration or do I have to put the
            break statement<br>
            at a very specific position within the "linux ..." boot
            command ? Do you<br>
            know which bitbake variables to check ? (both set in
            local.conf do not<br>
            get overwritten, already checked this). I got the thud
            branch checked<br>
            out in all my meta-layers except for meta-qt which is
            currently on<br>
            master branch.<br>
            <br>
            Help is much appreciated !<br>
            <br>
            Best regards<br>
            Moritz<br>
            <br>
            -- <br>
            _______________________________________________<br>
            yocto mailing list<br>
            <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank"
              moz-do-not-send=3D"true">yocto@yoctoproject.org</a><br>
            <a href=3D"https://lists.yoctoproject.org/listinfo/yocto"
              rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true=
">https://lists.yoctoproject.org/listinfo/yocto</a><br>
          </blockquote>
        </div>
      </blockquote>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
    </blockquote>
  </body>
</html>

--------------273F62890BC2274BA6050E1A--
