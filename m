Return-Path: <tyrocjl@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC1BACD4941
	for <webhook@archiver.kernel.org>; Thu, 21 Sep 2023 03:17:41 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web10.8231.1695266256448627467
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Sep 2023 20:17:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hmYty2kB;
 spf=pass (domain: gmail.com, ip: 209.85.208.169, mailfrom: tyrocjl@gmail.com)
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2bfea381255so7354201fa.3
        for <yocto@lists.yoctoproject.org>; Wed, 20 Sep 2023 20:17:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695266254; x=1695871054; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=E5uUOOY0k07A0kSY8jLuIY71p5fHuaNv+EykNNn1d+Y=;
        b=hmYty2kBy73AZjSaFS1LmwmvCF2Sc18Hr4ZLnfcNUTV08F82XuJFJG9WL5t4FXS88c
         bJCR3D89mUbwLlu+Z6+zc0EidixiWiMQynuyuK2z/lgwZWizPnec7IjyMuH+McEMm9qh
         W3RUTZboHHQEpONlyIra7ire8QO+0gwoOT233XA5sf8TD0TxLG7vVoqZ88Wv9gY130e0
         KpdaUALdf8CgbuQyMRmwNCuxJxAHIxr5L3mbzDb8JSREVWfFLUT61Fjt8kZEMqKvzT3O
         H3N20nSVALtDtI4lkuMqNPc1ddJW60A+NCLns341cwjGJIc1OY4qqH2XrNkBXwZzfzcK
         t1IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695266254; x=1695871054;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E5uUOOY0k07A0kSY8jLuIY71p5fHuaNv+EykNNn1d+Y=;
        b=Rg43+HUSGk2hLWFyEjy7oXDaBf2DoHoLIWyuGFWXiQzhyTjxLVqaYMZwAwoigMehrc
         n7J904tcVRQoDVpotvIHOcwt4yW4xAaokg/M7QmzA4nI2haR8v/1VYIFpyz0iIh47JJa
         HjhqVkAUsPyEDY9v3EEoi8rB2yqLLBIMQsAqgBwmKaq01CvyNAHvPf8CYRk8PymJ9qzg
         O4+yuZewNALYHrRI4/wC/DpgTgq3DVgg8QDlZUiLUcUFDZBBJHKAsnN/F9aiEHMajcvR
         L5A/C7T528gyQm6/M6tLEp3Eair2VQknPic+uBCXCuJ4tRvxk++ajNdB7efe0MDVQN4l
         mOhw==
X-Gm-Message-State: AOJu0YykgSa2GW6yCXIADro2B1NT2kaJxayFrMLaerOZWPNl3KrRbqF9
	d0w5Gi/8RBspy+zSv/t0BUzbn+EhZ3p5JA3gQ9fQ1LZvvMY=
X-Google-Smtp-Source: AGHT+IExu6ItqtmZgoOaE8+o7XRzw7K5p2OYmbO1I/MKazYq7OS5rGVO9Clj8Aadkhrm2AsykAGbPgAc/Xp2mfBErSw=
X-Received: by 2002:a2e:964e:0:b0:2bc:fc2e:7671 with SMTP id
 z14-20020a2e964e000000b002bcfc2e7671mr3485715ljh.13.1695266253504; Wed, 20
 Sep 2023 20:17:33 -0700 (PDT)
MIME-Version: 1.0
From: Jiliang Cai <tyrocjl@gmail.com>
Date: Thu, 21 Sep 2023 11:18:51 +0800
Message-ID: <CANzPQ-AFexDQ+pT7CxnnkKjMrKP83C8aaPr3ZaoXQH3gUXKriw@mail.gmail.com>
Subject: How to install the initramfs image into rootfs?
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Sep 2023 03:17:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61063

Hi,

I want to install the core-image-minimal-initramfs.cpio.gz into the
rootfs's /, but the recipe of initramfs does not allow to append
install and to modify FILES variables like ordinary recipes. What
should I do?

Thanks

