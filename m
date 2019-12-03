Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.1100.1575402841657397477
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 11:54:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q775CtmM;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: marek.belisko@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39E1EE010A7; Tue,  3 Dec 2019 11:54:01 -0800 (PST)
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
	*      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B2B2E010A3
	for <yocto@yoctoproject.org>; Tue,  3 Dec 2019 11:53:57 -0800 (PST)
Received: by mail-ed1-f44.google.com with SMTP id j17so4335558edp.3
        for <yocto@yoctoproject.org>; Tue, 03 Dec 2019 11:53:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=0N+mdcVFaBcfXd6b/IUBxYt/qJGktE/y0tCyN9b9XRs=;
        b=Q775CtmMaDqF3UbwkWrefuG8t02q8iY7v08SUXjAX7MwRNpLw6manl+28ifCxhvYzc
         vghfO1NkduDZQFbs7Z/YB66nZDInNPf093NssrwVnImFN+NFhzFb7okSB09HcOE/cd9T
         y0/mmjN6XYP+8P6PvPO5RzlsXtvzmAKSeq2TWcmwWTBLk24Pq/tPmtZ62YJ0VOPPBoSE
         5Hj9StAQJNOT3uBkg2gkWbtVi62VIXrrlyJx4EEAR0GDPnM6wQ1KRhzCgH5HHum5VbMn
         aOhuqslnkZyaPva461ErfEQkCbChO905c1SwWek6SxTGKnlFTK7IFckqCAm65Mq3aBMo
         gCYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=0N+mdcVFaBcfXd6b/IUBxYt/qJGktE/y0tCyN9b9XRs=;
        b=ZW6OM4cnIF/Yswj4dAlzjEP5uSBx1MUE7EMmFw8byTGKB6uPqaEI2rSPttUQYI0rZN
         E9rP+TqLmwuTx2JSnlPE2AgGPn0dRKEQm4CHWJIRB+v2siCSA1/tBdSkumyDx+Rj+UmM
         C9+/r0I9y6hNVvBulyhCX8/OhPNwWqk6R7esnsqPhRn3c4ZMPJJ5AubWSlMtijs46SPH
         53cxQx9HLrpDJ4h2bndgNUSvaPrYBky3j1Sow0/enuxCJ9ajk5L+6W6Oc7LtwcrhdTBi
         kGyBmtmM5O55UczyRTgmrUzsjPSqpsZQ4LUQEr8Y21yeDaGJDPatrA1QnUMVxPigTBvv
         wImg==
X-Gm-Message-State: APjAAAVbrgQkhJtysdxB92DYt/ctVJqPFywQ6PScAckeEuRlLYwec/Um
	tERP0xyeHReKrzigM1aPCHAR2N6u8usInQfDeM9xVgSO4UM=
X-Google-Smtp-Source: APXvYqymvUp0aXzKpsVg5v4ZSv773mhJ7QVnMBVcTdbaafijLnh/sz0/fFDyr+ybEU7na7bsTPImm9pzQRQKmzh1raM=
X-Received: by 2002:a50:ac06:: with SMTP id v6mr5448016edc.4.1575402836077;
 Tue, 03 Dec 2019 11:53:56 -0800 (PST)
MIME-Version: 1.0
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Tue, 3 Dec 2019 20:53:45 +0100
Message-ID: <CAAfyv37gsECtx7eAfCQmnB4wqYSQVGoN7YMqKcvKra-er1wA8w@mail.gmail.com>
Subject: zeus issues with fetching linux-yocto for beaglebone
To: yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm building yocto-beagle machine on poky zeus branch and linux-yocto
cannot be fetched. It still retry and start from beginning with
warning like;

linux-yocto-5.2.17+gitAUTOINC+bd0762cd13_25b14cdf96-r0 do_fetch:
Failed to fetch URL
git://git.yoctoproject.org/linux-yocto.git;name=machine;branch=v5.2/standard/beaglebone;,
attempting MIRRORS if available

It's just temporary hickup or? Thanks.

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
