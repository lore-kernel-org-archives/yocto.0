Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 42F77EC1E86
	for <webhook@archiver.kernel.org>; Thu,  5 Feb 2026 09:44:00 +0000 (UTC)
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.17036.1770284632630619047
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Feb 2026 01:43:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=c98KRAS6;
 spf=pass (domain: gmail.com, ip: 209.85.219.50, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-88fca7bce90so8945346d6.3
        for <yocto@lists.yoctoproject.org>; Thu, 05 Feb 2026 01:43:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770284631; cv=none;
        d=google.com; s=arc-20240605;
        b=S2N2DEgMAMlTwuNeP7kaD0ClRprGiY+fpH1AQvdqj6d+PVtd92vsZI31HYw91xDH3f
         epV9vBT4c+2iMJSRTXfOAP7GqUICbPE5JbRMrXoqngKSZ7CUwR15D2PDjhyy0t0MKCYf
         YelNz/u8dqDFFJ7BuDHktihg8sElbSyQd84O7d2+WFjBwNa2rB5XVFdblcG4+/O9LqsL
         I+vWEueWLt0uRZuVQmx7/T+iJTyvaj5Z+y5dFP4POdk2+uiH22jJcT8W5DekpwDq7fkU
         +Ob1eON/GzEekHgvzT5FUlR7iwIE2tRZhDYqAswll22MYERSaPWQgxdRNkKSVyZL0ksN
         CgoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=1FVI/8Epb2eG9Op1NILHvh9K7oWc+DMUQgwoGC6bgxc=;
        fh=rfjgLZtr/bfmS3OlihofwPGZWSXYzUhr0mBv9PbjWvo=;
        b=C6whXgWcTo/i+Mogzpxlm+uArkd/OCVecFgu1nT0EIW/MjLd0p52MKmbymlbuqjQqI
         5If1QHFhpMVO9G162DQ7vIfjJocdjEYqAoVmlfw2Pct9yHcww24rauztad6X1weo/Sr3
         Yh67IedMkLi7jy/wx0fQkhz8S1pK+etN17P1aXsINHohY8SGR/Aa23u8Ql6MUrVlYwEz
         GySt3zDyHedfV9WdagpCUccW6ZnwEXaeKz6oQfuHRdkldw35nrQQPAEwdRG1ZZkelKBp
         YRS6Ae02FWdIfDZltClMYwl3izimk/Nw2EQ2uEwiNUj7Xq4EXAp8D+fLm+iQSPnCEBRl
         Be+A==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770284631; x=1770889431; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1FVI/8Epb2eG9Op1NILHvh9K7oWc+DMUQgwoGC6bgxc=;
        b=c98KRAS6iR1wdwGKhlRkcUsEtFw8T9nxU8GD0PXPtOm33iR1WZ+1cFwAbYmKO4R8yi
         pRTwJ1Xmj6cWq7atqtaZ0eN1pPGIeVVkH9oSZ/c8k0tP6We+57U4jAQnxkpgq/6VybF5
         rWJ2wWheeu9sAIOH1hkkSgFtepU/juAui9pdU4aJKQBdpbpwY0IKUtv06NdOouE9a7k0
         IhlQ/yuqAmRxX/mEPRNrd357YpxWCTIuPK6Vs7dTEec0sGmGJdZrHD2lDibYDkaBG8ld
         ws+6FQYZ7W+DPftFOjBgmomiwrS1sB5DdAVL8wMvOFyxKqZfhOhbgeqPEG80wiJLjRI2
         /J4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770284631; x=1770889431;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1FVI/8Epb2eG9Op1NILHvh9K7oWc+DMUQgwoGC6bgxc=;
        b=nse5B7MigSDpqU2MQGKStnLu9JG4V+g7jagLHUqFHpHlsPUtKwDbI1d6zkRQtpUt9z
         t8hQbrUacn8+2tkd7ZfYX/MmR3UzRJKgb4SGO4THg9pqkeraLtpB1FtZpamDtCtf61Zj
         epJfyyUPh6x83ctlbZC8AVsFSqrZVqNBn4EGttUF4QozGCjfHjgrimLV6VeYlnhFhCXB
         eF8QxCjMF+c66KPPQQXHNe/JufKpzFmlNBoBVxE3TcF4O0F7mTWUk6adiDZZk/PdmmOG
         FBjDi1lWzniYnDccmOWNTfiv26RZ0rHyl3cGJwaNtV6DxWG5xhoXrU71aE/Ih1bLI4Ge
         45yA==
X-Gm-Message-State: AOJu0Yx+vd0DlMYGDs5ZQ2mPynevC9631H+/ig8b3yQBZj92Kr90LxdQ
	xcJV6B9ZKuUX/ume6mt3IKmy477Kj3C/FqXIPRlFLmtDUlDhSP0DeTsLbx/EmjWgTyb+Nhxzgx7
	qreAqi0RFugQpFpIwuQDjriynzQH+PpfTiQ==
X-Gm-Gg: AZuq6aLwho8xA6xqPBnsQq/7LI+YSJE0SZcHGnW3z0AlbwGrCEzshOHkfJIdOI8Z6GV
	zATXLsDTKPlwpy/ax8nsMq5ZjMKRy+MmvRZbLSldnq09knR4rp1lBGsQp1M0YdFVW8q+9JYaWfz
	LTC5Z30Y/6n74xbBC3ZyKVTU5qXhDErH3WPmioeRQOiiT/5vJpmmmcZczk8T76onlNxQCvSTTl0
	SV1bccY+NlUbFQ8KkHb3pPRUua+4anRmuk+i8Np1usUAr2AvNxDaDOl0ja2m6Vza7pBf4pFviPn
	WqNsEse0omV7R6BYnH8/fKQgBo9qJg==
X-Received: by 2002:a05:6214:1d0d:b0:894:5d03:5d82 with SMTP id
 6a1803df08f44-895220f11aemr81126856d6.13.1770284631581; Thu, 05 Feb 2026
 01:43:51 -0800 (PST)
MIME-Version: 1.0
References: <nBqk.1770208426472571743.QePX@lists.yoctoproject.org>
 <CAMSfU+7rTEt-8GQ-QsSZ3j-MC+UoaL9QT8Gv1J2OGQpRMPr7pQ@mail.gmail.com>
 <CADkTA4NwGLAthwCQmsg8L4UFG1BvDiBA4-+vuMtto62CSJcEHw@mail.gmail.com> <524987.1770280337052637714@lists.yoctoproject.org>
In-Reply-To: <524987.1770280337052637714@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 5 Feb 2026 10:43:40 +0100
X-Gm-Features: AZwV_QjWdkiClFMgJ9wirqjfqxRwS0jnk4WfoAPPUYcDIcWX70NMmiQC_mw2_vA
Message-ID: <CANNYZj-b-_GFmSa4tvN-eG=jcNDRT-1aU9nShQpbBxGTpHJLFA@mail.gmail.com>
Subject: Re: [yocto] State of crops/poky-container
To: yocto@lists.yoctoproject.org, mns@gomspace.com
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Feb 2026 09:44:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66224

On Thu, 5 Feb 2026 at 09:32, Martin Siegumfeldt via
lists.yoctoproject.org <mns=3Dgomspace.com@lists.yoctoproject.org>
wrote:
> Thank you both for a prompt response. Unfortunately, I am not sure I poss=
es the skills required as a maintainer for the repos, but I'll give it some=
 consideration. I will probably await the upcoming communication around the=
 meta-virtulization based approach though.
>

In open source, skills are never a job requirement. No work would ever
get done if only certified specialists with years of experience were
allowed to do it.

The only requirement is an interest in a topic and ability to learn
and grow; the rest will follow. We'd be glad to see you contribute.

Alex

