Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.11712.1576772225162953041
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Dec 2019 08:17:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@assonance-org.20150623.gappssmtp.com header.s=20150623 header.b=1EpXV6Ir;
 spf=softfail (domain: assonance.org, ip: 140.211.169.56, mailfrom: aaron@assonance.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06555E01297; Thu, 19 Dec 2019 08:17:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE9B8E0082A
	for <yocto@yoctoproject.org>; Thu, 19 Dec 2019 08:17:03 -0800 (PST)
Received: by mail-ot1-f42.google.com with SMTP id 77so7823634oty.6
        for <yocto@yoctoproject.org>; Thu, 19 Dec 2019 08:17:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=assonance-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IDB51wtBgMBk9MldGgJ6WremwWNVBweax+2MyiJy7T0=;
        b=1EpXV6Ir6wQGajpL37eAyIedcjrmI+uFillDBR950XHhNmY5vXi9ZX38pPEXCu6nin
         WUMBKZke73QkGzL/47UoHDfIjmWx13iErYX0V+jZgxCOPEeHKAwqJtjve258GtnSb8Mg
         4GWMevtZ5s4+6zIVeeU0FGmBoJcziaoimq2xXgwm7yOllqOHBHz7h1mIFrObiYHLOkQt
         sDph+Ev6m1OhN6yKIuzpf1JxzpTjqQCfCalVEkD+zfmlLf6va/8nz0+WzfzFgv+6qGNt
         8MdqFxzB08k0NNiQDlY7QG0+hef+TDSDJeeG7uZT/m1Rts3ErYGso5INyP17I+2R6bEm
         l5hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IDB51wtBgMBk9MldGgJ6WremwWNVBweax+2MyiJy7T0=;
        b=ZLPZlUeOIHDyxh/QqhyxUn9txY0H8cmHMgSiQeCF7yhBWAEra3KuKLKOSzaVt6U8zK
         OfXMYj9XoZmlq8kCWTUsu6BiqBQ5w+M+8rXl+UdNcVmr7Ovc5ZZBM9jYYG7LQp/Gs5u9
         IEU07BAQU6+6ilacUikNh8AA1ip3XSuGiKoZr9MMH6UIqMlR2jR59ntcN65Tz2ndvzJm
         6QBWxOEJpaVdvAkM7mWGAOwBPgpb9z5FiZeHr4wyvdztBmJDdDorhjuo6A4VFurx1JJX
         wxcXcRFRZ9r12pHTL+ltqgGmS9WoP2T11d2QLSij6scOus0ijewJJqJ/mluiv2MYYmoF
         JcEA==
X-Gm-Message-State: APjAAAU/ZyBtmgVXZzfYxdNVMmY4W0pi35IdZ8Syk7Ck4vg64azPLG0P
	kwwBcFCM/KkXbWpJSTfGQgE/ak1P7ZnK3os23294VGFv
X-Google-Smtp-Source: APXvYqyLZD0ggwOHFiDMawMn9K1niVqXYmPCJnAysgHqCyNXwfATgW7qqGkRWg5H2Io3GNoOU67F3k0A8UM+UI3RNz0=
X-Received: by 2002:a05:6830:13d3:: with SMTP id e19mr79384otq.135.1576772222941;
 Thu, 19 Dec 2019 08:17:02 -0800 (PST)
MIME-Version: 1.0
References: <20191211071807.GA32639@linux-uys3> <CAP71Wjz6BvcW5Ct1o2tHJyzND5ZtYfwMz6Vhmdk7prsbm=27ZA@mail.gmail.com>
 <20191211153955.GA5676@linux-uys3>
In-Reply-To: <20191211153955.GA5676@linux-uys3>
From: "Joel A Cohen" <aaron@assonance.org>
Date: Thu, 19 Dec 2019 11:16:52 -0500
Message-ID: <CAFSZm+hwyPCoJ67ymkMMigUcm0q3xQfjbEPvu_5GfCR5CA6x2A@mail.gmail.com>
Subject: Re: [yocto] variable and task/function timing
To: Trevor Woerner <twoerner@gmail.com>
Cc: Nicolas Dechesne <nicolas.dechesne@linaro.org>, 
	Yocto list discussion <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000003d9c5b059a10e420"

--0000000000003d9c5b059a10e420
Content-Type: text/plain; charset="UTF-8"

As a user, I much prefer having one MESON_BUILD_TYPE variable that I can
modify using the pn-operator, even if the acceptable values are a little
less pretty. The alternative is a variable that I have to guess that name
of and what valid values are per-recipe. Sure it's just MESA_BUILD_TYPE
now, but next week is there going to be GLIB_BUILD_TYPE and GTK_BUILD_TYPE
too?

Also, if "debugoptimized" is the accepted name from the meson world, I feel
it's better to keep it rather than second-guessing them with your own name.

--Aaron

On Wed, Dec 11, 2019 at 10:40 AM Trevor Woerner <twoerner@gmail.com> wrote:

> On Wed 2019-12-11 @ 11:06:44 AM, Nicolas Dechesne wrote:
> > On Wed, Dec 11, 2019 at 8:18 AM Trevor Woerner <twoerner@gmail.com>
> wrote:
>
...

> > You are
> > mixing BUILD_TYPE and BUILDTYPE in your email.. maybe you are mixing
> > that in your testing as well? What is set in local.conf will be parsed
> > first, so if you set a variable there, it will be 'set' when you parse
> > the recipe, so when you use ?= it should be a no-op.
>
> Notice, though, that I'm using two different variables:
>
> 1) MESA_BUILD_TYPE: which can be set to "debug" or "release"
> 2) MESON_BUILDTYPE: which can be set to "plain" or "debugoptimized"
>
> MESA_BUILD_TYPE is how the user tweaks the MESON_BUILDTYPE from the mesa
> recipe. Given what you've said above, however, I can see now that (as you
> say)
> setting:
>
>         MESON_BUILDTYPE_pn-mesa = ...
>
> in conf/local.conf will do what I want since this variable is
> recipe-specific
> and setting it in one recipe this way won't affect it in others.
>
> I'm sure some will say "there's your solution, do it that way, problem
> solved". However, I think "debug/release" are much more natural than
> "plain/debugoptimized". I can't change the MESON_BUILDTYPE strings,
> they have to be one of those two, so I introduced MESA_BUILD_TYPE as a
> level-of-indirection above MESON_BUILDTYPE to allow the user to use the
> more
> natural "debug/release" wording.
>
> So my real question is (and maybe I'm just yak shaving at this point):
> given
> the row/column view of variable setting, how do we factor in the element of
> time? For example, *when* do the variables referenced by anonymous python
> functions and by tasks get set?
>
> This works (but doesn't allow me the space for nice error checking):
>
>         MESON_BUILDTYPE = "${@bb.utils.contains('MESA_BUILD_TYPE',
> 'debug', 'debugoptimized', 'plain', d)}"
>
> and this doesn't:
>
>         python do_check_build_type() {
>             _buildtype = d.getVar('MESA_BUILD_TYPE')
>             if _buildtype not in ['release', 'debug']:
>                 bb.fatal("unknown build type (%s), please set to either
> 'release' or 'debug'" % _buildtype)
>             if _buildtype == 'debug':
>                 d.setVar('MESON_BUILDTYPE', 'debugoptimized')
>                 bb.plain("setting meson build type to debugoptimized")
>         }
>         addtask check_build_type before do_configure
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000003d9c5b059a10e420
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">As a user, I much prefer having one MESON=
_BUILD_TYPE variable that I can modify using the pn-operator, even if the a=
cceptable values are a little less pretty. The alternative is a variable th=
at I have to guess that name of and what valid values are per-recipe. Sure =
it&#39;s just MESA_BUILD_TYPE now, but next week is there going to be GLIB_=
BUILD_TYPE and GTK_BUILD_TYPE too?<div><br></div><div>Also, if &quot;debugo=
ptimized&quot;=C2=A0is the accepted name from the meson world, I feel it&#3=
9;s better to keep it rather than second-guessing them with your own name.<=
br><div><br></div><div>--Aaron</div></div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Dec 11, 2019 at 10:40 AM =
Trevor Woerner &lt;<a href=3D"mailto:twoerner@gmail.com">twoerner@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
On Wed 2019-12-11 @ 11:06:44 AM, Nicolas Dechesne wrote:<br>
&gt; On Wed, Dec 11, 2019 at 8:18 AM Trevor Woerner &lt;<a href=3D"mailto:t=
woerner@gmail.com" target=3D"_blank">twoerner@gmail.com</a>&gt; wrote:<br><=
/blockquote><div>...=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">
&gt; You are<br>
&gt; mixing BUILD_TYPE and BUILDTYPE in your email.. maybe you are mixing<b=
r>
&gt; that in your testing as well? What is set in local.conf will be parsed=
<br>
&gt; first, so if you set a variable there, it will be &#39;set&#39; when y=
ou parse<br>
&gt; the recipe, so when you use ?=3D it should be a no-op.<br>
<br>
Notice, though, that I&#39;m using two different variables:<br>
<br>
1) MESA_BUILD_TYPE: which can be set to &quot;debug&quot; or &quot;release&=
quot;<br>
2) MESON_BUILDTYPE: which can be set to &quot;plain&quot; or &quot;debugopt=
imized&quot;<br>
<br>
MESA_BUILD_TYPE is how the user tweaks the MESON_BUILDTYPE from the mesa<br=
>
recipe. Given what you&#39;ve said above, however, I can see now that (as y=
ou say)<br>
setting:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 MESON_BUILDTYPE_pn-mesa =3D ...<br>
<br>
in conf/local.conf will do what I want since this variable is recipe-specif=
ic<br>
and setting it in one recipe this way won&#39;t affect it in others.<br>
<br>
I&#39;m sure some will say &quot;there&#39;s your solution, do it that way,=
 problem<br>
solved&quot;. However, I think &quot;debug/release&quot; are much more natu=
ral than<br>
&quot;plain/debugoptimized&quot;. I can&#39;t change the MESON_BUILDTYPE st=
rings,<br>
they have to be one of those two, so I introduced MESA_BUILD_TYPE as a<br>
level-of-indirection above MESON_BUILDTYPE to allow the user to use the mor=
e<br>
natural &quot;debug/release&quot; wording.<br>
<br>
So my real question is (and maybe I&#39;m just yak shaving at this point): =
given<br>
the row/column view of variable setting, how do we factor in the element of=
<br>
time? For example, *when* do the variables referenced by anonymous python<b=
r>
functions and by tasks get set?<br>
<br>
This works (but doesn&#39;t allow me the space for nice error checking):<br=
>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 MESON_BUILDTYPE =3D &quot;${@bb.utils.contains(=
&#39;MESA_BUILD_TYPE&#39;, &#39;debug&#39;, &#39;debugoptimized&#39;, &#39;=
plain&#39;, d)}&quot;<br>
<br>
and this doesn&#39;t:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 python do_check_build_type() {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 _buildtype =3D d.getVar(&#39;MESA=
_BUILD_TYPE&#39;)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if _buildtype not in [&#39;releas=
e&#39;, &#39;debug&#39;]:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.fatal(&quot;unkn=
own build type (%s), please set to either &#39;release&#39; or &#39;debug&#=
39;&quot; % _buildtype)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if _buildtype =3D=3D &#39;debug&#=
39;:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 d.setVar(&#39;MESON=
_BUILDTYPE&#39;, &#39;debugoptimized&#39;)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.plain(&quot;sett=
ing meson build type to debugoptimized&quot;)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 addtask check_build_type before do_configure<br=
>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br><br>
</blockquote></div></div>

--0000000000003d9c5b059a10e420--
