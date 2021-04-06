Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.8897.1617694450373327921
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Apr 2021 00:34:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ROvlAft2;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: jupiter.hce@gmail.com)
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 118AF38C086F
	for <yocto@yoctoproject.org>; Tue,  6 Apr 2021 07:34:07 +0000 (UTC)
Received: by mail-yb1-f169.google.com with SMTP id i144so15177615ybg.1
        for <yocto@yoctoproject.org>; Tue, 06 Apr 2021 00:34:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=XEJLD3FP50KGNNkoeIgZgSvbnGHL0MAEwOPR9Uihb9k=;
        b=ROvlAft2XIt7FsfeiYDNt9Dew0uoOi8Hnxld5DO+DZHWAOKwmYDaICYxdzGkdZtHwD
         +uhmI04b6H2bqaquTo2NKcEDskTYiNm0ciIkdTbH0IFvYAssCqSDFXjvf5QtZYeJlPk+
         ei5XejkZ+a4aymlpWHoC/fhhGvBPd6Udy7hOadLgIUbpBAAnNFTsHoDq47n/keWDK/rz
         2+NL+r6A6MewUsHPl1EgMN/qjZGh4n6ZU+z2SDW1lNXXRAsL4kLDrN75ba34y5FaBPV7
         LSNaDbGf+osBRBhenxnzH5tCmU9XGQ/1BSU29CWPawWzxErw78fPCH9Jg+/gkthlbNyc
         +Pqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=XEJLD3FP50KGNNkoeIgZgSvbnGHL0MAEwOPR9Uihb9k=;
        b=uaKarSu3eb7TAw+jg20FFCYkgl7pSkLn17clN+1MHhM7qeiewaSpJRtTli2ufxZ5Dy
         8Iw2LZ7Cd+rFp4Bu7DFimmhnONOwYPXiOWspfZMcheQSyN8r7heHcTevuD8AMKwwRlgi
         SRbuEVoZVBNH4oVI7lpNDhha+iqINexdNkq2kDC+i7YpMKDJsbykaNO9aYgb2Bh9Rp5n
         EFkZBaMbdxioy5KzPFJMDUTVSdHpoYn3b2AFJz0aTNsl/owjDVinj9aBAno4iQt9qdcq
         aUD3JqIFxXxufdQuN3pxd6y0eqMn14OgYD8Rt8k+lMxaWDUt3vviKIMsCTDcfOedtBOt
         cdBg==
X-Gm-Message-State: AOAM533UWz02R+ShhlkFJAc2bYzt21h3Qm0PQwvaLBB17cf7DsVbK/6D
	3UcgyA8b5ZvTmR6DmUGvQo6jEw6b/OijT/nGcQZVu3RsrWQ=
X-Google-Smtp-Source: ABdhPJxCccxnQZbXoKpBnJF9HDRjgkiVR18oLuz17JjEECVqGx8Vy1mXUbbGPRMEX2dSXzQjkhhc+q7q6eDwTMMNbt8=
X-Received: by 2002:a25:8407:: with SMTP id u7mr8045470ybk.156.1617694445381;
 Tue, 06 Apr 2021 00:34:05 -0700 (PDT)
MIME-Version: 1.0
From: "JH" <jupiter.hce@gmail.com>
Date: Tue, 6 Apr 2021 17:33:28 +1000
Message-ID: <CAA=hcWRmH9m3ynX9w7_FXVfeK=ofrbneqZ7Z8QQj6ShftESteA@mail.gmail.com>
Subject: WiFi P2P support
To: Yocto discussion list <yocto@yoctoproject.org>
Cc: Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I am building WiFi wlan Linux image on Zeus using Linux WiFi
linux-firmware-sd8801 and connman, I need to add WiFi P2P support, is
it sufficient to create wpa-supplicant_2.9.bbappend to enable
CONFIG_P2P=y (it is disabled in wpa-supplicant_2.9 defconfig)?

Do I need to make other changes on OE configurations?

Thank you very much.

Kind regards,

jupier
