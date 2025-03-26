Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 220CEC3600E
	for <webhook@archiver.kernel.org>; Wed, 26 Mar 2025 07:24:17 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web11.16686.1742973852515850823
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Mar 2025 00:24:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=N8fK7AfP;
 spf=pass (domain: smile.fr, ip: 209.85.128.43, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43ce70f9afbso63466005e9.0
        for <yocto@lists.yoctoproject.org>; Wed, 26 Mar 2025 00:24:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1742973851; x=1743578651; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y/k8DNTPebwVPnKedjPv+C9CtIwJnApcXEmeDU0SrLs=;
        b=N8fK7AfPXpdqXdSESD8g0oDlqLjVTpLGWGMt8+J0/uDf2FA078HPTs2K2PuKr7stsX
         LdqkBZqZ9ZwkZPOKyzeS+2uknoWfLk4SXV0f1V8ynGM6ft8JUhoTLlB3jSFroeSxhVxl
         fuhciqZCHTTgMennp5wBfogeS18ztDAIYO8+8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742973851; x=1743578651;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y/k8DNTPebwVPnKedjPv+C9CtIwJnApcXEmeDU0SrLs=;
        b=owPxjU3StMpHmdhn70XMCqPoO3nnYWvJ/3wRbmzQMgQZzbBYMmqoWeK+gCOuvY7/vE
         hkG8qOPQpCHiTR/uxtx2U28HFLJb6WJv/R81NDGKLPEtTLG1xIE2rkIkF11c5uLvU5YX
         HNi/pHvC2JOfmVWhsx5UW+726UOuj06utN7XkdDH06aUKHYTaeXm0TVfXns3/340m56p
         UqHuO+c0HXn/NQ8wHdW5YJIhpr7AfvvqAJY3iNB8fVgwfSIO8iQeVk0pRzKR8iZeqRj6
         +kNyB6Me7mB7BLXCrX90/yivtqjEZWEV75BuiAaCRLt5WhHhb+HaxAdyNCuCS5W8ZXqT
         6atg==
X-Gm-Message-State: AOJu0YxIpYZo5ZHfFdqg3e+R+e/Iw+XQ/m3Or2APrPBjS/4fJbU5REUV
	C7Wmi9u3PHQLNxf2JAlmIJjZaGo9VZRMBijwL18xQuHHoEkfXzkaJ8Qhtin9SdKaLwNXsb4f+7t
	DIUnoZAD4fqCrNYfWP+p6YQxweOhygCRmYMmBUZvLSaiVW7lEKVs=
X-Gm-Gg: ASbGncsY0CR4fLfV2iPvsEpo6L6EIC3hIQ6WqtaxdOIwtM4nq5dsO1V7Qkiu8cMas3Q
	o6CLhyie08txrEu2ocj7ls3CbFRkM/9nSKlazt6Ui8nr5AOLRGdKD2n4FLY8qj8a5pOqFR5b7zU
	mVg4bCNxSm1+Amwso96KRZDAalpYn7iGUridBUlL2hveMD8a0bDkGTSk1W2CA=
X-Google-Smtp-Source: AGHT+IFpbSFw6xCvnKmADoTXzIO2FHb0sfIm3qk0CXUCy3WkPw3xEkXJAMi4ndVoguJXc9px2ZAyekTFjEskvZhX9U8=
X-Received: by 2002:a05:6000:1acf:b0:391:487f:280b with SMTP id
 ffacd0b85a97d-3997f8f9e6bmr18162285f8f.10.1742973850606; Wed, 26 Mar 2025
 00:24:10 -0700 (PDT)
MIME-Version: 1.0
References: <bcbe7705-b5ea-4745-9f31-ac5e2c638f17@phytec.de>
In-Reply-To: <bcbe7705-b5ea-4745-9f31-ac5e2c638f17@phytec.de>
From: Yoann Congal <yoann.congal@smile.fr>
Date: Wed, 26 Mar 2025 08:23:43 +0100
X-Gm-Features: AQ5f1JqNP4tzUfCzo1uHITTojAocIhTdMbbALev5h5w6HkPSXxsVvJ3TwgOkKx8
Message-ID: <CAMSfU+6W0b2eEu-eRiwpWFRdpUs2ODk2aCq+jOuRhqn3ojei9A@mail.gmail.com>
Subject: Re: [yocto] Yocto git servers down?
To: yocto@lists.yoctoproject.org, w.egorov@phytec.de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Mar 2025 07:24:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65021

Le mer. 26 mars 2025 =C3=A0 08:13, Wadim Egorov via lists.yoctoproject.org
<w.egorov=3Dphytec.de@lists.yoctoproject.org> a =C3=A9crit :
> Hi,

Hello,

> any idea what is going on?
>
> git.yoctoproject.org seems to be super slow or not reachable at all.

To quote the weekly status (https://wiki.yoctoproject.org/wiki/Weekly_Statu=
s):
"We are aware of 500/502 errors from the project git servers. These
are caused by load from the significant number of AI crawlers the
infrastructure is being overloaded with which is hard to mitigate
against."

Regards,

> Regards,
> Wadim
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65020): https://lists.yoctoproject.org/g/yocto/messag=
e/65020
> Mute This Topic: https://lists.yoctoproject.org/mt/111912830/4316185
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [yoann.congal@s=
mile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
Yoann Congal
Smile ECS

