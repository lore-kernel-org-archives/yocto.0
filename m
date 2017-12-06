Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D13CDE00D68; Tue,  5 Dec 2017 23:22:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f177.google.com (mail-wr0-f177.google.com
	[209.85.128.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6F9DE00D00
	for <yocto@yoctoproject.org>; Tue,  5 Dec 2017 23:22:13 -0800 (PST)
Received: by mail-wr0-f177.google.com with SMTP id a41so2782653wra.6
	for <yocto@yoctoproject.org>; Tue, 05 Dec 2017 23:22:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=k9VAwcT5p0a5ltcSOztc+Q2gIuFvBUIszBG9NhWaGBQ=;
	b=uXJZElGq5qEA+V9cOAzaq8pz5HRR8jPHo8RScI4fO9qVhvOctHEgFTW2UQr8ikMfgD
	OxwYDf8bqZ6BffHgpFy9ZvC/aq8Qv6zeG2baQOf5l+nLeqMRp7kros8phJNBvFfK23/T
	1rlEjhlYB5qV3U+cTEGG8llVKN9JTzPQ7fT8SEmzd3Sfws5UOn0LtNJ3IQ2+9KRe7u2z
	rzypEZHQxtTVvH3muhU2t2NYvcTLYvrIePFC49vT1n6JyvG6PACccLM+CB8pu8QQ4ZxM
	dubVozom9AqdJHW9fXeuTpwumF0wsAMGonJodapDSAx4ad4MX4kVi+oIutJ47h0nXyRt
	l2Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=k9VAwcT5p0a5ltcSOztc+Q2gIuFvBUIszBG9NhWaGBQ=;
	b=DZXVZVYGEgynYMzloiwMHYHnwhZk2oqjIawBQbPSRhbyVv3akjidIJV/AOa4V/jX4D
	EUFeEsr7m6berDCjkaY02Y5wXepyCDYtw2bDFIMvCIPXx50yrT9i8yDXc7pGn899fJEh
	lTr5Gt+hWyw6WEQRdCLJm4DWMTtqfALpQgj4HTNHSdyfGabQY/FX+SMFCy2LxyZ9V5Qd
	anX60hyO5JZuQuQVrJjUR0qXBNafaeGy5/E5bXUlMB3cq4eS+2uEhenAntH9YSlsvaQy
	BxTQ59rPTYERdz7OGxgEeW0HehUk4JAYAPUf46BTQzkIpjVXYn1gs9RYYOFCSEgKEDe6
	wckg==
X-Gm-Message-State: AJaThX7ToL4IZaGpXQDe3Fx62vKpQzr/tN1yjIArTLgVf8R8DGfpem51
	H3cOQ2agTE5MbkUpm73wURTeL1hLMcgCIPcdwfsH7g==
X-Google-Smtp-Source: AGs4zMaCAf1w+q9Cp4b0klDNV93GMTtV4xCrzxqFptVLVSoDtUXBDAOkWTMtpN8QMXHNMmn4yu/YIOdx3Aaeu62pELU=
X-Received: by 10.223.165.89 with SMTP id j25mr19186197wrb.206.1512544932457; 
	Tue, 05 Dec 2017 23:22:12 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.97.215 with HTTP; Tue, 5 Dec 2017 23:22:11 -0800 (PST)
In-Reply-To: <24c7418f-b077-f224-2cc8-ce399a2967db@vitheia.com>
References: <24c7418f-b077-f224-2cc8-ce399a2967db@vitheia.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 6 Dec 2017 08:22:11 +0100
Message-ID: <CAGAf8LwLZWp7x+O=wvyXb3Vm-7p0TT7hBaEkNCgrB80OYTN2bQ@mail.gmail.com>
To: Mircea Gliga <mircea.gliga@vitheia.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: bitbake menuconfig fails
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
X-List-Received-Date: Wed, 06 Dec 2017 07:22:14 -0000
Content-Type: multipart/alternative; boundary="f403045f194a67f05a055fa6cf9c"

--f403045f194a67f05a055fa6cf9c
Content-Type: text/plain; charset="UTF-8"

Hello Mircea,

From my point of view:

*> /usr/bin/ld: cannot find -lncursesw*
> collect2: error: ld returned 1 exit status
> scripts/Makefile.host:111: recipe for target 'scripts/kconfig/mconf'
failed

The first line explains it all. You could not configure 4.14, since for
this you should have ncurses package. I would further say, the
YOCTO ncurses version you have, which is used for 4.8 is outdated, so you
need newer (matching) YOCTO version for 4.14.

Why you are able to configure 4.14 outside of yocto? Because you use
another version of ncurses, one which is host native to
Debian 8. YOCTO probably uses some other host based ncurses inside YOCTO
(in Open Embedded/meta layer, my best guess).

Zoran

On Wed, Dec 6, 2017 at 7:31 AM, Mircea Gliga <mircea.gliga@vitheia.com>
wrote:

> Hello
>
> We are using in our layer a kernel 4.8 recipe (linux-stable_4.8.bb)-
> everything ok.
> I'm trying to upgrade to 4.14, I created a new recipe linux-stable_4.14.bb.
> They live side by side, for now.
> But with the 4.14 kernel when running `bitbake -c menuconfig
> linux-stable`, the new terminal comes up and I get the following error:
>
>   HOSTCC  scripts/basic/fixdep
>   GEN     ./Makefile
>   HOSTCC  scripts/kconfig/mconf.o
>   HOSTCC  scripts/kconfig/zconf.tab.o
>   HOSTCC  scripts/kconfig/lxdialog/checklist.o
>   HOSTCC  scripts/kconfig/lxdialog/util.o
>   HOSTCC  scripts/kconfig/lxdialog/inputbox.o
>   HOSTCC  scripts/kconfig/lxdialog/textbox.o
>   HOSTCC  scripts/kconfig/lxdialog/yesno.o
>   HOSTCC  scripts/kconfig/lxdialog/menubox.o
>   HOSTLD  scripts/kconfig/mconf
> /usr/bin/ld: cannot find -lncursesw
> collect2: error: ld returned 1 exit status
> scripts/Makefile.host:111: recipe for target 'scripts/kconfig/mconf' failed
> make[3]: *** [scripts/kconfig/mconf] Error 1
> /media/mircea/ExtLinux/Adventure/testBuildServer/product-
> sama5-kernel/yocto/build/tmp/work-shared/cuxe/kernel-source/Makefile:548:
> recipe for target 'menuconfig' failed
> make[2]: *** [menuconfig] Error 2
> Makefile:146: recipe for target 'sub-make' failed
> make[1]: *** [sub-make] Error 2
> Makefile:24: recipe for target '__sub-make' failed
> make: *** [__sub-make] Error 2
> Command failed.
>
>
> If I rename linux-stable_4.14.bb to linux-stable_4.14.bb___, then run
> bitbake again (now the build system is working with the 4.8 kernel again)
> => menuconfig starts and works as expected.
>
> I'm using krogoth, 2.1.2, Debian 8 (jessie)
>
> I also tried to config the kernel outside of yocto, downloaded
> https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.14.4.tar.xz,
> extracted and run make menuconfig => works as expected
>
> Any hints are appreciated.
>
> Thanks
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--f403045f194a67f05a055fa6cf9c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Mircea,<div><br></div><div>From my point of view:</d=
iv><div><br></div><div><i><u>&gt;=C2=A0<span style=3D"font-size:12.8px">/us=
r/bin/ld: cannot find -lncursesw</span></u></i></div><span style=3D"font-si=
ze:12.8px">&gt; collect2: error: ld returned 1 exit status</span><br style=
=3D"font-size:12.8px"><span style=3D"font-size:12.8px">&gt; scripts/Makefil=
e.host:111: recipe for target &#39;scripts/kconfig/mconf&#39; failed</span>=
<div><span style=3D"font-size:12.8px"><br></span></div><div><span style=3D"=
font-size:12.8px">The first line explains it all. You could not configure 4=
.14, since for this you should have ncurses package. I would further say, t=
he</span></div><div><span style=3D"font-size:12.8px">YOCTO ncurses version =
you have, which is used for 4.8 is outdated, so you need newer (matching) Y=
OCTO version for 4.14.</span></div><div><span style=3D"font-size:12.8px"><b=
r></span></div><div><span style=3D"font-size:12.8px">Why you are able to co=
nfigure 4.14 outside of yocto? Because you use another version of ncurses, =
one which is host native to</span></div><div><span style=3D"font-size:12.8p=
x">Debian 8. YOCTO probably uses some other host based ncurses inside YOCTO=
 (in Open Embedded/meta layer, my best guess).</span></div><div><span style=
=3D"font-size:12.8px"><br></span></div><div><span style=3D"font-size:12.8px=
">Zoran</span></div></div><div class=3D"gmail_extra"><br><div class=3D"gmai=
l_quote">On Wed, Dec 6, 2017 at 7:31 AM, Mircea Gliga <span dir=3D"ltr">&lt=
;<a href=3D"mailto:mircea.gliga@vitheia.com" target=3D"_blank">mircea.gliga=
@vitheia.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hello<=
br>
<br>
We are using in our layer a kernel 4.8 recipe (<a href=3D"http://linux-stab=
le_4.8.bb" rel=3D"noreferrer" target=3D"_blank">linux-stable_4.8.bb</a>)- e=
verything ok.<br>
I&#39;m trying to upgrade to 4.14, I created a new recipe <a href=3D"http:/=
/linux-stable_4.14.bb" rel=3D"noreferrer" target=3D"_blank">linux-stable_4.=
14.bb</a>. They live side by side, for now.<br>
But with the 4.14 kernel when running `bitbake -c menuconfig linux-stable`,=
 the new terminal comes up and I get the following error:<br>
<br>
=C2=A0 HOSTCC=C2=A0 scripts/basic/fixdep<br>
=C2=A0 GEN=C2=A0=C2=A0=C2=A0=C2=A0 ./Makefile<br>
=C2=A0 HOSTCC=C2=A0 scripts/kconfig/mconf.o<br>
=C2=A0 HOSTCC=C2=A0 scripts/kconfig/zconf.tab.o<br>
=C2=A0 HOSTCC=C2=A0 scripts/kconfig/lxdialog/check<wbr>list.o<br>
=C2=A0 HOSTCC=C2=A0 scripts/kconfig/lxdialog/util.<wbr>o<br>
=C2=A0 HOSTCC=C2=A0 scripts/kconfig/lxdialog/input<wbr>box.o<br>
=C2=A0 HOSTCC=C2=A0 scripts/kconfig/lxdialog/textb<wbr>ox.o<br>
=C2=A0 HOSTCC=C2=A0 scripts/kconfig/lxdialog/yesno<wbr>.o<br>
=C2=A0 HOSTCC=C2=A0 scripts/kconfig/lxdialog/menub<wbr>ox.o<br>
=C2=A0 HOSTLD=C2=A0 scripts/kconfig/mconf<br>
/usr/bin/ld: cannot find -lncursesw<br>
collect2: error: ld returned 1 exit status<br>
scripts/Makefile.host:111: recipe for target &#39;scripts/kconfig/mconf&#39=
; failed<br>
make[3]: *** [scripts/kconfig/mconf] Error 1<br>
/media/mircea/ExtLinux/Adventu<wbr>re/testBuildServer/product-<wbr>sama5-ke=
rnel/yocto/build/tmp/<wbr>work-shared/cuxe/kernel-<wbr>source/Makefile:548:=
 recipe for target &#39;menuconfig&#39; failed<br>
make[2]: *** [menuconfig] Error 2<br>
Makefile:146: recipe for target &#39;sub-make&#39; failed<br>
make[1]: *** [sub-make] Error 2<br>
Makefile:24: recipe for target &#39;__sub-make&#39; failed<br>
make: *** [__sub-make] Error 2<br>
Command failed.<br>
<br>
<br>
If I rename <a href=3D"http://linux-stable_4.14.bb" rel=3D"noreferrer" targ=
et=3D"_blank">linux-stable_4.14.bb</a> to linux-stable_4.14.bb___, then run=
 bitbake again (now the build system is working with the 4.8 kernel again) =
=3D&gt; menuconfig starts and works as expected.<br>
<br>
I&#39;m using krogoth, 2.1.2, Debian 8 (jessie)<br>
<br>
I also tried to config the kernel outside of yocto, downloaded <a href=3D"h=
ttps://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.14.4.tar.xz" rel=3D"nor=
eferrer" target=3D"_blank">https://cdn.kernel.org/pub/lin<wbr>ux/kernel/v4.=
x/linux-4.14.4.<wbr>tar.xz</a>, extracted and run make menuconfig =3D&gt; w=
orks as expected<br>
<br>
Any hints are appreciated.<br>
<br>
Thanks<span class=3D"HOEnZb"><font color=3D"#888888"><br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--f403045f194a67f05a055fa6cf9c--
