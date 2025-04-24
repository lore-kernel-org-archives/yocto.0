Return-Path: <jguittet.opensource@witekio.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF490C369AB
	for <webhook@archiver.kernel.org>; Thu, 24 Apr 2025 15:07:55 +0000 (UTC)
Subject: Migration of BSP from kirkstone to scarthgap : size of binaries increased a lot, why ? gcc ? relro option ?
To: yocto@lists.yoctoproject.org
From: "Joel GUITTET" <jguittet.opensource@witekio.com>
X-Originating-Location: =?UTF-8?B?VsOpbmlzc2lldXgsIEF1dmVyZ25lLVJow7RuZS1BbHBlcywgRlI=?= (78.120.129.156)
X-Originating-Platform: Linux Chrome 135
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 24 Apr 2025 08:07:54 -0700
Message-ID: <DO1x.1745507274047614600.hB9b@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="dyTynA1zZCl8Q0Pe6vvp"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Apr 2025 15:07:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65243

--dyTynA1zZCl8Q0Pe6vvp
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

We are currently migrating a BSP from kirkstone 4.0.17 to scarthgap 5.0.8.
We observed the size of the BSP has increased a lot. It becomes a problem a=
s the QSPI size is limited, so increasing the size of the BSP means less fr=
ee space for the app.
After a small investigation we observed not a lot of changes in the rootfs.=
 The main reason the BSP is growing is the size of the binaries is growing =
(executable and libraries).
It seams an extra padding has been added with scarthgap.

Example with an objdump -h of libattr.so.1.1.2501 on scarthgap:

>=20
>=20
> objdump: Warning: Separate debug info file
> /home/jguittet/Trixell/B2349/work/trixell-workspace/build/tmp/work/txl_ez=
3-poky-linux/txl-image-initramfs/1.0/rootfs/usr/lib64/libattr.so.1.1.2501
> found, but CRC does not match - ignoring
> /home/jguittet/Trixell/B2349/work/trixell-workspace/build/tmp/work/txl_ez=
3-poky-linux/txl-image-initramfs/1.0/rootfs/usr/lib64/libattr.so.1.1.2501:
> file format elf64-little
> Sections:
> Idx Name =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Size =C2=A0 =C2=A0 =C2=A0VMA =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 LMA =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 File off=20
> Algn
> 0 .note.gnu.property 00000020 =C2=A00000000000000238 =C2=A000000000000002=
38=20
> 00000238 =C2=A02**3
> CONTENTS, ALLOC, LOAD, READONLY, DATA
> 1 .note.gnu.build-id 00000024 =C2=A00000000000000258 =C2=A000000000000002=
58=20
> 00000258 =C2=A02**2
> CONTENTS, ALLOC, LOAD, READONLY, DATA
> 2 .gnu.hash =C2=A0 =C2=A0 00000178 =C2=A00000000000000280 =C2=A0000000000=
0000280 =C2=A000000280=20
> 2**3
> CONTENTS, ALLOC, LOAD, READONLY, DATA
> 3 .dynsym =C2=A0 =C2=A0 =C2=A0 000006a8 =C2=A000000000000003f8 =C2=A00000=
0000000003f8 =C2=A0000003f8=20
> 2**3
> CONTENTS, ALLOC, LOAD, READONLY, DATA
> 4 .dynstr =C2=A0 =C2=A0 =C2=A0 0000027a =C2=A00000000000000aa0 =C2=A00000=
000000000aa0 =C2=A000000aa0=20
> 2**0
> CONTENTS, ALLOC, LOAD, READONLY, DATA
> 5 .gnu.version =C2=A00000008e =C2=A00000000000000d1a =C2=A00000000000000d=
1a =C2=A000000d1a=20
> 2**1
> CONTENTS, ALLOC, LOAD, READONLY, DATA
> 6 .gnu.version_d 000000a4 =C2=A00000000000000da8 =C2=A00000000000000da8 =
=C2=A000000da8=20
> 2**3
> CONTENTS, ALLOC, LOAD, READONLY, DATA
> 7 .gnu.version_r 00000040 =C2=A00000000000000e50 =C2=A00000000000000e50 =
=C2=A000000e50=20
> 2**3
> CONTENTS, ALLOC, LOAD, READONLY, DATA
> 8 .rela.dyn =C2=A0 =C2=A0 00000108 =C2=A00000000000000e90 =C2=A0000000000=
0000e90 =C2=A000000e90=20
> 2**3
> CONTENTS, ALLOC, LOAD, READONLY, DATA
> 9 .rela.plt =C2=A0 =C2=A0 000003f0 =C2=A00000000000000f98 =C2=A0000000000=
0000f98 =C2=A000000f98=20
> 2**3
> CONTENTS, ALLOC, LOAD, READONLY, DATA
> 10 .init =C2=A0 =C2=A0 =C2=A0 =C2=A0 0000001c =C2=A00000000000001388 =C2=
=A00000000000001388 =C2=A000001388=20
> 2**2
> CONTENTS, ALLOC, LOAD, READONLY, CODE
> 11 .plt =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0000002c0 =C2=A000000000000013b0=
 =C2=A000000000000013b0 =C2=A0000013b0=20
> 2**4
> CONTENTS, ALLOC, LOAD, READONLY, CODE
> 12 .text =C2=A0 =C2=A0 =C2=A0 =C2=A0 00002258 =C2=A00000000000001670 =C2=
=A00000000000001670 =C2=A000001670=20
> 2**4
> CONTENTS, ALLOC, LOAD, READONLY, CODE
> 13 .fini =C2=A0 =C2=A0 =C2=A0 =C2=A0 00000018 =C2=A000000000000038c8 =C2=
=A000000000000038c8 =C2=A0000038c8=20
> 2**2
> CONTENTS, ALLOC, LOAD, READONLY, CODE
> 14 .rodata =C2=A0 =C2=A0 =C2=A0 00000106 =C2=A000000000000038e0 =C2=A0000=
00000000038e0 =C2=A0000038e0=20
> 2**3
> CONTENTS, ALLOC, LOAD, READONLY, DATA
> 15 .eh_frame_hdr 00000114 =C2=A000000000000039e8 =C2=A000000000000039e8 =
=C2=A0000039e8=20
> 2**2
> CONTENTS, ALLOC, LOAD, READONLY, DATA
> 16 .eh_frame =C2=A0 =C2=A0 00000694 =C2=A00000000000003b00 =C2=A000000000=
00003b00 =C2=A000003b00=20
> 2**3
> CONTENTS, ALLOC, LOAD, READONLY, DATA
> 17 .init_array =C2=A0 00000008 =C2=A0000000000001fc10 =C2=A0000000000001f=
c10 =C2=A00000fc10=20
> 2**3
> CONTENTS, ALLOC, LOAD, DATA
> 18 .fini_array =C2=A0 00000008 =C2=A0000000000001fc18 =C2=A0000000000001f=
c18 =C2=A00000fc18=20
> 2**3
> CONTENTS, ALLOC, LOAD, DATA
> 19 .dynamic =C2=A0 =C2=A0 =C2=A000000230 =C2=A0000000000001fc20 =C2=A0000=
000000001fc20 =C2=A00000fc20=20
> 2**3
> CONTENTS, ALLOC, LOAD, DATA
> 20 .got =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0000001b0 =C2=A0000000000001fe50=
 =C2=A0000000000001fe50 =C2=A00000fe50=20
> 2**3
> CONTENTS, ALLOC, LOAD, DATA
> 21 .data =C2=A0 =C2=A0 =C2=A0 =C2=A0 00000008 =C2=A00000000000020000 =C2=
=A00000000000020000 =C2=A000010000=20
> 2**3
> CONTENTS, ALLOC, LOAD, DATA
> 22 .bss =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A000000010 =C2=A00000000000020008=
 =C2=A00000000000020008 =C2=A000010008=20
> 2**3
> ALLOC
> 23 .gnu_debuglink 00000018 =C2=A00000000000000000 =C2=A00000000000000000 =
=C2=A000010008=20
> 2**2
> CONTENTS, READONLY
>=20
>=20

The same objdump -h of libattr.so.1.1.2501 on kirkstone:

>=20
> Sections:
> Idx Name =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Size =C2=A0 =C2=A0 =C2=A0VMA =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 LMA =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 File off=20
> Algn
> 0 .note.gnu.property 00000020 =C2=A00000000000000238 =C2=A000000000000002=
38=20
> 00000238 =C2=A02**3
> CONTENTS, ALLOC, LOAD, READONLY, DATA
> 1 .note.gnu.build-id 00000024 =C2=A00000000000000258 =C2=A000000000000002=
58=20
> 00000258 =C2=A02**2
> CONTENTS, ALLOC, LOAD, READONLY, DATA
> 2 .gnu.hash =C2=A0 =C2=A0 00000178 =C2=A00000000000000280 =C2=A0000000000=
0000280 =C2=A000000280=20
> 2**3
> CONTENTS, ALLOC, LOAD, READONLY, DATA
> 3 .dynsym =C2=A0 =C2=A0 =C2=A0 000006a8 =C2=A000000000000003f8 =C2=A00000=
0000000003f8 =C2=A0000003f8=20
> 2**3
> CONTENTS, ALLOC, LOAD, READONLY, DATA
> 4 .dynstr =C2=A0 =C2=A0 =C2=A0 0000027a =C2=A00000000000000aa0 =C2=A00000=
000000000aa0 =C2=A000000aa0=20
> 2**0
> CONTENTS, ALLOC, LOAD, READONLY, DATA
> 5 .gnu.version =C2=A00000008e =C2=A00000000000000d1a =C2=A00000000000000d=
1a =C2=A000000d1a=20
> 2**1
> CONTENTS, ALLOC, LOAD, READONLY, DATA
> 6 .gnu.version_d 000000a4 =C2=A00000000000000da8 =C2=A00000000000000da8 =
=C2=A000000da8=20
> 2**3
> CONTENTS, ALLOC, LOAD, READONLY, DATA
> 7 .gnu.version_r 00000040 =C2=A00000000000000e50 =C2=A00000000000000e50 =
=C2=A000000e50=20
> 2**3
> CONTENTS, ALLOC, LOAD, READONLY, DATA
> 8 .rela.dyn =C2=A0 =C2=A0 00000108 =C2=A00000000000000e90 =C2=A0000000000=
0000e90 =C2=A000000e90=20
> 2**3
> CONTENTS, ALLOC, LOAD, READONLY, DATA
> 9 .rela.plt =C2=A0 =C2=A0 000003f0 =C2=A00000000000000f98 =C2=A0000000000=
0000f98 =C2=A000000f98=20
> 2**3
> CONTENTS, ALLOC, LOAD, READONLY, DATA
> 10 .init =C2=A0 =C2=A0 =C2=A0 =C2=A0 0000001c =C2=A00000000000001388 =C2=
=A00000000000001388 =C2=A000001388=20
> 2**2
> CONTENTS, ALLOC, LOAD, READONLY, CODE
> 11 .plt =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0000002c0 =C2=A000000000000013b0=
 =C2=A000000000000013b0 =C2=A0000013b0=20
> 2**4
> CONTENTS, ALLOC, LOAD, READONLY, CODE
> 12 .text =C2=A0 =C2=A0 =C2=A0 =C2=A0 000022d8 =C2=A00000000000001670 =C2=
=A00000000000001670 =C2=A000001670=20
> 2**4
> CONTENTS, ALLOC, LOAD, READONLY, CODE
> 13 .fini =C2=A0 =C2=A0 =C2=A0 =C2=A0 00000018 =C2=A00000000000003948 =C2=
=A00000000000003948 =C2=A000003948=20
> 2**2
> CONTENTS, ALLOC, LOAD, READONLY, CODE
> 14 .rodata =C2=A0 =C2=A0 =C2=A0 00000106 =C2=A00000000000003960 =C2=A0000=
0000000003960 =C2=A000003960=20
> 2**3
> CONTENTS, ALLOC, LOAD, READONLY, DATA
> 15 .eh_frame_hdr 00000114 =C2=A00000000000003a68 =C2=A00000000000003a68 =
=C2=A000003a68=20
> 2**2
> CONTENTS, ALLOC, LOAD, READONLY, DATA
> 16 .eh_frame =C2=A0 =C2=A0 000006a4 =C2=A00000000000003b80 =C2=A000000000=
00003b80 =C2=A000003b80=20
> 2**3
> CONTENTS, ALLOC, LOAD, READONLY, DATA
> 17 .init_array =C2=A0 00000008 =C2=A00000000000014c10 =C2=A00000000000014=
c10 =C2=A000004c10=20
> 2**3
> CONTENTS, ALLOC, LOAD, DATA
> 18 .fini_array =C2=A0 00000008 =C2=A00000000000014c18 =C2=A00000000000014=
c18 =C2=A000004c18=20
> 2**3
> CONTENTS, ALLOC, LOAD, DATA
> 19 .dynamic =C2=A0 =C2=A0 =C2=A000000230 =C2=A00000000000014c20 =C2=A0000=
0000000014c20 =C2=A000004c20=20
> 2**3
> CONTENTS, ALLOC, LOAD, DATA
> 20 .got =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0000001b0 =C2=A00000000000014e50=
 =C2=A00000000000014e50 =C2=A000004e50=20
> 2**3
> CONTENTS, ALLOC, LOAD, DATA
> 21 .data =C2=A0 =C2=A0 =C2=A0 =C2=A0 00000008 =C2=A00000000000015000 =C2=
=A00000000000015000 =C2=A000005000=20
> 2**3
> CONTENTS, ALLOC, LOAD, DATA
> 22 .bss =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A000000010 =C2=A00000000000015008=
 =C2=A00000000000015008 =C2=A000005008=20
> 2**3
> ALLOC
> 23 .gnu_debuglink 00000018 =C2=A00000000000000000 =C2=A00000000000000000 =
=C2=A000005008=20
> 2**2
> CONTENTS, READONLY
>=20
>=20

Difference at the init_array offset with about 50kB unused spaces, plenty o=
f zeros in the binary.
Multiple executable/libraries with additional 50kB =3D several Mega Bytes.

I suspect the evolution of GCC is the cause of this difference (GCC11 vs GC=
C13), and I don't see any changes related to this in Yocto. I have to check=
 if GCC changed his behavior or if some options have been introduced. Any f=
lag we should add maybe in the build to keep small binaries in the rootfs ?

Thanks for the feedbacks!
Joel

--dyTynA1zZCl8Q0Pe6vvp
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,</div>
<div>&nbsp;</div>
<div>We are currently migrating a BSP from kirkstone 4.0.17 to scarthgap 5.=
0.8.</div>
<div>We observed the size of the BSP has increased a lot. It becomes a prob=
lem as the QSPI size is limited, so increasing the size of the BSP means le=
ss free space for the app.</div>
<div>After a small investigation we observed not a lot of changes in the ro=
otfs. The main reason the BSP is growing is the size of the binaries is gro=
wing (executable and libraries).</div>
<div>It seams an extra padding has been added with scarthgap.</div>
<div>&nbsp;</div>
<div>Example with an objdump -h of libattr.so.1.1.2501 on scarthgap:</div>
<div>&nbsp;</div>
<blockquote>
<div><br />objdump: Warning: Separate debug info file /home/jguittet/Trixel=
l/B2349/work/trixell-workspace/build/tmp/work/txl_ez3-poky-linux/txl-image-=
initramfs/1.0/rootfs/usr/lib64/libattr.so.1.1.2501 found, but CRC does not =
match - ignoring
<div>/home/jguittet/Trixell/B2349/work/trixell-workspace/build/tmp/work/txl=
_ez3-poky-linux/txl-image-initramfs/1.0/rootfs/usr/lib64/libattr.so.1.1.250=
1: &nbsp; &nbsp; file format elf64-little</div>
<div>Sections:<br />Idx Name &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Size &nbsp; =
&nbsp; &nbsp;VMA &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; LMA &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; File off &nbsp;Algn<br />&nbsp;=
 0 .note.gnu.property 00000020 &nbsp;0000000000000238 &nbsp;000000000000023=
8 &nbsp;00000238 &nbsp;2**3<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, DATA<br />&nbsp; 1 .n=
ote.gnu.build-id 00000024 &nbsp;0000000000000258 &nbsp;0000000000000258 &nb=
sp;00000258 &nbsp;2**2<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, DATA<br />&nbsp; 2 .gnu.ha=
sh &nbsp; &nbsp; 00000178 &nbsp;0000000000000280 &nbsp;0000000000000280 &nb=
sp;00000280 &nbsp;2**3<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, DATA<br />&nbsp; 3 .dynsym=
 &nbsp; &nbsp; &nbsp; 000006a8 &nbsp;00000000000003f8 &nbsp;00000000000003f=
8 &nbsp;000003f8 &nbsp;2**3<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, DATA<br />&nbsp; 4 .d=
ynstr &nbsp; &nbsp; &nbsp; 0000027a &nbsp;0000000000000aa0 &nbsp;0000000000=
000aa0 &nbsp;00000aa0 &nbsp;2**0<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, DATA<br />&nbsp;=
 5 .gnu.version &nbsp;0000008e &nbsp;0000000000000d1a &nbsp;0000000000000d1=
a &nbsp;00000d1a &nbsp;2**1<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, DATA<br />&nbsp; 6 .g=
nu.version_d 000000a4 &nbsp;0000000000000da8 &nbsp;0000000000000da8 &nbsp;0=
0000da8 &nbsp;2**3<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, DATA<br />&nbsp; 7 .gnu.versio=
n_r 00000040 &nbsp;0000000000000e50 &nbsp;0000000000000e50 &nbsp;00000e50 &=
nbsp;2**3<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; CONTENTS, ALLOC, LOAD, READONLY, DATA<br />&nbsp; 8 .rela.dyn &nbsp; &nb=
sp; 00000108 &nbsp;0000000000000e90 &nbsp;0000000000000e90 &nbsp;00000e90 &=
nbsp;2**3<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; CONTENTS, ALLOC, LOAD, READONLY, DATA<br />&nbsp; 9 .rela.plt &nbsp; &nb=
sp; 000003f0 &nbsp;0000000000000f98 &nbsp;0000000000000f98 &nbsp;00000f98 &=
nbsp;2**3<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; CONTENTS, ALLOC, LOAD, READONLY, DATA<br />&nbsp;10 .init &nbsp; &nbsp; =
&nbsp; &nbsp; 0000001c &nbsp;0000000000001388 &nbsp;0000000000001388 &nbsp;=
00001388 &nbsp;2**2<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, CODE<br />&nbsp;11 .plt &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp;000002c0 &nbsp;00000000000013b0 &nbsp;00000000=
000013b0 &nbsp;000013b0 &nbsp;2**4<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, CODE<br />&nbs=
p;12 .text &nbsp; &nbsp; &nbsp; &nbsp; 00002258 &nbsp;0000000000001670 &nbs=
p;0000000000001670 &nbsp;00001670 &nbsp;2**4<br />&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, CODE=
<br />&nbsp;13 .fini &nbsp; &nbsp; &nbsp; &nbsp; 00000018 &nbsp;00000000000=
038c8 &nbsp;00000000000038c8 &nbsp;000038c8 &nbsp;2**2<br />&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READ=
ONLY, CODE<br />&nbsp;14 .rodata &nbsp; &nbsp; &nbsp; 00000106 &nbsp;000000=
00000038e0 &nbsp;00000000000038e0 &nbsp;000038e0 &nbsp;2**3<br />&nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD,=
 READONLY, DATA<br />&nbsp;15 .eh_frame_hdr 00000114 &nbsp;00000000000039e8=
 &nbsp;00000000000039e8 &nbsp;000039e8 &nbsp;2**2<br />&nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY,=
 DATA<br />&nbsp;16 .eh_frame &nbsp; &nbsp; 00000694 &nbsp;0000000000003b00=
 &nbsp;0000000000003b00 &nbsp;00003b00 &nbsp;2**3<br />&nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY,=
 DATA<br />&nbsp;17 .init_array &nbsp; 00000008 &nbsp;000000000001fc10 &nbs=
p;000000000001fc10 &nbsp;0000fc10 &nbsp;2**3<br />&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, DATA<br />&nbs=
p;18 .fini_array &nbsp; 00000008 &nbsp;000000000001fc18 &nbsp;000000000001f=
c18 &nbsp;0000fc18 &nbsp;2**3<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, DATA<br />&nbsp;19 .dynamic &=
nbsp; &nbsp; &nbsp;00000230 &nbsp;000000000001fc20 &nbsp;000000000001fc20 &=
nbsp;0000fc20 &nbsp;2**3<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, DATA<br />&nbsp;20 .got &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp;000001b0 &nbsp;000000000001fe50 &nbsp;000000000001f=
e50 &nbsp;0000fe50 &nbsp;2**3<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, DATA<br />&nbsp;21 .data &nbs=
p; &nbsp; &nbsp; &nbsp; 00000008 &nbsp;0000000000020000 &nbsp;0000000000020=
000 &nbsp;00010000 &nbsp;2**3<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, DATA<br />&nbsp;22 .bss &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp;00000010 &nbsp;0000000000020008 &nbsp;00000000=
00020008 &nbsp;00010008 &nbsp;2**3<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; ALLOC<br />&nbsp;23 .gnu_debuglink 00000018 &nb=
sp;0000000000000000 &nbsp;0000000000000000 &nbsp;00010008 &nbsp;2**2<br />&=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, REA=
DONLY</div>
<div>&nbsp;</div>
</div>
</blockquote>
<div>&nbsp;</div>
<div>The same objdump -h of libattr.so.1.1.2501 on kirkstone:</div>
<div>
<div>&nbsp;</div>
<blockquote>
<div>Sections:<br />Idx Name &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Size &nbsp; =
&nbsp; &nbsp;VMA &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; LMA &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; File off &nbsp;Algn<br />&nbsp;=
 0 .note.gnu.property 00000020 &nbsp;0000000000000238 &nbsp;000000000000023=
8 &nbsp;00000238 &nbsp;2**3<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, DATA<br />&nbsp; 1 .n=
ote.gnu.build-id 00000024 &nbsp;0000000000000258 &nbsp;0000000000000258 &nb=
sp;00000258 &nbsp;2**2<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, DATA<br />&nbsp; 2 .gnu.ha=
sh &nbsp; &nbsp; 00000178 &nbsp;0000000000000280 &nbsp;0000000000000280 &nb=
sp;00000280 &nbsp;2**3<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, DATA<br />&nbsp; 3 .dynsym=
 &nbsp; &nbsp; &nbsp; 000006a8 &nbsp;00000000000003f8 &nbsp;00000000000003f=
8 &nbsp;000003f8 &nbsp;2**3<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, DATA<br />&nbsp; 4 .d=
ynstr &nbsp; &nbsp; &nbsp; 0000027a &nbsp;0000000000000aa0 &nbsp;0000000000=
000aa0 &nbsp;00000aa0 &nbsp;2**0<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, DATA<br />&nbsp;=
 5 .gnu.version &nbsp;0000008e &nbsp;0000000000000d1a &nbsp;0000000000000d1=
a &nbsp;00000d1a &nbsp;2**1<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, DATA<br />&nbsp; 6 .g=
nu.version_d 000000a4 &nbsp;0000000000000da8 &nbsp;0000000000000da8 &nbsp;0=
0000da8 &nbsp;2**3<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, DATA<br />&nbsp; 7 .gnu.versio=
n_r 00000040 &nbsp;0000000000000e50 &nbsp;0000000000000e50 &nbsp;00000e50 &=
nbsp;2**3<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; CONTENTS, ALLOC, LOAD, READONLY, DATA<br />&nbsp; 8 .rela.dyn &nbsp; &nb=
sp; 00000108 &nbsp;0000000000000e90 &nbsp;0000000000000e90 &nbsp;00000e90 &=
nbsp;2**3<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; CONTENTS, ALLOC, LOAD, READONLY, DATA<br />&nbsp; 9 .rela.plt &nbsp; &nb=
sp; 000003f0 &nbsp;0000000000000f98 &nbsp;0000000000000f98 &nbsp;00000f98 &=
nbsp;2**3<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; CONTENTS, ALLOC, LOAD, READONLY, DATA<br />&nbsp;10 .init &nbsp; &nbsp; =
&nbsp; &nbsp; 0000001c &nbsp;0000000000001388 &nbsp;0000000000001388 &nbsp;=
00001388 &nbsp;2**2<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, CODE<br />&nbsp;11 .plt &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp;000002c0 &nbsp;00000000000013b0 &nbsp;00000000=
000013b0 &nbsp;000013b0 &nbsp;2**4<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, CODE<br />&nbs=
p;12 .text &nbsp; &nbsp; &nbsp; &nbsp; 000022d8 &nbsp;0000000000001670 &nbs=
p;0000000000001670 &nbsp;00001670 &nbsp;2**4<br />&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, CODE=
<br />&nbsp;13 .fini &nbsp; &nbsp; &nbsp; &nbsp; 00000018 &nbsp;00000000000=
03948 &nbsp;0000000000003948 &nbsp;00003948 &nbsp;2**2<br />&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READ=
ONLY, CODE<br />&nbsp;14 .rodata &nbsp; &nbsp; &nbsp; 00000106 &nbsp;000000=
0000003960 &nbsp;0000000000003960 &nbsp;00003960 &nbsp;2**3<br />&nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD,=
 READONLY, DATA<br />&nbsp;15 .eh_frame_hdr 00000114 &nbsp;0000000000003a68=
 &nbsp;0000000000003a68 &nbsp;00003a68 &nbsp;2**2<br />&nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY,=
 DATA<br />&nbsp;16 .eh_frame &nbsp; &nbsp; 000006a4 &nbsp;0000000000003b80=
 &nbsp;0000000000003b80 &nbsp;00003b80 &nbsp;2**3<br />&nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY,=
 DATA<br />&nbsp;17 .init_array &nbsp; 00000008 &nbsp;0000000000014c10 &nbs=
p;0000000000014c10 &nbsp;00004c10 &nbsp;2**3<br />&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, DATA<br />&nbs=
p;18 .fini_array &nbsp; 00000008 &nbsp;0000000000014c18 &nbsp;0000000000014=
c18 &nbsp;00004c18 &nbsp;2**3<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, DATA<br />&nbsp;19 .dynamic &=
nbsp; &nbsp; &nbsp;00000230 &nbsp;0000000000014c20 &nbsp;0000000000014c20 &=
nbsp;00004c20 &nbsp;2**3<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, DATA<br />&nbsp;20 .got &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp;000001b0 &nbsp;0000000000014e50 &nbsp;0000000000014=
e50 &nbsp;00004e50 &nbsp;2**3<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, DATA<br />&nbsp;21 .data &nbs=
p; &nbsp; &nbsp; &nbsp; 00000008 &nbsp;0000000000015000 &nbsp;0000000000015=
000 &nbsp;00005000 &nbsp;2**3<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, DATA<br />&nbsp;22 .bss &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp;00000010 &nbsp;0000000000015008 &nbsp;00000000=
00015008 &nbsp;00005008 &nbsp;2**3<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; ALLOC<br />&nbsp;23 .gnu_debuglink 00000018 &nb=
sp;0000000000000000 &nbsp;0000000000000000 &nbsp;00005008 &nbsp;2**2<br />&=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, REA=
DONLY</div>
<div>&nbsp;</div>
</blockquote>
<div>&nbsp;</div>
<div>Difference at the init_array offset with about 50kB unused spaces, ple=
nty of zeros in the binary.</div>
<div>Multiple executable/libraries with additional 50kB =3D several Mega By=
tes.</div>
<div>&nbsp;</div>
<div>I suspect the evolution of GCC is the cause of this difference (GCC11 =
vs GCC13), and I don't see any changes related to this in Yocto. I have to =
check if GCC changed his behavior or if some options have been introduced. =
Any flag we should add maybe in the build to keep small binaries in the roo=
tfs ?</div>
<div>&nbsp;</div>
<div>Thanks for the feedbacks!</div>
<div>Joel</div>
</div>

--dyTynA1zZCl8Q0Pe6vvp--

