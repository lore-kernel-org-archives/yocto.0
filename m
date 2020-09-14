Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.69107.1600112885745161666
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Sep 2020 12:48:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=orzY6+yf;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: chuckwolber@gmail.com)
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 223AF38C084D
	for <yocto@yoctoproject.org>; Mon, 14 Sep 2020 12:48:05 -0700 (PDT)
Received: by mail-pj1-f43.google.com with SMTP id kk9so429303pjb.2
        for <yocto@yoctoproject.org>; Mon, 14 Sep 2020 12:48:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zQp/oXW44LI6sM/KCxQyslkT2P/WYdtr1qfE/f3RIOQ=;
        b=orzY6+yfLP1qlXqjn/DcjIcrTFIXlICIy3QB25SRocRemzlQBjAwZ4khM8BLIZwlEb
         tJVhpYAKXjR2FxJn/OaLD0E5mjlnliZk/HPEP/YHmppkP4GNvnJmaAxM/GlgrxL+LFhv
         HCfAHuJnYqQkuyvSGIWGYPYNX+3pyJD5PhWBcWV7aQVhaO37fRV80WBwhJdlesJiWUBA
         eDy5MXnF2xlrK94c0a6VUwG3R8Z51iYd0C94mehYSMzP6lru4PFbM2fKtXTi2NsDzeDN
         btl22Ft6qpXwLTMYjdrrzag58CsmFRLUpPmGyvDj62xYcuG8TNW1DbyuZbMdrKSs3ogk
         I85A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zQp/oXW44LI6sM/KCxQyslkT2P/WYdtr1qfE/f3RIOQ=;
        b=PufzJ8re2ldGFuPvzmGpo3KrgjdAo/BQdpxhlV3HEvvlD7PRPc81MHVIZGL492Riw2
         SWfpSAnd0el5tWLtoPjgm+qOD3QbPu7ufKAZLqrtEO2RfR2t7Hbv7+xgvk+q3CRnm2al
         RtvmhvhkU0LMb9doCDZQB9uV6GYMssMbOnQ4delOdzIPIUiBP47ppkLvxFPb6gZqJiML
         bEdKDyhiQH/PEZ3pkhNqg2VChVrwRd8aNVDuMRMOeOp2KQzs5puYoPQDi5b1AVwLVaQ0
         AEqyi9tdIN5M7vZWA97oeS0gC0YrzKnm1qWMGhu5SN31vBcKOkt3mo78VYfps4Y8fxpW
         TYvg==
X-Gm-Message-State: AOAM530MAdHy0viJvVYM9L/od6Oeuiztop06F1JmxJvrKBoLjDFCIqo0
	Hrf/14Fgd7S05bvrQXJQgh68LQ7hJa4ia183JGs=
X-Google-Smtp-Source: ABdhPJwbeNPx7PoQ1YN4ERZcJDtLmwACZQSdKCY07qFvGkeoPlWqnllOAK0Fy+5+tsX11NOb+Jl6Gn57oKpVCtUg0LA=
X-Received: by 2002:a17:902:bf43:: with SMTP id u3mr12061590pls.42.1600112884555;
 Mon, 14 Sep 2020 12:48:04 -0700 (PDT)
MIME-Version: 1.0
References: <8b4672f4a9ae48278785886362fc5bfe@sakuraus.com>
In-Reply-To: <8b4672f4a9ae48278785886362fc5bfe@sakuraus.com>
From: "Chuck Wolber" <chuckwolber@gmail.com>
Date: Mon, 14 Sep 2020 12:47:53 -0700
Message-ID: <CAB=6tBQUugFx=Zg7W+_i=_WbQ0fhqPv0TZO2ctaoJh+1T_dQUQ@mail.gmail.com>
Subject: Re: [yocto] Patching file contained in downloaded recipe
To: Greg Wilson-Lindberg <gwilson@sakuraus.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000015a3d505af4b5097"

--00000000000015a3d505af4b5097
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 14, 2020 at 10:50 AM Greg Wilson-Lindberg <gwilson@sakuraus.com=
>
wrote:

> I have a recipe that has a .service file in one of its files directories
> that I need to patch.
>
>
>
> I haven=E2=80=99t been able to figure out how to specify the directory of=
 the file
> that needs to be patched. I can=E2=80=99t seem to get the patch to apply =
to the
> files directory, do I need to specify the /lib/systemd/system directory
> into the PATCHDIR option or is there another way that would work better?
>

Are you patching an existing upstream recipe? Or your own recipe? In the
former case, you would use a .bbappend recipe.

In either case, it all depends on how the service file is generated. If it
is part of the source code, then you just create a patch against the source
tree and reference that patch in a recipe as a SRC_URI_append. If you
generate it as part of a build, then you would either patch the build
product (less desirable), or patch the code that generates the service file
(more desirable).

..Ch:W..

--=20
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--00000000000015a3d505af4b5097
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>On Mon, Sep 14, 2020 at 10:50 AM Gre=
g Wilson-Lindberg &lt;<a href=3D"mailto:gwilson@sakuraus.com">gwilson@sakur=
aus.com</a>&gt; wrote:<br></div></div><div class=3D"gmail_quote"><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_5789831879659032700WordSection1">
<p class=3D"MsoNormal">I have a recipe that has a .service file in one of i=
ts files directories that I need to patch.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I haven=E2=80=99t been able to figure out how to spe=
cify the directory of the file that needs to be patched. I can=E2=80=99t se=
em to get the patch to apply to the files directory, do I need to specify t=
he /lib/systemd/system directory into the PATCHDIR
 option or is there another way that would work better?<u></u><u></u></p>
</div></div></blockquote></div><div><br></div><div><div>Are you patching an=
 existing upstream recipe? Or your own recipe? In the former case, you woul=
d use a .bbappend recipe.<br></div><div><br></div><div>In either case, it a=
ll depends on how the service file is generated. If it is part of the sourc=
e code, then you just create a patch against the source tree and reference =
that patch in a recipe as a SRC_URI_append. If you generate it as part of a=
 build, then you would either patch the build product (less desirable), or =
patch the code that generates the service file (more desirable).</div><div>=
<br></div><div>..Ch:W..</div></div><div><br></div>-- <br><div dir=3D"ltr" c=
lass=3D"gmail_signature"><div dir=3D"ltr"><div><b><span style=3D"font-famil=
y:monospace">&quot;Perfection must be reached by degrees; she requires the =
slow hand of time.&quot; - Voltaire</span></b></div></div></div></div>

--00000000000015a3d505af4b5097--
