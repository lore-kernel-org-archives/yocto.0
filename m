Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
 by mx.groups.io with SMTP id smtpd.web12.36.1610493197102909993
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Jan 2021 15:13:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CAoZluz1;
 spf=pass (domain: gmail.com, ip: 209.85.160.170, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f170.google.com with SMTP id y15so2833211qtv.5
        for <yocto@lists.yoctoproject.org>; Tue, 12 Jan 2021 15:13:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=uWzP/NpVEI+pF4fAz/mOO2eEpxlaSJePQhspz247cAo=;
        b=CAoZluz1p6Ou2Em2w7gzXg21Gff61S3t4vjyaIgn/G9nXrkT07LmmyQUlcbqMDdRrr
         nkBKTyPI3ffoFGoiERkh6xLMMkPw/gc9qrfSOzfp2J73Twz/PzBJIYFrAJwe0TkbHlPC
         hyfZgnAu998nqmWS8Jw7ggHbiEnW+dbxLFN6ghHeHlb5v990S7l0abFXd0UDF38zmXQd
         ZNlVT/81vEeK6Cqr2wS4N8CB3UrcxIL2V19DqJqAQ6Nm7iVkcDoJlMwN60sGC57MgBmu
         tSuvCNC8TONVl3gzsCZcwE1uGkHRGchlkcnmM3uDHYueQYL6c/8ni3HCl3Q+vVNY0daK
         SoAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=uWzP/NpVEI+pF4fAz/mOO2eEpxlaSJePQhspz247cAo=;
        b=nnKi87tT0WVROBu32cn9dyqSHpqhCs+NwqJ9a6l1oavbjqO5K+muVpJvCSFOH2rpRq
         +Now0fLzghhiyK1ijSa2QIODSt+4ClJH1kCNctlwmIeN8YcZOW+MUy3eIZqARddZfvf1
         rX6DMHaOwK3aRmOKuG6AUFrhFU2MXmwpDIyiIgegIGOtzGVvVF3nX/wH9Fm9JxU0gl44
         VYYaJGwwj5UGyhIdsQfdvzPBUOZFaOiHE2PgL+jS93N8F7dZD69gHd2Tf7Wzpyw68X7P
         8XyLeD1aDR7QiqcgSMBfho1cgWPFZMr2iOFSzRYsGet/yQ3Few1V76pcgADb605SqYdP
         Upyw==
X-Gm-Message-State: AOAM530UDNSWpofjs3e5euTPavqqkdsd9BgYk038pyo9zLVG2TRwwaSO
	bXFmHPL7aN3g0gUW0+VVsU/E7hBC9HR8gUharGM=
X-Google-Smtp-Source: ABdhPJx94nGZGGodKcpM/ykFx8JF/1+fMJAI1oU2wIuKZoi1wL+z0f+X1c3GKcyTu3XH9LhX3+2fjuE4mbdtFm2m2QQ=
X-Received: by 2002:ac8:3417:: with SMTP id u23mr1638401qtb.80.1610493194806;
 Tue, 12 Jan 2021 15:13:14 -0800 (PST)
MIME-Version: 1.0
References: <MADEUP.16599502C2A622A0.16249@lists.yoctoproject.org>
In-Reply-To: <MADEUP.16599502C2A622A0.16249@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 12 Jan 2021 15:12:48 -0800
Message-ID: <CAMKF1srmZn=D=xOVxS6r0s9sVOS63yAj850hxyKwqFNMvb40=A@mail.gmail.com>
Subject: Re: [yocto] #yocto #kernel
To: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 12, 2021 at 12:09 PM Monsees, Steven C (US) via
lists.yoctoproject.org
<steven.monsees=3Dbaesystems.com@lists.yoctoproject.org> wrote:
>
>
>
> Working on zeus 3.0.4, for aarch64
>
>
>
> I  have a startup script making use of =E2=80=9Cservice=E2=80=9D How do =
I properly configure in support for the =E2=80=9Cservice=E2=80=9D command ?
>
> I do not have an error when working under rocko.
>
>
>
> The error seen is :    /etc/rc5.d/S15mountnfs.sh: line 70: service: comm=
and not found
>
>
>
> Usage: @ line 70:  =E2=80=9Cservice rpcbind status >/dev/null=E2=80=9D
>
>

perhaps just add init-system-helpers to IMAGE_INSTALL

>
> Thanks,
>
> Steve
>
>
>=20
>
