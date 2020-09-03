Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
 by mx.groups.io with SMTP id smtpd.web10.3786.1599094856202639960
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Sep 2020 18:00:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=QIhXg6F/;
 spf=pass (domain: gmail.com, ip: 209.85.160.178, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f178.google.com with SMTP id b3so677340qtg.13
        for <yocto@lists.yoctoproject.org>; Wed, 02 Sep 2020 18:00:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=DrItuGClQIQ0gjFp/DNrqgFpo/IT+5WirSUagst4aDo=;
        b=QIhXg6F/R/AVPHj1adbRtybvv+N13NH4ZMGVj2LhwvQivyYPUXb5MWtZIlMPrvWvXV
         Hw2Ag8J9EVlVPfdZSqRn0f+PjYz2wgHjd6RQWmqlrBcENz5cPUS0+XJLutDmFBFu8/3+
         GjeVyTo1XMUvUwrMa5GtLZMcxsa+32yin8eQ5M6MbXFkfZpblKImcIHVeSHfbnb1B/Bs
         XLBGNyU9/dvxEg/jaS2f/Zlvv8xO0fG2l+pzMz4FDqPgjyQJYsAkba/4NKSqKEjVcPx+
         u8HpodYio54T7KAnb4rLZkCCt1zQE47bCOEOrGR4F+oRdsrdH37413bOeKKYwuEDwSi0
         hRBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=DrItuGClQIQ0gjFp/DNrqgFpo/IT+5WirSUagst4aDo=;
        b=RyQUWJ+l9ankdg6y3Z1/gh2LdLDZlOFtv5fBURPYhY1x5tMCi6u+ly7Q9io6fgXLTj
         Vl+tbCHXOopKrNIaG2+e4N0F6intJxKXFfvFcCh/Zm6mDXBoBisHVkF+mYXwyrSLbEAe
         /ZxxZ8w2G7TU9NVGAZUz63btkAVNanjDQe6LRi5OqlmTB+0bthQh4x4xiWVMO28fOuol
         0ot/3BK1fKWsbl60NHEmkbZoeO2Sad/bA/BbS6om0w1hq43D2CtL+Xodx4U7+JlTMlQl
         Gm92rHuDZUJ9E17PnBr1TL+lwroJOn4S7hTfvbzaFuYD8HiPbgVQPyMn4WMRN1LiFCW1
         Ez4w==
X-Gm-Message-State: AOAM5321xfHrlrxnKhpkYxaAsS+dlRFZnV1woEpkSg++CkzAagbXU+mW
	cSI3wtaw90EdoEx/rIilxNiHApTuvkANvI454gpTYjhQ14HGWA==
X-Google-Smtp-Source: ABdhPJykk87i1Gj/z9znrSDxa6aBorrxmaNbZNaKpDN3Q3el1+QXbNpDjY2VIqcc+N4N8Xf1xxHkzTCvk8KcZwvPY/M=
X-Received: by 2002:ac8:2962:: with SMTP id z31mr995047qtz.88.1599094854983;
 Wed, 02 Sep 2020 18:00:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAEFUPH3A6vnmB8X-43hchgJY2juvqJp_Lhf+e1iOv2GsPzZWLA@mail.gmail.com>
In-Reply-To: <CAEFUPH3A6vnmB8X-43hchgJY2juvqJp_Lhf+e1iOv2GsPzZWLA@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 2 Sep 2020 18:00:28 -0700
Message-ID: <CAMKF1so9gTfy5FuDJu0NvCp9j42SJT=7G+UFHjrbUDHqq2+w7Q@mail.gmail.com>
Subject: Re: [yocto] Query on building applications and catch exceptions across different shared libraries
To: SIMON BABY <simonkbaby@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 2, 2020 at 5:18 PM SIMON BABY <simonkbaby@gmail.com> wrote:
>
> Hello,
>
> I have an issue with my throw , catch code in c++.  If i throw an error =
after the openssl library call, my application crashes.  If my application =
wishes to throw and catch exceptions across different shared libraries do w=
e have any specific settings I can add in my bitbake recipe?
>

are you using -fexceptions to compile your application ?

> regards
> Simon
>=20
