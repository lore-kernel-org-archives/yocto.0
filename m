Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B4CEC27C40
	for <webhook@archiver.kernel.org>; Thu, 24 Aug 2023 14:06:06 +0000 (UTC)
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
 by mx.groups.io with SMTP id smtpd.web11.11588.1692885956498631568
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Aug 2023 07:05:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=O9+SLB/V;
 spf=pass (domain: gmail.com, ip: 209.85.160.54, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-1cccbd43250so1053960fac.1
        for <yocto@lists.yoctoproject.org>; Thu, 24 Aug 2023 07:05:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692885956; x=1693490756;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DS/cAJuS/kXdX/tW46jh1MK3iE660+Sdc1dHshbKZO8=;
        b=O9+SLB/VBwcOJgZuYSwwxsm8H/NLebSsOg1/1arwa8x1ajNUadVkSUHQ9AOubfd3RE
         rKD5YiH730163/6WRyOlQfhEgTWyDnApOwXgAlvIm+ZA8W5WK8nB/LGrM9j05XiOJ1JE
         +NFDM+b+m/qSCnFq760VuHlRxMEtdpXMzHLeMd6Wlc6+/QWwJHyy/YlBJVuFEoKUZeXC
         J/vQRxltu/HAfNxU3mtZQSw5luQ1FvzAc+S624tcuB+o4+1hcBAlWQOBMljf+ayKZczf
         l2PFULPRnCvwGzh4Qefp+PO9JAMRob8ctopYoJ08y8Qg4r5+qqABdwKq21x+Lv6jtAp3
         PNUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692885956; x=1693490756;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DS/cAJuS/kXdX/tW46jh1MK3iE660+Sdc1dHshbKZO8=;
        b=X2dotXUvr6Z6NyLb2TU3+VTEzohyn7qaMRMoF5n9WAd4a88Qca/MSegiwvAhfNYpb4
         i3/dZKzbRsBmVm5ymzml5Uxf1ONcsdWZHi9XH74Galm9o354d3kcRVsE+5sLdVwyBjr5
         AZp+GXJw4cYXXADSZm7W9uxEt9GfELUr58Cp1O/LmZuPXmU77KYjw6WKPdCyciTJ8IQW
         VUBgll7//2aw1wh6dpnAUT7ELqedAPQleAGkfx0bvs2g7HKm1iEh/JmTSMIbyf9XAPFW
         SjBAhgdWV4Dekd6O81YwrqPRRBvGL4KIm4TMcuY2WbFW70iRWb4EmdvxjCvftvmAzjPX
         jOSQ==
X-Gm-Message-State: AOJu0YwKPNYL6frDOB19dEgOZZhsU+J2ZfvC4lkU/oAbd430gRRlmTUs
	wTvdQL10MX0TsBF6gKWB29xsq/ONH3ZOgGHN+/4=
X-Google-Smtp-Source: AGHT+IETE7fHJPC+bAmOKyQxk5vP7QbiXnTTOAUjLWhzGJiD55GAGz7B9SIMgBlWwn+HymJ+eyykMVwmfXc6DyCx/vw=
X-Received: by 2002:a05:6870:e412:b0:1b0:80d0:b895 with SMTP id
 n18-20020a056870e41200b001b080d0b895mr17140028oag.12.1692885955724; Thu, 24
 Aug 2023 07:05:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAMKF1sqe4sqEK6fO0nF2JKx-bGH6zxwZtKhbuxhDJC6=H+tJXA@mail.gmail.com>
 <246F203D-CE28-4FFB-B75B-430B65D64816@gmail.com>
In-Reply-To: <246F203D-CE28-4FFB-B75B-430B65D64816@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 24 Aug 2023 07:05:29 -0700
Message-ID: <CAMKF1sq-HLEDTVVwbqQXASE4GvH1zbWNe5fiaVF8=imKEwAH_g@mail.gmail.com>
Subject: Re: [yocto] [meta-virtualization] nerdctl broken in kirkstone
To: Belisko Marek <marek.belisko@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Aug 2023 14:06:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60879

does it work if you add do_compile[network] =3D "1"

On Wed, Aug 23, 2023 at 11:14=E2=80=AFPM Belisko Marek <marek.belisko@gmail=
.com> wrote:
>
>
>
> Sent from my iPhone
>
> > On 24 Aug 2023, at 02:23, Khem Raj <raj.khem@gmail.com> wrote:
> >
> > =EF=BB=BFwhich task is failing ?
> do_compile
> >
> >> On Wed, Aug 23, 2023 at 2:31=E2=80=AFPM Marek Belisko <marek.belisko@g=
mail.com> wrote:
> >>
> >> Hi,
> >>
> >> I'm trying to add nerdctl to an image using kirkstone release for meta=
-virtualization.
> >> I've added bbappend with following fix:
> >>
> >> SRC_URI =3D "git://github.com/containerd/nerdctl.git;name=3Dnerdcli;br=
anch=3Dmain;protocol=3Dhttps"
> >>
> >> (branch name in original recipe is master but main is required)
> >>
> >> but then anyways it fails with:
> >>
> >> rsync: [sender] change_dir "/data/projects/test/build/tmp/work/cortexa=
53-crypto-poky-linux/nerdctl/v0.18.0-r0/nerdctl-v0.18.0/src/import/vendor.f=
etch/github.com/Masterminds/semver/v3" failed: No such file or directory (2=
)
> >> | rsync error: some files/attrs were not transferred (see previous err=
ors) (code 23) at main.c(1327) [sender=3D3.2.5]
> >>
> >> And in ${BP} I cannot see any of those vendor stuff which should be pr=
esent. Is there some fix for that already pending or it's known issue?
> >>
> >> Thanks and BR,
> >>
> >> marek
> >>
> >> --
> >> as simple and primitive as possible
> >> -------------------------------------------------
> >> Marek Belisko - OPEN-NANDRA
> >> Freelance Developer
> >>
> >> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> >> Tel: +421 915 052 184
> >> skype: marekwhite
> >> twitter: #opennandra
> >> web: http://open-nandra.com
> >>
> >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >> Links: You receive all messages sent to this group.
> >> You automatically follow any topics you start or reply to.
> >> View/Reply Online (#60868): https://lists.yoctoproject.org/g/yocto/mes=
sage/60868
> >> Mute This Topic: https://lists.yoctoproject.org/mt/100924569/1997914
> >> Group Owner: yocto+owner@lists.yoctoproject.org
> >> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gm=
ail.com]
> >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >>

