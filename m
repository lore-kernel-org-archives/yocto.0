Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09688C001B0
	for <webhook@archiver.kernel.org>; Tue,  8 Aug 2023 19:40:52 +0000 (UTC)
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
 by mx.groups.io with SMTP id smtpd.web10.71611.1691523645452095726
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Aug 2023 12:40:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=gTX7hSPp;
 spf=pass (domain: gmail.com, ip: 209.85.217.41, mailfrom: raj.khem@gmail.com)
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-4477b141804so2495031137.3
        for <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 12:40:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691523644; x=1692128444;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4TQ1Z1CkOKHZ9RY6XCJjryZh2lCerKeyr8Vks/M85zM=;
        b=gTX7hSPpaVb3ztHEeopg0MctZDldZVnFRPmORAAwLKKGgGGPEMXn5vMehV6B5B2DJC
         C/M93+r2UgjT9UnBR2X/NBC1iYg1u+tJKRbJgeo4LqaDzu7KZ3oxnltbAmr99qLX4/fK
         CR2v8qpvX3ey02BbufKLGPk/A2ZZnMbYx0NhC9nezTfLFin4ZlKJs/psYrqxCBkrI1vU
         R7BTZ+JuxebvVxFzMiJBNHV2bozAaTfXenxoJfpvrv8zMpSjLYwTQyDhDMiAhibCwKU0
         tNVyjU5mJcKmPpAu3lfqPzfnAdStuHvq0t1nab8iGjG1dIMD2oo/4ub+x/vHUN5p1tlY
         UmRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691523644; x=1692128444;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4TQ1Z1CkOKHZ9RY6XCJjryZh2lCerKeyr8Vks/M85zM=;
        b=DWqVy+nC3DjLATBuD5mrKmhru06NBABmLKY3lwThiotb/Zja0DTEXo9mmbHjPLY/oB
         f4+57zQ1QLkYF0i/rLxAXSjixN6Tvbhg3109aL4mq6GvH+At9xLLlXkoQkOKbZ1VJ8x+
         ljvRQvjXNAjkiyjw/OFvZJKCEGilT9gWtvnRIlmYz17S9+EztXUjRz15Op4JZsOU5+xC
         oEbXVd5D4AhtlE3/+dcCepabRmaRecSFUda6l0C6uxmKY+KHCoucpa/cJ5Ml6YONbTHu
         2CwglD22FcFb5QqQkIIhHWNWcxwY1eIrZQV0023AmIJGwnSjfFRIXcFeXQOHKixL7I4Q
         W3zg==
X-Gm-Message-State: AOJu0YwtjFBon5bB7vE6LWX7NXsw4lU5efbdppmQ1xUZQ8JlSmsvQ9PK
	KgpWw+zKTZYR9veRbjyBhR7k7gSJHfad9NLiRnU=
X-Google-Smtp-Source: AGHT+IGrQchMEzxSpQga+q7LwHtetfZqV/TwoboSIzAixcDAUoWUNPVomiGZEPI5ew2SwQe38jSUmNQaR97iMdFvX1Y=
X-Received: by 2002:a05:6102:2f5:b0:443:6397:2505 with SMTP id
 j21-20020a05610202f500b0044363972505mr860741vsj.19.1691523644424; Tue, 08 Aug
 2023 12:40:44 -0700 (PDT)
MIME-Version: 1.0
References: <CABKMkPK8pAVXVWXBG0nc-aKpgKzYpQt1dvfZH2sj9T2pS3p=hA@mail.gmail.com>
 <CAMKF1sorNvKwy9tKMRv4FSDFP270t7ryimrv8s8tUzgXoJ=L6A@mail.gmail.com> <CANnLRdhA5USajcUkX-O0gTVam7JfxPWpheAuVcjdpam8cmKGXA@mail.gmail.com>
In-Reply-To: <CANnLRdhA5USajcUkX-O0gTVam7JfxPWpheAuVcjdpam8cmKGXA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 8 Aug 2023 12:40:17 -0700
Message-ID: <CAMKF1sph5RK+OJnHHtP7SLWC=nYGNiJmgJ_niDu35ct+NVKr_g@mail.gmail.com>
Subject: Re: [yocto] Rootless Podman
To: Stephen John Smoogen <smooge@gmail.com>
Cc: Joel Winarske <joel.winarske@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 19:40:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60752

On Tue, Aug 8, 2023 at 11:43=E2=80=AFAM Stephen John Smoogen <smooge@gmail.=
com> wrote:
>
>
> Does anyone know what ways it is failing (or how I can duplicate it ) and=
 I can forward to the podman group (can't promise I can get it fixed.. but =
will do what I can). Also if people have already opened issues on the failu=
res, let me know.
>

With yoe

local.sh
export DOCKER_REPO=3Dyoedistro/yoe-build:bookworm-`uname -m`
export DOCKER=3Dpodman

and then try to build yoe-simple-image, it complains about enough
parallel threads not being available when running node to build
qtwebengine
omp running out of threads in other recipes and so on. These issues
don't happen on native or docker builds e.g. privileged mode also does
show these issues.

> On Tue, 8 Aug 2023 at 14:34, Khem Raj <raj.khem@gmail.com> wrote:
>>
>>
>> We have tried it hard in yoe distro but it always fails in novel ways so=
 much. I have switched back to docker for now
>>
>> On Tue, Aug 8, 2023 at 11:07 AM Joel Winarske <joel.winarske@gmail.com> =
wrote:
>>>
>>> Anyone successfully building using Rootless Podman?
>>>
>>> I'm seeing a variety of strange issues.
>>>
>>> My baseline podman config:
>>> --user 1001:1001
>>> --ipc host
>>> --privileged
>>> --security-opt label=3Ddisable
>>> --pid host
>>> --userns keep-id
>>> --ulimit host
>>> --mount type=3Ddevpts,destination=3D/dev/pts
>>> --security-opt label=3Ddisable
>>> --group-add keep-groups
>>>
>>>
>>>
>>>
>>>
>>>
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#60746): https://lists.yoctoproject.org/g/yocto/messa=
ge/60746
>> Mute This Topic: https://lists.yoctoproject.org/mt/100627665/6036588
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [smooge@gmail.=
com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>
>
>
> --
> Stephen J Smoogen.
> Let us be kind to one another, for most of us are fighting a hard battle.=
 -- Ian MacClaren

