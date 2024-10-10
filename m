Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD6ADCFC5E7
	for <webhook@archiver.kernel.org>; Thu, 10 Oct 2024 16:48:01 +0000 (UTC)
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
 by mx.groups.io with SMTP id smtpd.web10.48829.1728578878960797674
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Oct 2024 09:47:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=FpsFy03t;
 spf=pass (domain: gmail.com, ip: 209.85.160.48, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-28845df360fso651532fac.1
        for <yocto@lists.yoctoproject.org>; Thu, 10 Oct 2024 09:47:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728578878; x=1729183678; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aS3PmAV1LV2qHwPzdodo2scTFBVd2QrBkrXVgf8/cdo=;
        b=FpsFy03tD+qWZIBNl14zC45C0Il8VbNdDxorQ4UfZz3DEcjnm9jqAXQweNsMM+lyXZ
         jtmJTvqBfvBF0aqQy4xTAjgUXv+GUhf1OEmLE2Xk9NxLO3u/xAyMDVh6mk+c5AWMN4bB
         65yduDuwNUw6LFlJ30T0XZb1jGubtBK7RRoQq0Kq3go4ezqQDFefCXzc1Nl2T2ZxW6Aq
         cOAV4vADhgDA197024ka2KA1CbStRFoANFgjnWZtvMF963qenED+PVNMH9IxyT0/SRcn
         MpBUHdMzB/vLdAjfFLvAz4KIoeVpCb7Nnz2eXRMHCICMiPeJsiqzRwea8GNgvQ7Lio2b
         B7Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728578878; x=1729183678;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aS3PmAV1LV2qHwPzdodo2scTFBVd2QrBkrXVgf8/cdo=;
        b=m3FUNECK02xSGcZ1BDxvvyhGNID6vEEeZ99lciYIYG84aCM8gmWi6U2Sd3ZyOfMmu8
         +gxl9CxXcZwr8y/aDIqtnHcFS39QGWFSSRNmB23+/90ooIM5IRQkXOw3B2t86ydPLdwn
         zqrFC3kkZc24kfhwoNn+SU93PzH17NT58qQFnJfUzS/2nr2nMaORgUivmoQMA8pRQSib
         rCEV/k+rd6yGbjeazMT4wUc2h4wBiJBNZWJq/NsN1KUMJCtT4LMonKOkS655M36H0F3w
         vkiKYmwEAfRTHcXMh3dhTvWou76uZ3BE0bCzQvRGumLUSgH0AwJ6LeSw/mavjQK7ndfa
         jqVQ==
X-Gm-Message-State: AOJu0Ywh6MtYECrObjEMqxYP1S0PTL+HYPLsyFtoRjQCqkhTEA86Zj/0
	FgCst5KL4OYnZc2OYLRdO8Dzy1c6JbOHpfeZQ2B+FikB3bu00SOloxom5SvNBL5ojIhnm/PTS80
	uQ/xeIp1WNlv4GgBCU/dLjANzPL0=
X-Google-Smtp-Source: AGHT+IEcetz5CPJxqIt6SUfjzH4XMzSqXGDRrUC1zh514TRFXDH8S/O7PDsrOqJNtSNkIsEg1kGchU3PiF7BoITaj8o=
X-Received: by 2002:a05:6871:e020:b0:277:73ce:da7c with SMTP id
 586e51a60fabf-2884d59ee48mr2144776fac.23.1728578878063; Thu, 10 Oct 2024
 09:47:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAMKF1sr0asGXus8v9KiOJ_01uwxpFSDC3z_kA02ONK9BPecQ7w@mail.gmail.com>
 <10004.1728554166177308269@lists.yoctoproject.org>
In-Reply-To: <10004.1728554166177308269@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 10 Oct 2024 09:47:31 -0700
Message-ID: <CAMKF1spsvghZFHLCLAWAE=O8mBE7gsCVEZOvVQWLXHYTdrrypQ@mail.gmail.com>
Subject: Re: [yocto] #kirkstone #yocto [openembedded-core] openssh/sshd
To: jean-michel.papy@exail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Oct 2024 16:48:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64004

On Thu, Oct 10, 2024 at 2:56=E2=80=AFAM Jean-Michel Papy via
Lists.Yoctoproject.Org
<jean-michel.papy=3Dexail.com@lists.yoctoproject.org> wrote:
>
> Dear Khem,
>
> Thank you for your answer and for the patch.
> I tested both changing permissions before and after file renaming and it =
works equally well.
> If you do not mind I'd like to have your opinion about the most preferred=
 way of doing a
> modification of recipe via a bbappend:
> 1) providing patch and letting bitbake apply it
> 2) providing a modified file and letting bitbake replace the original one

For your own layer using a bbappend might work better, you have to
take the change you did and apply it via do_install:append
I will send the upstream patch with your credits added.

> Thank you in advance
> Best regards

