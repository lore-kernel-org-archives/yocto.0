Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1346C04E84
	for <webhook@archiver.kernel.org>; Wed, 20 Sep 2023 18:00:18 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
 by mx.groups.io with SMTP id smtpd.web10.2452.1695232811717386416
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Sep 2023 11:00:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=mLCmEQUK;
 spf=pass (domain: smile.fr, ip: 209.85.208.46, mailfrom: yoann.congal@smile.fr)
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-52c4d3ff424so19608a12.0
        for <yocto@lists.yoctoproject.org>; Wed, 20 Sep 2023 11:00:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1695232810; x=1695837610; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1xAWRDCNwzz65dCD3GkXquxXbChBOOu3zrUGOmVV0u4=;
        b=mLCmEQUKdG1CNOP3+QsGuXPdGLUyXKA98J8MR7Xgfu7C/cFO8bp6siMEMutNYXVzwE
         Udh88xBg9CDVKCg32YgPcmTglOk+/8pK6O1f91nsOlYqSKcT3RtXbn7excFdirVfNNko
         wjpqhXvJMonJiFVvm8wWAPY0UyNYgxK0HUorcRaMDqL4GIQnPaUf04PMyeTdW/Lx188K
         smUGae1qOVlN5AMnC7/mtbEYigsPQqfXPDLAo3JOzyS3GWrG00+Uxlypp06dknHUHlE1
         dQffpetoh2YYzhmTY9Jl3Zj9dIdsLtoOt1LA07Hyxe00dfmCfxPOhnmWknA19buPxCxq
         OLkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695232810; x=1695837610;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1xAWRDCNwzz65dCD3GkXquxXbChBOOu3zrUGOmVV0u4=;
        b=eoXGvmVDz/nvzDPowqqs/r1sVz0YCUqhzuARjzto6VkG521fWBQ45M1GCrgM1+4XHf
         oqbj5U6tdYLvAZl+1Yo5pWNgQw3r7bK45Eo0KaxjLl6AvlwjA6Dq3BJC0BEx1pVOwDKr
         2tRDKjGx/+P9tq8bEUoPPMSpZPM+4P3O1dqP3jDsjRfRHNqy2mmqt766I+32SD1xet6a
         ee0OthtZRzVgJvVesuqA8vMb82na24cjN7L6KQezz2ss582g+aTjkhujg7z3F8qIfjjX
         xADXl+Np1lXXTJOt6/6cPsWaXU/QG4PXvVNSQRVNMKAdg/0o5TbDuZCWbtz5wjABo2jt
         0IxQ==
X-Gm-Message-State: AOJu0YxiHSt9y+tZkxLZmESpAU2iz962zLXLhH9lbgJfQYFhD5J/7+i7
	f1Z3Yfc753lfwV/4C6FKZ2k7maBomQeerlI6rivk9Q==
X-Google-Smtp-Source: AGHT+IExfEqvi16ufumgHYCweWYo4i+o+KrEdF3cRt/+47LypJJt4jjx4WmkhwMEV//LTiLXjHhe2z0FRm+OvCLwisg=
X-Received: by 2002:a17:906:8462:b0:9a1:cbe4:d033 with SMTP id
 hx2-20020a170906846200b009a1cbe4d033mr2749605ejc.53.1695232809636; Wed, 20
 Sep 2023 11:00:09 -0700 (PDT)
MIME-Version: 1.0
References: <DB6PR01MB3736481355587A417D929794A41EA@DB6PR01MB3736.eurprd01.prod.exchangelabs.com>
 <CAGAf8LwKRDmacsgnsKLqofneB85CetU_h3H7s12b8gY8_y6ZwA@mail.gmail.com>
 <DB6PR01MB373690DA20F88E3A64ECAEBBA4F7A@DB6PR01MB3736.eurprd01.prod.exchangelabs.com>
 <CAMSfU+4tNg0kSJr6PZWLoqbvZDhQTr0Eb-VKbCGMhCNXvO0x_w@mail.gmail.com> <DB6PR01MB3736AC458D68ED5170B880B3A4FAA@DB6PR01MB3736.eurprd01.prod.exchangelabs.com>
In-Reply-To: <DB6PR01MB3736AC458D68ED5170B880B3A4FAA@DB6PR01MB3736.eurprd01.prod.exchangelabs.com>
From: Yoann CONGAL <yoann.congal@smile.fr>
Date: Wed, 20 Sep 2023 19:59:42 +0200
Message-ID: <CAMSfU+7ZeOef0c-814Ud_C9rz3NAuvZm_=n5xwH26qCFpQaZxQ@mail.gmail.com>
Subject: Re: [yocto] Poky/Mickledore bitbake menuconfig does not work
To: "Sebert, Holger.ext" <Holger.Sebert.ext@karlstorz.com>
Cc: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000006e2e180605ce25d6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Sep 2023 18:00:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61053

--0000000000006e2e180605ce25d6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mar. 19 sept. 2023 =C3=A0 18:57, Sebert, Holger.ext <
Holger.Sebert.ext@karlstorz.com> a =C3=A9crit :

> Hi Yoann, hi Zoran,
>

Hi,


> The bug is not present on the Poky master branch.
>
> Until the project is rebased onto the next release, I will simply disable
> CCache whenever I need to do a kernel menuconfig.
>

You peaked my curiosity and I've tracked down the fix on master : Your
problem is fixed by
https://git.yoctoproject.org/poky/commit/?id=3Dd4664d2b7974354e73d891762ebb=
2c8a12d62438

I've requested a backport on mickledore :
https://lists.openembedded.org/g/openembedded-core/message/187934

Regards,


> Thanks!
>
> -Holger
>
> ________________________________________
> Von: Yoann CONGAL <yoann.congal@smile.fr>
> Gesendet: Donnerstag, 14. September 2023 23:52
> An: Sebert, Holger.ext
> Cc: Zoran Stojsavljevic; Yocto-mailing-list
> Betreff: [Ext] Re: [yocto] Poky/Mickledore bitbake menuconfig does not wo=
rk
>
> Hi,
>
> Le jeu. 14 sept. 2023 =C3=A0 14:10, Sebert, Holger.ext <
> holger.sebert.ext@karlstorz.com<mailto:holger.sebert.ext@karlstorz.com>>
> a =C3=A9crit :
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
>
> I have reproduced this. It really looks like a bug!
>
> [...]
> On Mon, Aug 21, 2023 at 3:48=E2=80=AFPM Sebert, Holger.ext
> <holger.sebert.ext@karlstorz.com<mailto:holger.sebert.ext@karlstorz.com>>
> wrote:
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
> This patch looks interesting!
> I would use shlex.join() to safely construct the command :
> https://docs.python.org/3/library/shlex.html#shlex.join<
> https://urldefense.com/v3/__https://docs.python.org/3/library/shlex.html*=
shlex.join__;Iw!!Lw1uGqvHvtJ_psGG2Et-1voSwbo!fQdtwGScMriVPQw2RO0unCFPxKM9NG=
X19bIH6mNdVfb77dZxiYZEkdNFiD5PZzVoxaOccilrT4L2I56P_pSw6FJuljKxeNTW$
> >
>
> > What do you think? Is my observed behavior a configuration error of my
> > setup or does the patch above indeed make sense?
>
> The patch makes sense to me.
>
> I guess your next steps are :
> * If you want to contribute your patch : reproduce the bug and rebase you=
r
> patch on master and send it to the mailing list
> * Or, create a bug in https://bugzilla.yoctoproject.org/<
> https://urldefense.com/v3/__https://bugzilla.yoctoproject.org/__;!!Lw1uGq=
vHvtJ_psGG2Et-1voSwbo!fQdtwGScMriVPQw2RO0unCFPxKM9NGX19bIH6mNdVfb77dZxiYZEk=
dNFiD5PZzVoxaOccilrT4L2I56P_pSw6FJulqw2-PFV$
> >
>
> Best Regards,
>
> --
> Yoann Congal
> Smile ECS - Tech expert
>


--=20
Yoann Congal
Smile ECS - Tech expert

--0000000000006e2e180605ce25d6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Le=C2=A0mar. 19 sept. 2023 =C3=A0=C2=A018=
:57, Sebert, Holger.ext &lt;<a href=3D"mailto:Holger.Sebert.ext@karlstorz.c=
om" target=3D"_blank">Holger.Sebert.ext@karlstorz.com</a>&gt; a =C3=A9crit=
=C2=A0:</div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">Hi Yoann, hi Zoran,<br></blockquote><div><br></div><div>Hi,<=
br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>
The bug is not present on the Poky master branch.<br>
<br>
Until the project is rebased onto the next release, I will simply disable C=
Cache whenever I need to do a kernel menuconfig.<br></blockquote><div><br><=
/div><div>You peaked my curiosity and I&#39;ve tracked down the fix on mast=
er : Your problem is fixed by <br></div><div><a href=3D"https://git.yoctopr=
oject.org/poky/commit/?id=3Dd4664d2b7974354e73d891762ebb2c8a12d62438" targe=
t=3D"_blank">https://git.yoctoproject.org/poky/commit/?id=3Dd4664d2b7974354=
e73d891762ebb2c8a12d62438</a></div><div><br></div><div>I&#39;ve requested a=
 backport on mickledore : <a href=3D"https://lists.openembedded.org/g/opene=
mbedded-core/message/187934" target=3D"_blank">https://lists.openembedded.o=
rg/g/openembedded-core/message/187934</a></div><div><br></div><div>Regards,=
<br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">
Thanks!<br>
<br>
-Holger<br>
<br>
________________________________________<br>
Von: Yoann CONGAL &lt;<a href=3D"mailto:yoann.congal@smile.fr" target=3D"_b=
lank">yoann.congal@smile.fr</a>&gt;<br>
Gesendet: Donnerstag, 14. September 2023 23:52<br>
An: Sebert, Holger.ext<br>
Cc: Zoran Stojsavljevic; Yocto-mailing-list<br>
Betreff: [Ext] Re: [yocto] Poky/Mickledore bitbake menuconfig does not work=
<br>
<br>
Hi,<br>
<br>
Le jeu. 14 sept. 2023 =C3=A0 14:10, Sebert, Holger.ext &lt;<a href=3D"mailt=
o:holger.sebert.ext@karlstorz.com" target=3D"_blank">holger.sebert.ext@karl=
storz.com</a>&lt;mailto:<a href=3D"mailto:holger.sebert.ext@karlstorz.com" =
target=3D"_blank">holger.sebert.ext@karlstorz.com</a>&gt;&gt; a =C3=A9crit =
:<br>
Hi Zoran,<br>
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
Could you please verify/check?<br>
<br>
<br>
I have reproduced this. It really looks like a bug!<br>
<br>
[...]<br>
On Mon, Aug 21, 2023 at 3:48=E2=80=AFPM Sebert, Holger.ext<br>
&lt;<a href=3D"mailto:holger.sebert.ext@karlstorz.com" target=3D"_blank">ho=
lger.sebert.ext@karlstorz.com</a>&lt;mailto:<a href=3D"mailto:holger.sebert=
.ext@karlstorz.com" target=3D"_blank">holger.sebert.ext@karlstorz.com</a>&g=
t;&gt; wrote:<br>
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
(&#39;PN&#39;) + &#39; Configuration&#39;, d)<br>
<br>
This patch looks interesting!<br>
I would use shlex.join() to safely construct the command :<br>
<a href=3D"https://docs.python.org/3/library/shlex.html#shlex.join" rel=3D"=
noreferrer" target=3D"_blank">https://docs.python.org/3/library/shlex.html#=
shlex.join</a>&lt;<a href=3D"https://urldefense.com/v3/__https://docs.pytho=
n.org/3/library/shlex.html*shlex.join__;Iw!!Lw1uGqvHvtJ_psGG2Et-1voSwbo!fQd=
twGScMriVPQw2RO0unCFPxKM9NGX19bIH6mNdVfb77dZxiYZEkdNFiD5PZzVoxaOccilrT4L2I5=
6P_pSw6FJuljKxeNTW$" rel=3D"noreferrer" target=3D"_blank">https://urldefens=
e.com/v3/__https://docs.python.org/3/library/shlex.html*shlex.join__;Iw!!Lw=
1uGqvHvtJ_psGG2Et-1voSwbo!fQdtwGScMriVPQw2RO0unCFPxKM9NGX19bIH6mNdVfb77dZxi=
YZEkdNFiD5PZzVoxaOccilrT4L2I56P_pSw6FJuljKxeNTW$</a>&gt;<br>
<br>
&gt; What do you think? Is my observed behavior a configuration error of my=
<br>
&gt; setup or does the patch above indeed make sense?<br>
<br>
The patch makes sense to me.<br>
<br>
I guess your next steps are :<br>
* If you want to contribute your patch : reproduce the bug and rebase your =
patch on master and send it to the mailing list<br>
* Or, create a bug in <a href=3D"https://bugzilla.yoctoproject.org/" rel=3D=
"noreferrer" target=3D"_blank">https://bugzilla.yoctoproject.org/</a>&lt;<a=
 href=3D"https://urldefense.com/v3/__https://bugzilla.yoctoproject.org/__;!=
!Lw1uGqvHvtJ_psGG2Et-1voSwbo!fQdtwGScMriVPQw2RO0unCFPxKM9NGX19bIH6mNdVfb77d=
ZxiYZEkdNFiD5PZzVoxaOccilrT4L2I56P_pSw6FJulqw2-PFV$" rel=3D"noreferrer" tar=
get=3D"_blank">https://urldefense.com/v3/__https://bugzilla.yoctoproject.or=
g/__;!!Lw1uGqvHvtJ_psGG2Et-1voSwbo!fQdtwGScMriVPQw2RO0unCFPxKM9NGX19bIH6mNd=
Vfb77dZxiYZEkdNFiD5PZzVoxaOccilrT4L2I56P_pSw6FJulqw2-PFV$</a>&gt;<br>
<br>
Best Regards,<br>
<br>
--<br>
Yoann Congal<br>
Smile ECS - Tech expert<br>
</blockquote></div><br clear=3D"all"><br><span class=3D"gmail_signature_pre=
fix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmai=
l=3D"gmail_signature"><div dir=3D"ltr"><font face=3D"Raleway, regular">Yoan=
n Congal</font><div><font face=3D"Raleway, regular">Smile ECS - Tech expert=
<br></font></div></div></div></div>

--0000000000006e2e180605ce25d6--

