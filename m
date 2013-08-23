Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-oa0-f53.google.com (mail-oa0-f53.google.com
	[209.85.219.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4E14E00343
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2013 15:23:32 -0700 (PDT)
Received: by mail-oa0-f53.google.com with SMTP id k18so1416656oag.26
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2013 15:23:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=D0vxXAOmMjUOecYnnbFb+8ekoljbABuzgpJ2jbkJmX4=;
	b=V/ZfZIXKwQ2YBblFMyc48CFAbMHBis9aMxguse6WgKLXYYw1RsM1012qrLdAYIQAyg
	7s3AfD2twpBB86pAda/PcTg3wV6Ovxixm5D57NIxKsUi7+8h0BiawHR8+HePKSMx3T6C
	EVf7twG3SZqdis3gOgHwmdd8v1MtkN4HFDWI29QbiUsp7Gl4o4htMRAJtUcn8xOTLed3
	DSvdFUJM8JeC6BJIBzaAxoIy5xaF7RNNIWbNIU+ufYCx0ytmihO0FIz2PSTW5vZZOhSt
	ZbRcXfC0ZfX5OmbRro+NYjFufgYUANm/93nLgV65XjNc+sbLFkjtnYibfrd2USmkQ3Em
	wMww==
X-Gm-Message-State: ALoCoQla7LoUqBvgQ3ULIEtHV4RkG1FnYprjBFGci1wgFEgYD+oTUVxS0gCVC7+WVutYjOl5YFAR
X-Received: by 10.182.176.34 with SMTP id cf2mr1553522obc.45.1377296611708;
	Fri, 23 Aug 2013 15:23:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.172.4 with HTTP; Fri, 23 Aug 2013 15:23:11 -0700 (PDT)
In-Reply-To: <BE8097202F5D44F481C804883469CA01@PAULD>
References: <BE8097202F5D44F481C804883469CA01@PAULD>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Sat, 24 Aug 2013 00:23:11 +0200
Message-ID: <CAP71WjxxvYTmg1fRTpBEW6J_jj_NnDXgYL0n3gfP=5vZ=UjcdA@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: What symbol contains the current sysroot?
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
X-List-Received-Date: Fri, 23 Aug 2013 22:23:35 -0000
Content-Type: multipart/alternative; boundary=e89a8ff1cf824aaa9704e4a4dba1

--e89a8ff1cf824aaa9704e4a4dba1
Content-Type: text/plain; charset=ISO-8859-1

On Sat, Aug 24, 2013 at 12:12 AM, Paul D. DeRocco <pderocco@ix.netcom.com>wrote:

> In a do_compile script within a recipe, what symbol can I use to refer to
> the sysroot in effect during the execution? And whatever it is, is it a
> real environment variable, or some symbol that is substituted by bitbake
> before executing the script?
>

in the .bb file you can use ${STAGING_DIR_TARGET} which gives you the
sysroot.

this variable will be expanded/substituted when bitbake generates the
run.do_compile script to its actual full path.

if you want/need an env variable, you have to set it:

export FOOBAR = "${STAGING_DIR_TARGET}"

then you can use FOOBAR.

--e89a8ff1cf824aaa9704e4a4dba1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Sat, Aug 24, 2013 at 12:12 AM, Paul D. DeRocco <span dir=3D"ltr">&lt;<a =
href=3D"mailto:pderocco@ix.netcom.com" target=3D"_blank">pderocco@ix.netcom=
.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":27v" style=3D"overflow:hidden">I=
n a do_compile script within a recipe, what symbol can I use to refer to<br=
>
the sysroot in effect during the execution? And whatever it is, is it a<br>
real environment variable, or some symbol that is substituted by bitbake<br=
>
before executing the script?<div class=3D"yj6qo ajU"><div id=3D":294" class=
=3D"ajR" tabindex=3D"0"></div></div></div></blockquote></div><br>in the .bb=
 file you can use ${STAGING_DIR_TARGET} which gives you the sysroot.=A0</di=
v><div class=3D"gmail_extra">

<br></div><div class=3D"gmail_extra">this variable will be expanded/substit=
uted when bitbake generates the run.do_compile script to its actual full pa=
th.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">if=
 you want/need an env variable, you have to set it:</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">export FOOB=
AR =3D &quot;${STAGING_DIR_TARGET}&quot;</div><div class=3D"gmail_extra"><b=
r></div><div class=3D"gmail_extra">then you can use FOOBAR.</div><div class=
=3D"gmail_extra">

<br></div></div>

--e89a8ff1cf824aaa9704e4a4dba1--
