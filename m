Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.4275.1586142556457584286
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Apr 2020 20:09:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@assonance-org.20150623.gappssmtp.com header.s=20150623 header.b=WDu1P12W;
 spf=softfail (domain: assonance.org, ip: 140.211.169.56, mailfrom: aaron@assonance.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D586EE01963; Sun,  5 Apr 2020 20:09:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.167.175 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39EC1E01927
	for <yocto@yoctoproject.org>; Sun,  5 Apr 2020 20:09:14 -0700 (PDT)
Received: by mail-oi1-f175.google.com with SMTP id d3so11923779oic.1
        for <yocto@yoctoproject.org>; Sun, 05 Apr 2020 20:09:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=assonance-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=cf+Y23WGNBiIcw7TFiVq4Ebrt5w/F2L0W3W8FB1Xkn4=;
        b=WDu1P12Woox+H3vOk0LiYww5sirg+B9GCoAd4iCZjNV88vCny68ONixPFeukuzGQGV
         NPG4ICwRYNjNKMtpDmDz4KvgXXn+CIBZwUld5ShhwnxLIbaEuwMLUy6vXaOV9+Wln321
         7E8ga5YuTcrQgAZG2BKsMX0rtJda0sz5U2YFv/a+CISGQGjy+TxEue7zUTb91JgUDlsk
         Y0VM1N3Pd+v1/lNP2w3e1suREbLSG9NcDUZK2wwHK3beneCtiPJnw5/GrFDwIRXmFwY/
         l9VslOavQm8MYNalXkqCCzaSMxykmf1IkfeV2giaztDkhGU0Gxe1RWlRmjOnTu88o+15
         5gnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=cf+Y23WGNBiIcw7TFiVq4Ebrt5w/F2L0W3W8FB1Xkn4=;
        b=BepFdBac9pF2EjYp2Cx6ihuV8iyZ1F9ElNHx2E7R3VLqm+bWzAm3RZI1R7kc57X7HS
         PqyNCpDspkBSQSs/OAM6XUi1ZP7JWZRZIXY6cH8LNVsp/cnz31Lv7TSr8a7P7CItrbng
         KlEGaOTjVP3WA9GBF0QCQcGI4AKiF2psLzuRyO/IMUFHQZg+B7x4VivHOMLun6q1hctQ
         I7aRBAPjtjZvkppCL6A9+Lk2Q3YJFN4TkytpOc3atQvkEPNCpz/TMbHH1emLSvCn4Eko
         /1kEk8MG/ujWt0A31aRkb5q1xHQHaZNWLA1w9Ek6c+wLe1ss21tBFpzX7sARZzN0IaVO
         xFlQ==
X-Gm-Message-State: AGi0PuaeBRb7Jbx67JmX2p7E7iyoYtijL8E3u3IkBiQ1vHtwq8lwEbFj
	/USU9tcaahwAak3vgrUztQIXy8t4de+3N7zXV8rDMJ+Yhug=
X-Google-Smtp-Source: APiQypLKZ+tc/IqcEMinqiFoZIt6kdZYltBfCXOOiI+T93UfpSQytM1XVThAu7faac4U0myd/gWuVOKQO7QB7o59jcY=
X-Received: by 2002:aca:b382:: with SMTP id c124mr10810355oif.64.1586142553690;
 Sun, 05 Apr 2020 20:09:13 -0700 (PDT)
MIME-Version: 1.0
From: "Joel A Cohen" <aaron@assonance.org>
Date: Sun, 5 Apr 2020 23:09:02 -0400
Message-ID: <CAFSZm+gPARCC4ki+7XtYCSYgVsO87EzB=x60p8rXX+QXGh6YHA@mail.gmail.com>
Subject: Any way to enable automatic package-index if rpms are changed?
To: Yocto list discussion <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000079eef905a29697ed"

--00000000000079eef905a29697ed
Content-Type: text/plain; charset="UTF-8"

One of my most frequent annoying mistakes is to forget to run package index.

It would be nice if I could INHERIT += "auto-package-index" or something
like that.

Is there a hook that such a class would easily be able to hook into?

--Aaron

--00000000000079eef905a29697ed
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">One of my most frequent annoying mistakes is to forget to =
run package index.<div><br></div><div>It would be nice if I could INHERIT=
=C2=A0+=3D &quot;auto-package-index&quot; or something like that.</div><div=
><br></div><div>Is there a hook that such a class would easily be able to h=
ook into?</div><div><br></div><div>--Aaron</div></div>

--00000000000079eef905a29697ed--
