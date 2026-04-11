Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29B3DF44842
	for <webhook@archiver.kernel.org>; Sat, 11 Apr 2026 08:16:27 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.184163.1775895382299016477
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Apr 2026 01:16:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=VQ5IgKqz;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-488b150559bso21440615e9.1
        for <yocto@lists.yoctoproject.org>; Sat, 11 Apr 2026 01:16:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1775895381; x=1776500181; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nscwb73xzPYOVsvpzuQ+efuoz830ncBe1xQwSCTqQUk=;
        b=VQ5IgKqzlGIKwePAxYuXED/HC5vEPq9h79VWazyhYnctN7/fXezC3Bl31nN+CuX/QA
         zrQJva1CTcHSutr1QFTtbiXOdblqq/sHhXzdSy/r3OI8JNW3ibgVATTxPCMCW4aFJJiz
         XTGvT0KdbwLgP3dpsuxUiWfiHbhxluINMC9ZA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775895381; x=1776500181;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nscwb73xzPYOVsvpzuQ+efuoz830ncBe1xQwSCTqQUk=;
        b=OPbHxFGiKNNfTqywncqlnqX/epWt8sAGUZZm405kANIh40JmsxDHYLcb77OAtK4tji
         USgqiim1r+5lXaSK2sRCn7obqBWT8ZTmMHF3E/yQveimeKvtt3EmS8RWJXuSJXIYFbCm
         MA/7PjB0ClBZDRFznIZ/ZfkhSMWFAo1hJUu0E3hsb83DTlTwY2M02KwCxU2JetBLWct7
         A8SGaU9F1Zmz2J5MlqjiOBgyy1SGVSGB82FZlawvIld3+ZhfaQ2j8grNTdeyAp4KBoOn
         duB1Z8l9abSToxvQfGfKpOwgCKP37sBVJlxoTj8j1cr8pJrlGJqOg2os1J/OLTu7mUHM
         fYrg==
X-Forwarded-Encrypted: i=1; AJvYcCWXq/fgTdo7OuZ3kjQtJppu41VERIClQaeGzcb5DTNtP1LkLZqd80nzjmvSWq4OPeNVzTAADA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxOhqXW9LQt6Vii5DnoK/zgr9J33n/U0iK4+uXFzv2uBDtLaHVL
	reIbfLw9k+NYzTfs3WgMo3Kui0FdlsCvXGPVCcTJ26OhbOd5T+lplq0VQHBeIgjZk3o/SGCJJgk
	O8N6oijM=
X-Gm-Gg: AeBDieshs+UAdgIk/oSU/hb7YbhzSRAQg6fjyxTo0g7VUu/8nO1Pw3QtaIc97RSlZcX
	qcV8v227FSYYd4LSDLtVL8IaeehFpLwYIk5nKJkP0khXWuGbY7XXBqEAQNKGhKuobjyORuLM2gn
	XjS4TOsCFNUf5umEra3sznAMxlrSqSWMPa8CMp969w4TSWjFE7YxY2urwzuUyZasP1jm70+PG1c
	dgOu0+jBcfbPixPVYFQVKSVYLCzRdqshNgfJ7Ky5VX6tEorxrXNGQdNVq+7Yazn3/OST+k9WfZS
	63aVjD0EjKtv5EZ3Mr4Luw5QdrZL1LYEOlfHDbN+w/92BedDKvRxlkmURfr6hVdIL+gfH/1IuAZ
	JQ4FaNq/Gn4nSOExSYzgpHoKKfVj2LaYbPWswpXd6TEZXAq7rbZo/wcU8tOWq1kdtj0Ocx1nhI+
	gfLx1zk7gBt8X4A0atlB/5ZJyQJzYWk3C3hogWMkC75mojOYTABDegFqDjDZEuE0/PjKwkbSfeN
	AjLPHU24oT9BSWM
X-Received: by 2002:a05:600c:820b:b0:483:2c98:4368 with SMTP id 5b1f17b1804b1-488d685b878mr82530835e9.18.1775895380418;
        Sat, 11 Apr 2026 01:16:20 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:99d1:9089:a726:87e6? ([2001:8b0:aba:5f3c:99d1:9089:a726:87e6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488d5347ea5sm150004555e9.8.2026.04.11.01.16.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Apr 2026 01:16:19 -0700 (PDT)
Message-ID: <ab2bf189333fe412f846b6c5d1ca69cd7f74903d.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-6.0_M3.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org, 
	yocto@lists.yoctoproject.org
Date: Sat, 11 Apr 2026 09:16:18 +0100
In-Reply-To: <0101019d781e1f38-346b1fbf-b6d6-4223-ba68-6571cc4c046c-000000@us-west-2.amazonses.com>
References: 
	<0101019d781e1f38-346b1fbf-b6d6-4223-ba68-6571cc4c046c-000000@us-west-2.amazonses.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-9 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 11 Apr 2026 08:16:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66398

On Fri, 2026-04-10 at 15:58 +0000, Pokybuild User via lists.yoctoproject.or=
g wrote:
>=20
> =C2=A0=C2=A0=C2=A0 A build flagged for QA (yocto-6.0_M3.rc1) was complete=
d on the autobuilder and is available at:
>=20
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 https://valkyrie.yocto.io/pub/=
releases/yocto-6.0_M3.rc1
>=20
>=20
> =C2=A0=C2=A0=C2=A0 Build URL: https://autobuilder.yoctoproject.org/valkyr=
ie/#/builders/29/builds/3639
>=20
> =C2=A0=C2=A0=C2=A0 Build hash information:=20
>=20
> =C2=A0=C2=A0=C2=A0 bitbake: 5d722b5d65e4eef7befe6376983385421e993f86
> meta-agl: f5590359796fc6453a17849904a281095257ee38
> meta-arm: d987a5945802dcbbc06be91a0d34f00431ea840e
> meta-aws: 172c1f12366c50f58c317a4ed58d6de79e7afa1c
> meta-clang: 78c5e12f08198f4f257a9348516d2103cd617c1d
> meta-intel: bf06e8360baf2c84257e82f4153e13e62708568a
> meta-mingw: a4ba674d6a0a17e4c0bc4c11bbb9d0ea9de2b315
> meta-openembedded: d793c367e067c49956d38caf6eb84cb112c9c9b7
> meta-qcom: 5d1eabf99f52bc5ed4c629ba4a28f567ee69e564
> meta-virtualization: 4dddf149832ef19233c13af31987bcd6b1faf4cd
> meta-yocto: 49cbb01d52521bfe557395c9ebfae6b1c162581e
> oecore: 5a60dca0fb81695e26149e45aad9a9eee7c955ec
> yocto-docs: 560bc33c0c2ecd60d68ba06a2edff8c25b9a3f90

Please hold QA on this, there were failures, mostly intermittent issues
but one which should be fixed. I'll build an rc2.

Cheers,

Richard

