Return-Path: <alex.kiernan@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDEDBC001E0
	for <webhook@archiver.kernel.org>; Wed, 16 Aug 2023 15:02:19 +0000 (UTC)
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com [209.85.166.54])
 by mx.groups.io with SMTP id smtpd.web11.162936.1692198137624601218
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Aug 2023 08:02:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=JTKN+161;
 spf=pass (domain: gmail.com, ip: 209.85.166.54, mailfrom: alex.kiernan@gmail.com)
Received: by mail-io1-f54.google.com with SMTP id ca18e2360f4ac-790f831c6fbso274620939f.2
        for <yocto@lists.yoctoproject.org>; Wed, 16 Aug 2023 08:02:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692198137; x=1692802937;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uWI1LP+K9q6I3lCrkGHB2cb5/R+y/cGCvqZO358k88I=;
        b=JTKN+161C8KGZfZR5zZ0i5hL4HFF5bER/2FkjADDtKsV7wCRKLwGEogL4B4Lk88mf/
         GGcVlkRPj94Z4kxXj7qkF9iCkEs3+QDIwz0K+9JJdXSYdxri0a4CgBo3NltnJoSnKNuR
         H4Fuk1YClq6ohxzf2VCzlbUPEq784gPLor1CtPwwX2sEqPkaFOX7MUobpNSsr+vb153q
         i7m2bI52mgK9p+Y97d2nU8b3Esyd7xZrsCS3QRJhZW3p+QJVqPtCuT1fuKPRZtYd0t2O
         DOwQknxs1V0aWUwKs2Sa5nkSOI84laxjMPR8DJDLahJU3nKAOBYOK6ZsSpDRV2y7UItB
         l40A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692198137; x=1692802937;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uWI1LP+K9q6I3lCrkGHB2cb5/R+y/cGCvqZO358k88I=;
        b=Znq2CKjBknD3xCpTAxZCmzRzl3F9vAkQRdOOQofJ/iAFPDs3AwEvcxEq7/OgMbRRyy
         60wf4qBYTbv0A2A6yLmI6tZkqZcSIqdt1RZXr9V4J9x3XLPyLBmtwYmj3wzNt3PhHfUj
         9YS3TJlIaH1USiOwUAEjUcW5v/acE6BiubQc0XX8un/QZ81IA86V75V+9Wj35mZOsxbr
         k7mMhl7Kry1tJ0Xwnc0O3yTMg9sbvL8cIfCoba/zS9adLHeYi330c9s08obZJbRnYwKt
         0Fifl3+QA91DJ3P+FGz08RqDS7rIyR8dS0u+7GbI6UN6Ibc7soTU3FXjWWeCpaMpyQ29
         9MIg==
X-Gm-Message-State: AOJu0Yzdy+tpLB2sZhG3YFt5nT583abirprRuIajv+sHBSVIrk2ON1Jr
	up+zgb10niQfSBJQgbrRUvs1fT1oEHBv//HEe/9fVX86ffQ=
X-Google-Smtp-Source: AGHT+IGocauuaDG/LtdiJ5EctkGzxZQbM9SiVzs5JVyAE7ra5yaTuW5BBr0kxzNCp5UNl+b0z2hxVCRwj6NKQd2qbBk=
X-Received: by 2002:a05:6602:1854:b0:783:572c:9caa with SMTP id
 d20-20020a056602185400b00783572c9caamr2408705ioi.0.1692198136708; Wed, 16 Aug
 2023 08:02:16 -0700 (PDT)
MIME-Version: 1.0
References: <ZNy7lBOvfDQheQ5j@nuoska> <29355.1692197116432631142@lists.yoctoproject.org>
In-Reply-To: <29355.1692197116432631142@lists.yoctoproject.org>
From: Alex Kiernan <alex.kiernan@gmail.com>
Date: Wed, 16 Aug 2023 16:02:05 +0100
Message-ID: <CAO5Uq5Sd7GuSJAgUdCQCVO4dT6BUKc+=iyYJS0388y00RzYF1w@mail.gmail.com>
Subject: Re: [yocto] How to switch between package version ?
To: nicolas.wirth@speedgoat.ch
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Aug 2023 15:02:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60810

Boost is a particular pain point... I have a project where I need two
different, incompatible versions of boost. I left the one in the
oe-core alone, then created a new recipe boost-1.82_1.82.0 which was
mostly copied from master with these changes to boost.inc:

diff -u /home/alexk/poky/meta/recipes-support/boost/boost.inc
recipes-support/boost/boost.inc
--- /home/alexk/poky/meta/recipes-support/boost/boost.inc
2023-01-12 08:25:40.990099356 +0000
+++ recipes-support/boost/boost.inc     2023-05-25 17:32:45.491123831 +0100
@@ -69,7 +69,7 @@
     mlprefix =3D d.getVar("MLPREFIX")
     for lib in d.getVar('BOOST_LIBS').split():
         extras.append("--with-%s" % lib)
-        pkg =3D "boost-%s" % (lib.replace("_", "-"))
+        pkg =3D "%s-%s" % (d.getVar("BPN"), lib.replace("_", "-"))
         if "-native" in pn:
             pkg =3D pkg + "-native"
         packages.append(mlprefix + pkg)
@@ -86,9 +86,9 @@
 FILES:${PN}-graph_parallel =3D "${libdir}/libboost_graph_parallel.so.*"
 FILES:${PN}-locale =3D "${libdir}/libboost_locale.so.*"
 FILES:${PN}-mpi =3D "${libdir}/mpi.so ${libdir}/libboost_mpi*.so.*"
-FILES:boost-serialization =3D "${libdir}/libboost_serialization*.so.* \
+FILES:${PN}-serialization =3D "${libdir}/libboost_serialization*.so.* \
        ${libdir}/libboost_wserialization*.so.*"
-FILES:boost-test =3D "${libdir}/libboost_prg_exec_monitor*.so.* \
+FILES:${PN}-test =3D "${libdir}/libboost_prg_exec_monitor*.so.* \
        ${libdir}/libboost_unit_test_framework*.so.*"

 # -dev last to pick up the remaining stuff

Depending on which versions you're trying to use, you might need something =
like:

# We don't need old bjam-native to build, current upstream is fine and also
# allows boost-1.82 to build
python() {
    raise bb.parse.SkipRecipe('Force upstream bjam-native.')
}

as a bbappend for the older version so it's skipped.

On Wed, Aug 16, 2023 at 3:45=E2=80=AFPM Nicolas Wirth via
lists.yoctoproject.org
<nicolas.wirth=3Dspeedgoat.ch@lists.yoctoproject.org> wrote:
>
> I wasn't aware of BBMASK; that's useful, thank you.
>
> I find it becoming clearer for me. However, I'm wondering how to address =
version conflicts in the following scenario:
>
> GCC 11.2 in the Honister branch
> Boost 1.74 in the Gatesgarth branch
>
> I require the use of both these versions. Although they are both present =
in the meta layer, they exist on separate branches. What would be the solut=
ion in this case? Would it involve having two clones of the layer on my bui=
ld host? Or perhaps writing my own Boost 1.74 recipe?
>
> Neither option appears to be straightforward to me. Yet, this doesn't see=
m like an uncommon scenario. Others must have encountered the need for diff=
erent recipes from the same layer but belonging to different branches. Is t=
here a clear workflow for handling this?
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60809): https://lists.yoctoproject.org/g/yocto/messag=
e/60809
> Mute This Topic: https://lists.yoctoproject.org/mt/100776894/3618097
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kiernan@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
Alex Kiernan

