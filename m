Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36510CEF15B
	for <webhook@archiver.kernel.org>; Tue,  8 Oct 2024 11:44:31 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web11.7098.1728387869723980355
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Oct 2024 04:44:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cACErSHk;
 spf=pass (domain: gmail.com, ip: 209.85.208.181, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2fabc9bc5dfso62540911fa.0
        for <yocto@lists.yoctoproject.org>; Tue, 08 Oct 2024 04:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728387868; x=1728992668; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YHerFcfdGEIFJ7BSXz7xsK9EfNnOoQ8S0OaV8gDv1x8=;
        b=cACErSHkbOUjPd7rw6ALs5fe3kpBohPqZbji/ePPl7XswECouikqJRp7GcgbrMspHT
         txc56cN2etL+JMnXnGw+mtU1BQXj2sUlBLTXksxXgpcgFqLr1VYNAGWndCTUAbOrBpil
         k5o7qTs8wO/H3bz0f/eTbYvhwu+YRTjJMLUGRcPngcz/uPwtGFXvJ47JW1SxiJhXx1Ll
         LmzNGwuaHMWstqYIDkFjZKyeneu0pRrcM84fYLyz05CmJMUKEPyuJJ0svjZ7GUn38XKW
         bmo8G8NS9M3/hGUiftOqqXxNSJwslMv7l4Ber0Yk2dNScjbzEUyQKN/PvBJ+EKbYID2e
         bWSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728387868; x=1728992668;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YHerFcfdGEIFJ7BSXz7xsK9EfNnOoQ8S0OaV8gDv1x8=;
        b=lfPgz7RcN3Cu8J1OcO/YqSb/yEul3Do3XMsFqFN7VvwMkXnv//6cfVpS7zDH1saqlK
         o/5srL00pOKQxJ0StkMJcRhWXVEWHneZ+Jf26oJq5igRDGzVnAJnte5/A3g56mJft+/k
         5cBkV1vJYmjKfzxJhxo4+DPg4MD1mKBHuWgCKdAsyL6BeUQJ61XBWu/u2c+5BfXa56AB
         K8jCdGJAS6GxHId472MTJ1C0bXTcGaMZKhyZwl8gkVxLzHgpwShyITN/RjfVZCu3iAI2
         Rq2qz/1t+SP1TFNUqpAH+CGsY417Nmd165WEUuHYwGrgJMlCMoKeu7vOmkdNgm+iH74X
         F0Bw==
X-Gm-Message-State: AOJu0YyfoasCNnSK9gxwe9vSVsynv5AtW25PlfSuetjrgbQo84UuVNc3
	FQtJqD3YrAewqotz1Di5ozD7q9tOEbahVUq6y9c4v2AVqBZS3gejpEyzLRpg4qE976/6TRwMUqT
	9X3OT0gwjYfX3d6Rw4hTeGx+8MiPvxg==
X-Google-Smtp-Source: AGHT+IH5s2jFKvUyHTfOdJ+SBoIvoSastZY2SlwEgvbx/cksgKNNDSIE48IGBqlshV4U/iVCQdRKDJwRTMqU7OUNfdM=
X-Received: by 2002:a05:6512:3511:b0:539:92b6:6d30 with SMTP id
 2adb3069b0e04-539ab87db52mr6538432e87.29.1728387867533; Tue, 08 Oct 2024
 04:44:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAMSfU+5HUJE_5OSNdB3WuOBntX-S=Zb_pxgLBfaeSYtVhW7ePQ@mail.gmail.com>
 <13803.1728386290751880136@lists.yoctoproject.org>
In-Reply-To: <13803.1728386290751880136@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 8 Oct 2024 13:44:15 +0200
Message-ID: <CANNYZj89pfink5PT2d+feT+qhVvkrtEH=ZqO8PNB20hFT5Kj-w@mail.gmail.com>
Subject: Re: [yocto] How I can update the Yocto SDK incrementally/partially?
To: yocto@lists.yoctoproject.org, salahaldeen.altous@yahoo.com
Cc: Yoann Congal <yoann.congal@smile.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Oct 2024 11:44:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63969

On Tue, 8 Oct 2024 at 13:18, salahaldeen.altous@yahoo.com via
lists.yoctoproject.org
<salahaldeen.altous=3Dyahoo.com@lists.yoctoproject.org> wrote:
> I was planning to used the normal SDK becuase the eSDK is 5 times bigger =
for my custom board ~13 GB, I was looking for similar function to install o=
nly few packages on the top of the normally SDK without rebuilding again. T=
his would be helpful for the application developer who have no possibility =
to bitbake a new SDK !! and receiveing incremental updates.

They need to start using yocto simply. You can share sstate with them
so they don't have to rebuild everything.

Alex

