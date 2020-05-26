Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.51650.1590503787216409818
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 May 2020 07:36:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@googlemail.com header.s=20161025 header.b=baM6XQj4;
 spf=softfail (domain: googlemail.com, ip: 140.211.169.56, mailfrom: ayoub.zaki@googlemail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2562E01B88; Tue, 26 May 2020 07:36:26 -0700 (PDT)
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
	*      (ayoub.zaki[at]googlemail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.219.45 listed in list.dnswl.org]
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61A71E01B6F
	for <yocto@yoctoproject.org>; Tue, 26 May 2020 07:36:24 -0700 (PDT)
Received: by mail-qv1-f45.google.com with SMTP id v15so9515481qvr.8
        for <yocto@yoctoproject.org>; Tue, 26 May 2020 07:36:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=CKukWh/O4N4FbkYTuhMB+a5l9Q54cfNiktxWdPjCRmE=;
        b=baM6XQj4dtepmxZu0dOX2QyeFQ6kXIPX4KvF/67n7hZYcLJcr1fN541hV9h4J8aWOU
         wsYVdA8zz/spmTQxh2hANmFt1XwxCgIw0Q5qMVWVOfQRwXse6g2+vh9Cqfm1XWFZ0k+4
         PC6T1dsugIUthOvS4gEo6go3OdyFHP9jli14sru42ofgsg9A/DTpuvxTWa0d40U92zJb
         kmvDwfEKbLCAIe+S59Bp95mj6szDvgOzVEz7wojFUsGZL/RmSVtx6854lmG++AdVw0UY
         vvRLRDrmuOwdEnZ6h2JsJKOdZlSD3xWkbJ/TYQmyXjB1T5H03RFuuSvn2vPgsG5NHTRP
         UyHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=CKukWh/O4N4FbkYTuhMB+a5l9Q54cfNiktxWdPjCRmE=;
        b=ooLhRSXJ1tBSa9nIImkWLWz7cvvxTF1gIbMkIoRflnCcJSVNmFmcpZ1NHFOe1faq/6
         e06VTNy9WsksQ5Aocdj1oK+nwb8A2dfMq9cN0RsmO1mXopzNfuyAv093rXBmdsCkmpcB
         K4bjdkAxJzF9ZKISOJnL0SJFxmGl+ibrYZPrvtrt6mmkG6WqVOgKaBCcxHFFVAOK6frE
         wWu5sARLxzKdRDImNOc+cKY68u1WIiQP2hofuBYAX+6x0Bbw/R+uSVt5nTzdZirUfEfn
         HGNsizgxjr9sKYDZv1zUdC/Ne+9D8oSAhmBKhDUmmxaUh5jAxSI562++81EWzQuw2i2D
         3CqA==
X-Gm-Message-State: AOAM532+28/vDrJ+xYSTr0hxhbLocmYFybpj+3oM2JsM07WHcPuAgrGL
	tEtXt+jm/dYGw1euez0aWsOvF4umVULsNBaREYYWLg==
X-Google-Smtp-Source: ABdhPJx6VqxQndSoG7SljS3Kqv/qXs72Kn85VEKgEXgS7tfeB/gv+Mmw4lbT90kP64oWRSPcflhiWDGiW1eBLhNOL98=
X-Received: by 2002:ad4:500c:: with SMTP id s12mr2074866qvo.155.1590503783891;
 Tue, 26 May 2020 07:36:23 -0700 (PDT)
MIME-Version: 1.0
From: "Ayoub Zaki" <ayoub.zaki@googlemail.com>
Date: Tue, 26 May 2020 16:36:13 +0200
Message-ID: <CA+-BmJZRJ_d+AsrWoZpsu4+ds3ug4BbhFWJ-09tL0rheq0zgcw@mail.gmail.com>
Subject: Overwrite a bblcass globally
To: Yocto Project <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000000d8d5805a68e0501"

--0000000000000d8d5805a68e0501
Content-Type: text/plain; charset="UTF-8"

Hi,

I would like to make changes on systemd.bblcass in my layer.

I can create new one e.g my-systemd.bbclass to overwrite the default one
but this will not work since I want that ALL recipes in all layers I'm
using to make usage of it.

are there ways to achieve this?


Thank you !


Cheers

--0000000000000d8d5805a68e0501
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I would like to make changes=C2=A0o=
n systemd.bblcass=C2=A0in my layer.=C2=A0</div><div><br></div><div>I can cr=
eate new one e.g my-systemd.bbclass to overwrite the default one but this w=
ill not work since I want that ALL recipes in all layers I&#39;m using to m=
ake usage of it.</div><div><br></div><div>are there ways to achieve this?</=
div><div><br></div><div><br></div><div>Thank you !</div><div><br></div><div=
><br></div><div>Cheers</div><div><br></div><div><br></div></div>

--0000000000000d8d5805a68e0501--
