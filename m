Return-Path: <rybczynska@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 732E0CDB47E
	for <webhook@archiver.kernel.org>; Wed, 18 Oct 2023 05:43:34 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web11.275256.1697607806880512923
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Oct 2023 22:43:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=JWs+1qKZ;
 spf=pass (domain: gmail.com, ip: 209.85.208.171, mailfrom: rybczynska@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2c53c5f7aaaso19213341fa.0;
        Tue, 17 Oct 2023 22:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697607804; x=1698212604; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=DeQanLauBSqhppbfAOEeFHL7s8+B9p8C3xny4QBWHVQ=;
        b=JWs+1qKZGUQQgPDKQcZ/cVBEsUU3WL9VG9izCPDQSkTR3dkv6FPzCBrHx01WCDE+tO
         /GYtYhjHy3I5zI4xIetEOUptNnbKk9bnfoLgvCnS0SSTyaNwsSvv8mq1zwZ4p/C1aG05
         r2d8hSGRFsYdJ9UnrXXb1j8zv440QwJlLjCtKx56pCNh8eOs5DJRWHf9RgUvRLL6h6We
         sAr2rPdNEqSnW7eQ3XmFGTnW3hcKRK7InrWms8t16NyBk2uoac1wYR1UXHZwsc4vEfBN
         sSqhjj0T4izCJu3lkdb+EJ0ycuI5L+K8pH1+QxzuaOVU2Ks2Al8iRO8RaHh0JBMFfpwE
         0lRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697607804; x=1698212604;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DeQanLauBSqhppbfAOEeFHL7s8+B9p8C3xny4QBWHVQ=;
        b=qZHIL0GkC3AxTXJMg4XaFHkjyyfFBPQQkD6lowYsrD6wePBpWrUY60f7ibQNuIYium
         YWmxHj8ImR8FfgjZlHf8ojWA6mWTdxexJopAudHKleubegGRnzNb006pP1RB6U3ni7Jq
         68sHG+m+FjYyro6cP/5/3scXjtwMtihv9vxuVZSpG/FK0MbLb+YxAvRKr2k+sCM0jRPA
         RMKX8rhRd5gtRi1WeO9soK7Pg8R2noUXUZcVZF8eGzSVegCEWh4iKMbdM+vlOH+A+UfH
         8Thpm9ZSgPaBWIdi+PcpfAyVunTufaP36vRk9M5yKmmY1alNhbsajMpHPzYvR1o9+Czz
         NNqw==
X-Gm-Message-State: AOJu0YzAQGSiG/4MyY3/1ZmqUqv4ptDg/7hvgnqAzmM+2yLMHk6bpcgo
	D9nMnhRW9jjmuRUOVmpdiKgJQ9lj+N3YMHL+obstHkH45+M=
X-Google-Smtp-Source: AGHT+IGpbUan7xc96CC3so4JEmjmGi90VuYucNUGxv1e9nTAoJxv+cnFCioaX+QgQn8f2Z9tsK4h0PnL0j8NPVFBDD0=
X-Received: by 2002:a2e:b0f3:0:b0:2bc:dd96:147c with SMTP id
 h19-20020a2eb0f3000000b002bcdd96147cmr2930895ljl.34.1697607803993; Tue, 17
 Oct 2023 22:43:23 -0700 (PDT)
MIME-Version: 1.0
From: Marta Rybczynska <rybczynska@gmail.com>
Date: Wed, 18 Oct 2023 07:43:12 +0200
Message-ID: <CAApg2=Q5FG4X49MeCC0Yg9yhsFe6pSDRY2o81coNDftHafs2HQ@mail.gmail.com>
Subject: SRTool usage for CVE management at YP
To: yocto-security@lists.yoctoproject.org, yocto@lists.yoctoproject.org
Cc: "Reyna, David" <david.reyna@windriver.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 05:43:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61384

Hello all,
There' a discussion pending on the usage of SRTool and CVE management
for the Yocto project in general. It is related to the need of having
a list of CVEs the project is affected by, those fixed and those that
we know we are not affected.

In the previous episode, we have had a demo of SRTool by David Reyna.
This weekend he has updated the code base. The next call is tomorrow
(Thursday, 19th October, half an hour after the end of the Bug Triage
meeting) to discuss conclusions of first tests and the next steps. If
you are interested to join, let us know!

Kind regards,
Marta

