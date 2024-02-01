Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08283C4828F
	for <webhook@archiver.kernel.org>; Thu,  1 Feb 2024 13:53:02 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web11.15730.1706795576144151892
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Feb 2024 05:52:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Nria1t3W;
 spf=pass (domain: gmail.com, ip: 209.85.167.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-5111c7d40deso1435588e87.1
        for <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 05:52:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706795574; x=1707400374; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xHNnD0SM2980QK8TMA03rQ7XMNFPrroFkCGY4XMVjxM=;
        b=Nria1t3WgrlZuyCtWcKO5PH4tQJ1qi7QSpD4RDZS9Olt+T6p2Iat93DDQgNpDgzzUR
         GRpwe/blAO+S0Y9x/yqHq3yEDDB5vSDnZF+e4YlTyxe91zGZenx8pXsWcSEMYqmf96mq
         DTYKuxPZB9swhntE0Z8FNIeyPo7YbIdsRBPCxpW3yD1YEkR23N2FYnBqgLciEj7KJRMk
         loyuncYXKgg8hdf5vGIBdFJcjYLZTWqoTD7rati7mFGRUEZMfxjr4xMab18VpouOsEBp
         XP59WCmwJlCeqACjfyoZ0F8WPuDsHgQ8UDIPXfOtCmo17SqABYtmcDQ34P63C4r2jTzn
         91DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706795574; x=1707400374;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xHNnD0SM2980QK8TMA03rQ7XMNFPrroFkCGY4XMVjxM=;
        b=cZngnhoD3rnKRoLEAtgA65m/M3z2q5zYg7E/fF/a8sAHYhgD2P7I+qQK8wSDf+ajoe
         +iO7ys8vOTj3Pcyi0YHXtInYkmeD6vL8upwrJrK6vG/MY4cNIUcde2iP1XN3HY+QAkmk
         iyXEY7CyBsOQ9DBbCReRu/QiCogUl72mqePHQUTdD8MSSGHk0pgYLBB0nS6XmPwwpwPB
         x2L1wZ9QfGYUIWXONj+WzlogvA050Fh7XWiQkBeylfAm6MDNhpe9CHgkdUIKIXfGw7Mv
         0lD2naxujeO5UtKseubZgG0NTsYvu+ALdwGyGXUa+Y6pwUK7kVyJ765e2kDIxjJwSBKV
         w9rQ==
X-Gm-Message-State: AOJu0YyzFsmNUXJCXS0k9ctfmJnee6Weg+L4PGwYiyuqwo1MYt3LX9Hc
	o371fz/qfl51/4ANZWi/QG0j6pfegLxL0pgJ8NXq8KigRuIZ4RFf26nhFidxup4UBhXPp5g8Qad
	woQp1JTN4WnC+gS/Q4D8MwVXHDwA=
X-Google-Smtp-Source: AGHT+IEVBnVkDa1At3DWPz/aa/N5QPnhlCY12XfC19xKb6R5tHK759WLPI5vUWwuq3zjdGctvGH6v+oOV+QvmAy34mI=
X-Received: by 2002:ac2:5e7b:0:b0:510:1461:d029 with SMTP id
 a27-20020ac25e7b000000b005101461d029mr1858622lfr.28.1706795574112; Thu, 01
 Feb 2024 05:52:54 -0800 (PST)
MIME-Version: 1.0
References: <CANNYZj-t4yhegR4Q-8s1K2u3YvdB9ctekHTXKLR8GB9UEERVuA@mail.gmail.com>
 <23652.1706792492588535839@lists.yoctoproject.org>
In-Reply-To: <23652.1706792492588535839@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 1 Feb 2024 14:52:43 +0100
Message-ID: <CANNYZj-67NS_1n8fAPjioAHeQdtuYp0kcj2Ws71pQQ_7JsRHWQ@mail.gmail.com>
Subject: Re: [yocto] Is there a way to speed up the initial fetch task?
To: timotheus.giuliani@philips.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 13:53:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62363

You need to connect the instances to a shared NFS mount for the
downloads then. Ideally, for sstate as well.

Alex

On Thu, 1 Feb 2024 at 14:01, via lists.yoctoproject.org
<timotheus.giuliani=3Dphilips.com@lists.yoctoproject.org> wrote:
>
> It=E2=80=99s not possible to keep the download directory, since the build=
 runs on cloud runners that are shared resources. Every time a PR is create=
d a new runner instance with an empty workspace will be assigned. Therefore=
, I can=E2=80=99t reuse anything local from previous builds.

