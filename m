Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B9A7C35274
	for <webhook@archiver.kernel.org>; Mon, 18 Dec 2023 13:12:55 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web11.43634.1702905170323904457
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Dec 2023 05:12:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=EZPt6zYp;
 spf=pass (domain: gmail.com, ip: 209.85.167.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-50e2bd8c396so1722656e87.0
        for <yocto@lists.yoctoproject.org>; Mon, 18 Dec 2023 05:12:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702905168; x=1703509968; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h3VuU/5NWl/C+PFOkbHHLIzn1TjcAkc5b6gITMCd/JQ=;
        b=EZPt6zYpzUTk5qjWkHoREUnoGaCHDxcVm1k/vrh7lW9IU8NLYZi3OMMgGHwHSOd4Xq
         /QsQqqVwOBxi5BWWeXLagVt0uk3T3vs/qRlHemOqN4a7xYzZ2nK7wgw1akNF+wqQGoXS
         K5q7B8mgGYqXf6d/CrpL4TDzHmNKke/IqQHFVXS5AffWUvojeqiMKU3uY905dgeIyYz8
         dRw+FTZUPKmVxev+d47XtDBqZoG1UE6YILcz19gyp3c2CkQFk+7N+zOvk0QM2AN0GWCe
         yjX32LfDXs+IoXwqQrqFe4KxYe0XxaceZoqKJoQSDD/TRBHtSG6w/wgVmgUjl5n1ndfc
         5rlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702905168; x=1703509968;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h3VuU/5NWl/C+PFOkbHHLIzn1TjcAkc5b6gITMCd/JQ=;
        b=KfGG4zbvcxH7M2QwA2QMPH9PDnLnhigpVKmdKBhbpDG0+ygmQjM8VCVLKKq9Gh5zrV
         1jB6ilMKKryCdAl7EzaWlQU/RQsw++SN3ljsJbiaVBTDZrnitxzB+a05kaVs3rFrDgGT
         5odj4xs4d93+rK2opD2udNn/73g7+afknsLLs/IPU0noMRGMIgpwKDn4wV/L2jS89/rB
         9F+M1ESsoJNdtZVPnxfdA2z3fN8jCbg6Q45/SuyxpMv4VlAS8eJlPA8Hqaul0+vPabba
         sGQZz2FxHcCTSWVDohHspGQwk5lH698COMFxTVIJo5hoK2jffJpSHciy89AfjzqFkuJp
         akpw==
X-Gm-Message-State: AOJu0YyPb29hF10c91Oxrp1IiLw943PwmaL3JXS+H5AAesmvPgM99rH7
	DllbqUqBb18ZXqgfSf2x+aZ/+TU0kxnTlSjqTVvaOpLT
X-Google-Smtp-Source: AGHT+IEREsMJHKlH2+w2plO0B9RY3Oe17YM9gWzQZeVsYdIAEWiuHl8UVyvaAIGHeA7xPr+uW/GudhXhrzl1PrTfWjQ=
X-Received: by 2002:a05:6512:3e1a:b0:50b:c08d:69ba with SMTP id
 i26-20020a0565123e1a00b0050bc08d69bamr9348879lfv.57.1702905168091; Mon, 18
 Dec 2023 05:12:48 -0800 (PST)
MIME-Version: 1.0
References: <PH1P110MB1683AE03CB7709C593AC62B49F90A@PH1P110MB1683.NAMP110.PROD.OUTLOOK.COM>
 <MADEUP.17A1ECDABEBCB3F2.26395@lists.yoctoproject.org>
In-Reply-To: <MADEUP.17A1ECDABEBCB3F2.26395@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 18 Dec 2023 14:12:36 +0100
Message-ID: <CANNYZj_wEi_52c7BbQkr8+mRacw+q1gSheJL2Nbp1Tjg6K=ybQ@mail.gmail.com>
Subject: Re: [yocto] FW: Yocto and Red Hat 8
To: yocto@lists.yoctoproject.org, steven.monsees@baesystems.us
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Dec 2023 13:12:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61964

Zeus has been EOL for a long time. You need to first upgrade to a
supported yocto release.

Alex

On Mon, 18 Dec 2023 at 13:29, Monsees, Steven C (US)
<steven.monsees@baesystems.us> wrote:
>
>
>
> Is there any documentation or guidance you can provide on porting Yocto f=
or centos7 to 8 ?
>
> I am currently working centos7 ZEUS=E2=80=A6
>
>
>
>
>
> From: Monsees, Steven C (US)
> Sent: Monday, December 18, 2023 7:17 AM
> To: yocto@lists.yoctoproject.org
> Subject: Yocto and Red Hat 8
>
>
>
>
>
> Is there any documentation or guidance you can provide on porting Yocto f=
or centos7 to 8 ?
>
> I am currently working centos7 ZEUS=E2=80=A6
>
>
>
> Thanks,
>
> Steve
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61962): https://lists.yoctoproject.org/g/yocto/messag=
e/61962
> Mute This Topic: https://lists.yoctoproject.org/mt/103241390/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

