Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04720D21264
	for <webhook@archiver.kernel.org>; Thu, 17 Oct 2024 09:11:24 +0000 (UTC)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
 by mx.groups.io with SMTP id smtpd.web11.44982.1729156275699264635
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Oct 2024 02:11:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TyCF3dKC;
 spf=pass (domain: gmail.com, ip: 209.85.208.174, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2fb518014b9so6590131fa.3
        for <yocto@lists.yoctoproject.org>; Thu, 17 Oct 2024 02:11:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729156274; x=1729761074; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cHwDSJ2UL6oRg0zOPp7rcxrlKyMbj3U/uxOr9UIzxl4=;
        b=TyCF3dKCO7PAAdnvjVIuJxgtu/tkw9RxoOJrNw8g5jMfT2Hwoi5RjUaW7r2wZgTTnd
         /bjg/exXgdaxE/4rIf+cLvpAhYvSAIyAfVWdFo88J1I3nqrTcy2NovqWMx8dp4mbziCC
         p5b29lgDTLQerxqvrJTVWoPzP6AIZVjvirC8An6QF6/SvtyAeRX2bDBZwJWHWBtS9TsQ
         hNPPasc3KgIoD8546eGulGFhSiXaQRxWvD46dFZ5nW9fLDBhhE9Nn5kZSo22Izb/W4GL
         1jDjL0NiWlPP7aWRjAKphHgf3j+1yX0rRHU6VfSqn8t96TcCkwl1ZUvgIEFY1JSb8irZ
         7uxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729156274; x=1729761074;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cHwDSJ2UL6oRg0zOPp7rcxrlKyMbj3U/uxOr9UIzxl4=;
        b=PBV692/fCVHic4xvIxqnwIZcw5L8BkjazBdxK/nKamxLBgHLRtiLEMf7clawFlKdbj
         9M+Svox+MdtH5CF07XctMyvi0/3Cwp1JHtRJamL24OsEKjIq1gNxrYCJaDrM3mlUyGUH
         bfWT4FaS6iSzJxKItNnJZXEEq6TffMHFLkO9lz6kNc209x9aolsIgwLY8clkj5r0rIvX
         cr6jv4cnk9+RfoY4eWPlNkGAKRWjhzwq1w7R8rGJj1r84gZwiFE4t3ZSJvxN0i0Pua5K
         ZWze3Sxr4NGv8J6Bj3inLcrcTIH20hJC3+L3CBLcKW6b8XH6xt9AcvVYfUBHifh6RdlX
         zA7g==
X-Gm-Message-State: AOJu0YyptPbmygQDOL6ZZbcc3QxBKNnEiV69VVsrwNmM/CDhC1P0Odn5
	pxdGg5IbAgRZVcsI5G0SpVij3TeAWfUiKfjoEd8Mu7oIiZ8wswbK29kjn/D066Le92KVwdRjPYW
	RYWydcZPjZwtbel6EuA6R6osxsBc=
X-Google-Smtp-Source: AGHT+IFoUFJPbVX2Chz655V08FH8cTXPes34sKf5VWlNZL1ArI6+bGs8oPz49XN5SwnSRQv1Q9yFNz/28LaDIOzM2gQ=
X-Received: by 2002:a2e:9d81:0:b0:2fb:5014:abf9 with SMTP id
 38308e7fff4ca-2fb61bad8cemr36882861fa.31.1729156273660; Thu, 17 Oct 2024
 02:11:13 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj93_hwUFyshedbBsX6LhBVv8k_-anA+X-wvTdQ01KCg0g@mail.gmail.com>
 <2413.1729156088511552914@lists.yoctoproject.org>
In-Reply-To: <2413.1729156088511552914@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 17 Oct 2024 11:11:02 +0200
Message-ID: <CANNYZj-q5T5_ZxEEHueHoihsuB62ynAv+vKDUoOHQX2E2=Mv_g@mail.gmail.com>
Subject: Re: [yocto] How to create Tool to update commit hash in yocto recipe
 files #bitbake #yocto
To: Shilpakumar476@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Oct 2024 09:11:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64039

On Thu, 17 Oct 2024 at 11:08, Shilpa via Lists.Yoctoproject.Org
<Shilpakumar476=gmail.com@lists.yoctoproject.org> wrote:
>
> 'Devtool upgrade' typically used  for upgrading the latest version of the software.
> But here I'm looking for the new Tool which can be used to update commit hash in yocto recipe files

You can explicitly supply the commit hash on the command line to
'devtool upgrade'. Check what --help says.

Alex

