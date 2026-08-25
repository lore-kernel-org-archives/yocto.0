Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAB9C61DBD
	for <webhook@archiver.kernel.org>; Tue, 25 Aug 2026 20:20:27 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.31168.1787689219665707319
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Aug 2026 13:20:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=0H/zi+LR;
 spf=pass (domain: smile.fr, ip: 209.85.221.44, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-47de0093c42so150734f8f.3
        for <yocto@lists.yoctoproject.org>; Tue, 25 Aug 2026 13:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1787689218; x=1788294018; darn=lists.yoctoproject.org;
        h=in-reply-to:references:subject:to:from:message-id:date:content-type
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=h0M3nJseBCXk1jFMa4Td9LIDMDxzD4dKayDu2NOAexM=;
        b=0H/zi+LRh0C2kqIv0DbOiclLosyFx4PlMrKsYHZvU9MV/w7BlkEj0Np20jxsvgNkbn
         Egpuo1osLg/rEkPE1eWCyl6bESqdj6P24SF8e2tFTW0ebTLOzUhYhiIlSk4nDwK0O9ez
         o3QExGAF9Q04G3HYxs3+ywIo9AWnSaX30M+Qk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787689218; x=1788294018;
        h=in-reply-to:references:subject:to:from:message-id:date:content-type
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=h0M3nJseBCXk1jFMa4Td9LIDMDxzD4dKayDu2NOAexM=;
        b=UrWUJ1x5ISyMumZMY29k+L+4dqSO7Kl6dw3uhXzT6XFglAKsAjY8TTjzsMBtbNtbPL
         DbpuFvNChP+Rofo2H4riAWSgTLkA0kzaabrCaWapLVFVIGxXyohS8WBigH/vY68npf4g
         AfcKdpwhIU8q72l40GOwZ4ZaPafAyYDnTF1BKltlmiyzd5B9mO/TpLdtfvSwzkwZAvJF
         vUmg1oL81w4tmW1U/7PDaIyUbuxB533JXqXG96eva6Z5GY2CbQi5uoK2ZWua3nQWTacU
         3J4/RMK4tsFLsa98uATZbyusQGeVSE/1de8nh+HD872nxvSBgHhsS4yqnd6EFn+0WosX
         QWcw==
X-Forwarded-Encrypted: i=1; AHgh+Rp11zRZGtEvsDmHut05glH8Y7zNJ7tAEDB1HgQmV3Tz4lyQmormfC2sCIV2W5Py0420CVTzYQ==@lists.yoctoproject.org
X-Gm-Message-State: AFuF++n4IeHz/gkTE6bJEt6/wUuctHJKpqGj1217728Sihor/6bgGqHI
	FjgUMhXBf1Xu+zxDdxi5PusDdt1Brau/8J0/ilch/KZlmOs8XEfZsR/DbijQXunljfugB7V21my
	47Vx8OrU=
X-Gm-Gg: AR+sD10eHbgZLFFka00IQvf4/NTZoOiOHcPW57nR5oq29eONfwwJGIdW+XjdhTIDnEY
	IXgXEYAh7Hc+LG100/F7qrAP6mC1Si8mdBTgxuJJeP4NYUwbAyNoa5vdkyt7DvzJW1gGeA4awOb
	ggJwqXFOoE8IerPvLidXhKnkni+DWRVEGJH9OXwqLmsbdCvlzoR/Sc+fmonIyD1ef52JemZwUWN
	CwuSyDYFxEKrxJVq9E8vt2wKjLwjed6VepnI4uZpU6CW9R9fq6ILFkPAaBs3B3ErC0JycdyNh/+
	JSxOCbaEf49PAuMtRfnLyQN63niT81eZflplRT/O4WplZsDjhWZSNj7JyZAXN8n87/EQzwt8AwL
	gejgGDM5Q3g3QmKzdzx1AYT/K2VXsYWzmPJEbNrg2nohHnNnARhvOiiy2N7Bn9e2XIyU78OJWZf
	tv0iD+bwQr9p5F5Bj+QQZU7nDlR2VFDrCyCLRkkGEFekz6Z+vQ4mZrRW6nVhAz+ElOyJv3dWvCg
	w28iCyG1JqvTrmNuIitP98gQxOSa+bPpf26+My4P5foQ6p6/hE=
X-Received: by 2002:a05:6000:989:b0:47f:c648:e274 with SMTP id ffacd0b85a97d-482e26963edmr2191587f8f.5.1787689217623;
        Tue, 25 Aug 2026 13:20:17 -0700 (PDT)
Received: from localhost (2a02-8440-b502-b60d-93f5-be80-aa62-9351.rev.sfr.net. [2a02:8440:b502:b60d:93f5:be80:aa62:9351])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-482e28dc10asm544254f8f.19.2026.08.25.13.20.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2026 13:20:17 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 25 Aug 2026 22:20:16 +0200
Message-Id: <DKYAXSN4JP64.3N0HQ3UN28AFA@smile.fr>
From: "Yoann Congal" <yoann.congal@smile.fr>
To: <qa-build-notification@lists.yoctoproject.org>,
 <yocto@lists.yoctoproject.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-5.0.20.rc3)
X-Mailer: aerc 0.20.0
References: <010101a039c0788a-1266317b-65ae-4f5a-be4e-1c4cb507bc5f-000000@us-west-2.amazonses.com>
In-Reply-To: <010101a039c0788a-1266317b-65ae-4f5a-be4e-1c4cb507bc5f-000000@us-west-2.amazonses.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Aug 2026 20:20:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66696

On Tue Aug 25, 2026 at 6:28 PM CEST, Pokybuild User via lists.yoctoproject.=
org wrote:
>
>     A build flagged for QA (yocto-5.0.20.rc3) was completed on the autobu=
ilder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-5.0.20.rc3
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/4572
>
>     Build hash information:=20
>
>     bitbake: cff3be6f664f8f07a40727ff63eeeb24d6f5e00b
> meta-agl: 97aaedbe2774c1deda43432b4bfbe725c55f9894
> meta-arm: 045eb74bd9abe7d9ccf365a2417e440ce83bcbb0
> meta-aws: cad59b89c00012ab67d8b4f105714c8aaa5c16a4
> meta-clang: cc29beb210ab94eacc53bbd67e287e4e33ede342
> meta-intel: 5d153e35b4e752505efeae368f188fac5e31cf33
> meta-mingw: a2065f321a3dbca1e69f070502917c76653d9105
> meta-openembedded: bec755063a8b5da65df626f5749496aadaa4f4bb
> meta-qcom: ec80a36bce11d8182b4bb2a6fa0359adfeccde0a
> meta-virtualization: f980aefbc8b3eeafb8d144e7fdac3c3b701a4fea
> meta-yocto: 961c2399d06fbdb04ee27d06079e186d2c4a14ad
> oecore: 70dc15941dd33270a92d1001174efb3093e79bdf
> poky: 64e69ed23703f6358ec431d3f5f1f8483f974cae
> yocto-docs: fe46d5de41930a2762a9ad2543d50e0f4e10463b

This was an "all green" build, so OK to proceed with QA.

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
> View/Reply Online (#742): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/742
> Mute This Topic: https://lists.yoctoproject.org/mt/120923555/4316185
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/14721440/4316185/830777862/xyzzy [yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


--=20
Yoann Congal
Smile ECS


