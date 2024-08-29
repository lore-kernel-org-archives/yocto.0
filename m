Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F15CC83F2D
	for <webhook@archiver.kernel.org>; Thu, 29 Aug 2024 14:27:35 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web10.18030.1724941644956113637
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Aug 2024 07:27:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=gXNPcdun;
 spf=pass (domain: gmail.com, ip: 209.85.208.182, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2f3fea6a0a9so7053421fa.0
        for <yocto@lists.yoctoproject.org>; Thu, 29 Aug 2024 07:27:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724941643; x=1725546443; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Ydp9zuQ3Z0n7fc9DBib7pWpqwN24CRtHinWxOj6ggV0=;
        b=gXNPcdunzuH26tFi36QvLxG0JNpz+2odOUE24K7oRAZ6Vb2GsiHkcdi346dxi0n02o
         F5PUpznHDFV380mR0M6XpB+6g1uqg/6Qnn5/4iZZzid8G3W4JfQu58nXi3vWOeqkCpzE
         5ENpMEm3JnAyyD1+Cu9YlAPIrMOyR4iYP+akSHt+8bvaJnJ0vJg9lQMEpvXgYyckrKPS
         NPa5TgFJw9oqYQfhtmRKykuPHD5uUreClZ9QgzDVolfnFIEB0DH104VpOqP+C/SwZIZa
         /waxU9tDOR07TjyAXvUJrG0FHN2GbCb6xybEKAGQecMa8AsucgG3xnpaNu2XyWS2PexI
         /8yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724941643; x=1725546443;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ydp9zuQ3Z0n7fc9DBib7pWpqwN24CRtHinWxOj6ggV0=;
        b=f6A/OfhW7O1DC4mWElqA2stKpZIZE98C8y3HXFXe7N+tH9jRdedde2f38qpBWoBI7j
         VbZvxR1VJeMnI4sPBj1V1VA0VdHSeuODcDcq+7UVWMn2N9FVa9KFVFKB3489lpnTp1CW
         CvilFxk2aYpGQsJsLlYdNnmPkHt3m1oQH4+VAOhkEgYYQhiaPtoTS10wtGu76n0EGITd
         AjEt94ZrTPbjdvLaCM9H029noJD0j8faHtIlcPpw9/WG+cHmkBSNMiK7rnnb06EKyi12
         Q5vrxoZQOneOA6ANBnZYtiDdktIjGStgVAxnaKft4e2UXMUnm1j0HQbL2Rj1WOu1EKmP
         ei2w==
X-Gm-Message-State: AOJu0YxDT5T4QcipyQ0TGb3C2mL/A9si7mQhcaed9di8UHdzEvHe9K1g
	81cxLEzu/DwOqWS6hp7lCzlfjvBEI1Qr/FVitdiLlrZeSX+G1p0PxakHI+QdIcwadiXt7XoTPkz
	Z1WOaXM4keTLgHgD2MFYADqwPSS4=
X-Google-Smtp-Source: AGHT+IHBSurvwtJOGAIqyHOsDe/Mfmd+ni3+7qsTfjFuTnCM+jpTZ5ajOQxNayQ7DCqSbPi0QHwewHX3xWZjGmPulSM=
X-Received: by 2002:a05:651c:1991:b0:2ef:2c40:dd67 with SMTP id
 38308e7fff4ca-2f6167d62e1mr10089321fa.3.1724941642356; Thu, 29 Aug 2024
 07:27:22 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj_V74dAjiN9S2j7QAA9SfGygy8cqjAZCHLqkG043++yhQ@mail.gmail.com>
 <18822.1724941010931211301@lists.yoctoproject.org>
In-Reply-To: <18822.1724941010931211301@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 29 Aug 2024 16:27:11 +0200
Message-ID: <CANNYZj-yhmBxcKiXzWKZXXLsEmNoPtrGqpd_hEOsCHKN3S3vSw@mail.gmail.com>
Subject: Re: [yocto] nfsserver script cannot stop the nfsd threads
To: pangliyuan1@huawei.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Aug 2024 14:27:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63774

That's just the script the starts the software. The actual software is
fetched and build and installed in this recipe:

https://git.yoctoproject.org/poky/tree/meta/recipes-connectivity/nfs-utils/nfs-utils_2.4.1.bb?id=8a1e7bd5dc9bbf7531fcc66427847448c71ec64c

If you look into the nfs-utils source tree, you'll probably find ways
to contact them. If they give an authoritative advice on the correct
thing to do we can incorporate that into the script.

Alex

On Thu, 29 Aug 2024 at 16:16, pangliyuan1 via Lists.Yoctoproject.Org
<pangliyuan1=huawei.com@lists.yoctoproject.org> wrote:
>
> I am using the 'nfsserver' script from yocto's poky repository, so this issue should also be related to yocto?
>
> https://git.yoctoproject.org/poky/tree/meta/recipes-connectivity/nfs-utils/nfs-utils/nfsserver?id=8a1e7bd5dc9bbf7531fcc66427847448c71ec64c

