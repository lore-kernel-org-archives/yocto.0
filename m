Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4618CCCD184
	for <webhook@archiver.kernel.org>; Fri, 17 Oct 2025 06:25:28 +0000 (UTC)
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
 by mx.groups.io with SMTP id smtpd.web10.9606.1760682326285162718
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Oct 2025 23:25:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Y2aWo0m4;
 spf=pass (domain: gmail.com, ip: 209.85.128.170, mailfrom: raj.khem@gmail.com)
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-74435335177so48131797b3.0
        for <yocto@lists.yoctoproject.org>; Thu, 16 Oct 2025 23:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760682325; x=1761287125; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sTsDuuYa83BBVbyfmvxrYl5r+PsHDoZqs78aMuT4M+c=;
        b=Y2aWo0m4WkFKL7TP7B5iUxJcfYnyiLqmWGcLa+GN1ZMPJ53Sd+CI4rSkamDrssfpaK
         J4KqWTiae/ONKXyO5QRDpAGCCpfabWZf7b9Cs0ganvjNaD9T2xHfb7CT6Wx+cGnBFpQu
         8uwBDoSN1uPE8Cjsn2UAE8Ks+k1eDX+v4mwE5h73twgUyrmJCZM1IZE9NSi/CTfrN9TK
         CptCJvqozcYGLZwnbq+Dk2O5BvZ0fBiVSCjIbQXhB8ntT567kHn+xqtmAVoq3zsrrS7y
         4Jb8c8sLniAFQ0SGHZ8wBwCHEJ/waWBdyKjh5h5v7sDPxX73Fd3ELFVqy7HnO1IGIx3X
         KrEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760682325; x=1761287125;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sTsDuuYa83BBVbyfmvxrYl5r+PsHDoZqs78aMuT4M+c=;
        b=slHQ2NNao5UB1SPCRu2QrT2gdPlnBBcakY6PELognrH4v94WdxDtPKXavZghAzOK1N
         RQH0Q68YjCAYi7B5jIVckpqpmAkf/XM7t069fM1vll1hqLr/p7puIo2JS1acEqdviDdh
         Cu6HrDLmSJ4ZRQZ/twCRIMN0JRgLel51srsqx1FarcaEh3ItQ759iBMSJxpDxGn61AQH
         fsvGrsdppKQuT87ULwQsBXAjAuseI2Y3EiK5kVFyFEonREIFsU2CibRHNqvZiT8+9kYk
         rBD1CQagDlDgE5gCCqlOs9KKgRfzd6HTpm+j19hlXNdCCxVTvGfirIpawml4ZBeEH63H
         f/zQ==
X-Gm-Message-State: AOJu0Yzj1qN5OeHLCehaDv4kIyiA23E1TDm9PQ8FSOPhkfbnAJ6DyfL0
	CqraO9HgHWroHDdm7U8XI23FVchYv6NH7s3MyUX713cATVKXMrXiTrMtXn01sY7avueeNXpr9K/
	U0eSzLC5i1mlBXxNuZzbdl4X1Ov2lNyc=
X-Gm-Gg: ASbGnctR77yPuhXyfQXjT5nX/WOnEVYBGnZ99lGDG1KlTehUcyfZ2hL2ClLg2F5FzHe
	PTaKxX38vHHvs5Tw2wqAEkQv63rwz/drOozPwzRMrdK3CwcihAog6rnhs5fft3SY2Yq/WXR01hv
	lOXjxsvNgt4Y1/UE79ZQL5EbyDQHoNgf7jREOjWw8aHiMDiKHe8yYsFwn4xNcZp2V+sDMSbJ9L0
	/vRhe0UH40j76P2OZEWgPFbLW7L5zOMaePbZtjBTZLIY0TowRwMuZ7noFKFo/qMjt7YErF1mq65
	KyqLLqAJHyBLbmhJux4yzcIaQhRkNHLg3Jaaio04ThjSMncqx45hkU2dJGRl
X-Google-Smtp-Source: AGHT+IFaES4Nzn0voagVbHZYZE2nVmSumUCtd5PlbT7sum+efwbNtYLEuhQc8phM3bCa7ggE/jZupmhxz87d5gmux/I=
X-Received: by 2002:a05:690e:1481:b0:63c:f456:95e5 with SMTP id
 956f58d0204a3-63e08bdcd42mr4042836d50.0.1760682325341; Thu, 16 Oct 2025
 23:25:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAMKF1sr=5mwdmpN039EPpJzwgO=RpjpMYZqNHKFwaL8-35YHXw@mail.gmail.com>
 <26514.1760678611269066030@lists.yoctoproject.org>
In-Reply-To: <26514.1760678611269066030@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 16 Oct 2025 23:24:59 -0700
X-Gm-Features: AS18NWAyXOZ8XWSkgoQ0Mr9orpZPLXAym5q12fqRwvsed6Z3RipCc8DAx7ssck0
Message-ID: <CAMKF1spXY01T+dURZV8R01P3Rd9bT2misk8RQg2z7fVAJv9=vw@mail.gmail.com>
Subject: Re: [yocto] Building u-boot with clang
To: anirudh@astranis.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Oct 2025 06:25:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65947

On Thu, Oct 16, 2025 at 10:23=E2=80=AFPM Anirudh Mathukumilli via
Lists.Yoctoproject.Org <anirudh=3Dastranis.com@lists.yoctoproject.org>
wrote:
>
> After spending some time poking around this evening, it seemed to me that=
 changing the GCC recipes in poky/recipes-devtools/gcc to use an older vers=
ion would work. Is there a problem with this approach? I figure I might nee=
d to mess with the patches and some of the other settings in that recipe, b=
ut it seemed promising. What am I missing?

Lot of new packages expect newer gcc, so even if you got old gcc
working with latest YP somehow, you will have to work through these
packages, even glibc in
master currently expects at least gcc 12.

>
> If it's not possible to use an older GCC version in modern Yocto, is my o=
nly option to try and use an earlier version of yocto that uses an earlier =
version of GCC?

That might work if you pick the right yocto release which supports the
gcc version you are intending to use. However that release will be EOL
so lot of software
you will build will be old and EOL too.

