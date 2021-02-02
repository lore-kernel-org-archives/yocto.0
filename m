Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
 by mx.groups.io with SMTP id smtpd.web12.50.1612290050430311870
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Feb 2021 10:20:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=IxBkers8;
 spf=pass (domain: gmail.com, ip: 209.85.160.182, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f182.google.com with SMTP id d15so15606809qtw.12
        for <yocto@lists.yoctoproject.org>; Tue, 02 Feb 2021 10:20:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=5o+qGW2E/v/n51hP6dA3f4Ve3SbEZ6o0ETMxmrjAhy8=;
        b=IxBkers8qvYGQY8DEVZ1Btl0teYnUg+FIJ1K0lCENauFgQS1u/fLyNuOqJCyW3W9cy
         dbpp0ZMq2sWjsx7vU1IslYTjODh+sU0xdLhX9dTDadKNUfhOhyDS9/FPjSgtK8+cQS1s
         Ncdsj7TGXR96rJLsAHUughCjzq2w+reoWsPX/T86mkXOD63fXhr/RmrBxTgLOvBMWwos
         1BfqVfKW0fDCIbXprJX8/m8h4l+VnmafeXVfDp2MZaGua9gpNRlTLHkATekzQVhhXE8S
         DUaTOjx3X+fLqqAstxuf+IfVgJJKY60VNaAuEFq29rp6bf0twgI6ynchDHH3iFIfbdfb
         P1RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=5o+qGW2E/v/n51hP6dA3f4Ve3SbEZ6o0ETMxmrjAhy8=;
        b=IeMQXcR3IHQGZDrqpilENY7coWwlRNj38ElcXdh+aGSM91MFBDfS16aHsqlk/L4ywY
         SHna4f/7Bhj6W1BT+cV7FLnc0BfTMU2T56bUfUy5kwG21xb2fAb1C7Qg0MdjGC1mAb/8
         0EMSNXH4+24VlDPW9NZ0DY4r7bly3pUMNwPXxidyl5VBP2U1BuYrg1LRQnIeUK8kbS5j
         n/pyNGg+qEiMJhZLFMNRvUZm1XmFozV0ZEf6ufWhI1IWN+4CyJKIT0Oa6QLLwiLcg5+u
         WNr6W2w9Uc6f2JIrLHVG160N4LFNl6PMUPAx+hJIr2E3SXs0MtcXbc+Ez0mZqk7oyty6
         IXRg==
X-Gm-Message-State: AOAM5317FctA1eo8XuXoxSX1pJVcjImUkcJgEs6L5WBIJdGs1Ya+znbK
	LRmriv/ucpeZI1QUVV96WzQOu5aEw/g8IN7lefA=
X-Google-Smtp-Source: ABdhPJwixX7JL34zIYWFYp6YASoNX7IOgccFkgjsQ/D7zAS/IA6VqZndsv6YBhYehQq/2mpU5JKK244yuO5a/O4SVjQ=
X-Received: by 2002:ac8:5490:: with SMTP id h16mr14107972qtq.378.1612290049556;
 Tue, 02 Feb 2021 10:20:49 -0800 (PST)
MIME-Version: 1.0
References: <CAOx=Z6HG7nG4eC0mU=iDvkz=jtOp_OCeDmacAvF69=X_FqMZfg@mail.gmail.com>
 <CANx9H-DvpKkPpQnMMnFBSnVEvFXiWMHOmxT1iaCUeigp51yTmA@mail.gmail.com> <CAAnfSTuyR1bE0jaPdNSp6g0u7dRfKtRHr2gnd0ZgLNyQjdu8zQ@mail.gmail.com>
In-Reply-To: <CAAnfSTuyR1bE0jaPdNSp6g0u7dRfKtRHr2gnd0ZgLNyQjdu8zQ@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 2 Feb 2021 10:20:23 -0800
Message-ID: <CAMKF1spLVE8D=wmcK9+7P=Qq0P-M5Kzz4dXmVuzUmXSK5NFBMA@mail.gmail.com>
Subject: Re: [yocto] [meta-zephyr] bitbake zephyr-helloworld configure failure
To: Ross Burton <ross@burtonini.com>
Cc: Tim Orling <ticotimo@gmail.com>, Peter Smith <salerio@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The mentioned patches are in master-next, please use it from there for
now until its applied to master which might be in couple of days.

On Tue, Feb 2, 2021 at 2:30 AM Ross Burton <ross@burtonini.com> wrote:
>
> I sent a patch to meta-oe yesterday: there was a missing dependency in
> python3-kwalify and missing class extend in the ruamel recipe.
>
> Ross
>
> On Thu, 28 Jan 2021 at 05:49, Tim Orling <ticotimo@gmail.com> wrote:
> >
> >
> >
> > On Wed, Jan 27, 2021 at 12:51 AM Peter Smith <salerio@gmail.com> wrote=
:
> >>
> >> Using master branch
> >>
> >> MACHINE=3D96b_nitrogen bitbake zephyr-helloworld creates a configure =
error due to a failure for native python to import ruamel.
> >>
> >> I fixed this temporarily by creating a python3-ruamel-yaml_%.bbappend=
 that includes the required BBEXTEND and adding python3-ruamel-yaml-native =
to zephyr-kernel-common.inc.
> >>
> >> I don't know (not enough experience) if this is actually a problem in=
 the meta-openembedded recipe or meta-zephyr?
> >
> >
> >
> > BBEXTEND =3D =E2=80=9Cnative=E2=80=9D is a perfectly fine patch to sub=
mit to meta-python. We tend to only make those changes when needed (as in y=
our use case) rather than universally. Please submit a patch :)
> >>
> >>
> >> Best Regards
> >> Peter
> >>
> >>
> >>
> >
> >
> >
>
>=20
>
