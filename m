Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6536C282C1
	for <webhook@archiver.kernel.org>; Fri, 28 Feb 2025 16:07:49 +0000 (UTC)
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
 by mx.groups.io with SMTP id smtpd.web10.19593.1740758860210903360
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Feb 2025 08:07:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=alvunxyw;
 spf=pass (domain: gmail.com, ip: 209.85.160.54, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-2a88c7fabdeso1453141fac.1
        for <yocto@lists.yoctoproject.org>; Fri, 28 Feb 2025 08:07:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740758859; x=1741363659; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hjUjy+eJqPJqmQxh8fqIEqIpGQoHIjW2RRv7xbKxoi4=;
        b=alvunxywd+F/3ys1T7MY5UqWhNu1UHt2VgXqBjY/aHcl7xgEM3nojvadCTJpGE6NxX
         +vSzIgs7Cd+2ieSml9TnukOEI0Pos70u0lyEZsyANQlmG4LYorxkhLWE5Y4+XuvpL2vh
         9A7wObDiSkN166za+OFnrxJfISIDA0csi7hUVN86EDPqiQ2/LsehvsNsxCA90nLgDK4+
         +JX5ajgI8qsJeshobPggKxvwI5SS80luk8kVEQ/x0xA0+S1TK1fiHzhk2SBoEf+0U5Rk
         jEqG9UpfZ6FgaFiYeIInI8RRGHLIwlU05Gt2oC87eeXTJgfcWTDgazeetOM1Q1RirEe9
         Xc3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740758859; x=1741363659;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hjUjy+eJqPJqmQxh8fqIEqIpGQoHIjW2RRv7xbKxoi4=;
        b=Gjp61HTgY4idkEthUZMjFOD4ydgz+yyzqZ6x2IlrUfadMHeiyVyBEVQS7Sn1F8Vn57
         DDbSbeibxscxIj0t0kjDXYTmJ0EK6RqVlHxFMqup4JDPEZjdN+8U8fCXOV8XQwBU/cz/
         htffrhgsfRTWfpjqZcaD4R0ezfZwCATag/reb7z+39F9o53VZrRWPMYKNgTdPQGEoJl9
         LM0Q9nf1N8I7tuJkBih6dr3E7+bCn83NgYX/JV77ooP2hivVacvhzi+PB8qgxXv5qMQz
         4gv/z+So5ZsP/jDHHHai97XUz7CPRO3xq8WiHKyx0cPD4Nz9/HjAwmUq8mMfpeJ0rTGT
         qHZw==
X-Forwarded-Encrypted: i=1; AJvYcCWOlcqbucdoeXvBeHrCXn3UtaHUQCS0itNBwOlzuJ/HLGdz5Bb/m0pj4CrC8QE9D9tyP0h0jA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxvdXgAd67R9km08QNrCkPFTXHuERreVi4s2q5U907mpL+8Rvu1
	dFAD6okisxuNY1FbTLrehGpIBRJ92YaG/+DnxuqUKA/An33RPa563yet+VB/C0vpJCZuWwDaOtq
	rxTFat5hM2lkCKn8zBrxxg90A9PU=
X-Gm-Gg: ASbGncseLZW6tNedzLBXKk7bWTrgPPegQ2VEzzUh+JUhMVLFuSVTsuQAzv/SEsribXE
	DYL6BnvjkHF4EOCi2rrQbR8u1sWU25z9hkQW4RRn2ZYtAPq6rzajkmf80BfAdPptt9CII1W6w80
	7dnQRZ+45fQYrrhGs9sDFOXkRl2xyP40qoySts4dlm
X-Google-Smtp-Source: AGHT+IHSbxdwAy6DrkMmUkh+0+MH2rrM3/kiJisRsJo03sA569KsJi9ePk/laIhU0oh37sDWDRGv0yrnd+uKsHprbAg=
X-Received: by 2002:a05:6870:ce93:b0:2bc:9915:aeaa with SMTP id
 586e51a60fabf-2c178317eeemr2448748fac.5.1740758859300; Fri, 28 Feb 2025
 08:07:39 -0800 (PST)
MIME-Version: 1.0
References: <ULf5.1740714416323187991.vYPQ@lists.yoctoproject.org>
 <CAMKF1sp1QeYA_ZzzmtJNM17Vv2W4DAxXDUghh0YLe-BGyKFx+g@mail.gmail.com>
 <CAMSfU+4A8EF=GGBfakZnjLeHj59fdOpw2eAXPMch-gAGhdgGFQ@mail.gmail.com> <MN0PR22MB55158651AD86D574DF5633AAB7CC2@MN0PR22MB5515.namprd22.prod.outlook.com>
In-Reply-To: <MN0PR22MB55158651AD86D574DF5633AAB7CC2@MN0PR22MB5515.namprd22.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 28 Feb 2025 08:07:27 -0800
X-Gm-Features: AQ5f1JosO-KVafmCvQt9iI7XAI-AsnZHfkmqhmPeMtUGFQK5i4YxXW2f0tDp4o4
Message-ID: <CAMKF1spWT=4b72CsJR18qup=G-kj6G_OXwJh2j-TaMQsCwpofA@mail.gmail.com>
Subject: Re: [yocto] devtool error on "modify" with patches
To: Clayton Casciato <ccasciato@21sw.us>
Cc: Yoann Congal <yoann.congal@smile.fr>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000072c679062f3601c6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Feb 2025 16:07:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64894

--00000000000072c679062f3601c6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 28, 2025 at 7:46=E2=80=AFAM Clayton Casciato <ccasciato@21sw.us=
> wrote:

> Yes, I am using an SSH key.
>
> Disabling "commit.gpgsign" in the global config resolved the issue.
>

Yes that=E2=80=99s a known think I have run into as well in past

>
> Here is the associated function for reference:
>
> https://git.openembedded.org/openembedded-core/tree/scripts/lib/devtool/_=
_init__.py?h=3Dscarthgap&id=3D4e1b9289450b5e7946bd5999c95a3ee214aab8a5#n193
>
> Thank you both for the help!
>
> --
> Clayton Casciato
>
> ------------------------------
> *From:* Yoann Congal <yoann.congal@smile.fr>
> *Sent:* Friday, February 28, 2025 2:27 AM
> *To:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>;
> raj.khem@gmail.com <raj.khem@gmail.com>
> *Cc:* Clayton Casciato <ccasciato@21sw.us>
> *Subject:* Re: [yocto] devtool error on "modify" with patches
>
>
>
> Le ven. 28 f=C3=A9vr. 2025 =C3=A0 05:07, Khem Raj via lists.yoctoproject.=
org
>  <raj.khem=3Dgmail.com@lists.yoctoproject.org> a =C3=A9crit :
>
> On Thu, Feb 27, 2025 at 7:46=E2=80=AFPM Clayton Casciato via
> lists.yoctoproject.org <ccasciato=3D21sw.us@lists.yoctoproject.org>
> wrote:
> >
> > I have not had success using devtool against recipes with existing
> patches.
> > I do not have any modifications to these recipes and they patch and
> build fine using bitbake.
> >
> > --
> >
> > poky$ devtool modify iproute2
> > [...]
> > ERROR: Execution of 'git -c user.name=3D\"OpenEmbedded\" -c
> user.email=3D\"oe.patch@oe\" commit -q -m "Initial commit from upstream a=
t
> version 6.13.0"' failed with exit code 128:
> > error: cannot run ssh-keygen: No such file or directory
> > error:
> > fatal: failed to write commit object
> >
> > ERROR: Logfile of failure stored in:
> [...]/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/iproute2/6.1=
3.0/devtooltmp-jshbjja1/temp/log.do_unpack.1777032
> >
> > --
> >
> > The logfile does not exist:
> >
> > poky$ ls
> [...]/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/iproute2/6.1=
3.0/
> > configure.sstate  debugsources.list  deploy-rpms
> deploy-source-date-epoch  image  iproute2-6.13.0  iproute2.spec
> license-destdir  package  packages-split  pkgdata  pkgdata-pdata-input
> pkgdata-sysroot  pseudo  recipe-sysroot  recipe-sysroot-native
> source-date-epoch  sources-unpack  spdx  sysroot-destdir  temp
> >
> > --
> >
> > When using --debug, I see this:
> >
> > [...]
> > | DEBUG: Python function devtool_post_unpack finished
> > ERROR: Extracting source for iproute2 failed
> >
> > --
> >
> > Any suggestions?
>
> It seems your git is. configured to use ssh, maybe use HTTPS instead
> of SSH in git or set
> or maybe install openssh-client package in your machine which should
> provide ssh-keygen, make sure the path
> it resides in is in PATH
>
>
> Does your git client is configured to sign commits with a SSH key?
>
> https://docs.github.com/fr/authentication/managing-commit-signature-verif=
ication/telling-git-about-your-signing-key#telling-git-about-your-ssh-key
> The relevant configurations seems to be "gpg.format" and "user.signingkey=
"
>
> --
> Yoann Congal
> Smile ECS - Tech expert
>

--00000000000072c679062f3601c6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote gmail_quote_container"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 28, 2025 at 7:46=E2=80=AFAM=
 Clayton Casciato &lt;<a href=3D"mailto:ccasciato@21sw.us">ccasciato@21sw.u=
s</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Yes, I am using an SSH key.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Disabling &quot;commit.gpgsign&quot; in the global config resolved the issu=
e.</div></div></blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Ye=
s that=E2=80=99s a known think I have run into as well in past=C2=A0</div><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div style=3D"font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;fon=
t-size:12pt;color:rgb(0,0,0)" dir=3D"auto"></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Here is the associated function for reference:</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<a href=3D"https://git.openembedded.org/openembedded-core/tree/scripts/lib/=
devtool/__init__.py?h=3Dscarthgap&amp;id=3D4e1b9289450b5e7946bd5999c95a3ee2=
14aab8a5#n193" target=3D"_blank">https://git.openembedded.org/openembedded-=
core/tree/scripts/lib/devtool/__init__.py?h=3Dscarthgap&amp;id=3D4e1b928945=
0b5e7946bd5999c95a3ee214aab8a5#n193</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Thank you both for the help!</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"m_-6229904657862203106Signature">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
--</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Clayton Casciato</div>
</div>
<div id=3D"m_-6229904657862203106appendonsend"></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div dir=3D"ltr" id=3D"m_-6229904657862203106divRplyFwdMsg"><span style=3D"=
font-family:Calibri,sans-serif;font-size:11pt;color:rgb(0,0,0)"><b>From:</b=
>=C2=A0Yoann Congal &lt;<a href=3D"mailto:yoann.congal@smile.fr" target=3D"=
_blank">yoann.congal@smile.fr</a>&gt;<br>
<b>Sent:</b>=C2=A0Friday, February 28, 2025 2:27 AM<br>
<b>To:</b>=C2=A0<a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_=
blank">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.y=
octoproject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;; <a=
 href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a=
> &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmai=
l.com</a>&gt;<br>
<b>Cc:</b>=C2=A0Clayton Casciato &lt;<a href=3D"mailto:ccasciato@21sw.us" t=
arget=3D"_blank">ccasciato@21sw.us</a>&gt;<br>
<b>Subject:</b>=C2=A0Re: [yocto] devtool error on &quot;modify&quot; with p=
atches</span>
<div>=C2=A0</div>
</div></div><div dir=3D"ltr">
<div style=3D"direction:ltr"><br>
</div>
<div style=3D"direction:ltr"><br>
</div>
<div style=3D"direction:ltr">Le=C2=A0ven. 28 f=C3=A9vr. 2025 =C3=A0=C2=A005=
:07, Khem Raj via <a href=3D"http://lists.yoctoproject.org" id=3D"m_-622990=
4657862203106OWA7a36e125-926a-303a-102b-759d8160aa3f" target=3D"_blank">
lists.yoctoproject.org</a>=C2=A0&lt;raj.khem=3D<a href=3D"mailto:gmail.com@=
lists.yoctoproject.org" id=3D"m_-6229904657862203106OWA0f9ee81d-351d-2c68-3=
3d1-a3100ab9d986" target=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt=
; a =C3=A9crit=C2=A0:</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;padding-left:1ex;border-left:=
1px solid rgb(204,204,204)">
<div style=3D"direction:ltr">On Thu, Feb 27, 2025 at 7:46=E2=80=AFPM Clayto=
n Casciato via<br>
<a href=3D"http://lists.yoctoproject.org" id=3D"m_-6229904657862203106OWA96=
f8a9bf-2b30-3a9a-2739-cb0845ba255d" target=3D"_blank">lists.yoctoproject.or=
g</a>=C2=A0&lt;ccasciato=3D<a href=3D"mailto:21sw.us@lists.yoctoproject.org=
" id=3D"m_-6229904657862203106OWA345de08e-b132-8ed2-5088-be7752c152f0" targ=
et=3D"_blank">21sw.us@lists.yoctoproject.org</a>&gt;<br>
wrote:<br>
&gt;<br>
&gt; I have not had success using devtool against recipes with existing pat=
ches.<br>
&gt; I do not have any modifications to these recipes and they patch and bu=
ild fine using bitbake.<br>
&gt;<br>
&gt; --<br>
&gt;<br>
&gt; poky$ devtool modify iproute2<br>
&gt; [...]<br>
&gt; ERROR: Execution of &#39;git -c <a href=3D"http://user.name" id=3D"m_-=
6229904657862203106OWA280380c1-b8ff-f2f3-170c-cb6b007e537f" target=3D"_blan=
k">
user.name</a>=3D\&quot;OpenEmbedded\&quot; -c user.email=3D\&quot;oe.patch@=
oe\&quot; commit -q -m &quot;Initial commit from upstream at version 6.13.0=
&quot;&#39; failed with exit code 128:<br>
&gt; error: cannot run ssh-keygen: No such file or directory<br>
&gt; error:<br>
&gt; fatal: failed to write commit object<br>
&gt;<br>
&gt; ERROR: Logfile of failure stored in: [...]/poky/build/tmp/work/cortexa=
8hf-neon-poky-linux-gnueabi/iproute2/6.13.0/devtooltmp-jshbjja1/temp/log.do=
_unpack.1777032<br>
&gt;<br>
&gt; --<br>
&gt;<br>
&gt; The logfile does not exist:<br>
&gt;<br>
&gt; poky$ ls [...]/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/=
iproute2/6.13.0/<br>
&gt; configure.sstate=C2=A0 debugsources.list=C2=A0 deploy-rpms=C2=A0 deplo=
y-source-date-epoch=C2=A0 image=C2=A0 iproute2-6.13.0=C2=A0 iproute2.spec=
=C2=A0 license-destdir=C2=A0 package=C2=A0 packages-split=C2=A0 pkgdata=C2=
=A0 pkgdata-pdata-input=C2=A0 pkgdata-sysroot=C2=A0 pseudo=C2=A0 recipe-sys=
root=C2=A0 recipe-sysroot-native=C2=A0 source-date-epoch=C2=A0
 sources-unpack=C2=A0 spdx=C2=A0 sysroot-destdir=C2=A0 temp<br>
&gt;<br>
&gt; --<br>
&gt;<br>
&gt; When using --debug, I see this:<br>
&gt;<br>
&gt; [...]<br>
&gt; | DEBUG: Python function devtool_post_unpack finished<br>
&gt; ERROR: Extracting source for iproute2 failed<br>
&gt;<br>
&gt; --<br>
&gt;<br>
&gt; Any suggestions?<br>
<br>
It seems your git is. configured to use ssh, maybe use HTTPS instead<br>
of SSH in git or set<br>
or maybe install openssh-client package in your machine which should<br>
provide ssh-keygen, make sure the path<br>
it resides in is in PATH</div>
</blockquote>
<div style=3D"direction:ltr"><br>
</div>
<div style=3D"direction:ltr">Does your git client is configured to sign com=
mits with a SSH key?</div>
<div style=3D"direction:ltr"><a href=3D"https://docs.github.com/fr/authenti=
cation/managing-commit-signature-verification/telling-git-about-your-signin=
g-key#telling-git-about-your-ssh-key" id=3D"m_-6229904657862203106OWA93140e=
b0-b820-51c1-be46-5fe4be09def7" target=3D"_blank">https://docs.github.com/f=
r/authentication/managing-commit-signature-verification/telling-git-about-y=
our-signing-key#telling-git-about-your-ssh-key</a></div>
<div style=3D"direction:ltr">The relevant configurations seems to be &quot;=
gpg.format&quot; and &quot;user.signingkey&quot;</div>
<div style=3D"direction:ltr"><br>
</div>
<div style=3D"direction:ltr">--</div>
<div style=3D"direction:ltr;font-family:Raleway,regular">Yoann Congal</div>
<div style=3D"direction:ltr;font-family:Raleway,regular">Smile ECS - Tech e=
xpert</div>
</div>

</blockquote></div></div>

--00000000000072c679062f3601c6--

