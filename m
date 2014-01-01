Return-Path: <perencia@gmail.com>
Received: from mail-ee0-f50.google.com (mail-ee0-f50.google.com [74.125.83.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3FC4E007CA
	for <yocto@yoctoproject.org>; Wed,  1 Jan 2014 07:24:47 -0800 (PST)
Received: by mail-ee0-f50.google.com with SMTP id c41so5855227eek.37
	for <yocto@yoctoproject.org>; Wed, 01 Jan 2014 07:24:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Jf0uatRMO2KQjZVfiy1WYNHYcmag/o9/POId0bGNHMI=;
	b=L2d2ZMHnInLFRpAzFLF2gzGWH9CnVYAPHCrjxIhv4JEu62+0dnaMTC27MVluf8AM75
	9c9+C8k4PsHfHSTVs657RfuoKCBGwaRdJeM5whMcRICqkRVMvNnXHSpLT33rD80DilEq
	uOckHMAxkrpBoiOlj+VDg30EAqJmmv8NzgOVmX2CXewtVO17r0+8aJ3wrRAyb8KFCxw/
	xuVGYoYslxU5SjYcyEC0rol0xrAlSKW/C9/LtemAX8P/XquyMFh2Q897XMfsmFqGaO+x
	NY+TEo5/admWxXpfBjZY6LerJve3/MYe3OLWL7nWUpOt88AEKFkttDWLez9ydh6Uh9Si
	hzVA==
MIME-Version: 1.0
X-Received: by 10.14.211.69 with SMTP id v45mr11362508eeo.75.1388589886650;
	Wed, 01 Jan 2014 07:24:46 -0800 (PST)
Received: by 10.14.176.131 with HTTP; Wed, 1 Jan 2014 07:24:46 -0800 (PST)
Date: Wed, 1 Jan 2014 16:24:46 +0100
Message-ID: <CAP1ncNxSEKzErd7dDA2gJ=y8DwEiwW-Jc6pq_d-FioYSN0L1NQ@mail.gmail.com>
From: Pedro Erencia <perencia@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Thu, 02 Jan 2014 08:11:08 -0800
Subject: How to build xgcc with debug information ?
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
X-List-Received-Date: Wed, 01 Jan 2014 15:24:49 -0000
Content-Type: multipart/alternative; boundary=047d7b621d9ceebbfa04eeea4697

--047d7b621d9ceebbfa04eeea4697
Content-Type: text/plain; charset=ISO-8859-1

*Hi all, I'm having a hard time trying to do what the title says.I was
using yocto to create a qt4e-image and got an Internal compiler error |
/home/pedro/poky/build/tmp/work-shared/gcc-4.6.3+svnr184847-r29/gcc-4_6-branch/libgcc/../gcc/libgcc2.c:
In function '__negdi2':|
/home/pedro/poky/build/tmp/work-shared/gcc-4.6.3+svnr184847-r29/gcc-4_6-branch/libgcc/../gcc/libgcc2.c:72:1:
internal compiler error: Segmentation fault| Please submit a full bug
report,*
*Then i wanted to run gdb on xgcc but it didn't have debug symbols, so i
added this to gcc-cross-initial.inc and gcc-cross-intermediate.inc*

*CFLAGS += "-g"*

*And it actually generated the debug symbols but some variable were
stripped by the -O2 optimization. *
*( the error was found on line 86 on ira-conflicts, btw).*

*I have not managed to remove the -O2, I've tried changing to CFLAGS += "-g
-Og", but now it doesn't even generate a debug build :) So, before i mess
it even more, i'd like to know what has to be done to properly create a
debug-friendly xgcc. *


*Thanks :)*

--047d7b621d9ceebbfa04eeea4697
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><font face=3D"courier new, monospace"><b>Hi all, <br><br>I=
&#39;m having a hard time trying to do what the title says.<br>I was using =
yocto to create a qt4e-image and got an Internal compiler error <br><br><br=
>
| /home/pedro/poky/build/tmp/work-shared/gcc-4.6.3+svnr184847-r29/gcc-4_6-b=
ranch/libgcc/../gcc/libgcc2.c: In function &#39;__negdi2&#39;:<br><br>| /ho=
me/pedro/poky/build/tmp/work-shared/gcc-4.6.3+svnr184847-r29/gcc-4_6-branch=
/libgcc/../gcc/libgcc2.c:72:1: internal compiler error: Segmentation fault<=
br>
<br>| Please submit a full bug report,<br></b></font><br><b style=3D"font-f=
amily:&#39;courier new&#39;,monospace">Then i wanted to run gdb on xgcc but=
 it didn&#39;t have debug symbols, so i added this to gcc-cross-initial.inc=
 and gcc-cross-intermediate.inc</b><div>
<font face=3D"courier new, monospace"><b><br></b></font></div><div><font fa=
ce=3D"courier new, monospace"><b>CFLAGS +=3D &quot;-g&quot;</b></font></div=
><div><font face=3D"courier new, monospace"><b><br></b></font></div><div><f=
ont face=3D"courier new, monospace"><b>And it actually generated the debug =
symbols but some variable were stripped by the -O2 optimization.=A0</b></fo=
nt></div>
<div><font face=3D"courier new, monospace"><b>( the error was found on line=
 86 on ira-conflicts, btw).</b></font></div><div><font face=3D"courier new,=
 monospace"><b><br></b></font></div><div><font face=3D"courier new, monospa=
ce"><b>I have not managed to remove the -O2, I&#39;ve tried changing to CFL=
AGS +=3D &quot;-g -Og&quot;, but now it doesn&#39;t even generate a debug b=
uild :) So, before i mess it even more, i&#39;d like to know what has to be=
 done to properly create a debug-friendly xgcc.=A0</b></font></div>
<div><br></div><div><font face=3D"courier new, monospace"><b><br></b></font=
></div><div><font face=3D"courier new, monospace"><b>Thanks :)</b></font></=
div><div><font face=3D"courier new, monospace"><b><br></b></font><div><br><=
/div>
</div></div>

--047d7b621d9ceebbfa04eeea4697--
