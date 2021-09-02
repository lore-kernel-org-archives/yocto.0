Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
 by mx.groups.io with SMTP id smtpd.web09.4257.1630571101688239299
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Sep 2021 01:25:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=KzVtv/CG;
 spf=pass (domain: gmail.com, ip: 209.85.217.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f41.google.com with SMTP id p14so785975vsm.2
        for <yocto@lists.yoctoproject.org>; Thu, 02 Sep 2021 01:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=j/KLFb8b+/3UQiJfHMUxwOzNKWN0DGHLvXh2W3D4GeA=;
        b=KzVtv/CGYYuKCABBn3lTnI8oiAfw2f90gFBoGz6wnUr2UspHZ/9Wl1OZBitkEmvvKc
         kwSOjm0AspgV5AlFC2dyHypIVMcIL8DOU7tStPFwchbgKXjzQ452MrjMLPrkL5H6Ilra
         a20lGts9zLo3Etj1UTXEYzg0a08BX32Af+/dcOUnTIxjWC92irI+6mK9d4z9GuV2x7d0
         V+0/po32+8uOXreB63wxNNm3jSlrDRyHkefUthoEwAH0YlBQmyYC+DuFm39huDFaxNSg
         TKSilP1EuE2+N/PtyQ43qgOhmYMp0BFWYPTmfvGyBzB4dJOwnTBqc7Rzm6+RRGZVYvHu
         iqHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=j/KLFb8b+/3UQiJfHMUxwOzNKWN0DGHLvXh2W3D4GeA=;
        b=cDwE+L86arkUuTUrbk2hIrsex1aT7YyMHV44eZkWW7k/HrhLD3/D2PlPeAY3Hf7jAV
         I18scHy2n70bS7R+xuoRHffvJ0OhHjg5ENAutqi+LWm+7jIxJmekDDBU4wgoFr7Wseeh
         o9zgaHRxVdx7DPZ9Cwzb8ym8a5vF95cSoOB7uwTtHVqWl6YiD5TxjXHl8f5/czdSLRoV
         0kaUxR45e0GGTgIw5sfW16udZZBmW35myPW8x24hgi5qVysxRUnfWq2n1WZkdrMU6Z7L
         dK2Ar+noYVRn/M/GnQiWMNh/IIzYURAsw3M2ZZvafROsfWw8XoOpqmLyVcguwe/2YtKV
         kRmw==
X-Gm-Message-State: AOAM532k0wNROP7NJGEpiA/vk+Bh6YB4xcRXgSPekZ5r+6Tl2NgHK4+k
	VYdXyIhK4rsNrCgF6YR1GqgKzUjoGR4eKlxL+Tc=
X-Google-Smtp-Source: ABdhPJwSoePdVS/ysQ+le/wvIJYwwnqmQn0j3sXY8NTuKmBNIYCkn3A6q0WSGOtf/fQmTdBlR0VhyK1qDV3YrfH6KXw=
X-Received: by 2002:a67:844:: with SMTP id 65mr952639vsi.20.1630571100821;
 Thu, 02 Sep 2021 01:25:00 -0700 (PDT)
MIME-Version: 1.0
References: <CAKAnv4HcU4L5Ve7Q+RVizE=iK+sPLiDpEByF5SUo1pGLaS0OYA@mail.gmail.com>
In-Reply-To: <CAKAnv4HcU4L5Ve7Q+RVizE=iK+sPLiDpEByF5SUo1pGLaS0OYA@mail.gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Thu, 2 Sep 2021 10:24:49 +0200
Message-ID: <CANNYZj926qaLy9_qnd7OXqUn+F==vzrsVXatu9R6m4g+2q7DKg@mail.gmail.com>
Subject: Re: [yocto] task do_patch does not exist
To: Ivan Riabtsov <ivriabtsov@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000003eded205cafeeb71"

--0000000000003eded205cafeeb71
Content-Type: text/plain; charset="UTF-8"

I think you need to move the recipe from a workspace to the layer first
with 'devtool finish'. When the recipe is in a workspace, it's taking the
source code from the workspace as well, and additional patches aren't used.

Alex

On Thu, 2 Sept 2021 at 10:10, Ivan Riabtsov <ivriabtsov@gmail.com> wrote:

> Hello. I created a recipe with the following command:
>
> $ devtool add  mosquitto
> https://mosquitto.org/files/source/mosquitto-2.0.11.tar.gz
>
> i got the file:
>
> ivr@home-machine:~/work/yocto/build
> $ cat workspace/recipes/mosquitto/mosquitto_2.0.11.bb
> # Recipe created by recipetool
> # This is the basis of a recipe and may need further editing in order
> to be fully functional.
> # (Feel free to remove these comments when editing.)
>
> # WARNING: the following LICENSE and LIC_FILES_CHKSUM values are best
> guesses - it is
> # your responsibility to verify that the values are complete and correct.
> #
> # The following license files were not able to be identified and are
> # represented as "Unknown" below, you will need to check them yourself:
> #   LICENSE.txt
> #
> LICENSE = "Unknown"
> LIC_FILES_CHKSUM =
> "file://LICENSE.txt;md5=ca9a8f366c6babf593e374d0d7d58749"
>
>
> SRC_URI = "https://mosquitto.org/files/source/mosquitto-${PV}.tar.gz"
> SRC_URI[md5sum] = "638d801e6aac611b41de76d030951612"
> SRC_URI[sha256sum] =
> "7b36a7198bce85cf31b132f5c6ee36dcf5dadf86fb768501eb1e11ce95d4f78a"
> SRC_URI += " file://0001-arch-makefile-variable.patch"
>
> # NOTE: unable to map the following CMake package dependencies: cJSON
> libwebsockets
> # NOTE: the following library dependencies are unknown, ignoring: systemd
> #       (this is based on recipes that have previously been built and
> packaged)
> DEPENDS = "openssl"
>
> inherit cmake pkgconfig
>
> # Specify any options you want to pass to cmake using EXTRA_OECMAKE:
> EXTRA_OECMAKE = ""
>
> do_patch() {
>     patch -p1 -d ${WORKDIR} < ${WORKDIR}/0001-arch-makefile-variable.patch
> }
>
> i added the line:
> SRC_URI += " file://0001-arch-makefile-variable.patch"
> and i try to run bitbake -c patch mosquitto
> i got the ERROR: Task do_patch does not exist for target mosquitto
> I added the lines:
> do_patch() {
>     patch -p1 -d ${WORKDIR} < ${WORKDIR}/0001-arch-makefile-variable.patch
> }
>
> but i got the same error.
>
> Please tell me what I am doing wrong? Before, when I created recipes
> by hand, it was enough for me to add the line SRC_URI + =
> "file://some-patch.patch" and the do_patch task itself appeared and
> was executed
>
> 
>
>

--0000000000003eded205cafeeb71
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I think you need to move the recipe from a workspace =
to the layer first with &#39;devtool finish&#39;. When the recipe is in a w=
orkspace, it&#39;s taking the source code from the workspace as well, and a=
dditional patches aren&#39;t used.</div><div><br></div><div>Alex<br></div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Thu, 2 Sept 2021 at 10:10, Ivan Riabtsov &lt;<a href=3D"mailto:ivriabtsov=
@gmail.com">ivriabtsov@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">Hello. I created a recipe with the followi=
ng command:<br>
<br>
$ devtool add=C2=A0 mosquitto<br>
<a href=3D"https://mosquitto.org/files/source/mosquitto-2.0.11.tar.gz" rel=
=3D"noreferrer" target=3D"_blank">https://mosquitto.org/files/source/mosqui=
tto-2.0.11.tar.gz</a><br>
<br>
i got the file:<br>
<br>
ivr@home-machine:~/work/yocto/build<br>
$ cat workspace/recipes/mosquitto/<a href=3D"http://mosquitto_2.0.11.bb" re=
l=3D"noreferrer" target=3D"_blank">mosquitto_2.0.11.bb</a><br>
# Recipe created by recipetool<br>
# This is the basis of a recipe and may need further editing in order<br>
to be fully functional.<br>
# (Feel free to remove these comments when editing.)<br>
<br>
# WARNING: the following LICENSE and LIC_FILES_CHKSUM values are best<br>
guesses - it is<br>
# your responsibility to verify that the values are complete and correct.<b=
r>
#<br>
# The following license files were not able to be identified and are<br>
# represented as &quot;Unknown&quot; below, you will need to check them you=
rself:<br>
#=C2=A0 =C2=A0LICENSE.txt<br>
#<br>
LICENSE =3D &quot;Unknown&quot;<br>
LIC_FILES_CHKSUM =3D &quot;file://LICENSE.txt;md5=3Dca9a8f366c6babf593e374d=
0d7d58749&quot;<br>
<br>
<br>
SRC_URI =3D &quot;<a href=3D"https://mosquitto.org/files/source/mosquitto-$=
%7BPV%7D.tar.gz" rel=3D"noreferrer" target=3D"_blank">https://mosquitto.org=
/files/source/mosquitto-${PV}.tar.gz</a>&quot;<br>
SRC_URI[md5sum] =3D &quot;638d801e6aac611b41de76d030951612&quot;<br>
SRC_URI[sha256sum] =3D<br>
&quot;7b36a7198bce85cf31b132f5c6ee36dcf5dadf86fb768501eb1e11ce95d4f78a&quot=
;<br>
SRC_URI +=3D &quot; file://0001-arch-makefile-variable.patch&quot;<br>
<br>
# NOTE: unable to map the following CMake package dependencies: cJSON<br>
libwebsockets<br>
# NOTE: the following library dependencies are unknown, ignoring: systemd<b=
r>
#=C2=A0 =C2=A0 =C2=A0 =C2=A0(this is based on recipes that have previously =
been built and packaged)<br>
DEPENDS =3D &quot;openssl&quot;<br>
<br>
inherit cmake pkgconfig<br>
<br>
# Specify any options you want to pass to cmake using EXTRA_OECMAKE:<br>
EXTRA_OECMAKE =3D &quot;&quot;<br>
<br>
do_patch() {<br>
=C2=A0 =C2=A0 patch -p1 -d ${WORKDIR} &lt; ${WORKDIR}/0001-arch-makefile-va=
riable.patch<br>
}<br>
<br>
i added the line:<br>
SRC_URI +=3D &quot; file://0001-arch-makefile-variable.patch&quot;<br>
and i try to run bitbake -c patch mosquitto<br>
i got the ERROR: Task do_patch does not exist for target mosquitto<br>
I added the lines:<br>
do_patch() {<br>
=C2=A0 =C2=A0 patch -p1 -d ${WORKDIR} &lt; ${WORKDIR}/0001-arch-makefile-va=
riable.patch<br>
}<br>
<br>
but i got the same error.<br>
<br>
Please tell me what I am doing wrong? Before, when I created recipes<br>
by hand, it was enough for me to add the line SRC_URI + =3D<br>
&quot;file://some-patch.patch&quot; and the do_patch task itself appeared a=
nd<br>
was executed<br>
<br>
<br>
<br>
</blockquote></div>

--0000000000003eded205cafeeb71--
