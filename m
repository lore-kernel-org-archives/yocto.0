Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.160.1582654927835870982
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Feb 2020 10:22:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@assonance-org.20150623.gappssmtp.com header.s=20150623 header.b=gr9OeqPa;
 spf=softfail (domain: assonance.org, ip: 140.211.169.56, mailfrom: aaron@assonance.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 451B3E0175E; Tue, 25 Feb 2020 10:22:07 -0800 (PST)
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
	*      [209.85.210.53 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28554E003DB
	for <yocto@yoctoproject.org>; Tue, 25 Feb 2020 10:22:05 -0800 (PST)
Received: by mail-ot1-f53.google.com with SMTP id g64so378198otb.13
        for <yocto@yoctoproject.org>; Tue, 25 Feb 2020 10:22:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=assonance-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=SWZ4BIji3Rdf3C8j18XTDeTDhMTW4H4TjfZdY3ebB8g=;
        b=gr9OeqPaU6aA9k797qF8H5SRjDg3g7nQL+b3RnwbekkY1ODQB2Y+DwlR5JKkyPN4p1
         +33f4gJtGEoEVjeWoSozubODZ7spyuAQNb6F0auNmKPOGYdKlaHRhU+9yRnSTjxOz/NF
         SXtFP9VKGjLBD+ee+fPE0j8vaLdToERCmj6osfAyDroHucog7vVzsSQiW6i053Vidxoi
         w0ff/hP8fHhGcWVWcnkEOKsb1ik4b32kVjpStEhbiU7Rsx2QbitRSncOIbmfyCJmf8Ge
         zAcR1Ymr3zsrZXpgU/qEO9DUU528LmlMxbZrIDa+QqXFSAr7z2zgb3Ea4V+Wg76oResJ
         101w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=SWZ4BIji3Rdf3C8j18XTDeTDhMTW4H4TjfZdY3ebB8g=;
        b=KReXoXY329m0Szg6iv1Ft4324392F+Zz0P8gF3HYm3280WkqHj2u3Ofr8z3YLaFOo4
         1+zCUltyefpiktB2izv4HHASMyFxhzXTpiGyUrEOmjUcNhz5Sr5XlC1PaDS60KzaPjvd
         ceLSyG70SPUFIty4GUCGAW4GwGYRQ1I3gyhZqj3Dm7i5hfGXY3EO5OPDkCIJ6ANUY3lC
         WcHy02h9Zq7h/JTl3/fs1rQY5yYqU1GYJm0bcxYL8/AV/L60WZXtlwVJCZZmsNjy0PhT
         5tFPunEe5KMQee+QKPfTKnJcFF3xLZHMFWcoto9VfRTjz6NIJuFOZw9HmrOvNGB4EnC1
         pHLQ==
X-Gm-Message-State: APjAAAUAiYJw+yCxp0nnM9gyGvjV896w1Q4CJnakYYmi+5jO6ZK4jtpa
	Ntyxp0cZ6WMFCVpsxT/CkOI/tGGaAUPwVFIx6XahUxHUuwQ=
X-Google-Smtp-Source: APXvYqymmeYDxrGHf8r4eC3J74TeEb5F0Zm4zxrzV1T20N/jJ2HP5n+cDgwVVx8JOvrd5cdeaznufoC1dOZ1acjETZU=
X-Received: by 2002:a9d:ecc:: with SMTP id 70mr44313187otj.182.1582654924806;
 Tue, 25 Feb 2020 10:22:04 -0800 (PST)
MIME-Version: 1.0
From: "Joel A Cohen" <aaron@assonance.org>
Date: Tue, 25 Feb 2020 13:21:53 -0500
Message-ID: <CAFSZm+g8iFD3XgDK9XbcQmzDJdH70=URXXqZdMPcEjT2wU286Q@mail.gmail.com>
Subject: Using "latest git" versions of recipes
To: Yocto list discussion <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000987b65059f6a9048"

--000000000000987b65059f6a9048
Content-Type: text/plain; charset="UTF-8"

Hi all,

What I've done for quite a while when creating recipes for code that is
under heavy development is create 2 version of the recipe.

1) recipe_1.0.0.bb (a known-stable recipe)

2) recipe_git.bb (which contains something like:
SRCREV="${AUTOREV}"
SRCPV="1.0.1+git${SRCPV}"
DEFAULT_PREFERENCE = "-1"


The major problem I have with this, is that it defeats BB_NO_NETWORK, even
if I'm not using the git version of the recipe (because bitbake wants to go
check what the latest version is of the recipe during parsing).

I'm currently experimenting with a different approapch, which seems to have
several advantages. I wanted to share it and get commentary.

1) Add a new class, "use-git.bbclass":
# This allows using the latest version of the source without requiring a
separate
# "recipe_git.bb". To use:
# 1) Add: INHERIT += "use-git"
# 2) Add: GIT_PNS = "recipe1 recipe2 etc"

GIT_PNS ?= ""
GIT_PNS[type] = "list"

python () {
    pn = d.getVar('PN')
    git_pns = d.getVar('GIT_PNS', [])

    if pn in git_pns:
        d.setVar('SRCREV', d.getVar('AUTOREV'))
        srcpv = d.getVar('SRCPV')
        d.appendVar('PV', '+git' + srcpv)
        bb.note('Using latest git source code for %s, as recipe %s' % (pn,
d.getVar('BP')))
}



2) In local.conf:
INHERIT += "use-git"
GIT_PNS = "recipe1 recipe2 etc"



This is nice, because I no longer have to create those recipe_git.bb
recipes, and it's a central place to go configure a "use latest source
code" setting.

Is this interesting to anyone else?

--Aaron

--000000000000987b65059f6a9048
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>What I&#39;ve done for quite a =
while when creating recipes for code that is under heavy development is cre=
ate 2 version of the recipe.</div><div><br></div><div>1) <a href=3D"http://=
recipe_1.0.0.bb" target=3D"_blank">recipe_1.0.0.bb</a> (a known-stable reci=
pe)</div><div><br></div><div>2) <a href=3D"http://recipe_git.bb" target=3D"=
_blank">recipe_git.bb</a> (which contains something like:</div><div>SRCREV=
=3D&quot;${AUTOREV}&quot;</div><div>SRCPV=3D&quot;1.0.1+git${SRCPV}&quot;</=
div><div>DEFAULT_PREFERENCE =3D &quot;-1&quot;</div><div><br></div><div><br=
></div><div>The major problem I have with this, is that it defeats BB_NO_NE=
TWORK, even if I&#39;m not using the git version of the recipe (because bit=
bake wants to go check what the latest version is of the recipe during pars=
ing).</div><div><br></div><div>I&#39;m currently experimenting with a diffe=
rent approapch, which seems to have several advantages. I wanted to share i=
t and get commentary.</div><div><br></div><div>1) Add a new class, &quot;us=
e-git.bbclass&quot;:</div><div># This allows using the latest version of th=
e source without requiring a separate<br># &quot;<a href=3D"http://recipe_g=
it.bb">recipe_git.bb</a>&quot;. To use:<br># 1) Add: INHERIT +=3D &quot;use=
-git&quot;<br># 2) Add: GIT_PNS =3D &quot;recipe1 recipe2 etc&quot;<br><br>=
GIT_PNS ?=3D &quot;&quot;<br>GIT_PNS[type] =3D &quot;list&quot;<br><br>pyth=
on () {<br>=C2=A0 =C2=A0 pn =3D d.getVar(&#39;PN&#39;)<br>=C2=A0 =C2=A0 git=
_pns =3D d.getVar(&#39;GIT_PNS&#39;, [])<br><br>=C2=A0 =C2=A0 if pn in git_=
pns:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 d.setVar(&#39;SRCREV&#39;, d.getVar(&#3=
9;AUTOREV&#39;))<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 srcpv =3D d.getVar(&#39;SRC=
PV&#39;)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 d.appendVar(&#39;PV&#39;, &#39;+git=
&#39; + srcpv)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.note(&#39;Using latest git=
 source code for %s, as recipe %s&#39; % (pn, d.getVar(&#39;BP&#39;)))<br>}=
<br></div><div><br></div><div><br></div><div><br></div><div>2) In local.con=
f:</div><div>INHERIT +=3D &quot;use-git&quot;</div>GIT_PNS =3D &quot;recipe=
1 recipe2 etc&quot;<div><br></div><div><br></div><div><br></div><div>This i=
s nice, because I no longer have to create those <a href=3D"http://recipe_g=
it.bb">recipe_git.bb</a> recipes, and it&#39;s a central place to go config=
ure a &quot;use latest source code&quot; setting.</div><div><br></div><div>=
Is this interesting to anyone else?</div><div><br></div><div>--Aaron</div><=
div><br></div></div>

--000000000000987b65059f6a9048--
