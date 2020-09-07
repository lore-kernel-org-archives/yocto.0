Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.43142.1599490431578775863
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 07:53:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@toganlabs-com.20150623.gappssmtp.com header.s=20150623 header.b=LFlmKO+Q;
 spf=none, err=permanent DNS error (domain: toganlabs.com, ip: 198.145.29.25, mailfrom: pidge@toganlabs.com)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 9E7E038C1129
	for <yocto@yoctoproject.org>; Mon,  7 Sep 2020 07:53:50 -0700 (PDT)
Received: by mail-qt1-f172.google.com with SMTP id v54so9942609qtj.7
        for <yocto@yoctoproject.org>; Mon, 07 Sep 2020 07:53:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=rotAL4QCyIGNPUjw6MppgXTHWpmOUZRfEOHXIAwrHys=;
        b=LFlmKO+Q/vrYnVHUzU8VE3/C4NiO2tetclkC/Yw4q0x9Zyqn+81DWxE90DMA1pLZwJ
         gbHn0LSJrFssU0Y3F4sKJcbsI0zg+eUlhJoPZTr63PjwmuHfLas+Wf6Y20OIthGI0xXq
         HqD3pXY1bhDZIcI+WMe9qNekn67B+fSfV4p0Xvy170XatEj4S/yV2f9CHincGzajkGmJ
         p6JK0MUL1ExW2OztiGOwBlaEty+9ynxUg/3CV8Ob0iNd9ZKvLjfYMsPtck6tE4/FB1ng
         ld4q5DdMuPTYVlqSv5ASiaNOI5kbD+Hm6hgyYc69cspBNhTz1gsfbsxq+e7TdrFxEW3Y
         D14Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=rotAL4QCyIGNPUjw6MppgXTHWpmOUZRfEOHXIAwrHys=;
        b=Em/cM80O9Ik8ZpytbCPU81S5/tl5p88yYisQ4KW+joMTMleNl/Et21dhJD4RfJDup8
         RQoHZ0Td3q7K5hxUC0rk0/YXJPGF+TS/SB5tE66WIiMWCnHSAjoBR7NfHd4r/e7R206r
         Gjvc8W6igBEk8bwVsA5t5r4ZPSvYp3NQ56XrohSVrxZltsvUML0WicPOBQnsJjGhmbsE
         EAvO2D9Ru+BNKtb28/DCklyMj1JlVPz/mzym0yY90pJYRLT8OzYQSXDkbLttKp2frOwD
         DfJsYtTFJJUPNmfE/o9jCalaNWkCg+EWWSuKad7P5VHHmar7xsPJnhrjv0HJMcwxa1Zl
         JkdA==
X-Gm-Message-State: AOAM530la8W2042KVKg0YgpMl1zkmqYXFqWdgTspl1huExn9Ee1ZdvGU
	3TCp3Sj298xlG0voIzkATXEhT8hyaJASD6eQLrpgMEDC6O0ZhA==
X-Google-Smtp-Source: ABdhPJynSmC218+WKjNqR+GeerGobfyqCnoWN94YITyNxs5vEFUIIv7shesp9YFF6xjSLgopnBFLZ3lG3C83VrgQOp4=
X-Received: by 2002:ac8:615d:: with SMTP id d29mr20723079qtm.286.1599490429566;
 Mon, 07 Sep 2020 07:53:49 -0700 (PDT)
MIME-Version: 1.0
From: "Eil?s N? Fhlannag?in" <pidge@toganlabs.com>
Date: Mon, 7 Sep 2020 15:53:38 +0100
Message-ID: <CANik3vHZ3K6fKpv3qdw7efugdCTywA1BxAWzPGTtpWnHCBU5rQ@mail.gmail.com>
Subject: Multiconfig question
To: Yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Assuming this:

bitbake multiconfig:ConfigA:core-image-foo multiconfig:ConfigB:core-image-bar

Is there a way during or before the rootfs of ConfigB:core-image-bar
to tell what else was run during execution?

What I'm trying to do is set an mcdepends in ConfigB:core-image-bar to
magically know everything else it was built with.

-b
