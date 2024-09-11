Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3571CEE4990
	for <webhook@archiver.kernel.org>; Wed, 11 Sep 2024 10:25:23 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web11.18678.1726050317145210084
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Sep 2024 03:25:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=lyvrzMV9;
 spf=pass (domain: gmail.com, ip: 209.85.167.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5356bb55224so7743161e87.0
        for <yocto@lists.yoctoproject.org>; Wed, 11 Sep 2024 03:25:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726050315; x=1726655115; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GrPgQReS97mgjD1zGR5f/LmZMk6tKyIFsh3xVrofKmA=;
        b=lyvrzMV9Sd8HcBm2wiZ5yuIAtcM4KfON/tOiO4cPK7B1roI1vjMfeP4f8Qknagp+7O
         eu2/lHvNZDuz5lpexhyPQBC/XKX0Dyw4sn0fTu2SufVYXCvSZlU88iKeEWUyr6MuDLOW
         1XSKB2O4FtXO05yzGSlrNv5KE/KSbfrntdVZX31yggVgnVnEoPf0aDKkttRSDuXSxdC0
         syY3sl+TmTMRINNYsCVB8aRstd6mMlbIK58GznlZpOM1q/vnEjBz4bKYYRU7ljyDAGZ3
         un1PPZu9/aSLrIFvllssggjwClx94OeK5Lxklc/KXvdL/cIcUoIVzVyZhHVkVB3tVaJa
         MX/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726050315; x=1726655115;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GrPgQReS97mgjD1zGR5f/LmZMk6tKyIFsh3xVrofKmA=;
        b=oBy1iWp+ZKi9ILJ5rQMJpAzn7iymqxAti/kWpu/CWTKRRiRrXo6EZp2zfqdYsjJXUw
         ZaOfPBoVdH5DN4Da9ksM7wEgByJzMCIod1jYXFLXOxNKrU8g/iBo2rAlfqHEUid6to1L
         m+muCgsdO/KiuQNvHBoYkkWuSgpTbV6NZBNJd9G+GZOt78yWFHCwJrrap+ETAT8FXTdj
         KSYojyvQecBqOpVuhRLSp66ZpmKpauozRR1W9NG+dGaxVS7eViV98fkrRx7sUPsSljCT
         a91GxHt+hF+W5l+tEPOa+/xKWwb86ncF5N/82Bi+AoZ6X2kDTv+oHJEjT8e8PvlzJRqR
         e/gA==
X-Forwarded-Encrypted: i=1; AJvYcCUJ1ilWFAHkLneRq/K6XSx0mqZXoUd//dcIUY4Ohp2g4G2GrF9GJE/eUcVd8Rmhx2QAxhjGLQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yy+7ybbj8FVmMJxF5mj1urpOpWbtQ6YjpVvDdTjwX3eIYCex4AW
	QGGHrJgLKsKuGz+weFe5Wv01XNBFntbLXpviJHAAR3EZv7eyL9FnGRQpfKAX3MGAKKF1+8udR/a
	g0P4Iwh8qHxzWcBTiP67cvJq+ihw=
X-Google-Smtp-Source: AGHT+IHUY2/aERLk4yJ6l0NzeExV4ktsJgMLHRn0ZQL0dMqHoxFCMVoGPpviE5DJYTAhqyv+kjgcqd+l393Ed1QGee8=
X-Received: by 2002:a05:6512:1386:b0:52e:fd84:cec0 with SMTP id
 2adb3069b0e04-5365881028bmr10537787e87.52.1726050315085; Wed, 11 Sep 2024
 03:25:15 -0700 (PDT)
MIME-Version: 1.0
References: <20240502105745.3073153-1-alex.kanavin@gmail.com>
 <8ddf5dac-2cb8-4c6a-b4e9-b8b281058cb1@ti.com> <CANNYZj8THxZ6y8sv3Y7A9br3zfh4GMpec4g4Y-+gMzGMJf5CAA@mail.gmail.com>
 <fa52a7f7-d025-418a-b022-9d3e813ad2de@ti.com> <17F3EC948BF602BE.32151@lists.openembedded.org>
In-Reply-To: <17F3EC948BF602BE.32151@lists.openembedded.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 11 Sep 2024 12:25:03 +0200
Message-ID: <CANNYZj-mpDJmJSsM9-JSFzJCYMqyUqvLz9dK8vdnaDTjLEf93A@mail.gmail.com>
Subject: Re: [bitbake-devel] [RFC PATCH] bitbake-setup: add the proof of
 concept implementation
To: alex.kanavin@gmail.com
Cc: Ryan Eatmon <reatmon@ti.com>, bitbake-devel@lists.openembedded.org, 
	yocto@lists.yoctoproject.org, 
	openembedded-architecture@lists.openembedded.org, 
	Alexander Kanavin <alex@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 11 Sep 2024 10:25:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63820

On Tue, 10 Sept 2024 at 17:46, Alexander Kanavin via
lists.openembedded.org <alex.kanavin=gmail.com@lists.openembedded.org>
wrote:
> Please keep in mind that the format for the set of layers in the
> 'sources' section follows precisely the json format used by layer
> setup tooling, which was discussed to death, and agreed with great
> difficulty quite some time ago, and then implemented in
> 'bitbake-layers create-layer-setup' that writes it out and
> oe-setup-layers that consumes it and pulls the layers from the
> network.
>
> Then there's an additional ['configuration']['bitbake-setup'] section,
> which is new, and specifies what to do after checking out the layers.

I forgot to add, there will be tooling to generate these json files,
possibly a simple extension to the existing tool that generates layer
config. Everything in the json can be obtained programmatically from
an active yocto build (except bitbake build targets maybe, but even
that could be added to config templates), so beginners don't have to
wrestle with json syntax or particularities of specific entries in it.

Alex

