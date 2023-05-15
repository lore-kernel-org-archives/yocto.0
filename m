Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 025B2C77B7D
	for <webhook@archiver.kernel.org>; Mon, 15 May 2023 00:01:29 +0000 (UTC)
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
 by mx.groups.io with SMTP id smtpd.web11.77533.1684108879162218012
 for <yocto@lists.yoctoproject.org>;
 Sun, 14 May 2023 17:01:19 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=Fj425Z0c;
 spf=pass (domain: gmail.com, ip: 209.85.160.53, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-192cfb46e75so5616740fac.3
        for <yocto@lists.yoctoproject.org>; Sun, 14 May 2023 17:01:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684108878; x=1686700878;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dNuBX1+K/VI/GMQmphrsOjXH20fVXqsdqG+3w1OrNXY=;
        b=Fj425Z0czvFo9MQRTq/Jp4g8J3DOlvLSSGXKWJGccruZWx8OpiSO4c3OGXl8VGPB/G
         ab/IxXzLyUGeccfRhIxsZqCWswJXcx+trslObhfqYBlVrFEFgqtJGpAL7P++QU7SldXI
         H7/zT42y+85EplDrOQFXtAiBJejQ+Wh/NgUqQF7c0ZjJHYpe9fCCd9P9v+edI0rj1i5v
         QTlPYDBlTTeyA+yP0o6mRqmLywoi3kXcSXVOgcoEkIBUf6E/zCcq0VcjIfWPm4lNLaIw
         Rx00OUKHNI7gmwXpk+tYgcrHDmq99UKTO7CXmT2M3Vfk51aDdXsB5M2rCBejtp2ysqkN
         rytQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684108878; x=1686700878;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dNuBX1+K/VI/GMQmphrsOjXH20fVXqsdqG+3w1OrNXY=;
        b=VsejMSOLf0M+lDOEERiwn1oZZBYUJFLhE7So8wouPaaShKYO/+9+kCuLdzdYcD61UA
         XxZ5DcB9LIK84nOZt8r/gla1RGgR89niWubNHVPFRqiD442+QDck2WjDQHjiF9yw4v6W
         iwtykvpMc0G/HPhMjAEV5+f9dCGA+7TZhKbIp8vB6kndP/ITzkYq08O5BjXt7Y10lkvT
         tTiaQmuFy2k/ornmVkrqymFneG5VgocS6sl/JuIHgmHIkhdLnr7ymNg/E/OT0bQXyf1S
         1vEg6FnJJuJYybcZBWZHQ6YAKzn/EcihCRAsRsIq7HgfSVU4n9stXAbx4PA5SA0A38dF
         uxHg==
X-Gm-Message-State: AC+VfDz72ygXFveQZjqx+XVd5FJEHyw69lJ8Bf6i3CWmnynpP65iTnfa
	FabOsaSDTH15TQEN71ZIJFIP4tMgItPsCMhnhMu0Kz1CYlg=
X-Google-Smtp-Source: ACHHUZ4IEaVpbyzMHWcBKBOOKBSPp89eEpjNR7Cg8zXVE3ci7elyy+njgFzQgLA/ZtuT6IDw8uFwv0z+8Xiu4WPdv3Y=
X-Received: by 2002:a05:6808:13d1:b0:394:c796:6a8c with SMTP id
 d17-20020a05680813d100b00394c7966a8cmr4825721oiw.15.1684108878157; Sun, 14
 May 2023 17:01:18 -0700 (PDT)
MIME-Version: 1.0
References: <CA+EiEZJrnJYYY7NMF521HemwaGKTFotkUdxC56w-qgYvm_j_Ng@mail.gmail.com>
In-Reply-To: <CA+EiEZJrnJYYY7NMF521HemwaGKTFotkUdxC56w-qgYvm_j_Ng@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 14 May 2023 17:00:52 -0700
Message-ID: <CAMKF1sp+t6xO3ap5eDR-R=JNqbvcWwkxv1U3vWMSaqziBECGUw@mail.gmail.com>
Subject: Re: [yocto] LTS EOLs
To: Tom Isaacson <tom.isaacson@teknique.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 May 2023 00:01:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60012

On Sun, May 14, 2023 at 4:55=E2=80=AFPM Tom Isaacson <tom.isaacson@teknique=
.com> wrote:
>
> I was just looking up the Yocto LTS and I found
> https://endoflife.date/yocto. It says:
> 3.1 'Dunfell' (LTS) Ends in 10 months (01 Apr 2024)
> 4.0 'Kirkstone' (LTS) Ends in 11 months (27 Apr 2024)
>
> Are these dates correct? If so, what's the point of the later LTS
> going EOL the same month as the previous one? There's not much point
> in upgrading.

these dates are correct. Current LTS releases are for a period of 2
years, dunfell was extended
for another 2 years and became 4 years extended LTS, Kirkstone might
be extended for another 2 years too if the membership
decides to do so.

>
> Is a new LTS planned?

the next LTS is coming in April 2024. The duration for new LTS will be
2 years or 4 perhaps
but this will be decided by membership hopefully soon.

>
> Thanks.
>
> Tom Isaacson
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#60011): https://lists.yoctoproject.org/g/yocto/messag=
e/60011
> Mute This Topic: https://lists.yoctoproject.org/mt/98893130/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

