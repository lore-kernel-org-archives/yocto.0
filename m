Return-Path: <adrian.freihofer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D518C001DE
	for <webhook@archiver.kernel.org>; Sun, 30 Jul 2023 12:05:10 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
 by mx.groups.io with SMTP id smtpd.web10.71358.1690718704597718191
 for <yocto@lists.yoctoproject.org>;
 Sun, 30 Jul 2023 05:05:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=Afgg4pFF;
 spf=pass (domain: gmail.com, ip: 209.85.218.47, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-99bdcade7fbso455417966b.1
        for <yocto@lists.yoctoproject.org>; Sun, 30 Jul 2023 05:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690718703; x=1691323503;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lWOvpyapGVAQj9tvskWyY/O0gcRWiYsRkxNMZs+65hA=;
        b=Afgg4pFF/5KwhNzpC8hnGkcydPAdZ+EP0Qu+dDSY63vjxVqrZh76ZKDAxtV8RDXIYp
         yPcMOMLIrwtycDy0FM6sEhZ6vNUh+TFXfxbJoExT7GSADKuLZxABxi9sbfvAlYIogu2Q
         wnbtCH48EX5pikCKAQZNHOYH0Z+mSMUi/gppJfvrD7nx3dcqwk/N8587vPzg1eDlhbi/
         K5lyEkYsYX/jgBe+TddxIhk8AAZIckX+HevGcmaACnSdagWnP6n4LRUXC94yHhhe2Kx8
         b0E8FQu8OlRpA/S10KJ+UxXAbyA8OqqEMj3G7pP1mt9TPcHlGS92YOaHSrgQ3EN0zpvN
         XxnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690718703; x=1691323503;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lWOvpyapGVAQj9tvskWyY/O0gcRWiYsRkxNMZs+65hA=;
        b=juHgxyNSZaMzjxN0nahh6sK1vaXyZJ6rARc/O43GkOvCVSLflZKKjOGW3CeOm/CaCl
         L42apQzaQVcTCdj/xBb/XFNVzoDoxBc6RmN3BZULVVi0v6V34kxvgonhGWVYa7sHICDN
         THyXBKD3uTQbOqNBh9Qg0EdZao0w7rHpl6dtlpbW4hrxqHwOyUxj8TXuH/MQ4a8GOd+w
         qU13+9jM6qhDvNiTDpnYKz9aj7vRCP8CU5FKChILrUB4M1JeP4NufS9cG9Y+Ww/lN4dC
         fu5tK8fLsUok0XgtcnGGsFPW6Jc2Ezpeson3AKjMmgaZFslWIEVKBemFrrWRavDJycQr
         4Z2w==
X-Gm-Message-State: ABy/qLbk1G5jNIgnOWc9wSJ1odE8SkHvHG/doz+efnEeCEdzwNyVG3k4
	I/2omDVlR7h6TLvbjWv+DJE=
X-Google-Smtp-Source: APBJJlG6DuiCk5EWtxyk1UzS5LFqxIspRqNRaRTfkFrFeb7N7AxV09jMBS62ue0D6H5c9DaAQGDfZg==
X-Received: by 2002:a17:906:a097:b0:99b:d89c:9dd7 with SMTP id q23-20020a170906a09700b0099bd89c9dd7mr3219599ejy.77.1690718702761;
        Sun, 30 Jul 2023 05:05:02 -0700 (PDT)
Received: from ?IPv6:2a02:169:59a6:0:5488:f785:9061:cf6c? ([2a02:169:59a6:0:5488:f785:9061:cf6c])
        by smtp.gmail.com with ESMTPSA id b14-20020a1709062b4e00b00992acab8c45sm4617210ejg.12.2023.07.30.05.05.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jul 2023 05:05:02 -0700 (PDT)
Message-ID: <6598355dcbaa0333b251923fbea69a5308344b50.camel@gmail.com>
Subject: Re: [yocto] systemd service not enabled #kirkstone #systemd
From: adrian.freihofer@gmail.com
To: daniel_herrmann22@web.de, yocto@lists.yoctoproject.org
Date: Sun, 30 Jul 2023 14:05:01 +0200
In-Reply-To: <4aNV.1690714818067144121.s3Nh@lists.yoctoproject.org>
References: <4aNV.1690714818067144121.s3Nh@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 30 Jul 2023 12:05:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60682

On Sun, 2023-07-30 at 04:00 -0700, daniel_herrmann22@web.de wrote:
> Hello,
> I have a problem enabling a simple systemd service.=20
> I need a manual "systemctl enable" once after boot to enable my
> service.
> If anybody has an idea, it would be very cool.
> Here are my files.
> distro conf:
> DISTRO_FEATURES:append =3D " systemd"
> DISTRO_FEATURES_BACKFILL_CONSIDERED +=3D "sysvinit"
> VIRTUAL-RUNTIME_init_manager =3D "systemd"
> VIRTUAL-RUNTIME_initscripts =3D "systemd-compat-units"
> schedulingrealtime.bb:
> DESCRIPTION =3D "Setup a realtime sheduling"
> LICENSE =3D "CLOSED"
>=20
> inherit systemd
> NATIVE_SYSTEMD_SUPPORT =3D "1"
> SYSTEMD_PACKAGES =3D "${PN}"
> SYSTEMD_AUTO_ENABLE =3D "enable"
> SYSTEMD_SERVICE_${PN} =3D "schedulingrealtime.service"

This will probably fix it:
SYSTEMD_SERVICE:${PN} =3D "schedulingrealtime.service"

These lines are probably not needed:
  NATIVE_SYSTEMD_SUPPORT =3D "1"
  SYSTEMD_PACKAGES =3D "${PN}"
  SYSTEMD_AUTO_ENABLE =3D "enable"

Did you also consider using the sysctl service instead of an extra
service?
https://www.freedesktop.org/software/systemd/man/systemd-sysctl.service.htm=
l

Regards,
Adiran

>=20
>=20
> FILESEXTRAPATHS:prepend :=3D "${THISDIR}:"
> SRC_URI =3D " \
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://schedulingrealtime.serv=
ice \
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "
>=20
> do_install () {
> =C2=A0=C2=A0=C2=A0 install -d ${D}${systemd_system_unitdir}
>=20
> =C2=A0=C2=A0=C2=A0 install -m 0755 ${WORKDIR}/schedulingrealtime.service
> ${D}${systemd_system_unitdir}
> }
>=20
> FILES:${PN} +=3D "\
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ${systemd_system_unitdir}/sche=
dulingrealtime.service \
> schedulingrealtime.service
> [Unit]
> Description=3Dmodify scheduling parameter for realtime threads
>=20
> [Service]
> Type=3Doneshot
> ExecStart=3D/bin/bash -c "echo -1 >
> /proc/sys/kernel/sched_rt_runtime_us && echo -1 >
> /proc/sys/kernel/sched_rt_period_us"
>=20
> [Install]
> WantedBy=3Dmulti-user.target
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60681):
> https://lists.yoctoproject.org/g/yocto/message/60681
> Mute This Topic: https://lists.yoctoproject.org/mt/100441626/4454582
> Mute
> #kirkstone:https://lists.yoctoproject.org/g/yocto/mutehashtag/kirksto
> ne
> Mute
> #systemd:https://lists.yoctoproject.org/g/yocto/mutehashtag/systemd
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe:
> https://lists.yoctoproject.org/g/yocto/unsub=C2=A0[adrian.freihofer@gmail=
.com
> ]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


