Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
 by mx.groups.io with SMTP id smtpd.web11.362.1596777456769868977
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Aug 2020 22:17:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=MWNj/CXW;
 spf=pass (domain: gmail.com, ip: 209.85.219.51, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f51.google.com with SMTP id a19so243385qvy.3
        for <yocto@lists.yoctoproject.org>; Thu, 06 Aug 2020 22:17:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=VhjL5Jcinb2gq/EQnGrtfYnH2be0CRk2MVLjZfnyNyc=;
        b=MWNj/CXW24SuO7RUkdHlHawUb82mJxs5n5TAs1Bx3sGBHuwllELnJSFK81ogW4uaDC
         44+clqaouuk/57aY4rBIMc/aGhaXN8ZiFh7iVwSazOgjx+dhMfxfkCz02/Bs+CDOGoiW
         5u4x2mESva1FMD4McCXg6wyQ4TNUOrJDK3p91Rm/hgXXKEQxwz/kLmZ23FN35gDLWH2v
         6rKusi28LJHFQdRD5F0O3nsd2fWfCYA7wQ20gI5F6ZddRXdK2GRwqkO1+JSK1f4zyy/o
         +dJp2xW0aqrmZ4SfgkDnK30h+JUoE+jtwq1nZt98vWIiAVsGU8JqEGYuEgiBZrnAs3GS
         2FYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=VhjL5Jcinb2gq/EQnGrtfYnH2be0CRk2MVLjZfnyNyc=;
        b=KiMP3irjLV4t+9xc3dHES3LzTGD84LNx3Nzi+UFPvUNufDqYkVfv3C2uCbWp+FARE9
         F0sZBovIL/Via3IQUTOT7McZqFFG7PjhsxxMXqWFthVz4GbUpPfCVsTCQOSQEpYV+Bhb
         rbWTsqR1UnJE29OjDjvFA8zz3mW3BiHx+NQZObNIer65I7+Xb0U5Pfvl6BOQkqPSc8Qg
         zFEKCfN07ViQNVszNJajLiOKna22QIWBVQ3hrdQ7pX28QKSI41tyO5pIyTzWR4XxD5QF
         xAOj9pUsQEdvWeFZsFMYLp36aK9dzOLarWVzmPZEW3z3CT6xLWeavGNaHMrs4UbXGpXa
         FhfA==
X-Gm-Message-State: AOAM533KkfWI4xW7h97OvCyupPRXojbGmqrQyHQQtHCq2IoqSpweN42M
	uK8A+ZGY1EHaYtPCjSTyyl3IrFuxguOtdJdwgaM=
X-Google-Smtp-Source: ABdhPJyZ6jgQnlPWLCu+HQCoy8a+POyCrRJCNYaCbXZypO42WwZXdcaLQMyd37VIopvxar97wMKOzbqElT4slFu6s5o=
X-Received: by 2002:a05:6214:154a:: with SMTP id t10mr13014397qvw.146.1596777455838;
 Thu, 06 Aug 2020 22:17:35 -0700 (PDT)
MIME-Version: 1.0
References: <MADEUP.1628BA56FCFEA888.10739@lists.yoctoproject.org>
In-Reply-To: <MADEUP.1628BA56FCFEA888.10739@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 6 Aug 2020 22:17:09 -0700
Message-ID: <CAMKF1sryYwa6eK_UEUHJhGR-TCcvJimZcR6MogKg94QN3pViMA@mail.gmail.com>
Subject: Re: [yocto] Does any version of Yocto currently support LLVM/CLANG/and OpenCL ?
To: steven.monsees@baesystems.com
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Steve

On Thu, Aug 6, 2020 at 9:22 AM Monsees, Steven C (US) via
lists.yoctoproject.org
<steven.monsees=3Dbaesystems.com@lists.yoctoproject.org> wrote:
>
> Hello:
>
>
>
> I am currently working with rocko 2.4.1=E2=80=A6 building for X86_64 pla=
tforms.
>
>
>
> I am looking to add support for LLVM/CLANG/and OpenCL, but thought it mi=
ght be  easier to move to a more recent version of Yocto if support was alr=
eady in place for these components.
>

clang support is provided via its own layer ( meta-clang ) see
http://layers.openembedded.org/layerindex/branch/master/layer/meta-clang/
you can add it to your layer mix and it will add needed bits, please
go through README and see what options you need.

>
>
> Is there a more recent version of the Yocto Project which possibly inclu=
des support for these components ?, and if not, has anyone ever attempted t=
o build an SDK to add support these components to their platform ?
>

There is rocko branch of meta-clang which should work for your release
however rocko is no longer supported for meta-clang, for best results,
I would suggest to move to latest release ( dunfell ) as of now, this
branch is actively supported as well

>
>
> My first pass attempt finds the =E2=80=9Cnativesdk-cmake=E2=80=9D functi=
onal, but the LLVM/CLANG build under the SDK appears to have some issues.
>
> Knowing my current rocko platform is a bit dated, I thought it best to c=
heck in and see if porting to a more recent platform might be beneficial.
>
>
>
> Thanks,
>
> Steve
>
>
>
>=20
