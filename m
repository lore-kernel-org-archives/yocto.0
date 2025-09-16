Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 064A3CAC599
	for <webhook@archiver.kernel.org>; Tue, 16 Sep 2025 15:37:57 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
 by mx.groups.io with SMTP id smtpd.web11.1741.1758037074984429520
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Sep 2025 08:37:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=l8hH2VFZ;
 spf=pass (domain: gmail.com, ip: 209.85.219.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-770db3810a7so29791626d6.0
        for <yocto@lists.yoctoproject.org>; Tue, 16 Sep 2025 08:37:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758037074; x=1758641874; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YfKbeQs/n1Q7IaN7amT6jdRO+q/rnA1JGwVE34pJ71U=;
        b=l8hH2VFZXCFLZPWYeNxnRBtZX+C28KhA5+CpqtVAbwoYQajnrfW1lxQDM0TMzGHe6v
         nsdF81szPbC+FE7j/aqYG9nx340fOt3pQfHif7akQGsDXFECZAfVoeg/Ldh0CVo14nLw
         eDLbQO6o1rdVCfcIxRdDet6fLXRlZdgYskSGHOjxd9NWEiAQZDXwXRxXARGZ172w1sw/
         M7kuSc0KMKGiLOCVTb9VMWL9q9loJ6QdKdnk+aiJiH6ZiD3bKVW8DFA+/c5oM0e97cDq
         X979/ms4xyPi8DG65OtQI2KHx2zaBlVt9T6MpIAftL8Ijx6NNKMUmuZ2wU8OfQraZcwy
         STdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758037074; x=1758641874;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YfKbeQs/n1Q7IaN7amT6jdRO+q/rnA1JGwVE34pJ71U=;
        b=RnN2emkLUi9s0Pg/MvI2JvCspjVybSf3Ck8Q+6AIcNHHrED79I9SPZyBMhHkW2KEU0
         3SxZkc1TxbTIZGvtJBeUPoVHm10um6wTKSI5pOZqvPIPHeTAmu/1oLBi0dng1hZlVw4/
         Mgtffhd2aSovey1s3DO74fWQb0SWgOqa/r0Gap1ArBW8Hv9ci5w02V09e/tBGHumSuzk
         Qu1ix8N4nUZGvYMizcABWBDTVJEwI2aBo5uzXqnpBOVFTyDbECbjiRQTCvnTJN0cNwXW
         NqDsvaLTeKSOA5KD8jk8/kyrvfLVpGTYOju0h6yQNEpj8UzM+uQZyV/zUMIAdzsJNhyO
         rmHg==
X-Gm-Message-State: AOJu0YxtWmqnAPXUssvg4syaBdJ0iuhHxbY7891N/H6cghXhr1XuRrYI
	U36gUdwTQOEUxLAgimTjEwd3oe2d7i942ejRHthhnfwm1WVty8JVOyYLXvhbyqofu0JjW1UqSgr
	ouLtZEsvlYATUJD0bsj/0hxiwsxRAtmU=
X-Gm-Gg: ASbGnctAENPHYaUfYFiiRAI4S095XH0CJ0vivqf3/x1lhTQjaoOPRP1vX8RwxqwYQbs
	HZfuodZFjyNp4g3MCnhg1GUFcjW3LmDK5xjuhRNPZG61y61/enIOxOrSdqChkbPxGhB561RUtWM
	jzyOeDgoXUGHuKZ0mP2NmKmVi7OWwvltuY4Bc75+9Sh3jec9H3EDraNBrFF8tmhDu2OFSE4iQ3t
	wGdcbG2bG0g+3qQGZY1rtZHkEy4k3ZjGBNogL7bDsWt7gl3RO8Imbngh2/j9/8uGhzL3AS0XQ3N
	djH/
X-Google-Smtp-Source: AGHT+IF0DQR/2Vnrf/05H3QOUfMd1NWaEOBWga5MEjU76zYWSrOfW8CePsqYmUs2BdapPiCwtKhcPGmGHythPB89mSo=
X-Received: by 2002:a05:6214:21a5:b0:78d:b474:8e3e with SMTP id
 6a1803df08f44-78db47490ccmr24088266d6.49.1758037073707; Tue, 16 Sep 2025
 08:37:53 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj8nqMP_riFmfOeaig0XA1MkArTcL48g9iYVdZHdjrsXvQ@mail.gmail.com>
 <22fc023e-0937-4c6d-a726-54079059463f@gmail.com>
In-Reply-To: <22fc023e-0937-4c6d-a726-54079059463f@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 16 Sep 2025 17:37:41 +0200
X-Gm-Features: AS18NWB6fwtgwkrxGa1xSYMjYoToEcJGTEdBqBqnlks5vfM3xAKuv3hmPEC5RNc
Message-ID: <CANNYZj8edg0stXfpP1Q3jRMTGCwBax4BeW8KdNjY9CWC_p=cgw@mail.gmail.com>
Subject: Re: [yocto] bitbake-setup configurations for existing LTS releases
To: Gyorgy Sarvari <skandigraun@gmail.com>
Cc: yocto@lists.yoctoproject.org, 
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Sep 2025 15:37:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65847

On Tue, 16 Sept 2025 at 15:48, Gyorgy Sarvari <skandigraun@gmail.com> wrote:
> > I've been asked to look into adding bitbake-setup configurations for
> > existing LTS releases (e.g. scarthgap).
>
> I have one question: would introducing bitbake-setup in LTS mean that
> poky repo would be abandoned in those branches? If yes, I'd plead to
> reconsider - it would silently break countless setups and tutorials.

We are not insane :) This was never considered. Also, bitbake-setup
will not be added to LTS bitbake repo. The consideration is only
whether to provide a bitbake-setup configuration for setting up LTS
from the master branch of bitbake.

Alex

