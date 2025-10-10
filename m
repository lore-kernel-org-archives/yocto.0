Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A26CCA476
	for <webhook@archiver.kernel.org>; Fri, 10 Oct 2025 12:24:46 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
 by mx.groups.io with SMTP id smtpd.web10.7626.1760099083552097957
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Oct 2025 05:24:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kleTpzG1;
 spf=pass (domain: gmail.com, ip: 209.85.208.43, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-639e1e8c8c8so4008322a12.1
        for <yocto@lists.yoctoproject.org>; Fri, 10 Oct 2025 05:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760099082; x=1760703882; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uPYuIPHFfPiRisGHx6h8/7h9aGWjM57F2qFXC+ShyJo=;
        b=kleTpzG1PG855yssBeutsaiU84koZUVieQDYZgdCkfj1I4Y2zn4p0950UlHQ1IDWn3
         VEfIOLTpCTUbD/3FTDjRKuE76zgxJMzqndfJdFY9lGhCvJicLjf4I0Ct7KY5npY3qrps
         x33qdc7K2eoOiymZLuPynGWewEJiRE0DN7E3qWjO/fbWG/J84G113SpRwvWlk7YIfUQi
         rGQ11CMvHXoPfDAYBV14ZnkUqDUZqJGXfvEC071U3nNtDUh/UItGFPNjraj/yVcLolmU
         bQje9jcLuuNzua7Q3Kq8mGa5A7sRgVIZGr6s4k+i3UZVifYo3qJAJCfFlveB55T19M+D
         0m9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760099082; x=1760703882;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uPYuIPHFfPiRisGHx6h8/7h9aGWjM57F2qFXC+ShyJo=;
        b=F+P5r7T1t4I3biCIzNlp/9jOPgrv7ALu+01lo0Z3asJeWq8VzYCERYcUwwOBOgnUiM
         /pCXoyv+Pg9h6P8nx7O2qoiZ++36HBnQQPJaHhs4zJ37Z95j7oyFaSq8YY7Dw9OLqkb5
         RzX/3ardB1LIUwaO8bOw5S+mUUTPWRIo6uegL1g9pJhSF+su8e7aHRC1DWxIOn7mcNEl
         NdcXz2zPXVytdQcfCcwxyD65NA05iJnSlLQ4oJzvoT0ij4215xEKMfnu6lxkLI88rTpj
         OQOagCDxllMyuX5gyNofl0SsjvW25TotY3NwIDkDFemGIjAKi32M2vNCrMlKXMh72Ycc
         Wg1w==
X-Gm-Message-State: AOJu0YxBjycY/7VXhRZ+OIvNO3aCVIgMxtmMJZuKESUO0orzpv52C0za
	VF/v/kOAgDit5MaFLYRwdwF0NwmRXTvNEFbiuk4VNZITU7SXVYDktcnuSNoHTA==
X-Gm-Gg: ASbGncuUkgjTDVpmJ4111GWfHcixISup8fZ8KL9d7VEhTkCbxJ5Z7PxM/dtHbeQ3ccw
	2f4tf+yGebBzlB1qdetpR8tfCN7QI6dbLNwzTwO1ViCeQKwXZBS5gLYj28kPxlnn3zKYul6YlN7
	OP0akMpGt/TFiTWGDXFW3Jbo429QCo0xl6A9RGF/QFyjabzto0qg15YYP6nJ13JFSUvJR32m52b
	ts4wxPJCEiSle7s5/8MXFlV2SvWRJURzBrnMOnUI9aA+lSFFGxydR1yzqdFyyC0hcfgdQXHlijq
	ea6C6pEjAi+VdtFsAyJ1/4umLxRTm7FQB1kGgyWPmCC13sJGmuDZ8orEVTHWN+qTwh1EqzUpXCZ
	qRkZHprDfMhToOubfzxXcr8kphjiw1uE2ax3mI+Dc0mdHV8BYbieRG1065p0o
X-Google-Smtp-Source: AGHT+IF5tIJVKTlZQ9Bu1kKwvlb0RaSvr+vSPxPrFg3IO4Amv/ubggL7KZc4xIb/e21CifjvnAr1zQ==
X-Received: by 2002:a17:907:2d0d:b0:b24:3412:7cfe with SMTP id a640c23a62f3a-b50acb0deb2mr1245309566b.63.1760099081725;
        Fri, 10 Oct 2025 05:24:41 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d8c1132fsm226985166b.54.2025.10.10.05.24.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Oct 2025 05:24:41 -0700 (PDT)
Message-ID: <c1382972-87dd-4d24-bfc0-9e96b867a177@gmail.com>
Date: Fri, 10 Oct 2025 14:24:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] image class got error from copyhardlinktree/tar during
 migration to whinlatter
To: yocto@lists.yoctoproject.org, peter@berginkonsult.se
References: <174d063a-9e3e-4aab-9d1d-70cd7095a681@berginkonsult.se>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <174d063a-9e3e-4aab-9d1d-70cd7095a681@berginkonsult.se>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Oct 2025 12:24:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65917

On 10/10/25 13:54, Peter Bergin via lists.yoctoproject.org wrote:
> Hi,
>
> I'm working on uprev for a layer from scarthgap to whinlatter. In the 
> layer there is a custom image class that will take part om the rootfs 
> and make a separate image of. First step is to copy out that part to a 
> separate directory before creating an image file. The function is using 
> copyhardlinktree from 'meta/lib/oe/path.py'. It has worked well in 
> scarthgap but when building in whinlatter I get this error:
>
>               0106:
>               0107:    _from = 
> os.path.realpath(os.path.join(d.getVar("IMAGE_ROOTFS"), "data"))
>               0108:    _to = 
> os.path.realpath(os.path.join(d.getVar("WORKDIR"), "data.copy.%s" % 
> d.getVar('BB_CURRENTTASK')))
>               0109:
>           *** 0110:    copyhardlinktree(_from, _to)
>               0111:
>          ...
>          Subprocess output:
>          tar: ./mydir: Cannot change ownership to uid 0, gid 0: Invalid 
> argument
>          tar: .: Cannot change ownership to uid 0, gid 0: Invalid argument
>          tar: Exiting with failure status due to previous errors
>
> The directory 'mydir' is owned by root user in my target file system. I 
> would like to check if someone have seen similar things when going to 
> newer versions? Or if someone have an idea about the root cause? I did a 
> workaround and used 'shutil.copytree' to avoid this error but is curios 
> to find the root cause and understand why it fails.
>

One idea:

There was one change recently, regarding how pseudo handles which paths
to handle[1].

In Scarthgap, everything is handled, unless it is explicitly excluded
with the PSEUDO_IGNORE_PATHS variable. ${WORKDIR} was not excluded by
default, and pseudo kept track of the permissions (except for the
specific subfolders that were excluded).

Currently nothing is handled, unless it is explicitly included with the
PSEUDO_INCLUDE_PATHS - and ${WORKDIR} is not included by default, so
pseudo doesn't keep track of it currently (except for he named subfolders).

I would try adding something like 'PSUEDO_INCLUDE_PATHS +=
"${WORKDIR}/data.copy"' or similar in local.conf, and see if it helps.

[1]:
https://git.openembedded.org/openembedded-core/commit/meta/conf/bitbake.conf?id=2502da81709f25de499277b28d33c915638c45f6


