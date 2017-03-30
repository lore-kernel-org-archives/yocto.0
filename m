Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52451E00970; Thu, 30 Mar 2017 01:57:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.171 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF3D6E00839
	for <yocto@yoctoproject.org>; Thu, 30 Mar 2017 01:57:07 -0700 (PDT)
Received: by mail-qk0-f171.google.com with SMTP id d201so4166682qkc.0
	for <yocto@yoctoproject.org>; Thu, 30 Mar 2017 01:57:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=OdJOjOcGqkrKHOUbcDxQ53rlRwNuWYDuoeczocIkx0c=;
	b=r7f9eSqRJkWLjOkKPdjDd4q1ozXPGFjsaqXs+mzlJNb2cVGkIWXps3U3X3fnuxyAB0
	uysnSkAXtm1bPHAG4hGPb5aitRp81dauq9hPOv6D84Yk34EJPXSOVJXWkq+x5MnbyKwZ
	SBz+uXjCvwcyObaQPY63+Ei6rk+SLMX/j0s2w+J3dH1bQZmvor42+4UXS94EoZP3NRCA
	5k6fUQQm/9Giv2MULO5fYjptdhez2RmsFMWPIfSbfPWQIzI2OpLOD3ILbPUcmMWMK0Me
	w6KnaNlcBoVGr+7DmctKZsZ1+iEkdhGZAol2qasda8e5Nx8pYF1puyVq802+2k2sBifh
	VKRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=OdJOjOcGqkrKHOUbcDxQ53rlRwNuWYDuoeczocIkx0c=;
	b=F4hu43OYBB7gg9EzmnI9bWjVVxSrlkvZaCw0QREGfGMx5VkLZGqWPR+T4aH6335YAh
	dW2yiI6rjf1bPolef3smRAZMdWBPoLxkIcswJxv0+ClyFsgLCvrJPfcg41APF5DGiclP
	ELuBKXzx2CEHbwTLi5lEeU/5rsPAau145qkaEfMcr4ie5pFQNHLGohXbLGOja86aJklm
	YaVDs+1Stn99bt7U4iPztzynnH1Yv3bmA6PR5nI0aCWVG8bMupgyhh+ogi7zEh6BeY/j
	a7q5dby7Xbwf2xJ/FJ+uptonEWEzPGI30aNk7D5VJgpmyiXCz9BU59JopZir0OG6yC2f
	2SYA==
X-Gm-Message-State: AFeK/H0TgqLer13L7U3um1+JLi4P1RUrTdGbkUO48EpRUjAJHPzfFbnxC1e6NQe8A+9SvY9S03jFE8a5jxRyEgTq
X-Received: by 10.55.107.196 with SMTP id g187mr2150519qkc.77.1490864226498;
	Thu, 30 Mar 2017 01:57:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Thu, 30 Mar 2017 01:56:46 -0700 (PDT)
In-Reply-To: <766b24f4-b6e1-3260-8a4e-611853698497@iseg-hv.de>
References: <766b24f4-b6e1-3260-8a4e-611853698497@iseg-hv.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 30 Mar 2017 09:56:46 +0100
Message-ID: <CAJTo0La_b8=kBTKCQSe3LGFY=9EwSiqbzzEJQqdegt9RJ8bqzw@mail.gmail.com>
To: Yuvarajesh Valleru <yv@iseg-hv.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Parse error: unable to parse line
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
X-List-Received-Date: Thu, 30 Mar 2017 08:57:09 -0000
Content-Type: multipart/alternative; boundary=001a114fe396a12ee8054beee0a8

--001a114fe396a12ee8054beee0a8
Content-Type: text/plain; charset=UTF-8

On 30 March 2017 at 09:14, Yuvarajesh Valleru <yv@iseg-hv.de> wrote:

> SUMMARY = "hello world program"
> HOMEPAGE = "http://www.yoctoproject.org/"
> SECTION = "network"
> LICENSE = "CLOSED"
> inherit qt4e
>
> SRC_URI = " \
>     file://helloworld.pro \
>     file://helloworld.cpp \
>     "
>
> S = "${WORKDIR}"
>
> QMAKE_PROFILES = "${WORKDIR}/helloworld.pro \
>     "
>
> do_compile() {
>         ${CC} helloworld.cpp -o helloworld
> }
>
> do_install() {
>         install -d ${D}${bindir} ${D}${docdir}/helloworld
>         install -m 0644 helloworld
>

Did you leave out the trailing } here in the real file?

Ross

--001a114fe396a12ee8054beee0a8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 30 March 2017 at 09:14, Yuvarajesh Valleru <span dir=3D"ltr">&lt;<a href=
=3D"mailto:yv@iseg-hv.de" target=3D"_blank">yv@iseg-hv.de</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div id=3D":2vm" class=3D"a3s aXjCH =
m15b1e4a4c14492a6">SUMMARY =3D &quot;hello world program&quot;<br>
HOMEPAGE =3D &quot;<a href=3D"http://www.yoctoproject.org/" rel=3D"noreferr=
er" target=3D"_blank">http://www.yoctoproject.org/</a>&quot;<br>
SECTION =3D &quot;network&quot;<br>
LICENSE =3D &quot;CLOSED&quot;<br>
inherit qt4e<br>
<br>
SRC_URI =3D &quot; \<br>
=C2=A0 =C2=A0 file://<a href=3D"http://helloworld.pro" rel=3D"noreferrer" t=
arget=3D"_blank">helloworld.pro</a> \<br>
=C2=A0 =C2=A0 file://helloworld.cpp \<br>
=C2=A0 =C2=A0 &quot;<br>
<br>
S =3D &quot;${WORKDIR}&quot;<br>
<br>
QMAKE_PROFILES =3D &quot;${WORKDIR}/<a href=3D"http://helloworld.pro" rel=
=3D"noreferrer" target=3D"_blank">helloworld.pro</a> \<br>
=C2=A0 =C2=A0 &quot;<br>
<br>
do_compile() {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${CC} helloworld.cpp -o helloworld<br>
}<br>
<br>
do_install() {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d ${D}${bindir} ${D}${docdir}/hellowor=
ld<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 0644 helloworld<br></div></blockquot=
e></div><br>Did you leave out the trailing } here in the real file?</div><d=
iv class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></d=
iv>

--001a114fe396a12ee8054beee0a8--
