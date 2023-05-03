Return-Path: <antabboud@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD786C77B7F
	for <webhook@archiver.kernel.org>; Wed,  3 May 2023 16:09:20 +0000 (UTC)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
 by mx.groups.io with SMTP id smtpd.web10.24144.1683130150536763082
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 May 2023 09:09:10 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=Wib3eHAU;
 spf=pass (domain: gmail.com, ip: 209.85.167.176, mailfrom: antabboud@gmail.com)
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-3909756b8b1so1820193b6e.1
        for <yocto@lists.yoctoproject.org>; Wed, 03 May 2023 09:09:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683130149; x=1685722149;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DsInUSYyl5M+5/GgezoUeHKzCrSApMcGO+GFmiufyKM=;
        b=Wib3eHAUfdPA6fO/en+zfZwqlPv89LuwQS40yf+/dmHYWo8S3W11+rzC5ZLu96gL1N
         cdHBdxuAnTteqSWBx/yz4eEHgjnZUEn3V0AMAmEDic8Jek7Ugjfk/0YRX8SvQEQYYeCt
         5mgy4SQjuzB4fL/2AJErg4Y1/lPHLpgcB/pSJm9BQR6rQHzBy90za3uBqwucFcY6+OBk
         DpL/FlGXztrEK8QLn5ng5BeMOdXjbx5zRd7yi6xsaKgHy1Aja6CFSO82ktvARlhiv3hi
         DYhnTpiZzLg5CqsLW1o10hdeksJbukMLuATeMIhHEKw5rEx28E/Q1jnwNeMuMWq2CMwH
         2TzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683130149; x=1685722149;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DsInUSYyl5M+5/GgezoUeHKzCrSApMcGO+GFmiufyKM=;
        b=dMTimyuPFys+Tz67XyKUiIdER+MDDtQzu/cZEvjDpUnxhkXawWT1WrSp7R6tuhfsBQ
         Oj1juNOLLsVUBGLr/VlJn73lb8l8J3mUYOOiG48n6EnTekwEgNtg9XdQPanLOypDXb5p
         x+J4tYPppUR7TjXbA776Jj407ZRKwg30bzC/b3VBwKgg0+ZWc54Jwi1uvhc+YDb0Dfmv
         TvYPeJXOsN+InBZQycWI99QUz8rTbsLV1uBKQziy/bWWd3OckibpiiYDWGZW6i7xzD6U
         L5BwSVFFi6AwdG8joRMfyQRao2k01SYaPvtTA3OayiXyfaZ/oMhIxwkuFLYdwDqijj7d
         +Scg==
X-Gm-Message-State: AC+VfDyQsCqkdFORsD4i3kucPn8YaUNVt2X4r0B3JvHzookv5InXcL72
	lgPAQI2j13maATcGjoaxyzcFvC926gX92Ka+sllan5a2
X-Google-Smtp-Source: ACHHUZ4wn03mQmgO2g54WF7utZ29WuQAarAMDdZW1EiRoeGqebapQ+zxYHPy72VoNVV5GoCnoi3UMEjauJXHEVK2OC0=
X-Received: by 2002:a05:6808:1247:b0:38b:efe8:dfa8 with SMTP id
 o7-20020a056808124700b0038befe8dfa8mr298681oiv.51.1683130149523; Wed, 03 May
 2023 09:09:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAEAv8SAsr=37-qCpzYU88=SO+vRWdkcz9kcD0B8SrODj77XZaA@mail.gmail.com>
 <14190.1683101564095576045@lists.yoctoproject.org> <CAEt6NwqRD-M4n088HQnFDsvmKEWZ5kVcZgeT3=mSSuO-+hCC9A@mail.gmail.com>
 <175BADC4F55E7349.14539@lists.yoctoproject.org>
In-Reply-To: <175BADC4F55E7349.14539@lists.yoctoproject.org>
From: Anthony Abboud <antabboud@gmail.com>
Date: Wed, 3 May 2023 12:08:58 -0400
Message-ID: <CAEAv8SBuptciOoMF9YoQU04MAnnFevf7oQYXYP6LZ6SR578ONA@mail.gmail.com>
Subject: Re: [yocto] Trouble Adding Files to rootfs
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ac62ab05facc462d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 May 2023 16:09:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59856

--000000000000ac62ab05facc462d
Content-Type: text/plain; charset="UTF-8"

Sorry about the weird formatting in the previous reply. New to this...

--000000000000ac62ab05facc462d
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><div>Sorry about the weird formatting in the previous reply. New to this...</div></div>

--000000000000ac62ab05facc462d--

