Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7F2FE00CFF; Tue, 26 Apr 2016 01:39:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f182.google.com (mail-ig0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 547F3E00C37
	for <yocto@yoctoproject.org>; Tue, 26 Apr 2016 01:39:46 -0700 (PDT)
Received: by mail-ig0-f182.google.com with SMTP id u10so35246175igr.1
	for <yocto@yoctoproject.org>; Tue, 26 Apr 2016 01:39:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1B4nICpFi3jdCyuSvnW9jfAphNaVpVgyNeYK08jXHjE=;
	b=tDtIKGGSmO0hPPfyL0xuND4zC52XMQy12RA4C9zqJHkUpH0Z6YFnNPE+Wt7Y5iCmJC
	YLG9CP575UHbO7SdVKZxyj1RFoCB2ZByWdpCPX/b/ay+/xptMVRCmEdxc01Bg4PVUQS5
	MtQB6vYqv6T7EG5YWZ2/UKPh3kHuDkF+n1Rd/NeZ8NmGdIcqcWhnOuR5pfgJyWopqkkJ
	W3R5LyDLIobzutsTBacAMpVFnmpoqMLCqMdg6669s+ObAWbqP+GdiHV2cGfVVs+OXiw8
	PsLOAZHiY2ysQXaide5s2cchiYN2BT+vnzpCUgVNuN53zadr1HOB7fzwUupwoBEMwyWX
	oBmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1B4nICpFi3jdCyuSvnW9jfAphNaVpVgyNeYK08jXHjE=;
	b=Lbh65xzBnAktAFMqBa7a0IYrRiwvBrpIfkj9PAM4nfr5La+MGO/Kiqcp5gznzV3ArN
	I5vrNTkkx4rNHwHtqI/pgJekdmbeHc9YmbVZT7EjDAiSd9iPYslwqbIRawLbbBKUmE0h
	wXEpnAeo7GKkjXgRP3d2HndCp4SEDEjGAQvw70abglfqbtLtiBu52sY/moAcgQMYpafh
	LsLrEe5QsXmU5xWzuBWld53VyoG2MS2sjvD9QD3LE7hFt00y1Ana5RCL4nxejfV+PHUW
	5TOv7URxk6emm2KGnvxKbI9lvvSuDWgKT4ritMtzm83rXY8NmQ0pyMjC+GniZto0yM8u
	zbrA==
X-Gm-Message-State: AOPr4FXUc7VRPKL0ZkpN9fqjCHu5wyDLuvrlvRHnWLPranTBgPOy4wpFyTsHbvRkQFDmqY9K5HrdKuvsIt/WUIOT
X-Received: by 10.50.160.41 with SMTP id xh9mr1965983igb.64.1461659985558;
	Tue, 26 Apr 2016 01:39:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.9.106 with HTTP; Tue, 26 Apr 2016 01:39:26 -0700 (PDT)
In-Reply-To: <OFFCA9FD4C.003E7E4C-ONC1257FA1.002BA274-C1257FA1.002C5AF6@esa-grimma.de>
References: <OFFCA9FD4C.003E7E4C-ONC1257FA1.002BA274-C1257FA1.002C5AF6@esa-grimma.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 26 Apr 2016 09:39:26 +0100
Message-ID: <CAJTo0LYB=p-rOcz4MUxjkyWE1RX0zhTOdFvtaf_rMepjOPzMOg@mail.gmail.com>
To: S.Jaritz@esa-grimma.de
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: problems with cmake finding the c++ includes
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
X-List-Received-Date: Tue, 26 Apr 2016 08:39:48 -0000
Content-Type: multipart/alternative; boundary=001a11380a1638daff05315f3cfa

--001a11380a1638daff05315f3cfa
Content-Type: text/plain; charset=UTF-8

On 26 April 2016 at 09:04, <S.Jaritz@esa-grimma.de> wrote:

> I am new to yocto. I like to create an recipe for the g3log library. I
> managed to get the git sources and start the cmake compile. But it stops
> when it tries to compile "#include <string>". Do you have an idea how to
> fix that?
>

Actually including the output of do_configure would be helpful to see what
the errors are.  It's fairly common for cmake-using recipes to override the
CFLAGS/CXXFLAGS provided by the user (in this case, bitbake) which tell it
where the compiler is, so the CMakeLists need fixing.

I'll also review your recipe.

Below there is the content of the "g3log.bb":
> ################################
> SUMMARY = "g3log"
> SECTION = "sek4"
> LICENSE = "MIT"
> LIC_FILES_CHKSUM = "file://$
> {COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
>

This should point to the LICENSE file in the clone, and that license file
doesn't say MIT.

DEPENDS ="boost"
>
> SRC_URI[md5sum] = "0dd4767bd072159e64ad69052bb1dbba"
> SRC_URI[sha256sum] =
> "4fbcc9afe24f6d8b5b90ff04481e88dd0b34f6a797825dab02cd88f129d3ccb7"
>

If you're doing a git clone then you don't need SRC_URI checksums.


> SRC_URI = "git://github.com/KjellKod/g3log.git;rev=1.2"
>

It's best practise to use a SHA instead of a tag name, as the tag name
needs to be resolved on every build which means a network operation.

Ross

--001a11380a1638daff05315f3cfa
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 26 April 2016 at 09:04,  <span dir=3D"ltr">&lt;<a href=3D"mailto:S.Jarit=
z@esa-grimma.de" target=3D"_blank">S.Jaritz@esa-grimma.de</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><font size=3D"2" face=3D"sans-serif"=
>I am new to yocto. I like to create
an recipe for the g3log library. I managed to get the git sources and start
the cmake compile. But it stops when it tries to compile &quot;#include
&lt;string&gt;&quot;. Do you have an idea how to fix that?</font>
<br></blockquote><div><br></div><div>Actually including the output of do_co=
nfigure would be helpful to see what the errors are.=C2=A0 It&#39;s fairly =
common for cmake-using recipes to override the CFLAGS/CXXFLAGS provided by =
the user (in this case, bitbake) which tell it where the compiler is, so th=
e CMakeLists need fixing.</div><div><br></div><div>I&#39;ll also review you=
r recipe.</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><font size=3D"=
2" face=3D"sans-serif">Below there is the content of the &quot;<a href=3D"h=
ttp://g3log.bb" target=3D"_blank">g3log.bb</a>&quot;:</font>
<br><font size=3D"2" face=3D"sans-serif">################################</=
font>
<br><font size=3D"2" face=3D"sans-serif">SUMMARY =3D &quot;g3log&quot;</fon=
t>
<br><font size=3D"2" face=3D"sans-serif">SECTION =3D &quot;sek4&quot;</font=
>
<br><font size=3D"2" face=3D"sans-serif">LICENSE =3D &quot;MIT&quot;</font>
<br><font size=3D"2" face=3D"sans-serif">LIC_FILES_CHKSUM =3D &quot;</font>=
<a><font size=3D"2" color=3D"blue" face=3D"sans-serif">file://$</font></a><=
font size=3D"2" face=3D"sans-serif">{COMMON_LICENSE_DIR}/MIT;md5=3D0835ade6=
98e0bcf8506ecda2f7b4f302&quot;</font>
<br></blockquote><div><br></div><div>This should point to the LICENSE file =
in the clone, and that license file doesn&#39;t say MIT.</div><div><br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex"><font size=3D"2" face=3D"sans-serif">DEPEN=
DS =3D&quot;boost&quot;</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">SRC_URI[md5sum] =3D &quot;0dd4767b=
d072159e64ad69052bb1dbba&quot;</font>
<br><font size=3D"2" face=3D"sans-serif">SRC_URI[sha256sum] =3D &quot;4fbcc=
9afe24f6d8b5b90ff04481e88dd0b34f6a797825dab02cd88f129d3ccb7&quot;</font>
<br></blockquote><div><br></div><div>If you&#39;re doing a git clone then y=
ou don&#39;t need SRC_URI checksums.</div><div>=C2=A0</div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex"><font size=3D"2" face=3D"sans-serif">SRC_URI =3D &quot;git:/=
/<a href=3D"http://github.com/KjellKod/g3log.git;rev=3D1.2" target=3D"_blan=
k">github.com/KjellKod/g3log.git;rev=3D1.2</a>&quot;</font>
<br></blockquote><div><br></div><div>It&#39;s best practise to use a SHA in=
stead of a tag name, as the tag name needs to be resolved on every build wh=
ich means a network operation.</div><div><br></div><div>Ross=C2=A0</div></d=
iv></div></div>

--001a11380a1638daff05315f3cfa--
