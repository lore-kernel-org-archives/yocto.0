Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.856.1582657829274023088
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Feb 2020 11:10:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@assonance-org.20150623.gappssmtp.com header.s=20150623 header.b=LL0qmCp+;
 spf=softfail (domain: assonance.org, ip: 140.211.169.56, mailfrom: aaron@assonance.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6180DE0175E; Tue, 25 Feb 2020 11:10:28 -0800 (PST)
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
	*      [209.85.210.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 486C2E003DB
	for <yocto@yoctoproject.org>; Tue, 25 Feb 2020 11:10:27 -0800 (PST)
Received: by mail-ot1-f43.google.com with SMTP id i6so553399otr.7
        for <yocto@yoctoproject.org>; Tue, 25 Feb 2020 11:10:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=assonance-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ap6rbUUbFhIybc+piTXq++WMaEYT/UEtMS22dF8gZb0=;
        b=LL0qmCp+ZfDfVqzeJWUFQG2vXbVxKfZpCpSAj7Nlsa8HYzx4BbfABIdUEzZW3C4bxG
         ikNc5qDnXFsTDpQNplL1JtVt1v/DSYL/fOk/ZV337ObuEd6uajqWrn8gLJsX4ZJRJL+I
         h1/w1yJlqUYLzfXUkgfbVUiwWy/Y9vz8mF99GPKM3LGmXxFlbFo4qoD2ARcGjW2MImGo
         E/H8h3lY1xy64iq+a38YJ2xZNrC+GPZKserxqE+8i7x6Lml3g3jcQZLJP6mrIO4EpDfi
         PKPnpR1k0lp3bYroHQ6Krsee8Xy8kwMw1RKqMEqPnZpolWZMbt2sj8CcmYHv0S3QUC7C
         px7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ap6rbUUbFhIybc+piTXq++WMaEYT/UEtMS22dF8gZb0=;
        b=Tv6ExM7ZYT67Ei/zTJlUG/0mY2OUoUU7SuXaVRUInUu/FuoWVqrxJ5NAFJadCfXxaf
         bwB1M83ctL6nt1Cm5VdDLjxTNqPJIyrqnpU9G4qUAzLvS9X40sMRfgkt7sG2vgdIxYRN
         /EFgxUp/5r7zbneignk/lvzIQeto9PZgOVQMud1FKjiCB+AudVEggjegJ7Jc+NRSSqBR
         3Hx1l730cvfZR3iwA7mXQs37Xsw87LZoN7/ZjVzGi0wYGbRARfnH9vtcM/ubsPriiA9U
         hMdFehizNNyyC8LNRHS9h7H4N5B6L1yFYmT8pYV0nL8x/Qb7YyrLo1tgDfQYx/st4QAT
         sQ+A==
X-Gm-Message-State: APjAAAUeFYKfIRSCBCAi+wy5pJadKJdQmEPOCe2yN88P9n6EBxQRJEiS
	LFvn6Luu2Af5qusC69qZP0heesQaf/C+K6h/zm7429eR24Q=
X-Google-Smtp-Source: APXvYqxSR0ypxmdKmU1RyT1xK6/Pqf1e/TTZ8+4D0fyjqAGDCiq3DiYAeAe/1HZqJICnm0ov8wA8WuNPODRBQbY21ks=
X-Received: by 2002:a05:6830:154c:: with SMTP id l12mr51892otp.275.1582657826449;
 Tue, 25 Feb 2020 11:10:26 -0800 (PST)
MIME-Version: 1.0
References: <CAFSZm+g8iFD3XgDK9XbcQmzDJdH70=URXXqZdMPcEjT2wU286Q@mail.gmail.com>
 <20200225183024.GA1578@denix.org>
In-Reply-To: <20200225183024.GA1578@denix.org>
From: "Joel A Cohen" <aaron@assonance.org>
Date: Tue, 25 Feb 2020 14:10:15 -0500
Message-ID: <CAFSZm+jMJYU3JNCSQLNQwXs0chBh-yoYx2vE2v+Eti=xTDZYsg@mail.gmail.com>
Subject: Re: [yocto] Using "latest git" versions of recipes
To: Denys Dmytriyenko <denis@denix.org>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000008bfe0b059f6b3d79"

--0000000000008bfe0b059f6b3d79
Content-Type: text/plain; charset="UTF-8"

Hmm, that is a very good suggestion that I hadn't thought of. I guess the
only disadvantage is that PV doesn't get changed so you end up having to
keep track of which "recipe_1.0.0.rpm" is the test one and which is the
good version, but even that you could probably do:

SRCREV_pn-recipe1 = "${AUTOREV}"
PV_pn-recipe1 = "1.0.1+git${SRCPV}"  # I'm not sure if this would actually
work?

My bbclass thing is a little easier if you have to do a bunch of those, but
maybe not worthwhile then.

Thanks!
Aaron


On Tue, Feb 25, 2020 at 1:30 PM Denys Dmytriyenko <denis@denix.org> wrote:

> On Tue, Feb 25, 2020 at 01:21:53PM -0500, Joel A Cohen wrote:
> > Hi all,
> >
> > What I've done for quite a while when creating recipes for code that is
> > under heavy development is create 2 version of the recipe.
> >
> > 1) recipe_1.0.0.bb (a known-stable recipe)
> >
> > 2) recipe_git.bb (which contains something like:
> > SRCREV="${AUTOREV}"
> > SRCPV="1.0.1+git${SRCPV}"
> > DEFAULT_PREFERENCE = "-1"
> >
> >
> > The major problem I have with this, is that it defeats BB_NO_NETWORK,
> even
> > if I'm not using the git version of the recipe (because bitbake wants to
> go
> > check what the latest version is of the recipe during parsing).
> >
> > I'm currently experimenting with a different approapch, which seems to
> have
> > several advantages. I wanted to share it and get commentary.
> >
> > 1) Add a new class, "use-git.bbclass":
> > # This allows using the latest version of the source without requiring a
> > separate
> > # "recipe_git.bb". To use:
> > # 1) Add: INHERIT += "use-git"
> > # 2) Add: GIT_PNS = "recipe1 recipe2 etc"
> >
> > GIT_PNS ?= ""
> > GIT_PNS[type] = "list"
> >
> > python () {
> >     pn = d.getVar('PN')
> >     git_pns = d.getVar('GIT_PNS', [])
> >
> >     if pn in git_pns:
> >         d.setVar('SRCREV', d.getVar('AUTOREV'))
> >         srcpv = d.getVar('SRCPV')
> >         d.appendVar('PV', '+git' + srcpv)
> >         bb.note('Using latest git source code for %s, as recipe %s' %
> (pn,
> > d.getVar('BP')))
> > }
> >
> >
> >
> > 2) In local.conf:
> > INHERIT += "use-git"
> > GIT_PNS = "recipe1 recipe2 etc"
> >
> >
> >
> > This is nice, because I no longer have to create those recipe_git.bb
> > recipes, and it's a central place to go configure a "use latest source
> > code" setting.
> >
> > Is this interesting to anyone else?
> >
> > --Aaron
>
> You know that you can poke SRCREV and other vars from a config file,
> such as local.conf?
>
> SRCREV_pn-recipe1 = "${AUTOREV}"
> SRCREV_pn-recipe2 = "${AUTOREV}"
>
> --
> Denys
>

--0000000000008bfe0b059f6b3d79
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hmm, that is a very good suggestion that I hadn&#39;t thou=
ght of. I guess the only disadvantage is that PV doesn&#39;t get changed so=
 you end up having to keep track of which &quot;recipe_1.0.0.rpm&quot; is t=
he test one and which is the good version, but even that you could probably=
 do:<div><br></div><div>SRCREV_pn-recipe1 =3D &quot;${AUTOREV}&quot;</div><=
div>PV_pn-recipe1 =3D &quot;1.0.1+git${SRCPV}&quot;=C2=A0 # I&#39;m not sur=
e if this would actually work?</div><div><br></div><div>My bbclass thing is=
 a little easier if you have to do a bunch of those, but maybe not worthwhi=
le then.</div><div><br></div><div>Thanks!</div><div>Aaron</div><div><br></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Tue, Feb 25, 2020 at 1:30 PM Denys Dmytriyenko &lt;<a href=3D"mailto:=
denis@denix.org">denis@denix.org</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">On Tue, Feb 25, 2020 at 01:21:53PM -0500, =
Joel A Cohen wrote:<br>
&gt; Hi all,<br>
&gt; <br>
&gt; What I&#39;ve done for quite a while when creating recipes for code th=
at is<br>
&gt; under heavy development is create 2 version of the recipe.<br>
&gt; <br>
&gt; 1) <a href=3D"http://recipe_1.0.0.bb" rel=3D"noreferrer" target=3D"_bl=
ank">recipe_1.0.0.bb</a> (a known-stable recipe)<br>
&gt; <br>
&gt; 2) <a href=3D"http://recipe_git.bb" rel=3D"noreferrer" target=3D"_blan=
k">recipe_git.bb</a> (which contains something like:<br>
&gt; SRCREV=3D&quot;${AUTOREV}&quot;<br>
&gt; SRCPV=3D&quot;1.0.1+git${SRCPV}&quot;<br>
&gt; DEFAULT_PREFERENCE =3D &quot;-1&quot;<br>
&gt; <br>
&gt; <br>
&gt; The major problem I have with this, is that it defeats BB_NO_NETWORK, =
even<br>
&gt; if I&#39;m not using the git version of the recipe (because bitbake wa=
nts to go<br>
&gt; check what the latest version is of the recipe during parsing).<br>
&gt; <br>
&gt; I&#39;m currently experimenting with a different approapch, which seem=
s to have<br>
&gt; several advantages. I wanted to share it and get commentary.<br>
&gt; <br>
&gt; 1) Add a new class, &quot;use-git.bbclass&quot;:<br>
&gt; # This allows using the latest version of the source without requiring=
 a<br>
&gt; separate<br>
&gt; # &quot;<a href=3D"http://recipe_git.bb" rel=3D"noreferrer" target=3D"=
_blank">recipe_git.bb</a>&quot;. To use:<br>
&gt; # 1) Add: INHERIT +=3D &quot;use-git&quot;<br>
&gt; # 2) Add: GIT_PNS =3D &quot;recipe1 recipe2 etc&quot;<br>
&gt; <br>
&gt; GIT_PNS ?=3D &quot;&quot;<br>
&gt; GIT_PNS[type] =3D &quot;list&quot;<br>
&gt; <br>
&gt; python () {<br>
&gt;=C2=A0 =C2=A0 =C2=A0pn =3D d.getVar(&#39;PN&#39;)<br>
&gt;=C2=A0 =C2=A0 =C2=A0git_pns =3D d.getVar(&#39;GIT_PNS&#39;, [])<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0if pn in git_pns:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0d.setVar(&#39;SRCREV&#39;, d.getVar(&=
#39;AUTOREV&#39;))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0srcpv =3D d.getVar(&#39;SRCPV&#39;)<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0d.appendVar(&#39;PV&#39;, &#39;+git&#=
39; + srcpv)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bb.note(&#39;Using latest git source =
code for %s, as recipe %s&#39; % (pn,<br>
&gt; d.getVar(&#39;BP&#39;)))<br>
&gt; }<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; 2) In local.conf:<br>
&gt; INHERIT +=3D &quot;use-git&quot;<br>
&gt; GIT_PNS =3D &quot;recipe1 recipe2 etc&quot;<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; This is nice, because I no longer have to create those <a href=3D"http=
://recipe_git.bb" rel=3D"noreferrer" target=3D"_blank">recipe_git.bb</a><br=
>
&gt; recipes, and it&#39;s a central place to go configure a &quot;use late=
st source<br>
&gt; code&quot; setting.<br>
&gt; <br>
&gt; Is this interesting to anyone else?<br>
&gt; <br>
&gt; --Aaron<br>
<br>
You know that you can poke SRCREV and other vars from a config file, <br>
such as local.conf?<br>
<br>
SRCREV_pn-recipe1 =3D &quot;${AUTOREV}&quot;<br>
SRCREV_pn-recipe2 =3D &quot;${AUTOREV}&quot;<br>
<br>
-- <br>
Denys<br>
</blockquote></div>

--0000000000008bfe0b059f6b3d79--
