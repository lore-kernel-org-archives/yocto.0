Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4834DC433F5
	for <webhook@archiver.kernel.org>; Mon, 27 Sep 2021 08:35:51 +0000 (UTC)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com
 [209.85.217.45])
 by mx.groups.io with SMTP id smtpd.web09.28473.1632731750433532192
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Sep 2021 01:35:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=qsC7THFG;
 spf=pass (domain: gmail.com, ip: 209.85.217.45,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f45.google.com with SMTP id 66so13236360vsd.11
        for <yocto@lists.yoctoproject.org>;
 Mon, 27 Sep 2021 01:35:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yq2LBeM01gailTyB6PT+TQxX9CDMJHJXIB9DaWQEzJg=;
        b=qsC7THFGh9+rC17lhPHbpgcS2Hvbc1CXZRBmyKpEhruI61Rhkm/gUG8FTZEGBeQW1+
         5opoMehKDPgsShyRT579cJBxOUZtBLXJxsCr0bh9IeOBplsECR24+Z17M2uKYAjxdEKW
         AzozhGy1ukwZ1f4bzoHfeJdALEY/v4QxrU5gAvjcYLg18Kivsk33QjpbWWyBEURLMPAW
         nJ/7kXTx2Zy4n5X3PmHa/i4oOT21YJyytx0y2eQrkZj0KS/Bw8H8vT+vDB/+6GKKE435
         SNkViWoFtn0pJ/cR7qsYgLGuZcnVIfJHL82Cum/Rxn7IJjF4wUOaJtp1J1ebk4JcNsF2
         PZxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yq2LBeM01gailTyB6PT+TQxX9CDMJHJXIB9DaWQEzJg=;
        b=RbTw4IT3sIPGltiwk2u8pE41E/96qiPFTOHmM5waTKc7LtvRXMeEGKG1FAc9qjikWn
         qEIwNZOpZBRMcYU2hNQ5GyFxRPbdwUol5Edg8FXMhHb4GuAzyBzr4igSW+ZVny6Jg1kA
         xsMJM7GsxUNtVAtyXXH6svfQnme2bgWC6gChakTOcfVc7YNaNwWKQxr0HBRR1HBucK21
         9zRvQxGZbI0Q0nnbLdAxBmtjdRKcq+2vSbNIEfZBuW/n4qb1OdclDKRNJ8RP5DDF+F2B
         9WvbrBClsbLIDPcWowpWUGT9Uk+OqrInRWm1eqdaoyEzTzLKalFyvJ0CPutbsXQkXwL9
         zHnA==
X-Gm-Message-State: AOAM533+5hp96JcTCMYwfcBWvOxS5HCuNImLTRIY6iQWuvYov6Qco64I
	DmG+t1aydGxtOvmYdlIRz/sAqf9wgy7RO+2zGMU=
X-Google-Smtp-Source: 
 ABdhPJyD7B/JTmsY1CFmYwDttlsdDHxju7FXO7Sj2cladcw4CU7qyFXoj4Fl1d7MOpp+eOIx1dG7WGWokq5PKDmFO5Y=
X-Received: by 2002:a67:5cc1:: with SMTP id
 q184mr16694740vsb.13.1632731749419;
 Mon, 27 Sep 2021 01:35:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210817123812.18075-1-lukma@denx.de>
 <20210817123812.18075-2-lukma@denx.de>
 <20210827124350.71c00d33@ktm> <20210920111852.174eff07@ktm>
 <CANNYZj8hGOPSa+zAKRSqGmMoEsueb4zB6yNPT7GPnc4Pe-Q+UQ@mail.gmail.com>
 <20210927100901.1ba0b8fb@ktm>
In-Reply-To: <20210927100901.1ba0b8fb@ktm>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 27 Sep 2021 10:35:37 +0200
Message-ID: 
 <CANNYZj-=-DGpn8LyKgnN59tzaEq945yJEUteDgeAPjDzC=tTNQ@mail.gmail.com>
Subject: Re: [yocto] [PATCH v2 ptest-runner 2/2] main: Do not return number of
 failed tests when calling ptest-runner
To: Lukasz Majewski <lukma@denx.de>
Cc: Anibal Limon <anibal.limon@linaro.org>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	Adrian Freihofer <adrian.freihofer@siemens.com>
Content-Type: multipart/alternative; boundary="000000000000f00e0005ccf5fbef"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Sep 2021 08:35:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54873

--000000000000f00e0005ccf5fbef
Content-Type: text/plain; charset="UTF-8"

I think they're already in git?

Alex

On Mon, 27 Sept 2021 at 10:09, Lukasz Majewski <lukma@denx.de> wrote:

> Hi Alexander,
>
> > I think we might be having an 'unresponsive maintainer' situation?
> > How can Anibal be reached?
>
> I saw recenlty your patches on this topic. Is there a chance that
> Anibal will pull/review them soon?
>
> It looks like those are crucial for ptest-runner operation.
>
> >
> > Alex
> >
> > On Mon, 20 Sept 2021 at 11:19, ?ukasz Majewski <lukma@denx.de> wrote:
> >
> > > Hi Anibal,
> > >
> > > > Hi Anibal,
> > > >
> > > > > Up till now ptest-runner2 returns number of failed tests with
> > > > > its exit status code. Such use case is not recommended [1] and
> > > > > may cause issues when there are more than 256 tests to be
> > > > > executed.
> > > > >
> > > > > To alleviate this issue the number of total tests with number of
> > > > > failed ones is printed before exit. To be more specific -
> > > > > failure of tests (one or more) causes ptest-runner to provide
> > > > > exit code of 1.
> > > > >
> > > > > One can test this change with executing:
> > > > > ./ptest-runner -d tests/data fail
> > > >
> > > > Gentle ping on this patch.
> > > >
> > >
> > > Gentle ping on this patch.
> > >
> > > Is it OK to be applied?
> > >
> > > > >
> > > > > Links:
> > > > > [1] -
> > > > >
> https://www.gnu.org/software/libc/manual/html_node/Exit-Status.html
> > > > >
> > > > > Signed-off-by: Lukasz Majewski <lukma@denx.de>
> > > > > ---
> > > > > Changes for v2:
> > > > > - When number of failed tests is N, the ptest-runner returns
> > > > > value of 1 to indicate error in the execution
> > > > > ---
> > > > >  main.c | 3 +++
> > > > >  1 file changed, 3 insertions(+)
> > > > >
> > > > > diff --git a/main.c b/main.c
> > > > > index 890bc6a..bcec844 100644
> > > > > --- a/main.c
> > > > > +++ b/main.c
> > > > > @@ -220,6 +220,9 @@ main(int argc, char *argv[])
> > > > >             ptest_list_remove(run, opts.exclude[i], 1);
> > > > >
> > > > >     rc = run_ptests(run, opts, argv[0], stdout, stderr);
> > > > > +   fprintf(stdout, "TOTAL: %d FAIL: %d\n",
> > > > > ptest_list_length(run), rc);
> > > > > +   if (rc > 0)
> > > > > +           rc = 1;
> > > > >
> > > > >     ptest_list_free_all(&run);
> > > > >
> > > >
> > > >
> > > >
> > > >
> > > > Best regards,
> > > >
> > > > Lukasz Majewski
> > > >
> > > > --
> > > >
> > > > DENX Software Engineering GmbH,      Managing Director: Wolfgang
> > > > Denk HRB 165235 Munich, Office: Kirchenstr.5, D-82194
> > > > Groebenzell, Germany Phone: (+49)-8142-66989-59 Fax:
> > > > (+49)-8142-66989-80 Email: lukma@denx.de
> > >
> > >
> > >
> > >
> > > Best regards,
> > >
> > > Lukasz Majewski
> > >
> > > --
> > >
> > > DENX Software Engineering GmbH,      Managing Director: Wolfgang
> > > Denk HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell,
> > > Germany Phone: (+49)-8142-66989-59 Fax: (+49)-8142-66989-80 Email:
> > > lukma@denx.de
> > >
> > > -=-=-=-=-=-=-=-=-=-=-=-
> > > Links: You receive all messages sent to this group.
> > > View/Reply Online (#54769):
> > > https://lists.yoctoproject.org/g/yocto/message/54769
> > > Mute This Topic: https://lists.yoctoproject.org/mt/84946492/1686489
> > > Group Owner: yocto+owner@lists.yoctoproject.org
> > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> > > alex.kanavin@gmail.com]
> > > -=-=-=-=-=-=-=-=-=-=-=-
> > >
> > >
>
>
>
>
> Best regards,
>
> Lukasz Majewski
>
> --
>
> DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> Phone: (+49)-8142-66989-59 Fax: (+49)-8142-66989-80 Email: lukma@denx.de
>

--000000000000f00e0005ccf5fbef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I think they&#39;re already in git?</div><div><br></d=
iv><div>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Mon, 27 Sept 2021 at 10:09, Lukasz Majewski &lt;<a=
 href=3D"mailto:lukma@denx.de">lukma@denx.de</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">Hi Alexander,<br>
<br>
&gt; I think we might be having an &#39;unresponsive maintainer&#39; situat=
ion?<br>
&gt; How can Anibal be reached?<br>
<br>
I saw recenlty your patches on this topic. Is there a chance that<br>
Anibal will pull/review them soon?<br>
<br>
It looks like those are crucial for ptest-runner operation.<br>
<br>
&gt; <br>
&gt; Alex<br>
&gt; <br>
&gt; On Mon, 20 Sept 2021 at 11:19, ?ukasz Majewski &lt;<a href=3D"mailto:l=
ukma@denx.de" target=3D"_blank">lukma@denx.de</a>&gt; wrote:<br>
&gt; <br>
&gt; &gt; Hi Anibal,<br>
&gt; &gt;=C2=A0 <br>
&gt; &gt; &gt; Hi Anibal,<br>
&gt; &gt; &gt;=C2=A0 <br>
&gt; &gt; &gt; &gt; Up till now ptest-runner2 returns number of failed test=
s with<br>
&gt; &gt; &gt; &gt; its exit status code. Such use case is not recommended =
[1] and<br>
&gt; &gt; &gt; &gt; may cause issues when there are more than 256 tests to =
be<br>
&gt; &gt; &gt; &gt; executed.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; To alleviate this issue the number of total tests with =
number of<br>
&gt; &gt; &gt; &gt; failed ones is printed before exit. To be more specific=
 -<br>
&gt; &gt; &gt; &gt; failure of tests (one or more) causes ptest-runner to p=
rovide<br>
&gt; &gt; &gt; &gt; exit code of 1.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; One can test this change with executing:<br>
&gt; &gt; &gt; &gt; ./ptest-runner -d tests/data fail=C2=A0 <br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Gentle ping on this patch.<br>
&gt; &gt; &gt;=C2=A0 <br>
&gt; &gt;<br>
&gt; &gt; Gentle ping on this patch.<br>
&gt; &gt;<br>
&gt; &gt; Is it OK to be applied?<br>
&gt; &gt;=C2=A0 <br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Links:<br>
&gt; &gt; &gt; &gt; [1] -<br>
&gt; &gt; &gt; &gt; <a href=3D"https://www.gnu.org/software/libc/manual/htm=
l_node/Exit-Status.html" rel=3D"noreferrer" target=3D"_blank">https://www.g=
nu.org/software/libc/manual/html_node/Exit-Status.html</a><br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Signed-off-by: Lukasz Majewski &lt;<a href=3D"mailto:lu=
kma@denx.de" target=3D"_blank">lukma@denx.de</a>&gt;<br>
&gt; &gt; &gt; &gt; ---<br>
&gt; &gt; &gt; &gt; Changes for v2:<br>
&gt; &gt; &gt; &gt; - When number of failed tests is N, the ptest-runner re=
turns<br>
&gt; &gt; &gt; &gt; value of 1 to indicate error in the execution<br>
&gt; &gt; &gt; &gt; ---<br>
&gt; &gt; &gt; &gt;=C2=A0 main.c | 3 +++<br>
&gt; &gt; &gt; &gt;=C2=A0 1 file changed, 3 insertions(+)<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; diff --git a/main.c b/main.c<br>
&gt; &gt; &gt; &gt; index 890bc6a..bcec844 100644<br>
&gt; &gt; &gt; &gt; --- a/main.c<br>
&gt; &gt; &gt; &gt; +++ b/main.c<br>
&gt; &gt; &gt; &gt; @@ -220,6 +220,9 @@ main(int argc, char *argv[])<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_li=
st_remove(run, opts.exclude[i], 1);<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0rc =3D run_ptests(run, opts, argv[0]=
, stdout, stderr);<br>
&gt; &gt; &gt; &gt; +=C2=A0 =C2=A0fprintf(stdout, &quot;TOTAL: %d FAIL: %d\=
n&quot;,<br>
&gt; &gt; &gt; &gt; ptest_list_length(run), rc);<br>
&gt; &gt; &gt; &gt; +=C2=A0 =C2=A0if (rc &gt; 0)<br>
&gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rc =3D 1;<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0ptest_list_free_all(&amp;run);<br>
&gt; &gt; &gt; &gt;=C2=A0 <br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Best regards,<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Lukasz Majewski<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; --<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; DENX Software Engineering GmbH,=C2=A0 =C2=A0 =C2=A0 Managing=
 Director: Wolfgang<br>
&gt; &gt; &gt; Denk HRB 165235 Munich, Office: Kirchenstr.5, D-82194<br>
&gt; &gt; &gt; Groebenzell, Germany Phone: (+49)-8142-66989-59 Fax:<br>
&gt; &gt; &gt; (+49)-8142-66989-80 Email: <a href=3D"mailto:lukma@denx.de" =
target=3D"_blank">lukma@denx.de</a>=C2=A0 <br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Best regards,<br>
&gt; &gt;<br>
&gt; &gt; Lukasz Majewski<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt;<br>
&gt; &gt; DENX Software Engineering GmbH,=C2=A0 =C2=A0 =C2=A0 Managing Dire=
ctor: Wolfgang<br>
&gt; &gt; Denk HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell=
,<br>
&gt; &gt; Germany Phone: (+49)-8142-66989-59 Fax: (+49)-8142-66989-80 Email=
:<br>
&gt; &gt; <a href=3D"mailto:lukma@denx.de" target=3D"_blank">lukma@denx.de<=
/a><br>
&gt; &gt;<br>
&gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; &gt; Links: You receive all messages sent to this group.<br>
&gt; &gt; View/Reply Online (#54769):<br>
&gt; &gt; <a href=3D"https://lists.yoctoproject.org/g/yocto/message/54769" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/message/54769</a><br>
&gt; &gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/849=
46492/1686489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproj=
ect.org/mt/84946492/1686489</a><br>
&gt; &gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.o=
rg" target=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; &gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/un=
sub" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/=
yocto/unsub</a> [<br>
&gt; &gt; <a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.=
kanavin@gmail.com</a>]<br>
&gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 <br>
<br>
<br>
<br>
<br>
Best regards,<br>
<br>
Lukasz Majewski<br>
<br>
--<br>
<br>
DENX Software Engineering GmbH,=C2=A0 =C2=A0 =C2=A0 Managing Director: Wolf=
gang Denk<br>
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany<br>
Phone: (+49)-8142-66989-59 Fax: (+49)-8142-66989-80 Email: <a href=3D"mailt=
o:lukma@denx.de" target=3D"_blank">lukma@denx.de</a><br>
</blockquote></div>

--000000000000f00e0005ccf5fbef--

