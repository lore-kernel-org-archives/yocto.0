Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C186CF0439
	for <webhook@archiver.kernel.org>; Wed,  9 Oct 2024 09:53:29 +0000 (UTC)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
 by mx.groups.io with SMTP id smtpd.web10.12408.1728467602116910821
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Oct 2024 02:53:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=PouhhlqR;
 spf=pass (domain: gmail.com, ip: 209.85.208.180, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2faccccbca7so55331111fa.2;
        Wed, 09 Oct 2024 02:53:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728467600; x=1729072400; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XhOGMCFs8bWlSfOyM/7KAmGH1HViFMNQ3LwCTDdI10g=;
        b=PouhhlqRV8pE62Z/3HdVuHH2iWJT/gFqAp0qo/Blrho33RwOkFB9A5RpNrGxYxJ2Gv
         +3WXCFCc9daz8sSznkk0jVbCi6IthBbEDBeZu5/NpyE1rtX97mcc0tJk4KAVuADxjtec
         pAchig7ygON7hirlAbqIDkiZRchzeMTTmcjCbsC32T9iJVp+whY8pvQPbpVs2jg0G/HG
         nnXiFj/9Z37v8AgTM1Je12zz1b85/srxgNzMipEmWpyRGj1ZYpQ9hzofZtdrO3rLaK0s
         Kt8F+PBN7ZilM6tC1wyS5IGGtluEFI4EpljAd9FN2v8dz4Tr7c/loRvldJZkgTrTyCeY
         4x/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728467600; x=1729072400;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XhOGMCFs8bWlSfOyM/7KAmGH1HViFMNQ3LwCTDdI10g=;
        b=aJ+JtadtZRjQLk99XynAd5GWY8CuZp0RxMFK6zMdg4iS5iiwxeMxj6BV4+IAvqHnVM
         hjGKQld971t9YmKsX/BXEy93mi5bROM7TgsmsLPM/wRdhs+vX/6SPrVbsIUr31aD+UiM
         hLCKopekBYPNAFLWbtEksUrDDvY4F073rzM6uHbwYAfuynVl5zHEjW9/69nJl1YNTFUq
         zJfO10tqudMJLywyXjnlsLdMBE0Ci0m7tRGWCFSk11OknVAXYA3HAo8sLehYd1eOaQAq
         dmAI5vuqWq8CpXGFey8Nyv3qBMGwgIJTJcG3+QsY0V3ISvT8VIct2JFzeDwsEYNHVkrp
         B7kQ==
X-Forwarded-Encrypted: i=1; AJvYcCVf7iBdD1hFv5G35VoxuTLYYfQ6TKWb4DQZTzksiTiszMjBsayYGn6FXetU92ldRgBSFyaXnXbfEuf8lSo=@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwRTT1n6NpSV3py656VhwCpy/m85VoQ+UWHTF5PAHtYMkkpWMW6
	24bKif4G0Y446OzD+xi/JW3c5dXUTwEv38yqA3EkPPJX6KrWJvrrB6JyXhrGCOqHEqkpdm0UTLs
	T101iyUdjtyT+1w5gPqzNoWlaJ3AbYw==
X-Google-Smtp-Source: AGHT+IGa5s8F8L+d/0GUNSWr4tNZH/1jU0vdYaLznhFu5KysvqkeFrAGYJSFN26Hz7VWdDxO6J14GCZKwGhnQ09GeWQ=
X-Received: by 2002:a05:651c:1502:b0:2fa:c18c:faba with SMTP id
 38308e7fff4ca-2fb187ce392mr9925691fa.30.1728467599856; Wed, 09 Oct 2024
 02:53:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAK5yBb_-W3CLfx1TCD-705gR05t4kVGXUtQeLc-z9=g+wFj=mg@mail.gmail.com>
In-Reply-To: <CAK5yBb_-W3CLfx1TCD-705gR05t4kVGXUtQeLc-z9=g+wFj=mg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 9 Oct 2024 11:53:08 +0200
Message-ID: <CANNYZj-XyKAupgQ8973-ssh_3U+Zg4rScVYYgL-7dR87yN+qWQ@mail.gmail.com>
Subject: Re: [yocto] Yocto Project Status 8 Oct. 2024 (WW41)
To: yocto@lists.yoctoproject.org, sjolley.yp.pm@gmail.com
Cc: ",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>, 
	yocto-status@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Oct 2024 09:53:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63984

On Tue, 8 Oct 2024 at 16:49, Stephen Jolley via lists.yoctoproject.org
<sjolley.yp.pm=gmail.com@lists.yoctoproject.org> wrote:
> For 5.2 it would be helpful to have rough development plans for areas of the project if anyone is able to help document a rough roadmap/plan for them. The following areas are known to be being or need working on:
...
> If there are other areas we should have plans for, please let us know.

I guess adding clang or parts of it to oe-core should be in the list too?

Alex

