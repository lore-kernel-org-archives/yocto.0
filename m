Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F34F8F45A0F
	for <webhook@archiver.kernel.org>; Fri, 10 Apr 2026 21:27:12 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.166751.1775856431777079706
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Apr 2026 14:27:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=cFv3hM9c;
 spf=pass (domain: smile.fr, ip: 209.85.128.68, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f68.google.com with SMTP id 5b1f17b1804b1-488a29e6110so28457345e9.3
        for <yocto@lists.yoctoproject.org>; Fri, 10 Apr 2026 14:27:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1775856430; x=1776461230; darn=lists.yoctoproject.org;
        h=in-reply-to:references:from:subject:to:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Xhnj3P/I3YlCKpCA3lW5fTpJuoORspk9R4LKhproks=;
        b=cFv3hM9cuGBsWMwdZgGGiNis4T/KcEcjoy7HpflGOV7GTVHXwQ2EaTGLqzGMgOPoc2
         /uXFsHfjhSanbessjveidzdLyk//iiPeOc2STn56w//q5x12srNVuQBNj4eV3OfNVAmc
         EZDZqcMt+ISfTobok2T2btvdCQ2vw5SAVw3BU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775856430; x=1776461230;
        h=in-reply-to:references:from:subject:to:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0Xhnj3P/I3YlCKpCA3lW5fTpJuoORspk9R4LKhproks=;
        b=YhqLBJFu+4zvfGOCbOoqIY3G1KZ4xUlgKd3ofGMBGkm9hwtwtoZGghFpxwWJhp8o2q
         nsf4A/nQ0BjH5uRWef1XbjJbrSiNzCTWTfZH3EMajsPe6l1J49a+mROr7cgmO8Gyl2NC
         ZTPJZSGOYXHAwMJVntyilGI2CNJb5GAi6b1YU6SglXenMoxtvkSQCnHytzn+x3GIglfe
         HAHSeL6YjRjMG2intfwXlp2M37/hMWW9VKYgJlhPrBvwikJM0G430FcUTMZWurm6kUdq
         qgxS+WhpoqoqVLt+BazwRdfipLUXWV9Ph6tDlJy0jVQr76/dZPMyd6cw+b1H7FdAnDrR
         laoQ==
X-Forwarded-Encrypted: i=1; AJvYcCXPZ7J8HkV6YqutK/2rU+dUK5sF3FzaV7aXbECP6wbxr/ZXbmi77FwNPc99OCFCe6C/mjj39Q==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzAeBqrUG83acO68Q+eCG8+Ywk6oPvWE/TJr+r/hMao9zvk5A38
	X8lzn1pEx2AbJd1Dauf48jPrHABzX+QU8XQ3mm7OYBLVhz+jHU5urcj6ChpZsI0A5g+zTm6ZAeC
	rnS7WwNPzpEeh
X-Gm-Gg: AeBDieubwnzFX1EVqFDUTJKe8x3TycZB8G0JLAnWf2545S/TrNbkpeevT3pOl/u4/+e
	dvvymRb5PQr5p2FjvHxRnXW+nJuMWAV2SEYgHrd9RfvMsg3j0SOfcAjQjmDj8FXPWQpn9FkgWec
	KKYfevc/cj/ax0GmGi8crD8FizngGX/KVnwWNR86g+QdCzYQY0PyZdH/Z3hJyNMd372xMAmdTWM
	x9PxXaDxrz+P6OLIFkDebkREC748meMyx/LAn8oL0+8b1i0006RL2GndkGNd+oXy2RuJ+XHJvam
	RdfYMQtJA0j9vr1XM5oKvqvDQiZ1rOprAKaaXk68Kd866KgcjOo3eCoQXpBLAbZxI/YKSJ5VtUh
	vxCgvwFOZcHK8ocozvnnlZ+rIYxdDww84/S22nTvhRGlVAzVnHsyYGel02lpAfIm4xY2rgIWAi5
	geQ3+8vI3UGQD77huM+S2Vdzg83uuzzwJuCRlw+iyoYY4+nNRRv1MxBGf8SrsxrBos7hPEjFKBp
	GYYFJ3+AWKooreNq/NNF4fApw==
X-Received: by 2002:a05:600c:35c7:b0:483:64b4:79da with SMTP id 5b1f17b1804b1-488d68b27d6mr66823935e9.26.1775856429671;
        Fri, 10 Apr 2026 14:27:09 -0700 (PDT)
Received: from localhost (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488d67e685csm47150115e9.6.2026.04.10.14.27.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Apr 2026 14:27:09 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 10 Apr 2026 23:27:08 +0200
Message-Id: <DHPSKCPED9UI.2AFCAORVY8PDM@smile.fr>
To: <qa-build-notification@lists.yoctoproject.org>,
 <yocto@lists.yoctoproject.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-4.0.35.rc1)
From: "Yoann Congal" <yoann.congal@smile.fr>
X-Mailer: aerc 0.20.0
References: <0101019d78e44a99-02fb8520-6c59-48c1-9ac3-64e44075a988-000000@us-west-2.amazonses.com>
In-Reply-To: <0101019d78e44a99-02fb8520-6c59-48c1-9ac3-64e44075a988-000000@us-west-2.amazonses.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Apr 2026 21:27:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66397

On Fri Apr 10, 2026 at 9:35 PM CEST, Pokybuild User via lists.yoctoproject.=
org wrote:
>
> A build flagged for QA (yocto-4.0.35.rc1) was completed on the autobuilde=
r and is available at:
>
>
>     https://valkyrie.yocto.io/pub/releases/yocto-4.0.35.rc1
>
>
> Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/bu=
ilds/3640
>
> Build hash information:=20
>
> bitbake: 7fd0197fd5fedd23cc885b5e7e816d86a392fdf9
> meta-agl: 439cd92bd4588916aa45de78fe25a8bfddc7c82b
> meta-arm: c3e9fb12aa31d25e33d8392c4a233ed1275a3278
> meta-aws: cad7fdcf046a935d1eb641b254e4d05d16d51f1e
> meta-clang: eafdaa3cda9000c6d9bd1819ffe1219c7b66e4b8
> meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
> meta-intel: 82eb2406e04a89d6ed0650a99ba13224e43e4f0d
> meta-mingw: 87c22abb1f11be430caf4372e6b833dc7d77564e
> meta-openembedded: 9d8ef26a9693e2c70ae34abe1a753873d42ec588
> meta-qcom: 8d273808334daef5922000c8e0548b7ff2b3d72c
> meta-virtualization: 92b6abcdfb6f12c4931247f0f29aaf5331984525
> meta-yocto: 34e3c9a19b8b955116109a2e9528966db3fced37
> oecore: 51259c7e933a2ac8ebc01604d6e65607b76b7b56
> poky: 93431249a6260da7bd29ee3ca32145d89e5b8259
> yocto-docs: ce6734c68649739c635675a133fa77edb9865028

This was an "all green" build, so OK to proceed with QA.

Yoann

>
>
>
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>
>
> =20
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#684): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/684
> Mute This Topic: https://lists.yoctoproject.org/mt/118765869/4316185
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/14721440/4316185/830777862/xyzzy [yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


--=20
Yoann Congal
Smile ECS


