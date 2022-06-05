Return-Path: <fede@evolware.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A920BC43334
	for <webhook@archiver.kernel.org>; Sun,  5 Jun 2022 03:02:04 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com
 [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web10.17036.1654398118881184703
 for <yocto@lists.yoctoproject.org>;
 Sat, 04 Jun 2022 20:01:59 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: gmail.com, ip: 209.85.208.181, mailfrom: fede.evol@gmail.com)
Received: by mail-lj1-f181.google.com with SMTP id a23so12379972ljd.9
        for <yocto@lists.yoctoproject.org>;
 Sat, 04 Jun 2022 20:01:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=X1UwfMB0Fje1dZ7DNOFDgWrBRXhLwqNt+3qbEq/1pnU=;
        b=beoz57U45BKvW+wfuDak/lYTpfVcMGvbi0sV//cHelmZiUjNmR7lBadZyRc8V4Dfzz
         qrQ3lwx3Tm+uLpezn3dnOBhC0TQJWISnOOkM5aeXmKS2SOx0CdwFHyDqPL520uw5yhPE
         bBzVSqs3aPSxfOafJHkYHBb4xuuAi3M8vtobnujOTeYlUGttUl+hzfufdSZf87Je7Cvi
         isNlBBETdQjCHHSw5geleb/31pEgBaG7ssodloA97d32ybOU4LA7uFGT7Jo81bwH6bgx
         sB4Db9pLw8Qw+i+BSuHORdqh2uGUrcv3LY1AuFsTfEj76+YF7C4xZUmuoeW8OUm+SMin
         tdMw==
X-Gm-Message-State: AOAM5314J1GV34K7rCpW6BedhVW/ZFxDbgeXGRzT9s+Ut0657tpTRNQa
	3NEr4umxFJNLncd2zyVbqkXVNh3c2SqqIKctUVk=
X-Google-Smtp-Source: 
 ABdhPJxyibQOsuBWcbxEXDySQVZungxoWQyXtE6p53i7AURSQBTJ7POAP+zfkqobtvkuFXVgytCPryCPhv60GD6zEow=
X-Received: by 2002:a2e:9695:0:b0:255:6eb1:469c with SMTP id
 q21-20020a2e9695000000b002556eb1469cmr10600122lji.188.1654398116875; Sat, 04
 Jun 2022 20:01:56 -0700 (PDT)
MIME-Version: 1.0
References: <20220604063124.279064-1-fede@evolware.org>
 <82071fd5-8019-e983-6121-b3381a0c700d@gmail.com>
In-Reply-To: <82071fd5-8019-e983-6121-b3381a0c700d@gmail.com>
From: Federico Pellegrin <fede@evolware.org>
Date: Sun, 5 Jun 2022 05:01:45 +0200
Message-ID: 
 <CAM6O0ZiUR2A2cT3qH+H-F14y_Tb2+1R7mxKLGx0cHDnwiQveXg@mail.gmail.com>
Subject: Re: [meta-security][PATCH] Remove outdated meta-rust dependency text
 in README
To: akuster808 <akuster808@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000012d35705e0aa9486"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 05 Jun 2022 03:02:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57268

--00000000000012d35705e0aa9486
Content-Type: text/plain; charset="UTF-8"

Hi Armin,
Sorry if it was unclear or if I misunderstood something.

As far as I could see and tried as I had to build it yesterday, I can now
build suricata without adding meta-rust as the rust support (compilers etc)
is now already in oe-core, ie:
https://git.openembedded.org/openembedded-core/tree/meta/recipes-devtools/rust
and
https://git.openembedded.org/openembedded-core/tree/meta/recipes-devtools/cargo
Some relevant discussion: https://github.com/meta-rust/meta-rust/pull/364

The note in README may still just apply to versions < honister I believe
(ie. dunfell is the only not EOL-ed). For more recent versions it may just
potentially create confusion IMO.

Cheers,
Federico

Il giorno dom 5 giu 2022 alle ore 00:58 akuster808 <akuster808@gmail.com>
ha scritto:

>
>
> On 6/3/22 23:31, Federico Pellegrin wrote:
> > Since ~16 months the base of meta-rust was merged into meta-oe,
> > down to honister as far as I can see, and therefore the indications
> > to use meta-rust are really not needed and may just create extra
> > work and possibly problems to users.
> > ---
> >   README | 12 ------------
> >   1 file changed, 12 deletions(-)
> >
> > diff --git a/README b/README
> > index 081669f..a9b3600 100644
> > --- a/README
> > +++ b/README
> > @@ -62,18 +62,6 @@ other layers needed. e.g.:
> >       /path/to/meta-openembedded/meta-networking \
> >       /path/to/layer/meta-security "
>
> thanks for the patch.
>
> did I miss some rust changes in
>
> https://git.yoctoproject.org/meta-security/commit/?h=master-next&id=edf8b109e77f6d3f2740e09bdc89f0aaf2885dc4
> ?
>
> - armin
> >
> > -Optional Rust dependancy
> > -======================================
> > -If you want to use the latest Suricata that needs rust, you will need
> to clone
> > -
> > -  URI: https://github.com/meta-rust/meta-rust.git
> > -  branch: master
> > -
> > -  BBLAYERS += "/path/to/layer/meta-rust"
> > -
> > -This will activate the dynamic-layer mechanism and pull in the newer
> suricata
> > -
> > -
> >
> >   Maintenance
> >   ======================================
>
>

--00000000000012d35705e0aa9486
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>Hi Armin,</div><div>Sorry if it was un=
clear or if I misunderstood something.</div><div><br></div><div>As far as I=
 could see and tried as I had to build it yesterday, I can now build surica=
ta without adding meta-rust as the rust support (compilers etc) is now alre=
ady in oe-core, ie:=C2=A0 <a href=3D"https://git.openembedded.org/openembed=
ded-core/tree/meta/recipes-devtools/rust">https://git.openembedded.org/open=
embedded-core/tree/meta/recipes-devtools/rust</a> and <a href=3D"https://gi=
t.openembedded.org/openembedded-core/tree/meta/recipes-devtools/cargo">http=
s://git.openembedded.org/openembedded-core/tree/meta/recipes-devtools/cargo=
</a></div><div>Some relevant discussion: <a href=3D"https://github.com/meta=
-rust/meta-rust/pull/364">https://github.com/meta-rust/meta-rust/pull/364</=
a></div><div><br></div><div>The note in README may still just apply to vers=
ions &lt; honister I believe (ie. dunfell is the only not EOL-ed). For more=
 recent versions it may just potentially create confusion IMO.<br></div><di=
v><br></div><div>Cheers,</div><div>Federico<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il giorno dom 5 giu =
2022 alle ore 00:58 akuster808 &lt;<a href=3D"mailto:akuster808@gmail.com">=
akuster808@gmail.com</a>&gt; ha scritto:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><br>
<br>
On 6/3/22 23:31, Federico Pellegrin wrote:<br>
&gt; Since ~16 months the base of meta-rust was merged into meta-oe,<br>
&gt; down to honister as far as I can see, and therefore the indications<br=
>
&gt; to use meta-rust are really not needed and may just create extra<br>
&gt; work and possibly problems to users.<br>
&gt; ---<br>
&gt;=C2=A0 =C2=A0README | 12 ------------<br>
&gt;=C2=A0 =C2=A01 file changed, 12 deletions(-)<br>
&gt;<br>
&gt; diff --git a/README b/README<br>
&gt; index 081669f..a9b3600 100644<br>
&gt; --- a/README<br>
&gt; +++ b/README<br>
&gt; @@ -62,18 +62,6 @@ other layers needed. e.g.:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/path/to/meta-openembedded/meta-networking \=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/path/to/layer/meta-security &quot;<br>
<br>
thanks for the patch.<br>
<br>
did I miss some rust changes in <br>
<a href=3D"https://git.yoctoproject.org/meta-security/commit/?h=3Dmaster-ne=
xt&amp;id=3Dedf8b109e77f6d3f2740e09bdc89f0aaf2885dc4" rel=3D"noreferrer" ta=
rget=3D"_blank">https://git.yoctoproject.org/meta-security/commit/?h=3Dmast=
er-next&amp;id=3Dedf8b109e77f6d3f2740e09bdc89f0aaf2885dc4</a> <br>
?<br>
<br>
- armin<br>
&gt;=C2=A0 =C2=A0<br>
&gt; -Optional Rust dependancy<br>
&gt; -=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt; -If you want to use the latest Suricata that needs rust, you will need=
 to clone<br>
&gt; -<br>
&gt; -=C2=A0 URI: <a href=3D"https://github.com/meta-rust/meta-rust.git" re=
l=3D"noreferrer" target=3D"_blank">https://github.com/meta-rust/meta-rust.g=
it</a><br>
&gt; -=C2=A0 branch: master<br>
&gt; -<br>
&gt; -=C2=A0 BBLAYERS +=3D &quot;/path/to/layer/meta-rust&quot;<br>
&gt; -<br>
&gt; -This will activate the dynamic-layer mechanism and pull in the newer =
suricata<br>
&gt; -<br>
&gt; -<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0Maintenance<br>
&gt;=C2=A0 =C2=A0=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
<br>
</blockquote></div>

--00000000000012d35705e0aa9486--

