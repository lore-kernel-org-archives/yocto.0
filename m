Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33023C46467
	for <webhook@archiver.kernel.org>; Tue,  3 Jan 2023 15:24:22 +0000 (UTC)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
 by mx.groups.io with SMTP id smtpd.web10.66391.1672759455417684645
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Jan 2023 07:24:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=jRtQ34eQ;
 spf=pass (domain: gmail.com, ip: 209.85.208.176, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f176.google.com with SMTP id g14so32141270ljh.10
        for <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 07:24:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JWWYZxUJCGNi82TirTzLYjy0Zc34zPT31210tnDIdGk=;
        b=jRtQ34eQjgnOT6YeIf61A+7ZiK2MRXcKhFsyMRPDa+i7JfkW9ySu+5/8dv0N8nYCC3
         wQm85fdWBedo0p3uVrlJKWIgBZCGji4Y/QeCrm3xhPZjzr4KBqUyRqur0fTN7F3V21LA
         TuwnXzuCd7v9N5fgB3z2GYy2mg69ctGXQnANuN9mSfgmlgOtxAYWZNsuy/OSqvyNTtcP
         7ANA+TQS5nkv4NvQmw9qSNXWQdPdFeI2CcBqi3z5ZoLAet8fIERcIfNcGvsMvYnW+CnY
         J3PxWyGdf/B2lcbKmnxGyTK2VDXkG1jA0hBqA7PG2EWeTl3tOzf83Zw1glMLFYwigt+w
         SRSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JWWYZxUJCGNi82TirTzLYjy0Zc34zPT31210tnDIdGk=;
        b=1Lbz+sb46OwrT/F+gf6ETn6QW8H58luM1Q5YTzVOWxgSC48ArRYXH9CL1qM0MHBhM5
         AEfi8pmkj5wcIoIB7jWFjNr30KIPE0FjQsnk3aWZR9HxR6rMEjTFYEPsP4a2R+nz9FHY
         IpIJp4voZNTojCrgRUVAKyYHPXGP4aaYHNcFUXmzYL0WUURlFD+AnkIXiDP8AJ0Kp9J0
         j6xYAF4dJXfqHy1AhdTlADPMMOdN3+8GvLHkdydgdIn8WGk0LaRMnC5cgt+TJb52l9WQ
         7IkrjIL1YGSWshlySM2BFEK86w9pWbENpxkLV9mP3dY2VpgqEDi6v9Qw2fxJuPVl0Zx9
         bKWA==
X-Gm-Message-State: AFqh2korrWkbQoAXPctxI6hrchubVyUP+U8Yv5dRS0A2DMwVECh/NYKm
	Ri4duIboOzEBiVk3iflGDrrwM/E9O6dvZb6E2Mc=
X-Google-Smtp-Source: AMrXdXtBqG8zysmrgFizIJzLUsN78ZcHvsHATx0IJpS7oB8fpKnTCrXQGEv0rzXMPz3vm+9Bv8kDZD2gcnE7/fgEn4I=
X-Received: by 2002:a2e:a486:0:b0:27f:e99f:7f2c with SMTP id
 h6-20020a2ea486000000b0027fe99f7f2cmr465348lji.222.1672759453087; Tue, 03 Jan
 2023 07:24:13 -0800 (PST)
MIME-Version: 1.0
References: <5a37c855-943a-7ae2-b481-e030ebb69de8@gmail.com>
 <10280.1623316977582274550@lists.yoctoproject.org> <829bf26e-b882-d479-aa0c-f22998071fa7@windriver.com>
 <a760fbd1-f76c-598f-a802-f4e6207f9720@gmail.com> <43af6b3b-a2c5-b937-93a4-fec8ab2e1fcd@gmail.com>
 <26729316-8d42-3ec9-d6b5-f77002a85c74@windriver.com> <89e0c314-86ca-6fb4-642c-7493116b467f@gmail.com>
 <CANNYZj80qvYk5=OXDhGr78=pmzsBdxD1EbHDNrfKDf9_gUQyPA@mail.gmail.com>
 <3ffc9740-b8a5-358b-8e56-4103d4d0f0cb@gmail.com> <e36d4afd-235a-a2f2-7272-9d9b49c02698@theobroma-systems.com>
 <41754798-a1f2-05a7-93d8-799907ed988b@gmail.com> <BN7PR14MB2420DC3CA660334614825E4A85F49@BN7PR14MB2420.namprd14.prod.outlook.com>
 <f34730a2-c775-8e9c-dd36-9282e9cff08d@gmail.com>
In-Reply-To: <f34730a2-c775-8e9c-dd36-9282e9cff08d@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 3 Jan 2023 16:24:01 +0100
Message-ID: <CANNYZj_3Ofm_JVvsEz-i3pc9gs2bJWVz42X7xOsWwjsD46wZNQ@mail.gmail.com>
Subject: Re: [yocto] bitbake controlling memory use
To: Ferry Toth <fntoth@gmail.com>
Cc: Janne Kiiskila <janne.kiiskila@izumanetworks.com>, 
	Quentin Schulz <quentin.schulz@theobroma-systems.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 15:24:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58904

On Tue, 3 Jan 2023 at 16:12, Ferry Toth <fntoth@gmail.com> wrote:
> Yes, and I note that many people trying to build my image
> (meta-intel-edison) do so from a virtual machine as they only have a
> windows host.

Sorry guys, but this is venturing into the ridiculous. If you embark
on building a whole Linux distribution, you need to start with the
correct tools for it.

Alex

