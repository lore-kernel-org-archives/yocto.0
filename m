Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.10057.1601451755820396799
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Sep 2020 00:42:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zyeyurjd;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: marek.belisko@gmail.com)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 343EB38C06B0
	for <yocto@yoctoproject.org>; Wed, 30 Sep 2020 00:42:35 -0700 (PDT)
Received: by mail-ej1-f50.google.com with SMTP id p15so1361594ejm.7
        for <yocto@yoctoproject.org>; Wed, 30 Sep 2020 00:42:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=EPqRF+S26nCDxCwQgpYGdKYaX8DK/Kg/Ml0IUOYMn8o=;
        b=Zyeyurjdnw0dBvmSka5VDpyFOI3ai+OKNonwXINCVCKU2yXk72lUH7hIzEXbIe67r1
         Mwf3DW9xJQm63mhFyp+OxuPVImOfGzA/jOY1rAhKcAt6hQH+mG+36o/PjIvUS8LkIYpc
         sG9AD4TIt/JehstJjmn+jQykBTZPcJK55dL5XypVR40IAhZmdsMhskwMP1i2YUFTTdU4
         Kkd6it7Xcj2dDjgIU1wNxU+R8RxEmT81U3elXZ4gFO0SuU+Z7f99T+ButLvmvYFJDmLt
         ZMneOczjywuLRA0MqTToWPfg8QwRYw7XC1jh7cTYAod00NQHf056kAfCKhnQ59TCG2OG
         Z9cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=EPqRF+S26nCDxCwQgpYGdKYaX8DK/Kg/Ml0IUOYMn8o=;
        b=SEJX0BJ0fCj83jV/AnGu7IFzURyLsQE429sf3YWdlLICsW5cPhwiaxqd1rNTBkG+2V
         q08+SUTbu+fYRegZ6Y2QiWcJx5xodz9ooQuA8HoXLhfOKgUgJGgvHtHa8oOLep1mGG3P
         xyCtDHoygNDxoQdVqtKU/NwE7V8WvI40WRhvpVuo4+HqAMhyfkWSlN4jS2hhEOEgal3m
         oaleYHG1nSzGWUNKHoplE4DN24ouati2Knl2ksNpA8KHcCMJDXMek5CxiEfMqIyVU5jB
         KgcuNT9fX7y/6jOGfZ8WFlbKydt924UC4/r1nyKgWMeo7sVbT2bQ5haX8i2Ipmw+rXmg
         i2xA==
X-Gm-Message-State: AOAM532kCMw4hOwQwE6QTEDtbfLVXD+KMyIQJ2/doMx+P+bIZLzrSn8s
	mfFsJ+fgPKd1dgud5Gq93xbaFBV2Cett4Dn7k98dZN/jKLc=
X-Google-Smtp-Source: ABdhPJzHoINOZ3+BpziCLDdxkFn+cvkMLndqs52P2lTVwaw3bb4CSUoNRZhhTxrbB6LN0Orfa0Nlyjapq0D6LD3M1HQ=
X-Received: by 2002:a17:906:5812:: with SMTP id m18mr1602823ejq.204.1601451753363;
 Wed, 30 Sep 2020 00:42:33 -0700 (PDT)
MIME-Version: 1.0
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Wed, 30 Sep 2020 09:42:22 +0200
Message-ID: <CAAfyv34GQkg9=sqsJONK3JxPF-CRdN+jxEpg3zG+LqewdTCa8A@mail.gmail.com>
Subject: development package in rootfs
To: yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm facing some strange issue that after my image rebuild I see in
do_rootfs log that the -dev package of some go application is
installed. Which is not what I want and I'm not sure how it get to
rootfs because I don't have explicitly set -dev package. Any ideas how
to debug it? I'm using rocko poky release.

Thanks and BR,

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
