Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DCB7C74A5B
	for <webhook@archiver.kernel.org>; Fri, 17 Mar 2023 21:43:19 +0000 (UTC)
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
 by mx.groups.io with SMTP id smtpd.web11.107.1679089396904808963
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Mar 2023 14:43:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=GySRpENv;
 spf=pass (domain: gmail.com, ip: 209.85.219.173, mailfrom: ticotimo@gmail.com)
Received: by mail-yb1-f173.google.com with SMTP id cj14so7196721ybb.12
        for <yocto@lists.yoctoproject.org>; Fri, 17 Mar 2023 14:43:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679089396;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=icNJvKv+tWDFa8BeXyu7sOCHt469TOXV+oFnwNK+Sgs=;
        b=GySRpENvhEjg0tO625Bf4U7FMx/F3buBIaPyC5/NdlAi0QIdihtqQ1AtvdgaPcbRXa
         XpYHKxJxUZ24JTGFMx75imaxcEWNwJl8OqgDvYtUkmbpnzlm7hUAE4B2DvdmLfZtYubd
         8X3lOi7ndmyO3AogHYiCGLP11fvB4NQ6l9okJeYxfVYCKT+EZjHhAzPDaWGdEvqt73Am
         /FVrg8I6STiRbIa24aoaVJw0uTS2Q9ToAYDHGdQkFpNEanU5ofNlSEtEF/2MM/iaKtrL
         hhAdEcvv3k1hmlv6LJQRTmN/wy6RreU1qUb3hGtL3k9BY6p9yFtcHvhz1e42+jHwsYYa
         4afA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679089396;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=icNJvKv+tWDFa8BeXyu7sOCHt469TOXV+oFnwNK+Sgs=;
        b=3CGrWcQqazDynIWIkEnf4KaXeCQCmCZELCBU3SbPbUDigeFY61xT85Az/1osYH2QO/
         ISlO3c1ALllgYu+oXK4K8A9bBkfInwyCs9Z4PjVO2MzMN1tqbWorJ2t0AXHFrGT6fxf9
         XUvUZzLRZUvxRus7xWTayJ5ZSZ1fXeNRGK4DOgbT2Q4AWnsMxSZxwtYEIQ+V5tf3bs3L
         F52GKWRI6u2JkObj8LJMvlsXNSyTgp1fiQAYEIMTYANiVIl9SQm09WSNxD7o/ZQTDCu7
         KfCVZ4MaTDL4mE4g/3OdXUysJCfaVQCjk0cUdXjIP1/u6kNALWolJtjnEj2LH97Y4ddF
         MD3A==
X-Gm-Message-State: AO0yUKXCwoUbikCDh6O9S0c/vUHsjZ5sb5gzkublZrAuGco8hlEMjFjD
	9nkwIBYijfwoSursycgiGnCZzIaze8xBZJaKILI=
X-Google-Smtp-Source: AK7set9QxAzYGElsxJhhOxermqEWbABzTll0RnERLhj57OEta4CTMNr9pURwDr8yvkdjiLfL+yYE0GGIenemGO0Wrck=
X-Received: by 2002:a25:9384:0:b0:a17:c04e:bf7c with SMTP id
 a4-20020a259384000000b00a17c04ebf7cmr396ybm.11.1679089395806; Fri, 17 Mar
 2023 14:43:15 -0700 (PDT)
MIME-Version: 1.0
References: <c607b08fa41a4dfeb70aad68f70f961a@vivavis.com> <CANNYZj8rJ5dUFpQ2Pa1NkfHFDHaYn8vbBvo5hQYVNbBbH6OzYA@mail.gmail.com>
 <CA+chaQd-RmQXHMG-_k-897H2X+Wu28uZjywvrZ3s5rHv=oYSyQ@mail.gmail.com> <933a79c213bd4d1686bde35aaa1a726c@vivavis.com>
In-Reply-To: <933a79c213bd4d1686bde35aaa1a726c@vivavis.com>
From: Tim Orling <ticotimo@gmail.com>
Date: Fri, 17 Mar 2023 14:43:04 -0700
Message-ID: <CANx9H-B-Km_Wu4n=LvY=fXXBHaWnjy20rNrKg_H-NbG2RXENyA@mail.gmail.com>
Subject: Re: [yocto] State of Yocto styleguide and oe-stylize.py script
To: embedded@vivavis.com
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, Martin Jansa <martin.jansa@gmail.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000fbb88905f71f7655"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Mar 2023 21:43:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59450

--000000000000fbb88905f71f7655
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 17, 2023 at 5:51 AM VIVAVIS AG via lists.yoctoproject.org
<embedded=3Dvivavis.com@lists.yoctoproject.org> wrote:

> Thank you for all your answers on this topic.
>
>
>
> My realization from the discussion is, that there=E2=80=99s currently no
> definitive
>
> guide on how to order variables and tasks. So we=E2=80=99re going to proc=
eed with
> our
>
> BCP and write recipes following the Styleguide and based on recipes in
> meta
>
> and meta-openembedded. If the style differs within these layers too, we d=
o
>
> some sort of majority decision.
>
>
>
> Therefore, the first line of our bbappend files would normally start with
>
> the FILESEXTRAPATHS variable for instance, like in most recipes of these
>
> public layers. oe-stylize.py places this at the end of the file, which
> looks
>
> a little bit strange for us. I understand Alexander, saying it must look
> good
>
> to the tools not for human eyes, but maybe the truth lies in between.
>
>
>
> Maybe, or hopefully the maintainers of the YP will maintain and update
>

This is an open source community project, so as an interested user, you
count as a maintainer :)

I say this because it would be great if you used this valuable time and
energy you have spent to help the next person. Your observations are
excellent and should be captured.

> the styleguide (in my opinion the canonical reference) and adapt the tool=
s
>
> to minimize the gap between specifications.
>
As formerly stated, this may reduce discussions and overhead when
>
> contributing to the YP relating to recipes.
>
>
>
> Carsten
>
>
>
> *Von:* Martin Jansa <martin.jansa@gmail.com>
> *Gesendet:* Montag, 13. M=C3=A4rz 2023 19:00
> *An:* Alexander Kanavin <alex.kanavin@gmail.com>
> *Cc:* embedded (VIVAVIS AG) <embedded@vivavis.com>;
> yocto@lists.yoctoproject.org
> *Betreff:* Re: [yocto] State of Yocto styleguide and oe-stylize.py script
>
>
>
> On Mon, Mar 13, 2023 at 6:34=E2=80=AFPM Alexander Kanavin <alex.kanavin@g=
mail.com>
> wrote:
>
> There is not a lot of interest in maintaining style guides, and
> associated tooling. My personal feeling is that they don't really help
> with the truly problematic things in recipes that need a human eye (or
> chatgpt level intelligence :) - by and large people do follow
> reasonable order of entries for example, and nitpicking on an exact
> order would just be wasting precious maintainer time.
>
>
>
> I agree that there are other more important things, but I also like style
> (only in code - human looks are overrated :)).
>
>
>
> If the tool is executed locally before sending the contribution (and
> Carsten does seem interested in doing just that - not asking Khem to run =
it
> on incoming patches) then I believe it can save maintainers time by sendi=
ng
> better patches on first try not waste it and our styleguide really needs
> some TLC as Carsten found out.
>
>
>
> The same does apply to e.g. scripts/contrib/patchreview.py.
>
>
>
> If the missing/malformed Upstream-Status is reported to the original
> contributor before he/she/it sends the patch, by some at least well
> documented work flow how to submit patches, then it saves more maintainer
> time, than asking for it during e-mail review or worse after the change i=
s
> merged or built by maintainer and QA check reports it's missing or
> malformed.
>
>
>
> If someone is willing to help with the tooling, we should endorse that,
> not discourage them even when there are bigger-greater goals
> like yocto-check-layer script you mentioned.
>
>
>
> Cheers,
>
>
>
> If you want to ensure good quality, making your layer pass the yocto
> compatibility script, and ensuring there are no warnings of any kind
> from bitbake when built with latest master revisions of everything is
> a better first step in my opinion.
>
> Alex
>
> On Mon, 13 Mar 2023 at 15:20, VIVAVIS AG via lists.yoctoproject.org
> <http://atpscan.global.hornetsecurity.com/index.php?atp_str=3D6ii-lFB9x9q=
quaocUdwq3KPDfo4Ve-R9P7eR1RKQNoX0PPCb3_6yhFGC3x1GwZole7KBAvT-xxm_pGgLpG845I=
RXpTidBDAwEBQPD0x1b9WvbYpe4wJDh9rF3J5hWsTF-vhrwi4K0NOlANabME2YpC0J56gr8jh5a=
obqidN7LZ3W0kK7aL0Z77nIwfLTXeCe3DDEwwHpEQEm4E24jDBcBjPn0lR1licMMlOMuN0Ku2UJ=
WuY5EZKYj2MDhWPES4ORfGQwTBKJ2_2SQbNCp3HiqKXuKLNA0uZZjDSnSSM6OiPSxJs_FTatAw_=
qwRMjOjojnNbHc4NY9ija7K0-XewMfA>
> <embedded=3Dvivavis.com@lists.yoctoproject.org> wrote:
> >
> > Hi,
> >
> > I'm wondering whether the styleguide
> www.openembedded.org/wiki/Styleguide
> <http://atpscan.global.hornetsecurity.com/index.php?atp_str=3DiIIqKiBtWyL=
K_Z31_K3uvMZBrXb_PFR2od9-FtXKXz0RMKEw5ucbEAeGpGronR5UoCkmMUNPDZPduCLN_Vls4-=
Q0YnC6_L0lK97-bh_8QIu0wG0kBftp7nxSdc2LDqs-ozpYL075CxoglKgEi_TnHSDIzWL8eNhFm=
R_miaWimb3E36UKxgJ6gCP7ksibOI0OBY2xn1BVElTVgJIPnB8cl2tUoif82pqqfLdtjn4PJPbi=
tDP7HoboaHzVlcG-2DiPo9YxhYRcE9YQNsNJZ0ulKd9OnTTyIftKKOOkgcYTV9AUa5gQwkk1rFo=
FIzo6I0vpagG38uAaDiMMySM6OiM4QIzYwtTY-Kax_baGBvUa>
> ,
> > meta-openembedded/contrib/oe-stylize.py or none of them is the source o=
f
> > truth for writing a good recipe.
> >
> > E.g., if you run oe-stylize.py, the SRCREV variable is placed above
> SRC_URI,
> > or RDEPENDS is placed above FILES, which is not what the Wiki documents=
.
> > And there are more discrepancies of this type.
> >
> > Furthermore, the script doesn't know the FILESEXTRAPATHS variable in
> bbappend files
> > and moves it to the end of my recipe. Well, this is not decribed in the
> Wiki, but a look
> > into append files in meta-openembedded shows, that it is common pactice
> to put
> > FILESEXTRAPATHS in the first line of the recipe.
> >
> > The Wiki has an interesting note and the end: "You can run
> contrib/oe-stylize.py from
> > meta-oe on your recipes before submitting them; however it is not
> necessarily up-to-date
> > with all current style conventions. This page should be considered the
> canonical reference."
> >
> > Furthermore, there's github.com/openembedded/meta-openembedded/pull/465
> > providing another ruleset for the new linter.
> >
> > So, my question to the Yocto maintainers is, what is the current state
> of the styleguide
> > and oe-stylize.py? Are there plans to synchronize them?
> >
> > Thanks for clarification.
> >
> > Carsten Stelling
> >
> >
> >
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59447):
> https://lists.yoctoproject.org/g/yocto/message/59447
> Mute This Topic: https://lists.yoctoproject.org/mt/97581374/924729
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ticotimo@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000fbb88905f71f7655
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Mar 17, 2023 at 5:51 AM VIVAVIS AG via <a href=3D"h=
ttp://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;embedded=3D<a =
href=3D"mailto:vivavis.com@lists.yoctoproject.org">vivavis.com@lists.yoctop=
roject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">







<div lang=3D"DE" link=3D"blue" vlink=3D"purple">
<div class=3D"m_-4625696911095322983WordSection1">
<p class=3D"MsoNormal"><span class=3D"m_-4625696911095322983SpellE"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#=
1f497d">Thank</span></span><span style=3D"font-size:11.0pt;font-family:&quo=
t;Calibri&quot;,sans-serif;color:#1f497d">
<span class=3D"m_-4625696911095322983SpellE">you</span> <span class=3D"m_-4=
625696911095322983SpellE">for</span> all <span class=3D"m_-4625696911095322=
983SpellE">
your</span> <span class=3D"m_-4625696911095322983SpellE">answers</span> on =
<span class=3D"m_-4625696911095322983SpellE">this</span>
<span class=3D"m_-4625696911095322983SpellE">topic</span>.<u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span class=3D"m_-4625696911095322983SpellE"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#=
1f497d">My</span></span><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,sans-serif;color:#1f497d">
<span class=3D"m_-4625696911095322983SpellE">realization</span> <span class=
=3D"m_-4625696911095322983SpellE">from</span> <span class=3D"m_-46256969110=
95322983SpellE">
the</span> <span class=3D"m_-4625696911095322983SpellE">discussion</span> <=
span class=3D"m_-4625696911095322983SpellE">is</span>,
<span class=3D"m_-4625696911095322983SpellE">that</span> <span class=3D"m_-=
4625696911095322983SpellE">there=E2=80=99s</span> <span class=3D"m_-4625696=
911095322983SpellE">
currently</span> <span class=3D"m_-4625696911095322983SpellE">no</span> def=
initive<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span class=3D"m_-4625696911095322983SpellE"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#=
1f497d">guide</span></span><span style=3D"font-size:11.0pt;font-family:&quo=
t;Calibri&quot;,sans-serif;color:#1f497d">
 on <span class=3D"m_-4625696911095322983SpellE">how</span> <span class=3D"=
m_-4625696911095322983SpellE">to</span> <span class=3D"m_-46256969110953229=
83SpellE">
order</span> variables <span class=3D"m_-4625696911095322983SpellE">and</sp=
an> <span class=3D"m_-4625696911095322983SpellE">tasks</span>. So
<span class=3D"m_-4625696911095322983SpellE">we=E2=80=99re</span> <span cla=
ss=3D"m_-4625696911095322983SpellE">going</span> <span class=3D"m_-46256969=
11095322983SpellE">
to</span> <span class=3D"m_-4625696911095322983SpellE">proceed</span> <span=
 class=3D"m_-4625696911095322983SpellE">with</span> <span class=3D"m_-46256=
96911095322983SpellE">
our</span><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">BCP
<span class=3D"m_-4625696911095322983SpellE">and</span> <span class=3D"m_-4=
625696911095322983SpellE">write</span> <span class=3D"m_-462569691109532298=
3SpellE">
recipes</span> <span class=3D"m_-4625696911095322983SpellE">following</span=
> <span class=3D"m_-4625696911095322983SpellE">the</span>
<span class=3D"m_-4625696911095322983SpellE">Styleguide</span> <span class=
=3D"m_-4625696911095322983SpellE">and</span> <span class=3D"m_-462569691109=
5322983SpellE">
based</span> on <span class=3D"m_-4625696911095322983SpellE">recipes</span>=
 in <span class=3D"m_-4625696911095322983SpellE">meta</span><u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><span class=3D"m_-4625696911095322983SpellE"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#=
1f497d">and</span></span><span style=3D"font-size:11.0pt;font-family:&quot;=
Calibri&quot;,sans-serif;color:#1f497d">
 meta-<span class=3D"m_-4625696911095322983SpellE">openembedded</span>. <sp=
an class=3D"m_-4625696911095322983SpellE">If</span> <span class=3D"m_-46256=
96911095322983SpellE">
the</span> style <span class=3D"m_-4625696911095322983SpellE">differs</span=
> <span class=3D"m_-4625696911095322983SpellE">within</span>
<span class=3D"m_-4625696911095322983SpellE">these</span> <span class=3D"m_=
-4625696911095322983SpellE">layers</span> <span class=3D"m_-462569691109532=
2983SpellE">
too</span>, <span class=3D"m_-4625696911095322983SpellE">we</span> do<u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><span class=3D"m_-4625696911095322983SpellE"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#=
1f497d">some</span></span><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif;color:#1f497d">
<span class=3D"m_-4625696911095322983SpellE">sort</span> <span class=3D"m_-=
4625696911095322983SpellE">of</span> <span class=3D"m_-4625696911095322983S=
pellE">
majority</span> <span class=3D"m_-4625696911095322983SpellE">decision</span=
>.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span class=3D"m_-4625696911095322983SpellE"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#=
1f497d">Therefore</span></span><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,sans-serif;color:#1f497d">,
<span class=3D"m_-4625696911095322983SpellE">the</span> <span class=3D"m_-4=
625696911095322983SpellE">first</span> <span class=3D"m_-462569691109532298=
3SpellE">
line</span> <span class=3D"m_-4625696911095322983SpellE">of</span> <span cl=
ass=3D"m_-4625696911095322983SpellE">our</span> <span class=3D"m_-462569691=
1095322983SpellE">
bbappend</span> <span class=3D"m_-4625696911095322983SpellE">files</span> <=
span class=3D"m_-4625696911095322983SpellE">would</span>
<span class=3D"m_-4625696911095322983SpellE">normally</span> <span class=3D=
"m_-4625696911095322983SpellE">start</span> <span class=3D"m_-4625696911095=
322983SpellE">
with</span><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span class=3D"m_-4625696911095322983SpellE"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#=
1f497d">the</span></span><span style=3D"font-size:11.0pt;font-family:&quot;=
Calibri&quot;,sans-serif;color:#1f497d">
 FILESEXTRAPATHS variable <span class=3D"m_-4625696911095322983SpellE">for<=
/span> <span class=3D"m_-4625696911095322983SpellE">instance</span>, like i=
n
<span class=3D"m_-4625696911095322983SpellE">most</span> <span class=3D"m_-=
4625696911095322983SpellE">recipes</span> <span class=3D"m_-462569691109532=
2983SpellE">
of</span> <span class=3D"m_-4625696911095322983SpellE">these</span><u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span class=3D"m_-4625696911095322983SpellE"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#=
1f497d">public</span></span><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,sans-serif;color:#1f497d">
<span class=3D"m_-4625696911095322983SpellE">layers</span>. oe-stylize.py <=
span class=3D"m_-4625696911095322983SpellE">places</span>
<span class=3D"m_-4625696911095322983SpellE">this</span> at <span class=3D"=
m_-4625696911095322983SpellE">the</span> <span class=3D"m_-4625696911095322=
983SpellE">
end</span> <span class=3D"m_-4625696911095322983SpellE">of</span> <span cla=
ss=3D"m_-4625696911095322983SpellE">the</span> <span class=3D"m_-4625696911=
095322983SpellE">
file</span>, <span class=3D"m_-4625696911095322983SpellE">which</span> <spa=
n class=3D"m_-4625696911095322983SpellE">looks</span><u></u><u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">a
<span class=3D"m_-4625696911095322983SpellE">little</span> <span class=3D"m=
_-4625696911095322983SpellE">bit</span> <span class=3D"m_-46256969110953229=
83SpellE">
strange</span> <span class=3D"m_-4625696911095322983SpellE">for</span> <spa=
n class=3D"m_-4625696911095322983SpellE">us</span>. I <span class=3D"m_-462=
5696911095322983SpellE">
understand</span> Alexander, <span class=3D"m_-4625696911095322983SpellE">s=
aying</span> <span class=3D"m_-4625696911095322983SpellE">
it</span> must <span class=3D"m_-4625696911095322983SpellE">look</span> <sp=
an class=3D"m_-4625696911095322983SpellE">good</span><u></u><u></u></span><=
/p>
<p class=3D"MsoNormal"><span class=3D"m_-4625696911095322983SpellE"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#=
1f497d">to</span></span><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,sans-serif;color:#1f497d">
<span class=3D"m_-4625696911095322983SpellE">the</span> <span class=3D"m_-4=
625696911095322983SpellE">tools</span> not <span class=3D"m_-46256969110953=
22983SpellE">
for</span> human <span class=3D"m_-4625696911095322983SpellE">eyes</span>, =
but <span class=3D"m_-4625696911095322983SpellE">maybe</span>
<span class=3D"m_-4625696911095322983SpellE">the</span> <span class=3D"m_-4=
625696911095322983SpellE">truth</span> lies in <span class=3D"m_-4625696911=
095322983SpellE">
between</span>.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span class=3D"m_-4625696911095322983SpellE"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#=
1f497d">Maybe</span></span><span style=3D"font-size:11.0pt;font-family:&quo=
t;Calibri&quot;,sans-serif;color:#1f497d">,
<span class=3D"m_-4625696911095322983SpellE">or</span> <span class=3D"m_-46=
25696911095322983SpellE">hopefully</span> <span class=3D"m_-462569691109532=
2983SpellE">
the</span> <span class=3D"m_-4625696911095322983SpellE">maintainers</span> =
<span class=3D"m_-4625696911095322983SpellE">of</span>
<span class=3D"m_-4625696911095322983SpellE">the</span> YP will <span class=
=3D"m_-4625696911095322983SpellE">maintain</span> <span class=3D"m_-4625696=
911095322983SpellE">
and</span> update</span></p></div></div></blockquote><div dir=3D"auto"><br>=
</div><div dir=3D"auto">This is an open source community project, so as an =
interested user, you count as a maintainer :)</div><div dir=3D"auto"><br></=
div><div dir=3D"auto">I say this because it would be great if you used this=
 valuable time and energy you have spent to help the next person. Your obse=
rvations are excellent and should be captured.</div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex"><div lang=3D"DE" link=3D"blue" vlink=3D"purple"><div class=3D"m_-46=
25696911095322983WordSection1"><p class=3D"MsoNormal" dir=3D"auto"><span st=
yle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1=
f497d"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span class=3D"m_-4625696911095322983SpellE"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#=
1f497d">the</span></span><span style=3D"font-size:11.0pt;font-family:&quot;=
Calibri&quot;,sans-serif;color:#1f497d">
<span class=3D"m_-4625696911095322983SpellE">styleguide</span> (in <span cl=
ass=3D"m_-4625696911095322983SpellE">my</span> <span class=3D"m_-4625696911=
095322983SpellE">
opinion</span> <span class=3D"m_-4625696911095322983SpellE">the</span> <spa=
n class=3D"m_-4625696911095322983SpellE">canonical</span>
<span class=3D"m_-4625696911095322983SpellE">reference</span>) <span class=
=3D"m_-4625696911095322983SpellE">and</span> <span class=3D"m_-462569691109=
5322983SpellE">
adapt</span> <span class=3D"m_-4625696911095322983SpellE">the</span> <span =
class=3D"m_-4625696911095322983SpellE">tools</span><u></u><u></u></span></p=
>
<p class=3D"MsoNormal"><span class=3D"m_-4625696911095322983SpellE"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#=
1f497d">to</span></span><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,sans-serif;color:#1f497d">
<span class=3D"m_-4625696911095322983SpellE">minimize</span> <span class=3D=
"m_-4625696911095322983SpellE">the</span> <span class=3D"m_-462569691109532=
2983SpellE">
gap</span> <span class=3D"m_-4625696911095322983SpellE">between</span> <spa=
n class=3D"m_-4625696911095322983SpellE">specifications</span>.</span></p><=
/div></div></blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div lang=3D"DE" lin=
k=3D"blue" vlink=3D"purple"><div class=3D"m_-4625696911095322983WordSection=
1"><p class=3D"MsoNormal" dir=3D"auto"><span style=3D"font-size:11.0pt;font=
-family:&quot;Calibri&quot;,sans-serif;color:#1f497d"><u></u><u></u></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">As
<span class=3D"m_-4625696911095322983SpellE">formerly</span> <span class=3D=
"m_-4625696911095322983SpellE">stated</span>, <span class=3D"m_-46256969110=
95322983SpellE">
this</span> <span class=3D"m_-4625696911095322983SpellE">may</span> <span c=
lass=3D"m_-4625696911095322983SpellE">reduce</span> <span class=3D"m_-46256=
96911095322983SpellE">
discussions</span> <span class=3D"m_-4625696911095322983SpellE">and</span> =
<span class=3D"m_-4625696911095322983SpellE">overhead</span>
<span class=3D"m_-4625696911095322983SpellE">when</span><u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span class=3D"m_-4625696911095322983SpellE"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#=
1f497d">contributing</span></span><span style=3D"font-size:11.0pt;font-fami=
ly:&quot;Calibri&quot;,sans-serif;color:#1f497d">
<span class=3D"m_-4625696911095322983SpellE">to</span> <span class=3D"m_-46=
25696911095322983SpellE">the</span> YP <span class=3D"m_-462569691109532298=
3SpellE">
relating</span> <span class=3D"m_-4625696911095322983SpellE">to</span> <spa=
n class=3D"m_-4625696911095322983SpellE">recipes</span>.<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">Carsten<u></u><u></u></span></p></div=
></div><div lang=3D"DE" link=3D"blue" vlink=3D"purple"><div class=3D"m_-462=
5696911095322983WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">Von:</span></b><span style=3D"font-size:11.0pt;f=
ont-family:&quot;Calibri&quot;,sans-serif"> Martin
 Jansa &lt;<a href=3D"mailto:martin.jansa@gmail.com" target=3D"_blank">mart=
in.jansa@gmail.com</a>&gt; <br>
<b>Gesendet:</b> Montag, 13. M=C3=A4rz 2023 19:00<br>
<b>An:</b> Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" =
target=3D"_blank">alex.kanavin@gmail.com</a>&gt;<br>
<b>Cc:</b> embedded (VIVAVIS AG) &lt;<a href=3D"mailto:embedded@vivavis.com=
" target=3D"_blank">embedded@vivavis.com</a>&gt;; <a href=3D"mailto:yocto@l=
ists.yoctoproject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a><b=
r>
<b>Betreff:</b> Re: [yocto] State of Yocto styleguide and oe-stylize.py scr=
ipt<u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Mon, Mar 13, 2023 at 6:34=E2=80=AFPM Alexander Ka=
navin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.=
kanavin@gmail.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<div>
<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm">
<p class=3D"MsoNormal">There is not a lot of interest in maintaining style =
guides, and<br>
associated tooling. My personal feeling is that they don&#39;t really help<=
br>
with the truly problematic things in recipes that need a human eye (or<br>
chatgpt level intelligence :) - by and large people do follow<br>
reasonable order of entries for example, and nitpicking on an exact<br>
order would just be wasting precious maintainer time.<u></u><u></u></p>
</blockquote>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I agree that there are other more important things, =
but I also like style (only in code - human looks are overrated :)).<u></u>=
<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">If the tool is executed locally before sending the c=
ontribution (and Carsten does seem interested in doing just that - not aski=
ng Khem to run it on incoming patches) then I believe it can save maintaine=
rs time by sending better patches
 on first try not waste it and our styleguide really needs some TLC as Cars=
ten found out.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">The same does apply to e.g.=C2=A0scripts/contrib/pat=
chreview.py.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">If the missing/malformed Upstream-Status is reported=
 to the original contributor before he/she/it sends the patch, by some at l=
east well documented work flow how to submit patches, then it saves more ma=
intainer time, than asking for it
 during e-mail review or worse after the change is merged or built by maint=
ainer and QA check reports it&#39;s missing or malformed.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">If someone is willing to help with the tooling, we s=
hould endorse that, not discourage them even when there are bigger-greater =
goals like=C2=A0yocto-check-layer script you mentioned.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Cheers,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">If you want to ensure=
 good quality, making your layer pass the yocto<br>
compatibility script, and ensuring there are no warnings of any kind<br>
from bitbake when built with latest master revisions of everything is<br>
a better first step in my opinion.<br>
<br>
Alex<br>
<br>
On Mon, 13 Mar 2023 at 15:20, VIVAVIS AG via <a href=3D"http://atpscan.glob=
al.hornetsecurity.com/index.php?atp_str=3D6ii-lFB9x9qquaocUdwq3KPDfo4Ve-R9P=
7eR1RKQNoX0PPCb3_6yhFGC3x1GwZole7KBAvT-xxm_pGgLpG845IRXpTidBDAwEBQPD0x1b9Wv=
bYpe4wJDh9rF3J5hWsTF-vhrwi4K0NOlANabME2YpC0J56gr8jh5aobqidN7LZ3W0kK7aL0Z77n=
IwfLTXeCe3DDEwwHpEQEm4E24jDBcBjPn0lR1licMMlOMuN0Ku2UJWuY5EZKYj2MDhWPES4ORfG=
QwTBKJ2_2SQbNCp3HiqKXuKLNA0uZZjDSnSSM6OiPSxJs_FTatAw_qwRMjOjojnNbHc4NY9ija7=
K0-XewMfA" title=3D"http://lists.yoctoproject.org" target=3D"_blank">
lists.yoctoproject.org</a><br>
&lt;embedded=3D<a href=3D"mailto:vivavis.com@lists.yoctoproject.org" target=
=3D"_blank">vivavis.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; I&#39;m wondering whether the styleguide <a href=3D"http://atpscan.glo=
bal.hornetsecurity.com/index.php?atp_str=3DiIIqKiBtWyLK_Z31_K3uvMZBrXb_PFR2=
od9-FtXKXz0RMKEw5ucbEAeGpGronR5UoCkmMUNPDZPduCLN_Vls4-Q0YnC6_L0lK97-bh_8QIu=
0wG0kBftp7nxSdc2LDqs-ozpYL075CxoglKgEi_TnHSDIzWL8eNhFmR_miaWimb3E36UKxgJ6gC=
P7ksibOI0OBY2xn1BVElTVgJIPnB8cl2tUoif82pqqfLdtjn4PJPbitDP7HoboaHzVlcG-2DiPo=
9YxhYRcE9YQNsNJZ0ulKd9OnTTyIftKKOOkgcYTV9AUa5gQwkk1rFoFIzo6I0vpagG38uAaDiMM=
ySM6OiM4QIzYwtTY-Kax_baGBvUa" title=3D"http://www.openembedded.org/wiki/Sty=
leguide" target=3D"_blank">
www.openembedded.org/wiki/Styleguide</a>,<br>
&gt; meta-openembedded/contrib/oe-stylize.py or none of them is the source =
of<br>
&gt; truth for writing a good recipe.<br>
&gt;<br>
&gt; E.g., if you run oe-stylize.py, the SRCREV variable is placed above SR=
C_URI,<br>
&gt; or RDEPENDS is placed above FILES, which is not what the Wiki document=
s.<br>
&gt; And there are more discrepancies of this type.<br>
&gt;<br>
&gt; Furthermore, the script doesn&#39;t know the FILESEXTRAPATHS variable =
in bbappend files<br>
&gt; and moves it to the end of my recipe. Well, this is not decribed in th=
e Wiki, but a look<br>
&gt; into append files in meta-openembedded shows, that it is common pactic=
e to put<br>
&gt; FILESEXTRAPATHS in the first line of the recipe.<br>
&gt;<br>
&gt; The Wiki has an interesting note and the end: &quot;You can run contri=
b/oe-stylize.py from<br>
&gt; meta-oe on your recipes before submitting them; however it is not nece=
ssarily up-to-date<br>
&gt; with all current style conventions. This page should be considered the=
 canonical reference.&quot;<br>
&gt;<br>
&gt; Furthermore, there&#39;s <a href=3D"http://github.com/openembedded/met=
a-openembedded/pull/465" target=3D"_blank">
github.com/openembedded/meta-openembedded/pull/465</a><br>
&gt; providing another ruleset for the new linter.<br>
&gt;<br>
&gt; So, my question to the Yocto maintainers is, what is the current state=
 of the styleguide<br>
&gt; and oe-stylize.py? Are there plans to synchronize them?<br>
&gt;<br>
&gt; Thanks for clarification.<br>
&gt;<br>
&gt; Carsten Stelling<br>
&gt;<br>
&gt; <br>
&gt;<br>
<br>
<u></u><u></u></p>
</blockquote>
</div>
</div>
</div></div><div lang=3D"DE" link=3D"blue" vlink=3D"purple"><div class=3D"m=
_-4625696911095322983WordSection1"></div>
</div>

<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#59447): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59447" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/59447</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/97581374/9247=
29" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt/=
97581374/924729</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000fbb88905f71f7655--

