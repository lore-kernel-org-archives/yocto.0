Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FC62E00DA5; Tue,  6 Mar 2018 02:39:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f50.google.com (mail-it0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41FF6E0097D
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 02:39:46 -0800 (PST)
Received: by mail-it0-f50.google.com with SMTP id v194so14165626itb.0
	for <yocto@yoctoproject.org>; Tue, 06 Mar 2018 02:39:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=LlvMRZk4n2gh3Ox56m7qKF93MfDjX8GCVh0Ie5f1rm4=;
	b=z2FJ+JCEgGfAYoy0Cl7Oj095Qzt/+NZhBtKMB9GpJoB0wCDw2sNeli8+j+RbIma8E/
	tQQVA0XgRlr6em0vmXB7HaM7jia1SJTF/WZYk+JETR4fWnpretPylTV/+APblbzWg94O
	X2GT/aouL2B9ZaaZBSODwHG2Q78BCcNcKsw9RWEI7HawGO0rGP9kskL1Q2z0ZQUx7Ig2
	Quj5Eksoe1zxRgoT2+Na9vL0rIQYuL9E/ixjNaw+8w4CRynvjFYz/cC7ZZUFLfIMlcyh
	Dt/Bxau36Bm9x4Npe17AIw/vZYiakPFk29glR4hUVMkE4hgXLXRbI23zuHZQLpK9Vu5T
	t7/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=LlvMRZk4n2gh3Ox56m7qKF93MfDjX8GCVh0Ie5f1rm4=;
	b=dCejkn7M9FPNvqa527a5yHjyF/qmKsgKHvXVtsGycwObw+a/oToYSblO+HaGxNra4Z
	tY2ftcawSDA3EufWRSkES6cyrOz2l5Im9KCZv6uXoExy073ljr8VN9SYVotydhovLiXi
	rOidM3UKw0iRWGthmHbbrBi+hGpeDKehZ4KxLtqRNcK9D6B0FwjHlG2mUTkNqHTKzfux
	5SVB+WURbd4tZ/Y9YvyhONXobysNytt1OKxKYckpOih3tgEBJ+L0+BuKJWnm/fOlWDFI
	N+Dz1GU8gl2KZDaZ83IdGNMLiLgMw809hn0ROEIEBAUAKU8aNp186UBYJ+V+T2hZlZDG
	0fCg==
X-Gm-Message-State: AElRT7G/PCUDvY+oUiKMsmrDk2vx6j4aXeZhGkgLTaBs/VOLp71EGBTq
	n3swqQuvYm4fT9mJgwsfE7HLdRhjI7mClz083Fin0g==
X-Google-Smtp-Source: AG47ELuodL1HJyl+mqT6MDY8XHDbOanVxpQjlZlzUf5zc5FUmsztpCvmHnXIY70+LnosvmaX4XfIkAUfFui+qCViN5M=
X-Received: by 10.36.185.24 with SMTP id w24mr17326566ite.127.1520332786255;
	Tue, 06 Mar 2018 02:39:46 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Tue, 6 Mar 2018 02:39:25 -0800 (PST)
In-Reply-To: <5E53D14CE4667A45B9A06760DE5D13D0F11F2DA2@ALA-MBC.corp.ad.wrs.com>
References: <5E53D14CE4667A45B9A06760DE5D13D0F11F2DA2@ALA-MBC.corp.ad.wrs.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 6 Mar 2018 10:39:25 +0000
Message-ID: <CAJTo0La4LkRgwmNqs6p9tGEj+fWY=Tm6q-ATLtTOm6TLUz3tuQ@mail.gmail.com>
To: "Reyna, David" <david.reyna@windriver.com>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Are Windows SDKs (mingw layer) supposed to work?
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
X-List-Received-Date: Tue, 06 Mar 2018 10:39:49 -0000
Content-Type: multipart/alternative; boundary="f403045d9a50aa64e90566bc0f17"

--f403045d9a50aa64e90566bc0f17
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Have you tried using 2.4 to identify when it broke?  Clearly we need to
extend the selftest so the mingw SDK is actually tested...

Ross

On 6 March 2018 at 05:32, Reyna, David <david.reyna@windriver.com> wrote:

> Hi all,
>
>
>
> I am trying to enable a customer for using YP SDKs on Windows. It
> apparently is supposed to work, but I am unable to get past fatal errors.
>
>
>
> I have looked for documentation at the YP site and the meta-mingw repo,
> but to no avail.
>
>
>
> 1) My project is a simple default =E2=80=9Cqemux86-64=E2=80=9D with YP-2.=
5 HEAD, with the
> latest =E2=80=9Cmeta-mingw=E2=80=9D layer added and <SDKMACHINE ?=3D "i68=
6-mingw32">.
>
>
>
> The SDK builds fine and I get the =E2=80=9C*.xz=E2=80=9D generated file.
>
>
>
> 2) However, when I use 7ZIP to extract it on my Windows host (which is
> recommended for XY files), I get several fatal issues.
>
>
>
>   (a) I get more than a hundred errors =E2=80=9CCan not create symbolic l=
ink:
> Access is denied=E2=80=9D.
>
>
>
> While I do not care about the ones for the bin tools in the sysroot, I do
> care that most of the cross toolchain EXE files are thusly broken, plus
> many of the libraries and header files in the sysroot.
>
>
>
> Am I missing a step?
>
>
>
> If I in fact extract this file on my Linux host, I can directly see that
> it is full of symlinks! Why are there symlinks in a Windows-specific
> tarball?
>
>
>
>   (b) If I attempt to build a simple C file from the shell in the SDK
> environment, I either get a silent failure (for the 32-bit toolchain) or =
a
> blatant error as per:
>
>
>
>   x86_64-poky-linux-gcc: error: CreateProcess: No such file or directory
>
>
>
> I am assuming this error arises from the broken symlinks, specifically al=
l
> those broken files in:
>
>
>
>   SDKDIR\sysroots\i686-pokysdk-mingw32\usr\bin\x86_64-poky-linux-gnux32
> (all zero length):
>
> 03/04/2018  08:29 PM                 0 x86_64-poky-linux-gnux32-
> addr2line.exe
>
> 03/04/2018  08:29 PM                 0 x86_64-poky-linux-gnux32-ar.exe
>
> 03/04/2018  08:29 PM                 0 x86_64-poky-linux-gnux32-as.exe
>
> 03/04/2018  08:29 PM                 0 x86_64-poky-linux-gnux32-c++.exe
>
> 03/04/2018  08:29 PM                 0 x86_64-poky-linux-gnux32-c++
> filt.exe
>
> 03/04/2018  08:29 PM                 0 x86_64-poky-linux-gnux32-cpp.exe
>
> 03/04/2018  08:29 PM                 0 x86_64-poky-linux-gnux32-
> elfedit.exe
>
> 03/04/2018  08:29 PM                 0 x86_64-poky-linux-gnux32-g++.exe
>
> 03/04/2018  08:29 PM                 0 x86_64-poky-linux-gnux32-gcc-ar.ex=
e
>
> =E2=80=A6
>
>
>
>   SDKDIR\sysroots\i686-pokysdk-mingw32\usr\libexec\x86_64-
> poky-linux\gcc\x86_64-poky-linux\7.3.0\*
>
> 03/04/2018  08:29 PM                 0 ar.exe
>
> 03/04/2018  08:29 PM                 0 as.exe
>
> 02/23/2018  03:48 PM        21,962,568 cc1.exe
>
> 02/23/2018  03:48 PM        23,256,499 cc1plus.exe
>
> 02/23/2018  03:48 PM           812,905 collect2.exe
>
> 03/04/2018  08:29 PM                 0 cpp.exe
>
> 03/04/2018  08:29 PM                 0 gcc.exe
>
> 03/04/2018  08:29 PM                 0 ld.exe
>
> 02/23/2018  03:48 PM         1,101,508 lto-wrapper.exe
>
> 03/04/2018  08:29 PM                 0 nm.exe
>
> 03/04/2018  08:29 PM                 0 objcopy.exe
>
> 03/04/2018  08:29 PM                 0 objdump.exe
>
> 03/04/2018  08:29 PM                 0 ranlib.exe
>
> 03/04/2018  08:29 PM                 0 real-ld.exe
>
> 03/04/2018  08:29 PM                 0 strip.exe
>
>
>
> 3) I have done =E2=80=98=E2=80=93v=E2=80=99 and ProcessMonitor tracing, a=
nd it all seems to come
> down to these broken links.
>
>
>
> 4) I see that Yang Wang had the same question (below), and I have not see=
n
> an answer.
>
>
>
> Please help,
>
> David Reyna
>
>
>
>
>
> *From:* yocto-bounces@yoctoproject.org [mailto:yocto-bounces@
> yoctoproject.org] *On Behalf Of *Wang, Yang Y
> *Sent:* Thursday, August 17, 2017 11:41 PM
> *To:* Yocto
> *Subject:* [yocto] toolchain from meta-mingw gets error
> x86_64-poky-linux-gcc: error: CreateProcess: No such file or directory
>
>
>
> I=E2=80=99m using Yocto krogoth and meta-mingw to build the meta-toolchai=
n for
> windows system. The build is quite smooth.
>
> I extract the built toolchain poky-glibc-x86_64-meta-
> toolchain-core2-64-toolchain-2.1.tar.xz on windows to c:/yocto2.1
>
> However when I try to run a simple build from windows cmd console after I
> set up the environment-setup-core2-64-poky-linux.bat, I got the following
> error.
>
> By further check, it seems the error is related to the symbolic link in
> folder sysroots/x86_64-pokysdk-mingw32/usr/bin/x86_64-poky-
> linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/5.3.0/ where
> the as, ar etc binutiles are the symbolic link to the file in ->
> ../../../../../bin/x86_64-poky-linux/
>
> However on windows, such =E2=80=9C../../=E2=80=9D symbolic link can=E2=80=
=99t work. Simply execute
> the symbolic =E2=80=98as.exe=E2=80=99 will get error =E2=80=9CAccess is d=
enied.=E2=80=9D
>
>
>
> Anyone has the idea on how to solve this issue?
>
>
>
> c:\Yocto2.1>%CC% c:/temp/temp/temp/test.c
>
> x86_64-poky-linux-gcc: error: CreateProcess: No such file or directory
>
>
>
> c:\Yocto2.1>%CC% c:/temp/temp/temp/test.c --verbose
>
> Using built-in specs.
>
> COLLECT_GCC=3Dx86_64-poky-linux-gcc
>
> COLLECT_LTO_WRAPPER=3Dc:/yocto2.1/sysroots/x86_64-pokysdk-
> mingw32/usr/bin/x86_64-poky-linux/../../libexec/x86_64-
> poky-linux/gcc/x86_64-poky-linux/5.3.0/lto-wrapper.exe
>
> Target: x86_64-poky-linux
>
> =E2=80=A6.
>
> GNU C11 (GCC) version 5.3.0 (x86_64-poky-linux)
>
>         compiled by GNU C version 5.3.0, GMP version 6.1.0, MPFR version
> 3.1.3, MPC version 1.0.3
>
> GGC heuristics: --param ggc-min-expand=3D100 --param ggc-min-heapsize=3D1=
31072
>
> Compiler executable checksum: 4b6c2d45c1da5393637e027504b4f2dd
>
> COLLECT_GCC_OPTIONS=3D'--sysroot=3Dc:\Yocto2.1\\sysroots\core2-64-poky-li=
nux'
> '-m64' '-march=3Dcore2' '-mtune=3Dcore2' '-msse3' '-mfpmath=3Dsse' '-v'
>
> c:/yocto2.1/sysroots/x86_64-pokysdk-mingw32/usr/bin/x86_
> 64-poky-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/5.3.0=
/as.exe
> -v --64 -o C:\Users\ywang30\AppData\Local\Temp\ccREtk4o.o
> C:\Users\ywang30\AppData\Local\Temp\ccbqVhdf.s
>
> x86_64-poky-linux-gcc: error: CreateProcess: No such file or directory
>
>
>
>
>
> c:\Yocto2.1> c:/yocto2.1/sysroots/x86_64-pokysdk-mingw32/usr/bin/x86_
> 64-poky-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-
> poky-linux/5.3.0/as.exe
>
> Access is denied.
>
>
>
> c:\Yocto2.1>ls  c:/yocto2.1/sysroots/x86_64-pokysdk-mingw32/usr/bin/x86_
> 64-poky-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/5.3.0=
/
> -l
>
> total 67783
>
> lrwxrwxrwx 1 ywang30 Domain Users       61 Aug 18 12:05 ar.exe ->
> ../../../../../bin/x86_64-poky-linux/x86_64-poky-linux-ar.exe
>
> lrwxrwxrwx 1 ywang30 Domain Users       61 Aug 18 12:05 as.exe ->
> ../../../../../bin/x86_64-poky-linux/x86_64-poky-linux-as.exe
>
> -rwxr-xr-x 1 ywang30 Domain Users 21761467 Aug 18 11:53 cc1.exe
>
> -rwxr-xr-x 1 ywang30 Domain Users 22986939 Aug 18 11:53 cc1plus.exe
>
> -rwxr-xr-x 1 ywang30 Domain Users  1658365 Aug 18 11:53 collect2.exe
>
> lrwxrwxrwx 1 ywang30 Domain Users       62 Aug 18 12:05 cpp.exe ->
> ../../../../../bin/x86_64-poky-linux/x86_64-poky-linux-cpp.exe
>
> lrwxrwxrwx 1 ywang30 Domain Users       62 Aug 18 12:05 gcc.exe ->
> ../../../../../bin/x86_64-poky-linux/x86_64-poky-linux-gcc.exe
>
> lrwxrwxrwx 1 ywang30 Domain Users       61 Aug 18 12:05 ld.exe ->
> ../../../../../bin/x86_64-poky-linux/x86_64-poky-linux-ld.exe
>
> -rwxr-xr-x 1 ywang30 Domain Users   129591 Aug 18 11:53 liblto_plugin-0.d=
ll
>
> -rw-r--r-- 1 ywang30 Domain Users    53040 Aug 18 11:53 liblto_plugin.dll=
.a
>
> -rw-r--r-- 1 ywang30 Domain Users     1381 Aug 18 11:53 liblto_plugin.la
>
> -rwxr-xr-x 1 ywang30 Domain Users  1881552 Aug 18 11:53 lto-wrapper.exe
>
> -rwxr-xr-x 1 ywang30 Domain Users 20913549 Aug 18 11:53 lto1.exe
>
> lrwxrwxrwx 1 ywang30 Domain Users       61 Aug 18 12:05 nm.exe ->
> ../../../../../bin/x86_64-poky-linux/x86_64-poky-linux-nm.exe
>
> lrwxrwxrwx 1 ywang30 Domain Users       66 Aug 18 12:05 objcopy.exe ->
> ../../../../../bin/x86_64-poky-linux/x86_64-poky-linux-objcopy.exe
>
> lrwxrwxrwx 1 ywang30 Domain Users       66 Aug 18 12:05 objdump.exe ->
> ../../../../../bin/x86_64-poky-linux/x86_64-poky-linux-objdump.exe
>
> lrwxrwxrwx 1 ywang30 Domain Users       65 Aug 18 12:05 ranlib.exe ->
> ../../../../../bin/x86_64-poky-linux/x86_64-poky-linux-ranlib.exe
>
> lrwxrwxrwx 1 ywang30 Domain Users       61 Aug 18 12:05 real-ld.exe ->
> ../../../../../bin/x86_64-poky-linux/x86_64-poky-linux-ld.exe
>
> lrwxrwxrwx 1 ywang30 Domain Users       64 Aug 18 12:05 strip.exe ->
> ../../../../../bin/x86_64-poky-linux/x86_64-poky-linux-strip.exe
>

--f403045d9a50aa64e90566bc0f17
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Have you tried using 2.4 to identify when it broke?=C2=A0 =
Clearly we need to extend the selftest so the mingw SDK is actually tested.=
..<div><br></div><div>Ross</div></div><div class=3D"gmail_extra"><br><div c=
lass=3D"gmail_quote">On 6 March 2018 at 05:32, Reyna, David <span dir=3D"lt=
r">&lt;<a href=3D"mailto:david.reyna@windriver.com" target=3D"_blank">david=
.reyna@windriver.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">





<div lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"m_-3385215147595412763WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1f497d">Hi all,<u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d">I am trying to enable =
a customer for using YP SDKs on Windows. It apparently is supposed to work,=
 but I am unable to get past fatal errors.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d">I have looked for docu=
mentation at the YP site and the meta-mingw repo, but to no avail.<u></u><u=
></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d">1) My project is a sim=
ple default =E2=80=9Cqemux86-64=E2=80=9D with YP-2.5 HEAD, with the latest =
=E2=80=9Cmeta-mingw=E2=80=9D layer added and &lt;SDKMACHINE ?=3D &quot;i686=
-mingw32&quot;&gt;.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d">The SDK builds fine an=
d I get the =E2=80=9C*.xz=E2=80=9D generated file.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d">2) However, when I use=
 7ZIP to extract it on my Windows host (which is recommended for XY files),=
 I get several fatal issues.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d">=C2=A0 (a) I get more =
than a hundred errors =E2=80=9CCan not create symbolic link: Access is deni=
ed=E2=80=9D.
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d">While I do not care ab=
out the ones for the bin tools in the sysroot, I do care that most of the c=
ross toolchain EXE files are thusly broken, plus many of the libraries and =
header files in the sysroot.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d">Am I missing a step?<u=
></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d">If I in fact extract t=
his file on my Linux host, I can directly see that it is full of symlinks! =
Why are there symlinks in a Windows-specific tarball?<u></u><u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d">=C2=A0 (b) If I attemp=
t to build a simple C file from the shell in the SDK environment, I either =
get a silent failure (for the 32-bit toolchain) or a blatant error as per:<=
u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d">=C2=A0 </span><span st=
yle=3D"font-size:10.0pt;font-family:Consolas;color:#780000;background:silve=
r">x86_64-poky-linux-gcc: error: CreateProcess: No such file or directory</=
span><span style=3D"color:#1f497d"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d">I am assuming this err=
or arises from the broken symlinks, specifically all those broken files in:=
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d">=C2=A0 SDKDIR\sysroots=
\i686-pokysdk-<wbr>mingw32\usr\bin\x86_64-poky-<wbr>linux-gnux32 (all
</span><span style=3D"color:red">zero </span><span style=3D"color:#1f497d">=
length):<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018=C2=A0 08:29 PM=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0 x86_64-poky-linux-gnux32=
-<wbr>addr2line.exe<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018=C2=A0 08:29 PM=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0 x86_64-poky-linux-gnux32=
-ar.<wbr>exe<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018=C2=A0 08:29 PM=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0 x86_64-poky-linux-gnux32=
-as.<wbr>exe<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018=C2=A0 08:29 PM=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0 x86_64-poky-linux-gnux32=
-c++.<wbr>exe<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018=C2=A0 08:29 PM=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0 x86_64-poky-linux-gnux32=
-c++<wbr>filt.exe<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018=C2=A0 08:29 PM=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0 x86_64-poky-linux-gnux32=
-cpp.<wbr>exe<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018=C2=A0 08:29 PM=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0 x86_64-poky-linux-gnux32=
-<wbr>elfedit.exe<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018=C2=A0 08:29 PM=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0 x86_64-poky-linux-gnux32=
-g++.<wbr>exe<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018=C2=A0 08:29 PM=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A00 x86_64-poky-linux-gnux32=
-gcc-<wbr>ar.exe<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>=E2=80=A6<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d">=C2=A0 SDKDIR\sysroots=
\i686-pokysdk-<wbr>mingw32\usr\libexec\x86_64-<wbr>poky-linux\gcc\x86_64-po=
ky-<wbr>linux\7.3.0\*<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018=C2=A0 08:29 PM=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0 ar.exe<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018=C2=A0 08:29 PM=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0 as.exe<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:#1f4=
97d">02/23/2018=C2=A0 03:48 PM=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 21=
,962,568 cc1.exe<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:#1f4=
97d">02/23/2018=C2=A0 03:48 PM=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 23=
,256,499 cc1plus.exe<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:#1f4=
97d">02/23/2018=C2=A0 03:48 PM=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 812,905 collect2.exe<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018=C2=A0 08:29 PM=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0 cpp.exe<u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018=C2=A0 08:29 PM=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0 gcc.exe<u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018=C2=A0 08:29 PM=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0 ld.exe<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:#1f4=
97d">02/23/2018=C2=A0 03:48 PM=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 1,101,508 lto-wrapper.exe<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018=C2=A0 08:29 PM=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0 nm.exe<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018=C2=A0 08:29 PM=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A00 objcopy.exe<u></u><u></u>=
</span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018=C2=A0 08:29 PM=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0 objdump.exe<u></u><u></u=
></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018=C2=A0 08:29 PM=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0 ranlib.exe<u></u><u></u>=
</span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018=C2=A0 08:29 PM=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0 real-ld.exe<u></u><u></u=
></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>03/04/2018=C2=A0 08:29 PM=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0 strip.exe<u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"color:red"><u></u>=C2=A0<u></u></span=
></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d">3) I have done =E2=80=
=98=E2=80=93v=E2=80=99 and ProcessMonitor tracing, and it all seems to come=
 down to these broken links.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d">4) I see that Yang Wan=
g had the same question (below), and I have not seen an answer.<u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d">Please help,<u></u><u>=
</u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d">David Reyna<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<div>
<div style=3D"border:none;border-top:solid #b5c4df 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> <a href=
=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-bounces@=
yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.o=
rg" target=3D"_blank">yocto-bounces@<wbr>yoctoproject.org</a>]
<b>On Behalf Of </b>Wang, Yang Y<br>
<b>Sent:</b> Thursday, August 17, 2017 11:41 PM<br>
<b>To:</b> Yocto<br>
<b>Subject:</b> [yocto] toolchain from meta-mingw gets error x86_64-poky-li=
nux-gcc: error: CreateProcess: No such file or directory<u></u><u></u></spa=
n></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I=E2=80=99m using Yocto krogoth and meta-mingw to bu=
ild the meta-toolchain for windows system. The build is quite smooth.<u></u=
><u></u></p>
<p class=3D"MsoNormal">I extract the built toolchain poky-glibc-x86_64-meta=
-<wbr>toolchain-core2-64-toolchain-<wbr>2.1.tar.xz on windows to c:/yocto2.=
1<u></u><u></u></p>
<p class=3D"MsoNormal">However when I try to run a simple build from window=
s cmd console after I set up the environment-setup-core2-64-<wbr>poky-linux=
.bat, I got the following error.<u></u><u></u></p>
<p class=3D"MsoNormal">By further check, it seems the error is related to t=
he symbolic link in folder sysroots/x86_64-pokysdk-<wbr>mingw32/usr/bin/x86=
_64-poky-<wbr>linux/../../libexec/x86_64-<wbr>poky-linux/gcc/x86_64-poky-<w=
br>linux/5.3.0/ where the as, ar etc binutiles are the
 symbolic link to the file in <span style=3D"background:yellow">
-&gt; ../../../../../</span>bin/x86_64-<wbr>poky-linux/<u></u><u></u></p>
<p class=3D"MsoNormal">However on windows, such =E2=80=9C../../=E2=80=9D sy=
mbolic link can=E2=80=99t work. Simply execute the symbolic =E2=80=98as.exe=
=E2=80=99 will get error =E2=80=9CAccess is denied.=E2=80=9D<u></u><u></u><=
/p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Anyone has the idea on how to solve this issue? <u><=
/u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">c:\Yocto2.1&gt;%CC% c:/temp/temp/temp/test.c<u></u><=
u></u></p>
<p class=3D"MsoNormal">x86_64-poky-linux-gcc: error: <span style=3D"backgro=
und:yellow">
CreateProcess: No such file or directory</span><u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">c:\Yocto2.1&gt;%CC% c:/temp/temp/temp/test.c --verbo=
se<u></u><u></u></p>
<p class=3D"MsoNormal">Using built-in specs.<u></u><u></u></p>
<p class=3D"MsoNormal">COLLECT_GCC=3Dx86_64-poky-linux-<wbr>gcc<u></u><u></=
u></p>
<p class=3D"MsoNormal">COLLECT_LTO_WRAPPER=3Dc:/yocto2.<wbr>1/sysroots/x86_=
64-pokysdk-<wbr>mingw32/usr/bin/x86_64-poky-<wbr>linux/../../libexec/x86_64=
-<wbr>poky-linux/gcc/x86_64-poky-<wbr>linux/5.3.0/lto-wrapper.exe<u></u><u>=
</u></p>
<p class=3D"MsoNormal">Target: x86_64-poky-linux<u></u><u></u></p>
<p class=3D"MsoNormal">=E2=80=A6.<u></u><u></u></p>
<p class=3D"MsoNormal">GNU C11 (GCC) version 5.3.0 (x86_64-poky-linux)<u></=
u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 compiled =
by GNU C version 5.3.0, GMP version 6.1.0, MPFR version 3.1.3, MPC version =
1.0.3<u></u><u></u></p>
<p class=3D"MsoNormal">GGC heuristics: --param ggc-min-expand=3D100 --param=
 ggc-min-heapsize=3D131072<u></u><u></u></p>
<p class=3D"MsoNormal">Compiler executable checksum: 4b6c2d45c1da5393637e02=
7504b4f2<wbr>dd<u></u><u></u></p>
<p class=3D"MsoNormal">COLLECT_GCC_OPTIONS=3D&#39;--<wbr>sysroot=3Dc:\Yocto=
2.1\\sysroots\<wbr>core2-64-poky-linux&#39; &#39;-m64&#39; &#39;-march=3Dco=
re2&#39; &#39;-mtune=3Dcore2&#39; &#39;-msse3&#39; &#39;-mfpmath=3Dsse&#39;=
 &#39;-v&#39;<u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"background:yellow">c:/yocto2.1/sysroo=
ts/x86_64-<wbr>pokysdk-mingw32/usr/bin/x86_<wbr>64-poky-linux/../../libexec=
/<wbr>x86_64-poky-linux/gcc/x86_64-<wbr>poky-linux/5.3.0/as.exe -v --64 -o =
C:\Users\ywang30\AppData\<wbr>Local\Temp\ccREtk4o.o
 C:\Users\ywang30\AppData\<wbr>Local\Temp\ccbqVhdf.s<u></u><u></u></span></=
p>
<p class=3D"MsoNormal"><span style=3D"background:yellow">x86_64-poky-linux-=
gcc: error: CreateProcess: No such file or directory</span><u></u><u></u></=
p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">c:\Yocto2.1&gt; c:/yocto2.1/sysroots/x86_64-<wbr>pok=
ysdk-mingw32/usr/bin/x86_<wbr>64-poky-linux/../../libexec/<wbr>x86_64-poky-=
linux/gcc/x86_64-<wbr>poky-linux/5.3.0/as.exe<u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"background:yellow">Access is denied.<=
/span><u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">c:\Yocto2.1&gt;ls=C2=A0 c:/yocto2.1/sysroots/x86_64-=
<wbr>pokysdk-mingw32/usr/bin/x86_<wbr>64-poky-linux/../../libexec/<wbr>x86_=
64-poky-linux/gcc/x86_64-<wbr>poky-linux/5.3.0/ -l<u></u><u></u></p>
<p class=3D"MsoNormal">total 67783<u></u><u></u></p>
<p class=3D"MsoNormal">lrwxrwxrwx 1 ywang30 Domain Users=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 61 Aug 18 12:05 ar.exe -&gt; ../../../../../bin/x86_64-<=
wbr>poky-linux/x86_64-poky-linux-<wbr>ar.exe<u></u><u></u></p>
<p class=3D"MsoNormal">lrwxrwxrwx 1 ywang30 Domain Users=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 61 Aug 18 12:05 as.exe -&gt;
<span style=3D"background:yellow">../../../../../bin/x86_64-<wbr>poky-linux=
/x86_64-poky-linux-<wbr>as.exe</span><u></u><u></u></p>
<p class=3D"MsoNormal">-rwxr-xr-x 1 ywang30 Domain Users 21761467 Aug 18 11=
:53 cc1.exe<u></u><u></u></p>
<p class=3D"MsoNormal">-rwxr-xr-x 1 ywang30 Domain Users 22986939 Aug 18 11=
:53 cc1plus.exe<u></u><u></u></p>
<p class=3D"MsoNormal">-rwxr-xr-x 1 ywang30 Domain Users=C2=A0 1658365 Aug =
18 11:53 collect2.exe<u></u><u></u></p>
<p class=3D"MsoNormal">lrwxrwxrwx 1 ywang30 Domain Users=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 62 Aug 18 12:05 cpp.exe -&gt; ../../../../../bin/x86_64-=
<wbr>poky-linux/x86_64-poky-linux-<wbr>cpp.exe<u></u><u></u></p>
<p class=3D"MsoNormal">lrwxrwxrwx 1 ywang30 Domain Users=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 62 Aug 18 12:05 gcc.exe -&gt; ../../../../../bin/x86_64-=
<wbr>poky-linux/x86_64-poky-linux-<wbr>gcc.exe<u></u><u></u></p>
<p class=3D"MsoNormal">lrwxrwxrwx 1 ywang30 Domain Users=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 61 Aug 18 12:05 ld.exe -&gt; ../../../../../bin/x86_64-<=
wbr>poky-linux/x86_64-poky-linux-<wbr>ld.exe<u></u><u></u></p>
<p class=3D"MsoNormal">-rwxr-xr-x 1 ywang30 Domain Users=C2=A0=C2=A0 129591=
 Aug 18 11:53 liblto_plugin-0.dll<u></u><u></u></p>
<p class=3D"MsoNormal">-rw-r--r-- 1 ywang30 Domain Users=C2=A0=C2=A0=C2=A0 =
53040 Aug 18 11:53 liblto_plugin.dll.a<u></u><u></u></p>
<p class=3D"MsoNormal">-rw-r--r-- 1 ywang30 Domain Users=C2=A0=C2=A0=C2=A0=
=C2=A0 1381 Aug 18 11:53 <a href=3D"http://liblto_plugin.la" target=3D"_bla=
nk">liblto_plugin.la</a><u></u><u></u></p>
<p class=3D"MsoNormal">-rwxr-xr-x 1 ywang30 Domain Users=C2=A0 1881552 Aug =
18 11:53 lto-wrapper.exe<u></u><u></u></p>
<p class=3D"MsoNormal">-rwxr-xr-x 1 ywang30 Domain Users 20913549 Aug 18 11=
:53 lto1.exe<u></u><u></u></p>
<p class=3D"MsoNormal">lrwxrwxrwx 1 ywang30 Domain Users=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 61 Aug 18 12:05 nm.exe -&gt; ../../../../../bin/x86_64-<=
wbr>poky-linux/x86_64-poky-linux-<wbr>nm.exe<u></u><u></u></p>
<p class=3D"MsoNormal">lrwxrwxrwx 1 ywang30 Domain Users=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 66 Aug 18 12:05 objcopy.exe -&gt; ../../../../../bin/x86=
_64-<wbr>poky-linux/x86_64-poky-linux-<wbr>objcopy.exe<u></u><u></u></p>
<p class=3D"MsoNormal">lrwxrwxrwx 1 ywang30 Domain Users=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 66 Aug 18 12:05 objdump.exe -&gt; ../../../../../bin/x86=
_64-<wbr>poky-linux/x86_64-poky-linux-<wbr>objdump.exe<u></u><u></u></p>
<p class=3D"MsoNormal">lrwxrwxrwx 1 ywang30 Domain Users=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 65 Aug 18 12:05 ranlib.exe -&gt; ../../../../../bin/x86_=
64-<wbr>poky-linux/x86_64-poky-linux-<wbr>ranlib.exe<u></u><u></u></p>
<p class=3D"MsoNormal">lrwxrwxrwx 1 ywang30 Domain Users=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 61 Aug 18 12:05 real-ld.exe -&gt; ../../../../../bin/x86=
_64-<wbr>poky-linux/x86_64-poky-linux-<wbr>ld.exe<u></u><u></u></p>
<p class=3D"MsoNormal">lrwxrwxrwx 1 ywang30 Domain Users=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 64 Aug 18 12:05 strip.exe -&gt; ../../../../../bin/x86_6=
4-<wbr>poky-linux/x86_64-poky-linux-<wbr>strip.exe<u></u><u></u></p>
</div>
</div>

</blockquote></div><br></div>

--f403045d9a50aa64e90566bc0f17--
