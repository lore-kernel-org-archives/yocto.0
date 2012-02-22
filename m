Return-Path: <autif.mlist@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C3C9E0030B
	for <yocto@yoctoproject.org>; Wed, 22 Feb 2012 10:25:35 -0800 (PST)
Received: by dadp13 with SMTP id p13so376011dad.35
	for <yocto@yoctoproject.org>; Wed, 22 Feb 2012 10:25:35 -0800 (PST)
Received-SPF: pass (google.com: domain of autif.mlist@gmail.com designates
	10.68.130.7 as permitted sender) client-ip=10.68.130.7; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of autif.mlist@gmail.com
	designates 10.68.130.7 as permitted sender)
	smtp.mail=autif.mlist@gmail.com;
	dkim=pass header.i=autif.mlist@gmail.com
Received: from mr.google.com ([10.68.130.7])
	by 10.68.130.7 with SMTP id oa7mr93066906pbb.16.1329935135284 (num_hops
	= 1); Wed, 22 Feb 2012 10:25:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=sqM/APG/Xbrhzqg31zbeZSb+W3R0ZG0x29bpfMXBayw=;
	b=m1F6m2pfreJG+2Noek9CqvfQlCepQZs/aLm6OtdQX1U0an1t3zzfdBD6EzmsMtjHqX
	67d/1EZ0BPbFP5GCWxDVJ6od8tdILHlLcVLym8R/jxJPZ4AkOQ3J4lELfDeDVIwlDahD
	eAxHHdF6YuG7Ybn2FVTweWq98x8Ig/TivLVe4=
MIME-Version: 1.0
Received: by 10.68.130.7 with SMTP id oa7mr76595453pbb.16.1329935135213; Wed,
	22 Feb 2012 10:25:35 -0800 (PST)
Received: by 10.68.33.170 with HTTP; Wed, 22 Feb 2012 10:25:35 -0800 (PST)
Date: Wed, 22 Feb 2012 13:25:35 -0500
Message-ID: <CADzUK1LiFS85BNaEpZt=4A_Qkuxdx0wPPx5g+7Jwwix069jdvw@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: yocto@yoctoproject.org
Subject: meta-mono is released
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
X-List-Received-Date: Wed, 22 Feb 2012 18:25:35 -0000
Content-Type: text/plain; charset=ISO-8859-1

meta-mono has been released. I have tested it on x86 and ARM
successfully  and on PPC and MIPS unsuccessfully. I will work on those
architectures and time becomes available. If someone prefers that they
need mono for MIPS or PPC immediately, please email me and I will see
what I can do.

comments and patches are welcome.

The README for meta-mono is attached below:

1) Intro
2) Dependencies
3) Maintainer(s) & Patch policy
4) Copyright
5) Current State - x86
6) Current State - ARM
7) Current State - MIPS
8) Current State - PPC
9) Current State - alpha, amd64, hppa, ia64, s390 & sparc
10) TODO



1) Intro

meta-mono is an OpenEmbedded layer that builds mono runtime and mono
libraries to allow users to run .NET applications under linux built
using OE. For more info about mono, see mono project's website. For
more info on OpenEmbedded, see OE's website.



2) Dependencies

On the host:
The host system must have the following packges:
gcc g++ patch diffstat texi2html texinfo cvs subversion gawk
chrpath make libgl1-mesa-dev libglu1-mesa-dev libsdl1.2-dev
git libxml-parser-perl bison gettext flex unzip rpm2cpio

On the target:
So far, Windows Forms applications have been tested under Sato.
Mono does not require Sato, it does require X if you want to run
Windows Forms applications. While mono can run w/o X, that recipe
is not supported currently. It is unlikely to be supported.



3) Maintainer(s) & Patch policy

Autif Khan (autif.mlist@gmail.com)
autif on #yocto on freenode

Send a patch or tar.gz file as attachment to the maintainer.



4) Copyright

MIT/GPLv2 - following the lead of libgdiplus and mono



5) Current State - x86: Works

Maintainer uses Yocto/OE/Poky as his build environment. He has built
core-image-mono and core-image-mono-sdk for qemux86 and crownbay. The
maintainer has also tested mono using all the runtime tests and
few library tests that come with mono. The maintainer has also tested
one Windows Forms application.



6) Current State - ARM: Works

Maintainer uses Yocto/OE/Poky as his build environment. He has built
core-image-mono for qemuarm. The maintainer has tested one Windows
Forms application.



7) Current State - MIPS: Minor issues need to be resolved

Maintainer uses Yocto/OE/Poky as his build environment. He has built
core-image-mono for qemumips. A Windows Forms application fails to
execute. More investigation is needed, if there is an interest in getting
mono to work perfectly on MIPS, please contact the maintainer.



8) Current State - PPC: Does not build

Maintainer uses Yocto/OE/Poky as his build environment. The build for
core-image-mono for qemuppc fails. If there is an interest in getting
mono to work perfectly on PPC, please contact the maintainer.



9) Current State - alpha, amd64, hppa, ia64, s390 & sparc: Unknown

When qemu provided by Yocto supports one of these machines, the
maintainer will support these architectures.



10) TODO

10.1) see if mono works for amd64, seems like qemux86-64 is available
10.2) investigate why windows forms apps dont run on MIPS
10.2) investigate why compilation fails for PPC
10.3) run mono runtime tests for ARM
10.4) run mono runtime tests for MIPS
10.5) run mono runtime tests for PPC
10.6) run mono library tests for ARM
10.7) run mono library tests for MIPS
10.8) run mono library tests for PPC
10.9) write recipes to create packages for runtime tests
10.10) write recipes to create packages for mscorlib library tests
10.11) write recipes to create packages for System.dll library tests
10.12) try mono on beagleboard (email maintainer when you do this, he
will thank you)
10.13) write a recipe for windows forms app

