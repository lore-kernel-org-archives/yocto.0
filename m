Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47D40D73618
	for <webhook@archiver.kernel.org>; Sat, 30 Nov 2024 23:22:45 +0000 (UTC)
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
 by mx.groups.io with SMTP id smtpd.web10.142357.1733008955179125635
 for <yocto@lists.yoctoproject.org>;
 Sat, 30 Nov 2024 15:22:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=3Fqwvwup;
 spf=softfail (domain: sakoman.com, ip: 209.85.219.182, mailfrom: steve@sakoman.com)
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-e38df4166c7so2452545276.0
        for <yocto@lists.yoctoproject.org>; Sat, 30 Nov 2024 15:22:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1733008954; x=1733613754; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Aw2lo4nhabBfADpWnJr6a2J4UeKF0zQ29eVxi4LZkFo=;
        b=3FqwvwupfUE0Ns1SHmF5FgzIlivp07x0/BbG+6pBV5MdIhzoq9X39fyzdOFBhrHQfn
         w2DzZeOnRwV0kyCF7YlSuah9EATPARTECRNcaVzCD2Ps9671fj9Fe95eFXiGumBUTQ0v
         tqaaW/zcD6AaLsY3qcDjjgc9Q2am3/y3FkanyelBQWqjdN83mRtUCpbpV+ZYcbFgPdRT
         dCFuXDJtQlELfYnrALL24DmCW5U+/XWmkfYEXD9n56qur14s8daja4wYC4fh2DINkaUq
         iGVEXft1wkDGpwf9qDltapGxdpy4RNl0GKnKzXl+HFYtsKKVePjJIIUkun5ZrPSbsJn4
         UP7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733008954; x=1733613754;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Aw2lo4nhabBfADpWnJr6a2J4UeKF0zQ29eVxi4LZkFo=;
        b=DQMpIcoeCmfnEc8d5s0D0Q7b2JRZnXmSiXTuNZXnWRymK/RsMAbH4N0YAik5NkUWe6
         hjH6Fnjbx68PBZYZvE/TfC0c9NQ8vIjByNDgh5l3vd4xdmdZhJYrIjyZCYBGhhSPzOm8
         eXrPabuN8xRQ6AVWUnDvPTlTCxO4b0mpluevvcg2yOxGv1S3E7VUM6mzz9LFS1Bq9IU+
         0CLoKUHsfsRAnythxV4NWJru+wqtnv+vLbCpA85Hr22ZdBx0er1IuLOuRMYWPG54klRQ
         weLtZwL0js/sxCUJYtDFchmS/I6UFnHdI5Ze9QU93zkAJ1m9TIZK7pZLDumNv3ILORLa
         nDFw==
X-Gm-Message-State: AOJu0Yz4VxfbD3AhQzjxPgiYsH5sI6O4xGyogYQPlRh1/9MSYE3TvA8M
	7sXkuBU8cy+gzefKjIioIu4b4Up33p10Gc3v6li5iIg/blvSqhchfpBU+Lr3vvPn16/RzMPOP5P
	S6exvYlb+7r94U3q1s0VwHBBVhHSYyzOpfBmaI3rFKpJbsHPXgNc=
X-Gm-Gg: ASbGncuO9QidkIL592BUXFq2+uOL6VcabIC/byHUSW3bwHlDLKsvQbUaHtkBEVR9FHm
	GESfsddQ/AulQyWuCB7oqZVMFcDuobko=
X-Google-Smtp-Source: AGHT+IHCE/ozo00+HpZ3m74mUE6hzlEgwZzkJ+avl5iHpHrlBZWHDh1R3GsL5A3HSIpojWO7M8HfgB5O0sLOTunte8A=
X-Received: by 2002:a05:6902:705:b0:e33:2605:f80b with SMTP id
 3f1490d57ef6-e395b942949mr16548201276.42.1733008954205; Sat, 30 Nov 2024
 15:22:34 -0800 (PST)
MIME-Version: 1.0
From: Steve Sakoman <steve@sakoman.com>
Date: Sat, 30 Nov 2024 15:22:23 -0800
Message-ID: <CAOSpxdbJZ7MT7Bz8RAKmXLQhkHTMr8daWWRiq8yY9Cz5FU0LRQ@mail.gmail.com>
Subject: QA notification for completed autobuilder build (yocto-5.1.1.rc1)
To: "Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
Cc: qa-build-notification@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 30 Nov 2024 23:22:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64381

A build flagged for QA (yocto-5.1.1.rc1) was completed on the
autobuilder and is available at:


    https://valkyrie.yocto.io/pub/releases/yocto-5.1.1.rc1


Build URL: https://valkyrie.yoctoproject.org/#/builders/29/builds/553

Build hash information:

bitbake: 9602a684568910fd333ffce907fa020ad3661c26
meta-agl: bee88d50fbb31086eb70d259cf86a4e48047c3c7
meta-arm: acafe7c89f04a88efd8d427ddd21e66eb4bb7f54
meta-aws: da595cf109af6aeb40d4a592345cf44c642e61e2
meta-clang: c709a5196f1e8654425b43b478064395386c36d4
meta-intel: d2e28940027808ea56f9d38deadb200a99a89805
meta-mingw: 77fe18d4f8ec34501045c5d92ce7e13b1bd129e9
meta-openembedded: 5d54a52fbeb69dba7b8ae11db98af4813951fa61
meta-virtualization: 9e9f60e959f3710fb7a16b9829d950c3d94c0d4a
oecore: b511d0146a2e8f316f4aecc90c853215674013ea
poky: 7e081bd98fdc5435e850d1df79a5e0f1e30293d0



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org

