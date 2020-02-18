Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.2669.1581987629296236984
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Feb 2020 17:00:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=o8xISoHV;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCBC8E01486; Mon, 17 Feb 2020 17:00:28 -0800 (PST)
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
	*      [209.85.166.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 997C2E00C82
	for <yocto@yoctoproject.org>; Mon, 17 Feb 2020 17:00:27 -0800 (PST)
Received: by mail-il1-f175.google.com with SMTP id f5so15848413ilq.5
        for <yocto@yoctoproject.org>; Mon, 17 Feb 2020 17:00:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=EW0Fnf3YXcKqFSs9Rd2Yv4JlQlGtDQ8qmQpioAEqqNQ=;
        b=o8xISoHVFvsGKN7hdqImys+64pMBHCeQ1CASu2QFHTAqtO9RLOzdvjhEH/xFa1OwT7
         zrXmmTDF+Hiks2bCzV9SEdQU3f/fn592SPj3Di3IzTNTWYr6brACj+mEyNHvncm9ikz1
         tPzlPBk5NTtX5UIpJ/dl9H1NcJyBJF9N0CgrgKToej+YJnH7bxd7QqCxQtuCy1j/XJo6
         y4t/RSSR7krC5GSDjcTpbRvZBeYWeAf2WTg9Yesbw3CEwhaYRv9XpUm4nttrQjYFDl8A
         4VC3ZPWLfnBNb7PNvgkBIRTk3UuAqt1iPkOSP4sgU3BL0xpaXJaIK+G5CPG0GRkWvFJE
         bpQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=EW0Fnf3YXcKqFSs9Rd2Yv4JlQlGtDQ8qmQpioAEqqNQ=;
        b=ByIX74pkWCo9TMwqACL0//3Ax6ptBnHlbICxH80+RHTWyLGLNqYnuVbxsFXn1szk5T
         IAl4RNAyWdR+TVGETFdiNyt3BL50xX/k1Liw00E3U3Gd1Oc9kiEqWUPmySDeiVh3wSl4
         WpsIC8G85QLeo+vhVWnGzOP673oyUW897JbwrVZNNyDKOtBx8sYrlW9jUYgKeN6rTX5B
         RIROTUFlvbPH3/FJaCl54EOmQAVo27mGWtigygdPW30tnXaXYdNQ1YFatUGsKgaC8tP0
         3cwy9DxysF5s6r15i1okDlwmNykdbEH35Ps5VY8LiJR5j6x5esswhFPv+Zd65X0vbaEy
         i72A==
X-Gm-Message-State: APjAAAWZHRPZS0ANjM6bL+dBxGUrHAPVWsI3iKgrrj6UvEWC4oW1YFPh
	rSkbLqRymv2Jxg3/Hg44G8gMlaeMMAMx9NpIJOQ=
X-Google-Smtp-Source: APXvYqxqBP5yqr87WaOZEro0sPSkzN9aQ6pTx8HGV4BQdS10MoRw74Wew2HcyTITvRBanvaJvt+snKpR0VRYIT1T2h4=
X-Received: by 2002:a92:216:: with SMTP id 22mr16818493ilc.53.1581987626912;
 Mon, 17 Feb 2020 17:00:26 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Mon, 17 Feb 2020 17:00:26
 -0800 (PST)
From: "JH" <jupiter.hce@gmail.com>
Date: Tue, 18 Feb 2020 12:00:26 +1100
Message-ID: <CAA=hcWTDqhJEE7MXFY9rvN93nf8=nWvshLoXKF3EMXYGLmZGbA@mail.gmail.com>
Subject: Change RO rootfs failed RF Kill Switch Status and Failed to start Run pending postinsts
To: linux-wireless <linux-wireless@vger.kernel.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>, 
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>, 
	linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

Apologize for the cross posting.

I am running kernel 4.19.75 on iMX6 customized device with WiFi and 4G
LTE, it was running well in an RW rootfs. After I have just changed
rootfs to RO UBIFS partition, it failed RF Kill and postinsts I
suspect both try write to the RO and failed, any advice how to fix it?
Despite it failed RF Kill and postinsts, it was still working.

[    6.097762] UBIFS (ubi0:2): UBIFS: mounted UBI device 0, volume 2,
name "rootfs-volume", R/O mode
..............
[    6.151932] VFS: Mounted root (ubifs filesystem) readonly on device 0:13.
.................
[  OK  ] Listening on Load/Save RF Kill Switch Status /dev/rfkill Watch.
         Starting Load/Save RF Kill Switch Status...
[FAILED] Failed to start Load/Save RF Kill Switch Status.
See 'systemctl status systemd-rfkill.service' for details.

[FAILED] Failed to start Run pending postinsts.
See 'systemctl status run-postinsts.service' for details.
...............
root#

Thank you.

Kind regards,

- jh
