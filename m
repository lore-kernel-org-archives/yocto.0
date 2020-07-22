Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.10515.1595383825290120079
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jul 2020 19:10:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=C9PLHde8;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1037E01EDB; Tue, 21 Jul 2020 19:10:24 -0700 (PDT)
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
	*      [209.85.208.49 listed in list.dnswl.org]
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8907E01ED8
	for <yocto@yoctoproject.org>; Tue, 21 Jul 2020 19:10:22 -0700 (PDT)
Received: by mail-ed1-f49.google.com with SMTP id by13so449501edb.11
        for <yocto@yoctoproject.org>; Tue, 21 Jul 2020 19:10:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=/bS3znrgp7qTi4FY7FlgiQvJnIP/o3o1iTG5Gh+y7KY=;
        b=C9PLHde8SxzCQwJhvOkU+cex4cXAnCbvbYwmaFOAmtslc5DBt9U+HBevU/Mnz+RtS0
         E8FcBwUDiYP6zQr3cJz88/osPNkpHV1zfzs30M7uvjLFuFzkOz9itQvePjjU834OtQ3O
         bX7Se6/iNaJmfO/q+BFmVI+EPDL4mdlJ1bN6EM1Xg+CZtkcz3lWaJu2NVVlu1g8ivfh6
         peQJZ+KOgwQAKJL40mhCjQdnxkF+y6J4m8hff9spXjbxBRnvd9Mo7vdWGkFCsZSajftE
         Gt+GygC1IpBPHnpS51Vw9Q4wPWcgVx7vLER7cCBsBtAkErGVrSiplFqQSo1+lmddMVDx
         3SvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=/bS3znrgp7qTi4FY7FlgiQvJnIP/o3o1iTG5Gh+y7KY=;
        b=bdb+mV6PQxqDLdPYJ3TkCDk7DEAb59m2iMiW7tdn3+dmcwhChkEq6cSaeaPkliPSgF
         zcp+RMIKnQoBcL/DdgW2fAiyD6DI8rcdwvaNP1tgKwAKLal/UIBvzcNmpFFUsne/0rly
         WMz2J8Xn3p2GLaNPqQ3IoqW8Eq6idBoGLG+uKj5HAISLkeCohfu3dFr13TIuHEKSPqL4
         EMiZIAJ8Uy25W0mHyyOb3cWLs4mknBIYQWqOY1d+5vX9wno5kQXV5L4EJtDIUjYMdN77
         qD41i3iEi2T2ufrCn/H3QonVqKCr1uAJAdDV566ZplFBT8tzd9WV5H3d9g4JkPtOaqyU
         FPZQ==
X-Gm-Message-State: AOAM532rZqoeUmKB5pesEd9MvmpJ0+4KDxh4c+hazWLEj/m/CgbID7CX
	Qhv+W221J/ZdIS/y9ShxeVCNEDcRukYd/UWBS+4x34NW
X-Google-Smtp-Source: ABdhPJyzd9z2m4ZGpmUhpcNVptPHP99Y8nSoUaiw7C20SXZtyMlAW0/ZdzMytNkQ4MGVBWLFNrg+ogwB2Fom0fMx0KI=
X-Received: by 2002:a05:6402:1803:: with SMTP id g3mr27425681edy.377.1595383821620;
 Tue, 21 Jul 2020 19:10:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a54:2f46:0:0:0:0:0 with HTTP; Tue, 21 Jul 2020 19:10:20
 -0700 (PDT)
From: "JH" <jupiter.hce@gmail.com>
Date: Wed, 22 Jul 2020 12:10:20 +1000
Message-ID: <CAA=hcWRj73c45fw3oAjr5mCHAF64jifPgsDODKQnBokgan0aCg@mail.gmail.com>
Subject: Yocto support
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

Does Flextronics https://flex.com support Yocto or not?

Thank you.

Kind regards.

-- 
"A man can fail many times, but he isn't a failure until he begins to
blame somebody else."
-- John Burroughs
