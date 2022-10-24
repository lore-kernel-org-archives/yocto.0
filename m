Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1CDCFA373E
	for <webhook@archiver.kernel.org>; Mon, 24 Oct 2022 12:27:27 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web09.18477.1666614441806655889
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Oct 2022 05:27:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=LFHMCifM;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id g12so5918867lfh.3
        for <yocto@lists.yoctoproject.org>; Mon, 24 Oct 2022 05:27:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DiNueDjlCc11Hly3BQsOhjxK8bRiIEwbMr6PZ6mXZg4=;
        b=LFHMCifM2FvQ7GDrNGP+nQEDF3Y2bL0VN+r4m7vNjEg3OhkokFLH/lv/oHvzqqSxcm
         7DQfZsMPZ1cUDONdB7S7xxAE2defg7pBwy+6HTNpNlPR9F/OuYD3V6bdyjpNgeFUxGCA
         S9YSiyx5SBlTNJdsheoJz+NHEwoQd/JGfWKaIRWMeAOWDPEMzUtYkP8ccdej3GxYbzFD
         kNCH9fimx2jeI1iu2aN7wPDjRb9luvV5sSaTUgsGpcANL3Sv0uIC2Sbj1BmKgJ+WkW7V
         BRJLQs1st6hYYuZqNelTorHnGUhK14YXZKzVnuNAcpc0e7CpJvPAWjzWOsTg2EC7QizR
         5avQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DiNueDjlCc11Hly3BQsOhjxK8bRiIEwbMr6PZ6mXZg4=;
        b=kAofz1O8vZbbZC3VBNSqRsnnopw9nsD4lLZIqqOBxcf+wK4Q4Xxywvdhb6yXF0QsRq
         dSUtihe0Gw+/J0i8+shi7ZKxqKzLPBN3CdQkLl2s30yeqlx9Vu6GBdHHh2y3YsM9U4M2
         BSqcA/rxEp0yytDQ2mUHKI4+uaFtn8jPz4oqwCoG2gUOY9j9JdEoJvNhWt3TgSt+7Aen
         zTDfirsjXJRx8hhBN3uo/0zLrb/k0zeJ6rQUufHSo44NoTatPZ88mPiKQuoBM916kq1g
         D6Qb80Ehn4YtKbI8j1TFSgqSxVq7s6TCXAU+TjcInx72JdYmB27YgWQkKtyZE/VcjSJR
         H9VQ==
X-Gm-Message-State: ACrzQf1+bXGhsZd71BHsMfMnfwW4My1nC5SBE2j0DsEnqVVWHMTyX/Rj
	JWrd9bwGPtYWifP0153ZPAX2lc8ESIw/mS15Znk=
X-Google-Smtp-Source: AMsMyM5EchvHID+Q4UDle4cbEOa8d8xoCkN9R/pU/Y1LzvouRLuyy/c0TYZrphunmqbQrSPoL44EvtLW9YuW8B//wgQ=
X-Received: by 2002:a05:6512:4016:b0:4a4:6edb:8d6e with SMTP id
 br22-20020a056512401600b004a46edb8d6emr12543409lfb.393.1666614439965; Mon, 24
 Oct 2022 05:27:19 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj9ar+z=m-G-76bi0icLac1wLfHw++9zpWaMC=3n1uz=Ag@mail.gmail.com>
 <850.1666612693829888716@lists.yoctoproject.org>
In-Reply-To: <850.1666612693829888716@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 24 Oct 2022 14:27:08 +0200
Message-ID: <CANNYZj-43o28uUN3nSmspU5M2XbrwnX1VmeSLXJujjQupZANmA@mail.gmail.com>
Subject: Re: [yocto] other ways of removing GPLv3 components (than meta-gplv2) #gplv3
To: poberauer@yahoo.co.uk
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 24 Oct 2022 12:27:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58399

On Mon, 24 Oct 2022 at 13:58, Peter via lists.yoctoproject.org
<poberauer=yahoo.co.uk@lists.yoctoproject.org> wrote:
> However, the documentation recommends the global ban and does not mention the per-image variant?
> https://docs.yoctoproject.org/ref-manual/images.html
> https://docs.yoctoproject.org/ref-manual/variables.html#term-INCOMPATIBLE_LICENSE

Yes, someone should go over the documentation and change every mention
of this to recommend per-image variant, as a global one is basically
impossible to use without pulling in meta-gpl2. Patches welcome :)

> Out of curiosity, why does the per image variant work, but not the global ban?

Global ban works at the task dependency creation stage, and if bash
needs to be built, it will throw an error, even if the actual bash
binary will not end up in the image, and is only used as a runtime
dependency for a package that won't be installed.
Per-image ban performs a 'late' check when the image is actually put together.

You should now know everything to fix the docs ;-)

> And how should one know to use the pn- prefix? i.e.
> this: INCOMPATIBLE_LICENSE:pn-core-image-minimal
> not this: INCOMPATIBLE_LICENSE:core-image-minimal?

pn- means 'applies only to this recipe'. The package vs recipe
terminology is confusing here for historical reasons.

Alex

