Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6A2C47DD9
	for <webhook@archiver.kernel.org>; Wed, 28 Feb 2024 16:50:16 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web10.1794.1709139011112229195
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Feb 2024 08:50:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=meMjPrcN;
 spf=pass (domain: gmail.com, ip: 209.85.208.181, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2d2ab9c5e83so20240731fa.2
        for <yocto@lists.yoctoproject.org>; Wed, 28 Feb 2024 08:50:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709139009; x=1709743809; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GEzLZ6G4Xe9R+2LSJRv6RB/541SEupYvy27rcbT/QLA=;
        b=meMjPrcNjN1ezzxfbhhbedmsW45eIFNCcCYNr07yyr+ikrT2zYG57qOorv3SndRcJI
         Jt6xkmgTDKf6nrO1ntxbYkkEo+Vzlan6HJZHjhkqIgyhuwfAsNwYxyLSRyou3G+rxCXp
         +ac8znyKqA47QBH+bLSPT8r6ya0yxGmCEXr3tqaGv4WJmH5+PO8Te9l2lST+CCEIVy2Z
         AfKpfBfBTcwOvjzuHdXi2d4hfwuxLQ9oNFik1leMNPzeG+5FuRCpLXMDXM4MM8koCqw0
         q+n0QVtJkAUQwjb32DKBpcnmagc+Uq4iXeZbcK4T4Gm8mr1PrLjKaFfQAkYwFm2qgkpD
         j30w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709139009; x=1709743809;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GEzLZ6G4Xe9R+2LSJRv6RB/541SEupYvy27rcbT/QLA=;
        b=qbc8KYMZpFXPUoXEahtC4VzxDswTkMbabsh80/wQYuLqqD/wo2+0ek1KgxHtS84xwa
         XUItgGKRryJOBGlA/cje7QihGPOR1DBzU1WvOXQAOX3nZmMfD/ZhfMj1w0nBTORDu7sr
         8NmPIiP+Wxxi7bPVF7hTjDvr/np03WZTn6TOId7fI5FsFFnih+bzCJYRndp31MgiIcdu
         p6q0TeHNgietegUCw3Xu/MAZMqSXQU63AGgUneG0CYfqkpyvWB99BA3rD1qrtJ6R+o76
         HtmFTKRbufA2lt3UMK9a+KB6hK1QXgJrAc8t8/sA0z4+CZkk2k9dryee+q5H2g32RQ5u
         zP3Q==
X-Gm-Message-State: AOJu0YxEJ/aUlGhs0O0QQvRMPQnG5jfpKs4+lrKeNzTGU2zg5CfD/Vvy
	u6bu1voA435VySbtAF+258nNXwNqVSgD3SmxwfCxz8ds7T/lj8m7mzVAgTDAGkpGg/GivsEdiXD
	tcLTWLFW46v8sQOdiAeyc52MDUZg=
X-Google-Smtp-Source: AGHT+IGEIv22Nq8efjH9qqBWVBZO5rbi3Y/uF4p36/zPLMb6CnocajcRewbE4uDRHwNJf5Xw4NVSB++mk6fTyj4mlxY=
X-Received: by 2002:a05:651c:48c:b0:2d2:5cca:cf6f with SMTP id
 s12-20020a05651c048c00b002d25ccacf6fmr8481497ljc.18.1709139008955; Wed, 28
 Feb 2024 08:50:08 -0800 (PST)
MIME-Version: 1.0
References: <CANNYZj9cRM0-MsC9+Dda1+4fatmRDYVOm5t=gATfO=_+W7V2QQ@mail.gmail.com>
 <31790.1709133357541065771@lists.yoctoproject.org>
In-Reply-To: <31790.1709133357541065771@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 28 Feb 2024 17:49:57 +0100
Message-ID: <CANNYZj9rDDcYq+W0fmi1sxPV+d2Z+Vu0B0qggBZTSrgeW9UY8A@mail.gmail.com>
Subject: Re: [yocto] dnf/libsolv vs. package feed with commit hashes in
 version strings
To: patrick.huesmann@desy.de
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Feb 2024 16:50:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62638

At this point you need to show the recipe. Because I don't understand
how packages can have dedicated source revision, if source revision is
set by the recipe, and is the same for all packages it makes... where
is the problem here?

Alex

On Wed, 28 Feb 2024 at 16:15, <patrick.huesmann@desy.de> wrote:
>
> As far as I can see, the SRCPV / AUTOINC logic works on a per recipe basis (not per package), right?
>
> So when my recipe is divided into subpackages with a dedicated source revision for each, my only choice is to either split it into multiple recipes or use  SRCREV_FORMAT to build a summarized SRCREV from the subpackages revisions ... correct?

