Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web10.69372.1584369645962226642
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Mar 2020 07:40:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=gmqOr+D6;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f54.google.com with SMTP id t2so11492162wrx.12
        for <yocto@lists.yoctoproject.org>; Mon, 16 Mar 2020 07:40:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=HwiIbWb2wEUq5cvLWAT5AhFl/vbFI+53kKywkAIlMyw=;
        b=gmqOr+D6uwIo5uDm8Q2YB8cRJ0r7U76DMva+Wcu9Q1JjoiimzDpBdsu3iUdEw3JCkY
         aNzrwu5SqWXP/F0qZqKApO14e0k+ODnpx2dc9lVrpVSoGU/TlXxrFjIL4xTlTzeVEBVq
         LLQq8btbqcTE9Fpk42G+/Nvm7Xl9P2dUEPRQM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=HwiIbWb2wEUq5cvLWAT5AhFl/vbFI+53kKywkAIlMyw=;
        b=bqG3t71wh2PR6nLpSC5LSxOkZb2ahzmDkAF0RwlGnWHa9XSwmRLBC4ksdXPMnETGc1
         FPT2W40Ta5VBhpZxZL0V5ebeGBgdN9Csx0Lgy+9hmb4yhFi8/LiyGtkx2zp2DjdwGZ+K
         94/AFIuS2F8NKXV+kZjWTGLvW6fASrQopWlqB424u8ENm2RRXefN7A2eLdPLTXu2zLTc
         zJKd1dnfkWTgA1AbZ5Zo6eiO6YkiclHkocUCicboy7frfvgHrQIZEa6ozJvHzFyiosq6
         JBWd8p5kXhkbdMqC3REq9SiyJCxpYVxdBi9ZXUA0oQAZZMqVkyaecbN1eh+s0sdLUM7a
         HFBg==
X-Gm-Message-State: ANhLgQ2Z0LToKghhUIU1o0uILlN/rCk0ZTh6dJWHWxmQ8VlhMEJOv/Iw
	bAJhg+k/69/dljkrHQC5EvshaQ==
X-Google-Smtp-Source: ADFU+vuqxh8zivMgxDHe2VXTTWJ357z+edjBQIIgcdUgcow2QYVyAhbuC+HIxeyhxjXbgeqyOnMnHw==
X-Received: by 2002:a5d:6544:: with SMTP id z4mr35933000wrv.298.1584369644487;
        Mon, 16 Mar 2020 07:40:44 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id w1sm28526067wmc.11.2020.03.16.07.40.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2020 07:40:43 -0700 (PDT)
Message-ID: <46d77c70eb15e831f137766761c083362aa37d9e.camel@linuxfoundation.org>
Subject: Re: [yocto] git fetcher: does not execute git fetch --tags or similar when HEAD has not changed
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: matthias.schoepfer@googlemail.com, Yocto-mailing-list
	 <yocto@yoctoproject.org>
Cc: yocto@lists.yoctoproject.org
Date: Mon, 16 Mar 2020 14:40:42 +0000
In-Reply-To: <cb73c40e-6eed-d626-513d-c1012a0f9f32@googlemail.com>
References: <cb73c40e-6eed-d626-513d-c1012a0f9f32@googlemail.com>
User-Agent: Evolution 3.35.91-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2020-03-12 at 14:55 +0100, Matthias Schoepfer via Lists.Yoctoproject.Org wrote:
> We have noticed the following issue: We keep the versions of out 
> software by means of tags on the git repositories, i.e. during the 
> build, somethings like git describe --tags gets called. In yocto,
> our 
> recipe of SomeLibrary might look then similar to this:
> 
> SRC_URI =
> "git://our.private.gitserver.org/git/SomeLibrary.git;tags=v${PV}"
> 
> When we build the image, and *then* apply a tag to HEAD, that was 
> already built before, it seems like the tags are not fetched (my
> guess 
> is git fetcher sees that origins HEAD and local HEAD have the same
> hash 
> and is fine with it).
> 
> The error is, that while the correct version is built, it will
> report 
> itself with a wrong version.
> 
> Is this a bug?

Each of the fetcher backends makes some assumptions about what it
considers to be "the same".

For tarballs from whatever source this is easy and we use the hash of
the tarball.

For git, we work off the hash from git itself. If the hash changes, the
source is taken to be different. Hashes of the same data are taken to
be the same.

What we don't do is account for any tag that represents that hash. If
you have some extra part of the build process which is using that as a
factor for the build you would also have to account for it in the task
hashes. Nothing does that by default.

git tags are a pain as they require network access to evaluate and they
break the mirroring structure as you can't know a given tag was fetched
into the mirror.

So no, I'd not define it as a bug, the bug is you're relying on the tag
data but not adding it to the task hashes.

You'd somehow need to inject the "git tag for revision X" output into
the do_fetch task dependencies.

For autorev this happens via:

meta/classes/base.bbclass:        d.setVar("SRCPV", "${@bb.fetch2.get_srcrev(d)}"

so you'd need a new version of get_srcrev() and need to inject that
into the vardeps of the fetch task.

Cheers,

Richard



