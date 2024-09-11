Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DBE5EE57C8
	for <webhook@archiver.kernel.org>; Wed, 11 Sep 2024 17:23:55 +0000 (UTC)
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
 by mx.groups.io with SMTP id smtpd.web10.27489.1726075427336974279
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Sep 2024 10:23:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=abwqcKe6;
 spf=pass (domain: gmail.com, ip: 209.85.167.180, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-3e0465e6bd5so28086b6e.2
        for <yocto@lists.yoctoproject.org>; Wed, 11 Sep 2024 10:23:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726075426; x=1726680226; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dz2hruJOHXfkqwvTcn8Gq/L0oHm2cOBjw9Ss1HFeFgM=;
        b=abwqcKe6lch6hWH8qjg9ZeCvO2Ac0O4brJWMYZlr+Xb55GwDDj+AAP+VYQjtHfnMs3
         ZMhVUqfUYgJc4iQBUa4Ikygb1i3f+IvwCFM9/E8dy9SAKzF/mbWz2zXwuRyaJPcFFyQG
         Xp0VbvgDofSfzZ4fpWDywdPLsJM+73WGf1v3o/Ckdqxr6fDYAYTRPnbV6pRpoQaFs3Yz
         DMTIfOcVbN4huNHnQ9Rr+ShGKoeouriLJwwkmcZhfHgzLvD0y4eOzsDLBIopriZtYPlc
         G2mng1RyNgz+QQVgS+2F2x3mys8fhGEQl9sZL76oaii6K+IcS3Pao10ENBXOfGq7cAQZ
         D/GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726075426; x=1726680226;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dz2hruJOHXfkqwvTcn8Gq/L0oHm2cOBjw9Ss1HFeFgM=;
        b=KTIifTtq876prcAvH4t2Cj3D6oq8iZpEQ5AK/ZKUC/M4QRxHckDoJKoT4obsYSQCVB
         Wf7ADw+dUOijl4YJNysg5emIfn0+Q6hT3CRP1ZgoBzpvIDxABfKxNFLtZVz3o9udv9Lh
         IyySZumdmi5PdC2cPZjREX+HkyHJK9Ol92PemEUlrMrTQs8JtDiicEtU9OQK8usIgCZF
         /MfXVey417sm/xSyqjW4rQfEvJj+Tn+w9iCAGLDIKwMSbhATHxXTBAcKbQGGI1IfhEWz
         6jEo1Dke5khHOSYsjZ73wtHh3scebhANS+MPykuIU7ERLAbjDpT9hle/SGqefw0x1fY/
         ZrDQ==
X-Gm-Message-State: AOJu0Yz/uuvUJ9OUWxRE0fzmpRK3Rn6LJ9eC7fz2LMWh5esGatGu0Z0r
	gYiVz4dNub+DPq9UDPgCAVu6gyIuEXCn8JsiMVtuSHSf4xbBW8LN84cvvCSQTNksHha2YUZujQ5
	AgV2QqdegvSV+ndmbVUM/Y5BKFXovPpK7CVU=
X-Google-Smtp-Source: AGHT+IFTUGG1jiyrmZKtloHyKwqPTGiVO/Q20G68DOtwPcljsCqf0T3H97/+6k8j9RtmbcsllpoU7gnSdhKGE+OfHps=
X-Received: by 2002:a05:6808:f93:b0:3e0:47eb:baa with SMTP id
 5614622812f47-3e071a95b6dmr37095b6e.14.1726075426323; Wed, 11 Sep 2024
 10:23:46 -0700 (PDT)
MIME-Version: 1.0
References: <CABKMkPK18FnhuOT8ydnLXw-n-e_Y8rW_vg7AzwG4qgnXdsHQwQ@mail.gmail.com>
In-Reply-To: <CABKMkPK18FnhuOT8ydnLXw-n-e_Y8rW_vg7AzwG4qgnXdsHQwQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 11 Sep 2024 10:23:20 -0700
Message-ID: <CAMKF1soA_76OSa2Mt=s8O5Ws46X6S93F_9DwYu0f8Jqb2fpxJQ@mail.gmail.com>
Subject: Re: [yocto] [scarthgap] dwarfsrcfiles + static lib built with clang
To: yocto@lists.yoctoproject.org, joel.winarske@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 11 Sep 2024 17:23:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63825

On Wed, Sep 11, 2024 at 6:56=E2=80=AFAM Joel Winarske via
lists.yoctoproject.org
<joel.winarske=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Seeing this error when installing archive file to ${PN}-staticdev, (not p=
rior seen on kirkstone or dunfell):
>
> ```
> ERROR: dwarfsrcfiles failed with exit code 1 (cmd was ['dwarfsrcfiles', '=
/mnt/raid10/yocto/master/raspberry-pi5/tmp/work/cortexa76-poky-linux/filame=
nt-vk/1.54.3/package/usr/lib/filament/libfilamat.a']):
> dwarfsrcfiles: /mnt/raid10/yocto/master/raspberry-pi5/tmp/work/cortexa76-=
poky-linux/filament-vk/1.54.3/package/usr/lib/filament/libfilamat.a: not a =
valid ELF file
> ```
>
> Running readelf -h on the file I get:
>
> `readelf: Error: This is a LLVM bitcode file - try extracing and then usi=
ng llvm-bcanalyzer`

This error tells me that the generated objects are containing lto
intermediate information so
the linker can re-invoke the compiler again to do whole program
optimization. So you have two
options, either disable LTO for this recipe if it is enabled by
default, you might have a bit less
optimized binary, or disable running dwarfsrcfile using something like

PACKAGE_DEBUG_STATIC_SPLIT =3D '0'

in the recipe.


>
> Is there an override to handle clang generated archives?
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#63822): https://lists.yoctoproject.org/g/yocto/messag=
e/63822
> Mute This Topic: https://lists.yoctoproject.org/mt/108393840/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

