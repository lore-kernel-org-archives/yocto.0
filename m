Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.34037.1607950594452856020
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Dec 2020 04:56:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NinkNgYD;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: marek.belisko@gmail.com)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by mail.yoctoproject.org (Postfix) with ESMTPS id BB62638C088A
	for <yocto@yoctoproject.org>; Mon, 14 Dec 2020 12:56:33 +0000 (UTC)
Received: by mail-ej1-f47.google.com with SMTP id g20so22345012ejb.1
        for <yocto@yoctoproject.org>; Mon, 14 Dec 2020 04:56:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=rd/9/oyfIrNxE2Isu4SyR7CmEdw+vEmJQPLuT8Llv3M=;
        b=NinkNgYDnuBTalN07UN78kBJ0vvlExu8HB2TJLJHkKqCh7lAyKIsFBy62xxmh8xXta
         bo8OM0cbbSfZVEswQJFG3dDRVD2JTQBiRvGaqEH5FF6OBRffbZWTuYZiJ+ZfgkDGZwo3
         GA7okY0sulUSNi/ikYFN5DEolK0JNBqW8FUiC8c2wTUX1iw4TMOMKqQeLgxhNaDkZ/EH
         In17di9sk6p8IEIuNyGA/C2xDte95JjDDSQ/DF3+kFiKt5PVAde7MsRTXz1hSkWyDT1d
         mpy0VBfi0npW/ARjVwvLPIA4O+t7/jVDnyqGf5MMQlas07JFgk2rWEKnns9Fk9Bx0y2W
         BSJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=rd/9/oyfIrNxE2Isu4SyR7CmEdw+vEmJQPLuT8Llv3M=;
        b=mtRXQYzF9o6COTnGLjF8/S1V8VsnpWjGoRMuGN01tGXFBHDIInyoiLoJz/aoAwvMac
         QNJF7dUAJ5/7x6aIgqczoXftUihtr2O+xKTuczkSNjzzwevCTkB4S4RiC7UxOLsylE9f
         Zo/a8x3sZHc66b5iB14LDyPTMTwVHx9t92A3SzrJuUO5IaBHgfgQ7s1b+8S2by4eZ+mG
         ve/v2zPmzLmSp04z4hVHcw6fUaOmgdig3nLSHPUmD/3ZtggBRWgJmCp/8y2taTnNx/Uw
         SfLEeM0ZLKc5Hw+0zjIOiQlEn3Myq6aSBrrGVE1lAzTfENc/rQywCqNTZkJfJyZOtu18
         LMPw==
X-Gm-Message-State: AOAM532zEFYopG5F14q6T2QbkBw5dcAVTvCMWrlhAGVDuozlijQOjNZz
	IsbsEeSVXJz2KCxcrjQ1McAMF8OD7KXWe6bnIXNNLfwT22c=
X-Google-Smtp-Source: ABdhPJzESvNnTr02YkmxWgj4X3IS2YtW2EN7vKzE+LeQnDLOKcBH0F5WGBSqt4LWDSUFqK+YY9g8TtMS3WHtInd2KLE=
X-Received: by 2002:a17:906:a244:: with SMTP id bi4mr22541600ejb.59.1607950591536;
 Mon, 14 Dec 2020 04:56:31 -0800 (PST)
MIME-Version: 1.0
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Mon, 14 Dec 2020 13:56:20 +0100
Message-ID: <CAAfyv34BX_E69-9bPbT2NRikT+uXHSsNVvxg29Tsoi490ameig@mail.gmail.com>
Subject: [meta-tensorflow] maintained?
To: yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm l;booking for a tensorflow recipe and forum that meta-tensorflow
have support for it (also saw that gatesgarth branch is there) but I
cannot build tensorflow + tensorflow seems to be a bit outdated.
Anybody know if this layer is maintained? Thanks.

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com
