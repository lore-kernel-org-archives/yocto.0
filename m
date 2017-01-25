Return-Path: <boguszbrodzinski@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33C0FE0088B; Wed, 25 Jan 2017 03:04:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (boguszbrodzinski[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.195 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f195.google.com (mail-io0-f195.google.com
	[209.85.223.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FF8BE0082E
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2017 03:04:17 -0800 (PST)
Received: by mail-io0-f195.google.com with SMTP id c80so1490889iod.1
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2017 03:04:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/KxUD4OJVZbwC+R9UvdIOpzoYgx9jATy2XuUqkw55mo=;
	b=hrEZ8vcvQmSagTuaHB7EfCuQbIY2FautoRdXWpj6XKD8KDDJlgmIJt/HHVbT732IWR
	lufUu0wEkom+dxAHXrPwDiX4iTrVBuAU37SGGLXYKfDrRlQUYhEn9iAyq2uldPNbIw5U
	jVn9LfyuadvzRUKgjtqx16use+nD0PHheiXqV4l9WYiXzrepzIgG91mlIrbUTlOavzok
	RE17skxitB5ynH8OPHJLqtNrniQ205CsVFaU6zrv8x0SPnaiRE2JPmriGmYVh5g7OJAu
	1CErKq5ybKrwjgfWpfQFyPemXofmS52DRAg+1idR5AhyJPRohYva32HWQI3K+27tG5WO
	In3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/KxUD4OJVZbwC+R9UvdIOpzoYgx9jATy2XuUqkw55mo=;
	b=cHcIC2qePafzr9yquf1AmKj5g6j0CCmqFLvJw7TlDw2oBKocZjgDyKzjlLxJ7DvIjb
	G4CMFO27RsMcmL1FVw8G+gjDaQtRHWGlC1KJlUmmxDLG2E0knkRIdx7QFrzcUPqvJVj7
	+m7Vkg8V+YJyAWtBNk3/DkH0MDsKcC5qw1bad4g15+5Cb5AYczy6t3MAMmwUDCsh3OZq
	IL4WXOg8P75r7WP2S+k2zj7Mvl9pYdeadDpCFRtSej9HogIVsbKcIN+p9KTuRgybB4NX
	ZbckoaMrpa3Q6XZHYFvup2AAXhA403IYWrQ9D8WYQg3b4CypMpEyFPYRcE2EKPbJa1wy
	RXlw==
X-Gm-Message-State: AIkVDXLnlaGaMUxTMFt5hi6/lSKOy/xj+cePdplT6hDY37ThPEK/1FlsQS0xStHbuNQ0vJi+rVAkYMRJOw0wuw==
X-Received: by 10.107.56.194 with SMTP id f185mr31503250ioa.137.1485342257135; 
	Wed, 25 Jan 2017 03:04:17 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.8.156 with HTTP; Wed, 25 Jan 2017 03:03:56 -0800 (PST)
In-Reply-To: <17d034a4-45e6-d672-5a72-339171254912@gmail.com>
References: <CANCRmL5xrZ+XYfcVG+V-77JFk8D-1s5PA+MDZeU9KedTEAbtEQ@mail.gmail.com>
	<17d034a4-45e6-d672-5a72-339171254912@gmail.com>
From: =?UTF-8?Q?Bogusz_Brodzi=C5=84ski?= <boguszbrodzinski@gmail.com>
Date: Wed, 25 Jan 2017 12:03:56 +0100
Message-ID: <CANCRmL7n=RhdSs=NDyrRiPLKvLBXEZu0GHyu-6SSh0N7LpD=Kg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Problems with building out-of-tree modules in morty
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
X-List-Received-Date: Wed, 25 Jan 2017 11:04:20 -0000
Content-Type: multipart/alternative; boundary=001a114ac8ea9b4a9c0546e93121

--001a114ac8ea9b4a9c0546e93121
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,
Thank you Raj.
what was missing in linux-xlnx rev (tag xilinx-v2016.1.01) was

--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -43,6 +43,7 @@ CHECKFLAGS    +=3D -D__aarch64__

 ifeq ($(CONFIG_ARM64_ERRATUM_843419), y)
 KBUILD_CFLAGS_MODULE   +=3D -mcmodel=3Dlarge
+KBUILD_CFLAGS_MODULE +=3D $(call cc-option, -mpc-relative-literal-loads)
 endif


(summary)
Linux kernel 4.4.x , aarch64 , gcc 6 , CONFIG_ARM64_ERRATUM_843419=3Dy
,  out-of-tree kernel modules , modprobe error unsupported RELA relocation:
275
solution: https://github.com/torvalds/linux/commit/
67dfa1751ce71e629aad7c438e1678ad41054677

Best regards,
Bogusz Brodzinski




On Tue, Jan 24, 2017 at 8:22 PM, Khem Raj <raj.khem@gmail.com> wrote:

>
>
> On 1/24/17 7:16 AM, Bogusz Brodzi=C5=84ski wrote:
> > Hi,
> >
> > TL;DR after migrating from jethro to morty my out-of-tree modules do no=
t
> > load.
> >
> > Long version:
> > Im developing uio driver for a custom FPGA. The base is xilinx zu15
> > (note: as the explanation will go on I *think* it will be clear that
> > this is not related to meta-xilinx).
> > It's basically a debug interface that generates IRQ-like events on file=
s
> > (poll) for newly developed/tested features. The initial structure was
> > poky jethro, meta-xilinx with linux-xlnx 4.4 for aarch64. The module is
> > basically uio driver, but creates individual uio for each signal. The
> > makefile is straight from
> > https://www.yoctoproject.org/docs/2.2/kernel-dev/kernel-dev.html and th=
e
> > recipee inherits from module.
> > When using jethro the module got built out-of-tree with no problem and =
I
> > could load it. After migrating to morty (I also bumped meta-xilinx rev,
> > but I use the same kernel SRCREV and project layer) I still can build
> > the module, but when loading it I get:
> >
> > $ modprobe uio_pdrv_testirq
> > [   79.059558] module uio_pdrv_testirq: unsupported RELA relocation: 27=
5
> > modprobe: can't load module uio_pdrv_testirq
> > (testirq/uio_pdrv_testirq.ko): invalid module format
> >
> > $ modinfo uio_pdrv_testirq
> > filename:       testirq/uio_pdrv_testirq.ko
> > license:        GPL v2
> > author:         BB
> > description:    Userspace I/O test driver irq handler
> > depends:
> > vermagic:       4.4.0-xilinx SMP preempt mod_unload modversions aarch64
> >
> > I looked for a solution and found this
> > http://lists.infradead.org/pipermail/linux-arm-kernel/
> 2015-October/375429.html
> > thread
> > I checked that I have all the ERRATUM enabled (with emphasys on
> > ARM64_ERRATUM_843419):
> > CONFIG_ARM64_ERRATUM_826319=3Dy
> > CONFIG_ARM64_ERRATUM_827319=3Dy
> > CONFIG_ARM64_ERRATUM_824069=3Dy
> > CONFIG_ARM64_ERRATUM_819472=3Dy
> > CONFIG_ARM64_ERRATUM_832075=3Dy
> > CONFIG_ARM64_ERRATUM_845719=3Dy
> > CONFIG_ARM64_ERRATUM_843419=3Dy
> >
> > and I added
> > CFLAGS_MODULE  +=3D -mcmodel=3Dlarge
> >
> > Result: no change; testirq still fails to load.
> >
> > I would be grateful for any suggestions where to look or what to do nex=
t.
> >
>
> Backport
>
> https://github.com/torvalds/linux/commit/df057cc7b4fa59e9b55f07ffdb6c62
> bf02e99a00
>
> https://github.com/torvalds/linux/commit/67dfa1751ce71e629aad7c438e1678
> ad41054677
>
> To your kernel. Additionally  you also can have gcc fix
>
> https://github.com/kraj/gcc/commit/947be775c188312ff802d9f63dbdcc
> d017cb4a29
>
> hopefully these will help
>
> > Best regards,
> > Bogusz Brodzinski
> >
> >
> >
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a114ac8ea9b4a9c0546e93121
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>Thank you Raj.</div><div>what was missing in linux=
-xlnx rev (tag xilinx-v2016.1.01) was=C2=A0</div><div><br></div><div><div>-=
-- a/arch/arm64/Makefile</div><div>+++ b/arch/arm64/Makefile</div><div>@@ -=
43,6 +43,7 @@ CHECKFLAGS =C2=A0 =C2=A0+=3D -D__aarch64__</div><div>=C2=A0</=
div><div>=C2=A0ifeq ($(CONFIG_ARM64_ERRATUM_843419), y)</div><div>=C2=A0KBU=
ILD_CFLAGS_MODULE =C2=A0 +=3D -mcmodel=3Dlarge</div><div>+KBUILD_CFLAGS_MOD=
ULE +=3D $(call cc-option, -mpc-relative-literal-loads)</div><div>=C2=A0end=
if</div></div><div><br></div><div><br></div><div>(summary)</div><div>Linux =
kernel 4.4.x , aarch64 , gcc 6 , CONFIG_ARM64_ERRATUM_843419=3Dy ,=C2=A0=C2=
=A0out-of-tree kernel modules , modprobe error=C2=A0<span style=3D"font-siz=
e:12.8px">unsupported RELA relocation: 275</span></div><div>solution:=C2=A0=
<a href=3D"https://github.com/torvalds/linux/commit/67dfa1751ce71e629aad7c4=
38e1678ad41054677" rel=3D"noreferrer" target=3D"_blank" style=3D"font-size:=
12.8px">https://github.com/torvalds/<wbr>linux/commit/<wbr>67dfa1751ce71e62=
9aad7c438e1678<wbr>ad41054677</a></div><div><br></div><div>Best regards,</d=
iv><div>Bogusz Brodzinski</div><div><br></div><div><br></div><div><br></div=
></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Ja=
n 24, 2017 at 8:22 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj=
.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:=
<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">=
<br>
<br>
On 1/24/17 7:16 AM, Bogusz Brodzi=C5=84ski wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; TL;DR after migrating from jethro to morty my out-of-tree modules do n=
ot<br>
&gt; load.<br>
&gt;<br>
&gt; Long version:<br>
&gt; Im developing uio driver for a custom FPGA. The base is xilinx zu15<br=
>
&gt; (note: as the explanation will go on I *think* it will be clear that<b=
r>
&gt; this is not related to meta-xilinx).<br>
&gt; It&#39;s basically a debug interface that generates IRQ-like events on=
 files<br>
&gt; (poll) for newly developed/tested features. The initial structure was<=
br>
&gt; poky jethro, meta-xilinx with linux-xlnx 4.4 for aarch64. The module i=
s<br>
&gt; basically uio driver, but creates individual uio for each signal. The<=
br>
&gt; makefile is straight from<br>
&gt; <a href=3D"https://www.yoctoproject.org/docs/2.2/kernel-dev/kernel-dev=
.html" rel=3D"noreferrer" target=3D"_blank">https://www.yoctoproject.org/<w=
br>docs/2.2/kernel-dev/kernel-<wbr>dev.html</a> and the<br>
&gt; recipee inherits from module.<br>
&gt; When using jethro the module got built out-of-tree with no problem and=
 I<br>
&gt; could load it. After migrating to morty (I also bumped meta-xilinx rev=
,<br>
&gt; but I use the same kernel SRCREV and project layer) I still can build<=
br>
&gt; the module, but when loading it I get:<br>
&gt;<br>
&gt; $ modprobe uio_pdrv_testirq<br>
&gt; [=C2=A0 =C2=A079.059558] module uio_pdrv_testirq: unsupported RELA rel=
ocation: 275<br>
&gt; modprobe: can&#39;t load module uio_pdrv_testirq<br>
&gt; (testirq/uio_pdrv_testirq.ko): invalid module format<br>
&gt;<br>
&gt; $ modinfo uio_pdrv_testirq<br>
&gt; filename:=C2=A0 =C2=A0 =C2=A0 =C2=A0testirq/uio_pdrv_testirq.ko<br>
&gt; license:=C2=A0 =C2=A0 =C2=A0 =C2=A0 GPL v2<br>
&gt; author:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BB<br>
&gt; description:=C2=A0 =C2=A0 Userspace I/O test driver irq handler<br>
&gt; depends:<br>
&gt; vermagic:=C2=A0 =C2=A0 =C2=A0 =C2=A04.4.0-xilinx SMP preempt mod_unloa=
d modversions aarch64<br>
&gt;<br>
&gt; I looked for a solution and found this<br>
&gt; <a href=3D"http://lists.infradead.org/pipermail/linux-arm-kernel/2015-=
October/375429.html" rel=3D"noreferrer" target=3D"_blank">http://lists.infr=
adead.org/<wbr>pipermail/linux-arm-kernel/<wbr>2015-October/375429.html</a>=
<br>
&gt; thread<br>
&gt; I checked that I have all the ERRATUM enabled (with emphasys on<br>
&gt; ARM64_ERRATUM_843419):<br>
&gt; CONFIG_ARM64_ERRATUM_826319=3Dy<br>
&gt; CONFIG_ARM64_ERRATUM_827319=3Dy<br>
&gt; CONFIG_ARM64_ERRATUM_824069=3Dy<br>
&gt; CONFIG_ARM64_ERRATUM_819472=3Dy<br>
&gt; CONFIG_ARM64_ERRATUM_832075=3Dy<br>
&gt; CONFIG_ARM64_ERRATUM_845719=3Dy<br>
&gt; CONFIG_ARM64_ERRATUM_843419=3Dy<br>
&gt;<br>
&gt; and I added<br>
&gt; CFLAGS_MODULE=C2=A0 +=3D -mcmodel=3Dlarge<br>
&gt;<br>
&gt; Result: no change; testirq still fails to load.<br>
&gt;<br>
&gt; I would be grateful for any suggestions where to look or what to do ne=
xt.<br>
&gt;<br>
<br>
</div></div>Backport<br>
<br>
<a href=3D"https://github.com/torvalds/linux/commit/df057cc7b4fa59e9b55f07f=
fdb6c62bf02e99a00" rel=3D"noreferrer" target=3D"_blank">https://github.com/=
torvalds/<wbr>linux/commit/<wbr>df057cc7b4fa59e9b55f07ffdb6c62<wbr>bf02e99a=
00</a><br>
<br>
<a href=3D"https://github.com/torvalds/linux/commit/67dfa1751ce71e629aad7c4=
38e1678ad41054677" rel=3D"noreferrer" target=3D"_blank">https://github.com/=
torvalds/<wbr>linux/commit/<wbr>67dfa1751ce71e629aad7c438e1678<wbr>ad410546=
77</a><br>
<br>
To your kernel. Additionally=C2=A0 you also can have gcc fix<br>
<br>
<a href=3D"https://github.com/kraj/gcc/commit/947be775c188312ff802d9f63dbdc=
cd017cb4a29" rel=3D"noreferrer" target=3D"_blank">https://github.com/kraj/g=
cc/<wbr>commit/<wbr>947be775c188312ff802d9f63dbdcc<wbr>d017cb4a29</a><br>
<br>
hopefully these will help<br>
<br>
&gt; Best regards,<br>
&gt; Bogusz Brodzinski<br>
&gt;<br>
&gt;<br>
&gt;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--001a114ac8ea9b4a9c0546e93121--
