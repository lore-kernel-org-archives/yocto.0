Return-Path: <scott.murray@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B821C36013
	for <webhook@archiver.kernel.org>; Sun, 30 Mar 2025 18:19:15 +0000 (UTC)
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com [209.85.166.174])
 by mx.groups.io with SMTP id smtpd.web10.35216.1743358748054015346
 for <yocto@lists.yoctoproject.org>;
 Sun, 30 Mar 2025 11:19:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=eMtxq5d9;
 spf=pass (domain: konsulko.com, ip: 209.85.166.174, mailfrom: scott.murray@konsulko.com)
Received: by mail-il1-f174.google.com with SMTP id e9e14a558f8ab-3d46fddf43aso32450195ab.3
        for <yocto@lists.yoctoproject.org>; Sun, 30 Mar 2025 11:19:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1743358747; x=1743963547; darn=lists.yoctoproject.org;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YnlCYkzW3AmOiCTmrlexJq16+L9vISJgusa7FkoxVMg=;
        b=eMtxq5d9seFChUaVI+Es9BEqgvzHJ/jOvoctcKztdkBjV9zKRmCWGPxS7KF08YnEYE
         cTdyl9G2ZrsI+0bZ8kkoia9+Q/twcQiKdR5L5GVsOpnt+gnfJsNDd6H+qgx06SU3/8BE
         h5EPVUHmX4nFdrvFl5C/9uJADowHsfFAz7rYI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743358747; x=1743963547;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YnlCYkzW3AmOiCTmrlexJq16+L9vISJgusa7FkoxVMg=;
        b=t4GDDtY41l7ctAxdg0ghnUisIClzFdxPjjxdnqpuU7nv8DO/DPRUhZfLcPEJXbaBBD
         rzB3n8pwxOekcPk4vNgT6Zk0WI+c5id2nSD4zSthtx6L8nnIs6h5AYJ7klCM9UsjDs8r
         WvJjSR5uJ8WUOxHwuD9TVb19wsReJXT4XoovEf58RxglgLkCR1PCBxuNXoDNgunG64hr
         IdeSI24nW3TGrkwHQx6Zr1F4qcew//Vye72tlKfWI1SrW2avnl07olmbDttlFZYH2BKw
         nCsGngPtVk7gDadNtJiyzRYAM59VByRH3MNkTsFcoeewAlHUD01hh0nt1X2IoykKPkQi
         YvOQ==
X-Gm-Message-State: AOJu0YwqcskDkObNyz6d5lakn5Xh2tA/9FsY/sDFQe0SL491Hdlo541H
	0hQqImF+yNWHLi4FaBKKoj8BG6aPrVGX/Bo+dQW91l7NxUogbI4873fWhZi69kB/unohWGpJmP3
	y
X-Gm-Gg: ASbGncswwODbFhS5hxBNMK1JSemnylhKpn5XnB2/H8x/f6gJcNuN8UGCidQu1uQI5NT
	dbBR+drshF0V/Q8/gB+zILBuoEsDjsyvBwMNyXKAhUDeueydIF4pXJww1mcu5TSlfrgQo6pMOqJ
	QoB5SStnT7WIxaRtgW/Bh0KoeV1WlDoYiiTlClQ/+RRcl1+JqsYKcbQzBxkPOHPqH/QsRT/6wzo
	7OD5CGyG8vvnOmiGcD6z++bXn18mpQiaqJyh5yq1cIHF04uOIE2e09EqhViuJzTL/DCMSRrKpZc
	Yy6VzNzJgGaEVMHxVgPeoSPI/LTBPkMm33jb84QksIXmLGZGnyHg6u9mNd6F75hSsfVMu3vGZbU
	0+UY=
X-Google-Smtp-Source: AGHT+IGJyJ+4i3R6RsjY6VKPM7n2zTSl+fZnu+kQERhW5qXCPTUS3wDxXp2okQhOaolAdSKO5mkW9w==
X-Received: by 2002:a05:6e02:1f0c:b0:3d4:2306:a875 with SMTP id e9e14a558f8ab-3d5e0908f71mr75839305ab.8.1743358746745;
        Sun, 30 Mar 2025 11:19:06 -0700 (PDT)
Received: from godzilla (107-179-213-3.cpe.teksavvy.com. [107.179.213.3])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3d5d5a631ddsm16090085ab.11.2025.03.30.11.19.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Mar 2025 11:19:05 -0700 (PDT)
Date: Sun, 30 Mar 2025 14:18:50 -0400 (EDT)
From: Scott Murray <scott.murray@konsulko.com>
To: yocto@lists.yoctoproject.org, sean@geanix.com
Subject: Re: [yocto] [meta-lts-mixins][scarthgap/rust] rust 1.85.x
In-Reply-To: <5wpwzkdc7cmkaj2xqsflisupelwim4eyrvub5yqyom4agcowfw@ym4fodrxb43t>
Message-ID: <100191b0-a12c-8cee-6de3-469874928aa6@konsulko.com>
References: <5wpwzkdc7cmkaj2xqsflisupelwim4eyrvub5yqyom4agcowfw@ym4fodrxb43t>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 30 Mar 2025 18:19:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65035

On Sat, 29 Mar 2025, Sean Nyekjaer via lists.yoctoproject.org wrote:

> Hi,
>
> I'm using scarthgap lts for a customer and they really want to get
> started with Rust 2024 edition which is included in rust 1.85.
> It looks like it's close to getting into oe-core.
>
> What is the procedure for getting this into meta-lts-mixins?
>
> Do I need to create a new branch called scarthgap/rust-1.85 ?

If there are folks that intend to stick with 2024 edition for a
significant period of time (i.e. years), there could be a benefit to
doing so at some point, assuming there end up being 1.85.x patch
releases that oe-core might end up skipping (since it will quickly
move on from 1.85 to track latest).

> Do we have to wait for a oe-core release to be able include it in
> meta-lts-mixins?
> scarthgap/rust is rust 1.81 which is newer than the one in styhead :)

The intent of the scarthgap/rust mixin is to backport what is in
oe-core master branch.  I am slightly behind atm due to work travel
and susbequent illness, but I should be updating the mixins this coming
week.  I don't really have the time at present and probably not the
patience to attempt to track upstream Rust releases in such a layer
myself. If you desire 1.85 faster, I suggest discussing how you can
help out with the Wind River folks who have been doing the Rust
upgrades in oe-core.

Cheers,

Scott


