Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A083EEAA78
	for <webhook@archiver.kernel.org>; Thu, 14 Sep 2023 21:52:44 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
 by mx.groups.io with SMTP id smtpd.web11.7215.1694728358453236334
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Sep 2023 14:52:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=JPyJ2/AU;
 spf=pass (domain: smile.fr, ip: 209.85.218.51, mailfrom: yoann.congal@smile.fr)
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-9ad8a33fd0dso185015766b.3
        for <yocto@lists.yoctoproject.org>; Thu, 14 Sep 2023 14:52:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1694728357; x=1695333157; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=j9pFIBsDtcrnmWueUQnkbRUQtkjj9z7Ow/eJZmC0NyI=;
        b=JPyJ2/AUNwNa9lPJiF+Yx2Rgq2kv8k13xHtJAct0GNZfWEvGb2IMBn5lEqIE+WdCkF
         KLB/4iEHmsnoGNitAxDkN5HbZm+9dCSB63L5v+qUabqZx1oV1T9Cf2UFi/bq1EaseGTD
         zDYFEJE8UBUv+xCc+344yNU+lgExpuHM2UXkKfqulLM2CyTOfdGVDrm4vf6cOZ2Yfdxn
         dEy5LEBDUzorDnc6y0nj+cZxzUCKhxKDwnN4+qPtcXH9PEswkiWwZNuBrTHhNYSKnrnP
         9RhlB/7hO10tp6vDBSMPARa3Y1ye1dBsHfqohe0RBjLs1VgWujk2kijyB9LrFFIZZ4Bp
         zb9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694728357; x=1695333157;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j9pFIBsDtcrnmWueUQnkbRUQtkjj9z7Ow/eJZmC0NyI=;
        b=eNWq9JlQrM+sEqk00H45L3ZWPUmHiL6TNtcNlrJoOiHP+nhp+N44mZzh3UF7kByrHu
         3+rYn4Zzhd2Vof6PrAr82bFt+cZiMQHd1+WL0ppgJkcEkWlas3EKRhaU23tM5iWK4MrL
         EXndCt3hCcNz+CUfhKH8sU3PUGvKxaPsK30U6Bq0mfyY1ugVaoxq00piGAMrBixlHZLJ
         hU2RswK81Qs4A8OnwxCWLZkS0vbYZBBZ/iTVaYvEAFI5IokbgKmBmEADBGfBEU2iBIZl
         9GvEbi9xC/sTvG3r4O3R/llohwNPizR8xCuz3tHrRajT95GXPlLtXKUPl7+hu+fR1Ubf
         5cZg==
X-Gm-Message-State: AOJu0Yx/TbOehK5gXZ7hDjrFiwvqe1k1tGt5g23Teirsd8jOvYwJJW5C
	q1Xapl6yfof60elceDK9cG1WyTJ6vSnPAXkMWVYmNQ==
X-Google-Smtp-Source: AGHT+IHHnJSsFvriQcGwGEkZHJWjeOUOIw/rgupicACkPadv4iOHbK1Lag9PCpT/Z1A2YaAVxrh5uf3saJHWFZRlTG0=
X-Received: by 2002:a17:907:75cd:b0:9aa:1e2d:56ee with SMTP id
 jl13-20020a17090775cd00b009aa1e2d56eemr5783946ejc.7.1694728356785; Thu, 14
 Sep 2023 14:52:36 -0700 (PDT)
MIME-Version: 1.0
References: <DB6PR01MB3736481355587A417D929794A41EA@DB6PR01MB3736.eurprd01.prod.exchangelabs.com>
 <CAGAf8LwKRDmacsgnsKLqofneB85CetU_h3H7s12b8gY8_y6ZwA@mail.gmail.com> <DB6PR01MB373690DA20F88E3A64ECAEBBA4F7A@DB6PR01MB3736.eurprd01.prod.exchangelabs.com>
In-Reply-To: <DB6PR01MB373690DA20F88E3A64ECAEBBA4F7A@DB6PR01MB3736.eurprd01.prod.exchangelabs.com>
From: Yoann CONGAL <yoann.congal@smile.fr>
Date: Thu, 14 Sep 2023 23:52:10 +0200
Message-ID: <CAMSfU+4tNg0kSJr6PZWLoqbvZDhQTr0Eb-VKbCGMhCNXvO0x_w@mail.gmail.com>
Subject: Re: [yocto] Poky/Mickledore bitbake menuconfig does not work
To: "Sebert, Holger.ext" <holger.sebert.ext@karlstorz.com>
Cc: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000b288fd060558b1f7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Sep 2023 21:52:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61012

--000000000000b288fd060558b1f7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Le jeu. 14 sept. 2023 =C3=A0 14:10, Sebert, Holger.ext <
holger.sebert.ext@karlstorz.com> a =C3=A9crit :

> Hi Zoran,
>
> I was able to reproduce the behavior described in my original post by
> enabling CCache. Here are the precise steps to reproduce:
>
> 1. Checkout Poky/Mickledore
> 2. Add the following to `build/conf/local.conf`:
>     INHERIT +=3D "ccache"
> 3. Run `bitbake -c menuconfig virtual/kernel`
>
> The reason for the failure is that due to CCache the compiler is no longe=
r
> `gcc` but `ccache gcc`, i.e. we have the following variables in the
> environment:
>
>     CC=3D"ccache x86_64-poky-linux-gcc"
>     HOSTCC=3D"ccache gcc"
>     ...
>     etc.
>
> This is when the wrong quoting in the invocation of `menuconfig` leads to
> errors.
>
> Could you please verify/check?
>


I have reproduced this. It really looks like a bug!


> [...]
> On Mon, Aug 21, 2023 at 3:48=E2=80=AFPM Sebert, Holger.ext
> <holger.sebert.ext@karlstorz.com> wrote:
> >
> > Hi,
> >
> > I am using a Yocto-Poky-Mickledore (version 4.2.1) based system.
> >
> > For configuring the kernel, I would like to use the command
> >
> >     bitbake -c menuconfig virtual/kernel
> >
> > If I do that, Bitbake opens an xterm window and runs the build steps
> > for Kconfig. However, after the compiler has finised, the xterm window
> > immediately closes and Bitbake exists as if nothing happened, i.e. it
> > does not show any error message or similar.
> >
> > I investigated the problem and found out that, internally, Bitbake
> > calls the following command for starting Kconfig:
> >
> >     make menuconfig CC=3D"ccache x86_64-system-linux-gcc ..." \
> >         CFLAGS=3D"..." HOSTCC=3D"ccache gcc" HOSTCCFLAGS=3D"..."
> >
> > The quotes, however, seem to get lost when starting the actual command
> > in the terminal. This leads to a command line like follows:
> >
> >     make menuconfig CC=3Dccache x86_64-system-linux-gcc ... \
> >         CFLAGS=3D... HOSTCC=3D"ccache gcc" HOSTCCFLAGS=3D"...
> >
> > which is clearly wrong.
> >
> > The following patch fixes the problem in
> meta/classes-recipe/cml1.bbclass:
> >
> > diff --git a/meta/classes-recipe/cml1.bbclass
> b/meta/classes-recipe/cml1.bbclass
> > index a09a042c3f..d6001d6fd0 100644
> > --- a/meta/classes-recipe/cml1.bbclass
> > +++ b/meta/classes-recipe/cml1.bbclass
> > @@ -53,7 +53,8 @@ python do_menuconfig() {
> >      # ensure that environment variables are overwritten with this task=
s
> 'd' values
> >      d.appendVar("OE_TERMINAL_EXPORTS", " PKG_CONFIG_DIR PKG_CONFIG_PAT=
H
> PKG_CONFIG_LIBDIR PKG_CONFIG_SYSROOT_DIR")
> >
> > -    oe_terminal("sh -c \"make %s; if [ \\$? -ne 0 ]; then echo 'Comman=
d
> failed.'; printf 'Press any key to continue... '; read r; fi\"" %
> d.getVar('KCONFIG_CONFIG_COMMAND'),
> > +    make_cmd =3D "make %s" %
> d.getVar('KCONFIG_CONFIG_COMMAND').replace('"', '\\"')
> > +    oe_terminal("sh -c \"%s; if [ \\$? -ne 0 ]; then echo 'Command
> failed.'; printf 'Press any key to continue... '; read r; fi\"" % make_cm=
d,
> >                  d.getVar('PN') + ' Configuration', d)
>

This patch looks interesting!
I would use shlex.join() to safely construct the command :
https://docs.python.org/3/library/shlex.html#shlex.join


> > What do you think? Is my observed behavior a configuration error of my
> > setup or does the patch above indeed make sense?
>

The patch makes sense to me.

I guess your next steps are :
* If you want to contribute your patch : reproduce the bug and rebase your
patch on master and send it to the mailing list
* Or, create a bug in https://bugzilla.yoctoproject.org/

Best Regards,

--=20
Yoann Congal
Smile ECS - Tech expert

--000000000000b288fd060558b1f7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">Le=C2=A0jeu. 14 sept. 2023 =C3=A0=C2=A014:10,=
 Sebert, Holger.ext &lt;<a href=3D"mailto:holger.sebert.ext@karlstorz.com">=
holger.sebert.ext@karlstorz.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">Hi Zoran,<br>
<br>
I was able to reproduce the behavior described in my original post by enabl=
ing CCache. Here are the precise steps to reproduce:<br>
<br>
1. Checkout Poky/Mickledore<br>
2. Add the following to `build/conf/local.conf`:<br>
=C2=A0 =C2=A0 INHERIT +=3D &quot;ccache&quot;<br>
3. Run `bitbake -c menuconfig virtual/kernel`<br>
<br>
The reason for the failure is that due to CCache the compiler is no longer =
`gcc` but `ccache gcc`, i.e. we have the following variables in the environ=
ment:<br>
<br>
=C2=A0 =C2=A0 CC=3D&quot;ccache x86_64-poky-linux-gcc&quot;<br>
=C2=A0 =C2=A0 HOSTCC=3D&quot;ccache gcc&quot;<br>
=C2=A0 =C2=A0 ...<br>
=C2=A0 =C2=A0 etc.<br>
<br>
This is when the wrong quoting in the invocation of `menuconfig` leads to e=
rrors.<br>
<br>
Could you please verify/check?<br></blockquote><div><br></div><div><br></di=
v><div>I have reproduced this. It really looks like a bug!<br></div><div></=
div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
[...]<br>

On Mon, Aug 21, 2023 at 3:48=E2=80=AFPM Sebert, Holger.ext<br>
&lt;<a href=3D"mailto:holger.sebert.ext@karlstorz.com" target=3D"_blank">ho=
lger.sebert.ext@karlstorz.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; I am using a Yocto-Poky-Mickledore (version 4.2.1) based system.<br>
&gt;<br>
&gt; For configuring the kernel, I would like to use the command<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0bitbake -c menuconfig virtual/kernel<br>
&gt;<br>
&gt; If I do that, Bitbake opens an xterm window and runs the build steps<b=
r>
&gt; for Kconfig. However, after the compiler has finised, the xterm window=
<br>
&gt; immediately closes and Bitbake exists as if nothing happened, i.e. it<=
br>
&gt; does not show any error message or similar.<br>
&gt;<br>
&gt; I investigated the problem and found out that, internally, Bitbake<br>
&gt; calls the following command for starting Kconfig:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0make menuconfig CC=3D&quot;ccache x86_64-system-lin=
ux-gcc ...&quot; \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0CFLAGS=3D&quot;...&quot; HOSTCC=3D&qu=
ot;ccache gcc&quot; HOSTCCFLAGS=3D&quot;...&quot;<br>
&gt;<br>
&gt; The quotes, however, seem to get lost when starting the actual command=
<br>
&gt; in the terminal. This leads to a command line like follows:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0make menuconfig CC=3Dccache x86_64-system-linux-gcc=
 ... \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0CFLAGS=3D... HOSTCC=3D&quot;ccache gc=
c&quot; HOSTCCFLAGS=3D&quot;...<br>
&gt;<br>
&gt; which is clearly wrong.<br>
&gt;<br>
&gt; The following patch fixes the problem in meta/classes-recipe/cml1.bbcl=
ass:<br>
&gt;<br>
&gt; diff --git a/meta/classes-recipe/cml1.bbclass b/meta/classes-recipe/cm=
l1.bbclass<br>
&gt; index a09a042c3f..d6001d6fd0 100644<br>
&gt; --- a/meta/classes-recipe/cml1.bbclass<br>
&gt; +++ b/meta/classes-recipe/cml1.bbclass<br>
&gt; @@ -53,7 +53,8 @@ python do_menuconfig() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 # ensure that environment variables are overwritte=
n with this tasks &#39;d&#39; values<br>
&gt;=C2=A0 =C2=A0 =C2=A0 d.appendVar(&quot;OE_TERMINAL_EXPORTS&quot;, &quot=
; PKG_CONFIG_DIR PKG_CONFIG_PATH PKG_CONFIG_LIBDIR PKG_CONFIG_SYSROOT_DIR&q=
uot;)<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 oe_terminal(&quot;sh -c \&quot;make %s; if [ \\$? -ne 0=
 ]; then echo &#39;Command failed.&#39;; printf &#39;Press any key to conti=
nue... &#39;; read r; fi\&quot;&quot; % d.getVar(&#39;KCONFIG_CONFIG_COMMAN=
D&#39;),<br>
&gt; +=C2=A0 =C2=A0 make_cmd =3D &quot;make %s&quot; % d.getVar(&#39;KCONFI=
G_CONFIG_COMMAND&#39;).replace(&#39;&quot;&#39;, &#39;\\&quot;&#39;)<br>
&gt; +=C2=A0 =C2=A0 oe_terminal(&quot;sh -c \&quot;%s; if [ \\$? -ne 0 ]; t=
hen echo &#39;Command failed.&#39;; printf &#39;Press any key to continue..=
. &#39;; read r; fi\&quot;&quot; % make_cmd,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 d.getVar=
(&#39;PN&#39;) + &#39; Configuration&#39;, d)<br></blockquote><div><br></di=
v><div>This patch looks interesting!</div><div>I would use shlex.join() to =
safely construct the command :<br></div><div><a href=3D"https://docs.python=
.org/3/library/shlex.html#shlex.join">https://docs.python.org/3/library/shl=
ex.html#shlex.join</a></div><div>=C2=A0<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">
&gt; What do you think? Is my observed behavior a configuration error of my=
<br>
&gt; setup or does the patch above indeed make sense?<br></blockquote><div>=
<br></div><div>The patch makes sense to me.<br></div><div><br></div><div>I =
guess your next steps are :</div><div>* If you want to contribute your patc=
h : reproduce the bug and rebase your patch on master and send it to the ma=
iling list<br></div><div>* Or, create a bug in <a href=3D"https://bugzilla.=
yoctoproject.org/">https://bugzilla.yoctoproject.org/</a></div><div><br></d=
iv><div>Best Regards,<br></div><div><br></div></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature" da=
ta-smartmail=3D"gmail_signature"><div dir=3D"ltr"><font face=3D"Raleway, re=
gular">Yoann Congal</font><div><font face=3D"Raleway, regular">Smile ECS - =
Tech expert<br></font></div></div></div></div>

--000000000000b288fd060558b1f7--

