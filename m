Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.10429.1580985587848416761
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Feb 2020 02:39:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=PvdCgnuF;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0686E007D4; Thu,  6 Feb 2020 02:39:46 -0800 (PST)
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
	*      [209.85.166.194 listed in list.dnswl.org]
Received: from mail-il1-f194.google.com (mail-il1-f194.google.com [209.85.166.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B641E007D4;
	Thu,  6 Feb 2020 02:39:45 -0800 (PST)
Received: by mail-il1-f194.google.com with SMTP id f10so4646601ils.8;
        Thu, 06 Feb 2020 02:39:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=/1qQoGyod6NdQu7OZ/NgoMwp8aI6nX0JbHgkGmcofc0=;
        b=PvdCgnuFEB5MRnAe0ng+KViZnUAm0N0MqGvV2xcBQOmVW737HllBOHKFD+YP0B/9I/
         MVNW+J8Qv+ws2NI2lBc8yrL0+jJlrTj7MHG7hnghyM7qRwJopKWuqZC/maImzQt1u82f
         3TPxwDau2aFSUkvVlNgi/2PPafEBC4gj4RtuKozwM6bnDOHJt2FvuS4deD5ysRMqr5NU
         Az4cM1BzIdoTX1z1uhbh1eHYGO5TxCzJMiK6t6ix6x5PCQWt9Nh8Z2DwuJR9tIvOJEue
         APH23BqUVHkdsHu3EgdDnL3rOr7dstE7ZT5M2AzE4OLnIASW+QavvsUBR31D2zjNFEM4
         5PjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=/1qQoGyod6NdQu7OZ/NgoMwp8aI6nX0JbHgkGmcofc0=;
        b=Pu3RGUKE4p3kOC1W2YhnCS9sG8N3w7e+R8aX7M8OW+UaIN/krFiVLAWImwSOWdSt/7
         7SBLzHllqGtzdoWmLJeNAgmW/9QuYZN57gJJRr9xYHpkFipEtbsj2/h2iBtIQg3tMJUP
         mu3qxI5JEaS5R+mccvL/s03Wah4XqqOd7YmHYadZKXfYGjxJMz9pGInwCTzuAa1LkpBH
         gfghdJWYkFmMCJ4+g1tpOhIvvTS0TvqWXSWKtUDmiqVQmMSok7sh0n/Su+kuC+nS9z2c
         0HuDNGS4V5xDfwHw2dId88PSX23S2XVD939A960X1TiW7xBmIqyc26aeJyu3ZaEtKVsz
         xvtw==
X-Gm-Message-State: APjAAAVpy9+O3jicGT+n4YPSSO6kCKnFZhFlot6TOx5PCCrfHPJGh+4l
	VVX+K01Ql7Zj1aqTcpCyKNFpiE43p10DsZk4TL8=
X-Google-Smtp-Source: APXvYqyIS7F+RLWtmTdVq4YPRc+8dNbmqrdzkbdzKKdI5hQfmuy/OiKfLOnmTaRQje4MYbYwe+yd6vDxTO27aa6Y2CM=
X-Received: by 2002:a92:d5cf:: with SMTP id d15mr3066998ilq.306.1580985584782;
 Thu, 06 Feb 2020 02:39:44 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Thu, 6 Feb 2020 02:39:44 -0800 (PST)
In-Reply-To: <CAA=hcWSAbcf9GchJN_+-DzMDYJQfMKBGYHmJzRNwY5P_szMvOg@mail.gmail.com>
References: <CAA=hcWSCZROrpDBWV5ZAA+LV6j0cjRSKxyjonOfWS4mCZAtdHg@mail.gmail.com>
 <CAAx3WaDGin=NcQk3X4=MTK8RfTrNO=LvrG+LbAyrWFUnWgU9aQ@mail.gmail.com> <CAA=hcWSAbcf9GchJN_+-DzMDYJQfMKBGYHmJzRNwY5P_szMvOg@mail.gmail.com>
From: "JH" <jupiter.hce@gmail.com>
Date: Thu, 6 Feb 2020 21:39:44 +1100
Message-ID: <CAA=hcWR7vHD9AbgkJXTxQD3dvQCdc0oo6eXzP3T2NSnyhdYsQQ@mail.gmail.com>
Subject: Re: [yocto] Support UBI u-boot
To: Gabriele Zampieri <gabbla.malist@gmail.com>
Cc: Meta Freescale <meta-freescale@yoctoproject.org>, 
	Yocto discussion list <yocto@yoctoproject.org>, 
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>, 
	U-Boot Mailing List <u-boot@lists.denx.de>
Content-Type: text/plain; charset="UTF-8"

On 2/6/20, JH <jupiter.hce@gmail.com> wrote:
> I think I need to add an appended recipes-bsp to my layer just like I
> added the recipes-kernel to my layer to overwrite kernel defconfig, I
> need to overwrite u-boot defconfig.
>
> In kernel, to overwrite defconfig, I run bitbake -c menuconfig
> virtual/kernel, how can I generate u-boot defconfig, to run bitbake -c
> menuconfig u-boot?

Hmm, more complicated than I thought, it does not have defconfig in
u-boot like kernel does, how do you overwrite u-boot config in Yocto?
