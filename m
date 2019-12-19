Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.9259.1576760676702971203
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Dec 2019 05:04:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=eVHYtErh;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: marek.belisko@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52B6CE01102; Thu, 19 Dec 2019 05:04:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
	T_FILL_THIS_FORM_SHORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA95EE010A4
	for <yocto@yoctoproject.org>; Thu, 19 Dec 2019 05:04:34 -0800 (PST)
Received: by mail-ed1-f49.google.com with SMTP id f8so4813241edv.2
        for <yocto@yoctoproject.org>; Thu, 19 Dec 2019 05:04:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=GICVSS52qwM5q4Mtp+BphN9jX3v1fukiJ8kvQnfuyuY=;
        b=eVHYtErhmyciy5OkbehDMJQmfq0D4/SkBJtYEKIWrVwpBCB7zxGsfPHkW4JjNxd9XL
         iLjhDK5wDeY8T2kw4S/9MaZTHVsWe2yug+JBzUSwR7gqh2ySsEuf1FvmS8RRofIb+bQD
         iPo6HBdyc9hTnkj5iY02AE+s5ygEHxIyDcD1vZDG/EHgADmy9tXOgFSJFpTFmatS0sXw
         RIFimY3FQCI6P9PQ9G1hz8xRyVrUuRmEAv9ka0BheK5NsYWoFf80w+SD+BgsD1Dmcq+n
         Yshb0uOlTR4FdioqVFrHGF8uLUhnIZIFeFQjRd17WJpxDWyEB/XIyfrkbPQcRmQHdiSp
         Qjcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=GICVSS52qwM5q4Mtp+BphN9jX3v1fukiJ8kvQnfuyuY=;
        b=j/MK1c8RbkJJRTSxbpe1K7YvrP44pL3aLOI1XpJo55sRdZukw5PcZuVMwaPWDImwSm
         HxZNjkRT1P54LvftR/8KacxW1SUGCDxxqnm6sN3S5SKWMdV6c/a02VSZ35ovEaLdSpKD
         EzhSFHTW1/nyt2jJstUau/d1G4KaeB0giApGbEzCUwDSC+rhzIZSJIrCcfHg4npLGoHQ
         yE3aUMAVqJKxii847Z9P58q28wd59z/kbj6EDd+04nO7Rfp9o9xW1BtCl8I0hcvxBqO7
         0JqBeZr7a/zMKDLuSu3SIehXBluVtDE3UMItF4fePC0heJJ5CnRizsoV589GUmBl4zcd
         1NUw==
X-Gm-Message-State: APjAAAX5BcWPz73sTUOGLge/Lpg4NT/45Swp54r9Ih6jZS2JH2Q3svlG
	g4iehoOtZAa1g943PJ8IRJ2TT+zd9oVj5bTl4F4o3kuB4LM=
X-Google-Smtp-Source: APXvYqy6LsJNu2ndRKN217Ne18AL5cbkgRaWKRzGo49GCeRKR1U8C8J+xFuK/tsyQLLI+klDVcw0L9uJVQ33AECEJdQ=
X-Received: by 2002:a17:906:49cd:: with SMTP id w13mr8936642ejv.324.1576760673144;
 Thu, 19 Dec 2019 05:04:33 -0800 (PST)
MIME-Version: 1.0
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Thu, 19 Dec 2019 14:04:22 +0100
Message-ID: <CAAfyv36YqTJDAcCbf3xmsA2Ka+3U9c0ZbnsR4VarLXYptej4XQ@mail.gmail.com>
Subject: mc fails to start with readonly rootfs
To: yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

when enable readonly rootfs mc fails to start because cannot write to
directory: /home/root/.config/mc

I've created volatile-bindd to this directory (to be able to write
something) and extend mc using below bbappend:

do_install_append () {
        install -d ${D}/home/root/.config/mc
}

FILES_${PN} += "/home/root/.config/mc/*"

But now I got QA issue:

ERROR: mc-4.8.22-r0 do_package: QA Issue: mc: Files/directories were
installed but not shipped in any package:
  /home
  /home/root
  /home/root/.config
  /home/root/.config/mc
Please set FILES such that these items are packaged. Alternatively if
they are unneeded, avoid installing them or delete them within
do_install.

Checked FILES_mc and path is there. Am I missing anything obvious? Thanks.

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com
