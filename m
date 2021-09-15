Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
 by mx.groups.io with SMTP id smtpd.web09.2863.1631677351587949242
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Sep 2021 20:42:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=i20iEKvI;
 spf=pass (domain: gmail.com, ip: 209.85.167.179, mailfrom: arun.sivakumaran@gmail.com)
Received: by mail-oi1-f179.google.com with SMTP id j66so2323052oih.12
        for <yocto@lists.yoctoproject.org>; Tue, 14 Sep 2021 20:42:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jyDEVEuDIYQRqnuKwBAL4oplR4Vd529uVhukEBGUjOk=;
        b=i20iEKvI0Ilz0pW3ASLNpkr1kBYn9l4IcbzSO4z/rFZH0qLSScS2Hhr7tXl9qBWagI
         Cxg/eV8P/c91uQF//Fz5oUvC9dpMgrIcZjrhW7QxuYbiSavn/3wL2bRzCaefVjX4QYWK
         CcuF3RQGZy+VMhyXPk9e/uY28GGyINMiRhVVVzw5aeNSsy7VJPCa2b/V/u9MMGJaC/BI
         ZYOypSXIAIjxYEtipyMDpYRwAf9LFsVm4qmIjjEiBs9UZRmEag5HAdHE32OsolnbdFfQ
         lByOLQMu9CCiJa3IdmzSzM6x4gDT59afoIxtgqjG49XTMbWxnw+HV1Wmr7Vb97MCRMiO
         75cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jyDEVEuDIYQRqnuKwBAL4oplR4Vd529uVhukEBGUjOk=;
        b=azQLMzPTciwGn5kPlV0s23oO9YoHIYJRFp0NS1nsROPf3BSRcdX89bpHyxwhMaCsme
         p+uSyo8Csw2cF9oOvaQR/XAbpTQHYPjC1vKHqP26Mm6GBNbkOMyd6r+aAtIfcVtDfZyh
         9R7lZXz9tJKgfF9NUAgn1Z/7ZB+Zlmgr3lpxmM9aRM8/o0ciUuHzAGVslluiFkUL1KAv
         m/EpbKCDKNwCkT8ttJ/Ov1lM6Es/OZtxrjrbzQ1LfTLsxCRZawZkbpDLrNKUm08vKzMP
         HyNdjcS8owK3DmNV4v2e9vdPNRPx2b+s632Z+57azO1gj5RfMqEFkmWxoPqNRL6YdxRM
         6lxg==
X-Gm-Message-State: AOAM531bgdfN5Ev8fMJ0i3h/P/U1DnwjrKjzyiG6pVxxTunncC1JIffq
	X8skdqOMMiH/yAuVCE3AVRFUEXmsrE7mIlD1OU8=
X-Google-Smtp-Source: ABdhPJzhkU+oTZRSKOZ5GW6qtbJs5FhPoGA5jp0Rlc2IFJSBHKIidWOuBk/ZHePVufj00G43rH7U2MGiOYQ+CIdcc90=
X-Received: by 2002:a05:6808:bc2:: with SMTP id o2mr3848162oik.73.1631677350655;
 Tue, 14 Sep 2021 20:42:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAMKF1sqbzn9C1i512H0+gu9fdvosd6A9Cfirwx3TBVWKRdorUw@mail.gmail.com>
 <13347.1631668391953983661@lists.yoctoproject.org> <84c9559c-7ec9-1b7c-9dc1-38ff31451e91@gmail.com>
In-Reply-To: <84c9559c-7ec9-1b7c-9dc1-38ff31451e91@gmail.com>
From: "Arun" <arun.sivakumaran@gmail.com>
Date: Tue, 14 Sep 2021 20:42:20 -0700
Message-ID: <CADphxr1U6coPm7YvyzzVZ7awaK0oniJzgJK=MbMEym6v9ZcpTA@mail.gmail.com>
Subject: Re: [yocto] multilib SDK
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000dfbc9f05cc007cff"

--000000000000dfbc9f05cc007cff
Content-Type: text/plain; charset="UTF-8"

I see, are you talking about ${MLPREFIX} variable? The target itself
compiles fine, all are 32-bit binaries in userspace. I have this issue only
for SDK.

On Tue, Sep 14, 2021 at 7:21 PM Khem Raj <raj.khem@gmail.com> wrote:

>
>
> On 9/14/21 6:13 PM, Arun wrote:
> > The packages that SDK is trying to build are userspace packages and they
> > haven't been ported for 64-bit. There are quite a few of them and short
> > of fixing 64-bit compile issues for all of them, I am trying to see if I
> > can build SDK without these packages built for. 64-bit. The SDK users
> > will only be developing for 32-bit anyway.
> >
> >
>
> you should check the dependencies and ensure they are multilib safe
> sometimes dependencies could be hardcodes and cross the multilib
> boundaries accidentally
>
> > 
> >
>

--000000000000dfbc9f05cc007cff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I see, are you talking about ${MLPREFIX} variable? The tar=
get itself compiles fine, all are 32-bit binaries in userspace. I have this=
 issue only for SDK.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Tue, Sep 14, 2021 at 7:21 PM Khem Raj &lt;<a href=3D=
"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
On 9/14/21 6:13 PM, Arun wrote:<br>
&gt; The packages that SDK is trying to build are userspace packages and th=
ey <br>
&gt; haven&#39;t been ported for 64-bit. There are quite a few of them and =
short <br>
&gt; of fixing 64-bit compile issues for all of them, I am trying to see if=
 I <br>
&gt; can build SDK without these packages built for. 64-bit. The SDK users =
<br>
&gt; will only be developing for 32-bit anyway.<br>
&gt; <br>
&gt; <br>
<br>
you should check the dependencies and ensure they are multilib safe <br>
sometimes dependencies could be hardcodes and cross the multilib <br>
boundaries accidentally<br>
<br>
&gt; <br>
&gt; <br>
</blockquote></div>

--000000000000dfbc9f05cc007cff--
