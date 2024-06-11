Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62B66C27C75
	for <webhook@archiver.kernel.org>; Tue, 11 Jun 2024 11:46:06 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web10.7466.1718106352704446391
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Jun 2024 04:45:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=f8qXFNAq;
 spf=pass (domain: gmail.com, ip: 209.85.167.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-52bc1261f45so4083549e87.0
        for <yocto@lists.yoctoproject.org>; Tue, 11 Jun 2024 04:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718106351; x=1718711151; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FM5suDFK7xzum5ePWgvEbddv6QiPX2julYPJ73hlVxk=;
        b=f8qXFNAqTjGoM/GT02nllqTF4zCbIaPdJ1fgJi5aa36DjFtmrDCfMi21FvhAmQL/dS
         o0AB/dTZDhYTyigb3pdYG4fOCgfFbqK1lcf+wWIszF0KSsBGQ6AbROBakTy5fCGzFIo1
         6MUcCsu6Yuqs0LTYQl/aebmS0LwyfWunO0f6zjui2Q/CADDkRwRy+ZlXU/R5ila7XjuX
         qJqOAXxsdsZXtrYXyXAZcuahfYjmYuhno+ZoDrTAFDMi0MDNXoYqQBNSvgnMJEU+5M4s
         /GRAwrXgIjctTEfkFtkldMrlf23yW4lOSQtL7WwulWKKFIbB7eFTcd0p6TZaShccZCdg
         akqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718106351; x=1718711151;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FM5suDFK7xzum5ePWgvEbddv6QiPX2julYPJ73hlVxk=;
        b=YvblcYmFVY9EuYYeZvSI2R8s3cYQv4B8hjNrHqFSH60ijw4ydo1KPdrfrjjTLr+e4S
         pdxbCXmzFiWTmMe6aHAZ5xz6bqD2bjo4WbJuCdxR1+tfsICXx2Y1GnK5Qjo1zQwAAg1N
         5cEk7ORG+uIvcTGYbBZiPJKNv6mnhF5qDGU4VRXXIX+fG76BwBv+eewjn3nMW8bE+/79
         t5Bo0GqnQKy6LGsKaADgt6bsH3Zsw3sxzGJVxht8a5ypJt+4VTp3Rwx06O0e4RXYgEs/
         fL79iM3sJVN05pRApNrQKmuntkKqsYe+ypELT8Dd2dFfwGYCgip3o92z3ARVYkRF7UsU
         tacQ==
X-Gm-Message-State: AOJu0YxKlbwgd750KbdtEnbEeDL8qbgz6TLO8tVvp8oSFPw0H8Ah2cMd
	k1/3hgQMBNcYEMPwiqIh/uMoZaUHqWpQ8oJmHtai7agTC8+Llovr+00i168VBo7DK+PA/zVabZV
	jDfrXjJoHu8EAQg5sC+wWfK4CGGs=
X-Google-Smtp-Source: AGHT+IFSIiil7UbJHR69FnTeY8zoo/oflJrStKUG+nlOMn03pzUMuNq1i4ZnXZNhL6VOi0oTqrbZghbUry/e9fblQEs=
X-Received: by 2002:a05:6512:e9b:b0:52c:8abe:5204 with SMTP id
 2adb3069b0e04-52c8abe5540mr4515610e87.32.1718106350511; Tue, 11 Jun 2024
 04:45:50 -0700 (PDT)
MIME-Version: 1.0
References: <SFQD.1718099972477026446.xJ0G@lists.yoctoproject.org>
 <CANNYZj_dvcS6QaUnZdCE5coukonZV0yv97Ji+J_N3=KCqYyCEw@mail.gmail.com> <CA+u1R=R5onfOc_DR_wHbeeZ+Mp3JD4-FRkhq3P-tNEWX++ydNQ@mail.gmail.com>
In-Reply-To: <CA+u1R=R5onfOc_DR_wHbeeZ+Mp3JD4-FRkhq3P-tNEWX++ydNQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 11 Jun 2024 13:45:50 +0200
Message-ID: <CANNYZj-zxyytZ=HayBbt044kYCSi=97roQuyQpo7pWGjDKm8Lw@mail.gmail.com>
Subject: Re: [yocto] fails to boot into GUI mode.:(EE) open /dev/dri/card0: No
 such file or directory in Yocto
To: Kamal GMBH <kamalgmbh32@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Jun 2024 11:46:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63318

What is MACHINE set to? Absence of /dev/dri/card0 means the correct
kernel driver for the graphical hardware is absent, that's why I asked
for dmesg output.

There's meta-amd layer, but it's not compatible with anything newer
than kirkstone, no idea why is that.

I believe you can enable all needed drivers yourself, but it might
take a bit of work figuring out what exactly needs to be switched on
in the kernel config.

Alex

On Tue, 11 Jun 2024 at 13:05, Kamal GMBH <kamalgmbh32@gmail.com> wrote:
>>
>>
>> Hello Alex,
>
>
> I am using V2000 AMD Board.
>
> I am attaching the log for referance.
>
>
> Regards,
> Kamal
>

