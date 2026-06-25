Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DB95CDE000
	for <webhook@archiver.kernel.org>; Thu, 25 Jun 2026 12:57:24 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.10888.1782392239158836665
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Jun 2026 05:57:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=w+Rel+Nl;
 spf=pass (domain: smile.fr, ip: 209.85.221.52, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-4629051c946so649499f8f.1
        for <yocto@lists.yoctoproject.org>; Thu, 25 Jun 2026 05:57:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1782392237; x=1782997037; darn=lists.yoctoproject.org;
        h=in-reply-to:references:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P36qjxF64T3zs1spSFmE3dvCICCEUDfGXetfjOdd6t4=;
        b=w+Rel+NllmXfdRzsAScHpPCb90cXmZUuUeMp9hfA6gaW/UfulZRFcy+hqfWM+uaxb8
         a58/EefgGUhilF9NZCH6R1DsqETYf9ihwE+jjvLoeRgp2JiPf0ACyP5twU7TEDvuTAYO
         7WNRs0obYBBcp0PrzA/oitMAAP/DROYDxaSGk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782392237; x=1782997037;
        h=in-reply-to:references:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P36qjxF64T3zs1spSFmE3dvCICCEUDfGXetfjOdd6t4=;
        b=m8HeE9q4dcixX7jc7RoNnYZHy8rdoCifpUDPe6c8FSvrgRiFQe9oltDcHDZo3tzH7R
         4lEK0E7rxghrmgFMK7M80lOvtLpvQMIrkx1Gm+ABpbemGBKlpHdVqKu6UCEx01glMMeg
         BNplBVHj7c2cU8t97bzw74F2uD1rQD0l3DQegMPGRQ/+4T3uAhXHdi5ornLA9JCvDz9l
         79zVxLWjsWtMsOAwXlCWdu+4JlCmfuJ+bCTA+j0KbhPkl251D8BUdZW5qvdJD7B6iei7
         5CaP2ZoE9dQWETccTiOcZ9cjLGNCo0t8ByYFbwN0CY4TS8bHAHbwg2AE1ptAEM4QDYK5
         VmvA==
X-Forwarded-Encrypted: i=1; AHgh+RpGjfWfRlr0DZv6+33FUECUOHsUs/Drjg5eX6H39DTEv7Ri2RHRQLatSm1Zow5pU2jjmKEirQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzH5IKNE+eExOyuLT8BhD5KXP3VOo1Au2+DW/sroeTDyiKluuAW
	5ZPqBCCac/+lhTD06COoisitv5AyJmZzbgWN6aOKDMgEUn4xp3+XC/4qyM/KhAZx5+0=
X-Gm-Gg: AfdE7cmVr8x0wVwy0kt32CtqXLjEOmpEdaqKZrTZFGmaFnSMt0sF8Vs9f2sv5Mm7ZaD
	LHkeUQ96i2/KRJ1HPLKuf0BQ/+WCV0ZIgS/RZxi4VRGQVT90CjoRQUXYkWdW1o3HXZ4C9N9WF3Y
	YOsUhwudBynA9rv3IeSzqc4OHM8esLq2YUoQjU8lAQj/Rfy+7ZCGlKFxzTnDpVN/Yln/pEY4XG0
	psZ8uHn9lnN6SNBorQrD0Ul2sdLim9M5nMe4F0ormVjJVFPPDuoA9R0OytJSCIwBNbERf8cjGja
	Q5ob9601EBNNitjZ3kMF7C7RX86SJ3KK61PaQpeybNLGZ7g/ORIJ5EyliDpF7vPS0OwsiciLF2i
	3mdAhOrLsSw5iiyn8Y7kVFdqWSseEcGFFD1LbIwpjcoc61TsKc2l6zPq4LbS2/CtYoxdrdG9W5z
	tyayYbG2L688BB72svnNWPbJfeTqmkZrTdf6D6atZhj6A+v9kAgfIfXHSyDrhmamJJjD2vWmPn5
	viqmg==
X-Received: by 2002:a05:6000:4202:b0:45e:f295:33cd with SMTP id ffacd0b85a97d-46da8c5ff94mr4060876f8f.11.1782392237077;
        Thu, 25 Jun 2026 05:57:17 -0700 (PDT)
Received: from localhost (2a01cb001331aa009da164524c038470.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:9da1:6452:4c03:8470])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-46d3b59cef1sm8727459f8f.26.2026.06.25.05.57.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jun 2026 05:57:16 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 25 Jun 2026 14:57:16 +0200
Message-Id: <DJI5BDI359MM.10SQRH0LZEEX@smile.fr>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-6.0.2.rc1)
From: "Yoann Congal" <yoann.congal@smile.fr>
To: <qa-build-notification@lists.yoctoproject.org>,
 <yocto@lists.yoctoproject.org>
X-Mailer: aerc 0.20.0
References: <0101019efa95152e-9cba1b64-0ddf-41fb-90cf-0a6759e35a91-000000@us-west-2.amazonses.com>
In-Reply-To: <0101019efa95152e-9cba1b64-0ddf-41fb-90cf-0a6759e35a91-000000@us-west-2.amazonses.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Jun 2026 12:57:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66611

On Wed Jun 24, 2026 at 7:02 PM CEST, Pokybuild User via lists.yoctoproject.=
org wrote:
>
>     A build flagged for QA (yocto-6.0.2.rc1) was completed on the autobui=
lder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-6.0.2.rc1
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/4076
>
>     Build hash information:=20
>
>     bitbake: acfe02fa38b5da9e6a36c6cedcf91d4fcbefbfbd
> meta-agl: 3c55b45bf920bec93938af02f2452cd698d3bacc
> meta-arm: 01c33e494636781e0787ccafa46cc0102dd68869
> meta-aws: 5e7cc95f7d55a0ba0ae6a7e6e43e6323811a140a
> meta-clang: 78c5e12f08198f4f257a9348516d2103cd617c1d
> meta-intel: efa8a9b22ffaeecfdd113673074496d377ca290c
> meta-mingw: e2aac06ec74e46d08b7e68f61043047c761ae9f9
> meta-openembedded: 100027977216601000cbefc42c2ff6cf667e7b5e
> meta-qcom: 61c71e0c6d6ae13c325d60fb6003e3bc5ecf85eb
> meta-virtualization: 781735b97ae5013cacabbecd38e6da6b510cf3fb
> meta-yocto: 24c24cef5d1523fefe43a3e3d34667b37ae551f3
> oecore: 5d1aa5c806c061a2994f4decb59016610f093213
> yocto-docs: 2c59a23fc39d92831cb55a0e5f713d20f94730d4

Hello,

This build had 2 issues:
* "Compare AB workers and SANITY_TESTED_DISTROS" step throwing a warning
  =3D> #16233 =E2=80=93 AB-INT: 502 bad gateway on yocto gits https://bugzi=
lla.yoctoproject.org/show_bug.cgi?id=3D16233
* "meta-qcom" failure: This is a known issue worked on by the qcom team:
  [wrynose] meta-lts-mixin dependency broke Yocto autobuilder builds https:=
//github.com/qualcomm-linux/meta-qcom/issues/2457

Both issues are not related to this release so OK to proceed with QA.

Yoann

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
> View/Reply Online (#721): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/721
> Mute This Topic: https://lists.yoctoproject.org/mt/119960549/4316185
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/14721440/4316185/830777862/xyzzy [yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


--=20
Yoann Congal
Smile ECS


