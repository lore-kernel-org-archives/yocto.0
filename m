Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
 by mx.groups.io with SMTP id smtpd.web10.837.1626883457255409284
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jul 2021 09:04:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amarulasolutions.com header.s=google header.b=OvdTrqkK;
 spf=pass (domain: amarulasolutions.com, ip: 209.85.210.169, mailfrom: michael@amarulasolutions.com)
Received: by mail-pf1-f169.google.com with SMTP id y4so2542497pfi.9
        for <yocto@lists.yoctoproject.org>; Wed, 21 Jul 2021 09:04:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=hSrJkGG+Nw3cWnDqA8njzGdQVmwez0GnWfmR7B3rrJ0=;
        b=OvdTrqkKIiybpNqkr4Ph93B8X+8ZPOa94ryw3cx++2c7XNnADhoya8kY4PCZP7A1pM
         C/MBLAPwZJg5y7RjkLb4Q1TE+8+8VUCpWR7mc19+cytBuhEUmEKtyG6+4RdBjNMeZPH2
         pBy8AEpmHlWCLhRL6/DbDobuYgpH00VeU8XtU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=hSrJkGG+Nw3cWnDqA8njzGdQVmwez0GnWfmR7B3rrJ0=;
        b=qS1eT80u4utoi1+AcP9HRiwC47z66uS+slhrEYZZ+FZkiL+1pnjMzCZ8c4xjQtafuo
         RtZcrS7z3NdjucoG+ZB/+KiEPogYFDp2Gmixsw3LFUPXB8e31mRHOsOnRfSvx3EARPbH
         gKIPCOj2wZDjsSFg/dFzZLse5WzqSvlOGYDbjsiuD4/7AdoLVX+EcBHteSZvXZ7782vt
         TXH+Td5ALQPF7xP0PDnwnMZmOc12b3A3oThiktbXLTtJDFZkKthrZ8/rkeZs/C1KOkg0
         4AI7/zu7j2IEEzAGX/aN90IxrEFzoxsg2hY7xCvWaSc745ukzrgcHMyTBlIOK83QUKEK
         +x6w==
X-Gm-Message-State: AOAM531GxfSkBSGQ1cbDZuYra3VuujLMMPPYn+HelhF1prNQcK8n8ulc
	0qoHyuYK1BJqV3ew2T2V0ePIfVmiZErLkalkpTGN0EPJKuY=
X-Google-Smtp-Source: ABdhPJyY386Jyh6bofUzKyIJGUR+sn0rDnZ/T9tt/82XhBa5BnZFK1WkmHHWV6kg4p2aiDJijbkDPza6t98ukBcVCdk=
X-Received: by 2002:a05:6a00:9a3:b029:355:d45b:ad9a with SMTP id
 u35-20020a056a0009a3b0290355d45bad9amr6136670pfg.73.1626883456167; Wed, 21
 Jul 2021 09:04:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAOf5uwk3CqN1GDOcLs+2iidEoR-1xkMKqkga5J2KFGCWVwTB+g@mail.gmail.com>
In-Reply-To: <CAOf5uwk3CqN1GDOcLs+2iidEoR-1xkMKqkga5J2KFGCWVwTB+g@mail.gmail.com>
From: "Michael Nazzareno Trimarchi" <michael@amarulasolutions.com>
Date: Wed, 21 Jul 2021 18:04:04 +0200
Message-ID: <CAOf5uwngmOysC570Oyw6_2Pi3dDTAE_xbfOqNV75wizQMS9wAQ@mail.gmail.com>
Subject: meta-security layer
To: yocto@lists.yoctoproject.org, Armin Kuster <akuster808@gmail.com>
Content-Type: text/plain; charset="UTF-8"

Hi Armin

Using the meta-integrety layer and I'm able to deploy the image but I
don't have the attribute insde the ext4 and wic image I create.
Do you know what step are missing?

Michael
