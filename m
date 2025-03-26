Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B9A6C36008
	for <webhook@archiver.kernel.org>; Wed, 26 Mar 2025 08:07:47 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web10.17252.1742976458234425444
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Mar 2025 01:07:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=XnyFyDzT;
 spf=pass (domain: smile.fr, ip: 209.85.208.181, mailfrom: yoann.congal@smile.fr)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-30db1bc464dso14305461fa.0
        for <yocto@lists.yoctoproject.org>; Wed, 26 Mar 2025 01:07:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1742976456; x=1743581256; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vDypBzT+o39kr+dthn1cHuX5qzpA8MfOzKhz8jrq6HQ=;
        b=XnyFyDzT14dK0FYCsP/uqhpg4i1OTeQ4rfeLc/HoFpUQbiSFx4GRdFrA1MEItZwSsP
         re+AFPO3BGFQVrp96KlCSLvRx/BbRS+DpQC1IeqOPspNWLIg8HnKBhr5W4mQ69pjr/1Z
         w/lmTn4WQmNAB4n8bYbXGTrCSvjOqeDU2gM98=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742976456; x=1743581256;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vDypBzT+o39kr+dthn1cHuX5qzpA8MfOzKhz8jrq6HQ=;
        b=WfStISy3niS+fZ083T3Iqz1uw4UEUEf68CZ1EILNeiULRJa1OZrlsQ4hGecTHXztQM
         023voKWgW91dwbRm54b0t4iG2z/2WbKChzJ+l2A8r05/24aKDPwbxq0r71Ce4TEa+IPs
         h3830Ynsmfpb27+KUzlkuKDnwOBWS53EG8L2jGKxg9F6XU0/SKasKRDXGIEcwfp3TS9Y
         SRbCmVX7m/wFxTm93kEHyi6epJvfteaqkaIA1Bc4d066dXdDoyDBbkEWe+/cam2eAcg1
         q6NBpxND9nka8heOEJxpv6MbyOqEJ/vNVKECyygh7qdJrCpRNfn1gWke1yAhuhY7rHrc
         2q0A==
X-Gm-Message-State: AOJu0YyjIikJoVI2AmQs9Ag+fRMYyxggDAov9dOAz/wQYTuA20FhjLr5
	reVPLC/mupNjYQ44DwtvxNvdBCX505sLqs+vRK+azrwYQQehWBALgjLQNlB5s5clzn2HEzPrRYC
	DlpI2Q8RMsT2BX1nuWj0LiWIH4LCMxNAQgQCfDzAzebZOEQBEppA=
X-Gm-Gg: ASbGncsh71G5VN3RrASLylVeCkBnoo+Sgw6R315KSIcYDcUDrS4q9rfFHls/Ysmw/xQ
	pHjxyRabU6BkGEQQnR9Zeong3o4CBjoPVepY6l3j5W6DTZiMPDhCZaJCamyjwkX2xCvZHmXEy9t
	38r7zUvh7R+tORM1iT1wJIGz0kbipQCJhLuDadfGjYIEeZtqZ7wkpRVIOQu6s=
X-Google-Smtp-Source: AGHT+IH6H2jx4oiu1Q6q3VgYW+QFgNgQbtz5vUqizmF52rQM8w1VKm8SaCioPrxCLJcFQFL+4zbg4Y2JR8kSXZrdLuo=
X-Received: by 2002:a5d:5f96:0:b0:38f:4d20:4a17 with SMTP id
 ffacd0b85a97d-3997f8fb0f7mr19136802f8f.13.1742976008146; Wed, 26 Mar 2025
 01:00:08 -0700 (PDT)
MIME-Version: 1.0
References: <bcbe7705-b5ea-4745-9f31-ac5e2c638f17@phytec.de> <CAMSfU+6W0b2eEu-eRiwpWFRdpUs2ODk2aCq+jOuRhqn3ojei9A@mail.gmail.com>
In-Reply-To: <CAMSfU+6W0b2eEu-eRiwpWFRdpUs2ODk2aCq+jOuRhqn3ojei9A@mail.gmail.com>
From: Yoann Congal <yoann.congal@smile.fr>
Date: Wed, 26 Mar 2025 08:59:42 +0100
X-Gm-Features: AQ5f1JoKsrXLMTK9iEW3NZHuPH1en__jY8y0knJXAmmeJMtOUExPbBoEXJVNEnc
Message-ID: <CAMSfU+4aQu+MjM+Ng9wJ5W9Ng5UhrAkndo=UDN4WQnBBjLzwMg@mail.gmail.com>
Subject: Re: [yocto] Yocto git servers down?
To: yocto@lists.yoctoproject.org, w.egorov@phytec.de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Mar 2025 08:07:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65022

Le mer. 26 mars 2025 =C3=A0 08:23, Yoann Congal <yoann.congal@smile.fr> a =
=C3=A9crit :
>
> Le mer. 26 mars 2025 =C3=A0 08:13, Wadim Egorov via lists.yoctoproject.or=
g
> <w.egorov=3Dphytec.de@lists.yoctoproject.org> a =C3=A9crit :
> > Hi,
>
> Hello,
>
> > any idea what is going on?
> >
> > git.yoctoproject.org seems to be super slow or not reachable at all.
>
> To quote the weekly status (https://wiki.yoctoproject.org/wiki/Weekly_Sta=
tus):
> "We are aware of 500/502 errors from the project git servers. These
> are caused by load from the significant number of AI crawlers the
> infrastructure is being overloaded with which is hard to mitigate
> against."

For context and global awareness: This looks like a good summary of
the situation:
FOSS infrastructure is under attack by AI companies
https://thelibre.news/foss-infrastructure-is-under-attack-by-ai-companies/

>
> Regards,
>
> > Regards,
> > Wadim
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#65020): https://lists.yoctoproject.org/g/yocto/mess=
age/65020
> > Mute This Topic: https://lists.yoctoproject.org/mt/111912830/4316185
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [yoann.congal=
@smile.fr]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>
>
> --
> Yoann Congal
> Smile ECS



--=20
Yoann Congal
Smile ECS

