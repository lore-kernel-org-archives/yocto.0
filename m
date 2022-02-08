Return-Path: <ross@burtonini.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B22B2C433EF
	for <webhook@archiver.kernel.org>; Tue,  8 Feb 2022 16:38:59 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
 [209.85.222.180])
 by mx.groups.io with SMTP id smtpd.web11.13582.1644338338781701827
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Feb 2022 08:38:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20210112.gappssmtp.com header.s=20210112
 header.b=uz/3bq3X;
 spf=pass (domain: burtonini.com, ip: 209.85.222.180,
 mailfrom: ross@burtonini.com)
Received: by mail-qk1-f180.google.com with SMTP id c189so14127121qkg.11
        for <yocto@lists.yoctoproject.org>;
 Tue, 08 Feb 2022 08:38:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CgZqRSOMxE2jAze0IthPvoRlBwNSsOZJr3HoZuka+fE=;
        b=uz/3bq3X0Fk2FBs9vJB+ZFYNllE85J18EkZ19CoUYpW5Re9ERQmw7IhmRUiy1pVM1C
         EiTxAzS0tBPnh8nWxBKsT2GZixjsE5+Bzq+di9/FQ2sVJx2d5lHIUbUko1rlr88IGU2g
         KIZTueB7pEJtj7efFIAv9rrRT3TeifaBFAVpQlSUc+CdZYciJionGWEK6ah+AHhnzAeI
         1mZpVgBXhJW9N8UndMdNJ3Lc3PwWoCWeuqeiICDBQPGoFJKkME3xiXgBXfETIOQsX/BN
         zNduiJ3SwjK8w7aY2z7nA+f68OmR8BE2HZkt3upwpqWTjo2Mumz6OVOl7YEpE0gTeUju
         AGVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CgZqRSOMxE2jAze0IthPvoRlBwNSsOZJr3HoZuka+fE=;
        b=6LI30QtmlehoAiZBc/UG7BP3AWwulm+e0BqbelmefWlwDUgE5DBfBxV5CRwnvBM8r2
         W150+/t5nk/obADz2hhWLmmVTkvirRj4meOu0BILId6Qo147d4O58AaUMjA3imOxXkNM
         QQI9YXvHH8VOXS4Syl6Pnw4NABEmc7EEgnngO/mUFzJstPO78gWEigCV2kpV9FZF8J5c
         UAMaScOvBpvqBBAnCf6tYcfXwhguEz2R59O2lgbT2rGx0ikn/NZxZF9lMCYWqjms4O0R
         3ZEfm2qmt+kRc0iaQCSqIuv2vvpLUaiHoV2H37x1H7yXdnkh2m99RAAyPeYtecDVx2S/
         EJgw==
X-Gm-Message-State: AOAM533LbappxR159SJ03w44Art8Cf6pdb1ZgutJpLoQ27a9hDkjmzvB
	SHPLQCqfB4AQahfqRb28/dcgho5hXWxX8TLBOqWz2A==
X-Google-Smtp-Source: 
 ABdhPJyxf1DvjUwDDk/QbxkO7VkHfBh7YtViwTX/EINhw6ow/x4SqKSYClIfBfTc6Lk1Oo8iFr/s18GUFsjwQIHCa7E=
X-Received: by 2002:a05:620a:4494:: with SMTP id
 x20mr3044995qkp.46.1644338337711;
 Tue, 08 Feb 2022 08:38:57 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAJxFkmqx=oQzcjbMxjnJ5+e0PbAogLRejjFuuBsZ0RgnTkHrbA@mail.gmail.com>
In-Reply-To: 
 <CAJxFkmqx=oQzcjbMxjnJ5+e0PbAogLRejjFuuBsZ0RgnTkHrbA@mail.gmail.com>
From: Ross Burton <ross@burtonini.com>
Date: Tue, 8 Feb 2022 16:38:47 +0000
Message-ID: 
 <CAAnfSTs+waJybNn-=GRi=9SUV7qZDpusLBQn0pHk_4Pm1-O0Yw@mail.gmail.com>
Subject: Re: [yocto] Zeek recipe
To: Paul van Berlo <pvanberlo@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Feb 2022 16:38:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56106

On Tue, 8 Feb 2022 at 16:09, Paul van Berlo <pvanberlo@gmail.com> wrote:
> does anyone happen to have a working Zeek recipe? Whatever I do, I cannot get it to compile properly :(

https://layers.openembedded.org/layerindex/branch/master/recipes/?q=zeek
says most likely not.

Sharing your recipe and the errors would let others help you.

Ross

