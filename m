Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.2179.1578307870760852647
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Jan 2020 02:51:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=bmRZ6MIY;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91387E0145B; Mon,  6 Jan 2020 02:51:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (jupiter.hce[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.182 listed in list.dnswl.org]
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com [209.85.166.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45C65E007D4
	for <yocto@yoctoproject.org>; Mon,  6 Jan 2020 02:51:10 -0800 (PST)
Received: by mail-il1-f182.google.com with SMTP id v69so42162902ili.10
        for <yocto@yoctoproject.org>; Mon, 06 Jan 2020 02:51:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=wKw03yYcks2uX2AMUa/Upg0DYDZa+MycwviaRdcVDag=;
        b=bmRZ6MIYAarkK9ttw/3XeSIw3zv/eFsp9upyVeoNqZhy3nw1W83/LSMItBiDpWSIns
         mibWFWu5JDUjD4tda54JuCZmRroX6/Lv0swmmlbG3Kzl0D2azq3OrMOW/4Kqu+KvEw/T
         zjGmkf4i1anL+k0oynJ/03q7pCmV3RE+BQnHC0fjigj8xuwAdRnFzz/tax4vraiG+hHu
         qtGsLn7XUo7lT1TjAyIi0Kh1Mz03YiUZ1sXRAu+B180lM2ylK4r9WJtFXR79GiZR3p7v
         Cs+d4YgsLQ5bkHEWKL8gf93bsIUbBYZZUldToY0iANEQdCYf8cG/AR1YKktcPpf2uQFr
         as4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=wKw03yYcks2uX2AMUa/Upg0DYDZa+MycwviaRdcVDag=;
        b=GSOq7gP+WxWY40NOCDnD4jkQ5zQs/sShZIuy+Tr0dOWHU19n5LgDWccFSXBChEuJEs
         /epltw/2wOO3cmU37x9qvlYx90JFY8wTgjS2/FhUINyQ0bbmXUyVHbAJXvEoJyItstvj
         s0nr8MNESY49o1vXeBNvNpMav/6HLRvf6b+5bawt3WAiMpJ8W0FQ6uVnaCCvlVLBqRZk
         q16Nh2YQPpjpfQTpL1/5yAA0HmmfAEBWDkxUEEUQpXgnmiAPVsQZtv1s+vPH+ZhBClUZ
         85DWaU3+3Q+8x1FWonO/MG8XNLUfaokYTof0sVEggzWrEtzYyFjqXTJNEj9erKW8BU1y
         faAQ==
X-Gm-Message-State: APjAAAVb3ygRIL9tzJi/hGkMhihWeAdrXTHy921ZCWYQUox/OYq1Xm1v
	8JfN27NkoFDkx+8SCgX492mpDyn2GhR+pHxkn8qFPQ==
X-Google-Smtp-Source: APXvYqzyTrMxkNdhUXmMvIp8R+p0N+bhk+/nYIFBohWN5qWctP0xvTuQMLkvo2SsqtzXDZmGRZRACOhsHarJ0Ys/MIw=
X-Received: by 2002:a92:ce85:: with SMTP id r5mr87870926ilo.301.1578307869590;
 Mon, 06 Jan 2020 02:51:09 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac0:aafc:0:0:0:0:0 with HTTP; Mon, 6 Jan 2020 02:51:09 -0800 (PST)
From: "JH" <jupiter.hce@gmail.com>
Date: Mon, 6 Jan 2020 21:51:09 +1100
Message-ID: <CAA=hcWSNCykfN2mE6HbWzFuWmMUXq3jMhNZQQP5qqJ4T8YMPAw@mail.gmail.com>
Subject: Update connman to build connman_1.37.bb?
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

My Youcto version is Thud, connman in oe-core is connman_1.35.bb, I
want to update to connman_1.37.bb. Is it possible to update connman to
connman_1.37.bb without update the whole Yocto version?

Thank you.

Knd regards,

- jh
