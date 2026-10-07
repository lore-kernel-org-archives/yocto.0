Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A291CA6004
	for <webhook@archiver.kernel.org>; Wed,  7 Oct 2026 21:10:23 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.2022.1791407416501017597
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Oct 2026 14:10:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=jH8V9z+t;
 spf=pass (domain: smile.fr, ip: 209.85.221.42, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-48b02a2359aso89010f8f.0
        for <yocto@lists.yoctoproject.org>; Wed, 07 Oct 2026 14:10:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1791407415; x=1792012215; darn=lists.yoctoproject.org;
        h=in-reply-to:references:to:from:subject:message-id:date:content-type
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=EThXNnchdWk4f7uDZwntYAm5lKTSTkCQFp59Ehkc34Y=;
        b=jH8V9z+tmDWjtOetESzHy1VaopmZ/mZYKxoGGEGSJnW4lu2doaEBqRdap3Ud4lbCfn
         u7/Vp17FV7uuKapRjG/ZyARb6NB1E5BLbmrF6CmVuq3vXhdRNyqzkhdIjUcmHEWoWUPy
         U3m1Jr5kbszXiPZNrentrvu/sVBM8RhBLm+04=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791407415; x=1792012215;
        h=in-reply-to:references:to:from:subject:message-id:date:content-type
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=EThXNnchdWk4f7uDZwntYAm5lKTSTkCQFp59Ehkc34Y=;
        b=NcFlH9WelzaUKhlc4TAo+TMBJ//7kz9lYlXA1qwZLwlB44M41at7NdsqR2vN6fB/Az
         qlOyilbDCMvrAN8ywdU0VCrP8FkLTZ4nixZRddIKMXSLlaSEX73UOLychXfiszPjbIHz
         9JhbAHovCt2fmtUKZaaHI+BYOmQ3/EdgOvTCa8V6QCO9K6RX/3J/Aa/9cngFMDfEI9I0
         wet3EqKT2pxehn1Jcqbm7eyWKdCksfgk81UWV4t6e7rWdCvzlZWAj0ZdopK4VaTvrTpr
         8Es/TR1NtFnOAyOFxTRR2y7bYxGA6eqXJi+Btl9ndxoqgaryT3I6ZubNjhoO1hGIBHKz
         DSOQ==
X-Forwarded-Encrypted: i=1; AKwUvBwSQ79UlrP9Lrs1e1pwANxVmw2+gbpqXfl8gp+U2y+yVOzU5Rnqx5lzfNsgB+u4UOly/It9Jg==@lists.yoctoproject.org
X-Gm-Message-State: AFq9FYLXGvWEnSV9y1OHeJkBp21Tg6oj4gWzlRBkSw+Uo6BH+GdOjj+u
	r4F0myfXFXzahcn+S6ZTnyUEiFxGyKtRKFtfgpE2ZBBxAwA3UZ9LQ12DPSdZxD201Dk=
X-Gm-Gg: AYBFou3rwuWEILgVurRKUjhWAT9YhexF1oPBrnf8DRsrYHZXQWIeWyuv+wM8UBqjHmO
	tRYhYTZQ0rqhCAohYKY+91yAxnpQtfsuFFLnbx7flJGt/fpySBUlVggSsAdkhxvcHPVu+0Fm/bB
	2X3aUrSc9nBV+i/KQAKyn3Dva/wMF9GEjlRv3G/YtO0q3OVRhxhTVD9+tVL7tEUCFIErx1/v36e
	83xH5l+huYwyJak5Bb71NmHfMvYPzwjD9h1Ng8gavg4vgJmywBN5exJ0+h/dPIp40c/5Nrkuqm9
	L55np+AxjSqmLbbLzOhwMTv/rujg2T0rjlden1bH2UUfGfo41Kd4Kobc1CcclbNXXyjA2QeHVll
	wK6fu5Mhv/7viDGq895r5FRizFP/8T1ga7xwkHE/wIE8O40YFyO/0Ih1/dcVlD7unMexltiXP6U
	gHVnVH3ixqngPX277dfrtd6aIXBv8fU+VEXVKovVVPtg4DYYtzZOePdYsl8x2QMIIfeeINuoN7h
	UWnqdXXV8HZ3cb5DnW2bJrkdoXJOmppGW7G+qqcde7BbAW3HQ6EUqDtKvFMng==
X-Received: by 2002:a5d:5a11:0:b0:485:8226:c69c with SMTP id ffacd0b85a97d-48c7f12a236mr472092f8f.27.1791407414537;
        Wed, 07 Oct 2026 14:10:14 -0700 (PDT)
Received: from localhost (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48c71d113dasm7025762f8f.19.2026.10.07.14.10.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Oct 2026 14:10:13 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 07 Oct 2026 23:10:13 +0200
Message-Id: <DLYWXGKU0A6C.3P68DSH9ZX1MV@smile.fr>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-5.0.21.rc1)
From: "Yoann Congal" <yoann.congal@smile.fr>
To: <qa-build-notification@lists.yoctoproject.org>,
 <yocto@lists.yoctoproject.org>
X-Mailer: aerc 0.20.0
References: <010101a117e56e0a-bd01c028-29f8-4540-9e61-6d0598e33869-000000@us-west-2.amazonses.com>
In-Reply-To: <010101a117e56e0a-bd01c028-29f8-4540-9e61-6d0598e33869-000000@us-west-2.amazonses.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Oct 2026 21:10:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66751

On Wed Oct 7, 2026 at 9:44 PM CEST, Pokybuild User via lists.yoctoproject.o=
rg wrote:
>
>     A build flagged for QA (yocto-5.0.21.rc1) was completed on the autobu=
ilder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-5.0.21.rc1
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/4895
>
>     Build hash information:=20
>
>     bitbake: d3b32587c2314febf96897f97e0172790b4fc1cf
> meta-agl: 59dad9af692283c64ff18f92512c3502609d0dde
> meta-arm: 0a4b911d9fd63ab29c4532a907fae3282dbdcfe4
> meta-aws: 75db4b489c21fe48dd6f0ff3d0f7f52ad67033fb
> meta-clang: cc29beb210ab94eacc53bbd67e287e4e33ede342
> meta-intel: 5d153e35b4e752505efeae368f188fac5e31cf33
> meta-mingw: a2065f321a3dbca1e69f070502917c76653d9105
> meta-openembedded: 0f00f8b9a21950640da8c5707343e5540133f86e
> meta-qcom: ec80a36bce11d8182b4bb2a6fa0359adfeccde0a
> meta-virtualization: c141b3cd60ad3a1bbab22b4884742d4c082beda6
> meta-yocto: 8183b55783d45dd45691983bc0b407752a3449f4
> mixin-wrynose-linux-firmware: 71dfb81bd98f59ca2127d39b100ecbb8ce1e0ba3
> oecore: b4f06303e55c7270a8482a610927a1c41d5dbf9c
> poky: 4fb7016a07507683359ebd620f1951fd5ea44bfa
> yocto-docs: 9d2cb790abf5ad37b2b1f35823d238c57f4e21a5

This was an "all green" build, so OK to proceed with QA.
(Logically, queued after the 6.0.4 QA)
--=20
Yoann Congal
Smile ECS


