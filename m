Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.8872.1578995391106418057
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jan 2020 01:49:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=q+pzLCZI;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 954B0E01409; Tue, 14 Jan 2020 01:49:50 -0800 (PST)
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
	*      [209.85.166.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6827DE01388
	for <yocto@yoctoproject.org>; Tue, 14 Jan 2020 01:49:47 -0800 (PST)
Received: by mail-io1-f49.google.com with SMTP id d15so13164373iog.3
        for <yocto@yoctoproject.org>; Tue, 14 Jan 2020 01:49:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=+bsGoXWN7R66ZQzyr4l9Z/FsAbt/uN62wzl3ApIHxSg=;
        b=q+pzLCZIZpggpqiU4791MvarirvJBucuKP0l3mcMzMnNd6W/LJMdU3GKtAkPgZBeC9
         X88z7/k2iZ/uB0MnCi6UwarYmp+ZP/gYOEGrGwYDm1DDTK4tTxj84BH32GB5Z8lEvwDd
         FnHJTTeMW8EUipoWUzK6zLvELC08NQGRh988yfd+tqgY0Pl5xDnLCJMtyjhm+lQz+71r
         9cXOY7UlQu4L2dJca7+mkp4zcrCdbH6j4n08rNyB7+glnctnVTb+zBbQeHw0QzUzpMF0
         /JB7LGLpO0R4GRcBpqoiwRyEIZI03Y482gVLpzjymjKRFyZX/OrvXOBjF1Bcj3+f0Vku
         luNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=+bsGoXWN7R66ZQzyr4l9Z/FsAbt/uN62wzl3ApIHxSg=;
        b=juiXQPTxeq713dkxZQ/bGLdkeEbGs0pgB16kL3OhUxuOUaGA8ndF9jGOJIl5m+/7j2
         eR5cwUtXfijXiHdVj4AdmWApW4iZsveE9/lqrEksa9skXWieVGZ5ximmFfe2uoQcf//B
         Ru4rfPnuUgwUdjibn9LXa3xzKgZJxm++WrsM6dGkItLb6QPOC3NlDl8Wefm77/UKAVaG
         ZN3NStlUM0+gZD5p2k5nC8dsU1wOLye4CVriMo7lXw0j14oLSVIgfFa11RIACF/A8THt
         0lkb95U+6iCTH9G+Rbse2kC2IfbMI3yV1sRa+TneVQtGZ12FWHqtTHLbCWaU2AC6RD61
         n0fA==
X-Gm-Message-State: APjAAAXMUt7lTNXbDdzusijqX6aK4EHRX1mKhWO9bXBFBiJdK/DnKDfu
	PdlzoZy9N2ep7uWzV76NsCQFffqDuvPQgZRPatg5UPBK
X-Google-Smtp-Source: APXvYqww0jZk1YBHOherzr77KYFtffSK5QSTN55HB/xvNKYQAbYEl37zKxL1uCVAZr9RuupXG4c+SZ59jCaYbMpbbC8=
X-Received: by 2002:a6b:6e18:: with SMTP id d24mr16726303ioh.301.1578995386760;
 Tue, 14 Jan 2020 01:49:46 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac0:e345:0:0:0:0:0 with HTTP; Tue, 14 Jan 2020 01:49:46
 -0800 (PST)
From: "JH" <jupiter.hce@gmail.com>
Date: Tue, 14 Jan 2020 20:49:46 +1100
Message-ID: <CAA=hcWQeNV4X2cxfX0FuVCCFhM-gQULO_z1bVw2JvgeZ7rdJWA@mail.gmail.com>
Subject: zeus build errors
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I had no problems to build thud, but after updating thud by zeus, I
was not able to build it, what I could be missing?


--2020-01-14 09:37:54--  https://ftp.gnu.org/gnu/bison/bison-3.4.2.tar.xz
Resolving ftp.gnu.org (ftp.gnu.org)... failed: Name or service not known.
wget: unable to resolve host address =E2=80=98ftp.gnu.org=E2=80=99

-2020-01-14 09:38:26--  https://www.mpfr.org/mpfr-4.0.2/mpfr-4.0.2.tar.xz
Resolving www.mpfr.org (www.mpfr.org)... failed: Name or service not known.
wget: unable to resolve host address =E2=80=98www.mpfr.org=E2=80=99

ERROR: mpfr-native-4.0.2-r0 do_fetch: Fetcher failure for URL:
'https://www.mpfr.org/mpfr-4.0.2/mpfr-4.0.2.tar.xz'. Unable to fetch
URL from any source.

Thank you.

- jh
