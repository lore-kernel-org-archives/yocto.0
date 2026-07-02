Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B139C43458
	for <webhook@archiver.kernel.org>; Thu,  2 Jul 2026 18:17:22 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.75640.1783016234178175146
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Jul 2026 11:17:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=FZQsKqFP;
 spf=pass (domain: smile.fr, ip: 209.85.221.52, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-470174001a0so1544940f8f.0
        for <yocto@lists.yoctoproject.org>; Thu, 02 Jul 2026 11:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1783016232; x=1783621032; darn=lists.yoctoproject.org;
        h=in-reply-to:references:from:subject:to:message-id:date:content-type
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=mn8JWDGhuwsb3W+FlPNudS25oN6tv9F6TK6mfmpYfWI=;
        b=FZQsKqFP8VIPqzTx6RnXFm29mlloEVtWzCu4p20r/FF6SxKfgsViD4E+smGaCA6/TV
         s0YHBPiYj1OUp3a3EPde7qxKOeo5idS8BEOwvy39Eq8Dedw8xlt8p+QlRqwlRpyGLKOd
         2NwjcKG/2OfXVKNG/L/KJY6fPTPpmeSvVF7cs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783016232; x=1783621032;
        h=in-reply-to:references:from:subject:to:message-id:date:content-type
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=mn8JWDGhuwsb3W+FlPNudS25oN6tv9F6TK6mfmpYfWI=;
        b=qs3saW8WWfNJsw/jnPAtIM9oPeRlht7Rq0vb28cf9GoNqEp3z/cxc/Pw/q0O3L9RdH
         mlYAleSmStzw0itp6lrcZHBAv4BSiU8z7CC1Uqf+MS35oh8h07cqkYHytZKWXZUS21R4
         hBqIDCAnMY6/YOmQtAxhIhxAaRLTg3ix5l01dy4cCinxvc7BftYQWP1U+8hn/rqqdw8Q
         oqKAKISIamGRobNX5GCKODAVQwnfDzcMVfA9Klps8clcM6IxvwgJ2X4K6Y0ugwKATS6C
         dHxxdFvpsXeY8u77haApvQVc/RAjE+rPOEb8D1/LR7e0dFrcIlQgat1AH38BKJxx2wKp
         arlg==
X-Forwarded-Encrypted: i=1; AHgh+RoMVUlqpwYEWtAFe5nEBNyh9l9v9ksGKWL76KYDn+2TI9f1NiVxGyvotlkVQA22h02aptrHeg==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzYReH0WZfgcP8/4GfI5bSNbutp+V8fgCMRLdU62k6Wuc6ieKJT
	tkd4h8sHeYlr1hEqX+VxHlvThL6IYT9efkK9sweEKSq4HoxrfFCO0+sRHQcUPietPFKhML2FPYn
	MOQA4igU=
X-Gm-Gg: AfdE7cmtwJHrbq2A/Z1ECf84lPKJ8mQGXG4bGYJLUSzZC5gtqQ8CNrPBOVJSzJaxmGB
	vKWvL7BVXK6OXk69Wz5jQXlUYLq6AN1L9X7aExi693mBbWJJINKkE6RIhXuSiZ254e62XufON5a
	iK1tDgx6TE0Fs14MgkQYRZBHCXiTB0ntgqRAWH4qJFiF7y8oh+43LSLqU0q1MGN5tRypjHWlKBw
	3+vcMD1wFKIkqExleEF09njCpY0pu2VtGCrbCN1R+oZ67DPAzlku6xopNZFIvInFVvfrvOX8rCh
	IKeHmCKKsKZyD6fGcTA36aQExZXC1F6B5IlP4EHrvX/Tiol4+Vp9N9ul+nLKtpbdBPuc804f/LS
	KPnUlA6JXG+zgTK4mmmIpltEwQm38fEs2VP60uC65vilrBbqZxJjhEsFzY20fyiWTaam8+IOfM/
	bk5qJLtJUXLsnFCgggtCPngRh7MGsLAS4/70sdLgUGuS+4Ppe/E1o/ACgnTJWc0rOQVY0hu9ITF
	GFd/g==
X-Received: by 2002:a05:6000:2282:b0:470:4900:8d14 with SMTP id ffacd0b85a97d-477b32c1b95mr9812688f8f.2.1783016232180;
        Thu, 02 Jul 2026 11:17:12 -0700 (PDT)
Received: from localhost (2a01cb001331aa00c56cc01f8c3c1c95.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:c56c:c01f:8c3c:1c95])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-477dde1ac93sm10914179f8f.28.2026.07.02.11.17.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2026 11:17:11 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 02 Jul 2026 20:17:11 +0200
Message-Id: <DJOAI4RT1KZV.3C0VW3WMNPM9I@smile.fr>
To: <qa-build-notification@lists.yoctoproject.org>,
 <yocto@lists.yoctoproject.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-5.0.19.rc2)
From: "Yoann Congal" <yoann.congal@smile.fr>
X-Mailer: aerc 0.20.0
References: <0101019f24094983-53d3f366-c7c4-4c6d-a05c-8c8377b42bac-000000@us-west-2.amazonses.com>
In-Reply-To: <0101019f24094983-53d3f366-c7c4-4c6d-a05c-8c8377b42bac-000000@us-west-2.amazonses.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Jul 2026 18:17:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66623

On Thu Jul 2, 2026 at 8:13 PM CEST, Pokybuild User via lists.yoctoproject.o=
rg wrote:
>
>     A build flagged for QA (yocto-5.0.19.rc2) was completed on the autobu=
ilder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-5.0.19.rc2
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/4131
>
>     Build hash information:=20
>
>     bitbake: 0880963fea4d91a034e4a6e007d23f98658ab986
> meta-agl: 7738e51706642d062e945ddeab50d10d2c4a57b4
> meta-arm: 23b572c40ea6709ab3f8bd7abbb5a795fc3631c2
> meta-aws: 6cad2b1795cc76cc8e994d472926256485943fc6
> meta-clang: 7cf54f70cebe897d844f649024322bb096d7cb50
> meta-intel: 5d153e35b4e752505efeae368f188fac5e31cf33
> meta-mingw: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
> meta-openembedded: b0c2c648a1af89e7a8dd4c2ec841f3bc0ed0ccb9
> meta-qcom: ec80a36bce11d8182b4bb2a6fa0359adfeccde0a
> meta-virtualization: 9d0007a369deb4a6346f5ab7a9e6d432a8ed14fe
> meta-yocto: 2f749ae477c3b94dce71038f025180d7f612dab0
> oecore: 2814f0962f56c8d1afa4de76d2895ba9b5cb767d
> poky: bb98354685781296e3b3737e7762412100f359c2
> yocto-docs: 1b819d324780a699d9307a2d4e68c69b576ab748

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
> View/Reply Online (#724): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/724
> Mute This Topic: https://lists.yoctoproject.org/mt/120087659/4316185
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/14721440/4316185/830777862/xyzzy [yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


--=20
Yoann Congal
Smile ECS


