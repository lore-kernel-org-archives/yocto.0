Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 448ADE013A6
	for <yocto@yoctoproject.org>; Sun, 19 Aug 2012 00:51:13 -0700 (PDT)
Received: by dadz8 with SMTP id z8so2027006dad.35
	for <yocto@yoctoproject.org>; Sun, 19 Aug 2012 00:51:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=irtnTCRRxQxEq3iJXHFehVHT4bsyeXO78zXMLc8xfHk=;
	b=TTJNphDciKRJzP+9cyhbwKPphXUILnOFfx+J9nEquvLjfdzRdAWE0zlxftx0X6QVUy
	WsXwD9pREXD0SgxnVm9wjr/ZpCEvWCcZNeDlcNoPajiqgq+kysE45QtIU/9DE5i0bqX7
	GKeQL0yee3wCK2opiA8nfNq4+sBfTPbWokbWVNg23eNpZY08lKykO/6eMUz1VONfSZQ3
	5k1sbOj47TBErIXV/fRNR8RK7xoYJNP6GGYf9pjxHShLsk41Ss9t808Di3Fp2PZLSC+9
	rf3c4Yh72RW0sis6jb5Mfq80ttK4+LiIXmChQVWogbpobAbDDNLCD2LPjdZfnqfkRH9M
	cq/g==
Received: by 10.66.88.198 with SMTP id bi6mr21347392pab.23.1345362672509;
	Sun, 19 Aug 2012 00:51:12 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id to6sm8579293pbc.12.2012.08.19.00.51.09
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 19 Aug 2012 00:51:11 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <11205BCA-6B8D-41EC-AFE1-E61864B15277@gmail.com>
Date: Sun, 19 Aug 2012 11:51:06 +0400
Message-Id: <9A7D1426-26BF-4553-A8CF-E8061E1FAD48@gmail.com>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<50226D44.3070503@mindchasers.com>
	<CAEsOVNcYoCPaT-uRFw1tzggABncZAKL+U17fYkbi_fOgdJ5CtQ@mail.gmail.com>
	<5022CDAD.5020309@mindchasers.com>
	<CAEsOVNeyn9OQQvk-Z8V0eax5sjSSwHCkuDgd3yLu60VTsSqNSA@mail.gmail.com>
	<ADE9BE2D-CF83-4389-9262-B628780B1DD4@gmail.com>
	<AE25B08B-9B55-4EBA-B39B-2BE263109AA7@gmail.com>
	<E1905E17-0DE0-46BD-B6CF-CD5B87BE816C@gmail.com>
	<D5CC2FFB-E56B-41B1-BC70-9DFC41F54988@gmail.com>
	<CAMKF1soVRDxAQ86HPpPMEB9WL142HCWkOHVqXhGQSN9b4290UQ@mail.gmail.com>
	<651EC518-2C02-4A13-8AE7-0D118BCB3719@gmail.com>
	<CAMKF1sp5hQKC3fEd4TnXHnPMjPyEsCmWHOUuHdd4RLMZMZZb0w@mail.gmail.com>
	<50739671-4885-4C82-9360-C3376960B165@gmail.com>
	<3E8B6BA0-C1A9-4861-B1A1-F15BAAB7B3ED@gmail.com>
	<CAMKF1soQ3o7E6h86xbD9Wh8jCGzHEKmvzpwpYXKjePGcQe-+Yg@mail.gmail.com>
	<6047F1EE-6246-490D-BEC3-EE93F40439FE@gmail.com>
	<4A5B27D0-AF2F-4FBE-B1DC-FEB002F80B76@gmail.com>
	<B3DEA1FA-A170-46D6-9BCA-82555C89523C@gmail.com>
	<4855B040-2194-4E0F-8B88-6C10385DBE8F@gmail.com>
	<CAMKF1sp19QKejvTx-qGQ0XpWomS67p-6D2ZS5NGe_L1hJ8Mz+w@mail.gmail.com>
	<AF18A8EF-44E8-4C11-B52B-D5C7E7B7FD85@gmail.com>
	<E089A60B-5047-407B-9CD2-8764C5416DF0@gmail.com>
	<11205BCA-6B8D-41EC-AFE1-E61864B15277@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Unable to get serial console login prompt - PowerPC 440 Virtex 5 processor
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 19 Aug 2012 07:51:13 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_385CB104-42A8-47D8-B139-366369FAD31E"

--Apple-Mail=_385CB104-42A8-47D8-B139-366369FAD31E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi Khem,

On Aug 19, 2012, at 10:36 AM, Elvis Dowson wrote:

> What should I do to enable multilib in gcc-4.7?=20
>=20
> I think at the moment, in gcc-configure-common.inc, it is disabled.
>=20
> If I were to re-enable it as follows, based on what I've diff'd from =
the Denx ELDK repo, what how does the GCCMULTILIB variable evaluate?
>=20
> -GCCMULTILIB =3D "--disable-multilib"
> +GCCMULTILIB =3D '${@base_contains("MULTILIB_ARCH_LIST", =
"${TARGET_ARCH}", "--enable-multilib", "--disable-multilib",d)}'
>=20
> I think multilib has to be enabled, no?=20
>=20
> In file gcc/config/rs6000/t-ppcos.c
>=20
> # Multilibs for a powerpc hosted ELF target (linux, SVR4)
>=20
> MULTILIB_OPTIONS	=3D msoft-float
> MULTILIB_DIRNAMES	=3D nof
> MULTILIB_EXTRA_OPTS	=3D fPIC mstrict-align
> MULTILIB_EXCEPTIONS	=3D=20
>=20
> MULTILIB_MATCHES	=3D ${MULTILIB_MATCHES_FLOAT}
>=20
>=20
> Here is the full patch, which I am assuming enables multilib, and get =
libgcc to generate the nof libraries to the target:
>=20
> diff --git a/meta/recipes-devtools/gcc/gcc-configure-common.inc =
b/meta/recipes-devtools/gcc/gcc-configure-common.inc
> index 908ad3e..a3fa294 100644
> --- a/meta/recipes-devtools/gcc/gcc-configure-common.inc
> +++ b/meta/recipes-devtools/gcc/gcc-configure-common.inc
> @@ -25,7 +25,7 @@ EXTRA_OECONF_PATHS ?=3D ""
>  EXTRA_OECONF_INITIAL ?=3D ""
>  EXTRA_OECONF_INTERMEDIATE ?=3D ""
> =20
> -GCCMULTILIB =3D "--disable-multilib"
> +GCCMULTILIB =3D '${@base_contains("MULTILIB_ARCH_LIST", =
"${TARGET_ARCH}", "--enable-multilib", "--disable-multilib",d)}'
> =20
>  EXTRA_OECONF =3D "${@['--enable-clocale=3Dgeneric', =
''][d.getVar('USE_NLS', True) !=3D 'no']} \
>                  --with-gnu-ld \
> diff --git a/meta/recipes-devtools/gcc/libgcc_4.7.bb =
b/meta/recipes-devtools/gcc/libgcc_4.7.bb
> index c796253..aac81f6 100644
> --- a/meta/recipes-devtools/gcc/libgcc_4.7.bb
> +++ b/meta/recipes-devtools/gcc/libgcc_4.7.bb
> @@ -18,7 +18,9 @@ FILES_${PN} =3D "${base_libdir}/libgcc*.so.*"
>  FILES_${PN}-dev =3D " \
>    ${base_libdir}/libgcc*.so \
>    ${libdir}/${TARGET_SYS}/${BINV}/*crt* \
> -  ${libdir}/${TARGET_SYS}/${BINV}/libgcc*"
> +  ${libdir}/${TARGET_SYS}/${BINV}/libgcc* \
> +  ${libdir}/${TARGET_SYS}/${BINV}/nof/crt* \
> +  ${libdir}/${TARGET_SYS}/${BINV}/nof/libgcc*"
>  FILES_libgcov${PKGSUFFIX}-dev =3D " \
>    ${libdir}/${TARGET_SYS}/${BINV}/libgcov.a \
>    "

Hmm, that didn't work, and no nof libraries were generated on the =
target.=20

zImage starting: loaded at 0x00800000 (sp: 0x018cdfb0)
Allocating 0x542f0c bytes for kernel ...
gunzipping (0x00000000 <- 0x0080f000:0x00a1886f)...done 0x4255c0 bytes
Attached initrd image at 0x00a19000-0x018ccf92
initrd head: 0x1f8b0808

Linux/PowerPC load: console=3DttyS0,9600n8 ip=3Doff root=3D/dev/ram rw =
rootwait init=3D/bin/sh
Finalizing device tree... flat tree at 0x18da0e0
 PM: Adding info for No Bus:ttyv9
[    0.582992] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
[    0.588287] 83e00000.serial: ttyS0 at MMIO 0x83e01003 (irq =3D 20) is =
a 16550
[    0.783785] console [ttyS0] enabled
[    0.829080] brd: module loaded
[    0.875518] loop: module loaded
[    0.912757] xsysace 83600000.sysace: Xilinx SystemACE revision 1.0.12
[    0.989471] xsysace 83600000.sysace: No CF in slot
[    1.048455] Xilinx SystemACE device driver, major=3D254
[    1.109414] xilinx_emaclite 81000000.ethernet: Device Tree Probing
[    1.182945] xilinx_emaclite 81000000.ethernet: error registering MDIO =
bus
[    1.264024] xilinx_emaclite 81000000.ethernet: MAC address is now =
00:0a:35:b7:78:00
[    1.357651] xilinx_emaclite 81000000.ethernet: Xilinx EmacLite at =
0x81000000 mapped to 0xD10A0000, irq=3D17
[    1.472557] xilinx_ps2 81480000.ps2: Device Tree Probing 'ps2'
[    1.541805] xilinx_ps2 81480000.ps2: Xilinx PS2 at 0x81480000 mapped =
to 0xd1036000, irq=3D22
[    1.641181] xilinx_ps2 81481000.ps2: Device Tree Probing 'ps2'
[    1.710886] xilinx_ps2 81481000.ps2: Xilinx PS2 at 0x81481000 mapped =
to 0xd1038000, irq=3D23
[    1.811438] mousedev: PS/2 mouse device common for all mice
[    1.879037] i2c /dev entries driver
[    1.920644] Device Tree Probing 'i2c'
[    1.964913] xilinx-iic #0 at 0x81600000 mapped to 0xD10C0000, irq=3D18
[    2.042572] TCP cubic registered
[    2.080419] NET: Registered protocol family 17
[    2.874354] atkbd serio0: keyboard reset failed on xilinxps2/serio at =
81480000
[    3.358644] RAMDISK: gzip image found at block 0
[    3.882546] input: AT Raw Set 2 keyboard as =
/devices/plb.0/xps-ps2.1/81481000.ps2/serio1/input/input0
[    6.370713] EXT2-fs (ram0): warning: mounting unchecked fs, running =
e2fsck is recommended
[    6.468154] VFS: Mounted root (ext2 filesystem) on device 1:0.
[    6.538666] Freeing unused kernel memory: 152k freed
/bin/sh: can't access tty; job control turned off
[    6.682471] Kernel panic - not syncing: Attempted to kill init!
[    6.752622] Rebooting in 180 seconds..


Elvis Dowson


--Apple-Mail=_385CB104-42A8-47D8-B139-366369FAD31E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; ">Hi =
Khem,<div><br><div><div>On Aug 19, 2012, at 10:36 AM, Elvis Dowson =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: =
space; -webkit-line-break: after-white-space; "><div>What should I do to =
enable multilib in gcc-4.7?&nbsp;</div><div><br></div><div>I think at =
the moment, in gcc-configure-common.inc, it is =
disabled.</div><div><br></div><div>If I were to re-enable it as follows, =
based on what I've diff'd from the Denx ELDK repo, what how does the =
GCCMULTILIB variable =
evaluate?</div><div><br></div><div><div>-GCCMULTILIB =3D =
"--disable-multilib"</div><div>+GCCMULTILIB =3D =
'${@base_contains("MULTILIB_ARCH_LIST", "${TARGET_ARCH}", =
"--enable-multilib", =
"--disable-multilib",d)}'</div></div><div><br></div><div>I think =
multilib has to be enabled, no?&nbsp;</div><div><br></div><div>In file =
gcc/config/rs6000/t-ppcos.c</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"># Multilibs for a =
powerpc hosted ELF target (linux, SVR4)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">MULTILIB_OPTIONS<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>=3D =
msoft-float</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">MULTILIB_DIRNAMES<span class=3D"Apple-tab-span"=
 style=3D"white-space:pre">	</span>=3D nof</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">MULTILIB_EXTRA_OPTS<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>=3D fPIC =
mstrict-align</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">MULTILIB_EXCEPTIONS<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>=3D&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">MULTILIB_MATCHES<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>=3D =
${MULTILIB_MATCHES_FLOAT}</font></div></div><div><br></div><div><br></div>=
<div>Here is the full patch, which I am assuming enables multilib, and =
get libgcc to generate the nof libraries to the =
target:</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">diff --git =
a/meta/recipes-devtools/gcc/gcc-configure-common.inc =
b/meta/recipes-devtools/gcc/gcc-configure-common.inc</font></div><div><fon=
t class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">index =
908ad3e..a3fa294 100644</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">--- =
a/meta/recipes-devtools/gcc/gcc-configure-common.inc</font></div><div><fon=
t class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+++ =
b/meta/recipes-devtools/gcc/gcc-configure-common.inc</font></div><div><fon=
t class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">@@ -25,7 +25,7 =
@@ EXTRA_OECONF_PATHS ?=3D ""</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;EXTRA_OECONF_INITIAL ?=3D ""</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;EXTRA_OECONF_INTERMEDIATE ?=3D =
""</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-GCCMULTILIB =3D =
"--disable-multilib"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">+GCCMULTILIB =3D =
'${@base_contains("MULTILIB_ARCH_LIST", "${TARGET_ARCH}", =
"--enable-multilib", "--disable-multilib",d)}'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;EXTRA_OECONF =3D =
"${@['--enable-clocale=3Dgeneric', ''][d.getVar('USE_NLS', True) !=3D =
'no']} \</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;--with-gnu-ld \</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">diff --git =
a/meta/recipes-devtools/gcc/libgcc_4.7.bb =
b/meta/recipes-devtools/gcc/libgcc_4.7.bb</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">index =
c796253..aac81f6 100644</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">--- =
a/meta/recipes-devtools/gcc/libgcc_4.7.bb</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+++ =
b/meta/recipes-devtools/gcc/libgcc_4.7.bb</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">@@ -18,7 +18,9 @@ =
FILES_${PN} =3D "${base_libdir}/libgcc*.so.*"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;FILES_${PN}-dev =3D " \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; =
&nbsp;${base_libdir}/libgcc*.so \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; =
&nbsp;${libdir}/${TARGET_SYS}/${BINV}/*crt* \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- =
&nbsp;${libdir}/${TARGET_SYS}/${BINV}/libgcc*"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+ =
&nbsp;${libdir}/${TARGET_SYS}/${BINV}/libgcc* \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+ =
&nbsp;${libdir}/${TARGET_SYS}/${BINV}/nof/crt* \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+ =
&nbsp;${libdir}/${TARGET_SYS}/${BINV}/nof/libgcc*"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;FILES_libgcov${PKGSUFFIX}-dev =3D " =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp;${libdir}/${TARGET_SYS}/${BINV}/libgcov.a =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; =
&nbsp;"</font></div></div></div></blockquote><br></div><div>Hmm, that =
didn't work, and no nof libraries were generated on the =
target.&nbsp;</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">zImage starting: =
loaded at 0x00800000 (sp: 0x018cdfb0)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Allocating =
0x542f0c bytes for kernel ...</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">gunzipping =
(0x00000000 &lt;- 0x0080f000:0x00a1886f)...done 0x4255c0 =
bytes</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">Attached initrd image at =
0x00a19000-0x018ccf92</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">initrd head: =
0x1f8b0808</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Linux/PowerPC =
load: console=3DttyS0,9600n8 ip=3Doff root=3D/dev/ram rw rootwait =
init=3D/bin/sh</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Finalizing device tree... flat tree at =
0x18da0e0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;PM: Adding info for No =
Bus:ttyv9</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.582992] Serial: 8250/16550 =
driver, 4 ports, IRQ sharing disabled</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.588287] 83e00000.serial: ttyS0 at MMIO 0x83e01003 (irq =3D 20) =
is a 16550</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.783785] console [ttyS0] =
enabled</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.829080] brd: module =
loaded</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.875518] loop: module =
loaded</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.912757] xsysace 83600000.sysace: Xilinx =
SystemACE revision 1.0.12</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.989471] xsysace 83600000.sysace: No CF in =
slot</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.048455] Xilinx SystemACE device driver, =
major=3D254</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;1.109414] xilinx_emaclite =
81000000.ethernet: Device Tree Probing</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.182945] xilinx_emaclite 81000000.ethernet: error registering =
MDIO bus</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">[ &nbsp; &nbsp;1.264024] xilinx_emaclite 81000000.ethernet: =
MAC address is now 00:0a:35:b7:78:00</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.357651] xilinx_emaclite 81000000.ethernet: Xilinx EmacLite at =
0x81000000 mapped to 0xD10A0000, irq=3D17</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.472557] xilinx_ps2 81480000.ps2: Device Tree Probing =
'ps2'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.541805] xilinx_ps2 81480000.ps2: Xilinx PS2 =
at 0x81480000 mapped to 0xd1036000, irq=3D22</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.641181] xilinx_ps2 81481000.ps2: Device Tree Probing =
'ps2'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.710886] xilinx_ps2 81481000.ps2: Xilinx PS2 =
at 0x81481000 mapped to 0xd1038000, irq=3D23</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.811438] mousedev: PS/2 mouse device common for all =
mice</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.879037] i2c /dev entries =
driver</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.920644] Device Tree Probing =
'i2c'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.964913] xilinx-iic #0 at 0x81600000 mapped =
to 0xD10C0000, irq=3D18</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;2.042572] TCP cubic =
registered</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;2.080419] NET: Registered =
protocol family 17</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;2.874354] atkbd serio0: =
keyboard reset failed on xilinxps2/serio at =
81480000</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">[ &nbsp; &nbsp;3.358644] RAMDISK: gzip image found at block =
0</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;3.882546] input: AT Raw Set 2 keyboard as =
/devices/plb.0/xps-ps2.1/81481000.ps2/serio1/input/input0</font></div><div=
><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;6.370713] EXT2-fs (ram0): warning: mounting unchecked fs, running =
e2fsck is recommended</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;6.468154] VFS: Mounted root =
(ext2 filesystem) on device 1:0.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;6.538666] Freeing unused kernel memory: 152k =
freed</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">/bin/sh: can't access tty; job control turned =
off</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;6.682471] Kernel panic - not syncing: =
Attempted to kill init!</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;6.752622] Rebooting in 180 =
seconds..</font></div><div><br></div><div><br></div><div>Elvis =
Dowson</div></div><br></div></body></html>=

--Apple-Mail=_385CB104-42A8-47D8-B139-366369FAD31E--
