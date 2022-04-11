Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60119C47086
	for <webhook@archiver.kernel.org>; Tue, 12 Apr 2022 16:46:39 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
 [209.85.222.173])
 by mx.groups.io with SMTP id smtpd.web11.3191.1649712577643097468
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Apr 2022 14:29:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=BpedjoG3;
 spf=pass (domain: gmail.com, ip: 209.85.222.173,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f173.google.com with SMTP id d71so4134378qkg.12
        for <yocto@lists.yoctoproject.org>;
 Mon, 11 Apr 2022 14:29:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uHTKD8l7GwYXnKmviO32nEHmwcjiai0K+H4LwsxUTEk=;
        b=BpedjoG3O1dNuTIuZeWubk43e5HHNSvqUnvU61MDtPnu4s0XJIyRYOOMUh/bFLwasg
         NCTTCPQn+9LJdGGB25r2t1bkAUuAMhXsvbT8LtdUqSWx70e6Pj54/7xeD7XSdBEd20w2
         8nIK0ePd36ugSlbyogFqU6dZDjLNju+vV0wvCUL0YbSHdjFX7A11TAlMMEmNF3QwReyj
         EzMMDahnlOHmkOl7/NcLGWGwkqaxCzTeUg8MEF0WfWs17nIKl41AQPSidejbqMByZ5nd
         cmRMo5GdmUCVIow5a/C8Pea2vIA5tNlyUduzvd0ww4ehB/gCnXNr6usE1gOywRmpL/1P
         1YBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uHTKD8l7GwYXnKmviO32nEHmwcjiai0K+H4LwsxUTEk=;
        b=BTxz441x+wKcieiepYqrbGFo5+yPJJURNjR3HT6GMJjTl5v+K48WGng4QnkM4cyPVd
         o53JscZg8ehiwO3mWcyQ4hKne52za2q9vjFS1R3jbR/bVJMUDSXxcnikhca/eDXwHazH
         vxA+a6aXaprC4YrYXn78fHCa0eFrqe9s4DdADH4/X37gqt58E7MzhpCDYfyPld46eeGA
         ca/RbNmpwwf5rBzUJBDqLsfcQhK9OckMp/CH9oeo9zYj4oSdHolvSmTOu2ZT8p6cvXNA
         Nv+I6Kqesx6TfSO7q1s4QYXXdxoRviy+3bTePr0V2QCStWIB1GYHforwxsjAYW3Nkdrq
         SFcw==
X-Gm-Message-State: AOAM533Sw7qjEoXbK6OxcSUTv19Ds2fT+8ctwTBiyaVm0rPNqU07JtMT
	r8akZa0o07p6nfDH+6VbbjZJfwrrh+k0C7qXd6M=
X-Google-Smtp-Source: 
 ABdhPJyjvdXDNNP/BjSBzps2y54i4U8q39FuFYpH/PEdQvZ5njISTLafpC/eqtT+yAcYTkXmX3PQ5FJVgzbgzgks1P0=
X-Received: by 2002:a05:620a:27c3:b0:69c:3994:8173 with SMTP id
 i3-20020a05620a27c300b0069c39948173mr1049564qkp.180.1649712576681; Mon, 11
 Apr 2022 14:29:36 -0700 (PDT)
MIME-Version: 1.0
References: <M3Kh.1649693635080134995.ltMY@lists.yoctoproject.org>
 <CAMKF1sp+Dak1GH=RgC7g8tAxnpaS1MHuNQOJNaKtsLfqRGZZ5Q@mail.gmail.com>
 <CAKKtPp_wEyX=NtyJiPtQe+VkGgZRaMG5o3eJgafAkEhxnDSLdQ@mail.gmail.com>
 <CAMKF1sp7D_PhbpH0qxJm8kz8NKsy7qUzk5dWBc9rfJqUkSpnww@mail.gmail.com>
 <CAKKtPp9kqfPSRhPvmh52GmTVe1pMxVV4r4C6V3KSs4XXOgWUgA@mail.gmail.com>
 <CAMKF1sqoFu0UmVx0vKOLk-k4aWbxQAKZXCUthKNQ49Eh=CU5Pg@mail.gmail.com>
 <CAKKtPp-3_JHiAEMup48WPZUj4uPe9fkYs5JiN4YBORWdiojfqQ@mail.gmail.com>
In-Reply-To: 
 <CAKKtPp-3_JHiAEMup48WPZUj4uPe9fkYs5JiN4YBORWdiojfqQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 11 Apr 2022 14:29:10 -0700
Message-ID: 
 <CAMKF1srTY+vNX=oWD576gYr31g2Y06zX9AcZ3YtKnoLneSN8ZQ@mail.gmail.com>
Subject: Re: [yocto] Skipping already-stripped check doesn't work
To: Alessandro Tagliapietra <tagliapietra.alessandro@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Apr 2022 16:46:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56727

which release branch are you using?

On Mon, Apr 11, 2022 at 2:27 PM Alessandro Tagliapietra
<tagliapietra.alessandro@gmail.com> wrote:
>
> Removing works, the build succeeded, however I can't test if it's actually needed by the package, I'll try that tomorrow.
> Regarding file paths for example file linux-arm/node.napi.armv7.node is in these paths:
>
> image/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node
> packages-split/node-red-node-serialport/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node
> npm-build/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node
> package/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node
> npm/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node
>
> so it seems to be in node-red-node-serialport which is our package so INSANE_SKIP_${PN} += "already-stripped arch" should work.
>
>
> On Mon, Apr 11, 2022 at 2:14 PM Khem Raj <raj.khem@gmail.com> wrote:
>>
>>
>>
>> On Mon, Apr 11, 2022 at 1:43 PM Alessandro Tagliapietra <tagliapietra.alessandro@gmail.com> wrote:
>>>
>>> On Mon, Apr 11, 2022 at 1:36 PM Khem Raj <raj.khem@gmail.com> wrote:
>>>>
>>>>
>>>> what package folders do you see under packages-split/ folder in your
>>>> build area for this recipe ?
>>>
>>>
>>> The ones I've added in the INSANE_SKIP
>>>
>>> ls -lah /home/alex/Projects/yocto/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/node-red-node-serialport/1.0.1-r0/packages-split
>>> total 32K
>>> drwxr-xr-x 3 alex alex 4.0K Apr 11 13:23 node-red-node-serialport
>>> drwxr-xr-x 3 alex alex 4.0K Apr 11 13:23 node-red-node-serialport-dbg
>>> drwxr-xr-x 2 alex alex 4.0K Apr 11 13:23 node-red-node-serialport-dev
>>> drwxr-xr-x 2 alex alex 4.0K Apr  6 16:04 node-red-node-serialport-doc
>>> drwxr-xr-x 2 alex alex 4.0K Apr  6 16:04 node-red-node-serialport-locale
>>> -rw-r--r-- 1 alex alex   57 Apr  6 16:04 node-red-node-serialport.shlibdeps
>>> drwxr-xr-x 3 alex alex 4.0K Apr 11 13:23 node-red-node-serialport-src
>>> drwxr-xr-x 2 alex alex 4.0K Apr  6 16:04 node-red-node-serialport-staticdev
>>
>>
>> Ok then next thing you want to check is where the reported stripped file is located and even if it does not work then perhaps look into removing these files if they are not needed
>>>
>>>
>>>

