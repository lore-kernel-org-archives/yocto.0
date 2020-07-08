Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.4864.1594187840145308950
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jul 2020 22:57:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amarulasolutions.com header.s=google header.b=VkwuaTrl;
 spf=softfail (domain: amarulasolutions.com, ip: 140.211.169.56, mailfrom: michael@amarulasolutions.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0290DE01E22; Tue,  7 Jul 2020 22:57:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.128.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62DD8E01DE2
	for <yocto@yoctoproject.org>; Tue,  7 Jul 2020 22:56:58 -0700 (PDT)
Received: by mail-wm1-f46.google.com with SMTP id 17so1637400wmo.1
        for <yocto@yoctoproject.org>; Tue, 07 Jul 2020 22:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=LHoyIUHC5DaPzvfuH1ZxLWESw5D4Rz41/kH31Q2FPwc=;
        b=VkwuaTrlGvQnXqZ7nzni9sSDLFIejOzDvGQmSM2XweL9p97V+75i1XHGrNnXU9uYQp
         VwcvfAb2w6IxVnI7v6kjCKhnY5FnCYmWTQpHx9qs+tWGKcHDJ4A+cpGyj6grsRbNarw7
         hkLgVsydfMSKVnS2TQGt8PTCDbSY5XSwUYem8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=LHoyIUHC5DaPzvfuH1ZxLWESw5D4Rz41/kH31Q2FPwc=;
        b=clZOdLgOsITfejD6oYZZIdQ0VDLbD1hbxl3kTOSz7QxK88HWvr6RfQkwfxPaDx/YCJ
         RM2VDM8/hsRvmKuuY1aNiOh84kdHZ1Z5ElCvjImBC1mkXYZSix0SMOH5/Cj3WK97v1Tm
         dzfnjxDWLJA0ctJQKaCvlTvtg1kN25LYZPv/rlbbuYD7Y/MbwmFGLEQ6AkWkPZoxRSxZ
         Ke9SB97Twqp1gTbdZkUJd3bDGzxsZxZRZMhF3zPBLlWUJbsYxGMwPh1+oBy4NpGWazHn
         oK4oVoh573ESmEYpBcYnTpleHM5hrF07hdqWsGsZaKUpqiyeK0KUnkxNaP/ymHSzfoRM
         5LLg==
X-Gm-Message-State: AOAM531dSHUGsVbuK4XbXm2ShX+0kx6huERg2SPsvIELNOI8L2lF32JG
	KrHC0e9ofypjYPRtRG4o/a842soWbfBI2fW49CjN+ckoen0=
X-Google-Smtp-Source: ABdhPJzWts1R4FIC3lj5L8g/eHVSUS8//JVLvzSaIIQ0MRuJwt2jigZ1gPr1jAdoEdG7vT3kolf3dC0noIKC/MeTolM=
X-Received: by 2002:a1c:9a81:: with SMTP id c123mr7289640wme.46.1594187816357;
 Tue, 07 Jul 2020 22:56:56 -0700 (PDT)
MIME-Version: 1.0
From: "Michael Nazzareno Trimarchi" <michael@amarulasolutions.com>
Date: Wed, 8 Jul 2020 07:56:44 +0200
Message-ID: <CAOf5uwnAymAOBo+BpJ_zrunMmG8-TmqRyvXsAr+SnLqGNi6E=w@mail.gmail.com>
Subject: iso-codes project
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi all

anyone has problem on iso-codes in thud. Seems that project was
changed and not possible to download with the actual configuration

Michael

-- 
| Michael Nazzareno Trimarchi                     Amarula Solutions BV |
| COO  -  Founder                                      Cruquiuskade 47 |
| +31(0)851119172                                 Amsterdam 1018 AM NL |
|                  [`as] http://www.amarulasolutions.com               |
