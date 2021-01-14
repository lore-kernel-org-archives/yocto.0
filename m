Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
 by mx.groups.io with SMTP id smtpd.web10.123.1610649413315188345
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jan 2021 10:36:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=lCF8eMw3;
 spf=pass (domain: gmail.com, ip: 209.85.219.41, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f41.google.com with SMTP id h1so2752533qvy.12
        for <yocto@lists.yoctoproject.org>; Thu, 14 Jan 2021 10:36:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=EPVEuIucQMVzHgFywFbJiGwmVIIJgKrbIdpwYWw+eB4=;
        b=lCF8eMw3ijWW4NrvzKlQGNhlyGN9idvsxH//qQfwr42aAepZ4cZgU0Yg8OPGhQriI2
         sXsba8G66BWridl0MluV7T08HCz4NS+Ku+l/DgPDjt6Pj4WKFpchIdqfYfAoByW8+bjS
         2e0cGbA2u0QPL43OZ29huB4R6CeNkjk8xTBFnztIN5BvMaguC2cdUqbYZBwWHvmYceVd
         VJ6mbDCzD5Yl1O+6ud8vv0xT7TWl/qZ1ObwRCmliHL3ZjAOx8ObxlrhoC24SPXRQW45i
         6uVUUdLMHQAwjLEAJgKvz01R2wLhLUnI0FfvOPIec1JpbsKO8uE4LSffq7cjpaMV8Xvm
         qpHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=EPVEuIucQMVzHgFywFbJiGwmVIIJgKrbIdpwYWw+eB4=;
        b=Zq0+Lib9RACiVqgsSqRrhp4Xlrwg2YHUt1asVmMqxSRz8PNx50d0aBgiCNf270X4/f
         sgUj1lo0152fIkt5xWNkfvIOrVnE+qzbmn2sFxQHdAgyKQXatJHv5VBDWwsU15FG+sBZ
         suZML2iiCvJlRCHlhPZet1Q7gx9Nen4el5nNd6rNCkkqAT5xC1Vx7Ccn7fhAnZCaZyqt
         cDxyA91L0K1gErCn1w80TIGqHRt75RqplDXebWnhT0DfqxaGLV5HzyM/j1u0+2+1vqwU
         yQ1JCEtfzaTJfIWngl6I0Z34kUPzDA+qCY67MmA8ojaRBYYQFsS4D0B9hxFd2ywCOrNU
         6/Tg==
X-Gm-Message-State: AOAM5326jgmf31rjuOvKyxM6GrkJvaMfay0tP4Y+2ibx+WpSQWc45yqz
	kabEo73UfPLN3v5juCGot5vI8WxOLZYUs0BRrRo=
X-Google-Smtp-Source: ABdhPJyrVpID71CHC+sFgGDxLhSpKMf3j3nR5BWgq775HUrlM4t0v2TXyciwa/Co0a2D2FecsVu/lnGdo+lJYJ1oGg4=
X-Received: by 2002:a0c:c688:: with SMTP id d8mr8446994qvj.8.1610649412297;
 Thu, 14 Jan 2021 10:36:52 -0800 (PST)
MIME-Version: 1.0
References: <MADEUP.1659CD13328A69B6.15401@lists.yoctoproject.org>
In-Reply-To: <MADEUP.1659CD13328A69B6.15401@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 14 Jan 2021 10:36:26 -0800
Message-ID: <CAMKF1sqkmY0o1+2vi+q2r=COa5ye1qVYjhFE6jx_iWXw+BXycw@mail.gmail.com>
Subject: Re: [yocto] #yocto #kernel
To: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I must have said add init-system-helpers-service

On Wed, Jan 13, 2021 at 5:17 AM Monsees, Steven C (US) via
lists.yoctoproject.org
<steven.monsees=3Dbaesystems.com@lists.yoctoproject.org> wrote:
>
> I am using sysvinit...
>
> -----Original Message-----
> From: Monsees, Steven C (US)
> Sent: Wednesday, January 13, 2021 7:15 AM
> To: 'Khem Raj' <raj.khem@gmail.com>
> Cc: yocto@lists.yoctoproject.org
> Subject: RE: [yocto] #yocto #kernel
>
>
> When I do this I am seeing "Nothing PROVIDES 'init-system-helpers',,,
>
> -----Original Message-----
> From: Khem Raj <raj.khem@gmail.com>
> Sent: Tuesday, January 12, 2021 6:13 PM
> To: Monsees, Steven C (US) <steven.monsees@baesystems.com>
> Cc: yocto@lists.yoctoproject.org
> Subject: Re: [yocto] #yocto #kernel
>
> *** WARNING ***
> EXTERNAL EMAIL -- This message originates from outside our organization.
>
>
> On Tue, Jan 12, 2021 at 12:09 PM Monsees, Steven C (US) via lists.yoctop=
roject.org <steven.monsees=3Dbaesystems.com@lists.yoctoproject.org> wrote:
> >
> >
> >
> > Working on zeus 3.0.4, for aarch64
> >
> >
> >
> > I  have a startup script making use of =E2=80=9Cservice=E2=80=9D How d=
o I properly configure in support for the =E2=80=9Cservice=E2=80=9D command=
 ?
> >
> > I do not have an error when working under rocko.
> >
> >
> >
> > The error seen is :    /etc/rc5.d/S15mountnfs.sh: line 70: service: co=
mmand not found
> >
> >
> >
> > Usage: @ line 70:  =E2=80=9Cservice rpcbind status >/dev/null=E2=80=9D
> >
> >
>
> perhaps just add init-system-helpers to IMAGE_INSTALL
>
> >
> > Thanks,
> >
> > Steve
> >
> >
> >
> >
>
>=20
>
