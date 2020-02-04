Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.4791.1580814563391188180
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Feb 2020 03:09:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=RxObIr6Z;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0A26E016A7; Tue,  4 Feb 2020 03:09:22 -0800 (PST)
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
	*      [209.85.166.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com [209.85.166.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92ADBE007AE
	for <yocto@yoctoproject.org>; Tue,  4 Feb 2020 03:09:21 -0800 (PST)
Received: by mail-il1-f177.google.com with SMTP id o13so15489059ilg.10
        for <yocto@yoctoproject.org>; Tue, 04 Feb 2020 03:09:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=mKiWfw35TRBcNC5ah0+e4ESx/3gHIgWIINi6hAJbztM=;
        b=RxObIr6ZKQS4LEYyn00FpQ22gfj03kRb1wogcKKLhyGtdQViDnzYdVCQi92alvkwKl
         8U+9tPAC+O7hgbR2bv2ukjsxhomFMuIUkDe3wa99Yo/cPVfX/aliAYav8x8ISMxElfY/
         ag+vS5MUPAjy/1AlKHIwAL9X42DgW320RotkjRisn60GlDjZxl7Ucyd2dTaIYF5SRa9L
         WKyFLULsW34ZEAiyEgQr9O9tb3/gKl7BHsBBMDbzlwyMZVyaF06MHHlYs2+WOkYh71G4
         /zQlf2K9N5JA/tjdiEIDfp38ntiVpsIqwR+S3kVxZc8VbJQRr7X6a0Tbxh7SUn2CpC9t
         uJ2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=mKiWfw35TRBcNC5ah0+e4ESx/3gHIgWIINi6hAJbztM=;
        b=Dz+ZhmPpBY7+xSjWySOL6RAxZQeoqyBG7E6nde3jGYtHtVboaywgKZsCqj/rtncUX/
         fs5Edp/jGOdxwP68mIEOP4hxmdnjY/YD5rWjIoK5P2mtyUrBwqb2dP6wrVHjWLVeyWrr
         iSeg416++qfa2ShTN322Fx7uMUK2/TvZKTWoakJtsA4P1RqBxNXCQhXHI3MlxdPl3Wk8
         2syd6KN5Ccz+uE8YCPXoKL5yzjwoyxKvTEZyjr0NTHglB8iq4CSCn0+ItwCfjBcdvkM3
         Ge8Fia5+aMzRmXyEmIZemzaK/NHJfHun4DYczPsJEqqQCJHUU2bv6Uhu+oNLZaEHTrcR
         QqIw==
X-Gm-Message-State: APjAAAWw7t1LONbNLnrg4R7DQAVh5vwXNg2tE8vZjn3zTQwGBGrT75Jv
	TsuiTZEihutuqGtR2ncPdcNwxLUdDT2mPG1zFckdXJPjidE=
X-Google-Smtp-Source: APXvYqyXS4Zv0+5IfAjQVkK2QCnDHOOUpsHMWdCyIqWEFQPvQtVzub8qpk6Uwe7ZR3oov54POb57GvHNqhlrbWqWFkQ=
X-Received: by 2002:a92:390d:: with SMTP id g13mr19826136ila.53.1580814560493;
 Tue, 04 Feb 2020 03:09:20 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Tue, 4 Feb 2020 03:09:20 -0800 (PST)
From: "JH" <jupiter.hce@gmail.com>
Date: Tue, 4 Feb 2020 22:09:20 +1100
Message-ID: <CAA=hcWQVh1JoDSL7f2yXbpWBkGZkwDU=dqPxRF8Ojq_YnRoOfw@mail.gmail.com>
Subject: Which package for nandbiterrs?
To: Yocto discussion list <yocto@yoctoproject.org>
Cc: openembedded-core@lists.openembedded.org
Content-Type: text/plain; charset="UTF-8"

Hi,

I built the image in thud to include following MTD receipts:

mtd-utils
mtd-utils-ubifs
mtd-utils-tests

But the nandbiterrs is still missing, which package for nandbiterrs?

Thank you.

Kind regards,

- jh
