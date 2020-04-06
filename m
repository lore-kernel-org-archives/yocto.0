Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.1417.1586201705189740169
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Apr 2020 12:35:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Db6VYk3K;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: wpdster@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F61CE01976; Mon,  6 Apr 2020 12:35:05 -0700 (PDT)
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
	*      (wpdster[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.222.174 listed in list.dnswl.org]
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E378FE01972
	for <yocto@yoctoproject.org>; Mon,  6 Apr 2020 12:35:03 -0700 (PDT)
Received: by mail-qk1-f174.google.com with SMTP id v7so17581774qkc.0
        for <yocto@yoctoproject.org>; Mon, 06 Apr 2020 12:35:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=NReDyLXMPJUypAp0zh16ohMqLLtIrIaEpCnsaHpr1H8=;
        b=Db6VYk3KkmN6KISoQUsvK5tbEO56sZnpbdNcbn99L5p28CiMTzjlac8Olv1UvS0Wl1
         UTPRBnBp91sMEF3i5ZqDsgIEPvlAaOGpxpXyl96Ru8dva4sIvdarvzXzKGdfVR4HAbwf
         iXCqfS0f4qeF/1FfE5TJxolIIckLIZVIDgqADDU9/qnw3L+EmExh72yNz7twLFXkKgmz
         rsogxZ2jv1+FhlK+jW5xhI5xSZ88y1DfRf3ynBXiAm9q2ynWABOHYpsLpD4MuENdNjxk
         Vkpib4VPGuEeDFfhytN0DLkxt/Jfa9wRE/rzN+BADl41IZhqwdQ6lKxGy0AnDVjUCHC7
         evLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=NReDyLXMPJUypAp0zh16ohMqLLtIrIaEpCnsaHpr1H8=;
        b=MY8U7GKqfgAPVe3DZGIJwy/i0qLDXjF5RzYvxG14LY0B5kKTCNFrkcLAeRptIlP//Q
         GmTgLAa6U8PM0UCFFpk6MjAtr9+uG5ZOBiL5f11EU8iC1Km6C7GXzCPYreJ7Qjv0HGsB
         rkYKHFYe46pQZotDkX3RUxacMgylbN7OBBMPHXnKFXk0QOqfaMjU+HbARmf+fPCMouma
         00+BrZddO0p/3e0v4A7aqJd8DNnGrkbSC1qH0wB5HivMkMv0H+xng7aYneqIGdSXmSqw
         gxPsmtlXGKp+FrUma+fL1nV+9T/HYV9ZVcJ7TVVnpl0cP99RlEEgVOlPN8sqEbEnRI/q
         gWPQ==
X-Gm-Message-State: AGi0PuZW1hZcxJcTM4ZmgP4wbq4PzEV5WNzyFKS8B9Qp3xLKtW/q44nO
	Qw7Muan8Zp3HxSVBSDaEO5DYry00ejXwAKyQ8KYP9/Al
X-Google-Smtp-Source: APiQypKwBpC7z+Og5j9xgs456n0RQaF2LbXHyXSNfcO01Mo8mcdRoBNq6SyjABCIv1vNEWFPiX2zs/bShqhLjtSa2+A=
X-Received: by 2002:a37:8044:: with SMTP id b65mr22894389qkd.238.1586201702460;
 Mon, 06 Apr 2020 12:35:02 -0700 (PDT)
MIME-Version: 1.0
From: "Patrick Doyle" <wpdster@gmail.com>
Date: Mon, 6 Apr 2020 15:34:35 -0400
Message-ID: <CAF_dkJAyFxfDD-QLwRmnMO6-DUvyyDffjEeXBu=cZ5HVej30vA@mail.gmail.com>
Subject: Removing URL escapes from a Bitbake variable
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

I have a recipe that looks something like this (I'm simplifying a bit here):

SRC_URI += "${EXTERNAL_URL}"

do_compile() {
  do -something -with $(basename ${EXTERNAL_URL} .ext)
}

where EXTERNAL_URL is supplied in the environment when invoking
Bitbake (and is whitelisted in the environment).

The problem is, if that URL has HTTP escapes in it, they get decoded
by the fetcher, and the file in ${WORKDIR} no longer looks like
$(basename ${EXTERNAL_URL}).

Is there any way to invoke a URL decoder on a variable within bitbake?
Is there any way to determine what the filename was of a file that was
downloaded?
Is there any better way to do this?

Thanks for any tips you can provide.

--wpd
