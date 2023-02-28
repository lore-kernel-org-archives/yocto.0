Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 141FDC64EC7
	for <webhook@archiver.kernel.org>; Tue, 28 Feb 2023 07:09:27 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web10.17819.1677568157502421362
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Feb 2023 23:09:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=nlXK6DuG;
 spf=pass (domain: gmail.com, ip: 209.85.167.50, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f50.google.com with SMTP id g17so11873144lfv.4
        for <yocto@lists.yoctoproject.org>; Mon, 27 Feb 2023 23:09:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677568155;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=F5CGvZb3VjfS2LfI7goxFGBpK5rGsptXyeYPyRndDQY=;
        b=nlXK6DuGfY6ISl4Xf7ytS0bCQL6xno3RPsCdMTfOqVg0H+B1yG/JyH3pk9tor8JGCF
         AQt9E7TBhtqUuT3+R6Nzugsy1EV1bUmlbn2ecOWVtcgSAPo92vebsjwRxDFzQgUVmylS
         oHdwe/WKYPbG2E7OQ1z3YVjDeboJf+UT9ZjLwtakMhEvdZxkJos1296zPSjc9X6PAUE+
         yw962OspTtJHks6PWeJzc4nfhjErr81nkI5fMUwveh3i+eY+bj6lbTFXUDvF0yXNEhqT
         +7D94/Bo5LngQDNqLxA16cR3GBkNvQe6/dZ6ZqtYsfl6MFh2VcnUXrKDHt1ziqzMvhqd
         7+Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677568155;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F5CGvZb3VjfS2LfI7goxFGBpK5rGsptXyeYPyRndDQY=;
        b=qbImzixwxDh1pkhe5jsmgx9pVATfry3PCea4BFlluOkKQ+ouDpz+Yt861+RRUYJKJN
         /hKm3CxO975WTJDBzSkg44VMBdQHv93psmjDIwig9svgNOScW+7s5djPxSalHv3SkjOw
         aRQ2IzxHtFDBL3V5hQMsrs67huROpu+wjTzH6IP9e//tIv2fQR9oYIdgMJmhx4iv2TJ1
         BryM2SXk33niJICaT4rCxhK3pTXGB14TApMHo/agNz1H6Tff9M6Z6XNRWJAI/sSqplsT
         VLejHiwpx1/HFv9PThbH47sBDzECjIHZwj/v7D1bKmZtxGRbnV6UB9EyD9wC1ZbOjsc0
         OeUg==
X-Gm-Message-State: AO0yUKVTOAsFjFZd/hwC5utAQI9MqW5UB5sO/v+QtRD9L8Fi+6m4OXcW
	w9w9/yimB9Psfg13+UfST/6wNVnr09cMPACQvvg=
X-Google-Smtp-Source: AK7set/G3pQ2/36NK6j461f9xhgaAH1m45UeOXmi9nEIr/fzMhxi6Luo3VZy8L9T8sVbp3QL9BmnRf7L+ktNWQl231c=
X-Received: by 2002:ac2:4437:0:b0:4e1:d025:789e with SMTP id
 w23-20020ac24437000000b004e1d025789emr392146lfl.13.1677568155532; Mon, 27 Feb
 2023 23:09:15 -0800 (PST)
MIME-Version: 1.0
References: <CA+6q8-4q50f8bZPUAA4+xsyfX2_uxbkX4F72meB5Gry-ztMNgQ@mail.gmail.com>
In-Reply-To: <CA+6q8-4q50f8bZPUAA4+xsyfX2_uxbkX4F72meB5Gry-ztMNgQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 28 Feb 2023 08:09:04 +0100
Message-ID: <CANNYZj_A6XHZVKJtrXQh7Rizs-sj+4NxTSQD+pAcJPgwGpbZDg@mail.gmail.com>
Subject: Re: [yocto] How to Run the Unit Test cases on Ubuntu
To: Chetan <chetan.byalihal@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Feb 2023 07:09:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59319

You need to build the code outside of yocto using the toolchain
provided by ubuntu.

If built with yocto, your options are to run the tests under qemu
usermode, or in full qemu system emulation.

Alex

On Tue, 28 Feb 2023 at 03:25, Chetan <chetan.byalihal@gmail.com> wrote:
>
> Hi All
>
> I need to generate the Unit Test cases for the code written for the Yocto Recipes. How can I run the same in the Ubuntu machine? As cross compiled binaries will not get executed at the Ubuntu.
>
> Thanks
> Chetan
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59314): https://lists.yoctoproject.org/g/yocto/message/59314
> Mute This Topic: https://lists.yoctoproject.org/mt/97282552/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

