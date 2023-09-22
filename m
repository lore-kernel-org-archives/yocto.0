Return-Path: <rybczynska@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EA72E7D0D7
	for <webhook@archiver.kernel.org>; Fri, 22 Sep 2023 07:14:51 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web10.15913.1695366882835247303
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Sep 2023 00:14:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mB7uteRP;
 spf=pass (domain: gmail.com, ip: 209.85.208.171, mailfrom: rybczynska@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2bffd6c1460so27910241fa.3
        for <yocto@lists.yoctoproject.org>; Fri, 22 Sep 2023 00:14:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695366880; x=1695971680; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7mAShT014zsujH9rW/aKIGIEi0gI7cYVw4Rt6yf3LAQ=;
        b=mB7uteRPotcmlzZz24TjnaqMm6RgShcaiXlx8CpbcDTatHsADTGPRc+y530h4QnIB6
         FxD6YPV5pxQyA/i18wqEG8FdvEYGHzmZinrbIf9jEIbSP+QA+ac1HF8UqhIPOMMTHzc1
         4BKyR79PYJRU1rj6OFK7CVp7A0m5V4ttotKPV3J8yt2Q8BuS71GrLEX18QjApUemjY4B
         CijQcv5esZXEDy8vHU9QgEb5Q9182EWG+fgmOJatwTvOLkUAyEY8fSIGN3ktt5E3mV/G
         THJwOrce5ECkBLZ32ojsURij33A8me+9rj5RmSl61QqatTnMmTuHaH3VL/D8dVN6+REa
         WhMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695366880; x=1695971680;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7mAShT014zsujH9rW/aKIGIEi0gI7cYVw4Rt6yf3LAQ=;
        b=K9JlZxzCVTe0bUx7thmfogMEH3PQWcxsNQsupwTDXBJbAidoxQYEVoE/G4e3ileycZ
         +9+WLH7S3h2YJjEE4okLrev9vk92YNyU+NkF64QEruf32TsA6GaOMSUYxdHNaPbqg0fU
         fn20f7fKAa2yB1BzSDpuRoEJ1cmjXDGjvmIdeTibmT9/9jHrMjaGkhJKIMg+6eFtfWgC
         hCXEGe2gjziFuJt357iKI726fJ17PnspNKMLMkwXGaOOx2QuwAn9dV5R6MsOFjZl4feq
         ZPnF+uWbzDubKqDLO6wII6dpQ3wZiM98XleoqQ/7tC12jh15vs1zfQs4ChAKZpHgCjeq
         HpuA==
X-Gm-Message-State: AOJu0Yx2O25/+2607Q5ZOAOknSqDzLAjqnT4PM/qfBwNlKHUK91qUGck
	FibFzIxKRwZgSQ+RFoeZ1yRF8jwgTwD5xQyIrHFzeeqJHIo=
X-Google-Smtp-Source: AGHT+IH1rGNjIzRDjhrkUX5YuxN4/qVTps9lwVnKF0pXLQdcR0OoXbV4gA4W0kxJOWCS+O4HKWSwPVbRRgzgwW/eTLo=
X-Received: by 2002:a2e:924d:0:b0:2c0:300a:82ed with SMTP id
 v13-20020a2e924d000000b002c0300a82edmr6668736ljg.7.1695366879862; Fri, 22 Sep
 2023 00:14:39 -0700 (PDT)
MIME-Version: 1.0
From: Marta Rybczynska <rybczynska@gmail.com>
Date: Fri, 22 Sep 2023 09:14:27 +0200
Message-ID: <CAApg2=RKjcaSiW7q4Cv4kegufRDq-xLd+v74FOUZTQXrAjiGMQ@mail.gmail.com>
Subject: YP/OE event around FOSDEM 2024?
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Sep 2023 07:14:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61076

Hello,
Is there a plan to have an OE/YP event around FOSDEM? As a reminder,
FOSDEM 2024 is on the 3rd and 4th of February 2024 in Brussels. I'm
asking, because related events are already being scheduled around...

Kind regards,
Marta

