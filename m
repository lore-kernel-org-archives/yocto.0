Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDE21EE3690
	for <webhook@archiver.kernel.org>; Thu, 12 Feb 2026 14:31:54 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.46294.1770906712657463519
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Feb 2026 06:31:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=HJnL+Pf8;
 spf=pass (domain: smile.fr, ip: 209.85.221.41, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-43591b55727so5995600f8f.3
        for <yocto@lists.yoctoproject.org>; Thu, 12 Feb 2026 06:31:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1770906711; x=1771511511; darn=lists.yoctoproject.org;
        h=in-reply-to:references:to:cc:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tRIa2qfqvdP0QEne6D5+NgmOKzgMhjyTxPJAySeGKDQ=;
        b=HJnL+Pf8YdUZVgtWpvc4QafSpoZCQ9rA7SRdaZv7iGOviMWz9D6RhFNY11YlqOmg8U
         jj+4Vq0PjEwAXBGEzrMF/TMvnoMjyN+GeAmshPYqKK0dcUQ1Cs19ayuBpCfvjsyxY+d1
         CKJLMhzEKn4rnRq+6dU3Uic0sgJGmapAIxUVI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770906711; x=1771511511;
        h=in-reply-to:references:to:cc:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tRIa2qfqvdP0QEne6D5+NgmOKzgMhjyTxPJAySeGKDQ=;
        b=PdFmmW1FmfecdhJqwo4KsRjbD0RTj7lJz0ms3EOY7qyw3f5WlE5fNmoyT4Rly3G6Uq
         6OA26DE/tp8EVnaBFOHNSnmD07a9b7JWZzGHi9NxHS2loT67/V+TRvxuSDRacWmhBezY
         2qm1Hzc3LHCLZIekV3I0wAAPnmh560i+dSTfPXOE4FdlH9fpOjYqP7vacyqvt4jh/zkI
         85Mo29EgkYKZc0C3GLlvZSgTLFNwtb+oUHfOhzod1oPvZ8vogniD1sxl4HXDixUF3M56
         JZtsfzHNS52lE8WrYspX6J2G0zDXVzj2RaLhfslAElf8OUuHZr15ZLXJNx3xVY2ugDYL
         OZFA==
X-Gm-Message-State: AOJu0YzNrM+IhjJXzWddyXK2pM7xgzO8lTyZouY/gwq1658S1k4/61fT
	UDmN4zI+ERvWoNbAvRew7923pJdKd3X+otp6JcJo3LRDhO6ssmsKqRGIUxVHhFHQoOk=
X-Gm-Gg: AZuq6aLWC1pZIHD3PmKmpxIpf/Ial9800aLuDmIYZsAOe70htXnez313mU3M6wM2heO
	tA7kgKCv35fr6p0P3IxMvF78oshYQORD4fNWOO0lWvYw5NrXfCndphAtk7B8w2QOaprgU5HITF/
	DXh27bRwjjvLgIw4BaFk1ZN+MA2ymehGAhoEqd7jvYxOtc3hqJTTxaw/qGlj4cdNLCMNVAmdvlG
	RDl3egdPVjeol3i/yZYMGkYiZlMy5Ovr7Igv/gkj3Pa6UqLYQ79jT49Ayk/dcfJCBJPboIkIXEe
	QeDJk6EG7GJruwPi2a2UWcRXVrHVArIV2tvTVS7b1HjmssTQLOBbxl8cpF74/cahpjH9jlDnqSb
	rdm7mHTZgNaD+KwvAoBpwtiGPPzm6JNr8IOCYmswhcl/uIMYVkJrFuhbk+XkLq5f2XUV4S8J3JJ
	bRASDJqBqi+mp19k8f/zt29PsL2sGyLU60KOmw0jf2oDmWrosdh+J9+tSnOTcPc3SRch4nkh4Nt
	Nc2BysQD+WHEpQ=
X-Received: by 2002:a05:6000:230a:b0:436:d824:621b with SMTP id ffacd0b85a97d-4378ac7de53mr5675570f8f.32.1770906707182;
        Thu, 12 Feb 2026 06:31:47 -0800 (PST)
Received: from localhost (2a01cb001331aa0091410e731fc6f0fa.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:9141:e73:1fc6:f0fa])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43783d46ec6sm12712872f8f.9.2026.02.12.06.31.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Feb 2026 06:31:46 -0800 (PST)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 12 Feb 2026 15:31:46 +0100
Message-Id: <DGD219WBW417.38KFVSE5F8O4R@smile.fr>
Subject: Re: [meta-intel] intel-media-driver_26.1.0.bb:do_compile fails on
 master
From: "Yoann Congal" <yoann.congal@smile.fr>
Cc: "Yocto ML" <yocto@lists.yoctoproject.org>
To: "Tyagi, Yogesh" <yogesh.tyagi@intel.com>
X-Mailer: aerc 0.20.0
References: <DG57YRQ7R76H.1FVPAEO7JT8Y6@smile.fr>
 <IA3PR11MB89872EF6500D42F1A753C0188C62A@IA3PR11MB8987.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB89872EF6500D42F1A753C0188C62A@IA3PR11MB8987.namprd11.prod.outlook.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 Feb 2026 14:31:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66241

On Tue Feb 10, 2026 at 5:29 PM CET, Yogesh Tyagi wrote:
> Hello,

Hello,

Thanks for the status update.

> The only solution I could find at present is to shorten the build path.
>
> Cause:
>
> * `intel-media-driver` CMake generates ~626 include directories per compi=
lation unit
> * With long paths, the expanded compiler arguments exceed Linux `ARG_MAX`
> * GCC expands response files before spawning `cc1plus`, so wrappers/respo=
nse files don=E2=80=99t help
> * This is a kernel limitation, not a Yocto or compiler bug
>
> Impact:
>
> * Fails in Yocto builds with typical CI/workspace paths
> * `ENABLE_NONFREE_KERNELS=3DOFF` does not reduce include count
>
> Workaround:
>
> * Use very short workspace paths (<15=E2=80=9320 characters), e.g. `/w/yo=
cto/...`
>
> Status:
>
> * Upstream issue filed with `intel-media-driver`

For reference, the issue is:
[Bug]: CMake generates 600+ include directories per compilation unit =C2=B7=
 Issue #1984 =C2=B7 intel/media-driver
https://github.com/intel/media-driver/issues/1984

> * Proper fix requires CMake refactoring upstream
> * Path shortening is the only reliable workaround for now

Did you find what made the problem appear when we did not had it before?
Any chance that this is something you can revert while
intel-media-driver cmake is fixed?

> Thanks,
> Yogesh
> ________________________________________
> From: Yoann Congal <yoann.congal@smile.fr>
> Sent: Tuesday, February 3, 2026 2:59 PM
> To: Tyagi, Yogesh <yogesh.tyagi@intel.com>
> Cc: Yocto ML <yocto@lists.yoctoproject.org>
> Subject: [meta-intel] intel-media-driver_26.1.0.bb:do_compile fails on ma=
ster
>
>
> Hello,
>
> meta-intel/master seems currently broken: intel-media-driver_26.1.0.bb:do=
_compile fails with:
> ninja: fatal: posix_spawn: Argument list too long
>
> This happens on master and also on whinlatter.
>
> We can see this on autobuilder:
> https://autobuilder.yoctoproject.org/valkyrie/?#/builders/41
> * master: https://autobuilder.yoctoproject.org/valkyrie/?#/builders/41/bu=
ilds/2967
> * whinlatter: https://autobuilder.yoctoproject.org/valkyrie/?#/builders/4=
1/builds/2966
>
> Regards,


--=20
Yoann Congal
Smile ECS


