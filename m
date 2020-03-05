Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
 by mx.groups.io with SMTP id smtpd.web11.13943.1583420610429962406
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Mar 2020 07:03:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=cXqeSQfE;
 spf=pass (domain: gmail.com, ip: 209.85.208.51, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ed1-f51.google.com with SMTP id m9so1527366edl.4
        for <yocto@lists.yoctoproject.org>; Thu, 05 Mar 2020 07:03:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=AocyvJid6ziFjWsew2HRFjfwP2Hv4fnEzRpvwaFZ1Cs=;
        b=cXqeSQfExfAOUesTCyeZYX9BeISvPSoqEKeMF88uYJcEHRKM0qx1S8NTb+xnv42GtU
         WafGyd1xkD0U4tqX8EnLEHQ8TDJhP4jg2fF2NQ7+mcnFbYzv7lwIak1Np/IMwTUF9ss5
         DwkQox/ej8TGUVn7O91bimi6fmlBL5P23MhcPInMmeGgt9z6ao7yLdUlX9R3XyLwxQez
         K5ikrFIIaw90Uf/YjC/YUgzGWgsLSOXYcT4TP5CeUwqmvohcqZmn5yI6XY7fJO7F72W8
         W0GbcAhsfNdgyLXi44UVNztTTVx6MlDneddTK1WCzMtBpqVMQHNCc+nQgBaqawLFg/gH
         7tOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=AocyvJid6ziFjWsew2HRFjfwP2Hv4fnEzRpvwaFZ1Cs=;
        b=k4RSZipcZx90e5R18D+L6qXgs2k1Ew3g4qH7DL4kRaibSLf306KPyS2WM1aOKGiSuo
         1jxqzOIJc/BobTuK/WRddpIFB075OiwORoa04qmP7IqV+buDjL3ifx+jycHLWt40SLI9
         f1AeTFf/XX9JdsfKDCeKWprX1VEDlTHhuCSUnda0KL7vgn4HL5ADYcCeuzV5ZHteuBZh
         PQUZ1hGKykHiQ3KQu0oYDIGEK19AdAOThKsk9ZNRCF07k3khEx4Z2Dhody/+U6WXxOhq
         YJYr0WNhwVbkPPcc2fNQ7o2TwnAmwJ9qkkwEU30V3AMJlmpsM6scsDjFbK8jfat59Dvy
         A9OQ==
X-Gm-Message-State: ANhLgQ06/KNwlniKvhE6Hp66F93NyZ9JAqGYN++G9A1TleINTP7tWKFC
	SOKl5u4cQ2CsbjOAD9gvq6EOSk4xDOzJjYNPlC0=
X-Google-Smtp-Source: ADFU+vvo/Qmasr6FIWoFYRE5cQgDcvRFvndDKcx0JoWXR9nd8joGK6WcBft4Bkt0RBo0mDdGFsWPg2MQ5ituerSkvjk=
X-Received: by 2002:a05:6402:38f:: with SMTP id o15mr8383570edv.365.1583420608874;
 Thu, 05 Mar 2020 07:03:28 -0800 (PST)
MIME-Version: 1.0
References: <15F8A029CD47E18B.3851@lists.yoctoproject.org> <CA+yZB6ZiLuxr2AybgM_sJRrhvWiOGJQ62hHvdRbkh0jnvdesPw@mail.gmail.com>
In-Reply-To: <CA+yZB6ZiLuxr2AybgM_sJRrhvWiOGJQ62hHvdRbkh0jnvdesPw@mail.gmail.com>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Thu, 5 Mar 2020 10:03:17 -0500
Message-ID: <CADkTA4OVEzHQRFC=26iJef-POKZjAd0L51c_1M61kB-1Rs3FRA@mail.gmail.com>
Subject: Re: [yocto] Building xen-image-minmal for raspberrypi3-64: kernel-module-xen-* not being built
To: Aljoscha Lautenbach <aljoscha.lautenbach@gmail.com>
Cc: yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 4, 2020 at 5:40 PM Aljoscha Lautenbach
<aljoscha.lautenbach@gmail.com> wrote:
>
> Hi,
>
> I made some progress on this today. After running =E2=80=9Cbitbake -c
> menuconfig virtual/kernel=E2=80=9C and searching for the config paramete=
rs
> that xen.cfg was supposed to set, it was obvious that they were in
> fact not set, as the mailing list reply I mentioned earlier suggested.
> By manually setting them, I managed to build the kernel modules and
> boot.
>
> I don=E2=80=99t know if this is a bug in meta-virtualization or in
> meta-raspberrypi, or if this is expected behavior? If it is expected,
> it is not documented.

You'd be better off asking these questions on the meta-virtualization
mailing list. That's where you'll find the Xen folks.

But as for the kernel options, it depends on what kernel you are
using, release, etc.  Last I checked, the raspberrypi wouldn't
directly use the fragments from meta-virt, so yes, you'd need to
ensure they are set in your own layer/defconfig.

Bruce

>
> It also turns out that the =E2=80=9Cunbootable image=E2=80=9D I mentione=
d previously
> was probably a console or display problem instead, because I have the
> same problem with the now succeeding xen-image-minimal build, but I
> figured out that I can ssh into it.
> Unfortunately /proc/xen still does not exist, and xl still complains
> =E2=80=9Ccannot init xl context=E2=80=9D, but that is a separate issue.
>
> Best regards,
> Aljoscha
>=20



--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
