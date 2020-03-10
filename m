Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.2060.1583832219665821048
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Mar 2020 02:23:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GUx9Iaya;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4057EE0180F; Tue, 10 Mar 2020 02:23:39 -0700 (PDT)
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
	*      [209.85.166.48 listed in list.dnswl.org]
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com [209.85.166.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8913E0180A
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2020 02:23:38 -0700 (PDT)
Received: by mail-io1-f48.google.com with SMTP id m25so12013089ioo.8
        for <yocto@yoctoproject.org>; Tue, 10 Mar 2020 02:23:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=tY8xCJQeIENbkpKdIf8UwhqFnHgMMsqgv87Gi9Vs3vk=;
        b=GUx9Iaya7NnEkngdimgjFjn2SeZJilW1QOXCJ4rL6gVLfhKP8tW1rjEjt+nq4zajYk
         iBd44g4mhcL+Br6zFQcBwh/qdT+4DeD/lXr/HSF9TxS/EJHgnr9PnfrauB4oKZ50gfQh
         1TCkaltJODDSrgH7rnif2W6C2vJxyOYgfbtmDADi6Zf6obV41n5AaYx4ABOOztCymHcr
         EkJ2ooU1WceO6LRnfCjnRjpfH4lYrbRUjZMQKkEvc6a1hN0V9G1Mm0DqSkFOkx/ik+Ac
         W/GtKXdpmL4FjgssrJFw6LItM0XfoM7O2cDVoz+wu5edkKWsbLUah7QmfsD9ZK/9Uk3Z
         pt5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=tY8xCJQeIENbkpKdIf8UwhqFnHgMMsqgv87Gi9Vs3vk=;
        b=aqsr5m7NxEUJPreh539orHwGqvcQ2RzSbTbqQTLNhfUEyvF0FixMHnzxMvUl/fQF9N
         7U6THzCrjnqsUVKwSYgfdrTFzz9aTh1Ekg0fM6HQtLIUQRnTTDs1vbbobLsL9doutgxV
         A5DZRkP5poIyAIC/EZiyFsBLfnHIL5pNdsFyyWc87AppRc6RRYImG9zki9yTFVyLkTLZ
         ZKBrS0E1NetcJhnoFoYdLB0SAAVtXNgzKgCMx6+7fAb9v3bhG8vxAdaX25THh/aqLYLv
         M1WoKVV5UrCQpot1rTt6Rmrc6+9gXwhQ1nVOhLAVCt5eQ5y3zXt+IZx0UVwKP8AebRGm
         FgWg==
X-Gm-Message-State: ANhLgQ28N+hBXdKAXXbKRHGJYPKKon2q9wxLwcE//ydoqCzVAoH8qV+j
	UtxHJI5lnZR9ukM6M2oI9tT1fLl52BvzskN7MB8VQChL
X-Google-Smtp-Source: ADFU+vvEuW/KgMRHhGKD4y9Pld/6VmutvYASZPmYWowCNiMzeaDavIDDSed6TGmd2KZVzZb3C2kTne5iDjqQzWSZXOw=
X-Received: by 2002:a6b:5406:: with SMTP id i6mr11105310iob.188.1583832217860;
 Tue, 10 Mar 2020 02:23:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:ed34:0:0:0:0:0 with HTTP; Tue, 10 Mar 2020 02:23:37
 -0700 (PDT)
From: "JH" <jupiter.hce@gmail.com>
Date: Tue, 10 Mar 2020 20:23:37 +1100
Message-ID: <CAA=hcWTpbcM=_WCD6eRfD8jbq520R4jo++b=wC0m12d0cEJtQw@mail.gmail.com>
Subject: What is the Yocto / OE recipe for u-boot-fw-utils how can append it?
To: Yocto discussion list <yocto@yoctoproject.org>
Cc: Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I could not find u-boot-fw-utils recipe from OE git repository, when I
added it to build package, it did build u-boot-fw-utils/1_2019.07-r0
from git://git.denx.de/u-boot.git, but I could not make a bbapend to
it as I don't know what is the bb name.

Appreciate your help and advice.

Thank you.

Kind regards,

- jh
