Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51EFBE00AB0; Thu, 18 Apr 2019 07:58:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (balazovic.peter[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.170 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f170.google.com (mail-it1-f170.google.com
	[209.85.166.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1ACDAE00A1C
	for <yocto@yoctoproject.org>; Thu, 18 Apr 2019 07:58:03 -0700 (PDT)
Received: by mail-it1-f170.google.com with SMTP id y134so3725240itc.5
	for <yocto@yoctoproject.org>; Thu, 18 Apr 2019 07:58:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=sRN0hPH/ziqeFp/MXavcdplIE0YQhNVZh3E/hvYuh4A=;
	b=DzmsaT8GAZe2E8lQv8C+k+A3/qMjIJ6J8TQrFoZpNfLT1qOS8Yffuf8owaLWXF5Rl6
	g9qtfJf/eAx3Sopkls/CkSmqgkj78irqoPzbRwIShhnkr+y/cTDSdKlOB9fOkCfHigQh
	xgQU6TJzVQ8hWrx8QRiQldm/69OvocAaqjsdLrJ0VpMQM52lT6Rt1OPAP74vgnlwgX6W
	sARRz++xZkbLGcYYgBjHd9YC3dcqecROFmlrKjhr8hdBexNPb4puSt8hpG8jvIp0fDQI
	89ft3B1rjMWYJZ5sdy35kno54DIuJo9Cx6d9ZulH9cKkgPaQpMBhaNP+a5FceDfaGfUG
	6Q1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=sRN0hPH/ziqeFp/MXavcdplIE0YQhNVZh3E/hvYuh4A=;
	b=odRMGWP7VowljYwQkdBVbLoGSyXsZURbwMOPeOKNLSBkfaPeQrQq290U0RI2pYFZJI
	Gd7VyeswCNmh1KVJqN5OLm7yJxuNGpL823tgS+vy0DZjGdFFsGMEWt4einIurb1iZ88e
	x2fj6GVGi1k/lAbokODxKZhqKTtf0gZ0+sEKXC68k+G2XgniM/6HefY2iUb8DIduB8aq
	iAR1fmKoS09FrR217ZfSE/nMaaWz56oyPGo5YV/VeGYpET2HAjr9H8Kk9AaiCp8KQ7ib
	DyA4toP1HUrAA5l6llCjrhUVyqjJ8L1Cibe0QtqJh4pqFT/Hdhis+2/GGMIilpgcHkyZ
	796g==
X-Gm-Message-State: APjAAAX8rrp/aRq2yi6S0c52dmktLtdgGd4OuEU8qcJbaTlb/zivK4Ii
	groy9scdG5Sm1ra8wuJKWLgGqj2dUD+ZPoIkLoVQ3pS0kjQ=
X-Google-Smtp-Source: APXvYqyUaueKnen3vD/4Xg39q/hjb9Qkg7BEULv8g8TW643a999z1YllrQUg8Cc9giiLdn1nq1fVE8GFlbNjLbWs/Is=
X-Received: by 2002:a24:68d:: with SMTP id 135mr3764089itv.53.1555599482993;
	Thu, 18 Apr 2019 07:58:02 -0700 (PDT)
MIME-Version: 1.0
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Thu, 18 Apr 2019 16:57:52 +0200
Message-ID: <CAFq4t4hR=jdVUS+0PrmCxU7sHJNOCO9GxEK=MD=TtbCWr2LdYA@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
X-Mailman-Approved-At: Tue, 23 Apr 2019 02:14:18 -0700
Subject: config.guess: unable to guess system type
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
X-List-Received-Date: Thu, 18 Apr 2019 14:58:05 -0000
Content-Type: multipart/alternative; boundary="00000000000098c0dc0586cf3a8e"

--00000000000098c0dc0586cf3a8e
Content-Type: text/plain; charset="UTF-8"

I am trying to compile on my Yocto system from source the SDL
http://www.libsdl.org/release/SDL-1.2.15.tar.gz and by running ./configure
I got error to configure the build

checking build system type... ./build-scripts/config.guess: unable to guess
system type

This script, last modified 2009-09-18, has failed to recognize
the operating system you are using. It is advised that you
download the most up to date version of the config scripts from


http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD
and

http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD

If the version you run (./build-scripts/config.guess) is already up to
date, please
send the following data and any information you think might be
pertinent to <config-patches@gnu.org> in order to provide the needed
information to handle your system.

config.guess timestamp = 2009-09-18
uname -m = aarch64
uname -r = 4.14.78-imx_4.14.78_1.0.0_ga+g66620c3
uname -s = Linux
uname -v = #1 SMP PREEMPT Fri Feb 1 09:09:25 UTC 2019

/usr/bin/uname -p =
/bin/uname -X     =

hostinfo               =
/bin/universe          =
/usr/bin/arch -k       =
/bin/arch              =
/usr/bin/oslevel       =
/usr/convex/getsysinfo =

UNAME_MACHINE = aarch64
UNAME_RELEASE = 4.14.78-imx_4.14.78_1.0.0_ga+g66620c3
UNAME_SYSTEM  = Linux
UNAME_VERSION = #1 SMP PREEMPT Fri Feb 1 09:09:25 UTC 2019
configure: error: cannot guess build type; you must specify one

What would be causing the problem?
Thanks.

--00000000000098c0dc0586cf3a8e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">I am trying to compile on my Yocto system=
 from source the SDL=C2=A0<div><a id=3D"gmail-url" target=3D"_blank" href=
=3D"http://www.libsdl.org/release/SDL-1.2.15.tar.gz" tabindex=3D"0" style=
=3D"max-width:100%;margin-top:6px;min-height:0px;overflow:hidden;text-decor=
ation-line:none;text-overflow:ellipsis;white-space:nowrap;font-family:Robot=
o,&quot;Segoe UI&quot;,Tahoma,sans-serif;font-size:13px">http://www.libsdl.=
org/release/SDL-1.2.15.tar.gz</a>=C2=A0and by running ./configure I got err=
or to configure the build</div><div><br></div><div><div><font face=3D"monos=
pace, monospace">checking build system type... ./build-scripts/config.guess=
: unable to guess system type</font></div><div><font face=3D"monospace, mon=
ospace"><br></font></div><div><font face=3D"monospace, monospace">This scri=
pt, last modified 2009-09-18, has failed to recognize</font></div><div><fon=
t face=3D"monospace, monospace">the operating system you are using. It is a=
dvised that you</font></div><div><font face=3D"monospace, monospace">downlo=
ad the most up to date version of the config scripts from</font></div><div>=
<font face=3D"monospace, monospace"><br></font></div><div><font face=3D"mon=
ospace, monospace">=C2=A0 <a href=3D"http://git.savannah.gnu.org/gitweb/?p=
=3Dconfig.git;a=3Dblob_plain;f=3Dconfig.guess;hb=3DHEAD">http://git.savanna=
h.gnu.org/gitweb/?p=3Dconfig.git;a=3Dblob_plain;f=3Dconfig.guess;hb=3DHEAD<=
/a></font></div><div><font face=3D"monospace, monospace">and</font></div><d=
iv><font face=3D"monospace, monospace">=C2=A0 <a href=3D"http://git.savanna=
h.gnu.org/gitweb/?p=3Dconfig.git;a=3Dblob_plain;f=3Dconfig.sub;hb=3DHEAD">h=
ttp://git.savannah.gnu.org/gitweb/?p=3Dconfig.git;a=3Dblob_plain;f=3Dconfig=
.sub;hb=3DHEAD</a></font></div><div><font face=3D"monospace, monospace"><br=
></font></div><div><font face=3D"monospace, monospace">If the version you r=
un (./build-scripts/config.guess) is already up to date, please</font></div=
><div><font face=3D"monospace, monospace">send the following data and any i=
nformation you think might be</font></div><div><font face=3D"monospace, mon=
ospace">pertinent to &lt;<a href=3D"mailto:config-patches@gnu.org">config-p=
atches@gnu.org</a>&gt; in order to provide the needed</font></div><div><fon=
t face=3D"monospace, monospace">information to handle your system.</font></=
div><div><font face=3D"monospace, monospace"><br></font></div><div><font fa=
ce=3D"monospace, monospace">config.guess timestamp =3D 2009-09-18</font></d=
iv><div><span style=3D"font-family:monospace,monospace">uname -m =3D aarch6=
4</span><br></div><div><font face=3D"monospace, monospace">uname -r =3D 4.1=
4.78-imx_4.14.78_1.0.0_ga+g66620c3</font></div><div><font face=3D"monospace=
, monospace">uname -s =3D Linux</font></div><div><font face=3D"monospace, m=
onospace">uname -v =3D #1 SMP PREEMPT Fri Feb 1 09:09:25 UTC 2019</font></d=
iv><div><font face=3D"monospace, monospace"><br></font></div><div><font fac=
e=3D"monospace, monospace">/usr/bin/uname -p =3D</font></div><div><font fac=
e=3D"monospace, monospace">/bin/uname -X=C2=A0 =C2=A0 =C2=A0=3D</font></div=
><div><font face=3D"monospace, monospace"><br></font></div><div><font face=
=3D"monospace, monospace">hostinfo=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0=3D</font></div><div><font face=3D"monospace, monospace">/bin=
/universe=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D</font></div><div><font face=
=3D"monospace, monospace">/usr/bin/arch -k=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D</f=
ont></div><div><font face=3D"monospace, monospace">/bin/arch=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D</font></div><div><font face=3D"monos=
pace, monospace">/usr/bin/oslevel=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D</font></div=
><div><font face=3D"monospace, monospace">/usr/convex/getsysinfo =3D</font>=
</div><div><font face=3D"monospace, monospace"><br></font></div><div><font =
face=3D"monospace, monospace">UNAME_MACHINE =3D aarch64</font></div><div><f=
ont face=3D"monospace, monospace">UNAME_RELEASE =3D 4.14.78-imx_4.14.78_1.0=
.0_ga+g66620c3</font></div><div><font face=3D"monospace, monospace">UNAME_S=
YSTEM=C2=A0 =3D Linux</font></div><div><font face=3D"monospace, monospace">=
UNAME_VERSION =3D #1 SMP PREEMPT Fri Feb 1 09:09:25 UTC 2019</font></div><d=
iv><font face=3D"monospace, monospace">configure: error: cannot guess build=
 type; you must specify one</font></div><div><br></div></div><div>What woul=
d be causing the problem?</div><div>Thanks.</div></div></div>

--00000000000098c0dc0586cf3a8e--
