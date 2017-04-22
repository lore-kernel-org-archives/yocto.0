Return-Path: <ayoub.zaki@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61112E00AC8; Sat, 22 Apr 2017 13:44:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ayoub.zaki[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.176 listed in list.dnswl.org]
Received: from mail-wr0-f176.google.com (mail-wr0-f176.google.com
	[209.85.128.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D6FBE00872
	for <yocto@yoctoproject.org>; Sat, 22 Apr 2017 13:44:40 -0700 (PDT)
Received: by mail-wr0-f176.google.com with SMTP id w50so48036693wrc.0
	for <yocto@yoctoproject.org>; Sat, 22 Apr 2017 13:44:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=ZP+h18WBYZzoubM9mGcveXr+rrBbm9tQEY16rEDcZmA=;
	b=pXWr2qg7iCVb4TdBeU4f1wnUybMWZTVw5F5mlTIc54zb/HP015yUbERbHy47YAhETE
	E4NbF2y8+Ulb+IMWhAOiADzkNuLilWkOMsvYdjTjBs3Q7eBvc/xTmV8s6eGnbf63Jpz4
	MsR1yQjuU62pzoTC97DDTe8hVYlFcuaGpo+SXKbthknH+W9tnXJrnarnWuaaJtwsjd+G
	ePr1710ms6nm13wWYmWqpU9Rf2RNcPAj8QVQOC/L3b8xyoTNUSnpL+9wOMYZajyFJVdM
	RfMZyZtBZQ7pjRmh/3K6CVPnSzgsF2WTJDmmYeEdDVz0winrM2r57GsxNzdEMU5V7L7H
	sh+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ZP+h18WBYZzoubM9mGcveXr+rrBbm9tQEY16rEDcZmA=;
	b=Pdlcf9fbZcEjilfrbWxsT9MZxlt/iCAnNmXkau6/8k/Af6ZZXiuCiBicAXVkNXpoqv
	ZY6d6LyV84+OpY5jZpwwhETRtqqym++qIr7aBDzRrpo8Gkqd6xI0S3CprVxRx1/uT1L+
	F6p7QO08z1p7FCrT6tnyd/Pd8dDPBeZBe7p9hyOfqtg+tYBkTi967yIO1fg2t5/tiKb4
	uCHR9JOM7nD3OmLnNF7D+bvAEIyDhVcGZ8DdWPnhUI2+Takcv+IFK488TBkIJxrHi0eH
	y4rCROH1B8J+ZkAZd6dI6n0wnVnfyDZ+pIhleM3bAiAv0xcLXLtxjv5aUm0Il5EiOcT9
	Ffnw==
X-Gm-Message-State: AN3rC/5nuauH6WNvTaZxm18TKJCuHpu8cn0txn+dHVIBCeNEKsZdsIiF
	cf067c7tbhs/97h0iMV9bH+Q9Ktd1DbF
X-Received: by 10.223.134.219 with SMTP id 27mr2550907wry.33.1492893878698;
	Sat, 22 Apr 2017 13:44:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.14.78 with HTTP; Sat, 22 Apr 2017 13:44:38 -0700 (PDT)
From: Ayoub Zaki <ayoub.zaki@googlemail.com>
Date: Sat, 22 Apr 2017 22:44:38 +0200
Message-ID: <CA+-BmJYbLDshQ9pemmKy2JT4OkpLRsZCjdYW53yHvHsY=5Q_yQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Prelinking not working
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
X-List-Received-Date: Sat, 22 Apr 2017 20:44:44 -0000
Content-Type: multipart/alternative; boundary=001a11491f7653c714054dc771f1

--001a11491f7653c714054dc771f1
Content-Type: text/plain; charset=UTF-8

Hello all,

I'm trying to build an image with prelinked binaries to have better
start-up performance.
my target is a beaglebone-black default configured with hard-float-point
and a morty branch.

here are the steps I followed from the manual :

http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#ref-classes-image-prelink

1) in my image recipe included image prelink bbclass:

  inherit image-prelink

2) Added in my local.conf :

USER_CLASSES ?= "buildstats image-mklibs image-prelink"

3) Built my image !

wheninspecting a binary for example busybox there is no prelink section !

arm-poky-linux-readelf -S busybox
There are 28 section headers, starting at offset 0x84870:

Section Headers:
  [Nr] Name              Type            Addr     Off    Size   ES Flg Lk
Inf Al
  [ 0]                   NULL            00000000 000000 000000 00      0
0  0
  [ 1] .interp           PROGBITS        00010134 000134 000019 00   A  0
0  1
  [ 2] .note.ABI-tag     NOTE            00010150 000150 000020 00   A  0
0  4
  [ 3] .note.gnu.build-i NOTE            00010170 000170 000024 00   A  0
0  4
  [ 4] .gnu.hash         GNU_HASH        00010194 000194 000f04 04   A  5
0  4
  [ 5] .dynsym           DYNSYM          00011098 001098 001400 10   A  6
1  4
  [ 6] .dynstr           STRTAB          00012498 002498 000a27 00   A  0
0  1
  [ 7] .gnu.version      VERSYM          00012ec0 002ec0 000280 02   A  5
0  2
  [ 8] .gnu.version_r    VERNEED         00013140 003140 000040 00   A  6
2  4
  [ 9] .rel.dyn          REL             00013180 003180 000048 08   A  5
0  4
  [10] .rel.plt          REL             000131c8 0031c8 000990 08  AI  5
 22  4
  [11] .init             PROGBITS        00013b58 003b58 00000c 00  AX  0
0  4
  [12] .plt              PROGBITS        00013b64 003b64 000e6c 04  AX  0
0  4
  [13] .text             PROGBITS        000149d0 0049d0 0703d4 00  AX  0
0  8
  [14] .fini             PROGBITS        00084da4 074da4 000008 00  AX  0
0  4
  [15] .rodata           PROGBITS        00084db0 074db0 00f201 00   A  0
0  8
  [16] .ARM.exidx        ARM_EXIDX       00093fb4 083fb4 000008 00  AL 13
0  4
  [17] .eh_frame         PROGBITS        00093fbc 083fbc 000004 00   A  0
0  4
  [18] .init_array       INIT_ARRAY      000a4000 084000 000004 04  WA  0
0  4
  [19] .fini_array       FINI_ARRAY      000a4004 084004 000004 04  WA  0
0  4
  [20] .jcr              PROGBITS        000a4008 084008 000004 00  WA  0
0  4
  [21] .dynamic          DYNAMIC         000a400c 08400c 0000f0 08  WA  6
0  4
  [22] .got              PROGBITS        000a40fc 0840fc 0004dc 04  WA  0
0  4
  [23] .data             PROGBITS        000a45d8 0845d8 000145 00  WA  0
0  4
  [24] .bss              NOBITS          000a4720 08471d 002250 00  WA  0
0  8
  [25] .ARM.attributes   ARM_ATTRIBUTES  00000000 08471d 00003d 00      0
0  1
  [26] .gnu_debuglink    PROGBITS        00000000 08475a 000014 00      0
0  1
  [27] .shstrtab         STRTAB          00000000 08476e 000100 00      0
0  1
Key to Flags:
  W (write), A (alloc), X (execute), M (merge), S (strings), I (info),
  L (link order), O (extra OS processing required), G (group), T (TLS),
  C (compressed), x (unknown), o (OS specific), E (exclude),

Any hints on how prelinking works in yocto ?

thank you !

best regards

Ayoub Zaki

--001a11491f7653c714054dc771f1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello all,<div><br></div><div>I&#39;m trying to build an i=
mage with prelinked binaries to have better start-up performance.</div><div=
>my target is a beaglebone-black default configured with hard-float-point a=
nd a morty branch.</div><div><br></div><div>here are the steps I followed f=
rom the manual :</div><div><br></div><div><a href=3D"http://www.yoctoprojec=
t.org/docs/latest/mega-manual/mega-manual.html#ref-classes-image-prelink">h=
ttp://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#ref-cla=
sses-image-prelink</a><br></div><div><br></div><div>1) in my image recipe i=
ncluded image prelink bbclass:</div><div><br></div><div>=C2=A0 inherit imag=
e-prelink</div><div><br></div><div>2) Added in my local.conf :</div><div><b=
r></div><div>USER_CLASSES ?=3D &quot;buildstats image-mklibs image-prelink&=
quot;<br></div><div><br></div><div>3) Built my image !</div><div><br></div>=
<div>wheninspecting a binary for example busybox there is no prelink sectio=
n !</div><div><br></div><div><div>arm-poky-linux-readelf -S busybox=C2=A0</=
div><div>There are 28 section headers, starting at offset 0x84870:</div><di=
v><br></div><div>Section Headers:</div><div>=C2=A0 [Nr] Name =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Type =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0Addr =C2=A0 =C2=A0 Off =C2=A0 =C2=A0Size =C2=A0 ES Flg Lk Inf Al</div=
><div>=C2=A0 [ 0] =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 NULL =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A000000000 000000 000000=
 00 =C2=A0 =C2=A0 =C2=A00 =C2=A0 0 =C2=A00</div><div>=C2=A0 [ 1] .interp =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PROGBITS =C2=A0 =C2=A0 =C2=A0 =C2=A00001=
0134 000134 000019 00 =C2=A0 A =C2=A00 =C2=A0 0 =C2=A01</div><div>=C2=A0 [ =
2] .note.ABI-tag =C2=A0 =C2=A0 NOTE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A000010150 000150 000020 00 =C2=A0 A =C2=A00 =C2=A0 0 =C2=A04</div><div>=
=C2=A0 [ 3] .note.gnu.build-i NOTE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A000010170 000170 000024 00 =C2=A0 A =C2=A00 =C2=A0 0 =C2=A04</div><div>=
=C2=A0 [ 4] .gnu.hash =C2=A0 =C2=A0 =C2=A0 =C2=A0 GNU_HASH =C2=A0 =C2=A0 =
=C2=A0 =C2=A000010194 000194 000f04 04 =C2=A0 A =C2=A05 =C2=A0 0 =C2=A04</d=
iv><div>=C2=A0 [ 5] .dynsym =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 DYNSYM =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A000011098 001098 001400 10 =C2=A0 A =C2=A06 =
=C2=A0 1 =C2=A04</div><div>=C2=A0 [ 6] .dynstr =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 STRTAB =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A000012498 002498 000a27 00 =
=C2=A0 A =C2=A00 =C2=A0 0 =C2=A01</div><div>=C2=A0 [ 7] .gnu.version =C2=A0=
 =C2=A0 =C2=A0VERSYM =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A000012ec0 002ec0 0002=
80 02 =C2=A0 A =C2=A05 =C2=A0 0 =C2=A02</div><div>=C2=A0 [ 8] .gnu.version_=
r =C2=A0 =C2=A0VERNEED =C2=A0 =C2=A0 =C2=A0 =C2=A0 00013140 003140 000040 0=
0 =C2=A0 A =C2=A06 =C2=A0 2 =C2=A04</div><div>=C2=A0 [ 9] .rel.dyn =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0REL =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 00=
013180 003180 000048 08 =C2=A0 A =C2=A05 =C2=A0 0 =C2=A04</div><div>=C2=A0 =
[10] .rel.plt =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0REL =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 000131c8 0031c8 000990 08 =C2=A0AI =C2=A05 =C2=A022 =
=C2=A04</div><div>=C2=A0 [11] .init =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 PROGBITS =C2=A0 =C2=A0 =C2=A0 =C2=A000013b58 003b58 00000c 00 =C2=A0AX =
=C2=A00 =C2=A0 0 =C2=A04</div><div>=C2=A0 [12] .plt =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0PROGBITS =C2=A0 =C2=A0 =C2=A0 =C2=A000013b64 003=
b64 000e6c 04 =C2=A0AX =C2=A00 =C2=A0 0 =C2=A04</div><div>=C2=A0 [13] .text=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PROGBITS =C2=A0 =C2=A0 =C2=A0 =
=C2=A0000149d0 0049d0 0703d4 00 =C2=A0AX =C2=A00 =C2=A0 0 =C2=A08</div><div=
>=C2=A0 [14] .fini =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PROGBITS =C2=
=A0 =C2=A0 =C2=A0 =C2=A000084da4 074da4 000008 00 =C2=A0AX =C2=A00 =C2=A0 0=
 =C2=A04</div><div>=C2=A0 [15] .rodata =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 P=
ROGBITS =C2=A0 =C2=A0 =C2=A0 =C2=A000084db0 074db0 00f201 00 =C2=A0 A =C2=
=A00 =C2=A0 0 =C2=A08</div><div>=C2=A0 [16] .ARM.exidx =C2=A0 =C2=A0 =C2=A0=
 =C2=A0ARM_EXIDX =C2=A0 =C2=A0 =C2=A0 00093fb4 083fb4 000008 00 =C2=A0AL 13=
 =C2=A0 0 =C2=A04</div><div>=C2=A0 [17] .eh_frame =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 PROGBITS =C2=A0 =C2=A0 =C2=A0 =C2=A000093fbc 083fbc 000004 00 =C2=A0 A =
=C2=A00 =C2=A0 0 =C2=A04</div><div>=C2=A0 [18] .init_array =C2=A0 =C2=A0 =
=C2=A0 INIT_ARRAY =C2=A0 =C2=A0 =C2=A0000a4000 084000 000004 04 =C2=A0WA =
=C2=A00 =C2=A0 0 =C2=A04</div><div>=C2=A0 [19] .fini_array =C2=A0 =C2=A0 =
=C2=A0 FINI_ARRAY =C2=A0 =C2=A0 =C2=A0000a4004 084004 000004 04 =C2=A0WA =
=C2=A00 =C2=A0 0 =C2=A04</div><div>=C2=A0 [20] .jcr =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0PROGBITS =C2=A0 =C2=A0 =C2=A0 =C2=A0000a4008 084=
008 000004 00 =C2=A0WA =C2=A00 =C2=A0 0 =C2=A04</div><div>=C2=A0 [21] .dyna=
mic =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0DYNAMIC =C2=A0 =C2=A0 =C2=A0 =C2=A0 0=
00a400c 08400c 0000f0 08 =C2=A0WA =C2=A06 =C2=A0 0 =C2=A04</div><div>=C2=A0=
 [22] .got =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0PROGBITS =C2=A0 =
=C2=A0 =C2=A0 =C2=A0000a40fc 0840fc 0004dc 04 =C2=A0WA =C2=A00 =C2=A0 0 =C2=
=A04</div><div>=C2=A0 [23] .data =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
PROGBITS =C2=A0 =C2=A0 =C2=A0 =C2=A0000a45d8 0845d8 000145 00 =C2=A0WA =C2=
=A00 =C2=A0 0 =C2=A04</div><div>=C2=A0 [24] .bss =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0NOBITS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0000a4720 0=
8471d 002250 00 =C2=A0WA =C2=A00 =C2=A0 0 =C2=A08</div><div>=C2=A0 [25] .AR=
M.attributes =C2=A0 ARM_ATTRIBUTES =C2=A000000000 08471d 00003d 00 =C2=A0 =
=C2=A0 =C2=A00 =C2=A0 0 =C2=A01</div><div>=C2=A0 [26] .gnu_debuglink =C2=A0=
 =C2=A0PROGBITS =C2=A0 =C2=A0 =C2=A0 =C2=A000000000 08475a 000014 00 =C2=A0=
 =C2=A0 =C2=A00 =C2=A0 0 =C2=A01</div><div>=C2=A0 [27] .shstrtab =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 STRTAB =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A000000000 08476e =
000100 00 =C2=A0 =C2=A0 =C2=A00 =C2=A0 0 =C2=A01</div><div>Key to Flags:</d=
iv><div>=C2=A0 W (write), A (alloc), X (execute), M (merge), S (strings), I=
 (info),</div><div>=C2=A0 L (link order), O (extra OS processing required),=
 G (group), T (TLS),</div><div>=C2=A0 C (compressed), x (unknown), o (OS sp=
ecific), E (exclude),</div></div><div><br></div><div>Any hints on how preli=
nking works in yocto ?</div><div><br></div><div>thank you !</div><div><br><=
/div><div>best regards</div><div><br></div><div>Ayoub Zaki</div><div><br></=
div><div><br></div><div><br></div></div>

--001a11491f7653c714054dc771f1--
