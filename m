Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.9128.1589449993754055805
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 May 2020 02:53:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tjttcwk4;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: maillinglists18@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5745AE01B56; Thu, 14 May 2020 02:53:13 -0700 (PDT)
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
	*      (maillinglists18[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.42 listed in list.dnswl.org]
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B45CE01B15
	for <yocto@yoctoproject.org>; Thu, 14 May 2020 02:53:11 -0700 (PDT)
Received: by mail-ed1-f42.google.com with SMTP id h16so1873512eds.5
        for <yocto@yoctoproject.org>; Thu, 14 May 2020 02:53:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=qyfCRZa5JmrwI5vZ7EriQhe8A89oMDNAnZwVaxroSqk=;
        b=tjttcwk4vUQ+Itt7hqnMmxnM+kd5Rw7ow1c/R7XdG4Eksh47XeGkjlwItg1UnenKVY
         /d49o/ESLhyKaVopZzt+Nd4gXKWxZiqrgsqJ8zEF9cUSuKodzX84jEuWvsUGpxemVrSG
         gIVCvzLxAUzsROzba3mOwqjPEmjxBwrhlsl8j2QkghNBG9R/ssFPcbKLmyo8ZKOdduDp
         lpY3Q4QSp4mrMyCT1RWhSRzDM6F7AsOOKihtZN8NAnBK3Knx1CD5gDnfL+A+5rXueBDR
         DckrDH+O/xRr5fxbFqIl03iXWFzre8uArRuFqW8CAk9HKXrAJ90WNJc0C3e9vaLrMFgS
         Lkdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=qyfCRZa5JmrwI5vZ7EriQhe8A89oMDNAnZwVaxroSqk=;
        b=nW7GeGmSrd9F7BKdwv+mHVHL383J8Mnn1M3EIZMoO6aJ32DHneptqqqsdmokK7kfSc
         6/Bop94mp1UlFyDPiEnCnjsE8DZuuoVHKOxtNWxKR1JKC9HEA2d0GBmgQx4rdOTR3Fno
         NVpxrrKUrjzrGue5QJ5WUOS4SIQE+vTFMYrhAAlVd50Cver+32fFDIdS8cByWcShbdmz
         87YExFqidz+z74pTGzo2biwuc0FjGxpzI+3NYjdFXM9BXNV/boCnMZEOCc890qSUZOzr
         2pTy3r9Pi0J67IMHyk2dTx/oLlGPYUPWSesHZ40safAElIf2UvQ3Aq+AUs2ilFD5bSWW
         ZtTg==
X-Gm-Message-State: AOAM533ve9xpmni45znIYZF/05czliCssBRkgqsxjvGtKDVDiCfu8YOX
	lOBgDLGAwW23/NPC3sNbbU5QTOTXi+teODkW3F60VhgN
X-Google-Smtp-Source: ABdhPJxZFXcl07L1314mHORAQHaavInHzCMHpTjKucsHIBwVBcVH1Vlw3SZedNg4Mj9HleZS4ZO9CFc8HmphW3gEx6c=
X-Received: by 2002:aa7:d2d7:: with SMTP id k23mr3049461edr.358.1589449990766;
 Thu, 14 May 2020 02:53:10 -0700 (PDT)
MIME-Version: 1.0
From: "Teemu K." <maillinglists18@gmail.com>
Date: Thu, 14 May 2020 12:52:59 +0300
Message-ID: <CAAmVmrp4pkpBmbT=32Do8oGbBa8gm37Or-RYqcYQiYq2oszSVg@mail.gmail.com>
Subject: SDK having libraries that are not in image
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm using Warrior - version of Yocto and I have libraries ending up to
SDK that are not in image and it's causing problems because
applications are trying to look for libraries that are not there. This
is not first time this has happened and I'm wondering why it's
happening in the first place.

Here are the libraries that are on SDK, but not on image:

libsmime3.so => not found
libnss3.so => not found
libsoftokn3.so => not found
libnssutil3.so => not found
libplds4.so => not found
libplc4.so => not found
libnspr4.so => not found
libevent-2.1.so.6 => not found

I've used bitbake <image> -c populate_sdk - command to generate SDK.
Is there something I'm missing from configuration or something what's
causing this? To 'fix' this problem I need to separately add those
libraries to image so I get image match SDK and not the other way
around.

-TeemuK
