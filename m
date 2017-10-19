Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 509F5E00CD1; Thu, 19 Oct 2017 07:29:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.176 listed in dnsbl.sorbs.net]
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E591E00C3A
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 07:29:51 -0700 (PDT)
Received: by mail-io0-f176.google.com with SMTP id 101so10020688ioj.3
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 07:29:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Xp+Csm/WxWerE+Q41bMDUWpe+8o07U/Bpzp+nZwXtPo=;
	b=EdPglg1zPWDkxrK76H8epDeKmNzLTvnP3Z1T7xRaOP+PyJNJRUtdeIe9qklKXf7vH0
	TTSWmZ82wI6S0mgrPYhkKnzi7dNJ0BDqYSusoZrXBEvW7+1xoEo5aBJx4WzzQ0Or8FKg
	Bkv/wEoQ67HpyN8nvEnBvuBhEqYxMhZqrMt02kA0PIqSZ/19b+0eGs8WlFwTSfLpfMr6
	WncuBhaUws/9mzhgvx2jqdJb2CTciNCyHnKRdPOnZvBl+r4Je29HY8w0XUJhoQkxPqMu
	/piPZOUOvJb0Ww/xi1ZT8CtvcQtg065Cvj58ATecnFxbm6jbHRbEw+lqv6KPSstcMVWy
	NR2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Xp+Csm/WxWerE+Q41bMDUWpe+8o07U/Bpzp+nZwXtPo=;
	b=Gb4H/WSwkPbsBTEwduKzWn4F+752insAXEPMkAT98lZw4LjHkfyhRtYj0NnR9jDGZE
	q9+zS1AaJG7Ss31a3hn/bTROUcipU/Zh/NFmdN4n6Ss9EVQ0EClSg5Rq8s3LlLDAHeRK
	GEqbT9j3wQK62Hjh1ZxWADM04lrFUDkroQoJAB2z/MALBub6BHO3cr9razLasPzM0NXw
	MQVQPVeUnVuoNlhgnDKH8t5DGq8SjoV+zwOFRhL/vzIdG2f/DkSPWJSuT/Z7272K23Ob
	76RQ71eK0r0H4L6Q1wq5x3r9czh8XF4xqiSsuZ+qjGIGg6IeuC8XmT20n9FQETotjV/e
	81pQ==
X-Gm-Message-State: AMCzsaV1y3ga3ujVT3d6Y04yF0+CZpAL8R0Ii8aHSbRgF/kRM8VR9/4r
	gSgj7TFN/aVOf7pYkWAxFppV6KSMPjwDjUGbDQrTpw==
X-Google-Smtp-Source: ABhQp+RjzkeYcqAAY0BPPeA1hUYQcGBHl+ejdCrF8CDy8oPWliotywFjOz8X+8d+wvt2Lzk3iKpOvrc2VIfz1OZUpjA=
X-Received: by 10.107.36.80 with SMTP id k77mr2147688iok.176.1508423391158;
	Thu, 19 Oct 2017 07:29:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.176.10 with HTTP; Thu, 19 Oct 2017 07:29:30 -0700 (PDT)
In-Reply-To: <DM3P114MB0172CE6E27987CF07583B295F4420@DM3P114MB0172.NAMP114.PROD.OUTLOOK.COM>
References: <DM3P114MB0172CE6E27987CF07583B295F4420@DM3P114MB0172.NAMP114.PROD.OUTLOOK.COM>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 19 Oct 2017 15:29:30 +0100
Message-ID: <CAJTo0LapDkq_cx+3uKN80uPzro0UyonhgDWqMRNCBa4YWmUfow@mail.gmail.com>
To: "Caglayan, Alinur" <alinur.caglayan@accenture.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Plain package isn't built for alsa-lib in Poky
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
X-List-Received-Date: Thu, 19 Oct 2017 14:29:53 -0000
Content-Type: multipart/alternative; boundary="001a1141909e66dc6b055be73011"

--001a1141909e66dc6b055be73011
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Note that the alsa-lib package doesn't actually put the library alsa-lib
but the libasound package, the alsa-lib package could not exist (or for
most recent releases, it exists but only contains card data files).  So if
you're depending on alsa-lib to get the library then that's not the right
name.

Ross

On 19 October 2017 at 09:45, Caglayan, Alinur <alinur.caglayan@accenture.co=
m
> wrote:

> Hello,
>
>
>
> I am trying to build a custom image. Alsa-lib is being compiled and
> packaged successfully, so Bitbake says. However, it only generates -dbg a=
nd
> -dev packages. So while in function do_rootfs, I get =E2=80=9CUnable to i=
nstall
> packages, Collected errors: opkg_prepare_url_for_install: Couldn't find
> anything to satisfy 'alsa-lib'.=E2=80=9D error. I=E2=80=99ve done some re=
search and found
> this: https://lists.yoctoproject.org/pipermail/yocto/2013-July/014975.htm=
l
>
>
>
> I tried to add FILES_${PN} to alsa-lib.bb since it doesn=E2=80=99t have i=
t, but
> it didn=E2=80=99t work out. In /build/tmp/work/machine/alsa-lib/version/p=
kgdata/runtime/,
> there are informations about packages. Even though FILES_* and FILES_INFO
> are filled with file information for -dbg and -dev, plain doesn=E2=80=99t=
 contain
> anything.
>
>
>
> Here=E2=80=99s my package data for plain package:
>
> PN: alsa-lib
>
> PV: 1.1.3
>
> PR: r0
>
> PKGV: 1.1.3
>
> PKGR: r0
>
> LICENSE: LGPLv2.1 & GPLv2+
>
> DESCRIPTION: ALSA sound library.
>
> SUMMARY: ALSA sound library
>
> SECTION: libs/multimedia
>
> PKG_alsa-lib: alsa-lib
>
> FILES_alsa-lib: /usr/bin/* /usr/sbin/*
>
> FILES_INFO: {}
>
> PKGSIZE_alsa-lib: 0
>
>
>
> Here=E2=80=99s my package data for debug package:
>
> PN: alsa-lib
>
> PV: 1.1.3
>
> PR: r0
>
> PKGV: 1.1.3
>
> PKGR: r0
>
> LICENSE: LGPLv2.1 & GPLv2+
>
> DESCRIPTION_alsa-lib-dbg: ALSA sound library.  This package contains ELF
> symbols and related sources for debugging purposes.
>
> SUMMARY_alsa-lib-dbg: ALSA sound library - Debugging files
>
> RRECOMMENDS_alsa-lib-dbg: glibc-dbg libasound-dbg
>
> SECTION_alsa-lib-dbg: devel
>
> PKG_alsa-lib-dbg: alsa-lib-dbg
>
> ALLOW_EMPTY_alsa-lib-dbg: 1
>
> FILES_alsa-lib-dbg: /usr/lib/debug /usr/src/debug
>
> FILES_INFO: {"/usr/src/debug/alsa-lib/1.1.3-r0/alsa-lib-1.1.3/src/seq/seq=
_hw.c":
> 15085, ...} # It=E2=80=99s pretty long
>
> PKGSIZE_alsa-lib-dbg: 6174238
>
>
>
> Thanks.
>
> ------------------------------
>
> This message is for the designated recipient only and may contain
> privileged, proprietary, or otherwise confidential information. If you ha=
ve
> received it in error, please notify the sender immediately and delete the
> original. Any other use of the e-mail by you is prohibited. Where allowed
> by local law, electronic communications with Accenture and its affiliates=
,
> including e-mail and instant messaging (including content), may be scanne=
d
> by our systems for the purposes of information security and assessment of
> internal compliance with Accenture policy.
> ____________________________________________________________
> __________________________
>
> www.accenture.com
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a1141909e66dc6b055be73011
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Note that the alsa-lib package doesn&#39;t actually put th=
e library alsa-lib but the libasound package, the alsa-lib package could no=
t exist (or for most recent releases, it exists but only contains card data=
 files).=C2=A0 So if you&#39;re depending on alsa-lib to get the library th=
en that&#39;s not the right name.<div><br></div><div>Ross</div></div><div c=
lass=3D"gmail_extra"><br><div class=3D"gmail_quote">On 19 October 2017 at 0=
9:45, Caglayan, Alinur <span dir=3D"ltr">&lt;<a href=3D"mailto:alinur.cagla=
yan@accenture.com" target=3D"_blank">alinur.caglayan@accenture.com</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">





<div lang=3D"TR" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"m_4554547808275396005WordSection1">
<p class=3D"MsoNormal">Hello,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I am trying to build a custom image. Alsa-lib is bei=
ng compiled and packaged successfully, so Bitbake says. However, it only ge=
nerates -dbg and -dev packages. So while in function do_rootfs, I get =E2=
=80=9CUnable to install packages, Collected
 errors: opkg_prepare_url_for_install: Couldn&#39;t find anything to satisf=
y &#39;alsa-lib&#39;.=E2=80=9D error. I=E2=80=99ve done some research and f=
ound this:
<a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2013-July/014975.=
html" target=3D"_blank">https://lists.yoctoproject.<wbr>org/pipermail/yocto=
/2013-July/<wbr>014975.html</a><u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I tried to add FILES_${PN} to <a href=3D"http://alsa=
-lib.bb" target=3D"_blank">alsa-lib.bb</a> since it doesn=E2=80=99t have it=
, but it didn=E2=80=99t work out. In /build/tmp/work/machine/alsa-<wbr>lib/=
version/pkgdata/runtime/, there are informations about packages. Even thoug=
h FILES_* and FILES_INFO are filled
 with file information for -dbg and -dev, plain doesn=E2=80=99t contain any=
thing.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Here=E2=80=99s my package data for plain package:<u>=
</u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">PN: alsa-lib<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">PV: 1.1.3<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">PR: r0<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">PKGV: 1.1.3<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">PKGR: r0<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">LICENSE: LGPLv2.1 &amp; GPLv2+<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">DESCRIPTION: ALSA sound library.<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">SUMMARY: ALSA sound library<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">SECTION: libs/multimedia<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">PKG_alsa-lib: alsa-lib<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">FILES_alsa-lib: /usr/bin/* /usr/sbin/*<u></u><u></u></span><=
/p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">FILES_INFO: {}<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">PKGSIZE_alsa-lib: 0<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">Here=E2=80=99s my package data for debug package:<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">PN: alsa-lib<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">PV: 1.1.3<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">PR: r0<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">PKGV: 1.1.3<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">PKGR: r0<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">LICENSE: LGPLv2.1 &amp; GPLv2+<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">DESCRIPTION_alsa-lib-dbg: ALSA sound library.=C2=A0 This pac=
kage contains ELF symbols and related sources for debugging purposes.<u></u=
><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">SUMMARY_alsa-lib-dbg: ALSA sound library - Debugging files<u=
></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">RRECOMMENDS_alsa-lib-dbg: glibc-dbg libasound-dbg<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">SECTION_alsa-lib-dbg: devel<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">PKG_alsa-lib-dbg: alsa-lib-dbg<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">ALLOW_EMPTY_alsa-lib-dbg: 1<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">FILES_alsa-lib-dbg: /usr/lib/debug /usr/src/debug<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">FILES_INFO: {&quot;/usr/src/debug/alsa-lib/1.1.<wbr>3-r0/als=
a-lib-1.1.3/src/seq/<wbr>seq_hw.c&quot;: 15085, ...} # It=E2=80=99s pretty =
long<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">PKGSIZE_alsa-lib-dbg: 6174238<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal">Thanks.<u></u><u></u></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1"><br>
This message is for the designated recipient only and may contain privilege=
d, proprietary, or otherwise confidential information. If you have received=
 it in error, please notify the sender immediately and delete the original.=
 Any other use of the e-mail by
 you is prohibited. Where allowed by local law, electronic communications w=
ith Accenture and its affiliates, including e-mail and instant messaging (i=
ncluding content), may be scanned by our systems for the purposes of inform=
ation security and assessment of
 internal compliance with Accenture policy. <br>
______________________________<wbr>______________________________<wbr>_____=
_____________________<br>
<br>
<a href=3D"http://www.accenture.com" target=3D"_blank">www.accenture.com</a=
><br>
</font>
</div>

<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a1141909e66dc6b055be73011--
