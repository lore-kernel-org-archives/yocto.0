Return-Path: <rybczynska@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3FF3E728D6
	for <webhook@archiver.kernel.org>; Fri, 29 Sep 2023 18:14:33 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web10.25029.1696011263835822588
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Sep 2023 11:14:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=nEtZLYSm;
 spf=pass (domain: gmail.com, ip: 209.85.208.171, mailfrom: rybczynska@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2c00e1d4c08so231471881fa.3;
        Fri, 29 Sep 2023 11:14:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696011261; x=1696616061; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ZyDwWPouoH3UoqKVuhT2k9FwviXdRwlSHx/NMKg9qng=;
        b=nEtZLYSm8xOil6v4eP9nITR/LVJTPcN0paYnh0hLKNultgBb9FGs0geKSS4gpdYG76
         /pI86A/DlyQnZh2AvkXjHFW9UaSz7khiaHzE2pGmA0Dap3rIOnCheTJJXfJcUq23oMh5
         cqNDn3fmDEtFRBXMZDsUAmYBMJcFDulVKIDUUyrXYr9BDfgFbN6iS5RSRJ+CspzTxXeh
         nwJkiiFLawTKkvALt2/W+PDw+6gEpyH4H7b3HJlI2BeohD7mDRSlS7KcuRkrh6MwPs43
         66KjUIfkHFVudnrRX5+YY6zz41tRwF/ugL6HdLhh+sOXqncWjtoKvLnpDN8xPQnx2XoT
         hQkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696011261; x=1696616061;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZyDwWPouoH3UoqKVuhT2k9FwviXdRwlSHx/NMKg9qng=;
        b=tBxQsmUNXUj4oXJ7yl+qv5peuZ8kmrE+srlE0tRdCuhyvjvcf2DCovtanPgFoFzNGs
         A42l2yVDEpQwDH639lcISUO9JN8B6QqaCBO5PKlzu4UM7dSLNYKEPVnN/6jpPlOS59PV
         K43LOgj/hanPOJaoAPNnHd6hIbdMVq0urbNlaJIscprn64Pu8YQmyjZbZR04ihVCAfdA
         nd7OZ7CRp1p9mN/DSLMPSid/sxKBxkp9Tovv7IvzjOodtZ01MvZ+wDizxKR817Epv5Hm
         lzrUGzkd9xnFxwUm309lz2qs30FXRy7heSSZfZ0jn9h4is3lfFAah+mk/sjsAwb3v61d
         YD7A==
X-Gm-Message-State: AOJu0YyL/RGFbxyuXen/3r72Xcd+Z+gr3UsTJpqV7bG3nMSWU0jIOqHK
	+rmPPNpPI5h8p/f8CHisuvmDT+I1EMaCcYVW9sBH2eWIVRQ=
X-Google-Smtp-Source: AGHT+IEu5AQYGg5LPQxX3+GNNx3/JfSazsAEIhw863cc7Hk8M2PNvoiBUamqVTuTYrcfhpOP0GcpE1B6klcFCg6HMvw=
X-Received: by 2002:a2e:9154:0:b0:2c0:302d:f995 with SMTP id
 q20-20020a2e9154000000b002c0302df995mr4840190ljg.1.1696011260808; Fri, 29 Sep
 2023 11:14:20 -0700 (PDT)
MIME-Version: 1.0
From: Marta Rybczynska <rybczynska@gmail.com>
Date: Fri, 29 Sep 2023 20:14:08 +0200
Message-ID: <CAApg2=QD6Ui4ytmrA8M9N6MH4Zh3qb0Zz4ReR=TmM5KHv7JH8Q@mail.gmail.com>
Subject: Yocto Project security work in progress: call for contributions
To: yocto@lists.yoctoproject.org, yocto-security@lists.yoctoproject.org, 
	openembedded-architecture@lists.openembedded.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Sep 2023 18:14:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61171

Hello all,
There's an ongoing work on the YP security and we have had an
interesting discussion during the weekly meeting on September 26.
Slides used are available from the wiki [1]. If you're interested i
security subjects, please comment on the content.

Two processes are currently in the works:
- the vulnerability reporting process and the security team [2]
(complete, ready for review)
- the CVE synchronization [3] (work in progress)

They are working for your feedback!

We are also searching for people who will like to join the group
experimenting with CVE work synchronization.

Kind regards,
Marta

[1] https://wiki.yoctoproject.org/wiki/File:Yocto_Project_Security_-_26_09_2023.pdf
[2] https://wiki.yoctoproject.org/wiki/Security_private_reporting
[3] https://wiki.yoctoproject.org/wiki/Synchronization_CVEs

