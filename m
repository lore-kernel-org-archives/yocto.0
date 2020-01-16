Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.6464.1579167072917665249
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Jan 2020 01:31:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=sfjMN3W9;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7860CE0144C; Thu, 16 Jan 2020 01:31:12 -0800 (PST)
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
	*      [209.85.166.171 listed in list.dnswl.org]
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FE7EE01445
	for <yocto@yoctoproject.org>; Thu, 16 Jan 2020 01:31:09 -0800 (PST)
Received: by mail-il1-f171.google.com with SMTP id t8so17572434iln.4
        for <yocto@yoctoproject.org>; Thu, 16 Jan 2020 01:31:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=sy/8qeQKIzw3Nkt9v/+3fx95C9EXj3v1cvFXc8/2MdA=;
        b=sfjMN3W9iAP7SoxdBq/iIPxTwYXuUCKPVGw+6fTe5brD0aMN0eFKH6uP2Vj7WoKVR/
         SJIJzXSgXzvmHgEnB4pXcdd68Wndie5ywxrpsRoTRREFZOUfNyrNb8SUg65NYXzZXNEt
         MGzU4PKaXmyi8Ap08sQ9cax4A1rFxgo76b4Zdjnpmuki+cx3XzsizElCyIO84V47Gdkv
         JZM2YX8U9Dd0f1Pd1TGK7FNuba11LDNlOCDo9QEeq7GT2ypIyin9CQkay5JKluYUhI7u
         LjioyXoqfshyZM1xle4MjCY9nMz8+8jASo1pjjCqtlX9qRrKfeJZ0Yli6m+8haaXSO8q
         kwYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=sy/8qeQKIzw3Nkt9v/+3fx95C9EXj3v1cvFXc8/2MdA=;
        b=OHPd2hWzvlqmHYnHEcmEnWYOAp01Da3xRvTANwSO5hOO1P0lbQBeretfgWfO4/cdpL
         p8WPdHMJtkoZ0FhFzwjD2/vX8czuTR5QGnvMskB9Hner8WyVtogVUMEQRsSTYniP0/CI
         9k9Q1r2aoPm2qiGMm1nHnsQbHimGGAgUtfP0BPLCwRwQcfe/k6oBNPYnhOeFzmkwBQOH
         ZxaFDUkGFWSiIJCIVQZgto6nFpOFmfL5ghU8hM2w3B0vXDZlZAMyZdpTkWjzd5xjly1/
         L8tSqKvYEqhTvD8Rwnm3kDHffYtdOCzdn+bjmJVxcusE0iL4icitQAXOhLFKvfXVX5Me
         Pxzg==
X-Gm-Message-State: APjAAAWL4oicvU2caNTlJ1xiMU10M2wlw5i55P0IWJAZx5fHNFEBgGY4
	e+8TfC9LZshZMu3kVhw06zNaCtP6bIVro2uMfsISlyei
X-Google-Smtp-Source: APXvYqxqWg7kSjv84D1rppvHXcipwvavP8yr2+Sw2Wn2lAOtKv/3PfxdaKARC+CFpYENSinMecegTVvTY4MN+0g7bRU=
X-Received: by 2002:a92:d7c1:: with SMTP id g1mr2834557ilq.192.1579167068411;
 Thu, 16 Jan 2020 01:31:08 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac0:e345:0:0:0:0:0 with HTTP; Thu, 16 Jan 2020 01:31:07
 -0800 (PST)
From: "JH" <jupiter.hce@gmail.com>
Date: Thu, 16 Jan 2020 20:31:07 +1100
Message-ID: <CAA=hcWT9A0rmV1B6-Jz0H2cOcn6Sp_eaRdAyF=8=v543+GudBw@mail.gmail.com>
Subject: WiFi network failure after updating thud to zeus
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I was using thud version to build image to run on imx6, it was working
perfectly except I was told a bug in connman version 3.15, I need to
build connman version 3.17. I could hot use thud to build connman
3.17, so I upgraded Yocto to zeus.

After installing new image built from zeus, now I have a very weird
WiFi network problem, it could not get IP address from WiFi router
DHCP initially, after a while, the WiFi got an IP address
169.254.203.142 which is not my WiFi router subnet 192.168.0.x, it
could not connect to the Internet either.

My first suspicion was the new updated connman version 3.17, but when
replaced connman 3.17 to connman 3.15 in an old version system which
image was built from thud, it was no problem at all. Apparently
something got wrong in the image built from zeus. Has anyone aware of
that issue?

Thank you.

Kind regards,

- jh
