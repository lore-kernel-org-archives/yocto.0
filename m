Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D752EC41513
	for <webhook@archiver.kernel.org>; Fri, 10 May 2024 17:58:54 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web10.20643.1715363931116469561
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 May 2024 10:58:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=fd2pjf38;
 spf=pass (domain: gmail.com, ip: 209.85.208.169, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2e0a0cc5e83so37683291fa.1
        for <yocto@lists.yoctoproject.org>; Fri, 10 May 2024 10:58:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715363929; x=1715968729; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OeMbVPruBmJFVfleHM27o7UuzSBjAnwpIRsnCWVrAtk=;
        b=fd2pjf38VeGU1453BmZPaxu2kEgJ1JjIk8vonplUo72lJXiKr4R91Z5XlM9NjiPwk/
         MPl0ZCwPz9s/xfdDHixT/4DyBhMt/s6+d2hiM1/rtDTsl9OWEMchk9Hl06czlT2iZsnM
         pllgJ8GzV+L1LJR0WrWsR/2Cs6445k3HnUn6vvrCh75pKypaxnV8kDsMejKpK1R4lHi2
         iScrQ55VATFi4syP2+vNT88ynhGY22BBS1+PbPM4aMH/G+ji9GawyMRrHzhVYNStaASp
         gSlEtE1uQLL9rML20HwXbgjnxDFDPaEYx0VO9S8usD4L9KkrewZaVMtPh2N7HLEr623B
         7kZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715363929; x=1715968729;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OeMbVPruBmJFVfleHM27o7UuzSBjAnwpIRsnCWVrAtk=;
        b=RWrj0/5VhnGrj8gUAgiiCk9tg0sTXUeQ9oIZXM1TwFqSHDxgRtbeh0ZzALMu3KckMF
         3K0h7pvkFh4kq007ovQUivFNrbA9Y0qq4Q24yt4OkL0Q4N3rcbDCiu82+rYqzpTqZVoY
         NQguwilztjN2fztFF3e0GKbYM1JsJZnxpArORwXniLJX3przUXZaFJg2IlYem1A0vlqE
         BpSDhqrDDCqBshGkg1jis5MCmKQj2ST3GA73BOSmdFm4eijI6KpPhwRJv1JIiFbaUiMt
         1wRGpWk5vUid0G0MCny7kjQNEm0UPcYBvf9aUlBfGxw3u7tYdJIzybebuhTWQd5FnZRn
         4y5Q==
X-Gm-Message-State: AOJu0YzomB30lwDWtGdrcp4pmAjCOp7aVFnbjRYBUJmznbsbklFjxPys
	9AcjFP975SU41A4sM1Syxcn5DlnhkCaEKy2DrkhlmPPgrVmgkxkbOM9Aflgca+3oyvM/OngRjy6
	i0NTiZByCmBomaUGA68qhRMDROuzA5Rb/
X-Google-Smtp-Source: AGHT+IE6FYCTGRlREsOFpWpAAiewepqPRPhLlY1mND54S8cfF15oPOlYxWbkv9+EzTVy9TeR0lvyPZUAPbGBtygHk6Q=
X-Received: by 2002:a2e:9051:0:b0:2e1:ebec:1ded with SMTP id
 38308e7fff4ca-2e5200627a2mr19630551fa.25.1715363928830; Fri, 10 May 2024
 10:58:48 -0700 (PDT)
MIME-Version: 1.0
References: <737087f797ecd87620bc96abab014d4fac6bb1e5.camel@linuxfoundation.org>
In-Reply-To: <737087f797ecd87620bc96abab014d4fac6bb1e5.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 10 May 2024 19:58:36 +0200
Message-ID: <CANNYZj-i90gLUfdk51Now0HY+=RCNkg8ugr2qcK65xXS+AypZg@mail.gmail.com>
Subject: Re: [yocto] Where are we at?
To: yocto@lists.yoctoproject.org, richard.purdie@linuxfoundation.org
Cc: openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	openembedded-core <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 May 2024 17:58:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63073

On Thu, 9 May 2024 at 11:37, Richard Purdie via lists.yoctoproject.org
<richard.purdie=linuxfoundation.org@lists.yoctoproject.org> wrote:
> A rust reproducibility issue lurking somewhere:
> https://autobuilder.yoctoproject.org/typhoon/#/builders/97/builds/8318
> https://autobuilder.yoctoproject.org/typhoon/#/builders/76/builds/8906/steps/17/logs/stdio
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=15185
> [both master and scarthgap]

I have reproduced this. The filenames differ depending on whether the
build host is arm or x86. If packagedata sstate comes from arm and
package sstate from x86, the reported error will occur.

I'm going to look into how the hash part is formed and how the build
host architecture leaks into it (on monday).

Alex

