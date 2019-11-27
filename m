Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.4636.1574853136732798485
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Nov 2019 03:12:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=OGDSJ8Zs;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63F21E00EF7; Wed, 27 Nov 2019 03:12:16 -0800 (PST)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED9E7E00D00
	for <yocto@yoctoproject.org>; Wed, 27 Nov 2019 03:12:15 -0800 (PST)
Received: by mail-io1-f47.google.com with SMTP id k13so24362314ioa.9
        for <yocto@yoctoproject.org>; Wed, 27 Nov 2019 03:12:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=zYztn+sWv0WVMgGuVwzwaJy44qMoV6dgq8wXLE+JQ8E=;
        b=OGDSJ8ZsS70Le2j7TwMkib+IlSjssba1qIBH3LuBERoYzU2zEI7mBkLGv6t6nJomyO
         JJohVYfH0mkotkV8aj/cHpJyuGkDdn1JNkosW6d0TBBckOb/u10JFEzBaD4wuW5hUf3R
         GSU+/s0MVo7u+/bqWd6bwASpcFcQxuyZExMqoPR9er/lFT0dxdR7XxiT7yAyAe9uIzLO
         2Um8wyyRGalQwRJxoPKwT2gCFkEJW+Q0faEHIslKyhXN4PL69QN+CdqVeFA67/o0bOzt
         L4nXbnH9Bv+hBvJhDlbz1QMLwhK9oFADY+x/Nn4BiBEsVWjfaQaU107QoD0XEJiuW6rn
         8HJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=zYztn+sWv0WVMgGuVwzwaJy44qMoV6dgq8wXLE+JQ8E=;
        b=bEGE0AC01J7uQRfHKSkA7VaZraqUdfsTTJuhcynMlYgJwfdSQGOFW8XzCbs8HWpNY5
         ip1Ioah95FTlcHZt1K/50b26C/nwcF5zU3V8jsj1XxVYLRW6HrQMIzoNlox5uBKc9s+I
         nC5r2uUBAzYuRjx9lElpdT+8mRYc3+/eK58xMc9m97yyqemnNo/UV8OQhLVQCt7pOlv0
         njwa5duzmZ4f0yjgtREc/lK1QtXJ3RPvSr1KfAWXKYBiILOQVLqASihneYnaRHScdy16
         x+ctcbTAUTeX7Cph54YRnzQEHhc6tT0FyCaYbCfMSaZHo4sT1w8CeHSI7K10uWhn8HHk
         MffQ==
X-Gm-Message-State: APjAAAXtiRrSx4bfVPInu8zyBIlvwof/b5wJ9JOVyxPylXazY7JRfdqA
	4on40NJzpKD9SWt6lVTG2DDAkHbq4TzD8WZD9HVXr+84
X-Google-Smtp-Source: APXvYqxJcUFNA9FBdCgCh2fICAvK+YjVfH+buxuupyfftsYivg/qAMEuWps03Nzot49CdvoGb6Lycg/krsLJQTKMtcM=
X-Received: by 2002:a02:95c3:: with SMTP id b61mr3918779jai.21.1574853134597;
 Wed, 27 Nov 2019 03:12:14 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac0:f24e:0:0:0:0:0 with HTTP; Wed, 27 Nov 2019 03:12:13
 -0800 (PST)
From: "JH" <jupiter.hce@gmail.com>
Date: Wed, 27 Nov 2019 22:12:13 +1100
Message-ID: <CAA=hcWSLMGabXY8pKZpNzoYhcZMGJU6T5awJr88_NTKP6xWaLQ@mail.gmail.com>
Subject: How to reduce rootfs image size?
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

Does the Yocto rootfs image size is based on real contents included in
the image-rootfs.tar.gz?

When I build the image with very large size of applications and
libraries such as boost, I have my image-rootfs.tr.gz about 44 MB,
then I removed all large size of applications and libraries, I changed
IMAGE_ROOTFS_SIZE to a small size IMAGE_ROOTFS_SIZE = 20000, I thought
the image-rootfs.tar.gz should be reduced to a small size, but it is
still 43 MB I don't believe it is that big, which variable I should
use to reduce the image size?

Thank you.

Kind regards,

- jh
