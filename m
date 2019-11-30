Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.7568.1575113335296609459
 for <yocto@lists.yoctoproject.org>;
 Sat, 30 Nov 2019 03:28:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=aOKHLrnE;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1E56E00E11; Sat, 30 Nov 2019 03:28:54 -0800 (PST)
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
	*      [209.85.166.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com [209.85.166.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47B3CE0097D
	for <yocto@yoctoproject.org>; Sat, 30 Nov 2019 03:28:54 -0800 (PST)
Received: by mail-io1-f44.google.com with SMTP id p12so27709146iog.10
        for <yocto@yoctoproject.org>; Sat, 30 Nov 2019 03:28:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Gu7KEQsTdvI5qigua4dACwzpUWJln8cFpTPBQyp33fE=;
        b=aOKHLrnEZcqoIOYtLp0Aq5WycF6/Fz7IcxZlbGv0Z/tSUv3nRb2ehX/KaHUwn7f1BW
         iy6Uj3lOkG83uUPpsW5uw7zy0ASdTSm4wNhu9Tqv/B08usTz/bzRmhiFuyHOYFTlTKx8
         VK6KCIpw6HTxhhdixFOuXnMjGsDAylxus1SH/kXpA/42W9Uh4VFnGIx0d6zUa5feHbHE
         Rv4l/7OEDTBeKU30BXNLQwGx443YMWK+xb2RyU917i9NSQoQSJoq2lYg5qfpDI//l+bk
         l89TzEl8BHHwM0ZXZpRLjzCGXNPlA6z/5NAcNEaM2yb3Tg8IsFQRnwkW3loDls3AbWZ/
         WcWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Gu7KEQsTdvI5qigua4dACwzpUWJln8cFpTPBQyp33fE=;
        b=uOuYDkkD2PafuDjEwfKgSnqcv5Y4J7XFVgQKtk9To788RTpJp8TldluQOfizEwn/41
         yR+JjMP/httn7a+BhWalp6AUpp7wrCKKtWB3W5aTagBsMQ6GrpMjxURiO2SIm2xda1ep
         gCkNw0R5dUZzjgmShkBMd7KXrDxJGVcoNt/gTWYa/zH+OOI33/WB5y29iDAGH4jhpSzW
         QXeb5sHTNtX20ufgIYH5I9B/6ZC1x8DGCdzzreK6UgUxwYbrmVsYbhrizYjDv2lBW4Wf
         hGg1CMWc3b9WHgcrhHFwFZQ73nZ26SrKRz71w8GIRbIhQVOGUegEBJ07aaP4HlATHwBL
         c35w==
X-Gm-Message-State: APjAAAXwkVev0ZLr58YDfDqo2zEE7HfEjjUbgE0291uqOpVFk4SYsNb1
	DK7GUr5r4b2TcDBMDQd5oC1xTxU4ZKnRRzs1RwyR0w==
X-Google-Smtp-Source: APXvYqyzU0fM+NPRezY76RGZP5QeqQllEfs9/3IEl/gz16vKM37VZBskeR6EGV49+OBPrsM5M6mNRRxri+wOySd+DVQ=
X-Received: by 2002:a05:6602:251a:: with SMTP id i26mr9600216ioe.302.1575113333314;
 Sat, 30 Nov 2019 03:28:53 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac0:f24e:0:0:0:0:0 with HTTP; Sat, 30 Nov 2019 03:28:52
 -0800 (PST)
From: "JH" <jupiter.hce@gmail.com>
Date: Sat, 30 Nov 2019 22:28:52 +1100
Message-ID: <CAA=hcWQnC_W636fec-dk5HBqTZDkfa0cWCbBrkV6YwnJG+NMfA@mail.gmail.com>
Subject: Mising init and systemd binary files
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I built a Yocto image, but could not find /init, usually it should be
a symbolic link in /init->/sbin/init->/lib/systemd/systemd, In
/lib/systemd directory, it only contains a subdirectory system, all
other systemd binaries are missing, many system commands in /sbin are
also missing. What could I get wrong here to miss out all systemd
files?

Thank you.

Kind regards,

- jh
