Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46D5DE6688D
	for <webhook@archiver.kernel.org>; Fri, 19 Dec 2025 20:28:12 +0000 (UTC)
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.25694.1766176088285234491
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Dec 2025 12:28:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=oeXrwl5L;
 spf=neutral (domain: theyoctojester.info, ip: 209.85.215.175, mailfrom: jester@theyoctojester.info)
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-c05d66dbab2so2220596a12.0
        for <yocto@lists.yoctoproject.org>; Fri, 19 Dec 2025 12:28:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1766176088; x=1766780888; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t9IohO/d/MCiS5OV8zDl8qt3/TQNn7a+prGsv2SqaJA=;
        b=oeXrwl5LRDwI03hXjdbYE4IKJ0vhuaPUo0WrJS53E7hB+xbDxk0JzLaX2w4qVbKWAP
         ZTQCQkbDVxDmrF+X9syzJR+peRxc/VV8VToQULxtOp0+xnK6pEaNi0Z1x7HvG/+EbluY
         IlNUnqtElTnVpcoldABUi9N9PQAgZMo7MmN8b5oHE5KVk8lhgNpP6doUKWHoj2sMs5hL
         XrD8G8UsctqhvTE6UXWDz07cCp1VCRvA/Tsffzbk7e8PXRrLVz0bRYj8QqwCE7yvwR+Y
         HLU+kE4N8MUZBopWVE9YOa8hHdVzMVIydzljJ5t2Hic0NQu8bPlBtZKChvatSYygYAG5
         7kjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766176088; x=1766780888;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=t9IohO/d/MCiS5OV8zDl8qt3/TQNn7a+prGsv2SqaJA=;
        b=AahQFn5z3QZWiTytwMP5atWzgYWnFgLIxficHwC7TbxYLh0G3HBl0iSGOJdnVc5DKN
         5uGKQAL7pebCZ56redrz0gy6ZvtDvBeB8/mjRIPUaSte6RztMQ61JAffn4fwygd9++ji
         ECniyJPF4F3KIJ85Yg9e8rSuX3twt+fnnTqBrysXUZpvzhsLB2xcfgo1nSyOHyj1srfX
         p3CDEJrMRgZuYFBWM8DerEz5FLYaYjNjPBbn4Dij33vq5sL4zCP5DZTJPp7e9YdbFoAI
         wxyDQ5OAT8+Lw2S1bTVXBZTfdhZ6Cc8cj4QlhHQ6HcESGV0z8RkI6e0i3SgOiyOuOZDc
         YmcQ==
X-Forwarded-Encrypted: i=1; AJvYcCUwRvg8/ZE7H1zT0AYTGR6/n3rHc2e4c4rdwMVgzYcIUXnXDaYuZ8b5a9uE0EH2A3BsWwVpCQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxeGKidQMcxq3FmDLbpPnGY/4PoxV2Mmpyosc2wC7uo1pQW4796
	TeAvIFw8rKok+DHhOGPD4VL1X86C53eUKMQLsH5XeTUxSH+oqrVTXiRaUo5Lv8LiJ9sCweRzBMd
	zjPyH7KVvG1P3HeyB3iZkKlTWnGinpLz1kqKetexC+w==
X-Gm-Gg: AY/fxX6MuIdUXy3HcTSuPgqcCdudByNNpqogw5ShrG9MxIHYQNvNmhJcM+hD7Sxjuwn
	7E4hsutN87SwmGMOBk8821AjRiW1NxpT0chBqG1aXp/nnmf9RxjKbRp70mjVngfFByYzBidyulI
	g7elSbKojt55ObamtkuKavvfacJW6aX1BmJilIXBpuOi7db16bP8LWkWmGRv3UonZ3qrI6vl05D
	D3lmgrsoHdlb+uMAFtDMl06DxwmPKH184x2awfjPO37YBZa6avRbmkL2Bfo8jlnFMUSltJIblCX
	mJfnHoRGvTs+308OGDidBOY3omejPw==
X-Google-Smtp-Source: AGHT+IH0NBaZ+SPOdhudZcd71R8mnsXxgC/JYGdUtPKLBv8BzFnGJTDVfzd0velj8RYbgiCr5nyvp0zzVRmLn64MC9Y=
X-Received: by 2002:a05:693c:631c:b0:2ae:5d27:ff49 with SMTP id
 5a478bee46e88-2b05ebd85femr5625387eec.7.1766176087655; Fri, 19 Dec 2025
 12:28:07 -0800 (PST)
MIME-Version: 1.0
References: <CAEt6Nwo64QB0ygUK5qCcB46-V8Twk-jWrGCbtMR1MP8EvnMSiA@mail.gmail.com>
In-Reply-To: <CAEt6Nwo64QB0ygUK5qCcB46-V8Twk-jWrGCbtMR1MP8EvnMSiA@mail.gmail.com>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Fri, 19 Dec 2025 21:27:40 +0100
X-Gm-Features: AQt7F2qcrz-0naey-AFcm0XPBLMe4n9epYWYNWXAIRwWHSVH64UIhSrxFp5srGQ
Message-ID: <CAEt6Nwr+G+=NamM5ayu2EZ8X==HcPkmp8VvXX3pAePdX+RG2YQ@mail.gmail.com>
Subject: Re: Final stretch for the OE Workshop 2026 CFP
To: openembedded-devel@lists.openembedded.org, 
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	openembedded-members@lists.openembedded.org, 
	openembedded-core <openembedded-core@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 19 Dec 2025 20:28:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66118

Correction: use
https://pretalx.com/openembedded-workshop-2026-2025/cfp - unless you
are part of the organization team yourself :)

On Fri, Dec 19, 2025 at 9:22=E2=80=AFPM Josef Holzmayr
<jester@theyoctojester.info> wrote:
>
> You already know that we will host the OE Workshop 2026 on February 2
> - the Monday after FOSDEM.
>
> You already know that there will be a friendly, enthusiast crowd ready
> to take on all thing OpenEmbedded and Yocto.
>
> You already know that this is the perfect way to wrap up the weekend.
>
> And now you know: the CFP is in its final 48h. That one things which
> you always wanted to talk about, now is the time to submit it at
> https://pretalx.com/orga/event/openembedded-workshop-2026-2025/
>
> Looking forward to read your ideas :-)
>
> Greetz,
> Josef
> (OpenEmbedded social media dude, event conspirator and occasional timekee=
per)

