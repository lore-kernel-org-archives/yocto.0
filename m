Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE5FFC36010
	for <webhook@archiver.kernel.org>; Fri, 11 Apr 2025 12:46:20 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
 by mx.groups.io with SMTP id smtpd.web11.25024.1744375573918348052
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Apr 2025 05:46:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=eapp94oV;
 spf=pass (domain: gmail.com, ip: 209.85.222.177, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-7c56a3def84so177391485a.0
        for <yocto@lists.yoctoproject.org>; Fri, 11 Apr 2025 05:46:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744375573; x=1744980373; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xC7QEkgS6ix+rBNELN8mJuKibywugwqTHGImbnFBq+U=;
        b=eapp94oVIrBGr8EwqlpCL3VQnreg2XnCGNZl7Fu6UM3wuNGjDvWjxQaN3zFgyLcDrq
         I4AbZoIx40ASdflKTXW/+QgErNvWqnWxL5fe2tYIlrv8IReoUK8/y+PMMqCrHL3PSAel
         gYrXZsx0Bnaqo8P2BPyX3lz+PWN/jiaLNe/eJPVmAuXEaZwnpGsFWR/oAhnIP2fLWzIH
         A+cZxj0CwDBgyApzznzTCUl2H93a+VKF8Qsf2uXq6yplkXc/y2y7JBxcoyISQYHfjYF+
         xeJ6FOQNP+6G1uD8wgDVdT96tcMC9KijeH/bca8ct7Sd/sSFcM4RHqhNQygkBdx2AFjG
         GAaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744375573; x=1744980373;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xC7QEkgS6ix+rBNELN8mJuKibywugwqTHGImbnFBq+U=;
        b=AQY7z4QkkRJeqilfWDSR5m855nQSc2+0jChMbZvuFv9ZbSW17r8ZqLKd5UNslM2fQJ
         5mNgUBzprfREJ2VvcSo6VZIO97Er3Ohxec+YeOKHnMA+Wn9jtjLz9ZJVygbHlQhhAhfe
         zse1OFacbFOXStgB7BDg5vyyXB27U6VRBYG8pxRMVQ21tH3/F+IStwjLb1wGo3fOgdUr
         J5zQ1XpeH6EZ0+BVjbLb56QqpZDSyw9Ht5SBspe+3VszDKI4HWN8mqSnb4DHdlpb2lY3
         ofjWwlWu6WQgHJOQgzBRgbG5LlCuV5u2NPrwZS9A3OqsWsFpaezjMOjbWPFUL8jlstoH
         +B9w==
X-Gm-Message-State: AOJu0Yw7+/joFUdqnT/sLgzeRLksWstnxdEhfvkeZ2xJtvMMoMq/xKJS
	mrMTju9Z2R0s31MysHq1RMEKNOrWajP9YB4zTlPR+tUYfXf1aVr5EM5Sl/7Txz8ixM0r36Fu/fZ
	XjQNTcwIzz3r/gyLc1m9q8OuGroU=
X-Gm-Gg: ASbGncsKlOLN4Xexxm0xs+cDq8yiQzID/699tKxuZmKm3aB+hXINS9b/n00WmgKjL1f
	3ogMhbBLonJq+8kpHfRNyslX25AHRWnN7REe6j11UOiHGQKFz1ounb6g3Q2qWyBdN/JusDJeUWc
	eOsfO1XTAHQXlOzrafcjpo
X-Google-Smtp-Source: AGHT+IHppJ/ht2q+c0zOddwptgj7HqX47p0cmKG/shzdKtM4gELkmgZc1TD+TbTjYCw9C+6g+ODInOVH/+vwJmhig/E=
X-Received: by 2002:a05:620a:f0e:b0:7c5:96b4:f5e5 with SMTP id
 af79cd13be357-7c7af0cd7bcmr352466485a.13.1744375572972; Fri, 11 Apr 2025
 05:46:12 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj_+OJiYJknnRR_hZnWfCGSp-RF9p6_R9uMyxaKjbMS9Uw@mail.gmail.com>
 <2395.1744373935297294221@lists.yoctoproject.org>
In-Reply-To: <2395.1744373935297294221@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 11 Apr 2025 14:46:01 +0200
X-Gm-Features: ATxdqUEIkDr4ILTpHXxNGr4bZIGPgzJl-myK8_wKmPMH-H1zojUY5gVcuGodm3c
Message-ID: <CANNYZj_ByYJvDTLYgwiia1Krezaj8wq=tEKWnZ=A8Q=RZGj2eQ@mail.gmail.com>
Subject: Re: [yocto] A new member
To: nguyenthaithuanalg@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Apr 2025 12:46:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65145

On Fri, 11 Apr 2025 at 14:18, Thu=E1=BA=ADn Nguy=E1=BB=85n-Th=C3=A1i via
Lists.Yoctoproject.Org
<nguyenthaithuanalg=3Dgmail.com@lists.yoctoproject.org> wrote:
> In order to be simple because I am new member, may I send mail to Khem Ra=
j or share my project: https://github.com/thuanalg/simplelog-topic, is it g=
ood enough to contribute?

Sending email to people about your own projects is usually not a good
idea. If you have questions, ask them here. But first please describe
your goal clearly, because I do not understand what do you want to
achieve.

Alex

