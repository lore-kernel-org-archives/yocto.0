Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23AA7CD4F3F
	for <webhook@archiver.kernel.org>; Fri, 22 Sep 2023 09:17:49 +0000 (UTC)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
 by mx.groups.io with SMTP id smtpd.web11.17599.1695374261280965668
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Sep 2023 02:17:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=B9hkliXj;
 spf=pass (domain: gmail.com, ip: 209.85.208.172, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2c008d8fd07so31915121fa.1
        for <yocto@lists.yoctoproject.org>; Fri, 22 Sep 2023 02:17:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695374259; x=1695979059; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=q9V1jANl8LGgJwqHVOEygFFMI353a1lf+TbGADsMo3Y=;
        b=B9hkliXjGvlGLgJ6ahc7NOevuDFkKTC+s47BqyoF+047QcIKbz1xuZSy03RF7bYrQ6
         wiSq96qrlMqJNREZX9yyvqnxQN1/VgpHsl5uFFeP2puS8sCEa16kvVW4+LXC2CqnB+Mj
         seFnIvOzWPBqkFuyTriM4ze75gfPpbyJJsfXFLNzaviAUosj/fepxtDnYctjZxsUWaUA
         hl6xYHlF7x7DFE/+0M5n29ClA8QREP9HTsDAXJRgxjXS3IYJCQlwkJGpLLLHDLYrJy9k
         22bdREzVe2vbpjAqpePhqu3gF0kkfoZZdh6yCOZxiOm0Zgn/uHVQyFXjc+NjQ+jmSlUr
         ykng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695374259; x=1695979059;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q9V1jANl8LGgJwqHVOEygFFMI353a1lf+TbGADsMo3Y=;
        b=D/GcYwNO28VxHJpOhL3bsamGe3OV7hqVDea9eRCL/R5rMXBXWmtad0qHmIdPUsqrkA
         xbaQy8OzNtK52xV4Cs3jbAaJjRCgAFFPKcbF5FeAuzkYS8KTJmtBoBVQzv17xSJdluc5
         UlDc00iQzf7Sic91kmZIdltksmetMsUhvihj1FDwQk+QwmwyBawDUfUyr+9Fe8DIP8ux
         RrWUkUbNpiVh66B7FQVtlnbfL4Hlznb2KWXrQPcczW55xfRJF9c3wIO2UrOkz3KWc11S
         n0wxeAZ6NsfhwufeeN6Xq0/FBZFCR0afQrzuWQeykgWvWToYN2wI/dGHk6n+bhaDMBhG
         X0MQ==
X-Gm-Message-State: AOJu0Yw6SahSoD5PUORlWyUSH++C204vcNhVnsOEz2YFVwrTTV5UKtRk
	JtHMDeK8Qr4zqOJv7E1m8FHwm+gN/JFjarVLhho=
X-Google-Smtp-Source: AGHT+IEWGw/4ix88z4mLDtnxCd9rw7SpHrOpO9kg2GZABXf4xRx04gwAOTbmvYpLY+5hfq7oT2/uWQ8m3yqJaWtTHRc=
X-Received: by 2002:a2e:9b42:0:b0:2bf:fa62:5d0e with SMTP id
 o2-20020a2e9b42000000b002bffa625d0emr7593118ljj.2.1695374259114; Fri, 22 Sep
 2023 02:17:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAK5yBb9gO+WOJrv4TArzXK_1Bxu5AORp2oi=P-v=2nn6PgJE5Q@mail.gmail.com>
 <CANNYZj9QpstUj_A8Vb2RbiaFGZkHkFjHkUfF=E1HR-nDJ_Vk6w@mail.gmail.com>
 <81f4c191fe6dead1feec6bfc0d36aa328af1f7d4.camel@linuxfoundation.org>
 <CANNYZj_uSknujoQUK2yV7U4N+WW_RkUH=sJnFDBfZgV0G5fv7Q@mail.gmail.com>
 <5ef99df95ab74e74df6f1e07ef4877487230d9fe.camel@linuxfoundation.org>
 <CANNYZj8RAvj=sJtQuH9J_zKKAsUbhcdKe0hiA2JJy1wwxuzDNQ@mail.gmail.com> <DM8PR12MB54304C00CC6C924121E1CBDF8BF8A@DM8PR12MB5430.namprd12.prod.outlook.com>
In-Reply-To: <DM8PR12MB54304C00CC6C924121E1CBDF8BF8A@DM8PR12MB5430.namprd12.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 22 Sep 2023 11:17:27 +0200
Message-ID: <CANNYZj8eSZZOfPGYCdYPrWjHf74dmRW5uYAZfTBp7JemPXxQCg@mail.gmail.com>
Subject: Re: [Openembedded-architecture] Core workflow: sstate for all,
 bblock/bbunlock, tools for why is sstate not being reused?
To: "chris.laplante@agilent.com" <chris.laplante@agilent.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>, 
	Julien STEPHAN <jstephan@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Sep 2023 09:17:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61077

On Thu, 21 Sept 2023 at 16:39, chris.laplante@agilent.com
<chris.laplante@agilent.com> wrote:

> That is very impressive and I'd also love to hear about what heuristics it uses.

It's actually rather simple. It uses glob.glob on stamps in tmp/, then
on local sstate to find possible matches, then sorts them by mtime and
takes the most recent. It's what would work most of the time, but we
could add printdiff-all (print difference with all sstate matches) or
printdiff-N (N most recent). It also could abstain from dumping
locked-sigs.inc into cwd with both -S none and -S printdiff, unless
explicitly asked

I just discovered there's also scripts/bitbake-whatchanged (that
hasn't seen activity in years and is neither documented nor tested).
Unsurprisingly then, it doesn't work in the same scenario:

================
alex@Zen2:/srv/storage/alex/yocto/build-sstate$ bitbake-whatchanged
libsolv-native
Figuring out the STAMPS_DIR ...
Generating the new stamps ... (need several minutes)

=== Summary: (0 changed, 0 unchanged)
Newly added: 0
PV changed: 0
PR changed: 0
Dependencies changed: 0

Removing the newly generated stamps dir ...
================

Maybe this is what RP was referring to when he said the tools don't
work properly?


Alex

