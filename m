Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.4572.1576912830321490123
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Dec 2019 23:20:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TTKRicyG;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: balazovic.peter@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D94C6E012C2; Fri, 20 Dec 2019 23:20:29 -0800 (PST)
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
	*      (balazovic.peter[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.178 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com [209.85.166.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE897E01145
	for <yocto@yoctoproject.org>; Fri, 20 Dec 2019 23:20:28 -0800 (PST)
Received: by mail-il1-f178.google.com with SMTP id c4so9959179ilo.7
        for <yocto@yoctoproject.org>; Fri, 20 Dec 2019 23:20:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Vqb20YShfVxSrcp+qGpsGxJ40aReOAph02pXrryA6kc=;
        b=TTKRicyGRnPXRYRnl0tHSfs1mZoMBJSwkIIOLztWja29PQ+xk1sko0dlC4xNrgbJE4
         uk/BIUGmMaSWNiB+UKIC0g71kTfik3n6LB587a2ZEsE/75RiwKaOGOm2OT3FklfeL+IB
         9RPuojy4UMJOtaqmUnrv3Z1kr77DA3HJQfzoD2oip58j1rwzcibhqYssGeA6g9B43OVM
         9aLFEywqtZt8Q8lrBeSgyFJp2ZLmgUkGuK99UE7H+LTEcJhHTExwljs8lCQXyuqGLESV
         MAGA15FNzlegK9IbzOrdbHC1kKCZCclbihk+hFk4zJHD5ZYeKVqIHX2TsKeAEZSbgaNG
         rsOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Vqb20YShfVxSrcp+qGpsGxJ40aReOAph02pXrryA6kc=;
        b=W7DA7GhaLHtYSbP+u2gkufZGyo8KpMdZfbIIR8qzfX13uF5F7u2QUQA8b2OrOatbMr
         qZuRYB66xQNsqIax6BBaeBHtpADgJHICddqCFiSvD+aA43FL4eMLDG7hch51hMoJeT4S
         /K6PSGhLEPnBiMAPvSRcvqdRHhVyDVkFLWnb5jJ7pJgeO2PFG2DSlmmBksp3jcz9xdKi
         8j5fxj2sbSKeuKDJLeTDRlYA5nLIlAl/mw6CCdjNOYUxwVBG1VkAKbuO/JNZRnUvBxUI
         i2D4ATFLOOhQrLsAYTO4wXlMWlgLlfqCXojfDvHc16+8AfsMWmMghsDzn9Up+Jnf3MDA
         X6Ww==
X-Gm-Message-State: APjAAAV4ims/wdeKY8VmXMmHdW59X+627HPT0jwhhczXSXzQsJjWPmMM
	dtFygOi3WMbvDvThGRRYAe45KPpOI/8YpSmbMMFmS3bb
X-Google-Smtp-Source: APXvYqxYb72kLOp/BZwsrCIsERGXYo2mIWKDZnJfaboHj9hwukDan2Qtb8j1si7tE/7K6sydQJPkkKSG+t3PCQSLzZo=
X-Received: by 2002:a92:5a45:: with SMTP id o66mr15299790ilb.67.1576912828127;
 Fri, 20 Dec 2019 23:20:28 -0800 (PST)
MIME-Version: 1.0
From: "Peter Balazovic" <balazovic.peter@gmail.com>
Date: Sat, 21 Dec 2019 08:20:16 +0100
Message-ID: <CAFq4t4hjJV396RJpkaY1CW4VMefv5c0JnRac6SaLkRt+20R=2w@mail.gmail.com>
Subject: ubuntu from Yocto
To: Yocto list discussion <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000f65f32059a31a046"

--000000000000f65f32059a31a046
Content-Type: text/plain; charset="UTF-8"

Hello guys

Is there a way how to prepare "Ubuntu distribution" from Yocto project. It
means to create a standard Ubuntu (or other standard distribution).
I am looking for a procedure for it.
Please, can you point/link me?

Thank you.
Peter

--000000000000f65f32059a31a046
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello guys<br><div><br></div><div>Is there a way how to pr=
epare &quot;Ubuntu distribution&quot; from Yocto project. It means to creat=
e a standard=C2=A0Ubuntu (or other standard distribution).</div><div>I am l=
ooking for a procedure for it.</div><div>Please, can you point/link me?=C2=
=A0</div><div><br></div><div>Thank you.</div><div>Peter</div></div>

--000000000000f65f32059a31a046--
