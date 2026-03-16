Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E24A0F53D81
	for <webhook@archiver.kernel.org>; Mon, 16 Mar 2026 17:39:39 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.56865.1773682776872467282
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Mar 2026 10:39:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=wIdHWQxt;
 spf=pass (domain: smile.fr, ip: 209.85.128.54, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-483487335c2so47084015e9.2
        for <yocto@lists.yoctoproject.org>; Mon, 16 Mar 2026 10:39:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1773682775; x=1774287575; darn=lists.yoctoproject.org;
        h=in-reply-to:references:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yayviwB53UjJ0jYyKAbDDJH4aOA0JdG3tIW2fDTJgtc=;
        b=wIdHWQxtV2vnCS9RqWpI8bJfCys4RXZhFPBzet4gs7W3VZvliS9bIJygeSsRsQ+fbb
         P3GVRdAMg1ccvm/cKzKi8sBvkUMJSS6McqMewS11X0ffs4yxtd1cE+1V3+osRSMhsX5T
         mN5i4PibULjrnJnS/+D+PFwpYFCDaHQwJeAFE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773682775; x=1774287575;
        h=in-reply-to:references:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yayviwB53UjJ0jYyKAbDDJH4aOA0JdG3tIW2fDTJgtc=;
        b=Xvqlx2kGVdqBvT0TMoSjXQ6/GX9hB5XfWanO4R+OHall0bNqUsOExlix8eHin7uirg
         IT5NJipDnT2Mpkq77mVjIE+II3I8alHA74KWGfLZovk45HmZKXNIwa2AmzhoGmwF5Uzk
         iF6ES9E5PVbzjc6UvW5LkPYKbuKms7VrJmFm2t2kcl1eqAR4DKT4gGC6ga510Zi8lG++
         FhJJBSBqai8Wa70Ipmw1zB65lhCHnnBmXdzyQzhrI974r9IhvxcHqyiHH/+E/0fx57oX
         o3nzBeBH4Bzl3BfCrCKIKlEKlpKNu4ovNGuzeN/erYfhPBvnYL0Y8Mhyj8vy3kBbkRhe
         z7cQ==
X-Forwarded-Encrypted: i=1; AJvYcCWDL6WuxJbStNX/PDP0dBQpXz+SYJwKAHu2l2f2xQLgnqla1ZPc0QW4xfXIaJpFbWhC/0Ugxw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxedNTmfrPn3Z9VYN5xCsd7SBjv27PedhV9encaJUrfusprojRi
	VXBNYRILyUc6vDLs9t9wI6miMOHB7dG+zu4z2mKUaGqzLTzvdV3Th6gs7Awo2fYUOig=
X-Gm-Gg: ATEYQzw4Q8znGJRvl72rDUq/Dn3vPvHx++pIhP+ZCcTQ3oitVpHMpGuuXmtZZjVmcTq
	vFwDmt3CcUySyLxHo6bX9cGIZA7ls9rUjXDZnTj0M22snNyMFpdVTQSsaFPhb8h/DB3RQExfOfD
	Qx4RgD9kl5rQApc9+TfrbxHShQMIZrOG7HHxfJNJtgStwmtuFBzv92mhmfj2JfxfsvCbWAdfiYJ
	ze/ebjsYsBQwXgdLPd/5phlts1WdfsN4Ma8YqJEtQZmyUNWMulRR72nzAGyiew4ahCCpZvPeVQm
	1S4tHCRi7RxGzyX282pF0i7VBBBFoxLzBH6TgJ+dTgpRytjDSWF8Iq72lzkbf+BetRQAUMh9fb7
	l40tiF3UEktlc4/tRX8FxuHp+DkCCqq/9FuLOrafdlQqlBmSS2X5/+q5tfn2kVTkytwwPVBNdhB
	uTOhGieu2Mv8+oDc42OofnMKM2kv+VAlMHaTy2GHejMQ/sItoAxDd5w6Mxcbutd3f3wrOtBoRTV
	805ZFa0lm5i6Q==
X-Received: by 2002:a05:600d:8495:10b0:485:3e00:9451 with SMTP id 5b1f17b1804b1-485566fac49mr175828335e9.17.1773682775043;
        Mon, 16 Mar 2026 10:39:35 -0700 (PDT)
Received: from localhost (2a02-8440-b503-5764-fce6-a195-23fb-5942.rev.sfr.net. [2a02:8440:b503:5764:fce6:a195:23fb:5942])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4856eaffbbdsm7022045e9.15.2026.03.16.10.39.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 10:39:34 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 16 Mar 2026 18:39:33 +0100
Message-Id: <DH4E2HHWAZNP.3LW9TXCYDD2G2@smile.fr>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-5.3.3.rc2)
From: "Yoann Congal" <yoann.congal@smile.fr>
To: <qa-build-notification@lists.yoctoproject.org>,
 <yocto@lists.yoctoproject.org>
X-Mailer: aerc 0.20.0
References: <0101019cf79d32a8-dcb852f5-e466-4b80-9e02-65463eec7210-000000@us-west-2.amazonses.com>
In-Reply-To: <0101019cf79d32a8-dcb852f5-e466-4b80-9e02-65463eec7210-000000@us-west-2.amazonses.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 16 Mar 2026 17:39:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66334

On Mon Mar 16, 2026 at 6:06 PM CET, Pokybuild User via lists.yoctoproject.o=
rg wrote:
>
>     A build flagged for QA (yocto-5.3.3.rc2) was completed on the autobui=
lder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-5.3.3.rc2
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/3433
>
>     Build hash information:=20
>
>     bitbake: 7af7e04f3adc8ba144d9e2e6b37ed4ddb3b59df0
> meta-agl: c1761e898d7fca3d8438e9b010eaf234f94fa407
> meta-arm: 73460c53949658ab6c8b46269c3a69caccd3f745
> meta-aws: 361115903050329832a005bd2c98ed40b6e8dfd8
> meta-clang: cf20f8bd1366d41094c945597b95dd746e87b871
> meta-intel: fc9bc44c9da5e7e7bae38313615aaff5873b843f
> meta-mingw: 00323de97e397d4f6734ef2191806616989f5e10
> meta-openembedded: 12fc4c6584e001f89108a6691ccf2028eb05ed5a
> meta-qcom: 08826f0bdc9b36db8d5bcdd980b11648b185a930
> meta-virtualization: 8f03a0cc8950ef5d5e4f11d9ae494946d1991e45
> meta-yocto: 9b98ec5e6cfb6c9dc74d3c2e6304eeb274f7c487
> oecore: ab57471acad7ce2a037480dc7b301104620f1ebf
> yocto-docs: 82bd1a71e6e6a707d0009725969976cf2256af36

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
> View/Reply Online (#673): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/673
> Mute This Topic: https://lists.yoctoproject.org/mt/118349130/4316185
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/14721440/4316185/830777862/xyzzy [yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


--=20
Yoann Congal
Smile ECS


