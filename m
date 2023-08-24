Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4E77C27C40
	for <webhook@archiver.kernel.org>; Thu, 24 Aug 2023 05:23:23 +0000 (UTC)
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
 by mx.groups.io with SMTP id smtpd.web11.4412.1692854596165286572
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Aug 2023 22:23:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=OeJS6er/;
 spf=pass (domain: gmail.com, ip: 209.85.160.47, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-1c4f4d67f5bso4007264fac.0
        for <yocto@lists.yoctoproject.org>; Wed, 23 Aug 2023 22:23:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692854595; x=1693459395;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/UoFKB/CRS4idC+A4JgyrvDe6YBVzJy2+mATt78FxE8=;
        b=OeJS6er/LikbnEOzqXN3fHNVav22Ly+Ic+BoP9NGEtcsyTEau7bNnWqmurz+uLMOU0
         +9gszaVLUTnN85cCun2qjb+6S9e2wLOknHp/k2Y9arcuNPqBXmAx90zgs3S82lVP2H5f
         GfsZcOx5RcIvUH8NLh5bF28i16VzzGB1zFzaJbyNQ6AxPFC+pCK1i+2AsfLBCCg3ngIt
         kHFyB7ziY5Z55Bd21cVCl1FtAOyOq71vbHhI/85pC/km2aSRaNwYcwFGRjpaQ5np8vCG
         7c/EiDy1RCyMy/N6Kp+jBHoxCNqUAbZsTm5nrEwIWG8ZCQVtIZL+t4P279/rxGjR/aGI
         O95w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692854595; x=1693459395;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/UoFKB/CRS4idC+A4JgyrvDe6YBVzJy2+mATt78FxE8=;
        b=J5/BWmk35yq13c4//tnRs0/Z+AQREnZjQ6iWb/QxEj3WwtkBn5BoHvsCvmwA5kM732
         Au5faQqMZ2O03aqzPqwfTyiEZ9jZ/abafaJOyvwZbotffcg4F+j67N+sk4EuC3ZLQZJS
         IGrJ2SFfkM1OjG5hLZFRtfzw97F61NNU7xJp355cPZ3P4vcKvXAdjq1k7tJMgmj3cAog
         MWVqashT4/dD2rI/F/tHV3iuvdqh/1cUiz5ifok+J4Q5wQ1NmYJYHiRagvZ1xP45MmMm
         h139ewYwQ6ppnNp+Tiz55UYdJEeqlHCAMq2oWjrCWZRDxyf8xD4BBGKpHZ0QGik/PBMo
         QK6g==
X-Gm-Message-State: AOJu0YzQjwne+PocSyyZ/w8RnuSbgjr6/0ysL01i4FNvhAXIcvlVtqx7
	8gkKucvCQo6+DbgvGTbZLJgtnsNXwaTEYvPQOU7bJ1FFt2pYxg==
X-Google-Smtp-Source: AGHT+IHf0O5QLK5+RqHzb3Q2smeNspSd5LGr+R7ERcCZavxkbb/iH/rVfJgBcMupIuUIedWmFL/9TASKAOWSXSuii8o=
X-Received: by 2002:a05:6871:8a3:b0:1bb:951e:3d61 with SMTP id
 r35-20020a05687108a300b001bb951e3d61mr17464043oaq.36.1692854595213; Wed, 23
 Aug 2023 22:23:15 -0700 (PDT)
MIME-Version: 1.0
References: <4243.1692798656387052619@lists.yoctoproject.org> <19088.1692853896756658318@lists.yoctoproject.org>
In-Reply-To: <19088.1692853896756658318@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 23 Aug 2023 22:22:49 -0700
Message-ID: <CAMKF1spQCoSRopT1Y5Qiar_RBt8XxXoJLeKL2T4FxifqrVhXLg@mail.gmail.com>
Subject: Re: [yocto] EXTRA_USERS_PARAMS doesn't work to generate password for
 root and add new users
To: Jeffrey Simons <jeffrey.simons@boonedam.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Aug 2023 05:23:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60871

On Wed, Aug 23, 2023 at 10:11=E2=80=AFPM Jeffrey Simons
<jeffrey.simons@boonedam.com> wrote:
>
> On Wed, Aug 23, 2023 at 03:50 PM, Crane wrote:
>
> >
> > On Wed, Aug 23, 2023 at 03:45 AM, Mauro wrote:
> >
> > >
> > > You can put the encrypted password (the result of the "openssl passwd=
 -6
> > > root" command) directly in the variable, taking care to put a "\" bef=
ore
> > > the three "$" contained in the string. Something like this:
> > >
> > > EXTRA_USERS_PARAMS=3D" usermod -p
> > >
> > '\$6\$CEM0hANiVS9VXN8N\$Q9XK1KTpq2faq2fNbSRLNeeA4mmQsl8g1Gwl3QnTPlRPb5l=
jCAa./bbhffcthXxUen4jSFL6HKGQPlHZNQkfA/'
> > > root; useradd -p
> > >
> > '\$6\$5wVybJkbuowR0iMi\$tnEJEEbXbcRfksKRSt7rjlY1hRERrjqFOlCaa0s1ivISxAH=
T7MFdcnZvVbRHgkqRSYzA1oLUxtR0LuvDTMPR5/'
> > > crane; "
> >
> > Tried as well. And a \ is added automatically in front of $, so no need=
 to add
> > it. But still not working.
> > There must be something else missing. Anyway to debug in this case?
> >
>
> From testing I have observed that the extrausers does not work from a rec=
ipe, while useradd works correctly from a recipe.
> The extrausers should work as expected from within the distribution descr=
iption, so you might want to try that.
>
> For debugging you could print the bitbake variables to screen (-e) and gr=
ep on the EXTRA_USERS_PARAMS.
>

See this

https://github.com/YoeDistro/yoe-distro/blob/master/conf/projects/rpi4-64/c=
onfig.conf#L57-L66

you might try something like that in config metadata e.g. local.conf

> Hope this is will help you solving the issue.
>
> --
> With kind regards,
>
> Jeffrey Simons
>
> Software Engineer
> Royal Boon Edam International B.V.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#60870): https://lists.yoctoproject.org/g/yocto/messag=
e/60870
> Mute This Topic: https://lists.yoctoproject.org/mt/100887124/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

