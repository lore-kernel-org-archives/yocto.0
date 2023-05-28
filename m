Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF5CC7EE23
	for <webhook@archiver.kernel.org>; Sun, 28 May 2023 13:27:37 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web11.28892.1685280450631832191
 for <yocto@lists.yoctoproject.org>;
 Sun, 28 May 2023 06:27:31 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=b6Bnycor;
 spf=pass (domain: gmail.com, ip: 209.85.167.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-4effb818c37so2519075e87.3
        for <yocto@lists.yoctoproject.org>; Sun, 28 May 2023 06:27:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685280449; x=1687872449;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uiB+0143yl8AfuQAn6GTmmvpi/V3ibkoErOMyqg/BsY=;
        b=b6Bnycors9+TTIzLiZ8rfCdyVwqLx4cmZy/3FB8jWZPeWlOO9fsZr49CI0RIiZVhVn
         qV7GSurqK7WT4q03yf91gm4a/xP4NCKKOpidcUg7Vd/snGOdS5SzOYhjYcWL4RhyFArM
         QUjTLbL0eiSKZpAtunF/T4XSclNFH/dXySp/4kfCpSWytv2/xUjDeOJIzRQuk3GFy3GQ
         jDqtM8Qu1eEW13y2WEggOzcL7BUvDoF0LhAV6lgo0Y8RdhId2AiobKoV8ymRf9Ob6JZL
         Vk6Yb5dolSpWEuKjCaGn/37OPdkxzjB3m+A+oy9zRTbpxKU6xtNzC2H+UvGhzQ6HL4Ko
         X2Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685280449; x=1687872449;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uiB+0143yl8AfuQAn6GTmmvpi/V3ibkoErOMyqg/BsY=;
        b=eionpFNKEg3RbyI9Br31qePGvlCNZNbS4umo+xe5shOkxeIaTtKIS3I/TRaTGV6wlI
         iohvWZgR+ekCmFbSMibScTQSdz1y5bHMqOcayPTzPy7Yh+R+i7cTETVzWgKNVZXDIKZd
         UxnplGiy2zdaVr+XLSeo15UnpdpVe0N2qh+Fcw2pAv3+IKNOguVrYl4Ydb7S1rXi0qQ9
         Y2Jq09e+v+uKg8fVRkqpTArqyPLsbVOu8oAeldHgzNHQTvEKJjapoQcwVxHcimza3AT1
         jYeekuLrwsNkJLf4p38YjVJ2JoLAeZT/gFUKB4/SaKHZf681gOFusULcHWohCX1NwQ6D
         6lbQ==
X-Gm-Message-State: AC+VfDxSTBaM+4Uy/OvpOMfNvHS87Zyld1waJG8eNn/ApFkm6zsSuLNM
	w+ohYE5Pvp9HvcPcJ2ovwtIwEeyN8K0Pf8QnSvM=
X-Google-Smtp-Source: ACHHUZ502lwSujdHk5wiceE4rBQDoTjXA7E0IjEeJkSMu1iwe9AxioClQdqSv+f1wmUvi29RXI626UjtUnJN7s6qCWs=
X-Received: by 2002:a19:ad0a:0:b0:4f3:a051:58df with SMTP id
 t10-20020a19ad0a000000b004f3a05158dfmr2464721lfc.59.1685280448504; Sun, 28
 May 2023 06:27:28 -0700 (PDT)
MIME-Version: 1.0
References: <o7MV.1685188809783337186.RafB@lists.yoctoproject.org>
In-Reply-To: <o7MV.1685188809783337186.RafB@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sun, 28 May 2023 15:27:16 +0200
Message-ID: <CANNYZj_xF4f7RuYHz3uuDer9sCi9qM8xdVShNkwrRyOg7Hbg_w@mail.gmail.com>
Subject: Re: [yocto] OSError: [Errno 40] too much recursions while resolving #hardknott
To: Mahendra Sondagar <mahendrasondagar08@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 28 May 2023 13:27:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60134

The recipe contains this in do_install:

    install -m 0755 libmodem.so ${D}${libdir}

    # Create symbolic link
    ln -sf libmodem.so ${D}${libdir}/libmodem.so

This creates a symbolic link into the build directory which is
definitely incorrect. Just copying the file with install is enough.
What was the intent here?

Alex

On Sat, 27 May 2023 at 14:00, Mahendra Sondagar
<mahendrasondagar08@gmail.com> wrote:
>
> Hi.. there
>
> Hope all are doing well
>
>
>
> I'm dealing with the Makefile based project, for which i have created the=
 recipe file
>
> The file architecture of the recipes file is as follows,
>
> |---modem-api
> =E2=94=9C=E2=94=80=E2=94=80 files
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 GpioApi.c
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 GpioApi.h
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 main.c
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 Makefile
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 modem.c
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 modem.h
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 target_build
> =E2=94=82       =E2=94=94=E2=94=80=E2=94=80 Makefile
> =E2=94=94=E2=94=80=E2=94=80 modem-api_1.0.bb
>
>
> - During the building the recipe modem-api, all files are fetched and com=
piled with out any issue
> - The aim is to create the shared library called libmodem.so which need t=
o install in /usr/lib directory after the build
>
>
> Problem statement
>
> - During the do_package, it's generating the error message as OSError: [E=
rrno 40] too much recursions while resolving
>
> - For the instance, i have share the make file, recipe file and error log=
s here
>
> - pl. can anyone help me here ?
>
> all comments and suggestions welcome
>
>
>
> Thanks
>
> Mahendra
>
>
>
> Error logs
>
> ERROR: modem-api-1.0-r0 do_package: Error executing a python function in =
exec_python_func() autogenerated:
>
> The stack trace of python calls that resulted in this exception/failure w=
as:
> File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
>      0001:
>  *** 0002:split_and_strip_files(d)
>      0003:
> File: '/home/mahi/Documents/AIO_System/var-fslc-yocto/sources/poky/meta/c=
lasses/package.bbclass', lineno: 1157, function: split_and_strip_files
>      1153:                    staticlibs.append(file)
>      1154:                    continue
>      1155:
>      1156:                try:
>  *** 1157:                    ltarget =3D cpath.realpath(file, dvar, Fals=
e)
>      1158:                    s =3D cpath.lstat(ltarget)
>      1159:                except OSError as e:
>      1160:                    (err, strerror) =3D e.args
>      1161:                    if err !=3D errno.ENOENT:
> File: '/home/mahi/Documents/AIO_System/var-fslc-yocto/sources/poky/meta/l=
ib/oe/cachedpath.py', lineno: 229, function: realpath
>      0225:            if e.errno =3D=3D errno.ELOOP:
>      0226:                # make ELOOP more readable; without catching it=
, there will
>      0227:                # be printed a backtrace with 100s of OSError e=
xceptions
>      0228:                # else
>  *** 0229:                raise OSError(errno.ELOOP,
>      0230:                              "too much recursions while resolv=
ing '%s'; loop in '%s'" %
>      0231:                              (file, e.strerror))
>      0232:
>      0233:            raise
> Exception: OSError: [Errno 40] too much recursions while resolving '/home=
/mahi/Documents/AIO_System/var-fslc-yocto/build_aio/tmp/work/cortexa7t2hf-n=
eon-fslc-linux-gnueabi/modem-api/1.0-r0/package/usr/lib/libmodem.so'; loop =
in '/home/mahi/Documents/AIO_System/var-fslc-yocto/build_aio/tmp/work/corte=
xa7t2hf-neon-fslc-linux-gnueabi/modem-api/1.0-r0/package/usr/lib/libmodem.s=
o'
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60132): https://lists.yoctoproject.org/g/yocto/messag=
e/60132
> Mute This Topic: https://lists.yoctoproject.org/mt/99166192/1686489
> Mute #hardknott:https://lists.yoctoproject.org/g/yocto/mutehashtag/hardkn=
ott
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

