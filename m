Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B8FEC55165
	for <webhook@archiver.kernel.org>; Fri, 31 Jul 2026 00:27:11 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.926.1785457620791943030
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jul 2026 17:27:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=yjk0TNho;
 spf=pass (domain: smile.fr, ip: 209.85.221.51, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-4758bd3731bso238868f8f.0
        for <yocto@lists.yoctoproject.org>; Thu, 30 Jul 2026 17:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1785457619; x=1786062419; darn=lists.yoctoproject.org;
        h=in-reply-to:references:subject:to:from:message-id:date:content-type
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=JxL9UwDW7P3lKOtZTk/pbJSOwRNyAqkjOUU67RcrFL8=;
        b=yjk0TNhojs2pG7UbOpw5YUBY+tbBdo1w5ur06MSkbRkLbAWm7okyDT25uekX+D/mS9
         vnz6nZ2qpJ1zflUKfJHPM8SE6rkok8MAn1wyZaIfaciia/tDRZVmR40pg5HUAPdlFpeF
         5T6Ye478BU8EHm8ooVeP4SlV4iRw0JvnvXkOo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785457619; x=1786062419;
        h=in-reply-to:references:subject:to:from:message-id:date:content-type
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=JxL9UwDW7P3lKOtZTk/pbJSOwRNyAqkjOUU67RcrFL8=;
        b=nrUpFq6RIKgJVp2Ev6fbE3NGhmUs31CZU2KgChboDwjZYU+WuYrpdLSC1WLSnZVk6c
         TNgxqNuXSKjvlYXPqLhuHDkKStOKwmK1H4XZWcTaseU3EtQvj3/ueeMw+m3F9n4DECHK
         XmHNmctaq5tps5YRdqQOin1uqHwbeH+Oik5oS6AkJQAqAJCYY7oogdu4MdXB3K2dV0pN
         gBY3W/fW5/2XLmS0R+ejQxX2ZoUnOFfv2Cu29pjEpgsHI1JWKFCcMCKqUXXvLtgVde1b
         0cT72A9e0UB/F1k8oSQgYGlAw4h9kqPVk+KAcx8Hc4v9F5mDFzqUjDLGnskOUX4I/Ha6
         eIFw==
X-Forwarded-Encrypted: i=1; AHgh+RqwFVacdGIIpGyxCCpQvWkfrcKUoAOkSprSfysyPArpimYDa0o00eMY4TdCaZBlWbTA2xTDkw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzozA01ockhBjWKA4B/y2u5jdrcdDVXQLfEqWJ85kwyajtOsP79
	HqUD4iDuW6Qz4WMJWkUKdNkbEJsAHJUvk7rxy47/LkuBehHN8vLnmfAMpaSN2R1mOX9PqXhKmxU
	PzpynVCE=
X-Gm-Gg: AR+sD12jU/jy+mc+kjiJqVXzUKE7Jc1G5nC7mHspCpRRmH3Gwn6JwrGT15n1OKiMbox
	jVSsPJq/AipXqplcz9wNo7xGIBiZuDKkbScZzsbZpYBw2ptpnnreMDT98FOTMQunDEEvD2jjMn1
	oz+aaW2m+8tYzXs8eSIb3B9BNIhAE048Y3ojO/dAbPtzoy3zVncsV1hMvhm91OlxM7S93U4Mowb
	B3lZNZB0PcPL87qEObSet9EDEke+nUrMlCVMzYG4ErEfyw1dtPcV1UvpH0sGI+NiUHjB9mvh97r
	DlXesaf/QPeAwUju6MISCWQlqHh5TL4sj38FRnffYfdCEvsGrfufthYFC9zmkYUWgSdMtB4iadZ
	sTq/c5DR6ONJOGuL3nP9D+KcH7IrE64VtWqqhHlJr7oFG9Hc44+Jvu5QzEDMATnQtN1UpoaBSCE
	F+4EXq1bc3HagRsAJi/e+nie398mdNNX6IIaIRNSnT2Q//zAFAvZBbsiOTrrY6Z0pi5bCzyc5kr
	+b0cUUDNPV/KJmnf4bDoMfitKnE3gzw+dYZEfBplDEmsAoaFqKw
X-Received: by 2002:a05:6000:2506:b0:47f:95cf:26a3 with SMTP id ffacd0b85a97d-47fcbcb3ddcmr4165174f8f.14.1785457618671;
        Thu, 30 Jul 2026 17:26:58 -0700 (PDT)
Received: from localhost (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47fc89418c5sm11025087f8f.33.2026.07.30.17.26.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jul 2026 17:26:58 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 31 Jul 2026 02:26:57 +0200
Message-Id: <DKCBWI6GK3TK.1UHD60XED2762@smile.fr>
From: "Yoann Congal" <yoann.congal@smile.fr>
To: <qa-build-notification@lists.yoctoproject.org>,
 <yocto@lists.yoctoproject.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-6.0.3.rc2)
X-Mailer: aerc 0.20.0
References: <0101019fb4e2edae-c507e5b0-0a70-4996-ade5-91f6aa853cfb-000000@us-west-2.amazonses.com>
In-Reply-To: <0101019fb4e2edae-c507e5b0-0a70-4996-ade5-91f6aa853cfb-000000@us-west-2.amazonses.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Jul 2026 00:27:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66673

On Thu Jul 30, 2026 at 11:16 PM CEST, Pokybuild User via lists.yoctoproject=
.org wrote:
>
>     A build flagged for QA (yocto-6.0.3.rc2) was completed on the autobui=
lder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-6.0.3.rc2
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/4341
>
>     Build hash information:=20
>
>     bitbake: fae9db3168dbff1b8c76fe9c6726a9687ff97514
> meta-agl: 3c55b45bf920bec93938af02f2452cd698d3bacc
> meta-arm: 0979b80429099f1a42dc0026c8c466cee780bc74
> meta-aws: 5e7cc95f7d55a0ba0ae6a7e6e43e6323811a140a
> meta-clang: ef0d22f21910a0c30c967eeb17d8f209806e2d81
> meta-intel: 79a9681ce83f6bf36aede3aeb8c1707d29bca329
> meta-mingw: 5876c193da3ad86b5e23012374b5350e49b0c755
> meta-openembedded: af8b6d6b2f0b11595b0a0d5b82efa3129d52a628
> meta-qcom: 08c6fad437408d3f38afdd9b82dd6b1fc3a7f872
> meta-virtualization: d7b0cd1e5f0f28aec111137f4490763d5db01fd6
> meta-yocto: 1b132647002eea43a2c7a7f857f63f42dacbc26c
> oecore: f09a0f28aeb54ddd90415dd458338e1565bb5a49
> yocto-docs: c8431f833c8f663621793033bbc1b61ccfdf4d28

Hello,

Please hold QA for this build: It has failures and we still have time
before the release.

Either Paul or someone on my stable maintenance team will tell which RC
build to use for QA.

Regards,

>
>
>    =20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>
>
>     =20
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#733): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/733
> Mute This Topic: https://lists.yoctoproject.org/mt/120526114/4316185
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/14721440/4316185/830777862/xyzzy [yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


--=20
Yoann Congal
Smile ECS


