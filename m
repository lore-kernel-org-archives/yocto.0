Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A26DCAC5BB
	for <webhook@archiver.kernel.org>; Wed,  1 Oct 2025 22:12:04 +0000 (UTC)
Received: from mail-yx1-f53.google.com (mail-yx1-f53.google.com [74.125.224.53])
 by mx.groups.io with SMTP id smtpd.web10.933.1759356723062842442
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Oct 2025 15:12:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ithvvuMU;
 spf=pass (domain: gmail.com, ip: 74.125.224.53, mailfrom: jpewhacker@gmail.com)
Received: by mail-yx1-f53.google.com with SMTP id 956f58d0204a3-63b710f276fso526755d50.1
        for <yocto@lists.yoctoproject.org>; Wed, 01 Oct 2025 15:12:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759356722; x=1759961522; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NN4rvngWDZuVQ8cMNWTNV0SXnS0L7bHC766QEIZDfhk=;
        b=ithvvuMUzdmZqJbADAGzZJnppzmyh6MVZ9bxAiufE52Z0MHi5qJBUg/397Vlpe7xMz
         /j/6fAD5AYqXIB0QOIpECs+00dQ9xmdByXYGVjtPCUfbCLhjk2VUjUUqxjMevurR0Xvy
         n3wgiBSsLckIXAGC1y5ZfPPq+S9I/Wi3/fMdJ/xlLZVQyDll5Kdit+vG4gVNkBdk8uvq
         7/l3zzxNrFhVa2C3mw3n7yuorAtK5sBwklOi4nhsfCZiE2xgpXgaRMfrIzhMmRpVy1Ek
         e7E4j1VZ/eCSy6k87TqZvdnrgmjOG2/kG8QFqKe/sy7uIOGxkmflmfVQrE2dILw+pB45
         GJlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759356722; x=1759961522;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NN4rvngWDZuVQ8cMNWTNV0SXnS0L7bHC766QEIZDfhk=;
        b=ElkiIv8upDpLhk9XL+DZ5xDuNoMn1AHv4s1HdbDuF1aET1AZi1Ly9hs8XM9BOhc72d
         TShLAKTaUaDCsjyPfkkWRu5jwOBAi41VBSGpWFVApLIUUgHHIWyD0soImVGhUAQc1i0E
         F/fdy9UP0CUTGRpYQTOpCDFZGCwPTEuWkSe5REQ2ODjNHPjJMORrlbLKaFKtNMaWqiD/
         Kp+QdzEPRwhMtyohkrjAPZvFS2Dz+NqE0UpEzXXu0UoQs6UGFf4QCjUGKI1i7Ve1gNH0
         omeDOj4s5PvxYJtvuwM0bew66gbzGChzQYYuA0a0L9D9qiO+RrlYytX/BGDpV9bdl9pZ
         hjEw==
X-Gm-Message-State: AOJu0YwOskyO3E/rMah2eG1tJ9uPbPqAJ+xlXQVCpdR1hBKvSWWt3f0z
	U12WYINVTip0A0OgX/MBlCr6pPyKXOsKIbFu7uTApLwfuNfQ+jx9q7oGBCP4BLLCCutPHBINLkd
	g34lWRzN2DPcpyFrvBdWWmEI0tA3ImaU=
X-Gm-Gg: ASbGncsytDhTwGU5c7fj4w9VaAjZyg/lAxwRLvGGA8MIyuej7PT9iVp/srymOs1GqEO
	W5WG0x/oPCNIqI4ZXDl4+kDRNGEW+r4/7V95BsWjltRM0CIvD3Z2C+tlgAxxaG6CHDypIO6k5wO
	wVGYFeHjY4OkwvbpuoZEj2ny6b0PL8g4A6l5iGdZ+MN0LHubwv4XxGOC1tkxQ8KhZ04wRP4K4lw
	CvFPvmWgTcvW7/o2YFpwQ3vLohI2PHureFFoU2jO7gVNA==
X-Google-Smtp-Source: AGHT+IGapF99LUqncdWl7XXmXLvMTpCt2oovvjVEGEEO4maBAXLzHt6JRbbzNdzsFsEx77K057GoOIZkqLvgQlMB/bM=
X-Received: by 2002:a53:d60e:0:b0:635:4ed0:5711 with SMTP id
 956f58d0204a3-63b6ff641e3mr5435532d50.43.1759356722204; Wed, 01 Oct 2025
 15:12:02 -0700 (PDT)
MIME-Version: 1.0
References: <7d479171-ff95-4473-b420-b168dca2b7d8@amd.com>
In-Reply-To: <7d479171-ff95-4473-b420-b168dca2b7d8@amd.com>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Wed, 1 Oct 2025 16:11:51 -0600
X-Gm-Features: AS18NWDlTGn_LzeNJLH3nYV34e50wVItQEJFxS2lhsg61qL77jh-20_npYQUzN8
Message-ID: <CAJdd5GayeBvy91JsZ=T7As8g=_OOCzFgP0noLECxqm1wG0wMnw@mail.gmail.com>
Subject: Re: Run weston as custom user and non-root
To: "Gundlupet Raju, Sandeep" <sandeep.gundlupet-raju@amd.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Oct 2025 22:12:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65899

On Wed, Oct 1, 2025 at 3:58=E2=80=AFPM Gundlupet Raju, Sandeep
<sandeep.gundlupet-raju@amd.com> wrote:
>
> Hi All,
>
> I'm trying to run weston as a custom user(non-weston user) and non-root
> on arm64 using scarthgap, I can modify
> /etc/systemd/system/graphical.target.wants/weston.service with username
> User=3Droot, Group=3Dvideo and then run as root user which works OOB, but
> end goal to run weston as custom user which belongs to video group.

I'm not sure why that wouldn't work other than maybe you also need to
change USERADD_PARAM in weston-init.bb?

>
> Any help is appreciated.
>
> Thanks,
> Sandeep
>

