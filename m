Return-Path: <scott.murray@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 775C6C88CB4
	for <webhook@archiver.kernel.org>; Mon, 12 Jun 2023 13:57:53 +0000 (UTC)
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com [209.85.166.182])
 by mx.groups.io with SMTP id smtpd.web11.59524.1686578268844645850
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Jun 2023 06:57:49 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@konsulko.com header.s=google header.b=kHw74Qdk;
 spf=pass (domain: konsulko.com, ip: 209.85.166.182, mailfrom: scott.murray@konsulko.com)
Received: by mail-il1-f182.google.com with SMTP id e9e14a558f8ab-33e5054ba6fso28868945ab.0
        for <yocto@lists.yoctoproject.org>; Mon, 12 Jun 2023 06:57:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1686578268; x=1689170268;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=CzFigyzq1ES/JgU17ZtViij9Vn1p7u1C7q8I1lzUkP4=;
        b=kHw74Qdko7Q6eqIyVKicne2erEE4yE1EsbFmt2qWN/knLAMr3PxDqD7/8MFvPHgsku
         qNeXrXJ/FyMtNsDS2pYrfeehid/+qC/sO8gu8MgGO34YQne3apwBw6BnbGtbdS1JHYqC
         pfkw68+82Dksqx1qpT9eE0dQSScg2Per4oV8s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686578268; x=1689170268;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CzFigyzq1ES/JgU17ZtViij9Vn1p7u1C7q8I1lzUkP4=;
        b=Zvd+Ta8rUk3LCCDskwVFH8etHHbKYxExab7bb7TxLhw/pG2pndDlRx6rfriphRnaAy
         o1AD/lDDr86kZ9pE14hyo8pbDKAfX/RKuDTM1aGpq/vIyj8uhM1QyPP/yxAOI5BvJa01
         GyKU6SrjKcjk6UNz+HlSsZBuVEHIMtY+tz6HJMGrKQFYlaiWAe9rWnYuylz4/PnYvYXb
         4jFpKnRUDXLh480blRQ3T/DL8M5pdhws9htnJNZjFZZ5RvlrQzuSw+ZYGsCsmPwERe7m
         rXMgAxo9XlaPSVrcbWK8Kws2bA04egBps8zS+kt9HbgG5j+Y5WxJ2V6DxtV0zRABhwit
         QnPA==
X-Gm-Message-State: AC+VfDybrcX2yYh64pF0NhC8kUuMTqLKdzmMEdfk2/OvBZDEvQEUWed/
	UHEDyJmXemrfw4UoIRmiLONJ8w==
X-Google-Smtp-Source: ACHHUZ6yg0VoFTqQ8Z+PtgIBOjS3ZTOcQ0y38plw3I9tXltPpkzQ7LnuKIoHGCFNN9ZMIhE7a0DR7g==
X-Received: by 2002:a05:6e02:152:b0:331:53ee:921d with SMTP id j18-20020a056e02015200b0033153ee921dmr8142433ilr.25.1686578267930;
        Mon, 12 Jun 2023 06:57:47 -0700 (PDT)
Received: from godzilla (192-0-174-82.cpe.teksavvy.com. [192.0.174.82])
        by smtp.gmail.com with ESMTPSA id o14-20020a92d38e000000b00331a5fcd648sm3220493ilo.68.2023.06.12.06.57.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 06:57:47 -0700 (PDT)
Date: Mon, 12 Jun 2023 09:57:28 -0400 (EDT)
From: Scott Murray <scott.murray@konsulko.com>
To: Jose Quaresma <quaresma.jose@gmail.com>
cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Kirkstone Rust 1.68 mixin layer
In-Reply-To: <CANPvuR=SX=Oay9620mFtYqOcqAMD9f6RfKhoGSvWrH679qF0FQ@mail.gmail.com>
Message-ID: <8b5b5c57-4661-8fa5-ab78-020c2677772e@konsulko.com>
References: <45cbf446-e76c-1533-507d-cc48f6696de@spiteful.org> <CANPvuR=SX=Oay9620mFtYqOcqAMD9f6RfKhoGSvWrH679qF0FQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 Jun 2023 13:57:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60259

On Fri, 9 Jun 2023, Jose Quaresma wrote:

> Hi Scott,
>
> Can this branch be renamed to just rust?
>
> -kirkstone/rust-1.68
> +kirkstone/rust
>
> rust is now on 1.70 in core and it would be useful in my opinion to
> backport what is in the master and not just the 1.68
> https://git.yoctoproject.org/poky/commit/?id=5035a8588bb27e029661a500215dd4e83f023ac6

No.  As I say in the README in the branch:

- The intent is to just track any further 1.68.x upgrades that occur in
  the mickledore branch of oe-core.  Supporting newer versions of Rust
  or trying to support more than one version of Rust should use a
  different mixin layer.

I see two paths to do what you ask, both of which IMO have issues wrt
my usecase of a hopefully stable mixin layer to use on top of kirkstone:

1. Keep sticking the latest Rust from master into a mixin branch in
   meta-lts-mixins.  This likely will make some folks happy, but my
   issue with doing that in the branch I want to use against kirkstone is
   that while chances are slim that the Rust team go back and do a 1.68.x
   point release, I know 1.68.x works with the combination of kirkstone
   and the target software in Automotive Grade Linx (AGL), and just
   bumping the mixin layer to latest Rust as it comes into master would
   complicate later trying to pick up any fixes for 1.68.x from
   mickledore if they do happen.  I may potentially need to worry about a
   version bump when mickledore goes out of maintenance, but at the
   moment my plan is to stick with 1.68.x until we upgrade AGL to Yocto
   Project 4.4 next spring.  If you want to take the
   kirkstone/rust-1.68.x mixin as the starting point of a plain "rust"
   mixin layer that you will maintain against master's Rust version,
   please go ahead.

2. Supporting more than one version in a mixin layer.  Since the rust
   .inc files are not versioned, this will require some (hopefully minor)
   manual tinkering.  The first drawback is that cherry-picks of updates
   afterwards will then all need to be done in a more manual fashion.
   The second drawback is that since oe-core only carries a single
   version of Rust, extra testing against the two or more versions
   present will need to be done to make they sure they all work, and to
   be certain of compatibility, this likely will take adding the multiple
   versions of cargo, rigging up CARGO_VERSION, etc., and also testing
   that.  I have no desire to expend the effort required for that, and if
   I were to need a newer version of Rust for AGL, I would probably once
   again just submit a mixin with a single version.  It seemed to be the
   consensus on the YP technical calls that this was a reasonable
   approach.

Best regards,

Scott

