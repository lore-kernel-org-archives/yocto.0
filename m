Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EFB67C04A6A
	for <webhook@archiver.kernel.org>; Wed, 16 Aug 2023 15:30:59 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web11.163705.1692199853700250164
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Aug 2023 08:30:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=dgUvmPi8;
 spf=pass (domain: gmail.com, ip: 209.85.167.50, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-4fe389d6f19so10448202e87.3
        for <yocto@lists.yoctoproject.org>; Wed, 16 Aug 2023 08:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692199852; x=1692804652;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7pyetLEtZ9wpmVQfMhvwSJHxBy3QWb4QimTofWAeGmk=;
        b=dgUvmPi8QnFUukZZyfP9fy3haGFDR02m4C2DH5PfcMTFs7ZLxyd0YKf2HJo08XEROi
         tkn7W7JrTLwvW/VbgWgfJhMOInNgAoWEsMzomOcH4jNlVhNsS06z7cZ5+yY4/xFgOpKm
         nHyzBRbAq0i71tQ2ky7FNHP8VIi4VD7iS3F8eLrij8sBh8LR8mSwSnHdO8UlnTRLihSE
         qC3/v+b/Nu0AOQyKpYdoGhAuwJ+9mu74xV+mBXOAGnIccaRmBX7jDd3NPU2Kxc/VvM8n
         fFaZ2YBnIjPiyXJmQqu3KwoD7skQsjqKJANHsJjuimA53ywjpL5GnipD9vZt3Ahf96ws
         shOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692199852; x=1692804652;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7pyetLEtZ9wpmVQfMhvwSJHxBy3QWb4QimTofWAeGmk=;
        b=JMx5IWdm3aSH/3BS2chFxGoUMidcDFF6iO9XxCbkC+t1qbCpVSoFrrjFET3pYQFqbc
         C9OujswIMIQQmO2l7y8ABh6gHEvu9jUe6pwdDrKuuHFant62uP90MXKY1IRYec2pudBk
         SAEehr2a2aRbxeoqcFQtnTGbM8hcNhCxAXkKbhU797yWDbkztYgTFyu/6nv/62Gy+DU8
         njygBlEj559i53d53M2s6gwcaE0euoxIkitz+myo+fdtRKitM3WzGkFA8YmQzTeq5l6+
         URT3fzPOpE/G0vfRi/Cv6FCHeWr2Ojk68PmF2EgixcTKDijbfG2Me16FvkwdRn7gF9gx
         VUdA==
X-Gm-Message-State: AOJu0YxM7GJYnCM24DYmGq1WKYta+HcAiOvOSwdfXpOuBcxN21dNVRw1
	pgUxjqTDAnDkhRrEZZHMn/NWx0CwyBTTGKGCIK8=
X-Google-Smtp-Source: AGHT+IH3k4Ayh8/uQaxewLmhujbrNl1CR0mo47Qg/NkGZGBszYi67aH+xfHuBSUY2jQ+AjQKU+8UOM9EA+8dNh9i4QE=
X-Received: by 2002:a19:8c05:0:b0:4fb:fdf1:8b15 with SMTP id
 o5-20020a198c05000000b004fbfdf18b15mr1494253lfd.59.1692199851450; Wed, 16 Aug
 2023 08:30:51 -0700 (PDT)
MIME-Version: 1.0
References: <ZNy7lBOvfDQheQ5j@nuoska> <29355.1692197116432631142@lists.yoctoproject.org>
 <CAO5Uq5Sd7GuSJAgUdCQCVO4dT6BUKc+=iyYJS0388y00RzYF1w@mail.gmail.com>
In-Reply-To: <CAO5Uq5Sd7GuSJAgUdCQCVO4dT6BUKc+=iyYJS0388y00RzYF1w@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 16 Aug 2023 17:30:40 +0200
Message-ID: <CANNYZj9-s7k81c8QA8iMM7=7oTBYWcg17+nUMUCRY4-n8Q1Yfg@mail.gmail.com>
Subject: Re: [yocto] How to switch between package version ?
To: Alex Kiernan <alex.kiernan@gmail.com>, nicolas.wirth@speedgoat.ch
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Aug 2023 15:30:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60811

Perhaps we need to step back for a bit. Can you explain why you (i.e.
Nicolas) need an older boost version in particular? Generally
speaking, rolling back component versions is painful and best avoided:
it requires advanced knowledge, you might spend a lot of time on it,
and still don't reach a working setup.

Alex


On Wed, 16 Aug 2023 at 17:02, Alex Kiernan <alex.kiernan@gmail.com> wrote:
>
> Boost is a particular pain point... I have a project where I need two
> different, incompatible versions of boost. I left the one in the
> oe-core alone, then created a new recipe boost-1.82_1.82.0 which was
> mostly copied from master with these changes to boost.inc:
>
> diff -u /home/alexk/poky/meta/recipes-support/boost/boost.inc
> recipes-support/boost/boost.inc
> --- /home/alexk/poky/meta/recipes-support/boost/boost.inc
> 2023-01-12 08:25:40.990099356 +0000
> +++ recipes-support/boost/boost.inc     2023-05-25 17:32:45.491123831 +01=
00
> @@ -69,7 +69,7 @@
>      mlprefix =3D d.getVar("MLPREFIX")
>      for lib in d.getVar('BOOST_LIBS').split():
>          extras.append("--with-%s" % lib)
> -        pkg =3D "boost-%s" % (lib.replace("_", "-"))
> +        pkg =3D "%s-%s" % (d.getVar("BPN"), lib.replace("_", "-"))
>          if "-native" in pn:
>              pkg =3D pkg + "-native"
>          packages.append(mlprefix + pkg)
> @@ -86,9 +86,9 @@
>  FILES:${PN}-graph_parallel =3D "${libdir}/libboost_graph_parallel.so.*"
>  FILES:${PN}-locale =3D "${libdir}/libboost_locale.so.*"
>  FILES:${PN}-mpi =3D "${libdir}/mpi.so ${libdir}/libboost_mpi*.so.*"
> -FILES:boost-serialization =3D "${libdir}/libboost_serialization*.so.* \
> +FILES:${PN}-serialization =3D "${libdir}/libboost_serialization*.so.* \
>         ${libdir}/libboost_wserialization*.so.*"
> -FILES:boost-test =3D "${libdir}/libboost_prg_exec_monitor*.so.* \
> +FILES:${PN}-test =3D "${libdir}/libboost_prg_exec_monitor*.so.* \
>         ${libdir}/libboost_unit_test_framework*.so.*"
>
>  # -dev last to pick up the remaining stuff
>
> Depending on which versions you're trying to use, you might need somethin=
g like:
>
> # We don't need old bjam-native to build, current upstream is fine and al=
so
> # allows boost-1.82 to build
> python() {
>     raise bb.parse.SkipRecipe('Force upstream bjam-native.')
> }
>
> as a bbappend for the older version so it's skipped.
>
> On Wed, Aug 16, 2023 at 3:45=E2=80=AFPM Nicolas Wirth via
> lists.yoctoproject.org
> <nicolas.wirth=3Dspeedgoat.ch@lists.yoctoproject.org> wrote:
> >
> > I wasn't aware of BBMASK; that's useful, thank you.
> >
> > I find it becoming clearer for me. However, I'm wondering how to addres=
s version conflicts in the following scenario:
> >
> > GCC 11.2 in the Honister branch
> > Boost 1.74 in the Gatesgarth branch
> >
> > I require the use of both these versions. Although they are both presen=
t in the meta layer, they exist on separate branches. What would be the sol=
ution in this case? Would it involve having two clones of the layer on my b=
uild host? Or perhaps writing my own Boost 1.74 recipe?
> >
> > Neither option appears to be straightforward to me. Yet, this doesn't s=
eem like an uncommon scenario. Others must have encountered the need for di=
fferent recipes from the same layer but belonging to different branches. Is=
 there a clear workflow for handling this?
> >
> >
> >
>
>
> --
> Alex Kiernan
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60810): https://lists.yoctoproject.org/g/yocto/messag=
e/60810
> Mute This Topic: https://lists.yoctoproject.org/mt/100776894/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

