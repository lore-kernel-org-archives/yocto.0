Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.4281.1591765704737799884
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Jun 2020 22:08:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=c+YDVp4i;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: ticotimo@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3AE7CE01CB4; Tue,  9 Jun 2020 22:08:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,
	URIBL_RED autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.178 listed in list.dnswl.org]
	*  0.0 URIBL_RED Contains an URL listed in the URIBL redlist
	*      [URIs: yoctoproject.org]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (ticotimo[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com [209.85.166.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9579E01CB0
	for <yocto@yoctoproject.org>; Tue,  9 Jun 2020 22:08:20 -0700 (PDT)
Received: by mail-il1-f178.google.com with SMTP id z2so725342ilq.0
        for <yocto@yoctoproject.org>; Tue, 09 Jun 2020 22:08:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cGsjF23EX9mLLG4kN+ImooPtOA+MrBoYS1iXJc6YYYk=;
        b=c+YDVp4iZ/CzfagMFrwGf0ByPIydUuwXOyR4tQv29M/atD9OEGl6xKNBoZax3HUxlv
         CW1PrgBJ+PaOrF1MwAap50w+qAm3b9qmxRKtinLYV8+H1F84sSmhCqbOK7dUIQwFZqv7
         VgVQs4fuy1gU+UQCdu+C6F15DWYsBk82J0dmnXmBSDqDTswv0/o9swxsjQRku4MfZ6Hq
         Q5471JplW2NGH647GsqZLUJ+P0FCDtSCfiGbwT8m90yprJP3+U3MbvTMv4AjOZY7U4UC
         3Qdv4dVPkPCGi3DT8ZHloC/sktupraIuoW4fwqgJ6icoE7uZAt3J26iYtKk4yasrSVHY
         BM8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cGsjF23EX9mLLG4kN+ImooPtOA+MrBoYS1iXJc6YYYk=;
        b=R2qfSf+QEmkOjrCcf0KK/I1SAqMvMdDldeTL3xJcS3DaqRgjKtykWLd/UIZswtFQB6
         57Xay2mkmn0x3TW9pPBWp4GuokSV1PGyu2FmifFuQVZNYbdIpyk6jlK+n46O8CLI8V1C
         IVZy1FUyc+MP7nCz1D1yp7I8Em2nDJQ6CtZcFyh6STGS0oHrk4sg1fg6IoxdjYwmusDF
         FAnWT5JKVQnCXGWhXmxnEOntqnfTWdiGoGxcDvZ1/1VwvcAx+imzOz1645aYIxnvRDzs
         JewUttncjMifXF7tvZ8pPSza6ogagr7yZkxtFu8BnOlu8UM/y73MQn+54i5V823AuqT6
         dRdA==
X-Gm-Message-State: AOAM531bvjAu2v8X5+UIUOn/KhJsZorE1lSKORw8gE54Es0BXWPDrpAe
	wrn79qj3n5jxkHddJrUSr4rXBAzRxAwETRmB5+o=
X-Google-Smtp-Source: ABdhPJwgGfa7WMw4FB1tatYInwBst6WacbCpx4blXxez4K1JfaycnvSDLP4kbuRqdMWVRtj9Ven0XNS7hs3x7bOTYc0=
X-Received: by 2002:a92:a1c9:: with SMTP id b70mr1446257ill.198.1591765699622;
 Tue, 09 Jun 2020 22:08:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200609211605.GA37371@linux-uys3>
In-Reply-To: <20200609211605.GA37371@linux-uys3>
From: "Tim Orling" <ticotimo@gmail.com>
Date: Tue, 9 Jun 2020 22:08:08 -0700
Message-ID: <CANx9H-BLQCC6YefXE8pqHVo7YfSEzxvLyNYROsGZDCX5R0CRww@mail.gmail.com>
Subject: Re: [yocto] minutes for Yocto Project Technical Team Meeting / Engineering Sync - June 9 2020
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000177a0b05a7b3d518"

--000000000000177a0b05a7b3d518
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 9, 2020 at 2:16 PM Trevor Woerner <twoerner@gmail.com> wrote:

> Yocto Technical Team Minutes, Engineering Sync, for June 9 2020
> archive:
> https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWV=
Dg9dDH4/edit
>
> =3D=3D disclaimer =3D=3D
> Best efforts are made to ensure the below is accurate and valid. However=
,
> errors sometimes happen. If any errors or omissions are found, please fe=
el
> free to reply to this email with any corrections.
>
> =3D=3D attendees =3D=3D
> Trevor Woerner, Jan-Simon M=C3=B6ller, Stephen Jolly, Trevor Gamblin, Br=
uce
> Ashfield, Scott Murray, Paul Barker, Michael Halstead, Jon Mason, Richar=
d
> Purdie, Joshua Watt, Armin Kuster, Tim Orling, Sathishkumar Duraisamy,
> henriknj, Ross Burton, Jeremy Puhlman
>
> =3D=3D notes =3D=3D
> - 2.7.4 released last week
> - 3.1.1 built, but has issues, not sent to QA yet
> - M1 early next week (to build)
> - thanks to AlexK for lots of fixes
>
> =3D=3D general =3D=3D
> RP:
>     problems with 3.1.1. qemu(-mips?) failed with taskhash mismatches, n=
ot
>     sure why
>
>
> RP:
>     devtool, patchtest, patchwork, and wic looking for maintainers
> PaulB:
>     patchtest/patchwork still on python2, needs 2=E2=86=923 update. patc=
htest
>     should be moved to OE-core so it can be noticed by more people
>
>
> RP:
>     lots of recipe upgrades, happy with where master is (wrt to recipe
>     versions), still need to update qemu to 5
>
>
> JPEW:
>     did RP see my patch to mc-depends to make it backwards compatible?
> RP:
>     dismayed it was more complex than hoped, but looks okay
> JPEW:
>     i=E2=80=99m using a proxy object otherwise we need to duplicate a lo=
t of code
>     with a lot of if=E2=80=99s
> RP:
>     saw the BBMASK thing for multiconfig that needed index checking, sad
>     that we=E2=80=99ll be stuck with that going forward (in command.py) =
mostly for
>     backwards compatibility (e.g. file checking). another option is to h=
ave
>     a new API and append a =E2=80=982=E2=80=99 to the end so callers wil=
l call the right
>     things (old or new). the code=E2=80=99s probably going to get worse =
and worse
>     with every new parameter we want to add (in the future)
>
> JPEW:
>     re multiconfig, sometimes the old full =E2=80=9Cmulticonfig=E2=80=9D=
 string
>     doesn=E2=80=99t work but the new =E2=80=9Cmc=E2=80=9D string does, c=
an we drop
>     =E2=80=9Cmulticonfig=E2=80=9D? changed in 2.7? or 3.0? there=E2=80=
=99s a bugzilla somewhere.
>     some code handles both, some doesn=E2=80=99t
> RP:
>     we can get rid of it, despite the expected screaming
>
>
> RP:
>     re devtool, reports on mailing list that devtool isn=E2=80=99t mc-co=
mpliant
> RP:
>     we have a horrible hack for PRserver
> RP:
>     highlights the need for a dedicated maintainer
>
>
> PaulB:
>     re patchwork, kernel.org are using a newer version of patchwork that
> is
>     python3-compatible, is maintained, but missing some things we need
> Timo:
>     i looked at freedesktop.org=E2=80=99s gitlab, they=E2=80=99ve made a=
 lot of changes
>     from where we forked from them, they=E2=80=99re also using python3 a=
nd django2.
>     going with mainline will miss features that we=E2=80=99re used to
> PaulB:
>     make a list of the gap items, then decide if we can live without the=
se
>     things
> Timo:
>     i looked at the fd.o=E2=80=99s patchwork and saw that many of the th=
ings we
>     added to our fork have been added (but differently) in fd.o=E2=80=99=
s. e.g. we
>     added a superseded feature, doesn=E2=80=99t seem to be on any other =
patchworks
> PaulB:
>     would like to spin up concurrent patchworks to see how the react to =
the
>     mailing list
> Timo:
>     good idea, maybe we can work together on that
> PaulB:
>     for patchtest it seems obvious what steps are required, patchwork le=
ss
>     clear
> Timo:
>     https://gitlab.freedesktop.org/patchwork-fdo
> Timo:
>     might be a lot of work to compare ours with fd.o=E2=80=99s patch by =
patch to
>     see
> PaulB:
>     we need to figure out if we can live with some upstream version, to =
cut
>     down on the effort of having our own fork
> RP:
>     but it=E2=80=99ll cause a lot of pain if, for example, the supercede=
d feature
> is
>     missing
> Timo:
>     we=E2=80=99re better off putting resources elsewhere. upstream looks=
 hard, but
>     i think patchwork-fdo looks like it might work, maybe easier to subm=
it
> to
>     patchwork-fdo rather than upstream?
> TrevorW:
>     maybe fdo would really like a superceded feature, they split from
>     upstream for same reasons as us, they probably share the same
> frustrations
> Timo:
>     agreed, we should reach out to them
> RP:
>     we should get a list first before reaching out
> Timo:
>     we probably have about 30 patches on top of upstream, although most =
of
>     them of them are probably just to add the supercede feature


Captured notes and recent research/discovery in the bug:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13684

We have 49 commits since forking from patchwork-fdo.
Upstream patchwork-fdo has 166 commits since we forked.


> PaulB:
>     is there anything in bugzilla? 13684 is a django update
> PaulB:
>     to take action to capture this discussion in bugzilla
> Timo:
>     Amber working on layerindex, but maybe we can have her work on this =
too
>     (not a promise), she has a lot of django experience
>
>
> Timo:
>     re perl dependency. there=E2=80=99s an existing oe-package-data util=
 script,
>     i=E2=80=99m using almost exact same code in a bitbake task, should t=
his be
>     refactored to lib/oe?
> RP:
>     sounds good, but depends on the implementation, in general i=E2=80=
=99m in
> favour
>     of strong APIs in lib/oe. e.g. =E2=80=9Cpackagedata=E2=80=9D is too =
generic. the
>     history was that packagedata.py was created as a way of pulling code
> out
>     of a bbclass
>=20
>

--000000000000177a0b05a7b3d518
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Jun 9, 2020 at 2:16 PM Trevor Woerner &lt;<a href=
=3D"mailto:twoerner@gmail.com">twoerner@gmail.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Yocto Technical Team Minutes, Engineering Sy=
nc, for June 9 2020<br>
archive: <a href=3D"https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2Q=
skANXW3ZT7QwKC5wWVDg9dDH4/edit" rel=3D"noreferrer" target=3D"_blank">https:=
//docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/e=
dit</a><br>
<br>
=3D=3D disclaimer =3D=3D<br>
Best efforts are made to ensure the below is accurate and valid. However,<=
br>
errors sometimes happen. If any errors or omissions are found, please feel=
<br>
free to reply to this email with any corrections.<br>
<br>
=3D=3D attendees =3D=3D<br>
Trevor Woerner, Jan-Simon M=C3=B6ller, Stephen Jolly, Trevor Gamblin, Bruc=
e<br>
Ashfield, Scott Murray, Paul Barker, Michael Halstead, Jon Mason, Richard<=
br>
Purdie, Joshua Watt, Armin Kuster, Tim Orling, Sathishkumar Duraisamy,<br>
henriknj, Ross Burton, Jeremy Puhlman<br>
<br>
=3D=3D notes =3D=3D<br>
- 2.7.4 released last week<br>
- 3.1.1 built, but has issues, not sent to QA yet<br>
- M1 early next week (to build)<br>
- thanks to AlexK for lots of fixes<br>
<br>
=3D=3D general =3D=3D<br>
RP:<br>
=C2=A0 =C2=A0 problems with 3.1.1. qemu(-mips?) failed with taskhash misma=
tches, not<br>
=C2=A0 =C2=A0 sure why<br>
<br>
<br>
RP:<br>
=C2=A0 =C2=A0 devtool, patchtest, patchwork, and wic looking for maintaine=
rs<br>
PaulB:<br>
=C2=A0 =C2=A0 patchtest/patchwork still on python2, needs 2=E2=86=923 upda=
te. patchtest<br>
=C2=A0 =C2=A0 should be moved to OE-core so it can be noticed by more peop=
le<br>
<br>
<br>
RP:<br>
=C2=A0 =C2=A0 lots of recipe upgrades, happy with where master is (wrt to =
recipe<br>
=C2=A0 =C2=A0 versions), still need to update qemu to 5<br>
<br>
<br>
JPEW:<br>
=C2=A0 =C2=A0 did RP see my patch to mc-depends to make it backwards compa=
tible?<br>
RP:<br>
=C2=A0 =C2=A0 dismayed it was more complex than hoped, but looks okay<br>
JPEW:<br>
=C2=A0 =C2=A0 i=E2=80=99m using a proxy object otherwise we need to duplic=
ate a lot of code<br>
=C2=A0 =C2=A0 with a lot of if=E2=80=99s<br>
RP:<br>
=C2=A0 =C2=A0 saw the BBMASK thing for multiconfig that needed index check=
ing, sad<br>
=C2=A0 =C2=A0 that we=E2=80=99ll be stuck with that going forward (in comm=
and.py) mostly for<br>
=C2=A0 =C2=A0 backwards compatibility (e.g. file checking). another option=
 is to have<br>
=C2=A0 =C2=A0 a new API and append a =E2=80=982=E2=80=99 to the end so cal=
lers will call the right<br>
=C2=A0 =C2=A0 things (old or new). the code=E2=80=99s probably going to ge=
t worse and worse<br>
=C2=A0 =C2=A0 with every new parameter we want to add (in the future)<br>
<br>
JPEW:<br>
=C2=A0 =C2=A0 re multiconfig, sometimes the old full =E2=80=9Cmulticonfig=
=E2=80=9D string<br>
=C2=A0 =C2=A0 doesn=E2=80=99t work but the new =E2=80=9Cmc=E2=80=9D string=
 does, can we drop<br>
=C2=A0 =C2=A0 =E2=80=9Cmulticonfig=E2=80=9D? changed in 2.7? or 3.0? there=
=
=E2=80=99s a bugzilla somewhere.<br>
=C2=A0 =C2=A0 some code handles both, some doesn=E2=80=99t<br>
RP:<br>
=C2=A0 =C2=A0 we can get rid of it, despite the expected screaming<br>
<br>
<br>
RP:<br>
=C2=A0 =C2=A0 re devtool, reports on mailing list that devtool isn=E2=80=
=99t mc-compliant<br>
RP:<br>
=C2=A0 =C2=A0 we have a horrible hack for PRserver<br>
RP:<br>
=C2=A0 =C2=A0 highlights the need for a dedicated maintainer<br>
<br>
<br>
PaulB:<br>
=C2=A0 =C2=A0 re patchwork, <a href=3D"http://kernel.org" rel=3D"noreferre=
r" target=3D"_blank">kernel.org</a> are using a newer version of patchwork =
that is<br>
=C2=A0 =C2=A0 python3-compatible, is maintained, but missing some things w=
e need<br>
Timo:<br>
=C2=A0 =C2=A0 i looked at <a href=3D"http://freedesktop.org" rel=3D"norefe=
rrer" target=3D"_blank">freedesktop.org</a>=E2=80=99s gitlab, they=E2=80=99=
ve made a lot of changes<br>
=C2=A0 =C2=A0 from where we forked from them, they=E2=80=99re also using p=
ython3 and django2.<br>
=C2=A0 =C2=A0 going with mainline will miss features that we=E2=80=99re us=
ed to<br>
PaulB:<br>
=C2=A0 =C2=A0 make a list of the gap items, then decide if we can live wit=
hout these<br>
=C2=A0 =C2=A0 things<br>
Timo:<br>
=C2=A0 =C2=A0 i looked at the fd.o=E2=80=99s patchwork and saw that many o=
f the things we<br>
=C2=A0 =C2=A0 added to our fork have been added (but differently) in fd.o=
=E2=80=99s. e.g. we<br>
=C2=A0 =C2=A0 added a superseded feature, doesn=E2=80=99t seem to be on an=
y other patchworks<br>
PaulB:<br>
=C2=A0 =C2=A0 would like to spin up concurrent patchworks to see how the r=
eact to the<br>
=C2=A0 =C2=A0 mailing list<br>
Timo:<br>
=C2=A0 =C2=A0 good idea, maybe we can work together on that<br>
PaulB:<br>
=C2=A0 =C2=A0 for patchtest it seems obvious what steps are required, patc=
hwork less<br>
=C2=A0 =C2=A0 clear<br>
Timo:<br>
=C2=A0 =C2=A0 <a href=3D"https://gitlab.freedesktop.org/patchwork-fdo" rel=
=
=3D"noreferrer" target=3D"_blank">https://gitlab.freedesktop.org/patchwork=
-fdo</a><br>
Timo:<br>
=C2=A0 =C2=A0 might be a lot of work to compare ours with fd.o=E2=80=99s p=
atch by patch to<br>
=C2=A0 =C2=A0 see<br>
PaulB:<br>
=C2=A0 =C2=A0 we need to figure out if we can live with some upstream vers=
ion, to cut<br>
=C2=A0 =C2=A0 down on the effort of having our own fork<br>
RP:<br>
=C2=A0 =C2=A0 but it=E2=80=99ll cause a lot of pain if, for example, the s=
uperceded feature is<br>
=C2=A0 =C2=A0 missing<br>
Timo:<br>
=C2=A0 =C2=A0 we=E2=80=99re better off putting resources elsewhere. upstre=
am looks hard, but<br>
=C2=A0 =C2=A0 i think patchwork-fdo looks like it might work, maybe easier=
 to submit to<br>
=C2=A0 =C2=A0 patchwork-fdo rather than upstream?<br>
TrevorW:<br>
=C2=A0 =C2=A0 maybe fdo would really like a superceded feature, they split=
 from<br>
=C2=A0 =C2=A0 upstream for same reasons as us, they probably share the sam=
e frustrations<br>
Timo:<br>
=C2=A0 =C2=A0 agreed, we should reach out to them<br>
RP:<br>
=C2=A0 =C2=A0 we should get a list first before reaching out<br>
Timo:<br>
=C2=A0 =C2=A0 we probably have about 30 patches on top of upstream, althou=
gh most of<br>
=C2=A0 =C2=A0 them of them are probably just to add the supercede feature<=
/blockquote><div dir=3D"auto"><br></div><div dir=3D"auto"><div dir=3D"auto"=
 style=3D"font-size:1rem;color:rgb(49,49,49);word-spacing:1px">Captured not=
es and recent research/discovery in the bug:</div><div dir=3D"auto" style=
=3D"font-size:16px;color:rgb(49,49,49);word-spacing:1px"><div style=3D"fon=
t-size:1rem"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D13684">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13684</a></d=
iv><br></div><div dir=3D"auto" style=3D"font-size:1rem;color:rgb(49,49,49);=
word-spacing:1px">We have 49 commits since forking from patchwork-fdo.</div=
><div dir=3D"auto" style=3D"font-size:1rem;color:rgb(49,49,49);word-spacing=
:1px">Upstream patchwork-fdo has 166 commits since we forked.</div><div dir=
=
=3D"auto" style=3D"font-size:1rem;color:rgb(49,49,49);word-spacing:1px"><b=
r></div></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><br>
PaulB:<br>
=C2=A0 =C2=A0 is there anything in bugzilla? 13684 is a django update<br>
PaulB:<br>
=C2=A0 =C2=A0 to take action to capture this discussion in bugzilla<br>
Timo:<br>
=C2=A0 =C2=A0 Amber working on layerindex, but maybe we can have her work =
on this too<br>
=C2=A0 =C2=A0 (not a promise), she has a lot of django experience<br>
<br>
<br>
Timo:<br>
=C2=A0 =C2=A0 re perl dependency. there=E2=80=99s an existing oe-package-d=
ata util script,<br>
=C2=A0 =C2=A0 i=E2=80=99m using almost exact same code in a bitbake task, =
should this be<br>
=C2=A0 =C2=A0 refactored to lib/oe?<br>
RP:<br>
=C2=A0 =C2=A0 sounds good, but depends on the implementation, in general i=
=
=E2=80=99m in favour<br>
=C2=A0 =C2=A0 of strong APIs in lib/oe. e.g. =E2=80=9Cpackagedata=E2=80=9D=
 is too generic. the<br>
=C2=A0 =C2=A0 history was that packagedata.py was created as a way of pull=
ing code out<br>
=C2=A0 =C2=A0 of a bbclass<br>
<br>
</blockquote></div></div>

--000000000000177a0b05a7b3d518--
