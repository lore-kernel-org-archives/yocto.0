Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
 by mx.groups.io with SMTP id smtpd.web08.9330.1632129812227327672
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Sep 2021 02:23:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=AVg2Ugf2;
 spf=pass (domain: gmail.com, ip: 209.85.217.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f49.google.com with SMTP id z62so15885311vsz.9
        for <yocto@lists.yoctoproject.org>; Mon, 20 Sep 2021 02:23:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=v/OH0Lyw36SxTyUIg+e2XDP2RYPanJInl/a8aov9Uc4=;
        b=AVg2Ugf2/WnZ015NJWSFCn5Tf4OhweAyi2Z1HyKep+XyI0LtiTpDumavS3bMCxAipD
         s4JVozx6e7ZjvusREycR7YceL9Eo/LHkZv8tdzClM4p1TKwcbHYlACbd6ow1+gZWfLdi
         NFHvLgEufFh99yiLxmwv1g7oMGJDhHIFjNsDdSeu4DYjPHACTlDgKuZcPz9bH9IM8cu8
         pDGAbp2AVHtxE3ObrrL43HSdEhikvwiw+InuwranZ4dO2BCCfJ1T1rcgtJ0VdI1Uk10M
         gm27uqUrPFIBWDDRxfYmgFNdcWI4KJdsMS5sHUDiSptNX1klQ5r+fzfJhpmcJ3hIX+xo
         QBgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=v/OH0Lyw36SxTyUIg+e2XDP2RYPanJInl/a8aov9Uc4=;
        b=1HfaWssxvbCxLSFCaLw3XoUOBwh2Lb3DE01pKZUd9E7yW463UrEp+TWyqiOTtNH58X
         n+HuChemFe92P5OwwajJSYIt0wlmzjWcVY1TGhGykGdWIgRpwKW1mOVf1MywQR2RgaQG
         oxbHjXPUb1vQrI7mZcE1g2cB5CvKkJwwPxDJ+L0VN5mLUHeWg03gdjmJh9ItofKkZTrq
         DSJxhyHceKGkmwP0padaFQKLJaBcEYHkvQOJkncRNx/u+DKod0bqHMZHm4A920Uz5Huk
         7yCwjmkw8/8DBouyO9xPOZTNr31bQpdMTg0VRDJPa6VrqgZHT2UtNOd65aKYYzBSF1XU
         W0RQ==
X-Gm-Message-State: AOAM533/95JP0gpG1BJWHSkNkurXxEbjnmW+lL2Ie81c1lkUrkjebUy+
	lIo0pJQmIyZCV0vxqDetw3MojZTWUqfWlrmIIaQ=
X-Google-Smtp-Source: ABdhPJwA4nnmstc27TRdKT9zq7F8G4T28L+nggJRp6C8ul5TnkH7tGgBElDaFQzrmkCHb+ZU6VkH/WLMsGdqHoNI/9c=
X-Received: by 2002:a67:d919:: with SMTP id t25mr15293653vsj.7.1632129811414;
 Mon, 20 Sep 2021 02:23:31 -0700 (PDT)
MIME-Version: 1.0
References: <20210817123812.18075-1-lukma@denx.de> <20210817123812.18075-2-lukma@denx.de>
 <20210827124350.71c00d33@ktm> <20210920111852.174eff07@ktm>
In-Reply-To: <20210920111852.174eff07@ktm>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Mon, 20 Sep 2021 11:23:20 +0200
Message-ID: <CANNYZj8hGOPSa+zAKRSqGmMoEsueb4zB6yNPT7GPnc4Pe-Q+UQ@mail.gmail.com>
Subject: Re: [yocto] [PATCH v2 ptest-runner 2/2] main: Do not return number of failed tests when calling ptest-runner
To: "?ukasz Majewski" <lukma@denx.de>
Cc: Anibal Limon <anibal.limon@linaro.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	Adrian Freihofer <adrian.freihofer@siemens.com>
Content-Type: multipart/alternative; boundary="000000000000a3002105cc69d5e3"

--000000000000a3002105cc69d5e3
Content-Type: text/plain; charset="UTF-8"

I think we might be having an 'unresponsive maintainer' situation? How can
Anibal be reached?

Alex

On Mon, 20 Sept 2021 at 11:19, ?ukasz Majewski <lukma@denx.de> wrote:

> Hi Anibal,
>
> > Hi Anibal,
> >
> > > Up till now ptest-runner2 returns number of failed tests with its
> > > exit status code. Such use case is not recommended [1] and may cause
> > > issues when there are more than 256 tests to be executed.
> > >
> > > To alleviate this issue the number of total tests with number of
> > > failed ones is printed before exit. To be more specific - failure of
> > > tests (one or more) causes ptest-runner to provide exit code of 1.
> > >
> > > One can test this change with executing:
> > > ./ptest-runner -d tests/data fail
> >
> > Gentle ping on this patch.
> >
>
> Gentle ping on this patch.
>
> Is it OK to be applied?
>
> > >
> > > Links:
> > > [1] -
> > > https://www.gnu.org/software/libc/manual/html_node/Exit-Status.html
> > >
> > > Signed-off-by: Lukasz Majewski <lukma@denx.de>
> > > ---
> > > Changes for v2:
> > > - When number of failed tests is N, the ptest-runner returns value
> > > of 1 to indicate error in the execution
> > > ---
> > >  main.c | 3 +++
> > >  1 file changed, 3 insertions(+)
> > >
> > > diff --git a/main.c b/main.c
> > > index 890bc6a..bcec844 100644
> > > --- a/main.c
> > > +++ b/main.c
> > > @@ -220,6 +220,9 @@ main(int argc, char *argv[])
> > >             ptest_list_remove(run, opts.exclude[i], 1);
> > >
> > >     rc = run_ptests(run, opts, argv[0], stdout, stderr);
> > > +   fprintf(stdout, "TOTAL: %d FAIL: %d\n",
> > > ptest_list_length(run), rc);
> > > +   if (rc > 0)
> > > +           rc = 1;
> > >
> > >     ptest_list_free_all(&run);
> > >
> >
> >
> >
> >
> > Best regards,
> >
> > Lukasz Majewski
> >
> > --
> >
> > DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
> > HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> > Phone: (+49)-8142-66989-59 Fax: (+49)-8142-66989-80 Email:
> > lukma@denx.de
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
> 
>
>

--000000000000a3002105cc69d5e3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I think we might be having an &#39;unresponsive maint=
ainer&#39; situation? How can Anibal be reached?</div><div><br></div><div>A=
lex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Mon, 20 Sept 2021 at 11:19, ?ukasz Majewski &lt;<a href=3D"=
mailto:lukma@denx.de">lukma@denx.de</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">Hi Anibal,<br>
<br>
&gt; Hi Anibal,<br>
&gt; <br>
&gt; &gt; Up till now ptest-runner2 returns number of failed tests with its=
<br>
&gt; &gt; exit status code. Such use case is not recommended [1] and may ca=
use<br>
&gt; &gt; issues when there are more than 256 tests to be executed.<br>
&gt; &gt; <br>
&gt; &gt; To alleviate this issue the number of total tests with number of<=
br>
&gt; &gt; failed ones is printed before exit. To be more specific - failure=
 of<br>
&gt; &gt; tests (one or more) causes ptest-runner to provide exit code of 1=
.<br>
&gt; &gt; <br>
&gt; &gt; One can test this change with executing:<br>
&gt; &gt; ./ptest-runner -d tests/data fail=C2=A0 <br>
&gt; <br>
&gt; Gentle ping on this patch.<br>
&gt; <br>
<br>
Gentle ping on this patch.<br>
<br>
Is it OK to be applied?<br>
<br>
&gt; &gt; <br>
&gt; &gt; Links:<br>
&gt; &gt; [1] -<br>
&gt; &gt; <a href=3D"https://www.gnu.org/software/libc/manual/html_node/Exi=
t-Status.html" rel=3D"noreferrer" target=3D"_blank">https://www.gnu.org/sof=
tware/libc/manual/html_node/Exit-Status.html</a><br>
&gt; &gt; <br>
&gt; &gt; Signed-off-by: Lukasz Majewski &lt;<a href=3D"mailto:lukma@denx.d=
e" target=3D"_blank">lukma@denx.de</a>&gt;<br>
&gt; &gt; ---<br>
&gt; &gt; Changes for v2:<br>
&gt; &gt; - When number of failed tests is N, the ptest-runner returns valu=
e<br>
&gt; &gt; of 1 to indicate error in the execution<br>
&gt; &gt; ---<br>
&gt; &gt;=C2=A0 main.c | 3 +++<br>
&gt; &gt;=C2=A0 1 file changed, 3 insertions(+)<br>
&gt; &gt; <br>
&gt; &gt; diff --git a/main.c b/main.c<br>
&gt; &gt; index 890bc6a..bcec844 100644<br>
&gt; &gt; --- a/main.c<br>
&gt; &gt; +++ b/main.c<br>
&gt; &gt; @@ -220,6 +220,9 @@ main(int argc, char *argv[])<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_remove(=
run, opts.exclude[i], 1);<br>
&gt; &gt;=C2=A0 <br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0rc =3D run_ptests(run, opts, argv[0], stdout, =
stderr);<br>
&gt; &gt; +=C2=A0 =C2=A0fprintf(stdout, &quot;TOTAL: %d FAIL: %d\n&quot;,<b=
r>
&gt; &gt; ptest_list_length(run), rc);<br>
&gt; &gt; +=C2=A0 =C2=A0if (rc &gt; 0)<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rc =3D 1;<br>
&gt; &gt;=C2=A0 <br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0ptest_list_free_all(&amp;run);<br>
&gt; &gt;=C2=A0 =C2=A0 <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; Best regards,<br>
&gt; <br>
&gt; Lukasz Majewski<br>
&gt; <br>
&gt; --<br>
&gt; <br>
&gt; DENX Software Engineering GmbH,=C2=A0 =C2=A0 =C2=A0 Managing Director:=
 Wolfgang Denk<br>
&gt; HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany<=
br>
&gt; Phone: (+49)-8142-66989-59 Fax: (+49)-8142-66989-80 Email:<br>
&gt; <a href=3D"mailto:lukma@denx.de" target=3D"_blank">lukma@denx.de</a><b=
r>
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
<br>
<br>
<br>
</blockquote></div>

--000000000000a3002105cc69d5e3--
