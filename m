Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 236B8C4707B
	for <webhook@archiver.kernel.org>; Sun, 14 Jan 2024 19:13:20 +0000 (UTC)
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
 by mx.groups.io with SMTP id smtpd.web11.44577.1705259596385358756
 for <yocto@lists.yoctoproject.org>;
 Sun, 14 Jan 2024 11:13:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=EZXHnLdw;
 spf=pass (domain: gmail.com, ip: 209.85.210.54, mailfrom: raj.khem@gmail.com)
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-6dddba43d70so3837784a34.1
        for <yocto@lists.yoctoproject.org>; Sun, 14 Jan 2024 11:13:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705259595; x=1705864395; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O7z75eTxPFTnxSTLM3VueXkzeqkUb1q0ieTfvH9lsUQ=;
        b=EZXHnLdw8sLJjZ7AFaPmnZY78LM3JjcAR3fv8ErE4RzXC7dU8iPbfjhmrlD4IKx4v7
         GD+p8txrjU5U6zAsb2ap4V4ruJ/v5iRXcxM0lHZ8PsH3csdKfSF5waC/rQdSrECt73KZ
         P4aMcF3FHr9tFs3MmyV7cHUyvhv4Of4++pmvIEYybHIwdyknTJ/Ue31lBHvS5td1Fn4T
         +tDWKHw4J8nnGIWOfCrF1cj9Kc2ixHKIbk9MlGH5+2stiiVG1s9ViR3wWb+ZhDYGFX9q
         BCITYCTsnIfjI8uNCZII0mgQz9rPmQT7OFmwzh/mzkh5TPUYMziSO+en3TTIw67qBykA
         qT4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705259595; x=1705864395;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O7z75eTxPFTnxSTLM3VueXkzeqkUb1q0ieTfvH9lsUQ=;
        b=pCP6Xx5k6I2A/cf3t5UjKZh0HdE5H9p52eaHHSpEjYJhVH2ZXSXhPIlqZN5VF7Iw2x
         AaCelj4FD5GxPDfvRB+CUhBJHiWGu10BdVY4zkyER/SeTUxszAHBPstjOLI6u3bbVDpW
         DNyfDltbSFhiribr+bv/c64pCp5wHxnDjY6CLztzi4IJi4tiIoCq6sjlFttV5hIg8epf
         vsHiYOTV7gfv6i3SrriLsFE6HzKMEgjmnkiWFI+obGNlUG7K2vaa3fs21XsnRtS6XwqY
         ezLgmcbW+EeazFuw0ozrygrWg2tddNrjilHK7ov519tBeIZoi91prb8Z4lRlFiqQp5es
         8hAA==
X-Gm-Message-State: AOJu0YzVPdxyfijVQ9ZkFukOCDA3gm/iaYwwd4WNbkl00Kwr6FWcf6j+
	14my3puNR6FNoPryFD5LwnR0IuV21aIjSDZfU0z75gnRdLY=
X-Google-Smtp-Source: AGHT+IFyQGAcAqZ4WI0KGGoqRbvCUQvLm9nPoH8YLj9smSY7oZFnmgEum0/UxGqXkNIYDliOMhI16vuzK3bBialbYCg=
X-Received: by 2002:a05:6871:3789:b0:1fb:75b:2fbf with SMTP id
 nq9-20020a056871378900b001fb075b2fbfmr7237648oac.86.1705259595234; Sun, 14
 Jan 2024 11:13:15 -0800 (PST)
MIME-Version: 1.0
References: <A6D9.1705259396053544966.8HTs@lists.yoctoproject.org>
In-Reply-To: <A6D9.1705259396053544966.8HTs@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 14 Jan 2024 11:12:49 -0800
Message-ID: <CAMKF1srSAw=tRMfmEiH9c_OewH9ALAj5BXrK1bG0nX0SsFWZqQ@mail.gmail.com>
Subject: Re: [yocto] do_install_append syntax error
To: yocto@lists.yoctoproject.org, crane2018@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 14 Jan 2024 19:13:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62143

change do_install_append to do_install:append

On Sun, Jan 14, 2024 at 11:09=E2=80=AFAM Crane <crane2018@gmail.com> wrote:
>
> Hello,
>
> I am adding a systemd service. It always complains
>
> Variable do_install_append contains an operation using the old override s=
yntax. Please convert this layer/metadata before attempting to use with a n=
ewer bitbake.
>
> Already changed _ to :. Anyone can help with this?
>
> Thanks!
> Crane
>
> The recipe is like this:
>
> SUMMARY =3D "init service at boot"
>
> LICENSE =3D "CLOSED"
>
>
>
> inherit systemd
>
>
>
> SRC_URI +=3D "file://farview.service"
>
> S =3D "${WORKDIR}"
>
>
>
> SYSTEMD_AUTO_ENABLE:${PN} =3D "enable"
>
> SYSTEMD_PACKAGES =3D "${PN}"
>
> SYSTEDD_SERVICE:${PN} =3D "farview.service"
>
>
>
> do_install_append() {
>
> install -d ${D}${systemd_system_unitdir}
>
> install -m 0644 ${WORKDIR}/farview.service ${D}${systemd_system_unitdir}
>
> }
>
>
>
> FILES:{PN} +=3D "${systemd_system_unitdir}/farview.service"
>
> REQUIRED_DISTRO_FEATURES =3D " systemd"
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#62142): https://lists.yoctoproject.org/g/yocto/messag=
e/62142
> Mute This Topic: https://lists.yoctoproject.org/mt/103724054/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

