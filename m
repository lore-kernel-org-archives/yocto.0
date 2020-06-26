Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web11.9621.1593183860681990398
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Jun 2020 08:04:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=RsJTKH0E;
 spf=pass (domain: gmail.com, ip: 209.85.221.47, mailfrom: jpewhacker@gmail.com)
Received: by mail-wr1-f47.google.com with SMTP id k6so9841264wrn.3
        for <yocto@lists.yoctoproject.org>; Fri, 26 Jun 2020 08:04:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=/RIifx/fN6FZfLzKv4vOCgXU6lbbrq6K/v5q9hTqBfs=;
        b=RsJTKH0Erl+ICoMdDBf31p2pmyu9vomaswU6xvYiNk/efC6UDoKTUI3ga5AdMrfcBC
         gJSSXc2aYONeR+uCvIIXaeJBuv8abA6u7GLVL/KkldgqtuDYf1WloyDjbF9a/PtE0yZs
         4Lk9o1oZd0sFDAbdA8GMc7nMcs2BFx5orAQoI6S2UcaT/Oc/xfQesLI6GmLJG1DKoEVS
         5TXWOjK6NPtrKMDlc+rpY0lpbWdBNMo7LaB1tj8f67Ac0lzrPiOSKyiqK5yBc7MlgIwe
         jbRaGsdhvat7sygeLzzOVpQMAEPpVkImkKc64ytE1mDk2NC4wAqpIjLg8DZdaCh5L8O6
         a23A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=/RIifx/fN6FZfLzKv4vOCgXU6lbbrq6K/v5q9hTqBfs=;
        b=Y/50zAeU608J2CfKtAja38g/TgTHFq2BaHhQxMNmDgzOm0rBZQ/cru2tDtnEUT/MKC
         tL6c0WnBzhjLiBNeuXyj5xTKxMH4GWyHPFToJcuqNRwBeRExmuYv3qgrQjJNlgprqVqg
         qn08yiJoK37eWzfPntZd5cVCqftOC2lcx1xUbzprKO5wDifkOOsFQU/zM0q35vqY6iDj
         2WJJl+TTjynpOmB8TiAJ9RjXpGrCH+8GEuX+jCIhGkvh1zyDCQLxwl+kvZCcTWtFm2Dn
         PCZMiuPPd9k1rVSQvb8wUerPOcmVBV/oYhfHA1Mr0RTwq1sg2b1DshlVKIQux41Gr7Nj
         kN5Q==
X-Gm-Message-State: AOAM5306S+TnOOPR6O069sy3K9qY4y8CYveoVUlHADfB/f8gdoEZH7WB
	WAoFEMJp+x7ojx2w/ubAtFtaBQS43aEUDThV16M=
X-Google-Smtp-Source: ABdhPJySOGjvpGP7mxyh75poMEDvqyJ7OpG4wEam0tbkCeOtb/eDDIE2I+ZUuM2R4ysBmDei30v6kZcelKYuL3qaPEs=
X-Received: by 2002:adf:f104:: with SMTP id r4mr4435530wro.90.1593183859140;
 Fri, 26 Jun 2020 08:04:19 -0700 (PDT)
MIME-Version: 1.0
References: <JEJn.1593183336955846250.nd6b@lists.yoctoproject.org>
In-Reply-To: <JEJn.1593183336955846250.nd6b@lists.yoctoproject.org>
From: "Joshua Watt" <JPEWhacker@gmail.com>
Date: Fri, 26 Jun 2020 10:04:08 -0500
Message-ID: <CAJdd5GbMWo28o1Uson1JLVPFCyEVT0eh-poA6UqPWMOh++H9Xw@mail.gmail.com>
Subject: Re: [yocto] #yocto Using BBMASK or BBFILES with multiconfig
To: schadley@umich.edu
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 26, 2020 at 9:55 AM <schadley@umich.edu> wrote:
>
> Hi all,
>
> I'm working on a project using multiconfig, with Yocto version 2.6. I'd =
like to enable or disable an entire layer, depending on which multiconfig i=
s selected. My initial thought is to use BBMASK, and mask out undesired lay=
ers in a multiconfig conf file, but I'm having trouble getting this to work=
.
>
> For example, I have layers meta-vm0 and meta-vm1, and multiconfigs vm0 a=
nd vm1. I want to mask the files from meta-vm1 when the vm0 configuration i=
s selected. So, I add to vm0.conf:
> BBMASK =3D "meta-vm0/recipes-core/init-ifupdown/init-ifupdown_1.0.bbappe=
nd"
> However, the file still is included in the build.
>
> If I add the same line to layer.conf instead, the file gets masked corre=
ctly. Is there some syntax I am missing that's different between layer.conf=
 and multiconfig conf files? Also, is there a better way to accomplish this=
 goal - say by editing BBFILES directly in the multiconfig conf file?

Support for doing this was just recently added on master, and is due
to be released until the 3.2 release. If you need it on 2.6, you'll
have to backport it yourself. If you look on master for commits by me
(JPEWhacker@gmail.com) you can find the relevant things to backport.


>
> Cheers,
> Scott
>
>=20
