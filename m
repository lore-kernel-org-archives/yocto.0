Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 721F2C433FE
	for <webhook@archiver.kernel.org>; Mon,  7 Nov 2022 08:32:40 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web11.1146.1667809949166761443
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Nov 2022 00:32:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=VGTJ0z1E;
 spf=pass (domain: gmail.com, ip: 209.85.167.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id be13so15739425lfb.4
        for <yocto@lists.yoctoproject.org>; Mon, 07 Nov 2022 00:32:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XGBb9HJTppkaurPEI7gUFewH/H4bLC/2svImDzFZ8l4=;
        b=VGTJ0z1E4ukzZ4IbkxoZJRXs4NXTqACpdxalqk9exbu/ncSgh/hPvX+Qx8YA9qDIj2
         SMUUjgC2r5JRXnKRyMT7v7jrAl073tyDOVrWIvoGOolwzm0qhFgCsiK5PG7Wvxx4NcLr
         Ih3kmafsOlZqrDYJHp+U7woUY65wB0cYGZXUGQMRoq2GkRPM20RPWC2BO8dI92AI6h1C
         Yg6WR3mGUElhUYlECTgpHqImXA+3wtazvPX+jdCyRMB4pl/TKusZClTnKWmz7p6UvsX+
         QmrTxbJwv8MzBatEklqidItzYdOLW+j1K3aAIM1xjWm5dt6C3N7T4tadpAbysnmro55d
         LbDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XGBb9HJTppkaurPEI7gUFewH/H4bLC/2svImDzFZ8l4=;
        b=nbQsWDb/UEqjdfD9Y2rKtUSQoHluJH8+cXbI6/M4OrMgKOLSjE12SR/rKxNeBctWCc
         LWMOeAsre5a/+fSGnGTO0ngPaYcWzjSRBWZUKw9MPnsjyCo1ygwKFnJFs0pePMKZBSls
         TpbSFdbfrp8k53PLzsTmWx7lnDz5N3K4ZhLyNximXLpSmjEEbV2PVzpVrD+NuQJj6OLT
         2cY987Hdv8dQcDrVkjicq8xCPi29nT5xmP9QxaCs7fPMQIYvEhlBaleVGzqXn5ctz/UK
         0YbJaZpdcIp1PaJnxfOywV7Y2tqCiNZ059k5c20aLhiroRiJ2UL6h03QMZpvAPRUFY6D
         NRVg==
X-Gm-Message-State: ACrzQf1UCQW+pQW9XYNnWi9Dhv5Ziqg8izKmDMDb/DYd/yLRO7oUEv8t
	I5KvE/gzyavHoDTbGz4vrz0OX0p4f8/F9U4mW+w=
X-Google-Smtp-Source: AMsMyM5LVMr4gWoC1JbgcJh6535giHtzKxibnjonIB6x1iosQYKCoiYg+0aYJhfaOeyHJokVZW3WO/4pzltSedQ7Qew=
X-Received: by 2002:ac2:4c8e:0:b0:4a2:7d0d:c7a5 with SMTP id
 d14-20020ac24c8e000000b004a27d0dc7a5mr17007215lfl.367.1667809947199; Mon, 07
 Nov 2022 00:32:27 -0800 (PST)
MIME-Version: 1.0
References: <49ac7ca4-2af5-43e9-d5f8-02bb98ac372a@mistywest.com>
 <68E37127-C80B-4A73-A4F1-AB3CA40A8A48@iki.fi> <7200a7e4-f302-170b-a0e9-f84867b77773@mistywest.com>
 <0C6FEB0D-931C-4EE1-BA24-3534DB9940EC@iki.fi> <cbe95fad-8ce9-3e72-2626-e1185505ede5@mistywest.com>
 <CANNYZj-PtwKFqs+DHCR-CTC86UiVU7p9D=mBNyjG+pes6zeK8g@mail.gmail.com> <1e2ca4a3-c266-90a4-9315-ecb5502e03f1@mistywest.com>
In-Reply-To: <1e2ca4a3-c266-90a4-9315-ecb5502e03f1@mistywest.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 7 Nov 2022 09:32:15 +0100
Message-ID: <CANNYZj_6O1rOE5rivvJ3JqzXNcf0G76Z6s+v4=5kYTbQKEMkug@mail.gmail.com>
Subject: Re: [yocto] undefined reference problem persists
To: Ron Eggler <ron.eggler@mistywest.com>
Cc: Anders Montonen <Anders.Montonen@iki.fi>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Nov 2022 08:32:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58510

On Mon, 7 Nov 2022 at 03:19, Ron Eggler <ron.eggler@mistywest.com> wrote:
> > On Sun, 6 Nov 2022 at 18:36, Mistyron <ron.eggler@mistywest.com> wrote:
> >> I'll attempt to "just drop" meta-gplv2, then. However I see that there=
 are other dependencies on readline too, i.e. it might be easier to just re=
place the existing 5.2 version in meta-gplv2 with 8.2 from here: https://gi=
t.yoctoproject.org/poky/plain/meta/recipes-core/readline/
> > No. You cannot 'just replace' it, as they are under different
> > licenses, and meta-gplv2 specifically collects versions under gpl
> > version 2 only.
> https://www.gnu.org/licenses/rms-why-gplv3.en.html specifies:
>
> "When we say that GPLv2 and GPLv3 are incompatible, it means there is no
> legal way to combine code under GPLv2 with code under GPLv3 in a single
> program." - What is a single program though? Readline would still be a
> single program within the bitbake build, would it not? I'm not
> "stealing" nor editing its code but compile it as is.

Combining gpl2 and gpl3 is not an issue here. The issue is that if you
ship gpl3 items to users as a part of some product, you have an
obligation to allow them to change those items and install the changes
on the product. This is why meta-gplv2 was created: it effectively
reverts everything that is nowadays gpl3 licensed to older versions
which are still under gpl2.

Single program is commonly interpreted as a runtime process with its
own virtual address space. E.g. all linked libraries, even 3rd party
ones, are a part of the single program.

Alex

