Return-Path: <jguittet.opensource@witekio.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5AFCC369AB
	for <webhook@archiver.kernel.org>; Thu, 24 Apr 2025 15:11:05 +0000 (UTC)
Subject: Migration of BSP from kirkstone to scarthgap : size of binaries increased a lot, why ? gcc ? relro option ?
To: yocto@lists.yoctoproject.org
From: "Joel GUITTET" <jguittet.opensource@witekio.com>
X-Originating-Location: =?UTF-8?B?VsOpbmlzc2lldXgsIEF1dmVyZ25lLVJow7RuZS1BbHBlcywgRlI=?= (78.120.129.156)
X-Originating-Platform: Linux Chrome 135
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 24 Apr 2025 08:11:05 -0700
Message-ID: <FNzF.1745507465452371172.YxgL@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="gyIFmFjvhTBJkhts04sK"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Apr 2025 15:11:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65244

--gyIFmFjvhTBJkhts04sK
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
lag we should add maybe in the build to keep small binaries in the rootfs ?=
 I remember similar stuff related to relro option, not sure...

Thanks for the feedbacks!
Joel

--gyIFmFjvhTBJkhts04sK
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">Hello,</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">&nbsp;</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">We are currently migrating a BSP from kirkstone=
 4.0.17 to scarthgap 5.0.8.</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">We observed the size of the BSP has increased a=
 lot. It becomes a problem as the QSPI size is limited, so increasing the s=
ize of the BSP means less free space for the app.</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">After a small investigation we observed not a l=
ot of changes in the rootfs. The main reason the BSP is growing is the size=
 of the binaries is growing (executable and libraries).</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">It seams an extra padding has been added with s=
carthgap.</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">&nbsp;</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">Example with an objdump -h of libattr.so.1.1.25=
01 on scarthgap:</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">&nbsp;</div>
<blockquote style=3D"box-sizing: border-box; padding: 10px 20px; margin: 10=
px 0px; font-size: 16px; border-left: 5px solid #e0e0e0; overflow-wrap: bre=
ak-word !important; color: #333333; font-family: system-ui, 'Segoe UI', Rob=
oto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, '=
Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'=
; font-style: normal; font-variant-ligatures: normal; font-variant-caps: no=
rmal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: sta=
rt; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -=
webkit-text-stroke-width: 0px; white-space: normal; background-color: #ffff=
ff; text-decoration-thickness: initial; text-decoration-style: initial; tex=
t-decoration-color: initial;">
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
"><br style=3D"box-sizing: border-box; overflow-wrap: break-word !important=
;" />
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
">Sections:<br style=3D"box-sizing: border-box; overflow-wrap: break-word !=
important;" />Idx Name &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Size &nbsp; &nbsp;=
 &nbsp;VMA &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; LMA &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; File off &nbsp;Algn<br style=3D"box-s=
izing: border-box; overflow-wrap: break-word !important;" />&nbsp; 0 .note.=
gnu.property 00000020 &nbsp;0000000000000238 &nbsp;0000000000000238 &nbsp;0=
0000238 &nbsp;2**3<br style=3D"box-sizing: border-box; overflow-wrap: break=
-word !important;" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, DATA<br style=3D"box-sizing: bord=
er-box; overflow-wrap: break-word !important;" />&nbsp; 1 .note.gnu.build-i=
d 00000024 &nbsp;0000000000000258 &nbsp;0000000000000258 &nbsp;00000258 &nb=
sp;2**2<br style=3D"box-sizing: border-box; overflow-wrap: break-word !impo=
rtant;" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CO=
NTENTS, ALLOC, LOAD, READONLY, DATA<br style=3D"box-sizing: border-box; ove=
rflow-wrap: break-word !important;" />&nbsp; 2 .gnu.hash &nbsp; &nbsp; 0000=
0178 &nbsp;0000000000000280 &nbsp;0000000000000280 &nbsp;00000280 &nbsp;2**=
3<br style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS=
, ALLOC, LOAD, READONLY, DATA<br style=3D"box-sizing: border-box; overflow-=
wrap: break-word !important;" />&nbsp; 3 .dynsym &nbsp; &nbsp; &nbsp; 00000=
6a8 &nbsp;00000000000003f8 &nbsp;00000000000003f8 &nbsp;000003f8 &nbsp;2**3=
<br style=3D"box-sizing: border-box; overflow-wrap: break-word !important;"=
 />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS,=
 ALLOC, LOAD, READONLY, DATA<br style=3D"box-sizing: border-box; overflow-w=
rap: break-word !important;" />&nbsp; 4 .dynstr &nbsp; &nbsp; &nbsp; 000002=
7a &nbsp;0000000000000aa0 &nbsp;0000000000000aa0 &nbsp;00000aa0 &nbsp;2**0<=
br style=3D"box-sizing: border-box; overflow-wrap: break-word !important;" =
/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, =
ALLOC, LOAD, READONLY, DATA<br style=3D"box-sizing: border-box; overflow-wr=
ap: break-word !important;" />&nbsp; 5 .gnu.version &nbsp;0000008e &nbsp;00=
00000000000d1a &nbsp;0000000000000d1a &nbsp;00000d1a &nbsp;2**1<br style=3D=
"box-sizing: border-box; overflow-wrap: break-word !important;" />&nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD=
, READONLY, DATA<br style=3D"box-sizing: border-box; overflow-wrap: break-w=
ord !important;" />&nbsp; 6 .gnu.version_d 000000a4 &nbsp;0000000000000da8 =
&nbsp;0000000000000da8 &nbsp;00000da8 &nbsp;2**3<br style=3D"box-sizing: bo=
rder-box; overflow-wrap: break-word !important;" />&nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, DAT=
A<br style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
" />&nbsp; 7 .gnu.version_r 00000040 &nbsp;0000000000000e50 &nbsp;000000000=
0000e50 &nbsp;00000e50 &nbsp;2**3<br style=3D"box-sizing: border-box; overf=
low-wrap: break-word !important;" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, DATA<br style=3D"b=
ox-sizing: border-box; overflow-wrap: break-word !important;" />&nbsp; 8 .r=
ela.dyn &nbsp; &nbsp; 00000108 &nbsp;0000000000000e90 &nbsp;0000000000000e9=
0 &nbsp;00000e90 &nbsp;2**3<br style=3D"box-sizing: border-box; overflow-wr=
ap: break-word !important;" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, DATA<br style=3D"box-siz=
ing: border-box; overflow-wrap: break-word !important;" />&nbsp; 9 .rela.pl=
t &nbsp; &nbsp; 000003f0 &nbsp;0000000000000f98 &nbsp;0000000000000f98 &nbs=
p;00000f98 &nbsp;2**3<br style=3D"box-sizing: border-box; overflow-wrap: br=
eak-word !important;" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, DATA<br style=3D"box-sizing: b=
order-box; overflow-wrap: break-word !important;" />&nbsp;10 .init &nbsp; &=
nbsp; &nbsp; &nbsp; 0000001c &nbsp;0000000000001388 &nbsp;0000000000001388 =
&nbsp;00001388 &nbsp;2**2<br style=3D"box-sizing: border-box; overflow-wrap=
: break-word !important;" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, CODE<br style=3D"box-sizin=
g: border-box; overflow-wrap: break-word !important;" />&nbsp;11 .plt &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp;000002c0 &nbsp;00000000000013b0 &nbsp;00000000=
000013b0 &nbsp;000013b0 &nbsp;2**4<br style=3D"box-sizing: border-box; over=
flow-wrap: break-word !important;" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, CODE<br style=3D"=
box-sizing: border-box; overflow-wrap: break-word !important;" />&nbsp;12 .=
text &nbsp; &nbsp; &nbsp; &nbsp; 00002258 &nbsp;0000000000001670 &nbsp;0000=
000000001670 &nbsp;00001670 &nbsp;2**4<br style=3D"box-sizing: border-box; =
overflow-wrap: break-word !important;" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, CODE<br style=
=3D"box-sizing: border-box; overflow-wrap: break-word !important;" />&nbsp;=
13 .fini &nbsp; &nbsp; &nbsp; &nbsp; 00000018 &nbsp;00000000000038c8 &nbsp;=
00000000000038c8 &nbsp;000038c8 &nbsp;2**2<br style=3D"box-sizing: border-b=
ox; overflow-wrap: break-word !important;" />&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, CODE<br s=
tyle=3D"box-sizing: border-box; overflow-wrap: break-word !important;" />&n=
bsp;14 .rodata &nbsp; &nbsp; &nbsp; 00000106 &nbsp;00000000000038e0 &nbsp;0=
0000000000038e0 &nbsp;000038e0 &nbsp;2**3<br style=3D"box-sizing: border-bo=
x; overflow-wrap: break-word !important;" />&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, DATA<br st=
yle=3D"box-sizing: border-box; overflow-wrap: break-word !important;" />&nb=
sp;15 .eh_frame_hdr 00000114 &nbsp;00000000000039e8 &nbsp;00000000000039e8 =
&nbsp;000039e8 &nbsp;2**2<br style=3D"box-sizing: border-box; overflow-wrap=
: break-word !important;" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, DATA<br style=3D"box-sizin=
g: border-box; overflow-wrap: break-word !important;" />&nbsp;16 .eh_frame =
&nbsp; &nbsp; 00000694 &nbsp;0000000000003b00 &nbsp;0000000000003b00 &nbsp;=
00003b00 &nbsp;2**3<br style=3D"box-sizing: border-box; overflow-wrap: brea=
k-word !important;" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, DATA<br style=3D"box-sizing: bor=
der-box; overflow-wrap: break-word !important;" />&nbsp;17 .init_array &nbs=
p; 00000008 &nbsp;000000000001fc10 &nbsp;000000000001fc10 &nbsp;0000fc10 &n=
bsp;2**3<br style=3D"box-sizing: border-box; overflow-wrap: break-word !imp=
ortant;" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; C=
ONTENTS, ALLOC, LOAD, DATA<br style=3D"box-sizing: border-box; overflow-wra=
p: break-word !important;" />&nbsp;18 .fini_array &nbsp; 00000008 &nbsp;000=
000000001fc18 &nbsp;000000000001fc18 &nbsp;0000fc18 &nbsp;2**3<br style=3D"=
box-sizing: border-box; overflow-wrap: break-word !important;" />&nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD,=
 DATA<br style=3D"box-sizing: border-box; overflow-wrap: break-word !import=
ant;" />&nbsp;19 .dynamic &nbsp; &nbsp; &nbsp;00000230 &nbsp;000000000001fc=
20 &nbsp;000000000001fc20 &nbsp;0000fc20 &nbsp;2**3<br style=3D"box-sizing:=
 border-box; overflow-wrap: break-word !important;" />&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, DATA<br st=
yle=3D"box-sizing: border-box; overflow-wrap: break-word !important;" />&nb=
sp;20 .got &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;000001b0 &nbsp;000000000001fe5=
0 &nbsp;000000000001fe50 &nbsp;0000fe50 &nbsp;2**3<br style=3D"box-sizing: =
border-box; overflow-wrap: break-word !important;" />&nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, DATA<br sty=
le=3D"box-sizing: border-box; overflow-wrap: break-word !important;" />&nbs=
p;21 .data &nbsp; &nbsp; &nbsp; &nbsp; 00000008 &nbsp;0000000000020000 &nbs=
p;0000000000020000 &nbsp;00010000 &nbsp;2**3<br style=3D"box-sizing: border=
-box; overflow-wrap: break-word !important;" />&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, DATA<br style=3D"=
box-sizing: border-box; overflow-wrap: break-word !important;" />&nbsp;22 .=
bss &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;00000010 &nbsp;0000000000020008 &nbsp=
;0000000000020008 &nbsp;00010008 &nbsp;2**3<br style=3D"box-sizing: border-=
box; overflow-wrap: break-word !important;" />&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ALLOC<br style=3D"box-sizing: border-box;=
 overflow-wrap: break-word !important;" />&nbsp;23 .gnu_debuglink 00000018 =
&nbsp;0000000000000000 &nbsp;0000000000000000 &nbsp;00010008 &nbsp;2**2<br =
style=3D"box-sizing: border-box; overflow-wrap: break-word !important;" />&=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, REA=
DONLY</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
">&nbsp;</div>
</div>
</blockquote>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">&nbsp;</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">The same objdump -h of libattr.so.1.1.2501 on k=
irkstone:</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
">&nbsp;</div>
<blockquote style=3D"box-sizing: border-box; padding: 10px 20px; margin: 10=
px 0px; font-size: 16px; border-left: 5px solid #e0e0e0; overflow-wrap: bre=
ak-word !important;">
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
">Sections:<br style=3D"box-sizing: border-box; overflow-wrap: break-word !=
important;" />Idx Name &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Size &nbsp; &nbsp;=
 &nbsp;VMA &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; LMA &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; File off &nbsp;Algn<br style=3D"box-s=
izing: border-box; overflow-wrap: break-word !important;" />&nbsp; 0 .note.=
gnu.property 00000020 &nbsp;0000000000000238 &nbsp;0000000000000238 &nbsp;0=
0000238 &nbsp;2**3<br style=3D"box-sizing: border-box; overflow-wrap: break=
-word !important;" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, DATA<br style=3D"box-sizing: bord=
er-box; overflow-wrap: break-word !important;" />&nbsp; 1 .note.gnu.build-i=
d 00000024 &nbsp;0000000000000258 &nbsp;0000000000000258 &nbsp;00000258 &nb=
sp;2**2<br style=3D"box-sizing: border-box; overflow-wrap: break-word !impo=
rtant;" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CO=
NTENTS, ALLOC, LOAD, READONLY, DATA<br style=3D"box-sizing: border-box; ove=
rflow-wrap: break-word !important;" />&nbsp; 2 .gnu.hash &nbsp; &nbsp; 0000=
0178 &nbsp;0000000000000280 &nbsp;0000000000000280 &nbsp;00000280 &nbsp;2**=
3<br style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS=
, ALLOC, LOAD, READONLY, DATA<br style=3D"box-sizing: border-box; overflow-=
wrap: break-word !important;" />&nbsp; 3 .dynsym &nbsp; &nbsp; &nbsp; 00000=
6a8 &nbsp;00000000000003f8 &nbsp;00000000000003f8 &nbsp;000003f8 &nbsp;2**3=
<br style=3D"box-sizing: border-box; overflow-wrap: break-word !important;"=
 />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS,=
 ALLOC, LOAD, READONLY, DATA<br style=3D"box-sizing: border-box; overflow-w=
rap: break-word !important;" />&nbsp; 4 .dynstr &nbsp; &nbsp; &nbsp; 000002=
7a &nbsp;0000000000000aa0 &nbsp;0000000000000aa0 &nbsp;00000aa0 &nbsp;2**0<=
br style=3D"box-sizing: border-box; overflow-wrap: break-word !important;" =
/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, =
ALLOC, LOAD, READONLY, DATA<br style=3D"box-sizing: border-box; overflow-wr=
ap: break-word !important;" />&nbsp; 5 .gnu.version &nbsp;0000008e &nbsp;00=
00000000000d1a &nbsp;0000000000000d1a &nbsp;00000d1a &nbsp;2**1<br style=3D=
"box-sizing: border-box; overflow-wrap: break-word !important;" />&nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD=
, READONLY, DATA<br style=3D"box-sizing: border-box; overflow-wrap: break-w=
ord !important;" />&nbsp; 6 .gnu.version_d 000000a4 &nbsp;0000000000000da8 =
&nbsp;0000000000000da8 &nbsp;00000da8 &nbsp;2**3<br style=3D"box-sizing: bo=
rder-box; overflow-wrap: break-word !important;" />&nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, DAT=
A<br style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
" />&nbsp; 7 .gnu.version_r 00000040 &nbsp;0000000000000e50 &nbsp;000000000=
0000e50 &nbsp;00000e50 &nbsp;2**3<br style=3D"box-sizing: border-box; overf=
low-wrap: break-word !important;" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, DATA<br style=3D"b=
ox-sizing: border-box; overflow-wrap: break-word !important;" />&nbsp; 8 .r=
ela.dyn &nbsp; &nbsp; 00000108 &nbsp;0000000000000e90 &nbsp;0000000000000e9=
0 &nbsp;00000e90 &nbsp;2**3<br style=3D"box-sizing: border-box; overflow-wr=
ap: break-word !important;" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, DATA<br style=3D"box-siz=
ing: border-box; overflow-wrap: break-word !important;" />&nbsp; 9 .rela.pl=
t &nbsp; &nbsp; 000003f0 &nbsp;0000000000000f98 &nbsp;0000000000000f98 &nbs=
p;00000f98 &nbsp;2**3<br style=3D"box-sizing: border-box; overflow-wrap: br=
eak-word !important;" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, DATA<br style=3D"box-sizing: b=
order-box; overflow-wrap: break-word !important;" />&nbsp;10 .init &nbsp; &=
nbsp; &nbsp; &nbsp; 0000001c &nbsp;0000000000001388 &nbsp;0000000000001388 =
&nbsp;00001388 &nbsp;2**2<br style=3D"box-sizing: border-box; overflow-wrap=
: break-word !important;" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, CODE<br style=3D"box-sizin=
g: border-box; overflow-wrap: break-word !important;" />&nbsp;11 .plt &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp;000002c0 &nbsp;00000000000013b0 &nbsp;00000000=
000013b0 &nbsp;000013b0 &nbsp;2**4<br style=3D"box-sizing: border-box; over=
flow-wrap: break-word !important;" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, CODE<br style=3D"=
box-sizing: border-box; overflow-wrap: break-word !important;" />&nbsp;12 .=
text &nbsp; &nbsp; &nbsp; &nbsp; 000022d8 &nbsp;0000000000001670 &nbsp;0000=
000000001670 &nbsp;00001670 &nbsp;2**4<br style=3D"box-sizing: border-box; =
overflow-wrap: break-word !important;" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, CODE<br style=
=3D"box-sizing: border-box; overflow-wrap: break-word !important;" />&nbsp;=
13 .fini &nbsp; &nbsp; &nbsp; &nbsp; 00000018 &nbsp;0000000000003948 &nbsp;=
0000000000003948 &nbsp;00003948 &nbsp;2**2<br style=3D"box-sizing: border-b=
ox; overflow-wrap: break-word !important;" />&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, CODE<br s=
tyle=3D"box-sizing: border-box; overflow-wrap: break-word !important;" />&n=
bsp;14 .rodata &nbsp; &nbsp; &nbsp; 00000106 &nbsp;0000000000003960 &nbsp;0=
000000000003960 &nbsp;00003960 &nbsp;2**3<br style=3D"box-sizing: border-bo=
x; overflow-wrap: break-word !important;" />&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, DATA<br st=
yle=3D"box-sizing: border-box; overflow-wrap: break-word !important;" />&nb=
sp;15 .eh_frame_hdr 00000114 &nbsp;0000000000003a68 &nbsp;0000000000003a68 =
&nbsp;00003a68 &nbsp;2**2<br style=3D"box-sizing: border-box; overflow-wrap=
: break-word !important;" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, DATA<br style=3D"box-sizin=
g: border-box; overflow-wrap: break-word !important;" />&nbsp;16 .eh_frame =
&nbsp; &nbsp; 000006a4 &nbsp;0000000000003b80 &nbsp;0000000000003b80 &nbsp;=
00003b80 &nbsp;2**3<br style=3D"box-sizing: border-box; overflow-wrap: brea=
k-word !important;" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, DATA<br style=3D"box-sizing: bor=
der-box; overflow-wrap: break-word !important;" />&nbsp;17 .init_array &nbs=
p; 00000008 &nbsp;0000000000014c10 &nbsp;0000000000014c10 &nbsp;00004c10 &n=
bsp;2**3<br style=3D"box-sizing: border-box; overflow-wrap: break-word !imp=
ortant;" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; C=
ONTENTS, ALLOC, LOAD, DATA<br style=3D"box-sizing: border-box; overflow-wra=
p: break-word !important;" />&nbsp;18 .fini_array &nbsp; 00000008 &nbsp;000=
0000000014c18 &nbsp;0000000000014c18 &nbsp;00004c18 &nbsp;2**3<br style=3D"=
box-sizing: border-box; overflow-wrap: break-word !important;" />&nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD,=
 DATA<br style=3D"box-sizing: border-box; overflow-wrap: break-word !import=
ant;" />&nbsp;19 .dynamic &nbsp; &nbsp; &nbsp;00000230 &nbsp;0000000000014c=
20 &nbsp;0000000000014c20 &nbsp;00004c20 &nbsp;2**3<br style=3D"box-sizing:=
 border-box; overflow-wrap: break-word !important;" />&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, DATA<br st=
yle=3D"box-sizing: border-box; overflow-wrap: break-word !important;" />&nb=
sp;20 .got &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;000001b0 &nbsp;0000000000014e5=
0 &nbsp;0000000000014e50 &nbsp;00004e50 &nbsp;2**3<br style=3D"box-sizing: =
border-box; overflow-wrap: break-word !important;" />&nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, DATA<br sty=
le=3D"box-sizing: border-box; overflow-wrap: break-word !important;" />&nbs=
p;21 .data &nbsp; &nbsp; &nbsp; &nbsp; 00000008 &nbsp;0000000000015000 &nbs=
p;0000000000015000 &nbsp;00005000 &nbsp;2**3<br style=3D"box-sizing: border=
-box; overflow-wrap: break-word !important;" />&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, DATA<br style=3D"=
box-sizing: border-box; overflow-wrap: break-word !important;" />&nbsp;22 .=
bss &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;00000010 &nbsp;0000000000015008 &nbsp=
;0000000000015008 &nbsp;00005008 &nbsp;2**3<br style=3D"box-sizing: border-=
box; overflow-wrap: break-word !important;" />&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ALLOC<br style=3D"box-sizing: border-box;=
 overflow-wrap: break-word !important;" />&nbsp;23 .gnu_debuglink 00000018 =
&nbsp;0000000000000000 &nbsp;0000000000000000 &nbsp;00005008 &nbsp;2**2<br =
style=3D"box-sizing: border-box; overflow-wrap: break-word !important;" />&=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, REA=
DONLY</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
">&nbsp;</div>
</blockquote>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
">&nbsp;</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
">Difference at the init_array offset with about 50kB unused spaces, plenty=
 of zeros in the binary.</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
">Multiple executable/libraries with additional 50kB =3D several Mega Bytes=
.</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
">&nbsp;</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
">I suspect the evolution of GCC is the cause of this difference (GCC11 vs =
GCC13), and I don't see any changes related to this in Yocto. I have to che=
ck if GCC changed his behavior or if some options have been introduced. Any=
 flag we should add maybe in the build to keep small binaries in the rootfs=
 ? I remember similar stuff related to relro option, not sure...</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
">&nbsp;</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
">Thanks for the feedbacks!</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
">Joel</div>
</div>
</div>

--gyIFmFjvhTBJkhts04sK--

