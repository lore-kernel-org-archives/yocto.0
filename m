Return-Path: <tyrocjl@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3110BC7EE22
	for <webhook@archiver.kernel.org>; Mon, 15 May 2023 08:24:01 +0000 (UTC)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
 by mx.groups.io with SMTP id smtpd.web10.83725.1684139032481353744
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 May 2023 01:23:52 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=n+XrzCky;
 spf=pass (domain: gmail.com, ip: 209.85.167.43, mailfrom: tyrocjl@gmail.com)
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-4f139de8cefso63681340e87.0
        for <yocto@lists.yoctoproject.org>; Mon, 15 May 2023 01:23:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684139030; x=1686731030;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+fjG/EWhJaY+XD/kEBwhpEA4KKh+Xw0aY/X2IoUMmWg=;
        b=n+XrzCkygrJ2V1SycYEbEh/akbgOIJtsqOgouMW4PViaShyuJYFawTy0I+BAHd7oTa
         N4/PZWMjvr002RyirWvyIZeF1pL5K5HP5xoVxdkUwYarsnjJ7CYCtv3pK7iWw9K2g7jY
         M/ZwPFQXXo0b5bYe1PYsPEhUnDLRKuRFNHLAMypoBmVPKtxmRLORCuDgxtjxvhEQgc8o
         zTcbBc/M2xifrOR0XalLY92jJpAgmIsiGNdc35JAmH8xk++Ose3PXlrch41pUEuxqEDF
         sQbrvlql0qMR/BZCgM/ugszQemFCKh2AoCocJi4/nuIYY2w6SFKJD1DSHxzGQIhxemZE
         I7ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684139030; x=1686731030;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+fjG/EWhJaY+XD/kEBwhpEA4KKh+Xw0aY/X2IoUMmWg=;
        b=e8atlfqxACyws+iNKJkjjiBe5d+tSjD6OyWAYFJGhg/hRtCrS3wDvEUHc1hH7IEBvo
         v56zs6SuTZdPQXCUdfnwBSDmrHg/ca0VyWjxOBox+FpVVXkvY8PP9zYxfPghfUVxTsRz
         o7s1UBZvmZX3BhMsj339dvWXzuPy8O3fwDBAmcag0T8oH9y/5+B14+RIN6n7u+62+JrU
         HsTOabug2/RVIHc1C/Si+zO2hAIkzwmGtOO6jtGuCfQeehUBg0XrOjb6KYVgTiwRuMNu
         bjm716srndIfcqoOA0z5iYl988mKEtZBpTmR2TGe+bEP+nIUCZgAhSKEndUHqgOFcBDc
         BJSQ==
X-Gm-Message-State: AC+VfDzxAu43bD7ZQX98cHE+DXya0/IMfyuKN6sjzZYuorLtT0ngYvmO
	U34XIB69Eij+TLVZ3nuk9+J81Md7IiiU6yXnsY3HskpYfq4=
X-Google-Smtp-Source: ACHHUZ45t/mDpdIG67rN/RYVCMZLN5im5kY0isTy2lz/hXxW1g+dWR9F0Pg67Nd7Ju81ISaie04y+Uc22m8bWhw1OvU=
X-Received: by 2002:a2e:a272:0:b0:2ac:75fa:eef0 with SMTP id
 k18-20020a2ea272000000b002ac75faeef0mr6199134ljm.7.1684139029541; Mon, 15 May
 2023 01:23:49 -0700 (PDT)
MIME-Version: 1.0
From: Jiliang Cai <tyrocjl@gmail.com>
Date: Mon, 15 May 2023 16:24:37 +0800
Message-ID: <CANzPQ-CGsofjwD8bg8_8XyOJ8FAiyazy+UjtzTQgQteoiioBXg@mail.gmail.com>
Subject: [yocto][meta-python2] Kirkstone EXTRANATIVEPATH is not in effect
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 May 2023 08:24:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60018

I have a bb file abc_1.0.bb:
DEPENDS += "python3-native"
And EXTRANATIVEPATH contains "python3-native" as expected, so command 'python3'
can be searched.

Then I add DEPENDS += "python-native", but EXTRANATIVEPATH doesn't contains
"python-native", so command 'python' can not be searched.

python3native.bbclass  has a line:
EXTRANATIVEPATH += "python3-native"
So python3 can be searched when bitbake this recipe. I saw similar codes in the
pythonnative.bbclass file, but why didn't it take effect?

