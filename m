Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64C4BCDB47E
	for <webhook@archiver.kernel.org>; Wed, 18 Oct 2023 08:41:35 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web11.276825.1697618488318009994
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Oct 2023 01:41:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=G5HdeBij;
 spf=pass (domain: gmail.com, ip: 209.85.208.181, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2c5087d19a6so67462111fa.0
        for <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 01:41:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697618486; x=1698223286; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3ts9moyiQXU72qm21Oiw/G/Gnkp5UYH5jN/KykVRIsw=;
        b=G5HdeBijnNvbJaCiagSWGbwfe1AweSm5VdCs7t8K+KAVfNSwB3rhAZK1R18zmRncFG
         IT2FIBdDNIksjB7aTxGdLy5voNEWjGMo42P3cuqZtk0LhH95NR/XHpPvGXhJKGwNFpLX
         2OD6AmIMvgAdUPa8pdv+7Q3sG/6zC9DNdkAzmASSQ28WhdpYh/RrbBEQeYyZTjrrZaIq
         NEXJ0v4XorieLLj/yTBoQsDKU36/Bi/EK/hXEnrBX7bJSA09FSXMMe6j2ptzqHnSmBBz
         RAfFVvFOvXnAtbwcNx/M/jS4iJEkymw73emWq5Ub8dWpq5xMDFbUwmgAcMORDWTzVszL
         oo/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697618486; x=1698223286;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3ts9moyiQXU72qm21Oiw/G/Gnkp5UYH5jN/KykVRIsw=;
        b=n6Mh6PNQ90LdgT6rQakXRgb21GB+shUDFBIVQG6pjbxlpD2IvrE0uTLULzqG4NvMkB
         olh2qLyvQziBRIbzR2xR8GwGNO0juxy8xLj4UeZ42MNzyjPfgkgAsG7+tSDOso3XPkCF
         yAoX6JdklQT1XfJJvlHGvJhAxQ7iBdeThSxdIe/IKAbe/d+56KeRu22Sm7YOKVTeAgSE
         R1YDF5SJmXwLgxuRoU5mH9l7K3E5fEpRdsBAfpw2+o3ukgYxkttDTGmwAX9KXvOqVi0y
         gWkNCSjw1HWhqApA5GzYSAs7k3kpO49GGTVfe26xSLNHa0YhOu+I9OzysoN9E17TVWUe
         e/fQ==
X-Gm-Message-State: AOJu0Yz3MGyZ/Ozic7BW7uzwuuyYDWgaLA8Z/VQlMSz11xx0zkkypEWT
	jDwVFEobIYdbC9E8I1ELQK2TS0hn+UUyKdgd53M=
X-Google-Smtp-Source: AGHT+IHPVqCk83BdpFhmIOMvISTGG3sILrNAhYitAwTZrxntbSVQa2OsvSsCDH4WbXumxgDtJfE1D8fVw0lJtEflRHE=
X-Received: by 2002:a2e:9396:0:b0:2c5:275b:c5fc with SMTP id
 g22-20020a2e9396000000b002c5275bc5fcmr3349784ljh.0.1697618485874; Wed, 18 Oct
 2023 01:41:25 -0700 (PDT)
MIME-Version: 1.0
References: <LNIq.1697618280522521063.trNE@lists.yoctoproject.org>
In-Reply-To: <LNIq.1697618280522521063.trNE@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 18 Oct 2023 10:41:14 +0200
Message-ID: <CANNYZj8P62x8q5TP59Xhajq6XNS6--Ox-G+N2pEH9hnr=Hoo=A@mail.gmail.com>
Subject: Re: [yocto] Remove packagegroup from image recipes
To: Ivan Stojanovic <ivastojanovic@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 08:41:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61389

I suppose you need to make an image recipe where the unneeded
packagegroup is not listed? Can you show the existing recipes?

Alex

On Wed, 18 Oct 2023 at 10:38, Ivan Stojanovic <ivastojanovic@gmail.com> wrote:
>
> Hi,
>
> I am trying to remove a package group (pacakgegroup-core-rauc) from a custom image but it fails with error:
> "package packagegroup-base requires packagegroup-base-rauc, but none of the providers can be installed".
>
> We use Rauc for our "standard" image, but I want to remove it from the "recovery" image. "rauc" is in DISTRO_FEATURES which is fine for all images except for "recovery" image.
>
> The only way I managed to remove it is using post-process command, but I am wondering if there is a more elegant way to remove it?
>
> Any ideas?
>
> Regards,
> Ivan
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61388): https://lists.yoctoproject.org/g/yocto/message/61388
> Mute This Topic: https://lists.yoctoproject.org/mt/102035396/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

