Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.1972.1602892065850612112
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Oct 2020 16:47:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZUT1yByY;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: jupiter.hce@gmail.com)
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	by mail.yoctoproject.org (Postfix) with ESMTPS id BCE5B38C16C4
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2020 16:47:44 -0700 (PDT)
Received: by mail-yb1-f174.google.com with SMTP id h9so3289943ybm.4
        for <yocto@yoctoproject.org>; Fri, 16 Oct 2020 16:47:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=uMlQa/O8Av/0pnkp6M2f/mWHSbGDTnhjt5ZxSLIygT0=;
        b=ZUT1yByYjrXo3vJ3aO7F+Tk67vVwe0uHCSvSHVMWUafJhlTZh8J+OO3E4TtBC6xkEl
         4cS8WTmaVd/pcAM6E6oTZ6BlTnDMS0uZV0Az0ECVAjg/pGdQ5uznK44VM6+pD68NekUq
         IcKOx4XJqypp1xx9fTnpZdUZMxlvyMU8TrJj4dV5Ggdscd9mkZo9fSbCz893Kd1Vd+YX
         wnX/okjBN4vsXpBxkXMpz6OhUd9n1QZpu/mBV32tTUNIWHsSGjGLUJGA83Bcpf0qgeyQ
         +lkrdHF6cl1MTPv+65gEg9Cax6wWTOIw0JDFBTqwa/adqXiK/WLDeu6cfepZYMoeUcB4
         etPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=uMlQa/O8Av/0pnkp6M2f/mWHSbGDTnhjt5ZxSLIygT0=;
        b=ExW0M5lc7ny1yDgy6gqSOg7sa/33uQiqrDREuk9tUMeH9Kkwcfji/8/GutUTDVpo4R
         DznUg6GxUhvpTgBQ8jO3A5NNbQAHtXlQODEUwZTSYDMVSND7XH8R7LglqYNwla+xQuYl
         HPVu75Tlcpx87hXyYtIZyXM6eNwyuNm/HWNTGNLXB+YE70yoE+mdzmxOPlhXTMGRaPCD
         n82A/Z2ujH6ZNoJO+cZtRXybxRD1f0jjcXDerEMdx2QOnyWJbJyNI4sqsy1lgzQ9VxVS
         EskbLZkgHAvs1iNRWrjAXJkTxiJECmnzvqld/aZhEs6FNxFmihP+3uJah/p7XRM6DdNS
         4xqg==
X-Gm-Message-State: AOAM533rypeyk+8pNYczxClYvl+E2c5tXW0FLvK/ZUwZr6DewF1Zqzee
	5mFQkHs6v/RWv+DDAdg/350iRo6nssptBZw5ABLaMVHheQo=
X-Google-Smtp-Source: ABdhPJz+P/DNspuHODCB9vHmAc8h3woLl5RceWrmCVhZNLGRGdmfjszVVXdN1Bl+HE4HwXhGSEMtBX7eYUtDuZhv5EU=
X-Received: by 2002:a25:d0cc:: with SMTP id h195mr8997831ybg.74.1602892063486;
 Fri, 16 Oct 2020 16:47:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a25:1882:0:0:0:0:0 with HTTP; Fri, 16 Oct 2020 16:47:42
 -0700 (PDT)
From: "JH" <jupiter.hce@gmail.com>
Date: Sat, 17 Oct 2020 10:47:42 +1100
Message-ID: <CAA=hcWRrcvYFgttxrSghkAf-ZbX1wV+b2jk7WGYcnhgr30VXCQ@mail.gmail.com>
Subject: Where to download znus 0011-linux-user-remove-host-stime-syscall.patch?
To: Yocto discussion list <yocto@yoctoproject.org>
Cc: Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"

My apology if I posted duplicated messages, gmail is getting unstable,
the messages I posted to this list could be not found in Gmail Sent
Mail folder.

Anyway, I failed to run zeus on Ubuntu20.04:

-- x86_64-linux/qemu-native/4.1.0-r0/qemu-4.1.0/linux-user/syscall.c:7657:
undefined reference to `stime'

Googling to find a 0011-linux-user-remove-host-stime-syscall.patch is
needed, I am not in the position to update from zeus to new versions,
a quick fix is to apply the patch.

Thank you and appreciate it.

Kind regards,

jupiter
