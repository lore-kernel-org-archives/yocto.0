Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
 by mx.groups.io with SMTP id smtpd.web12.8791.1582293866927485175
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Feb 2020 06:04:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TS+mtU9f;
 spf=pass (domain: gmail.com, ip: 209.85.160.182, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-qt1-f182.google.com with SMTP id w47so1317859qtk.4
        for <yocto@lists.yoctoproject.org>; Fri, 21 Feb 2020 06:04:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=HJ/+JFiRWBbiaH3DawLloRdUe/AHOiaRHWCwpzjkDVE=;
        b=TS+mtU9fVB2adleVtFEzxst6VcsiI30MviQuQjIduTzkmCJMR8Zzdl3uMLBVv+9Tds
         QAePc2M4oCzE69MsjIWm/dFnr/i4KwnDWmOhtYhTocvByUD+teHAMd+8gTKzyXvQ+04L
         92jvqgty96xvrmm3mRa57jTrbdVLnMSEIAqX54ZC7E8S7M/Ko4svYrMJ3XpmBjMzoztJ
         HEPffdxOnQ5J9QPzvflUIGQg3FTyLh39gjPTwHJiuVl7cX0zikoLJf3fpcGCqHiRmtvX
         L9vPeyVhdgOCUZ6SdGE6cG9s9kBDAifzxohj1eNKta1pmV/y5Hw7kV0YgdF1V/w9ybeY
         z+2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=HJ/+JFiRWBbiaH3DawLloRdUe/AHOiaRHWCwpzjkDVE=;
        b=jIvxJFkuYAAK3S2XcDV+yKqLHaGSe+UYUboufyZ0ml1wde6V9eE0yLgfsgFV5GvW93
         SyVK5lfp00a1U9YRdaimTAnwikUVJt395kqp01k6dPDuQL7a3v+uDMSRFtFGaFyJa1DH
         cl/NOw+v872aKxivvh43jFF1ItRuDcfND6o9MMHNNsLo4fS/V9LjW2HeK7S5LP/KEt6e
         i9OUTHTe2LPKZpgTaMs2OmdH9n4lT7WCzgzKDqCERZ2qukiEsAkAb1qR61DwAfBawzUO
         LPtAUeE0wZtjEBfyvAjhZwV97cgbE88n0p82YTocMvn+w9ZOAcJcgUHIjQ9QsOOZMA5N
         Pbww==
X-Gm-Message-State: APjAAAUvvRonM9EB4YSusmZ36cCh8T+Lnwt0tXipKTychUteLDuEY++I
	xT9qryKLx4NTmpHWQLDfnbHXzHobOVwmjrDm3YM=
X-Google-Smtp-Source: APXvYqzJD1E+IPMM6M52904BKRr3umVtYvI680GEy2KtZnbkqp0tVegnUdqXfMDeQkv9pnJukTCHe4vyxdJy6fEU9UE=
X-Received: by 2002:ac8:cb:: with SMTP id d11mr32489023qtg.22.1582293865726;
 Fri, 21 Feb 2020 06:04:25 -0800 (PST)
MIME-Version: 1.0
References: <CA+ABUwitOho6JLm+u4Rb+mxsMvqhH32Xr3yHHW=p4yo5Rbr1Lw@mail.gmail.com>
In-Reply-To: <CA+ABUwitOho6JLm+u4Rb+mxsMvqhH32Xr3yHHW=p4yo5Rbr1Lw@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Fri, 21 Feb 2020 15:04:13 +0100
Message-ID: <CAGAf8LwaJtR1OH6EKL0x=0q5KZZWwDxEb0VxSd_EucJ+S=MPMA@mail.gmail.com>
Subject: Re: [yocto] Bitbake error
To: =?UTF-8?Q?I=C3=B1igo_Vicente_Wali=C3=B1o?= <inigovicentewalino@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hope this can fix the issue:
http://lists.openembedded.org/pipermail/openembedded-core/2016-October/127=
246.html

Best Regards,
Zoran

On Fri, Feb 21, 2020 at 10:16 AM I=C3=B1igo Vicente Wali=C3=B1o
<inigovicentewalino@gmail.com> wrote:
>
> Hi,
>
> I'm trying to build yocto project ZEUS for imx8m mini.
>
> I have this configuration EXTRA_IMAGE_FEATURES=3D =E2=80=9C ssh-server-o=
penssh tools-sdk tools-debug dbg-pkgs dev-pkgs doc-pkgs package-management =
tools-profile=E2=80=9D in my build/conf/local.con file.
>
> But it reports error when executing bitbake core-image-base.
> Host environment: Ubuntu 18.04.3 LTS
>
> Can any one explain how to resolve this?
>
> The error log is below.
>
>
> Thanks, best regards
>
> I=C3=B1igo.
>
>=20
