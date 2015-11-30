Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5474E00B88; Mon, 30 Nov 2015 02:58:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW,WEIRD_PORT autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA05AE00B3D
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 02:58:33 -0800 (PST)
Received: by iouu10 with SMTP id u10so171546235iou.0
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 02:58:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=785C2MqNd62c06p/Z7xAe/3EwquCWPFceXJATHvsN8k=;
	b=ezY004pRNbrtKoCS4/soOEewk6qfQSpVHhLK5iGxJSiWvlcmC7jZtt9BrQsaL/Ufrh
	eEdT7bGUzMBHYBgLv0KPBoJAbSLk+VvSf3n7txJticFtQPN++B3pY4zgYjZCQY2cUB/3
	Dsfve+HTN7wYmxHiCfT9ARvP6CgNZ+THEY76uX8JrSMDXmjIpxOmujGf0yNq6HNa7ii7
	/xxPrswg43SZ9FtfaowUmD+y3YqdkSO3KY8WRjO8jdFRWKHfKAPnTYfmTf0d/AykZFsP
	i0yM6lG0gCUK9jCxnk+zCQ82IgxtcyVqVGV4o8MjLOumTKYvEFoIefwzFPuc5nQrRiHc
	ja8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=785C2MqNd62c06p/Z7xAe/3EwquCWPFceXJATHvsN8k=;
	b=X4DLMEIbVRDRui+ByN1MJj2sYfHKN7374ttbUWqVB5ZN4nZvylJyI5cyFzxmBOmZLh
	brlyrdcvY2tMh6mbkIMDJH5ldaqG4czjXFtjZikxzVtTurJ2U//CbST1KCZuCCUUic1z
	N28MAtLu9DkZzjVca7qI/zrIubYmBCm7RiTwjzJABbSjNtuYnO97OdyaIGf67qXyDTiN
	KW1upNAqGZxc06S00tzWZyJ5hFKfhkAEqLpI9iZNwYhr0OQHPx1GLaHddmPw4UGkACPA
	QA0SAcGn82e31yvsLnRorfB7AYM91qXHIHemARKRm1lt5ydAi+hSJX/lD2ktqLaX7D2k
	d1DA==
X-Gm-Message-State: ALoCoQmpN2MqqpG4yQZ4W6yQdRwThpf5uBEY1+uQyDLAE7AXJ+f8tucPk0uqNxFvlhqAT8pPDXlp
X-Received: by 10.107.130.155 with SMTP id m27mr64290600ioi.133.1448881112978; 
	Mon, 30 Nov 2015 02:58:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.136.141 with HTTP; Mon, 30 Nov 2015 02:58:13 -0800 (PST)
In-Reply-To: <D1A08A646ADA264CBF20EA48083E88EE01DA3568@SHSMSX103.ccr.corp.intel.com>
References: <D1A08A646ADA264CBF20EA48083E88EE01DA3568@SHSMSX103.ccr.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 30 Nov 2015 10:58:13 +0000
Message-ID: <CAJTo0LYD8J7=z1qPaz4y9ZpBQfz7VdTmkmx3QCeU3SPXuFKOhA@mail.gmail.com>
To: "Li, Hao H" <hao.h.li@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Question about configure.ac:46: error: possibly undefined macro
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
X-List-Received-Date: Mon, 30 Nov 2015 10:58:37 -0000
Content-Type: multipart/alternative; boundary=001a113ecd940fa9610525bfec54

--001a113ecd940fa9610525bfec54
Content-Type: text/plain; charset=UTF-8

On 28 November 2015 at 01:32, Li, Hao H <hao.h.li@intel.com> wrote:

> autoreconf: running:
> /home/ssg/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/autoconf
> --include=/home/ssg/yocto/poky/build/tmp/work/corei7-64-smallos-linux/libmicrohttpd/0.9.43-r0/libmicrohttpd-0.9.43/m4/
> --force
>
> | configure.ac:46: error: possibly undefined macro: AC_MSG_CHECKING
>
> |       If this token and others are legitimate, please use
> m4_pattern_allow.
>
> |       See the Autoconf documentation.
>
> | configure.ac:63: error: possibly undefined macro: AC_MSG_RESULT
>
> | configure.ac:77: error: possibly undefined macro: AS_IF
>
> | configure.ac:110: error: possibly undefined macro: AC_LINK_IFELSE
>
> | configure.ac:111: error: possibly undefined macro: AC_LANG_PROGRAM
>
> | configure.ac:183: error: possibly undefined macro: AC_CHECK_HEADERS
>
> | configure.ac:207: error: possibly undefined macro: AC_MSG_WARN
>
> | configure.ac:592: error: possibly undefined macro: AC_CHECK_LIB
>

That happens when some required dependencies are not listed.  If I use the
current recipe in meta-soletta it works fine, but if I revert the last
commit (that adds inherit pkgconfig) then it fails just like that.  So, my
expectation is that you're using an old clone of meta-soletta and need to
pull the latest version (or if you can't do that, add pkgconfig to the
inherit list in that recipe).

Ross

--001a113ecd940fa9610525bfec54
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 28 November 2015 at 01:32, Li, Hao H <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:hao.h.li@intel.com" target=3D"_blank">hao.h.li@intel.com</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><p class=3D"MsoNormal"><u></u></=
p>
<p class=3D"MsoNormal">autoreconf: running: /home/ssg/yocto/poky/build/tmp/=
sysroots/x86_64-linux/usr/bin/autoconf --include=3D/home/ssg/yocto/poky/bui=
ld/tmp/work/corei7-64-smallos-linux/libmicrohttpd/0.9.43-r0/libmicrohttpd-0=
.9.43/m4/ --force<u></u><u></u></p>
<p class=3D"MsoNormal">| <a href=3D"http://configure.ac:46" target=3D"_blan=
k">configure.ac:46</a>: error: possibly undefined macro: AC_MSG_CHECKING<u>=
</u><u></u></p>
<p class=3D"MsoNormal">|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 If this token =
and others are legitimate, please use m4_pattern_allow.<u></u><u></u></p>
<p class=3D"MsoNormal">|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 See the Autoco=
nf documentation.<u></u><u></u></p>
<p class=3D"MsoNormal">| <a href=3D"http://configure.ac:63" target=3D"_blan=
k">configure.ac:63</a>: error: possibly undefined macro: AC_MSG_RESULT<u></=
u><u></u></p>
<p class=3D"MsoNormal">| <a href=3D"http://configure.ac:77" target=3D"_blan=
k">configure.ac:77</a>: error: possibly undefined macro: AS_IF<u></u><u></u=
></p>
<p class=3D"MsoNormal">| <a href=3D"http://configure.ac:110" target=3D"_bla=
nk">configure.ac:110</a>: error: possibly undefined macro: AC_LINK_IFELSE<u=
></u><u></u></p>
<p class=3D"MsoNormal">| <a href=3D"http://configure.ac:111" target=3D"_bla=
nk">configure.ac:111</a>: error: possibly undefined macro: AC_LANG_PROGRAM<=
u></u><u></u></p>
<p class=3D"MsoNormal">| <a href=3D"http://configure.ac:183" target=3D"_bla=
nk">configure.ac:183</a>: error: possibly undefined macro: AC_CHECK_HEADERS=
<u></u><u></u></p>
<p class=3D"MsoNormal">| <a href=3D"http://configure.ac:207" target=3D"_bla=
nk">configure.ac:207</a>: error: possibly undefined macro: AC_MSG_WARN<u></=
u><u></u></p>
<p class=3D"MsoNormal">| <a href=3D"http://configure.ac:592" target=3D"_bla=
nk">configure.ac:592</a>: error: possibly undefined macro: AC_CHECK_LIB</p>=
</blockquote></div><br>That happens when some required dependencies are not=
 listed.=C2=A0 If I use the current recipe in meta-soletta it works fine, b=
ut if I revert the last commit (that adds inherit pkgconfig) then it fails =
just like that.=C2=A0 So, my expectation is that you&#39;re using an old cl=
one of meta-soletta and need to pull the latest version (or if you can&#39;=
t do that, add pkgconfig to the inherit list in that recipe).</div><div cla=
ss=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a113ecd940fa9610525bfec54--
