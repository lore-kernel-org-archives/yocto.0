Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
 by mx.groups.io with SMTP id smtpd.web10.200.1602018102928407357
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Oct 2020 14:01:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=JT/8GYW0;
 spf=pass (domain: gmail.com, ip: 209.85.160.176, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f176.google.com with SMTP id 10so14256242qtx.12
        for <yocto@lists.yoctoproject.org>; Tue, 06 Oct 2020 14:01:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=8efhsXWm+mKbtOVrBHjWXaDP/1IUjwUOjhZlXl71w1A=;
        b=JT/8GYW000EiZVhBSpXBuTZEOUuAuJO9euaH/b/yXWfb/Q2yo51UbaXF0OpamzDtQB
         J1R7RVX3GlM9E6liJioYgC65STQAmKJRiqTZ+Ho0XazOeL3sBqxDwp6HGTOdDKpJG593
         B2pxec/eVl6P1T2ld3lVvJTshuS70lrhrtT2IHK34BRJ0GXHrGpSf392sygyKgO6TDZK
         8ZLKkLJEgURMUXd3jLHtLtX1mx+NTlpbu1VtbHvxi4jHIpjAOJaxEzXu/qe9qF6QPttE
         1FY1F+RQqa3tQfoOeGmcHkYxBrB8nJK1A39OJJK5gijaiotC4cJ0855JC8035DRJ9Nyp
         XSwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=8efhsXWm+mKbtOVrBHjWXaDP/1IUjwUOjhZlXl71w1A=;
        b=AmmJS3t2EuMEczKGJYfJ2d1M8OJvAFOPMkR5/jfpzUq5Yz3OWxMu8Ltui7/yQBRSbc
         3Hx2AGifwaK80sI2EshfcgRnf926KYvMAdvwWiO8ucyFJxWMN9pMcDucOXiE2VF90YJz
         0q36j9AQ5hIv+ya74GaMcnJT6WOvrTBZ6es3FYixTGbsCMUvsNcWfmq2zLTJ8unwNCGi
         8FpDeIIFc5fH7ntP4a937O1dBy+3p9+joBtRsnafQ5nZuArYVU2/HVmPobfPlGwvdZT0
         r+DxA4dHmn2A0ASt26iMvEPQvJGf0+zaOZqmh29nO1cp3mhmjyhA9JNhB8nL1LjdCY67
         +URA==
X-Gm-Message-State: AOAM5320urHsbWm6K4BQ1i6rp048cWLdjC0o7KwPSnHdphPTV+0NYznU
	AhHPGxviOvF+ObjLMHOMO2EdtRy6eQY8UH6fvDk=
X-Google-Smtp-Source: ABdhPJz2d7mpEgZCEBg7uQky+wi86wvIgoIBF54g86PZ17tFkBpK+HZPHs8mzQh57QVy5/RJv0RczbiI2tNfIq08qs8=
X-Received: by 2002:ac8:3975:: with SMTP id t50mr158972qtb.53.1602018101808;
 Tue, 06 Oct 2020 14:01:41 -0700 (PDT)
MIME-Version: 1.0
References: <80lf.1602016605600037019.YDxX@lists.yoctoproject.org>
In-Reply-To: <80lf.1602016605600037019.YDxX@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 6 Oct 2020 14:01:15 -0700
Message-ID: <CAMKF1srdJXNyWMBvQx1pjxN25a4ChSNpAGmnLE8ZvMLNnR+zUw@mail.gmail.com>
Subject: Re: [yocto] Perl populate sysroot fails (yocto 2.0.3)
To: "Varangu-Booth, Valen" <Valen.Varangu-Booth@christiedigital.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Please find which other recipe is creating /usr/lib/perl5 directory,
perhaps you can look through builddir for that. I think we had this
kind of sysroot clash with libhugetlbfs and as a workaround may be add
DEPENDS =3D "perl"  in that recipe to pre-empt the clash.

On Tue, Oct 6, 2020 at 1:36 PM Varangu-Booth, Valen
<Valen.Varangu-Booth@christiedigital.com> wrote:
>
> Hi all,
>
> I'm trying to re-create a build that was previously made by someone else=
 (in an effort to reproduce an exact old build). This is based on Yocto 2.0=
.3.
> I'm encountering an issue in do_populate_sysroot for Perl, where it fail=
s because /usr/lib/perl5 already exists. (See details below:)
>
> Exception: CalledProcessError: Command 'cd YOCTO_ROOT/build/tmp/work/cor=
ei7-64-poky-linux/perl/5.22.0-r0/sysroot-destdir; find . -type d -print | t=
ar -cf - -C YOCTO_ROOT/build/tmp/work/corei7-64-poky-linux/perl/5.22.0-r0/s=
ysroot-destdir -p --files-from - --no-recursion | tar -xf - -C YOCTO_ROOT/b=
uild/tmp/sysroots/intel-corei7-64' returned non-zero exit status 2 with out=
put tar: ./usr/lib/perl5: Cannot create symlink to 'perl': File exists
> tar: ./usr/lib/perl5: Cannot create symlink to 'perl': File exists
> tar: ./usr/lib/perl5: Cannot create symlink to 'perl': File exists
>
> The issue seems to always occur when the sstate-cache is present, so do_=
populate_sysroot_setscene fails first, then it tries to build from scratch =
and do_populate_sysroot fails as well.
> I have seen it in a completely fresh build as well, though this seems in=
termittent (or I haven't yet nailed down what changes when it does/doesn't =
happen).
>
> It seems like somehow some recipe ahead of Perl is putting something in =
/usr/lib/perl5 and perhaps some kind of race condition caused this to be in=
termittent?
>
> Any input would be greatly appreciated, eventually I will get this onto =
a newer version of Yocto but first I need to be able to reliably re-create =
this exact build.
>=20
>
