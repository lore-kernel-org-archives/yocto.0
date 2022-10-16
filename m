Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 607AFC4332F
	for <webhook@archiver.kernel.org>; Sun, 16 Oct 2022 19:51:28 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web10.33139.1665949884274906246
 for <yocto@lists.yoctoproject.org>;
 Sun, 16 Oct 2022 12:51:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Hc23A6bM;
 spf=pass (domain: gmail.com, ip: 209.85.128.45, mailfrom: martin.jansa@gmail.com)
Received: by mail-wm1-f45.google.com with SMTP id m29-20020a05600c3b1d00b003c6bf423c71so10641412wms.0
        for <yocto@lists.yoctoproject.org>; Sun, 16 Oct 2022 12:51:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=q0Ctr/5CYpQkn1f8YZkvqDMVCZku5akSgQhw52pNJ/w=;
        b=Hc23A6bMtELFbKiHUwJ6Jm6Sveq2s+zVBIFbxIxU5XVPImJiyqJ25FoGaPWR4+qh1f
         kD+1DY/iTkh0uzIZ/UsjMSNaokj8zgWaBkFg0qiydFzCbM9IMb1D9PxswwzhTHss/wRT
         SVlZZhBNmFfbaqKQInbjz2zuZJQf9+LU4abEQPi7Ug++9LkMf4HGnoJ2D7RD2EZPz+IV
         RLfRT/VKBK+MNmB+WH41OtxT0ewFtO0X1ZhCgKPVt3CoVgkXRFiOfaKZPYw0YY/3IFXh
         is0qESHMiVOHQwhZshHKrKo3f41ZKoDTEvy8hFlBD1QP60Op4ROUv24pWCnr2ZqycXFu
         8V+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q0Ctr/5CYpQkn1f8YZkvqDMVCZku5akSgQhw52pNJ/w=;
        b=nDrOAoEYHCkf/6nV45dJa/gXQoVSAdyxdWUeHzDLYx4SV2lysHV3L6jPAW4Q2GUXAY
         I1qSbmxO9y4dnyhK9gEtOa4RcCDISWNiVYW2RUbtI+1bH0NNSRYJ0mmOfTIY4ko8PiC1
         Zf29aVqMI9lFPTX/d0ydXmUyG1WLWnB+gJPWpPAvO4Hz4aTzf9g4dgpF5eUIzAu/MpfG
         mZSKW67ADE2AQWfA0pA6jsYcvWmv0thoFMy6uQ8yyZ1k9nadgckUFCfL8h/A8t/v9clz
         beSvWTXIGMb1aVRWcprnv3GJaEX5meIQWIqMftSNyg+B2nAu5EZn5fE+ZYux54kQTCAk
         3Kgw==
X-Gm-Message-State: ACrzQf3m9mvYxYO5QubrWupcUh/vguaMNOMb2GhVfhWc90B+jCVeqmWl
	O0mYpGFpqp4hG3DO+QXrin8967lbFbnGqbF4dZM=
X-Google-Smtp-Source: AMsMyM7EYG3Os9Js5r0JUq0GlH2Wc6JgO7DS6TiktR88PzGSZodJerLpSCwNAPFfXBqrgd4hKA6UCvN/7DM1Rewsg2k=
X-Received: by 2002:a7b:cd15:0:b0:3c5:1b4c:7632 with SMTP id
 f21-20020a7bcd15000000b003c51b4c7632mr17329260wmj.2.1665949882505; Sun, 16
 Oct 2022 12:51:22 -0700 (PDT)
MIME-Version: 1.0
References: <HKHR.1665947586154153068.khQf@lists.yoctoproject.org>
In-Reply-To: <HKHR.1665947586154153068.khQf@lists.yoctoproject.org>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Sun, 16 Oct 2022 21:51:08 +0200
Message-ID: <CA+chaQc1KZz5Bxdt-R+sCcMdhgS0dEwxYfdt+gq3F7uKQUSseA@mail.gmail.com>
Subject: Re: [yocto] Fixing [host-user-contaminated] warning
To: umut@ediz.dev
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f5e11505eb2c2e17"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 16 Oct 2022 19:51:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58344

--000000000000f5e11505eb2c2e17
Content-Type: text/plain; charset="UTF-8"

You can also chown the files after unpacking them (like in
https://github.com/webOS-ports/meta-webos-ports/commit/9fd17a67cdbed92df13a14b002a189b4c6c2d442
)

On Sun, Oct 16, 2022 at 9:13 PM <umut@ediz.dev> wrote:

> Hi,
> I am working on a project that uses some proprietary layers from a 3rd
> party. These layers provide tar archives that include prebuilt binaries of
> some packages and these archives cause host-user-contaminated warnings.
> Since I only have the root user in my target system, and since I changed
> the UID/GID of my build user I assume it is not a false-positive. So, I dug
> a bit to find and resolve the issue and find the function that installs
> binaries. The function only extracts a tar archive to the ${D} directory
> with the command below, nothing else. No fakeroot, no management of
> ownership/permissions.
>
> tar -xjvf $prebuiltdir/${TARGET}/${PN}/${PN}-binaries.tar -C ${D}
>
> I tried various options of tar to extract these files with different UID
> and GID with no success.
> How can I solve this issue? I think it would be better if I patch the
> script to use the install command but I am not sure how can I integrate
> that kind of workflow with lots of tar archives that includes lots of
> subdirectories.
>
> P.S. : I use an LXC-based non-privileged ubuntu container in Proxmox VE as
> the build host. I don't know if it may affect something but wanted to
> mention it just in case.
>
> Best regards,
> Umut Ediz
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58342):
> https://lists.yoctoproject.org/g/yocto/message/58342
> Mute This Topic: https://lists.yoctoproject.org/mt/94369702/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> Martin.Jansa@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000f5e11505eb2c2e17
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You can also chown the files after unpacking them (like in=
=C2=A0<a href=3D"https://github.com/webOS-ports/meta-webos-ports/commit/9fd=
17a67cdbed92df13a14b002a189b4c6c2d442">https://github.com/webOS-ports/meta-=
webos-ports/commit/9fd17a67cdbed92df13a14b002a189b4c6c2d442</a>)</div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Oct=
 16, 2022 at 9:13 PM &lt;<a href=3D"mailto:umut@ediz.dev">umut@ediz.dev</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<=
br>I am working on a project that uses some proprietary layers from a 3rd p=
arty. These layers provide tar archives that include prebuilt binaries of s=
ome packages and these archives cause host-user-contaminated warnings. Sinc=
e I only have the root user in my target system, and since I changed the UI=
D/GID of my build user I assume it is not a false-positive. So, I dug a bit=
 to find and resolve the issue and find the function that installs binaries=
. The function only extracts a tar archive to the ${D} directory with the c=
ommand below, nothing else. No fakeroot, no management of ownership/permiss=
ions.<br>
<blockquote>tar -xjvf $prebuiltdir/${TARGET}/${PN}/${PN}-binaries.tar -C ${=
D}</blockquote>
I tried various options of tar to extract these files with different UID an=
d GID with no success.<br>How can I solve this issue? I think it would be b=
etter if I patch the script to use the install command but I am not sure ho=
w can I integrate that kind of workflow with lots of tar archives that incl=
udes lots of subdirectories.<br><br>P.S. : I use an LXC-based non-privilege=
d ubuntu container in Proxmox VE as the build host. I don&#39;t know if it =
may affect something but wanted to mention it just in case.<br><br>Best reg=
ards,<br>Umut Ediz
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58342): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58342" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58342</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/94369702/3617=
156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/94369702/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank">Martin=
.Jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000f5e11505eb2c2e17--

