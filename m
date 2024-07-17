Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EAFDC3DA4B
	for <webhook@archiver.kernel.org>; Wed, 17 Jul 2024 09:43:33 +0000 (UTC)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
 by mx.groups.io with SMTP id smtpd.web10.11499.1721209408344116508
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Jul 2024 02:43:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YeN/lmLU;
 spf=pass (domain: gmail.com, ip: 209.85.208.177, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2eea8ea8c06so92442011fa.2
        for <yocto@lists.yoctoproject.org>; Wed, 17 Jul 2024 02:43:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721209406; x=1721814206; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kxYMZX/z1VANNsUZPI9QPZ6JPPHVtR1aBrPUtjtZF2k=;
        b=YeN/lmLU7y/+YMkk4Y3vKXdT2vsAQbWq8YSfc5oXAcymWTq3KJ/frdkEL7i3DZiHY7
         TH6lACRttIOYUdfEVqPzDfqqp6YxxSBBttS/wusyv11b3fPxbvtlaKYx6ME4I66G1Dhw
         HHPLcY9gvtp90MfGIyhk2bUpIVwmSr2neTcJ6ZBPg2VsRPx5Ow6fuxen6BNQZE/+UidM
         sG+EwiQbh9xpchj5FrnfwsdT46eMJcI6zrfs2kYyKDs4lJUxi0HPsDLYcZMyYFJ17fPG
         3dxVj9waF8DHY5RjmcOylfeHUPTh2yqUAX3DWsXb4KtW5Pw5T6VLDdfoXsdiHwZMEJ6C
         Ka2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721209406; x=1721814206;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kxYMZX/z1VANNsUZPI9QPZ6JPPHVtR1aBrPUtjtZF2k=;
        b=fohDYSAYSd8SQfS2GAT6ST7j7kpckqroCH8yWOalxxjgPvJLD/BxAjRfFcXI1YUfKh
         AEtIwDxjdqJW7qAjQwAZ+IbzdJUR709ouAtAtJDpTXQGd4nwms2NDgsZAO3+HY3Ol3cK
         qCJ3bInEfmNNMKscdc7GyTMaohdqNpW1QnR5donyCPYQ2Hc+Pt7sAlk5Jw+0IaPX4BHV
         ZIilIdsCdAAb95vq6jjxAlrbMHd+q7JCe5RzImj4Eptw5hCkaJ4UbsTveRVLXdMoqTgQ
         1Ds7hUXjPfKBmkcDvszxX/zZrxKfOTxAF107c01tyYf+OgLZzQ2sitmKvLTvqI2Jo/gJ
         m5tA==
X-Gm-Message-State: AOJu0YxhaqCwaxeDIH8ApusXA3dAO5iSschBXqXCTzPK6t/QbKrlsplo
	gB0sJtyCdrxK0MlNy/38OjNZnkaEocTeUBWIfdmB2rizOKgUA4ueUrV2dRvxgKTDJ9IosmvG6Qm
	R0EOaxFVY17dFbxfK44U08xtLpD8Y0Q==
X-Google-Smtp-Source: AGHT+IEtWQCqKLgKsNTLYCSBX831JoZuqP8w4e82DYke0aM8gaBb4Fb7st2+tTv8ajUAhBrZhG8u6kKWbikT1P9Ka9A=
X-Received: by 2002:a2e:a378:0:b0:2ec:1810:e50a with SMTP id
 38308e7fff4ca-2eefd1c26a7mr7174571fa.32.1721209406177; Wed, 17 Jul 2024
 02:43:26 -0700 (PDT)
MIME-Version: 1.0
References: <323O.1721209220834479878.aRt8@lists.yoctoproject.org>
In-Reply-To: <323O.1721209220834479878.aRt8@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 17 Jul 2024 11:43:15 +0200
Message-ID: <CANNYZj-aKhi5sxOXToJHi5aRHRMGJNxpmD+juYb0WULN5h3Z8A@mail.gmail.com>
Subject: Re: [yocto] Native causes installation of static linked libraries.
To: yocto@lists.yoctoproject.org, kfa@deif.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Jul 2024 09:43:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63523

On Wed, 17 Jul 2024 at 11:40, Kjeld Flarup via lists.yoctoproject.org
<kfa=deif.com@lists.yoctoproject.org> wrote:
> INSANE_SKIP:${PN}="dev-deps"

Removing this and running the build again might give a hint.

A;ex

