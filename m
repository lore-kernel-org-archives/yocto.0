Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6954EE7718B
	for <webhook@archiver.kernel.org>; Mon, 23 Dec 2024 12:51:34 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.web11.12723.1734958286578596774
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Dec 2024 04:51:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=a5GNg5yo;
 spf=pass (domain: gmail.com, ip: 209.85.219.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-6d8fa32d3d6so54210716d6.2
        for <yocto@lists.yoctoproject.org>; Mon, 23 Dec 2024 04:51:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734958285; x=1735563085; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FfHCUpZHzfWnJbzTrvQiW062OsiZcrjSt8Q9iYefA90=;
        b=a5GNg5yodCPsyKLk1BHFspP5nk+WA+nxVbHNlJjdMQqusQ9n5RZxF7rOlWAPmgR/jp
         ocbzh5Am1o2nS1Js3TBe0DcVEUgLn0OfHbHa43KXF8r7rdc/J7ugQcdvADGQOQLJWi+T
         KGreUeb1237PxwNrX1S7bV1naSR6vR0dC3w+ChJcDTphrte58EQRUcD0FTF48Tu41Y0n
         e1ZDBhyVPOe2Y3Dypw87P4y+M2Jiv7nYl+mB/T5WtaJvbqIp7mUQNrHvWy34r4is8mh+
         Hi6YRdxPds/jVOlvyjPGxuVacSD0IlNge4yHcVfxul2ADzlZrOkR5n78+mbMLl0SDXHK
         VZLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734958285; x=1735563085;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FfHCUpZHzfWnJbzTrvQiW062OsiZcrjSt8Q9iYefA90=;
        b=ArKyvaMYX7/Bwr/NHGJrAVlfhxUQoCB4Cv6A5P8tOCWsasXnJzKhS1DwYjHA7s1xFF
         jn/uWbMnu7InD6hFRp/72oVjp95spEk7XvsbJ0pD0w6BU6yS/3MRl+GvoVWmJJjpr29n
         vkS+Qq2/PqmMqwW+daBaOKHyKXCtYsD0V8lBsN3PvS9D6Iu0t0rLfRjmYSzgQ1GjFEjJ
         rmwde3s7nlkymMWAshdmKWf/HAcxS+U432P6ubPklWTzioWKeBUZzK9d50ikyC7Ac1J5
         iQFcBWz2It0ZlJIfUF7qsWUW7X1pXVjkEuLFmWg1XxExWPYpl1NeM14QBlC5InEP52lt
         FPGg==
X-Forwarded-Encrypted: i=1; AJvYcCU4StnQa60nmgOzQeqYLRRMi2k8zwnbKu2LModPL3xIZ3ylQ2B9I/0YZjEKycvv7/XUskb08g==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwAiwhZ0s+W2nboSP218EY/M10TeOdYQSbOUGX1OF2/6A85nR7U
	NbGebBk/kP5+R3z22NrSST38McH5hRGJr4Nz79JCO6fgtgrs/Rmge+rAjp3VglvKQZOHMp2Yown
	SXHYG2izKmJdcIvYMsZ6/45WUHDU=
X-Gm-Gg: ASbGncvHvYkiaFpSXecjpiODFNe5IgoCb2tBnC40bnI5we6PZdYv/OkTkoCGZyrlpCO
	Kj6kNeyTjnTdTJYLhJmfW7S3h6DzaZRP3lfZhKgDkB36/tPTTuHOf4sU+KJvA1E9VmI2o+qxe
X-Google-Smtp-Source: AGHT+IFnzre59fmuLh69LPth4+8o047wLsY5D8yejG/ajMsny1rPc+Bw+BjB1xYWPkcsF7oyroH/ex+6VFZPvE9VA2E=
X-Received: by 2002:ad4:5d69:0:b0:6d8:81cd:a0ce with SMTP id
 6a1803df08f44-6dd233aab3amr218037446d6.43.1734958285580; Mon, 23 Dec 2024
 04:51:25 -0800 (PST)
MIME-Version: 1.0
References: <20241218124722.2030523-1-alex.kanavin@gmail.com> <CAB=6tBTTn=C5xAqDwtUm9nyTnnxh2s+Lfwoe+sD3Ara3cCKtLw@mail.gmail.com>
In-Reply-To: <CAB=6tBTTn=C5xAqDwtUm9nyTnnxh2s+Lfwoe+sD3Ara3cCKtLw@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 23 Dec 2024 13:51:14 +0100
Message-ID: <CANNYZj-bimfikUijTUqB2avVC+h8a8zpEHSD7zLL511qDgXZxA@mail.gmail.com>
Subject: Re: [bitbake-devel] [RFC PATCH] bitbake-setup: add the proof of
 concept implementation
To: Chuck Wolber <chuckwolber@gmail.com>
Cc: bitbake-devel@lists.openembedded.org, yocto@lists.yoctoproject.org, 
	openembedded-architecture@lists.openembedded.org, 
	Alexander Kanavin <alex@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 Dec 2024 12:51:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64477

On Thu, 19 Dec 2024 at 23:18, Chuck Wolber <chuckwolber@gmail.com> wrote:
> Would it be possible to change that to just "build" rather than "build.sh"? For
> an executable, there really is no need to telegraph the language it was written
> in. It also makes things very difficult later on if a more sophisticated
> implementation in a different language is warranted.
>
> Related: https://google.github.io/styleguide/shellguide.html#file-extensions

Sure. I changed that to 'build-targets'. It might be good to consider
if that should be even called 'build-default-targets' in case we might
want to support 'other' kinds of targets as well, and how that should
be reflected in the json structure.

Alex

