Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web10.6672.1592573199825779040
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Jun 2020 06:26:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=AfuSUxqa;
 spf=pass (domain: gmail.com, ip: 209.85.208.169, mailfrom: gabbla.malist@gmail.com)
Received: by mail-lj1-f169.google.com with SMTP id 9so11484539ljc.8
        for <yocto@lists.yoctoproject.org>; Fri, 19 Jun 2020 06:26:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SATift6FI/UQtLHEM9LGxxGbrK8bTbg/SQM90PTsMyU=;
        b=AfuSUxqaaf+4Foh71+K7tavecqvnqhrnCeBrngz9e89axkovyzjIGrKTh9/YZZ1JD6
         xo5waHrpkaNroyheHFPdfCBfGdUUZ79Z0OezMIBFecn5dQxuWAoZDYbGgx0I5MG9cUIx
         ivDsALYbPsT+oNuRJSwrBgZbF7gs7FDjfB+bUIwwoBmblyNrzziyQFCIMJW/Jp+yBMOn
         WY2GbcRcoiTiSy7WZCoeDYJhQMGolsPI1U6ssfOpx4vYbfXMIewKHKb9A7oNmKMkzPnc
         rldYVI2AeEB7A5Vbc0vwhjFZHUtFzOm0PXI5hrNlLQC0g7Jvqh9lFznoxkzGAeM6tzWy
         dUDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SATift6FI/UQtLHEM9LGxxGbrK8bTbg/SQM90PTsMyU=;
        b=l4qEILQyO5g8w9N7XpfGWezN0n5NcpfDoR3nU7MsjiaVpGI7Zf1VoA9V5E8O16hbA5
         IKCzjUbu2O8FEdGz1uBxRrTbTxmrDcqGNiX8iFTjbMGaLJMMbc/EahPZCbb4p3oHOQ94
         584TXRJOJ5x7ptSYrLnvKeDmNFNMRd6Hno3sWLl2ipyiiuaGlLiaWHK6x6Xel4PvWQOW
         3vx7akGU3h72UOU7xPErsu7TN+OFftpqHBn3fKqC4qj5nNGdOrj3qQnGrRJHOnddmFWz
         VO7mx5P39dFpJhJphNF/aGyj3aOkHwG0DvQlEvS8sZ9JlVgDddtD1fbVb/kM352dQDhD
         ChCA==
X-Gm-Message-State: AOAM530YseOIq8KYEkan+ur9ElKv/OOcm7f1nvOcqJIc2/OwmEsRBjGH
	k3Ba/EMn5jzNGO8sTrtxF9hMHrUASE5WIpQhvUE=
X-Google-Smtp-Source: ABdhPJxTL83sDhDJWo8Vne4MRLI4BBnOpZvhlSELILrM5At5qtc8lGjTi7Ej2He1qt0nxGB+FPqp4y80Xxi+OyEO/cU=
X-Received: by 2002:a2e:1413:: with SMTP id u19mr1894209ljd.64.1592573197814;
 Fri, 19 Jun 2020 06:26:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAA4NGyuwrkQrQ05AR_2OyaYTxrF41sqx1AoaDFbJaU99TwCjxQ@mail.gmail.com>
In-Reply-To: <CAA4NGyuwrkQrQ05AR_2OyaYTxrF41sqx1AoaDFbJaU99TwCjxQ@mail.gmail.com>
From: "Gabriele" <gabbla.malist@gmail.com>
Date: Fri, 19 Jun 2020 15:26:26 +0200
Message-ID: <CAAx3WaB-8BapkcGYtz2KftvAY7hE0HRBcEKfhKs5V-V+H3M2HQ@mail.gmail.com>
Subject: Re: [yocto] MACHINE and inc files
To: Tomek The Messenger <tomekthemessenger@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000bc12db05a86fd775"

--000000000000bc12db05a86fd775
Content-Type: text/plain; charset="UTF-8"

Hi Tomek,

you can specify machine-specific variables/function with the following
syntax:
 <PROPERTY_NAME>_[MACHINE_NAME] = "value"
ex:
 MAGIC_NUMBER_velismate-x21 = "12345"
inside your temp.bb

Regards,
Gabriele

On Fri, Jun 19, 2020 at 3:21 PM Tomek The Messenger <
tomekthemessenger@gmail.com> wrote:

> Hi
> I have various ${MACHINE} called:
> uruguay-x11
> uruguay-x21
> supa-rte-x11
> supa-rte-x13
> supa-rte-x21
> velismate-x11
> velismate-x21
>
> I created some bb recipe:
> temp.bb
> where there are common things done for all machines.
> Now I need to perform different things for  uruguay, supa-rte and
> velismate.
> How to do this? Should I create
> uruguay-%.inc supa-%.inc and velismate-%.inc?
> and in temp.bb write:
> include ${MACHINE}.inc
> but this won't work as bitbake will expect full name with x11 etc part.
> How to exclude part with x11, rte-x21 etc? Is any way?
> Anybody can help?
>
> BR
> Tomek
> 
>

--000000000000bc12db05a86fd775
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Tomek,</div><div><br></div><div>you can specify ma=
chine-specific variables/function with the following syntax:</div><div>=C2=
=A0<span style=3D"font-family:monospace">&lt;PROPERTY_NAME&gt;_[MACHINE_NA=
ME] =3D &quot;value&quot;</span></div><div>ex:</div><div>=C2=A0<span style=
=3D"font-family:monospace">MAGIC_NUMBER_velismate-x21 =3D &quot;12345&quot=
;</span></div><div>inside your <a href=3D"http://temp.bb">temp.bb</a></div>=
<div><br></div><div>Regards,</div><div>Gabriele<br></div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 19, 20=
20 at 3:21 PM Tomek The Messenger &lt;<a href=3D"mailto:tomekthemessenger@g=
mail.com">tomekthemessenger@gmail.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi<br>I have various =
${MACHINE} called:<br>uruguay-x11<br>uruguay-x21<br>supa-rte-x11<br>supa-rt=
e-x13<br>supa-rte-x21<br>velismate-x11<br>velismate-x21<br><br>I created so=
me bb recipe:<br><a href=3D"http://temp.bb" target=3D"_blank">temp.bb</a><b=
r>where there are common things done for all machines.<br>Now I need to per=
form different things for =C2=A0uruguay, supa-rte and velismate.<br>How to =
do this? Should I create <br>uruguay-%.inc supa-%.inc and velismate-%.inc?<=
br>and in <a href=3D"http://temp.bb" target=3D"_blank">temp.bb</a> write:<b=
r>include ${MACHINE}.inc<br>but this won&#39;t work as bitbake will expect =
full name with x11 etc part. How to exclude=C2=A0part=C2=A0with x11, rte-x2=
1 etc? Is any way?<br>Anybody can help?<br><div><br></div><div>BR</div><div=
>Tomek</div></div>
<br>
</blockquote></div>

--000000000000bc12db05a86fd775--
