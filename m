Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F4A0C4332F
	for <webhook@archiver.kernel.org>; Fri,  2 Dec 2022 02:51:28 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
 by mx.groups.io with SMTP id smtpd.web11.65622.1669949487526391297
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Dec 2022 18:51:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=SjvEmXjs;
 spf=softfail (domain: sakoman.com, ip: 209.85.208.53, mailfrom: steve@sakoman.com)
Received: by mail-ed1-f53.google.com with SMTP id s5so4746510edc.12
        for <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 18:51:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dktTdax4rg3w9rGq7b6ueqq6IGHYqdEtzRuVdQWovMk=;
        b=SjvEmXjsEWehbtzlt4VheRaVLhEtBDYEHZgKufxe/KmGftqjvB18nMIvu6ftHhf52I
         ISRj9EuzcCzN3Hdh+TUxqiEnRv/fmQZV3l0bdXmR41i9wR4c5q8xPc6h0Exmp8072BzL
         X7JHvGQ1wHelC6bsyS1T/E4XTNBb9bd/87X8Dnu1xfbUWCHUj7FFO/rQy1n0sZcKZYd8
         HRxGCbyu5JGVB+GzzKxVGh79u4EWx7lT87PKkFj2VAnKLZA9xFuKcAc6ai0Jqy/U3g6Z
         fJtt6KM4bzDo14tX+/4tT/p52Ukdw7JGuToqG4UQNwhBSBDP4utit7WamDyMDgmhiWSc
         YJEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dktTdax4rg3w9rGq7b6ueqq6IGHYqdEtzRuVdQWovMk=;
        b=yBu46D+lhaDSAlygvSJHt4WAorW9/QlOfM9eCNqQCPxRP1G+3FwE+kSMcflXyKO96q
         Cf6LnAhrYODfBphyh/rcyMg8M07DG+snPVw+etjiqL856HwQ/kkp/37B72kX5ighEJ4M
         5YsPO93ZVu57077QSSlDfEDYyVWH+zh7SQDRymxAJ408PISsUT7AwzFc8ptu43tnkjv4
         tWZJExOCHNLjkbfeg/DsL+wzXXowhFyWfeZY58M/1UtTHqbWFD6epNpNMpTJNz1q0VAp
         JQfZRNEOmcYkOZnBR1kSmIfVhWW8Faafu0qvPWHLMlwMvioR+IRIg+Coc8TxhfublN3p
         JmrA==
X-Gm-Message-State: ANoB5plptXeXJxAq9HnBkejAHhPjY+L0W9LwRQ6MgD3Oio/zAyxIvOCJ
	if2myYhTL25d/5kLWXm4uwTsh+IJf0d1kyTlaJ83sQ==
X-Google-Smtp-Source: AA0mqf4E8I34us5UMFmEjeC8diGNUTZfEnQtOmXT5wUvPrf6TlU1eqC1TT6RnkQOdqb+vp4VK0KVHCfaDxJcCpHj8bI=
X-Received: by 2002:aa7:d80d:0:b0:46b:7645:86a9 with SMTP id
 v13-20020aa7d80d000000b0046b764586a9mr13908906edq.311.1669949485864; Thu, 01
 Dec 2022 18:51:25 -0800 (PST)
MIME-Version: 1.0
References: <cover.1669933890.git.steve@sakoman.com> <1045417bd149734da4decf719be2104348feff0b.1669933890.git.steve@sakoman.com>
 <8d0d06e7c7cde070fd91bda4c8922942855b3020.camel@linuxfoundation.org>
In-Reply-To: <8d0d06e7c7cde070fd91bda4c8922942855b3020.camel@linuxfoundation.org>
From: Steve Sakoman <steve@sakoman.com>
Date: Thu, 1 Dec 2022 16:51:15 -1000
Message-ID: <CAOSpxdYE8Po5coTxV-pQnF9+jnX0OKB14Sse9Q7+CC-pRfzTfg@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder2] config.py: add fedora36 to
 workers_prev_releases for kirkstone
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 02 Dec 2022 02:51:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58715

On Thu, Dec 1, 2022 at 1:38 PM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Thu, 2022-12-01 at 12:32 -1000, Steve Sakoman wrote:
> > also remove obsolete fedora releases for kirkstone
>
> Please don't remove the obsolete ones, we leave the old ones here as a
> record in case we do end up wanting to know which distros we did test.

Understood, v2 sent.

Steve

