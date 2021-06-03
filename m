Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
 by mx.groups.io with SMTP id smtpd.web10.6913.1622723118717367080
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Jun 2021 05:25:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BgOokmu6;
 spf=pass (domain: gmail.com, ip: 209.85.222.173, mailfrom: weaverjs@gmail.com)
Received: by mail-qk1-f173.google.com with SMTP id o27so5639651qkj.9
        for <yocto@lists.yoctoproject.org>; Thu, 03 Jun 2021 05:25:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=lIGz53R/Z4ytK2TEDMz1aVmnUFmVctlE4vJhXLVLqss=;
        b=BgOokmu6Hb0cOYsngF4j0Z/3wZqdushR7RyiM4u6m5Ft+mWLHGsPMfxNr0XVOzbRA7
         0WGtRPzxITRrxXqbRJoPxgXSURt0gnacIh0D534zhuRRfCe9/UNu2cwUpqcWB0anvocs
         baYRiPmjyqyyzX5CkNtOTrYzX0cuN9NXpqGbU2ry+mUHwlvEO0/L2KTmQOUxRt9Cfw9v
         d/3Kw6FcERmmU/CUIBNy1voUT0oVF9LQQ5WeGrOuxrpzFBfdkholMU039M+tkf9zWKpE
         KT2iyn0OpbZwxWMXm8nnIE1PKLscwQ8REPqK6QxovYhShlaDZ/vf6VOn+YwsyfE/Mn+X
         bjLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=lIGz53R/Z4ytK2TEDMz1aVmnUFmVctlE4vJhXLVLqss=;
        b=OGtBd89yzhUf8PrXyuk1ALbwyuopnSw4txr6c2eN1bJqftGMiOhquPCYfri1XFNxIZ
         +5AG9Wuwt5/tvYAKES053L4RM8tA+3znGrd0ZxHe4aa4Oyxy61wCTdZ0gIrzfghvCZg2
         JQFMDWzZvTGND3Fh2C9WkGHwNRK5Tr3MoDoACU3+JIGN9QgOifU3muzTjhnmqRmCAKxQ
         HgW74vTv6h2NB9eOHKflNc2/QcpI/eBaT6jTctoy6aDlXav0BgeELAGojjjrrFq3wUIu
         33Z4BpNU8Njngh3gECoRF46OlZB3ki9jL3ncUBTLqGq/Q+CnIDP8UEtjy4m1jpOqBglX
         xt5g==
X-Gm-Message-State: AOAM533hD1hvtwSLVVb2kwgFO0F5ECsJza/IdyTi2duqjk9DcabXJAfX
	Xycpqmd2MEQv1WB305S0ZTHfS0NqHiAX5aeiIgUJwmA=
X-Google-Smtp-Source: ABdhPJz6sG/cKdki4iXyG3tsGnfE59VorVU8oyB++mp4aUJ5poHsaOURjHS02GWGOHrCsVzt1yvew7oAQEWLXIZorlQ=
X-Received: by 2002:a37:842:: with SMTP id 63mr13437745qki.266.1622723117800;
 Thu, 03 Jun 2021 05:25:17 -0700 (PDT)
MIME-Version: 1.0
References: <1zSZ.1622491132085975265.7AES@lists.yoctoproject.org>
In-Reply-To: <1zSZ.1622491132085975265.7AES@lists.yoctoproject.org>
From: "Scott Weaver" <weaverjs@gmail.com>
Date: Thu, 3 Jun 2021 08:25:06 -0400
Message-ID: <CAJGjTV_V9ihezdt3heQTpxoP9J6tT__L1nRJh6RPZ5aDxfv0=Q@mail.gmail.com>
Subject: Re: [yocto] Conditionally install files depending on locale
To: Amr Bekhit <amr@helmpcb.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You might consider creating a custom task in your recipe where you can
handle your unique requirements.

https://www.yoctoproject.org/docs/latest/bitbake-user-manual/bitbake-user-=
manual.html#tasks

Scott

On Mon, May 31, 2021 at 3:58 PM Amr Bekhit <amr@helmpcb.com> wrote:
>
> Hello,
>
> I'm trying to put together a recipe where I conditionally install files =
depending on the image locale. I can see from the reference manual that Yoc=
to will use the contents of IMAGE_LINGUAS to install locales during the roo=
t filesystem construction process. How can I go about creating locales for =
my custom packages/recipes?
>=20
>
