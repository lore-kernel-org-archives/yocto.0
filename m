Return-Path: <jerry.lian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05F9AE00CE8; Mon,  4 Dec 2017 13:38:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jerry.lian[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f171.google.com (mail-ot0-f171.google.com
	[74.125.82.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1F20E00C97
	for <yocto@yoctoproject.org>; Mon,  4 Dec 2017 13:38:16 -0800 (PST)
Received: by mail-ot0-f171.google.com with SMTP id p3so16080395oti.5
	for <yocto@yoctoproject.org>; Mon, 04 Dec 2017 13:38:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Nc2sogedvzHnmFVktMJJxrDIS6o0X9Sq8FjofyyLX7M=;
	b=kcXuFmyXe4huJ3cSTqeTGHwE7N8rqgzv760Ey8PbPhvJlwxT35rz2WTTnQGN5FllNP
	7fLuZUlMlT5j2gx4YYI8Os2+5FHtDVGMWrwFqWixd2Fdeh72CEVyGzhSsl3B4dja1WWY
	mKqGd6LKv52QNPLIWx4sKM+RbKEO5w77VrPto328vUSHeW990h62XifXEYHQMv/e3S4C
	QIYq0WOvjZOkMEMu7YjpLBjkfAqG5btz1QQlcB8tH06L308QxCwYK9npwQzJ3u8ZFktO
	GHw4j/ghnSEYUSakFUuxJPF7L+wK/VP7osnKM+SuYB+LGhoXYpOkCHvPJW6phfeFT+yn
	aL3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Nc2sogedvzHnmFVktMJJxrDIS6o0X9Sq8FjofyyLX7M=;
	b=g8C0E0Qo1/SXSD1jri2ENym1mL2i7EyRe9eU9K5OoAKpT2nWPuU2Qp3AB/CtjnaqfD
	aGcMq6isqE9tlEW6YNguwPbPt3OVmAkE/AnSdgB0o/NwFF4chwuo4ZM2JHRz7HDcj7B5
	mAm0x89WBMazeeTy50IlOeTAf3Z7ErJxT3/4MqfRQrm66zn1pAfzIWs5lyEX5q8a7DSx
	3SwtQaSpcGt2jMumv27++cdXsDlGcICQkdaXJiH9clkDphJRUZGFAtB8kgGlRTWFVM2k
	dyjESd3DeYHQe1FlBKbSczL/iYflHD25gcQGGKF1222s5SUlBrgV2XoPN7KjGax2Lmk4
	lGmA==
X-Gm-Message-State: AJaThX6AfT+dYGebwQCRnXt/8PzHQJjiNo28PmC7ur7ZkiZ9+N9ZY08A
	BoGZdy8a2rX3u+sXTTNs7VkBwlWi7fNOkyxR2IY=
X-Google-Smtp-Source: AGs4zMY/JCjNxYhAGaHvzPEqX6aXid0iaHUPzlpbZrZlK0QEX0EAgK9E346nYNdYkGZzC9IOWwZoyhbrStlg4LykPsY=
X-Received: by 10.157.66.216 with SMTP id c24mr17605284otj.332.1512423495771; 
	Mon, 04 Dec 2017 13:38:15 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.42.113 with HTTP; Mon, 4 Dec 2017 13:38:15 -0800 (PST)
In-Reply-To: <7faff5e8-c38b-965d-aead-ae9b5e2073ec@balister.org>
References: <CAE0QtjP3GYLNDQHZaE1-M9pDvLuP6AtnAMD_xduv5ZwFJfZ9BQ@mail.gmail.com>
	<4c8c114e6c9cc6e224e49e1f237016f6@sw-optimization.com>
	<f025a6f43d84a016ffe06e78f4967daf@sw-optimization.com>
	<CAE0QtjNKpPWUq---XQY4i2Z7ovsE1HH9xMND=kuY6YCPm0rMnw@mail.gmail.com>
	<7faff5e8-c38b-965d-aead-ae9b5e2073ec@balister.org>
From: Jerry Lian <jerry.lian@gmail.com>
Date: Mon, 4 Dec 2017 16:38:15 -0500
Message-ID: <CAE0QtjNbXZ78i3pwxD8pOchxHBGM5FVaqV8raY+CpnxfRrYwSQ@mail.gmail.com>
To: Philip Balister <philip@balister.org>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Yocto SDK: how to deploy application with step "make install" to target?
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
X-List-Received-Date: Mon, 04 Dec 2017 21:38:18 -0000
Content-Type: multipart/alternative; boundary="94eb2c1c1aea372c0b055f8a89a2"

--94eb2c1c1aea372c0b055f8a89a2
Content-Type: text/plain; charset="UTF-8"

Thanks Philip!
I will try "sshfs" later. Right now using copy (via scp) works fine for
both "make install" and "make modules_install", and my application runs.





On Sun, Dec 3, 2017 at 9:17 AM, Philip Balister <philip@balister.org> wrote:

> On 12/01/2017 10:15 AM, Jerry Lian wrote:
> > Thanks Eric for your explanation!
> > * (I know I can build the app within yocto build, but sometimes I prefer
> > the SDK method outside yocto build.)
> > * So just copy manually? I thought there are some tricks  that I don't
> know.
> >
> > Now I have follow-up question:
> > * It seems that "make install" will copy different files to different
> > folders
> > * Can I do like these:?
> > --- make
> > --- copy (via scp)
> > --- make install
> > * Or it needs to be:
> > --- make
> > --- make install
> > --- copy (via scp) -----then how do I know: what files to go which
> folder?
> > --- can you explain:
> >     "... you may supply a custom install prefix directory to configure."
> > --- how?
>
> I've used sshfs to mount the target on the machine with the sdk and then
> something like:
>
> make install DESTDIR=~/mydevice
>
> From:
>
> https://wiki.gnuradio.org/index.php/Cross_compile_an_
> OOT_and_install_on_target
>
> Philip
>
> >
> > Thanks!
> >
> >
> >
> >
> >
> > On Fri, Dec 1, 2017 at 9:34 AM, Eric Schwarz <eas@sw-optimization.com>
> > wrote:
> >
> >> Am 01.12.2017 15:16, schrieb Eric Schwarz:
> >>
> >> Hi Jerry,
> >>>
> >>> Am 01.12.2017 15:07, schrieb Jerry Lian:
> >>>
> >>> I am new to embedded linux, and some concepts confuse me:
> >>>> * I have downloaded an Autotools-based application to run on my board.
> >>>> * If I boot the board with original image/original SDK, I normally
> >>>> build/install it with steps:
> >>>> ----- ./bootstrap
> >>>> ----- ./configure
> >>>> ----- make
> >>>> ----- make install
> >>>>
> >>>
> >>> You may build your app within yocto build process so your application
> is
> >>> contained in your rootFS directly.
> >>>
> >>> * Now if I boot the board with yocto image without SDK, how can I
> deploy
> >>>> the application?
> >>>> ---- (surely I do "bitbake -c populate_sdk some-image", and source the
> >>>> environment!)
> >>>>
> >>>> ----- ./bootstrap (Yocto SDK on host)
> >>>> ----- ./configure (Yocto SDK on host)
> >>>> ----- make         (Yocto SDK on host)
> >>>> ----- make install (???)
> >>>>
> >>>
> >>> If you build it w/ the SDK outside of the yocto build process just
> >>> install it to a local directory and copy all the stuff w/ e.g. scp onto
> >>> your boards rootFS.
> >>>
> >>
> >> ... you may supply a custom install prefix directory to configure.
> >>
> >>
> >>
> >>> * How to do "make install"? (I want to install it on target, but how?)
> >>>>
> >>>> Thanks!
> >>>>
> >>>
> >>> Cheers
> >>> Eric
> >>>
> >>
> >
> >
> >
>

--94eb2c1c1aea372c0b055f8a89a2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Philip!=C2=A0<div>I will try &quot;sshfs&quot; late=
r. Right now using copy (via scp) works fine for both &quot;make install&qu=
ot; and &quot;make modules_install&quot;, and my application runs.</div><di=
v><br></div><div><br></div><div><br><div><br></div></div></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Sun, Dec 3, 2017 at 9:17=
 AM, Philip Balister <span dir=3D"ltr">&lt;<a href=3D"mailto:philip@baliste=
r.org" target=3D"_blank">philip@balister.org</a>&gt;</span> wrote:<br><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex"><span class=3D"">On 12/01/2017 10:15 AM, Jerry Li=
an wrote:<br>
&gt; Thanks Eric for your explanation!<br>
&gt; * (I know I can build the app within yocto build, but sometimes I pref=
er<br>
&gt; the SDK method outside yocto build.)<br>
&gt; * So just copy manually? I thought there are some tricks=C2=A0 that I =
don&#39;t know.<br>
&gt;<br>
&gt; Now I have follow-up question:<br>
&gt; * It seems that &quot;make install&quot; will copy different files to =
different<br>
&gt; folders<br>
&gt; * Can I do like these:?<br>
&gt; --- make<br>
&gt; --- copy (via scp)<br>
&gt; --- make install<br>
&gt; * Or it needs to be:<br>
&gt; --- make<br>
&gt; --- make install<br>
&gt; --- copy (via scp) -----then how do I know: what files to go which fol=
der?<br>
&gt; --- can you explain:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&quot;... you may supply a custom install prefix di=
rectory to configure.&quot;<br>
&gt; --- how?<br>
<br>
</span>I&#39;ve used sshfs to mount the target on the machine with the sdk =
and then<br>
something like:<br>
<br>
make install DESTDIR=3D~/mydevice<br>
<br>
From:<br>
<br>
<a href=3D"https://wiki.gnuradio.org/index.php/Cross_compile_an_OOT_and_ins=
tall_on_target" rel=3D"noreferrer" target=3D"_blank">https://wiki.gnuradio.=
org/<wbr>index.php/Cross_compile_an_<wbr>OOT_and_install_on_target</a><br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Philip<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt; Thanks!<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Fri, Dec 1, 2017 at 9:34 AM, Eric Schwarz &lt;<a href=3D"mailto:eas=
@sw-optimization.com">eas@sw-optimization.com</a>&gt;<br>
&gt; wrote:<br>
&gt;<br>
&gt;&gt; Am 01.12.2017 15:16, schrieb Eric Schwarz:<br>
&gt;&gt;<br>
&gt;&gt; Hi Jerry,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Am 01.12.2017 15:07, schrieb Jerry Lian:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I am new to embedded linux, and some concepts confuse me:<br>
&gt;&gt;&gt;&gt; * I have downloaded an Autotools-based application to run =
on my board.<br>
&gt;&gt;&gt;&gt; * If I boot the board with original image/original SDK, I =
normally<br>
&gt;&gt;&gt;&gt; build/install it with steps:<br>
&gt;&gt;&gt;&gt; ----- ./bootstrap<br>
&gt;&gt;&gt;&gt; ----- ./configure<br>
&gt;&gt;&gt;&gt; ----- make<br>
&gt;&gt;&gt;&gt; ----- make install<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; You may build your app within yocto build process so your appl=
ication is<br>
&gt;&gt;&gt; contained in your rootFS directly.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; * Now if I boot the board with yocto image without SDK, how ca=
n I deploy<br>
&gt;&gt;&gt;&gt; the application?<br>
&gt;&gt;&gt;&gt; ---- (surely I do &quot;bitbake -c populate_sdk some-image=
&quot;, and source the<br>
&gt;&gt;&gt;&gt; environment!)<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; ----- ./bootstrap (Yocto SDK on host)<br>
&gt;&gt;&gt;&gt; ----- ./configure (Yocto SDK on host)<br>
&gt;&gt;&gt;&gt; ----- make=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(Yocto SDK on =
host)<br>
&gt;&gt;&gt;&gt; ----- make install (???)<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; If you build it w/ the SDK outside of the yocto build process =
just<br>
&gt;&gt;&gt; install it to a local directory and copy all the stuff w/ e.g.=
 scp onto<br>
&gt;&gt;&gt; your boards rootFS.<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; ... you may supply a custom install prefix directory to configure.=
<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;&gt; * How to do &quot;make install&quot;? (I want to install it on=
 target, but how?)<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Thanks!<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Cheers<br>
&gt;&gt;&gt; Eric<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div>

--94eb2c1c1aea372c0b055f8a89a2--
