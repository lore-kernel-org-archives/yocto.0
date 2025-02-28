Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E21A4C19776
	for <webhook@archiver.kernel.org>; Fri, 28 Feb 2025 09:28:17 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web11.11820.1740734891905529464
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Feb 2025 01:28:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=qiwfqevo;
 spf=pass (domain: smile.fr, ip: 209.85.128.44, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43998deed24so18004425e9.2
        for <yocto@lists.yoctoproject.org>; Fri, 28 Feb 2025 01:28:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1740734890; x=1741339690; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aQTUf7Jsnohq4MrpoSatnBMQhFvYclJBc/MXYUP8AHc=;
        b=qiwfqevoyv7s14/Tx7RvBCIhUiRXhs5qSNTFcJb15hnJbNb4SNiWYjPOxaYMncdIQH
         6FGsHSiXfuaUwM4iFHwy8gmGa4rRQBCkn4ajkXUSOghaWWYYeGw+HlL50fkC3aodI14b
         E4oQO4npZMeAQnb9fpJhCK4g5KBI53EjybygA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740734890; x=1741339690;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aQTUf7Jsnohq4MrpoSatnBMQhFvYclJBc/MXYUP8AHc=;
        b=v5l0uCHYJ6eGtI4RZ7hrTRVBdmiEueY6kiydVFp097AwXCC3uYjlLyVUudt2P+2DRd
         bqH5xvSWM+vYApAjFEFn86xlpXNVrKBH2g6tjsXak7otLZX5PxtIqiE86nlaV+ghJ2Sl
         o5KoJbySGfjNjFaKi77v2A8c1CXQLJ+JzTXfJ3BsbILY5tbfQYZuqq2c8619Zs4Dev+D
         qmdj5EiUpKNYbRWWiP3nFLZMSCdXcyhcC4z86IsO/TN4pusb60RZVC8Uhtp2S/Q/TXv2
         H5WAkEpKne9ia94f3o+tM5V6wr+9Gg27M0/b1kUz7Wfm/4WMbZnrJMFVXsffbmg1Hbur
         hQ4Q==
X-Gm-Message-State: AOJu0YzmPDL1jRLLrW0QZ0AcWPZDBG0JnA5W6ssgcnYQsdfX3nfyx5rj
	DNnHgZ/7QqjG6EGTylknMfZw3ioG28JrMIM/5zmCy6bEsHhCNud1uJBboeZVTzMevcRM+gkYblo
	q41Fx8n6FyR4fdKi1yfE8gcCaLwol+mPkxyHF3O0iujSDnWcII3o=
X-Gm-Gg: ASbGncvZF4OjGIiWEm6GElNiZIdnzThkbQMT1VJAa9n9z0WBzSq/L8KhOMpO5Gcy4vC
	i7jy9xagkYzk7Euz+gY6f1HDL9DePkzXqfIkQABT0UO00XrznIIGw7HuxpdV/NKbc7ZKWZUMPwu
	upXpY0liyEF0/VqR5s7eNr7kni80ypGLtYn6o/EmU/
X-Google-Smtp-Source: AGHT+IGE4GvdETfvo+y533ikZJ6Jw3KyfjoEYko2OmTX1HnRuTpdNNxOAro9/ExWMYjPLIQAMsBejmCKLdMr28WTu0c=
X-Received: by 2002:a05:6000:2c6:b0:38f:287a:43d9 with SMTP id
 ffacd0b85a97d-390eca414b0mr2056524f8f.52.1740734889000; Fri, 28 Feb 2025
 01:28:09 -0800 (PST)
MIME-Version: 1.0
References: <ULf5.1740714416323187991.vYPQ@lists.yoctoproject.org> <CAMKF1sp1QeYA_ZzzmtJNM17Vv2W4DAxXDUghh0YLe-BGyKFx+g@mail.gmail.com>
In-Reply-To: <CAMKF1sp1QeYA_ZzzmtJNM17Vv2W4DAxXDUghh0YLe-BGyKFx+g@mail.gmail.com>
From: Yoann Congal <yoann.congal@smile.fr>
Date: Fri, 28 Feb 2025 10:27:43 +0100
X-Gm-Features: AQ5f1Jq8F2szuSsjp_lksXcJsqe16neqzX8Yh4-fNRnWM_mOdhWpfmdk0wii4sU
Message-ID: <CAMSfU+4A8EF=GGBfakZnjLeHj59fdOpw2eAXPMch-gAGhdgGFQ@mail.gmail.com>
Subject: Re: [yocto] devtool error on "modify" with patches
To: yocto@lists.yoctoproject.org, raj.khem@gmail.com
Cc: ccasciato@21sw.us
Content-Type: multipart/alternative; boundary="000000000000b51af9062f306c7b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Feb 2025 09:28:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64892

--000000000000b51af9062f306c7b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le ven. 28 f=C3=A9vr. 2025 =C3=A0 05:07, Khem Raj via lists.yoctoproject.or=
g
<raj.khem=3Dgmail.com@lists.yoctoproject.org> a =C3=A9crit :

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

Does your git client is configured to sign commits with a SSH key?
https://docs.github.com/fr/authentication/managing-commit-signature-verific=
ation/telling-git-about-your-signing-key#telling-git-about-your-ssh-key
The relevant configurations seems to be "gpg.format" and "user.signingkey"

--=20
Yoann Congal
Smile ECS - Tech expert

--000000000000b51af9062f306c7b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0ven. 28=
 f=C3=A9vr. 2025 =C3=A0=C2=A005:07, Khem Raj via <a href=3D"http://lists.yo=
ctoproject.org">lists.yoctoproject.org</a> &lt;raj.khem=3D<a href=3D"mailto=
:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.org</a>&gt;=
 a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">On Thu, Feb 27, 2025 at 7:46=E2=80=AFPM Clayton Casciato via<br>
<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">lists.yoctoproject.org</a> &lt;ccasciato=3D<a href=3D"mailto:21sw.us@li=
sts.yoctoproject.org" target=3D"_blank">21sw.us@lists.yoctoproject.org</a>&=
gt;<br>
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
&gt; ERROR: Execution of &#39;git -c <a href=3D"http://user.name" rel=3D"no=
referrer" target=3D"_blank">user.name</a>=3D\&quot;OpenEmbedded\&quot; -c u=
ser.email=3D\&quot;oe.patch@oe\&quot; commit -q -m &quot;Initial commit fro=
m upstream at version 6.13.0&quot;&#39; failed with exit code 128:<br>
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
root=C2=A0 recipe-sysroot-native=C2=A0 source-date-epoch=C2=A0 sources-unpa=
ck=C2=A0 spdx=C2=A0 sysroot-destdir=C2=A0 temp<br>
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
it resides in is in PATH<br></blockquote><div><br></div><div>Does your git =
client is configured to sign commits with a SSH key?</div><div><a href=3D"h=
ttps://docs.github.com/fr/authentication/managing-commit-signature-verifica=
tion/telling-git-about-your-signing-key#telling-git-about-your-ssh-key">htt=
ps://docs.github.com/fr/authentication/managing-commit-signature-verificati=
on/telling-git-about-your-signing-key#telling-git-about-your-ssh-key</a></d=
iv><div>The relevant configurations seems to be &quot;gpg.format&quot; and =
&quot;user.signingkey&quot;</div><div><br></div></div><span class=3D"gmail_=
signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature">=
<div dir=3D"ltr"><font face=3D"Raleway, regular">Yoann Congal</font><div><f=
ont face=3D"Raleway, regular">Smile ECS - Tech expert<br></font></div></div=
></div></div>

--000000000000b51af9062f306c7b--

