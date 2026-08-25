Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDF8DC5DF9C
	for <webhook@archiver.kernel.org>; Tue, 25 Aug 2026 05:43:04 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.15551.1787636580839242862
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Aug 2026 22:43:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=Hm8uDtQ7;
 spf=pass (domain: smile.fr, ip: 209.85.128.50, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4980fe6b3beso2249105e9.0
        for <yocto@lists.yoctoproject.org>; Mon, 24 Aug 2026 22:43:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1787636579; x=1788241379; darn=lists.yoctoproject.org;
        h=in-reply-to:references:to:from:subject:message-id:date:content-type
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=VR0a9q7EnWVGRpUoqdQGw8oUIlXb3v3/IBTRcCohYrk=;
        b=Hm8uDtQ7J4pxQOPIy5aegTz/hW7a1oL+QImXWdyjB/UCcps4leFADIgzVrW6FzNkLp
         u+EH5CLN4z4sf+MNUsl/ECaKUkV5ktg+R/5UbE+UhOFor440FXu7VPV1DMI1dosssKjr
         lM30IiamFvFXrj9MLSqO0cG9QVXR6jCEYBJ8I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787636579; x=1788241379;
        h=in-reply-to:references:to:from:subject:message-id:date:content-type
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=VR0a9q7EnWVGRpUoqdQGw8oUIlXb3v3/IBTRcCohYrk=;
        b=H6+YUhMqPV5UNJ4cIfYFon8h3CfKvp/Rh8peeurma3k4TRhUDSRj+ewMWR+XKNBxc5
         +7OoRAr+6G9IGJMFEbv6QnPYX2PuidUG4CUdTioYLU2VMm1sKpnKEGdz6NSzu5cs0Qq3
         EUIBagfj/a/bqcUAVRo4ezwrO7tH66pSJDxDZvXowV1EiEplyuLhgQ1QwUpLepQ5UAR/
         5vAca68Pprw/cIlQgVRCnCkZJ0lo8sOuftJRBJZYvcOAZ2H0GyQq1XMYAtLDNnRRo/6n
         NTChVWKJhJY44EgzPklQj9347qBuypIQGgKBxsGzEZ+hl0+Ynm9ZVjfH1NMs19XEyGs0
         Gz1Q==
X-Forwarded-Encrypted: i=1; AHgh+Rr5+svfkjWUtLWyKuvcHB1IFD8aNRQ3GVxUy2X6e4yucI5/QsmM9XQtiZiX74Y8LaueGmsGfw==@lists.yoctoproject.org
X-Gm-Message-State: AFuF++n0Ei+CWLX9eUPTLGyjrsGAFyuTi8MogJasYIrXA/A0ZUrXS03k
	U4HbDMcb+pkYvWX9Y7h9IA3RzaQKbOjRjacexpwrm3lKe9y4mMb+Wcb5H9MqWT7T8ttCnW/CQOA
	JbPs8R2Y=
X-Gm-Gg: AR+sD13ARc13d2TPRulCcmpQXSewvQqr7Rr4OiN2Tc4U7jngTouJYp/0nlz7Ui3eCQ1
	X7V7ncTorEcB2Kh5pkNzjiMO32qjWBdod66CZLCxD5eAZvk8n4Mb4q9GBbOKWmAn6X0i87EW6e/
	FoAT57Jr2FKhmdzY6Xkqx/K5OLbMiSiVD1aUS+IszwyOXHAFb9RO8xoiKI/V7hFB4bS6Ky8Tw8c
	6Hcm/xtjLT/yWDrv2QbPJzBu7+N4f3bVq2yfidaejX0/50ngRYTbs1ubfVIm8cGG2zM2EZHbYZe
	154+20vCh3g1vS3LF/xM6EGcR252Iv24Le5kF/0E+G/C5Jn1MLGSAudU9h76I4AD0hTyS07Mg68
	YXrplWNusPjzW07C+nOnSKWL+o/xw1hMoNt6Ml0MCx8BNGCed3zacRw18TCEDE4ld27I8xInXF8
	vuAawdDosGAc9AGm/eiAv9e6OBkGEodfoer6VAl+vrTDB3XryjYmiDwQgKIYNOnZfJI2xrs9UGL
	8wOi3K99vatLieF+/3KS+IN2HBFEFXcSolgm7o3/kM4IxR10oKN
X-Received: by 2002:a05:600c:3492:b0:499:5f80:83ac with SMTP id 5b1f17b1804b1-499d6338030mr42406415e9.7.1787636578974;
        Mon, 24 Aug 2026 22:42:58 -0700 (PDT)
Received: from localhost (2a02-8440-250e-4982-9198-caf2-7be0-2056.rev.sfr.net. [2a02:8440:250e:4982:9198:caf2:7be0:2056])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-499d6538f5asm14689645e9.4.2026.08.24.22.42.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Aug 2026 22:42:58 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 25 Aug 2026 07:42:57 +0200
Message-Id: <DKXSA2MMRWKS.3N5V38FZGWH10@smile.fr>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-5.0.20.rc1)
From: "Yoann Congal" <yoann.congal@smile.fr>
To: <qa-build-notification@lists.yoctoproject.org>,
 <yocto@lists.yoctoproject.org>
X-Mailer: aerc 0.20.0
References: <010101a036de605e-3a10c1c9-d750-473f-be65-00bda321c337-000000@us-west-2.amazonses.com>
In-Reply-To: <010101a036de605e-3a10c1c9-d750-473f-be65-00bda321c337-000000@us-west-2.amazonses.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Aug 2026 05:43:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66693

On Tue Aug 25, 2026 at 5:02 AM CEST, Pokybuild User via lists.yoctoproject.=
org wrote:
>
>     A build flagged for QA (yocto-5.0.20.rc1) was completed on the autobu=
ilder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-5.0.20.rc1
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/4564
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

Hello,

Please ignore this build, it did not fully run and is incomplete.

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
> View/Reply Online (#740): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/740
> Mute This Topic: https://lists.yoctoproject.org/mt/120915455/4316185
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/14721440/4316185/830777862/xyzzy [yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


--=20
Yoann Congal
Smile ECS


