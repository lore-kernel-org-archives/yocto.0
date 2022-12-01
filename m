Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45235C47088
	for <webhook@archiver.kernel.org>; Thu,  1 Dec 2022 10:14:41 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
 by mx.groups.io with SMTP id smtpd.web11.39450.1669889671221126781
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Dec 2022 02:14:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=qxFZl6Cf;
 spf=pass (domain: gmail.com, ip: 209.85.208.178, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f178.google.com with SMTP id z24so1333053ljn.4
        for <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 02:14:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gZKVPcupToAP2wxr3m622Tkm3mPV+LsHSESNFUvITjk=;
        b=qxFZl6Cf21C7JfCgpKgl7Fta2Rh7YNPmN+9AuDHu/ooOdvD7r/px0LOc8AdUfhZ6LH
         JMAqcSEBQZ8BcsbIu918QbG9LgZ1ZXDg9SCLCcNAFdsE9o40vzjW3HsnaNDSiXlJxWKI
         ViaGuGZ/yz224qlEWaxsmKAo5OEdaTeYu0nFkv1IiW461tQB1wIDkX/cRs9k0pEVqjNX
         FidhwtqkAEWQ9pmeB9LsZay7UV0pFmNActg6v0rJ6MTKCOzkkkM8uDAoRbiFqTqF3dOU
         nOjkSWNCMENgmhegsKYxWJzBqRDuQmy+xd1nKfU1ZeLvZl7YeG84qtYbu4UmIsxSSvH3
         oPZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gZKVPcupToAP2wxr3m622Tkm3mPV+LsHSESNFUvITjk=;
        b=dc8EoIR3+rhHqCbllW9BQ1pNPSpunz1X9CIpAx46p314FEU92uDnhcu/beI0seNgrx
         A6lRRViu3dXhrJw3vPwO5DIzvFgNrpXZifBgqPQXJkNX5KoP5RLAO0W8iPGsEGS6n3y5
         wMUhQEpYgL8nv+e0NEIiF2KPl/NLLdM8V3i5l3gjh81oXRJ4BK9ZNTWLpQFZ3j1sjcDz
         J5I2i3fZMCAQOEKV0nq7I1WiMuYs5dD5pJQk6md5yuaciBac5rPvh0K1uhBd8ZwPfh2h
         w/i7h7LLLFHdKRqOMjEYvzPl+1XOTcC4XepyFUaecVWIIyPLZNBZHNMHnqhBu+onIJtk
         Kzwg==
X-Gm-Message-State: ANoB5pky2kHC9iNUJaTcU4Ah8XJS5IVmrWv0UKRJEG0eNdNBq2F3NHci
	K/07SUwSAOtQ45ogBjbJmIe9XGNof81smTSESgk=
X-Google-Smtp-Source: AA0mqf4MnkGHtnd5VA8DCKYJSomQN+ZfXJyIXit4+jW7mLNC5TrBzrf0D3y6iktkduxkG5XBve7/mFZ3qw5wYT1FaBw=
X-Received: by 2002:a2e:94cb:0:b0:279:8865:38e1 with SMTP id
 r11-20020a2e94cb000000b00279886538e1mr11300657ljh.217.1669889669236; Thu, 01
 Dec 2022 02:14:29 -0800 (PST)
MIME-Version: 1.0
References: <dF0b.1669820159069031281.m3lb@lists.yoctoproject.org>
 <d30a843420db43b18c2def6557dc454b3ac25a20.camel@linuxfoundation.org> <CA+chaQeadc9REq+p+qdn5ZKz5LO9H7iDe7nWDUGRW6zEzG0R-g@mail.gmail.com>
In-Reply-To: <CA+chaQeadc9REq+p+qdn5ZKz5LO9H7iDe7nWDUGRW6zEzG0R-g@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 1 Dec 2022 11:14:17 +0100
Message-ID: <CANNYZj-sWD4P1vPxtHUO1+S4bFObhWXXTw--550dRzZjtfarqQ@mail.gmail.com>
Subject: Re: [yocto] Add user to group that's created in other recipe
To: Martin Jansa <Martin.Jansa@gmail.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, sven@svenschwermer.de, 
	yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 10:14:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58695

On Thu, 1 Dec 2022 at 08:51, Martin Jansa <Martin.Jansa@gmail.com> wrote:
>
>> I think there are some open bugs for useradd issues like this. It is
>> supposed to work but sounds like there are races. If there isn't a bug
>> open for it, there probably should be.
>
>
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13904 is one of the bugs I think.

This is another:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=13419

Workarounds are not difficult, but the issue occurring for the first
time must be very disorienting.

Alex

