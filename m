Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.7133.1575386400617962826
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 07:20:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=pkE+KMgW;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: gabbla.malist@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E380E01104; Tue,  3 Dec 2019 07:20:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.169 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDA6BE00848
	for <yocto@yoctoproject.org>; Tue,  3 Dec 2019 07:19:59 -0800 (PST)
Received: by mail-lj1-f169.google.com with SMTP id u17so4288925lja.4
        for <yocto@yoctoproject.org>; Tue, 03 Dec 2019 07:19:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=HCiLbGimwPplqL1vwLsIW/m5xxI5sUmkJjXYPlJudZU=;
        b=pkE+KMgWZZ9f5fHwihYnIiyBYDE3OV6+MwlPYXmiix1UNaw/VzRR51nXIJ8p6wKmed
         yDMKKEUMqCCNUeD9OYL83P/eGDc44pQbxkOqh4YoFOoorzBzeL+v4FcYs6pLVQeHoiR5
         do52a40IMbGHKhNx5D/TPhP8/nPbeVVeYxOD79Xk7NNLbo4eXnBF1fdLcyx9WM2qH3dd
         0Y7KnnaGd+AiLxPsEeyQB/RzKszBkoshB8vDncFKqN82bGrOIGM5J83OlqovcWnem8/7
         z5uM3N8dK0kHJaG9qN1bT8tJ6PE8X3QAy/0xRTfgeEQv5ue8kOKczectITTDOda37T72
         qD6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=HCiLbGimwPplqL1vwLsIW/m5xxI5sUmkJjXYPlJudZU=;
        b=Ag3URZ/2dv8JdL0FhzeKYc3OSfjupySts9dDFdXdTXtYYtHhednYxhDctR6tszFFYQ
         i1rFZBUJuz7q9wzjYkrWJel5vof4E/DfyxrM/sihuY0nq8EFFijx2vlYM3RQ76dDqdl3
         bjPcs8M4R285OovYiiMsISpZ2DA9+Sz14gvQZThfNjimZK4So5O0G9zLtkteR+caFg86
         RmRBArIFc/Ja7kwBgw+Zy4/QbNE1POb5uqZqD9Cmo0FXbmj70nc9Uh6Qf7ZB6GJp//DA
         ZGfs6ToFXiY+d8gpvQkOEA3h2TvEg+Hkgcj3Q3tO/25xEDSqlMyl7guncijyFK6zY1QV
         K3AQ==
X-Gm-Message-State: APjAAAUGS1S67PQhEJYPjzCtMdIajtpTDq6diUCyxOppQhowBKK8rGIW
	b6kNvSe3qfR5GidfpVJVqSUg315AGLnJ+e7ga0Z/pw==
X-Google-Smtp-Source: APXvYqx29/wUw3DM8qmJ3oRs9K/1wvLfy2QelQt0ZeIEsSIIFrwVgSHIz5wcev+h8xy25/gFrajJQkpn39FvGbQrW2U=
X-Received: by 2002:a2e:b4c7:: with SMTP id r7mr2979162ljm.82.1575386398630;
 Tue, 03 Dec 2019 07:19:58 -0800 (PST)
MIME-Version: 1.0
From: "Gabriele" <gabbla.malist@gmail.com>
Date: Tue, 3 Dec 2019 16:19:47 +0100
Message-ID: <CAAx3WaBX_iQnL88kjH300CrjwmbdCZYHixYzJ=1s1iZ4xD1mEw@mail.gmail.com>
Subject: Getting linux kernel version
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000aca9470598ce3abb"

--000000000000aca9470598ce3abb
Content-Type: text/plain; charset="UTF-8"

Hi all,

is there a standard way to get the Linux kernel version (output of `uname
-r`)? I'm using a custom kernel recipe that inherit from kernel class. I
need to get that version in a task executed after do_rootfs.

Any help would be appreciated,
best regards,
Gabriele

--000000000000aca9470598ce3abb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>is there a standard =
way to get the Linux kernel version (output of `uname -r`)? I&#39;m using a=
 custom kernel recipe that inherit from kernel class. I need to get that ve=
rsion in a task executed after do_rootfs. <br></div><div><br></div><div>Any=
 help would be appreciated,</div><div>best regards, <br></div><div>Gabriele=
</div><div><br></div></div>

--000000000000aca9470598ce3abb--
