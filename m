Return-Path: <sergey.nikulov@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69252C38A2D
	for <webhook@archiver.kernel.org>; Tue, 25 Oct 2022 07:06:07 +0000 (UTC)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web08.4320.1666681560836964773
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Oct 2022 00:06:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=oogrsPxW;
 spf=pass (domain: gmail.com, ip: 209.85.216.41, mailfrom: sergey.nikulov@gmail.com)
Received: by mail-pj1-f41.google.com with SMTP id l22-20020a17090a3f1600b00212fbbcfb78so5703542pjc.3
        for <yocto@lists.yoctoproject.org>; Tue, 25 Oct 2022 00:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PSpnkdSLxbPX5ueNMSuvdyamnRr9djYVPEB2yG4xILc=;
        b=oogrsPxW9zl0fokemTUxRhA6r6a2hDU+yfDqMet2T1tuQ2UTqOKuqc8g4NvRfmmzVr
         Lzzz1KWL0qLdCX4fm83fivIt50zRhlSyob8ETlzQdXVmRGaWnlfcT0vvSkH45rF90+ww
         rSHMk9Fy/sx8iyjDP4316Kg6ozsTqN4ysmx0T0kU+QnDPoYM7WA0SbsokQmKCbJ/+fl1
         qlv/pR3DuH0oyllz9kdi9GPDlrLia2sM0yCa3Dk2efHQXzmXYhsT4VkU//zbqMSX3ge8
         BQlgHouJ0oivYxAQm2nn8Fv2gIUMvG5gddHWCrtKmtuxBskUqBvbpsUyzIKhPCWU9+dk
         kZyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PSpnkdSLxbPX5ueNMSuvdyamnRr9djYVPEB2yG4xILc=;
        b=up0HIIi1PizHcfGSKpO3RxC/MPRkoSqFLeoEjKBl5C8QFBuXO3YqmvcoMMu+n7M4QK
         jgJ/m/SNEHGJAt85Jf88dHtQWTfMRbHazkgs5xBEXKLV7T2L5Mdds0wAF38XKYSID4IO
         3VMJbPJH/xEMG8m10Ovlp+QBo2CJSlaF/enA/UB6wJhUTpliJu3jEQSc1Fn0nQu+sHE4
         ExU6RekkoOXUL0fGNSt6EmVWta2sy/Stg+J42aXwk4IJ2GBeOxi947T0VMLWx+uXuFCx
         glkMVhqI+RlI2L//6i12SldU4SV6U65zdE8bdn9c7RF2jzeRsylZ4V0PDxWbUL1RHZ+o
         WcsA==
X-Gm-Message-State: ACrzQf2FMclkKbwSstLJZ7nlMSBSQRtfGuW5lO7N8OjMFMXBkZJf1loq
	dpoOndz8BvOt6csz8bOkvAprANMMg62o+C0ZvMs=
X-Google-Smtp-Source: AMsMyM6+cfXTiAUP0DJ+eH2zvsZAOOUyUJg4XTUoZWBFYVvvvydaeDdwqh24VeqVkIIAuDse04FXRGEmDkLfGP/SvZg=
X-Received: by 2002:a17:902:e945:b0:179:ce23:dd4d with SMTP id
 b5-20020a170902e94500b00179ce23dd4dmr36680243pll.68.1666681559759; Tue, 25
 Oct 2022 00:05:59 -0700 (PDT)
MIME-Version: 1.0
References: <RE50.1666679342797065011.2czo@lists.yoctoproject.org>
In-Reply-To: <RE50.1666679342797065011.2czo@lists.yoctoproject.org>
From: Sergei Nikulov <sergey.nikulov@gmail.com>
Date: Tue, 25 Oct 2022 10:05:48 +0300
Message-ID: <CAE7Ac0BRr-YCf-F2ps-qX0SF1JcCR=RpXCd4KMW6dVHXQzoRJg@mail.gmail.com>
Subject: Re: [yocto] How to enabled systemd unit files automatically using recipe?
To: Sourabh Hegde <hrsourabh011@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Oct 2022 07:06:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58407

On Tue, Oct 25, 2022 at 9:29 AM Sourabh Hegde <hrsourabh011@gmail.com> wrot=
e:
>
> Hello,
>
> This might not be directly related to Yocto.
>
> I have a systemd .path unit file that restarts the system service if the =
file changes. But, the path ubit file needs to be enabled once to make this=
 work. So, my question is when I flash new image on the device will the pat=
h unit file enabled automatically by systemctl? Or should I do this manuall=
y using "systemctl enable --now *.path" ? Is there any way to make this wor=
k using Yocto recipe?
>
> The custome systemd service files are installed in dir "${D}${systemd_uni=
tdir}/system/".
>
> Thanks in advance
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58406): https://lists.yoctoproject.org/g/yocto/messag=
e/58406
> Mute This Topic: https://lists.yoctoproject.org/mt/94553177/3617615
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [sergey.nikulov=
@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

You should add you file to your bb recipe SYSTEMD_SERVICE:${PN} =3D "file.p=
ath"

https://docs.yoctoproject.org/current/ref-manual/classes.html?highlight=3Ds=
ystemd_service

--=20
Best Regards,
Sergei Nikulov

