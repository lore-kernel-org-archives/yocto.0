Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 109BFD21268
	for <webhook@archiver.kernel.org>; Thu, 17 Oct 2024 09:23:04 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web10.44371.1729156979481974463
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Oct 2024 02:22:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=m9X2HHoT;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2fb3110b964so7193881fa.1
        for <yocto@lists.yoctoproject.org>; Thu, 17 Oct 2024 02:22:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729156977; x=1729761777; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=se5ycg1ELZs8rud3GyTZxd6/lybevmatVJOaJ6VwKTY=;
        b=m9X2HHoTuftOtf9kjQ1/h4pNuw46Mc8WEDXVDLsCmxtFnrIkBvqlOWMUYtXLV5XsKI
         WngoLqmrTPxmocbn1gpSZK0WGIWpJW7thpo+vHj5pjxWS+LcjkJ81pL3AolfRHDRUN5Z
         L32HN52bItrSpNN/OHFeRvQEw44redZThszJPhSCo6QH3Mc0PV1Wn7NjU054fTKDf+t0
         2bBwri+WCNSOX4oQNfniSwRWkLLVTPMe6o4qOiIhKdWYwHdR51oOUN7hJtFOos+DoO6H
         sJ+mlI33Am3X7qGvJI4RwOAzqp39F2Qxs5cV917oHuuu2NiISG4QDIPpiquKR4oy+dRj
         iGZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729156977; x=1729761777;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=se5ycg1ELZs8rud3GyTZxd6/lybevmatVJOaJ6VwKTY=;
        b=acA3BDcIZtv5rhFwHOULB4N6AyCSnE//oj2ocyOVx3waOrThm0TeTZ9+m+pUIKUZob
         Nj2VXsaZIEPAI7N5R4RVSyftzcBAyKIIfjveVZ/ykK06fLnRpF1/WAqjoVAmSA7Lnr6r
         XCryUIepyRLmzyzw5sAM7vwWpMdmSdBnInyX1TDa4uUbbHodSp7qtF5WLN51kfDDUivj
         RAEs2Sy5fz6mTMMGMAvZ1U+PW0tE8r4WPuikNz7tApvifFGTQ6Xom5nhq61hc7cyD65e
         EdGUJUqsKrw0yNOhhSK3T8E/rst1+wXOfX8epVcpwXfZl2JyrR7Xevvdd8EtlCVx3pbt
         thng==
X-Gm-Message-State: AOJu0Yx40tPT1MOIoT4U9cVFjjjI3+wdoM6j8nGZ0iO3ea5+mHcoZn0G
	Tqb0LhYGrxXX/D6RCpwzlbDz8iXrW1NW6GoUgC3wYMVAKmnhMK6G3rpderzX7Z+NWxpVnfokm8l
	+rGt6NT6g94+hDsdh00pu/jniyw8=
X-Google-Smtp-Source: AGHT+IHCUb6xxkY1fghlU8QdyCHJykQm5kfSY5ut2L5DHv6Lo3JfnbI9yUl1XZpgWLObYFGOR8FYvP7OtlyRtgAZAdc=
X-Received: by 2002:a05:651c:2127:b0:2fa:ce00:3689 with SMTP id
 38308e7fff4ca-2fb3f1650edmr96654481fa.6.1729156977401; Thu, 17 Oct 2024
 02:22:57 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj93_hwUFyshedbBsX6LhBVv8k_-anA+X-wvTdQ01KCg0g@mail.gmail.com>
 <2413.1729156088511552914@lists.yoctoproject.org> <CANNYZj-q5T5_ZxEEHueHoihsuB62ynAv+vKDUoOHQX2E2=Mv_g@mail.gmail.com>
 <CAOqiPbJMC4qxJu8yL8Aa+ZRdDuzTNbz7DYBVAC=LFAbzD-pJOA@mail.gmail.com>
In-Reply-To: <CAOqiPbJMC4qxJu8yL8Aa+ZRdDuzTNbz7DYBVAC=LFAbzD-pJOA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 17 Oct 2024 11:22:45 +0200
Message-ID: <CANNYZj8Vg0ed5WaeeC4LvD5M2Ka6TbKSdsgEPU_9cezoTd-LvA@mail.gmail.com>
Subject: Re: [yocto] How to create Tool to update commit hash in yocto recipe
 files #bitbake #yocto
To: Shilpa <shilpakumar476@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Oct 2024 09:23:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64041

On Thu, 17 Oct 2024 at 11:18, Shilpa <shilpakumar476@gmail.com> wrote:
>
> For every yocto recipes Can we supply the commit hash, instead of explicit supply do we have any other method

You need to explain what are you trying to do in detail. What is the
problem that you need to solve?

Alex

