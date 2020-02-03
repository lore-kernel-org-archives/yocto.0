Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.2112.1580713582393314192
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Feb 2020 23:06:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GiMdvwIx;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CEA4CE01696; Sun,  2 Feb 2020 23:06:21 -0800 (PST)
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
	*      [209.85.166.49 listed in list.dnswl.org]
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C36F5E014C6
	for <yocto@yoctoproject.org>; Sun,  2 Feb 2020 23:06:19 -0800 (PST)
Received: by mail-io1-f49.google.com with SMTP id i11so15456522ioi.12
        for <yocto@yoctoproject.org>; Sun, 02 Feb 2020 23:06:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=eM2RSMstwJs7iqc9ZZG9B8H5gv6qb9p8eT6CLmF67oE=;
        b=GiMdvwIxndLr4Q32VnLwe/fGxVhCKuYZZ7HSwTHIUbC2deB5SKVkjdMCjlg17iqEzA
         U0/NSrU7oGX9FryJrjhnyiXA65HpmIyOqXGKPYx8XcV0lhGysDLGB35Xw6AFw/n6xSO0
         +YCZqu02WQ1rJPjkmG2vdr/ZSfwGXF5npv1KWHLpnYypEvCptyk5o/yDPPIp3UCgeLvE
         nJYQ0WsuCP6wi8fCUP4Vv1jJwazdM5tq1q/E/sfbVph+WUrG2ydhID0Q9Q60Y44yVb7R
         DYjZL5LAbAwjwPOUUZb5dJ7zme1Ghan0790yCMM5fCI42Ga9uW6GI8Cwsz59aUK0LedT
         yhSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=eM2RSMstwJs7iqc9ZZG9B8H5gv6qb9p8eT6CLmF67oE=;
        b=Q3TS1PhdzmNrPAv5WqYna2lDRmgxuD0IDzPRZ+OFBR9OFv0hicu5fxROkARINEzjkF
         VVe0UVFDAFNDnYfRGDtSVkgjYPwwbQmCIrKZXCefBcIt4TajV+HByJqCwql8UX7vxj3q
         P1GwVD9+JUIOW/lm/xxWQ+T7vvPl6sxCMilgWwK2rLk8v9rvqTV1tZ8fXZPrNXlzcekN
         2b3ajszvz+0YDrYlequF0PgMRjD3PwRlyLYhAi51oltoP5A0U6npCw+cgItXzJz/TbEY
         XBAG1F6CEXmb88DU8j63sdiZmEO5K4VHH6+9dxFMGmRj8wQdbHwjU4mGriV23Oh+ltn0
         QZhQ==
X-Gm-Message-State: APjAAAXPM17NJPK8bwIw4os24JM9f/db78wkYztUnjs4jwQnWG39bBwi
	xWo0pz35lX4dgsly7dGXdrLJ4Q0RkjiHxyXcLf6WVtyg
X-Google-Smtp-Source: APXvYqzCBG6P4ORwOqcknLWOKvIX1KEkJ89VyQBcT2hArl+NdItTNThlnAJ/GIwQjAZpIwtn001bWt++LtwzW1w4S3g=
X-Received: by 2002:a5d:87ca:: with SMTP id q10mr11399262ios.192.1580713579300;
 Sun, 02 Feb 2020 23:06:19 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Sun, 2 Feb 2020 23:06:18 -0800 (PST)
From: "JH" <jupiter.hce@gmail.com>
Date: Mon, 3 Feb 2020 18:06:18 +1100
Message-ID: <CAA=hcWSYJQSpDxwmYO=iKj50Cxxawq+N+E_ysXgEmE03AZPGEw@mail.gmail.com>
Subject: How to make a local patch without a commit number, or will not be possible?
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I want to make a patch file for mx6ullevk.h in
meta-freescale/recipes-bsp/u-boot/u-boot-imx_2017.03.bb, to customize
mtdparts, bootcmd and bootargs as I could not find a simple way to do
it in a bbapaend, but I got an error of unable to fetch URL from any
source because the mx6ullevk.h.patch ls my local one, it does have a
commit number. Is it possible to do it or not?

In general, how did you customize u-boot mtdparts, bootcmd and
bootarg? It is very common thing, but I don't see anyone talking about
it. Is there a simple way I don't know? What could I be missing?

Thank you.

Kind regards,

 -jh
