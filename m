Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30546C369CB
	for <webhook@archiver.kernel.org>; Wed, 23 Apr 2025 10:28:46 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
 by mx.groups.io with SMTP id smtpd.web10.5026.1745404118027741195
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Apr 2025 03:28:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Ut5CYSES;
 spf=pass (domain: gmail.com, ip: 209.85.160.181, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-4769b16d4fbso35061951cf.2
        for <yocto@lists.yoctoproject.org>; Wed, 23 Apr 2025 03:28:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745404117; x=1746008917; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tiFnb82Dr8npdVZLfy0eJxTBxe0tVTDCpop134OFRm4=;
        b=Ut5CYSES6VKejLTqCbzV6fGVl70OB2dR6nbDqKR7XemCyOKRmWdncDJ988CNfbHr1G
         70em/Hm7IT7ac1jvVjAz8cTPC6/1V5SHV5M7TRwwrWrJLNTWh4k3hnk9dz69b52Cf2o0
         BR7ayrxKFNYxI6J8KbQnBG2P05bSokfBrX3gAslkzYPg7+yPV/R7Y/1IY1sVmE1UJweb
         F7NwZGoeEM/8/cjROb4dW9B4N8yQBmKoKcq0rw1/MUzH+73RNNibq+CCAd1C/eF+qdTQ
         qTIfym920yKFc2moSp3ooraP6feE8dvLJUkPYvlOwq1aiopfiNOhRAslrDT9qET9hhpV
         gfwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745404117; x=1746008917;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tiFnb82Dr8npdVZLfy0eJxTBxe0tVTDCpop134OFRm4=;
        b=XKVciSzGyA/CtuhrrG+PXqAjwh5pcdfA78azbDsRgxy3/0GrkfoHfbcGRWYKCIPBTV
         c0w7izcTt2Dxwei+EQpQC0FW3Ov5Yxm0nlKCuUBbl053nNzpfJQdPg08cI0enQes5MFt
         2uUrnUXnz1cdOgquw3JNwh06E3oqoQ0ipWu1vTL0Ar5+8W23UOO0+BkrbrpFbDjBrAnN
         e6PIS/NCETZE5aX2dGzsQDP1MCTnoEav0uBiZwJjWm2A15d+jotgox9oFvsFk+T2NZFX
         ksHPXHO3OHswTTdCV7lBffPKCpvrYc39b4V4EfKvCTcRgtc8HqlnIkRxukeqosgZBot6
         N/5w==
X-Gm-Message-State: AOJu0YxalDAr4awtmUkO1ivM//laipHRuz3IhrTHbdGDZCwNUT4J7Uyl
	YPZ2V86I33f+IrNSRJZZ5SvutKZAZ5VVbfGNBr3/M2LoK7zvSJCYnjWBfgz7vhZiKRHVZVGqR2B
	x9vKi7+7iQiM6kI8++hV0mPyj4Hrnfg==
X-Gm-Gg: ASbGncvymtS1UrsxIKyvn38TSBJOwZGv7LsXaoDmD/Qj/FSkmgH5rwWQfHwMQtQVYVl
	KMPqxgVBggBk8M9JeE+gamPr67yE99LzooGx8J4+z3L0ePsgjM/QEiYAFIVbdXT6U8vqgeiKnTd
	k9LhVvUNHmOxkybbe/gPGC5R8l6dahN0Ain1ENhcGScWbNB0UWFgHYZVf7
X-Google-Smtp-Source: AGHT+IFQDFG8vF3BvTWFHcakXQ1sZBIqj/zuO9miexvYXJRwLAm1OHhbXA2N9gnkAImhFoWxPBWrWi4rEfI55ZJM3yw=
X-Received: by 2002:ad4:5f8f:0:b0:6e8:fe60:fdeb with SMTP id
 6a1803df08f44-6f2c4553c77mr281014506d6.17.1745404116872; Wed, 23 Apr 2025
 03:28:36 -0700 (PDT)
MIME-Version: 1.0
References: <20250422165822.92784-1-denisova.olga.k@yandex.ru>
In-Reply-To: <20250422165822.92784-1-denisova.olga.k@yandex.ru>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 23 Apr 2025 12:28:25 +0200
X-Gm-Features: ATxdqUHBB1imROD0vMBjJCZxlj7fjvIjfVMHe4BfTLhz4xbqFqGsk9HQeaYNFgc
Message-ID: <CANNYZj9E9f=wE2vVxm=rrzBJNw79xVcPdwhtoZ-b6xkt8+vV_g@mail.gmail.com>
Subject: Re: [yocto] [PATCH 0/3] Add support for index files in SSTATE_MIRRORS
To: yocto@lists.yoctoproject.org, denisova.olga.k@yandex.ru
Cc: gavrilov.andrew1999@yandex.ru, tinyakovx@gmail.com, 
	sider123456789101112131415@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Apr 2025 10:28:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65233

On Tue, 22 Apr 2025 at 18:58, =D0=9E=D0=BB=D1=8C=D0=B3=D0=B0 =D0=94=D0=B5=
=D0=BD=D0=B8=D1=81=D0=BE=D0=B2=D0=B0 via
lists.yoctoproject.org
<denisova.olga.k=3Dyandex.ru@lists.yoctoproject.org> wrote:
> When building an image, the system uses a cache to avoid re-running tasks=
. When the ` sstate-cache ` directory is empty or the required cache file i=
s missing, the system searches for files on cache mirrors defined in ` SSTA=
TE_MIRRORS `. However, the system's lack of information about the distribut=
ion of cache files among cache mirrors results in requests for files being =
sent to all specified cache mirrors. This increases the number of requests,=
 especially if the number of mirrors is large. The patchset addresses this =
issue by pre-fetching index files from each cache mirror before checking fo=
r the presence of cache files. The index file contains data about the conte=
nts of the cache mirror, allowing the system to send requests directly to t=
he relevant cache mirrors, reducing the overall number of requests and maki=
ng them independent of the number of cache mirrors specified in the configu=
ration.

Thanks for your contribution, but before we look at the code, I think
the problem needs to be better explained. Note that no one else has
reported the issue until now, so it would be good to understand your
environment and set up. How is the existing code causing problems for
you? Do you have measurements to show it? Where is the bottleneck
exactly? 'Large number of requests' is not problematic per se if both
the protocol and server-side handling of it are efficient.

Alex

