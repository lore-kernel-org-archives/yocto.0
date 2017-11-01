Return-Path: <alex.kiernan@hivehome.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9F6EE00AAF; Wed,  1 Nov 2017 12:05:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.197 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.197 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f197.google.com (mail-wr0-f197.google.com
	[209.85.128.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E311E00928
	for <yocto@yoctoproject.org>; Wed,  1 Nov 2017 12:05:12 -0700 (PDT)
Received: by mail-wr0-f197.google.com with SMTP id w105so1730584wrc.20
	for <yocto@yoctoproject.org>; Wed, 01 Nov 2017 12:05:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=hivehome-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZN/hUiXERtNnumCunz7UNx5Hp/pBmBXaxsFA+9J01UM=;
	b=Mt6EzJzMY9/8Ta+Q7N9zlJDcq8p1wCju9mNj41f+ZjwOpUVr2dYoAeEQ7O63SgnHb1
	68f9U/Xk80jYFg5Hcuhupy3Xc5I1PYAmPnl4BnSasJUltKcdw38uuQ+KQMPcjlcbFA6b
	34mstrAQfREf+F3QFdBBKMiasoVXJ7vW1xWrCk9H1sUmauCGkU+lTJ3PbfQ+k+qNKR+r
	NaHisn3RSRtJKaHvUYBpdWyIU2iBMLSoj7OrszlPeAKEz1VHTAWV7x+mriF79E9DLwbW
	Ob9s+4XFvg46fuvFwGb7AAqw4M5DTvtkG9AufeCFyqE8FilUATkvVCj+nDIX7WgnMkux
	ZMUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZN/hUiXERtNnumCunz7UNx5Hp/pBmBXaxsFA+9J01UM=;
	b=S6p2y2+gFDVRvzknV36u8pWHaODBc0HtYzvWRXkF9NL/axoHxql2H1r8fOGSEK6yF8
	xQGz/z2gCaL2uSZICJhL/N1zanHKQcSvjf5EFpFCSjYnps761D3MF9q9donQzTb1aSJY
	/2VpxiyeVW+r4iWDhcYfIo951LCplmem5wNCw6LCmBIlcn820NxHZR4azelqatfnXhMI
	KxFca42LnAIY9fpY7YLfPMsMMdcAuaETA8GQOJxfyfb7V0wa8qKk/V6ay9buukbxI76g
	lptysdhw/k+txAMDnN6ClTV97rEgAnrpp2cVhQBWRV4duAyhGaN1liQ2SVr/W8JS2sJP
	mQ0A==
X-Gm-Message-State: AMCzsaWVOBPTO8hOhomtkJjjAD4VlqsEsL3r+WbTHiJPeA9cBYqofkP/
	1sMizCI8AGIrXGONaq6V8M9r1ozgd56GUrmjVTRyh/uFtlmiZPqATKBVeQpvPlebCVFC0+b20OY
	LmkCmJtN0jQfcIgfueQRMCricUQ==
X-Google-Smtp-Source: ABhQp+TaydwVBLBF1FmDUDlgDxA5mGFQcwrncSKp3HUk6mD886RaIkpPtMVJidPFATY8ecM4WQyKZcgZvqjTlr+vesc=
X-Received: by 10.28.131.2 with SMTP id f2mr874806wmd.137.1509563112046; Wed,
	01 Nov 2017 12:05:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.133.166 with HTTP; Wed, 1 Nov 2017 12:05:11 -0700 (PDT)
In-Reply-To: <CAOT_U5ZYFa_5Ua0swNRGyxG+hV9xNtTzGuEe5yGzYG4rDxsdNQ@mail.gmail.com>
References: <CAOT_U5ZYFa_5Ua0swNRGyxG+hV9xNtTzGuEe5yGzYG4rDxsdNQ@mail.gmail.com>
From: Alex Kiernan <alex.kiernan@hivehome.com>
Date: Wed, 1 Nov 2017 19:05:11 +0000
Message-ID: <CAGxhq2aHU7xgimpRhavOp6AqL4ALf9SBDk6Wti6BFPtftGC99Q@mail.gmail.com>
To: Alan Martinovic <alan.martinovic@senic.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Debugging a build issue in an isolated enviroment
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
X-List-Received-Date: Wed, 01 Nov 2017 19:05:14 -0000
Content-Type: multipart/alternative; boundary="001a11442f2e0f61d6055cf08d9c"

--001a11442f2e0f61d6055cf08d9c
Content-Type: text/plain; charset="UTF-8"

On 1 November 2017 at 17:38, Alan Martinovic <alan.martinovic@senic.com>
wrote:

> I'm just upgrading to pyro and have some issues with u-boot-fw-utils.
>
> The error fails at do_compile stage which looks like this:
>
>     do_compile () {
>             oe_runmake ${UBOOT_MACHINE}
>             oe_runmake env
>     }
>
>
> The error is:
>
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | NOTE: make -j 16 CROSS_COMPILE=arm-senic-linux-gnueabi-
> CC=arm-senic-linux-gnueabi-       gcc  -march=armv7ve -mfpu=neon-vfpv4
>  -mfloat-abi=hard -mcpu=cortex-a7
> --sysroot=/home/alan/senic-os-update/build/tmp-glibc/work/
> senic_hub_beta-senic-linux-gnueabi/u-boot-fw-utils-senic/
> v2017.03+gitAUTOINC+5233f17333-r0/recipe-sysroot
>  -O2 -pipe -g -feliminate-unused-debug-types
> -fdebug-prefix-map=/home/alan/senic-os-update/build/tmp-
> glibc/work/senic_hub_beta-senic-linux-gnueabi/u-boot-fw-
> utils-senic/v2017.03+gitAUTOINC+5233f17333-r0=/usr/
> src/debug/u-boot-fw-utils-senic/v2017.03+gitAUTOINC+5233f17333-r0
> -fdebug-prefix-map=/home/alan/senic-os-update/build/tmp-
> glibc/work/senic_hub_beta-senic-linux-gnueabi/u-boot-fw-
> utils-senic/v2017.03+gitAUTOINC+5233f17333-r0/recipe-sysroot-native=
> -fdebug-prefix-map=/home/alan/senic-os-update/build/tmp-
> glibc/work/senic_hub_beta-senic-linux-gnueabi/u-boot-fw-
> utils-senic/v2017.03+gitAUTOINC+5233f17333-r0/recipe-sysroot=
>  -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed V=1
> | ERROR: oe_runmake failed
> | make -f ./Makefile silentoldconfig
> | make -f ./scripts/Makefile.build obj=scripts/basic
> |   cc -Wp,-MD,scripts/basic/.fixdep.d -Wall -Wstrict-prototypes -O2
> -fomit-frame-pointer      -o scripts/basic/fixdep
> scripts/basic/fixdep.c
> | /bin/sh: 1: cc: not found
>
>
> I would assume this is a to specific error to ask help about. It seems
> that the compiler isn't being called correctly (it's called as cc,
> which isn't the full compiler name).
> Suggestions are welcome but that isn't the reason for my post.
>
>
Guessing... apply this in your recipe:

http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-bsp/u-boot/files/default-gcc.patch?h=pyro

-- 
Alex Kiernan
Senior Engineering Manager

-- 
hivehome.com <http://www.hivehome.com>



Hive | London | Cambridge | Houston | Toronto
The information contained in or attached to this email is confidential and 
intended only for the use of the individual(s) to which it is addressed. It 
may contain information which is confidential and/or covered by legal 
professional or other privilege. The views expressed in this email are not 
necessarily the views of Centrica plc, and the company, its directors, 
officers or employees make no representation or accept any liability for 
their accuracy or completeness unless expressly stated to the contrary. 
Centrica Connected Home Limited (company no: 5782908), registered in 
England and Wales with its registered office at Millstream, Maidenhead 
Road, Windsor, Berkshire SL4 5GD.

--001a11442f2e0f61d6055cf08d9c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 1=
 November 2017 at 17:38, Alan Martinovic <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:alan.martinovic@senic.com" target=3D"_blank">alan.martinovic@senic.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">I&#39;m just upgrading to pyro and have some issues with u-boot-fw-utils.=
<br>
<br>
The error fails at do_compile stage which looks like this:<br>
<br>
=C2=A0 =C2=A0 do_compile () {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 oe_runmake ${UBOOT_MACHINE}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 oe_runmake env<br>
=C2=A0 =C2=A0 }<br>
<br>
<br>
The error is:<br>
<br>
Log data follows:<br>
| DEBUG: Executing shell function do_compile<br>
| NOTE: make -j 16 CROSS_COMPILE=3Darm-senic-linux-<wbr>gnueabi-<br>
CC=3Darm-senic-linux-gnueabi-=C2=A0 =C2=A0 =C2=A0 =C2=A0gcc=C2=A0 -march=3D=
armv7ve -mfpu=3Dneon-vfpv4<br>
=C2=A0-mfloat-abi=3Dhard -mcpu=3Dcortex-a7<br>
--sysroot=3D/home/alan/senic-os-<wbr>update/build/tmp-glibc/work/<wbr>senic=
_hub_beta-senic-linux-<wbr>gnueabi/u-boot-fw-utils-senic/<wbr>v2017.03+gitA=
UTOINC+<wbr>5233f17333-r0/recipe-sysroot<br>
=C2=A0-O2 -pipe -g -feliminate-unused-debug-types<br>
-fdebug-prefix-map=3D/home/alan/<wbr>senic-os-update/build/tmp-<wbr>glibc/w=
ork/senic_hub_beta-<wbr>senic-linux-gnueabi/u-boot-fw-<wbr>utils-senic/v201=
7.03+<wbr>gitAUTOINC+5233f17333-r0=3D/usr/<wbr>src/debug/u-boot-fw-utils-<w=
br>senic/v2017.03+gitAUTOINC+<wbr>5233f17333-r0<br>
-fdebug-prefix-map=3D/home/alan/<wbr>senic-os-update/build/tmp-<wbr>glibc/w=
ork/senic_hub_beta-<wbr>senic-linux-gnueabi/u-boot-fw-<wbr>utils-senic/v201=
7.03+<wbr>gitAUTOINC+5233f17333-r0/<wbr>recipe-sysroot-native=3D<br>
-fdebug-prefix-map=3D/home/alan/<wbr>senic-os-update/build/tmp-<wbr>glibc/w=
ork/senic_hub_beta-<wbr>senic-linux-gnueabi/u-boot-fw-<wbr>utils-senic/v201=
7.03+<wbr>gitAUTOINC+5233f17333-r0/<wbr>recipe-sysroot=3D<br>
=C2=A0-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed V=3D1<br>
| ERROR: oe_runmake failed<br>
| make -f ./Makefile silentoldconfig<br>
| make -f ./scripts/Makefile.build obj=3Dscripts/basic<br>
|=C2=A0 =C2=A0cc -Wp,-MD,scripts/basic/.fixdep.<wbr>d -Wall -Wstrict-protot=
ypes -O2<br>
-fomit-frame-pointer=C2=A0 =C2=A0 =C2=A0 -o scripts/basic/fixdep<br>
scripts/basic/fixdep.c<br>
| /bin/sh: 1: cc: not found<br>
<br>
<br>
I would assume this is a to specific error to ask help about. It seems<br>
that the compiler isn&#39;t being called correctly (it&#39;s called as cc,<=
br>
which isn&#39;t the full compiler name).<br>
Suggestions are welcome but that isn&#39;t the reason for my post.<br>
<br></blockquote><div><br></div><div>Guessing... apply this in your recipe:=
</div><div><br></div><div><a href=3D"http://git.yoctoproject.org/cgit/cgit.=
cgi/poky/tree/meta/recipes-bsp/u-boot/files/default-gcc.patch?h=3Dpyro">htt=
p://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-bsp/u-boot/fi=
les/default-gcc.patch?h=3Dpyro</a></div><div><div><div class=3D"gmail_signa=
ture"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><span style=3D"fon=
t-size:12.8px;font-family:arial,helvetica,sans-serif"><br></span></div><div=
 dir=3D"ltr"><span style=3D"font-size:12.8px;font-family:arial,helvetica,sa=
ns-serif">--=C2=A0</span></div><div dir=3D"ltr"><span style=3D"font-size:12=
.8px;font-family:arial,helvetica,sans-serif">Alex Kiernan</span><div><span =
style=3D"font-size:12.8px;font-family:arial,helvetica,sans-serif;color:rgb(=
255,122,0)">Senior Engineering Manager</span><br style=3D"font-size:12.8px;=
font-family:arial,helvetica,sans-serif"></div></div></div></div></div></div=
></div></div></div></div>

<br>
<a href=3D"http://www.hivehome.com" target=3D"_blank">hivehome.com</a><div>=
<div><br></div><div><img src=3D"https://s3-eu-west-1.amazonaws.com/81023081=
2/HiveSig.png"></div><div><br></div><div><br></div><div><div style=3D"font-=
size:12px;background-color:rgb(255,255,255);margin:0cm 0cm 0.0001pt;font-fa=
mily:Arial,sans-serif"><font size=3D"1" color=3D"#b7b7b7">Hive | London | C=
ambridge | Houston | Toronto<u></u><u></u></font></div><div style=3D"font-s=
ize:12px;background-color:rgb(255,255,255);margin:0cm 0cm 0.0001pt;font-fam=
ily:Arial,sans-serif"><font size=3D"1" color=3D"#b7b7b7">The information co=
ntained in or attached to this email is confidential and intended only for =
the use of the individual(s) to which it is addressed. It may contain infor=
mation which is confidential and/or covered by legal professional or other =
privilege. The views expressed in this email are not necessarily the views =
of Centrica plc, and the company, its directors, officers or employees make=
 no representation or accept any liability for their accuracy or completene=
ss unless expressly stated to the contrary.=C2=A0<u></u><u></u></font></div=
><div style=3D"font-size:12px;background-color:rgb(255,255,255);margin:0cm =
0cm 0.0001pt;font-family:Arial,sans-serif"><font size=3D"1" color=3D"#b7b7b=
7">Centrica Connected Home Limited (company no: 5782908), registered in Eng=
land and Wales with its registered office at Millstream, Maidenhead Road, W=
indsor, Berkshire SL4 5GD.</font></div></div></div>

--001a11442f2e0f61d6055cf08d9c--
