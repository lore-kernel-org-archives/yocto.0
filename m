Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68D71C3600C
	for <webhook@archiver.kernel.org>; Tue,  8 Apr 2025 07:40:38 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
 by mx.groups.io with SMTP id smtpd.web11.69350.1744098028127806241
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Apr 2025 00:40:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=XNWnST0o;
 spf=pass (domain: gmail.com, ip: 209.85.222.173, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-7c5ba363f1aso727526785a.0
        for <yocto@lists.yoctoproject.org>; Tue, 08 Apr 2025 00:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744098027; x=1744702827; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gAT6OhvZeZejZ7YddN68DYOCknDkWWabGefG4qJun88=;
        b=XNWnST0oTc45WcdhmeaBWwyG0LS/E+jfLRpCq8DbeUc2KFEGPDzLhjec049LkQFqL4
         VfH2s1L/fH92WT16SZBdUtkXY8amQHg6tuPmE0Yodp5jiGSjg8sNbE9J4FF4TuGuyTsW
         gt0mXFJQ+QPJc4x6pTkuXVjo3m9OaSXtgbuGF2YMrBGqNnGXrN8ASRVnyxmW+Xfg0IHy
         kpMgunTPi++faTctCLX8cBHr/LJFzJDzkx666/F9KlTtbur1rw6e51pl9Nepjo2JLLc3
         gW2uXBPaVy1jdAExSwPvECxnQP98JtQoaM3oKtQ/4MhPnwFFJ49ZU1/2o5Fz1QaX4fyH
         b+Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744098027; x=1744702827;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gAT6OhvZeZejZ7YddN68DYOCknDkWWabGefG4qJun88=;
        b=EmKUA8xAI99g7P+mFvOuhHUj7evA3LEKDGzFu4MTMuI5yRHUXOXcse3tIRuxC773h8
         k6AiVj+6d+w6nnZpS+bDNJ3/Aq7si95AX2EBqIHqjmPI6WPBe2Leh07y27qSaWsFZtm+
         cgcY80E4ctdDD5KYoKC12aRJHyxHKGPM21idUSIQl33uxK1FVZ3cFzdjhaYBYW9ip8Vq
         iFFBXHBMqTPJvjHSEbRp6dO8nWZtEfpPH4Hsis3rXLDrPI6lZpAJRgo/Vqy0ljFAjmIz
         uzOYhIYx3WyRrV+e+OSZd/ioCIUAkyYKN3aLRNHvfCr7b7tMBtnXjra6gjJdE9h7dE5O
         UctA==
X-Gm-Message-State: AOJu0YxtyQMMJ1/99pL5P0qkACH0uP9iyGSaS4Vff+SMbgyk3l4DuS5u
	t0OxEOyIXmw93N+ZKdCyJyOJ6VqPED0qsihhzdYy5gT/2yvw8b9JeoWIzYnvRF036PUsPqn64Wv
	VYBcrS5WEm5PtApnu0FtoPp0e0+m0bg==
X-Gm-Gg: ASbGncvu6sTJqAxdx6OqtFsw0Z8FS1Utdi3FUSlhmx1OUhG6vEAj7h9p3ZaJDLETZ6o
	Hy1LvLorHfk1Zh1MeWZ5DpVxtLi1l6s1J6dqnPiFPeRURIqEjAI7sXSanKdB4mpeK0c6ezFpSsN
	7ZVSxTpt7HUlrxkxAarfCXUEwziS7BgO/ft5C/8WKY5dsIOXPo4k12fSsMGhQXz2F9zEKPe9c=
X-Google-Smtp-Source: AGHT+IG+LqC/v+8QWDblRLMvyPbHN5b5UpQWBAb5gknEFtdpk4r0x7ZeNcKA8PzO3RRr+aYAVJTS2gkigK+e+ljJmmU=
X-Received: by 2002:ad4:4eed:0:b0:6d4:238e:35b0 with SMTP id
 6a1803df08f44-6f00df142femr243419206d6.17.1744098027197; Tue, 08 Apr 2025
 00:40:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAJo0Az5-Wy8RyJMcNG=0XynEaJ30YUr9eRXno0ZC6yKB4bQYLg@mail.gmail.com>
 <183447646FA7BED4.31078@lists.yoctoproject.org>
In-Reply-To: <183447646FA7BED4.31078@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 8 Apr 2025 09:40:15 +0200
X-Gm-Features: ATxdqUEES9Mj6khOtz8L2I4gjFT8AxdqpPdqZvTwszPx3Sf7goGH7Aj1SlhmP1w
Message-ID: <CANNYZj95YOjb4aJV0nL+DZohQ2zdiHuh1xzQ8T9gQgpB3UwBxw@mail.gmail.com>
Subject: Re: [yocto] [auh] Setting up AUH for non pypi recipes
To: yocto@lists.yoctoproject.org, alex.kanavin@gmail.com
Cc: Tom Geelen <t.f.g.geelen@gmail.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Apr 2025 07:40:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65115

On Tue, 8 Apr 2025 at 09:30, Alexander Kanavin via
lists.yoctoproject.org <alex.kanavin=gmail.com@lists.yoctoproject.org>
wrote:
>
> On Tue, 8 Apr 2025 at 08:51, Tom Geelen <t.f.g.geelen@gmail.com> wrote:
> > The git configuration necessary for AUH is correct (otherwise other
> > recipes should also fail). The hash it uses is correct. So can someone
> > point me in the right direction?
>
> S = "${UNPACKDIR}/git"
>
> This is not correct. S should never point to inside UNPACKDIR.

On second thought, maybe it's actually ok, and the bug is in devtool
upgrade. I'll look into why it gets confused.

Meanwhile, set S as advised.

Alex

