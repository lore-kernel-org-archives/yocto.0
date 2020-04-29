Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com [209.85.218.67])
 by mx.groups.io with SMTP id smtpd.web12.1085.1588136986441794543
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Apr 2020 22:09:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=PgatTMPe;
 spf=pass (domain: gmail.com, ip: 209.85.218.67, mailfrom: twoerner@gmail.com)
Received: by mail-ej1-f67.google.com with SMTP id q8so539280eja.2
        for <yocto@lists.yoctoproject.org>; Tue, 28 Apr 2020 22:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zRDleoIr+sQi8fTYSZEkpxL3z8HodNUDadrCezFmJ/E=;
        b=PgatTMPec5y7d3ZmvR5bBsG5PJFL9sTG6EAiT1/PX1Qv6EfBaEZSt0CI69YJ0pL+EA
         fftxY5F4+6Jzk7y2xROM4EECbzFIxc7YSEe9q5HBUAMsaPp5BmCetgDaX4O15datovS+
         ojIgAscd2GK9iiadqenVISoJpSXDQP2w4lzvgE1H6NDODmmNn2HjkSUdX8R88LtRrwTT
         0+q5ibdH+77To2eeaiZ6i2Di2t9s/mLgEV5/hHW9OHSFudeC0CIS9D8jj7bMwAlcFsQK
         3hg1olrHfZQe7Xd7REgyMHNQx2uoLsZiYLBsDjUFIu5KgUwFOCN7n8vo2i0sEUCK3MYY
         /IcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zRDleoIr+sQi8fTYSZEkpxL3z8HodNUDadrCezFmJ/E=;
        b=k4oNNihJQXPyqYYBUtziRxDytvStq5TNBiulbG3ZaTpeWSLrdOeVSnoaAjRYxPh/Tr
         QAK9sgnmWSO7HCphMtVs5pWp8xPibU4ZJomrsfpuAsW25YCs/h+GvZA0pub2AIq+A9ar
         BKxbICqqMEval2D2sKw8tvchUYRZzHoUGRRmxFf74gWzoS3KBcSbWMvr8nHVM4STmpN7
         yNmgRwt6N6CDOHwLthikifmOF9pRad/3Z8YViAPC3ivqcMEctpEijZ8sb8miUCOJgxe6
         ZP5CmM8ccHu1TcLF8ERPqRzyM5YCqbSXGn5CHGOeQheReFKNsOCWkCn9DFeTUCNY23BY
         2Mgg==
X-Gm-Message-State: AGi0PuZSdJuImW90nQkYSpUJV1Wy3VvEJz3GCzgLr4rX782m3qAWZTlV
	jFL/orPgwgTc0cyLhKdi76cPFWseuy/OdXnNRgg=
X-Google-Smtp-Source: APiQypKtpxtAxXUBl7rx+kmh2BZhF8i/nPld6qzX7ov3SltYQqnAFJR32/4fkd9OnEUQOxgIHrhNZYdqM3BuFpab6HQ=
X-Received: by 2002:a17:906:7f01:: with SMTP id d1mr980870ejr.49.1588136984868;
 Tue, 28 Apr 2020 22:09:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200427140751.11628-1-JPEWhacker@gmail.com>
In-Reply-To: <20200427140751.11628-1-JPEWhacker@gmail.com>
From: "Trevor Woerner" <twoerner@gmail.com>
Date: Wed, 29 Apr 2020 01:09:33 -0400
Message-ID: <CAHUNapQQ+0xS+Ei6UzyY1zAw1yDsTN1hPM=00HQ9t9Q0qq9QBQ@mail.gmail.com>
Subject: Re: [meta-rockchip][PATCH] arm-trusted-firmware: Upgrade 2.2 -> 2.3
To: Joshua Watt <jpewhacker@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hi Joshua, thanks for the patch.
Applied to both master and dunfell.
