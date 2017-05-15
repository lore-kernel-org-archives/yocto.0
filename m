Return-Path: <pauroy2@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF043E00911; Mon, 15 May 2017 02:52:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pauroy2[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.179 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f179.google.com (mail-ua0-f179.google.com
	[209.85.217.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FB8DE003E1
	for <yocto@yoctoproject.org>; Mon, 15 May 2017 02:52:37 -0700 (PDT)
Received: by mail-ua0-f179.google.com with SMTP id g49so75201713uaa.1
	for <yocto@yoctoproject.org>; Mon, 15 May 2017 02:52:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Y3SEEN3v1LI6eDfHjuSfoMjBRjcfUYZBZiVX3HGly5E=;
	b=eXpHUWVHIgUSij2xjSKpcBbB5AWagdTnrwSOtEFnI6BS+8jrOhxmiWMK0jlJNq9HwX
	k7h5QNulHIkzypoGvAAd7JvhTptr7azRX/J8hJICn1RyAKGPq4d/UFxs2CnUCsiupTMT
	oLz9ZoIYwMFfSJZROlXdT8T6CXnXaHd8jcclPzhKg1jPPy7k4Rrpbt0GwUwrv0p1VjWB
	lKykXSyII9YjwavYu7w6rMaJP2MoWgEHf/XctzVj4pB+oN11a7ItmkkSGDGPtOpU4svk
	HWTzIDNqQgNRLlF/+ZwThb8jMdbbMyYeCRB0hIUF0KwgucuBteZoH35RGChCSTfq9vmc
	02TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Y3SEEN3v1LI6eDfHjuSfoMjBRjcfUYZBZiVX3HGly5E=;
	b=L/DRIRI8Qqv2i3DLWOZlSznrnaoJGtuSvGiMrFdXrpqWTFaPeytrA1zrPfEcZzfFsK
	/FrUHjjDsY3AJVZTMOTj/Icr3efeO5n0qOgMRkaornufuRL4CRMW4lrhRexMlnNQ4g8j
	UNWNCphYjEqvsOOYbieznMSWyFADsv88FaDUKwidnSDkSgHSzXFz6zKowgbba4zLkXQY
	DFukWzbRyLQOP+hbRxeCRjeZY8wjFCLMVlq46gH2KyMiZcvRDbdznQzeY1tk/v/bHVqK
	ptO0XzXFbmsK4gY3W522MrRfD9vHwaODVJHRMFRnEZoT7ZrTadY1iNgcRb6sYwrAhNUE
	jk4Q==
X-Gm-Message-State: AODbwcCrt1hoTZlMKubgTVfIIQzrr23gx4VbOALpCdEK5SpE6tj0bO4h
	iR+ZAuEL4Up3u4B/3xs4If+4RLFVp2Kg5jM=
X-Received: by 10.176.0.226 with SMTP id 89mr2641594uaj.10.1494841956839; Mon,
	15 May 2017 02:52:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.77.149 with HTTP; Mon, 15 May 2017 02:52:36 -0700 (PDT)
From: Paul Roy <pauroy2@gmail.com>
Date: Mon, 15 May 2017 11:52:36 +0200
Message-ID: <CAFVox_7=0RXos320Lzr_8vpdJkTpp2UfHrvTf64qYM51S1VZGQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: kernel/ libc compatibility problems
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
X-List-Received-Date: Mon, 15 May 2017 09:52:41 -0000
Content-Type: multipart/alternative; boundary="001a113d00c0d53aae054f8d0316"

--001a113d00c0d53aae054f8d0316
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi
I=C2=B4m using Yocto to create a new machine definition for a Gedeon-LX boa=
rd. I
can compile the kernel and all the rootfs binaries, but kernel boot crashes
exactly at the /sbin/init load moment. It seems a problem with some
mismatch among kernel and libc library present in my rootfs, because if I
copy the /libs directory from my previous (old,and working) version, boot
process is successful. I think i=C2=B4ve narrowed the problem down to libc.=
so
library not been compatible with my kernel, so some problem happens just
when the kernel has to prepare the right loading enviroment (ld-linux.so /
libc etc) for first user space program (init).
Also, I have NO problems creating my Linux system with same Yocto
enviroment/recipes for other platforms, so I think the problem is I=C2=B4m =
not
correctly telling Yocto with libc version to use for my "new" machine.
Trying to change from -march=3Dgedeon to -march=3Di686 for all the compilat=
ion
flags does not change result.

How can I know where exactly is this mismatch? Where do I set specific
librart version for my compilations?

My machine definition:

DEFAULTTUNE ?=3D "x86"
TARGET_FPU ?=3D "soft"

TUNE_PKGARCH =3D "${TUNE_PKGARCH_tune-${DEFAULTTUNE}}"

# ELF32 ABI
TUNEVALID[m32] =3D "IA32 ELF32 standard ABI"
TUNECONFLICTS[m32] =3D "m64 mx32"
TUNE_ARCH .=3D "${@bb.utils.contains("TUNE_FEATURES", "m32", "i586", "" ,d)=
}"
#TUNE_CCARGS .=3D "${@bb.utils.contains("TUNE_FEATURES", "m32", " -m32", ""=
,
d)}"

#Add our tunning for this processor
TUNEVALID[geode] =3D "Optimizations for Geode LX"
TUNE_CCARGS .=3D"-Os -pipe -march=3Dgeode -mmmx -m3dnow -fomit-frame-pointe=
r"

# Another try with no success
# TUNE_CCARGS .=3D"-Os -pipe -march=3Dgeode -mno-mmx -mno-sse -mno-sse2
-mno-3dnow -fomit-frame-pointer"
# TUNE_CCARGS .=3D"-Os -pipe -march=3Di386 -mtune=3Dpentium3
-DU_HAVE_GCC_ATOMICS=3D0"
# TUNE_CCARGS .=3D"-Os -pipe -march=3Di686"


# Add our machine in case we want to override with _geode
MACHINEOVERRIDES =3D. "geode"

# Default Tune configurations
AVAILTUNES +=3D "x86"
TUNE_FEATURES_tune-x86 =3D "m32"
BASE_LIB_tune-x86 =3D "lib"
TUNE_PKGARCH_tune-x86 =3D "x86"
PACKAGE_EXTRA_ARCHS_tune-x86 =3D "${TUNE_PKGARCH_tune-x86}"

# All this is based on x86-atom-64.conf

#TARGET_ARCH =3D "i586"
TARGET_ARCH =3D "i686"
BINARY_LOCALE_ARCHES =3D. " geode"
PREFERRED_PROVIDER_virtual/xserver ?=3D "xserver-xorg"
PREFERRED_PROVIDER_virtual/libgl ?=3D "mesa"

KERNEL_IMAGETYPE =3D "bzImage"
PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"

GLIBC_ADDONS =3D "nptl"
GLIBC_EXTRA_OECONF =3D "--with-tls"
# GLIBC_EXTRA_OECONF =3D "--with-tls --with-cpu=3Dgeode"

IMAGE_FSTYPES ?=3D "ext2.gz"

MACHINE_FEATURES =3D "kernel26 serial screen keyboard pci usbhost acpi ext2
x86"
MACHINE_EXTRA_RRECOMMENDS =3D " kernel-modules"

BASE_PACKAGE_ARCH =3D "i586"

require conf/toolchain/i585-glibc-linux.conf
require conf/mvl-lsb.conf  --> It contains DISTROOVERRIDES .=3D
":linuxstdbase"

--001a113d00c0d53aae054f8d0316
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi<br></div>I=C2=B4m using Yocto to cr=
eate a new machine definition for a Gedeon-LX board. I can compile the kern=
el and all the rootfs binaries, but kernel boot crashes exactly at the /sbi=
n/init load moment. It seems a problem with some mismatch among kernel and =
libc library present in my rootfs, because if I copy the /libs directory fr=
om my previous (old,and working) version, boot process is successful. I thi=
nk i=C2=B4ve narrowed the problem down to libc.so library not been compatib=
le with my kernel, so some problem happens just when the kernel has to prep=
are the right loading enviroment (ld-linux.so / libc etc) for first user sp=
ace program (init).<br></div>Also, I have NO problems creating my Linux sys=
tem with same Yocto enviroment/recipes for other platforms, so I think the =
problem is I=C2=B4m not correctly telling Yocto with libc version to use fo=
r my &quot;new&quot; machine. Trying to change from -march=3Dgedeon to -mar=
ch=3Di686 for all the compilation flags does not change result.<br><br></di=
v>How can I know where exactly is this mismatch? Where do I set specific li=
brart version for my compilations?<br><br></div>My machine definition:<br>=
=C2=A0<br><div>DEFAULTTUNE ?=3D &quot;x86&quot;<br>TARGET_FPU ?=3D &quot;so=
ft&quot;<br><br>TUNE_PKGARCH =3D &quot;${TUNE_PKGARCH_tune-${DEFAULTTUNE}}&=
quot;<br><br># ELF32 ABI<br>TUNEVALID[m32] =3D &quot;IA32 ELF32 standard AB=
I&quot;<br>TUNECONFLICTS[m32] =3D &quot;m64 mx32&quot;<br>TUNE_ARCH .=3D &q=
uot;${@bb.utils.contains(&quot;TUNE_FEATURES&quot;, &quot;m32&quot;, &quot;=
i586&quot;, &quot;&quot; ,d)}&quot;<br>#TUNE_CCARGS .=3D &quot;${@bb.utils.=
contains(&quot;TUNE_FEATURES&quot;, &quot;m32&quot;, &quot; -m32&quot;, &qu=
ot;&quot;, d)}&quot;<br><br>#Add our tunning for this processor<br>TUNEVALI=
D[geode] =3D &quot;Optimizations for Geode LX&quot;<br>TUNE_CCARGS .=3D&quo=
t;-Os -pipe -march=3Dgeode -mmmx -m3dnow -fomit-frame-pointer&quot;<br><br>=
</div><div># Another try with no success<br></div><div># TUNE_CCARGS .=3D&q=
uot;-Os -pipe -march=3Dgeode -mno-mmx -mno-sse -mno-sse2 -mno-3dnow -fomit-=
frame-pointer&quot;<br># TUNE_CCARGS .=3D&quot;-Os -pipe -march=3Di386 -mtu=
ne=3Dpentium3 -DU_HAVE_GCC_ATOMICS=3D0&quot;<br># TUNE_CCARGS .=3D&quot;-Os=
 -pipe -march=3Di686&quot;<br><br><br># Add our machine in case we want to =
override with _geode<br>MACHINEOVERRIDES =3D. &quot;geode&quot;<br><br># De=
fault Tune configurations<br>AVAILTUNES +=3D &quot;x86&quot;<br>TUNE_FEATUR=
ES_tune-x86 =3D &quot;m32&quot;<br>BASE_LIB_tune-x86 =3D &quot;lib&quot;<br=
>TUNE_PKGARCH_tune-x86 =3D &quot;x86&quot;<br>PACKAGE_EXTRA_ARCHS_tune-x86 =
=3D &quot;${TUNE_PKGARCH_tune-x86}&quot;<br><br># All this is based on x86-=
atom-64.conf<br><br>#TARGET_ARCH =3D &quot;i586&quot;<br>TARGET_ARCH =3D &q=
uot;i686&quot;<br>BINARY_LOCALE_ARCHES =3D. &quot; geode&quot;<br>PREFERRED=
_PROVIDER_virtual/xserver ?=3D &quot;xserver-xorg&quot;<br>PREFERRED_PROVID=
ER_virtual/libgl ?=3D &quot;mesa&quot;<br><br>KERNEL_IMAGETYPE =3D &quot;bz=
Image&quot;<br>PREFERRED_PROVIDER_virtual/kernel ?=3D &quot;linux-yocto&quo=
t;<br><br>GLIBC_ADDONS =3D &quot;nptl&quot;<br>GLIBC_EXTRA_OECONF =3D &quot=
;--with-tls&quot;<br># GLIBC_EXTRA_OECONF =3D &quot;--with-tls --with-cpu=
=3Dgeode&quot;<br><br>IMAGE_FSTYPES ?=3D &quot;ext2.gz&quot;<br><br>MACHINE=
_FEATURES =3D &quot;kernel26 serial screen keyboard pci usbhost acpi ext2 x=
86&quot;<br>MACHINE_EXTRA_RRECOMMENDS =3D &quot; kernel-modules&quot;<br><b=
r>BASE_PACKAGE_ARCH =3D &quot;i586&quot;<br><br>require conf/toolchain/i585=
-glibc-linux.conf<br>require conf/mvl-lsb.conf=C2=A0 --&gt; It contains DIS=
TROOVERRIDES .=3D &quot;:linuxstdbase&quot;<br><br></div></div>

--001a113d00c0d53aae054f8d0316--
