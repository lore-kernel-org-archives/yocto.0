Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1D888D149C4
	for <webhook@archiver.kernel.org>; Fri, 25 Oct 2024 16:21:29 +0000 (UTC)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
 by mx.groups.io with SMTP id smtpd.web10.15983.1729873265283669320
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Oct 2024 09:21:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=U+lCOgza;
 spf=pass (domain: gmail.com, ip: 209.85.208.174, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2fb587d0436so23680981fa.2
        for <yocto@lists.yoctoproject.org>; Fri, 25 Oct 2024 09:21:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729873263; x=1730478063; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iMYAlbMMXWrNKvnZKvwoEsMwQutouHU6WBKjOd+uOF0=;
        b=U+lCOgzaVQa3E+4ej7XnDfFnLhvzNbDgqHelXY9xWYGuiFuTVyfeMHF66H0unS+rKs
         /hj17bQo1sXH0KlSHJG4SjmWMcyaJqpOjEJv8RDZjE7rTpqHts4lWzRii2b99rFt7hdT
         V7XDocXS5SI1BV3RS8Bl6XXkDRjpfIR7bLH9mg0OOsbeCstuTZYk8eQMdCWCHx0pypdF
         /jNST+d0nSnnmxFXGGXjgDLPyUwgvOudXTsZbMSp+TocXjzuQik7lu4ojWM1+QJ6GvtD
         3HOYGy5ILZTsOnKbY8TFbv7PqSWOmhtRCNfF4PvwaphjWeBi4U/Sms8gsZmfZSop9sWn
         K3JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729873263; x=1730478063;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iMYAlbMMXWrNKvnZKvwoEsMwQutouHU6WBKjOd+uOF0=;
        b=GuzYbraDKBYFUoV1UKq5jrlSasGBH+RSD3gYPXHVc+NH+KJz18OMFwDKZK2NwWoQQf
         QOH3UYK+dc10Aoaibmb7D//WiGMk2RV+/8QC341DTK/bUs9/eeXSuakjEWsPGbklMOsK
         Gf0zUI7SbdnatLl2Dtv1Ko2v7F8sE+NDWenlYBlnefz72tRroUVesIL0ZqvJ+vSpXmOZ
         rSnHjpYFIGcd/fkiEOCDQF4/FV9zfN5uG/zQKcVkGENQmOcuMnaChCFOk2kt2iCu+U46
         VkMWLoU9kEGSPstI9e8ZSZYWrqSQmZo9sKeJuWW5nOkZg2lP9B1JLtv/KsnwMQyoiZH0
         r9cQ==
X-Gm-Message-State: AOJu0YzKX+LWn90JgfrSZwB62D4Bg0QLHTLyi4v0tbzxVZyKThAFFDRd
	bdH7anZmjJw3OMwRtlGpejpJdzFDwav6xi25lZCi4bytKrZxcUueV3l8m6ggmLSWbf/EoAjBNYa
	vLMKaKNX5aX6ZDj0QWaCFCM0dy5M=
X-Google-Smtp-Source: AGHT+IFxXwgP571Oc7Lw+qCjjPYdVD+nc1GOGeQAT/i1hEej4AKoH5JTZ/oQ2jjlX3ubwPT2EWd+JLXt48JCOGhVyxM=
X-Received: by 2002:a05:651c:2210:b0:2fb:4f8e:ef9 with SMTP id
 38308e7fff4ca-2fc9d59581amr50981801fa.30.1729873263019; Fri, 25 Oct 2024
 09:21:03 -0700 (PDT)
MIME-Version: 1.0
References: <96c0c00e-7d19-4c27-a7cb-f4f98cfca732@bmw.de> <CANNYZj_-NX_k09uLbbzVrvZWNNV0v+Rae1h=USZPW0w_a71g9A@mail.gmail.com>
 <4dd48c42-f36b-4fa1-b1c9-1b6a914c1f85@bmw.de>
In-Reply-To: <4dd48c42-f36b-4fa1-b1c9-1b6a914c1f85@bmw.de>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 25 Oct 2024 18:20:51 +0200
Message-ID: <CANNYZj-V37gZ+rU2z+gM9ZVbCo+SKFuau9YhSfXe76O22DvoYQ@mail.gmail.com>
Subject: Re: [yocto] version-going-backwards issues with shared sstate cache
To: Philip Lorenz <philip.lorenz@bmw.de>, michael.opdenacker@rootcommit.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Oct 2024 16:21:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64131

On Fri, 25 Oct 2024 at 15:59, Philip Lorenz <philip.lorenz@bmw.de> wrote:
> Wouldn't we then see version-going-backwards errors in the validation
> builds (as the "mainline" builds which contribute to the shared
> buildhistory will have higher PRs from PRserv)? We'd like to maximize
> our cache reuse so in a perfect world even the write_package_* tasks
> could be reused between the builds (which I believe we could do if we
> combine hash equivalence with a non-cached packagedata task).

Right. Then I don't know.

Like I said, I don't know much about PR side effects. When I was
working at a certain car company (that likes to put rotating logos on
buildings), we never enabled PR server, as there was no real need for
it, or for package management on target images for that matter.
Perhaps Michael can chime in, he's the real expert.

Alex

