Return-Path: <markhawthorne172@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A28BE00E05; Tue, 12 Nov 2019 14:45:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (markhawthorne172[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.45 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
	[209.85.208.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77F06E0085D
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 14:45:08 -0800 (PST)
Received: by mail-ed1-f45.google.com with SMTP id b72so172238edf.1
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 14:45:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=vco2Wvf6ajiSHGu6youPr4Ca2MIPuL2+yIgsdiSZbus=;
	b=qFO5faAY+FRUabLtjiVjT59gO1i03yaU80wFpj45g7J+4H9oNFZM5JIVah9g0oiVXJ
	h3f7nVQfg8o0N0CtCO+RdGi0V5InYdVOXJ8bHBA5ZVk+2bWguQUIGksJNqKZ1wYHP69w
	OMZHDlGNNdxy1Zq0gSOBI/E04zMhH5BcbL8OpobwTw2ncmu4ppDBF8/ajLCc2jaPBuMk
	CeGfZ1KPZeVCDoI6n6xUpfsTqOmHEZkcqkEVqn7aeQjXHhXvQJwXDwpBX0+kJXLi603T
	h8sCFVFehCTI8hJjHmsuuCznKcb3KpHPehz1e7SBGT1PbikEA4YqFcaqKx1fqggc+2cN
	j/kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=vco2Wvf6ajiSHGu6youPr4Ca2MIPuL2+yIgsdiSZbus=;
	b=JKc9HpLkmIgfsxCV7lKkHW3p6tX2R1etlLxN2zWgYVWLjbnH+PvQIzCrbsS2PzArA2
	3FCJ/+jjBaQGCaMovqk9la0/JxBm5oIfnx0hOtl4y3Iy6KxRVUx0o7PhsRm1raRuiHY8
	rBgK34dKMePjd4SMXgj3tqCxf8qNoA49tj0dfMZmtNeA2o6Ip74sh97h1GgCqhzTFTJO
	7uLx4n9iMcrWl3X2rAu4sqqZo6u6gm5LxajEhz9QV4GZy8QxkmVWmwC9Y1flDM7RCwm8
	tSoxT/UhRjGrzwVQlz4XJBi8m/T1ZX6i99ZWwSHoNpRE0lgG1joUmo+3tEtzPf14SBa4
	xqvA==
X-Gm-Message-State: APjAAAUQQSJoVRHbURth9sI9RWYEfW0+Mn0f4yWJ6ZY0THAIXMCQFDEt
	7TNDYs8ChLbLiBl6euRuBljCjhyN96IAXLSkRqB1qYd5
X-Google-Smtp-Source: APXvYqxf0Sv72uheH1S3Un4PK0GCtWcIDxHa2i2vyZBoKMs3edd4SSLNeeu6dQguZPT+4XFXtYvv6Ozct9qWMxyV7oA=
X-Received: by 2002:aa7:c6c9:: with SMTP id b9mr149689eds.1.1573598707322;
	Tue, 12 Nov 2019 14:45:07 -0800 (PST)
MIME-Version: 1.0
References: <CAEEV9O3FJLe8kuGWXRYUTHSJL6WY7tLzxuHouCUFtG5e2pFhkg@mail.gmail.com>
	<20191112214154.GA32308@localhost>
	<CAEEV9O3Qmpg0XJFp=wbRA7ADhCq2ZEMB_bKZ9TMCZf+OrshUbQ@mail.gmail.com>
	<CAMKF1spP__Ofnmo4Xrc9btVBu+=B9LWHJjQuwY5SwgUwUoLXGQ@mail.gmail.com>
In-Reply-To: <CAMKF1spP__Ofnmo4Xrc9btVBu+=B9LWHJjQuwY5SwgUwUoLXGQ@mail.gmail.com>
From: Mark Hawthorne <markhawthorne172@gmail.com>
Date: Tue, 12 Nov 2019 16:44:56 -0600
Message-ID: <CAEEV9O2=TTT0EYa9tRQV5o68GL7eR6EF8i6gCZe69pZzHGPN4w@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: pkg-config not found
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
X-List-Received-Date: Tue, 12 Nov 2019 22:45:09 -0000
Content-Type: multipart/alternative; boundary="000000000000f8113905972dff73"

--000000000000f8113905972dff73
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

No, it did not help

It appears from the config.log file that the PKG_CONFIG variable never gets
set. I'm sorting through the bbclass files to figure out why this is not
getting set...

PKG_CONFIG=3D''
PKG_CONFIG_LIBDIR=3D'/home/mark/Documents/tisdk/build/arago-tmp-external-ar=
m-toolchain/work/armv7at2hf-neon-linux-gnueabi/myprogram/1.0-r0/recipe-sysr=
oot/usr/lib/pkgconfig'
PKG_CONFIG_PATH=3D'/home/mark/Documents/tisdk/build/arago-tmp-external-arm-=
toolchain/work/armv7at2hf-neon-linux-gnueabi/myprogram/1.0-r0/recipe-sysroo=
t/usr/lib/pkgconfig:/home/mark/Documents/tisdk/build/arago-tmp-external-arm=
-toolchain/work/armv7at2hf-neon-linux-gnueabi/myprogram/1.0-r0/recipe-sysro=
ot/usr/share/pkgconfig'

On Tue, Nov 12, 2019 at 4:22 PM Khem Raj <raj.khem@gmail.com> wrote:

> On Tue, Nov 12, 2019 at 2:00 PM Mark Hawthorne
> <markhawthorne172@gmail.com> wrote:
> >
> > Thank you. I have fixed this issue but the original pkg-config error
> still persists.
> >
>
> do a clean build after above change
>
> bitbake -ccleanall <your-recipe>
> bitbake <your-recipe>
>
> does that help ?
>
> > On Tue, Nov 12, 2019 at 3:41 PM Adrian Bunk <bunk@stusta.de> wrote:
> >>
> >> On Tue, Nov 12, 2019 at 03:06:25PM -0600, Mark Hawthorne wrote:
> >> >...
> >> > DEPENDS_${PN} =3D "libpng freetype glm libegl libgles2 libspatialite=
"
> >> >...
> >>
> >> DEPENDS, not DEPENDS_${PN}
> >>
> >> cu
> >> Adrian
> >>
> >> --
> >>
> >>        "Is there not promise of rain?" Ling Tan asked suddenly out
> >>         of the darkness. There had been need of rain for many days.
> >>        "Only a promise," Lao Er said.
> >>                                        Pearl S. Buck - Dragon Seed
> >>
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000f8113905972dff73
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">No, it did not help<div><br></div><div>It appears from the=
 config.log file that the PKG_CONFIG variable never gets set. I&#39;m sorti=
ng through the bbclass files to figure out why this is not getting=C2=A0set=
...</div><div><br></div><div>PKG_CONFIG=3D&#39;&#39;<br>PKG_CONFIG_LIBDIR=
=3D&#39;/home/mark/Documents/tisdk/build/arago-tmp-external-arm-toolchain/w=
ork/armv7at2hf-neon-linux-gnueabi/myprogram/1.0-r0/recipe-sysroot/usr/lib/p=
kgconfig&#39;<br>PKG_CONFIG_PATH=3D&#39;/home/mark/Documents/tisdk/build/ar=
ago-tmp-external-arm-toolchain/work/armv7at2hf-neon-linux-gnueabi/myprogram=
/1.0-r0/recipe-sysroot/usr/lib/pkgconfig:/home/mark/Documents/tisdk/build/a=
rago-tmp-external-arm-toolchain/work/armv7at2hf-neon-linux-gnueabi/myprogra=
m/1.0-r0/recipe-sysroot/usr/share/pkgconfig&#39;<br></div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 12, 2=
019 at 4:22 PM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@=
gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">On Tue, Nov 12, 2019 at 2:00 PM Mark Hawthorne<br>
&lt;<a href=3D"mailto:markhawthorne172@gmail.com" target=3D"_blank">markhaw=
thorne172@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Thank you. I have fixed this issue but the original pkg-config error s=
till persists.<br>
&gt;<br>
<br>
do a clean build after above change<br>
<br>
bitbake -ccleanall &lt;your-recipe&gt;<br>
bitbake &lt;your-recipe&gt;<br>
<br>
does that help ?<br>
<br>
&gt; On Tue, Nov 12, 2019 at 3:41 PM Adrian Bunk &lt;<a href=3D"mailto:bunk=
@stusta.de" target=3D"_blank">bunk@stusta.de</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Tue, Nov 12, 2019 at 03:06:25PM -0600, Mark Hawthorne wrote:<br=
>
&gt;&gt; &gt;...<br>
&gt;&gt; &gt; DEPENDS_${PN} =3D &quot;libpng freetype glm libegl libgles2 l=
ibspatialite&quot;<br>
&gt;&gt; &gt;...<br>
&gt;&gt;<br>
&gt;&gt; DEPENDS, not DEPENDS_${PN}<br>
&gt;&gt;<br>
&gt;&gt; cu<br>
&gt;&gt; Adrian<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;Is there not promise of rain?&quo=
t; Ling Tan asked suddenly out<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0of the darkness. There had been n=
eed of rain for many days.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;Only a promise,&quot; Lao Er said=
.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 P=
earl S. Buck - Dragon Seed<br>
&gt;&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div>

--000000000000f8113905972dff73--
