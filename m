Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.1235.1583439170020257435
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Mar 2020 12:12:50 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: andre.draszik@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81508E017D0; Thu,  5 Mar 2020 12:12:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.4 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SBL_CSS autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  3.3 RCVD_IN_SBL_CSS RBL: Received via a relay in Spamhaus SBL-CSS
	*      [77.107.218.170 listed in zen.spamhaus.org]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.67 listed in list.dnswl.org]
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com [209.85.221.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 890DAE017CE
	for <yocto@yoctoproject.org>; Thu,  5 Mar 2020 12:12:48 -0800 (PST)
Received: by mail-wr1-f67.google.com with SMTP id n15so3242904wrw.13
        for <yocto@yoctoproject.org>; Thu, 05 Mar 2020 12:12:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZlhPmzkdicuaBuX+1LcKqBKIbmwH9Lk8Kd8JHzlQgP8=;
        b=qNWF/PgHfSsswCPWO4XoWYUP5xyfKbRhzPaTytGQp2i9Sh2ssXhpk3JACdXK1wosH5
         s2uJVO44ae+Z3pfm87fQdTBrY/beeETvQ58T5OvTWeAHuXfB37SQ7kbhT20USKrJDqxS
         GwgroTFguS84MhukEOt/nwdpdYkS/PV+UopmIXoGUQFVCCUr+J8BS/rPO9Y/TIFzbKua
         +QnxL+ZFWDkEKm8CihA1sYGVCTRTYiBRSKR9TwVbu9XZtcEjet6bM+e+1Ra+pvBSZeb5
         DWBFxn9Txpn3qFe6nBJx5zkZm1gq2wNPDlhh7DVfz51kGan8C0Wy6o7hkTvmgcLm1cO4
         Tzcw==
X-Gm-Message-State: ANhLgQ0COSK909yHhE9cpp4EKWcYRl8vVGk3ctspFL/OpKcXrp8sRxI+
	NEf8PCa+FgUTn94NQpYgrm6DTVc9
X-Google-Smtp-Source: ADFU+vscC97ykfXHRXtbQFVY8bqyEWoXQa9K+5w6aVgoqsJ7ZNs6CRMjP5jgAhemr6RVC00sAzPNEQ==
X-Received: by 2002:adf:dd05:: with SMTP id a5mr622916wrm.108.1583439167241;
        Thu, 05 Mar 2020 12:12:47 -0800 (PST)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
        by smtp.gmail.com with ESMTPSA id z10sm10598244wmk.31.2020.03.05.12.12.45
        for <yocto@yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2020 12:12:46 -0800 (PST)
From: =?UTF-8?B?QW5kcsOpIERyYXN6aWs=?= <git@andred.net>
To: yocto@yoctoproject.org
Subject: [yocto][meta-security][meta-tpm][PATCH] linux-yocto: update the bbappend to 5.x
Date: Thu,  5 Mar 2020 20:12:44 +0000
Message-Id: <20200305201244.1203-1-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

From: Andr=C3=A9 Draszik <git@andred.net>

As linux-yocto upgraded to 5.x in oe-core, update
the bbappend to 5.x to remove the warning

ERROR: No recipes available for:
  .../meta-security/meta-tpm/recipes-kernel/linux/linux-yocto_4.%.bbappen=
d

This patch hasn't been verified any further than allowing bitbake
to complete with a non-linux-yocto kernel. In particular options could
be different, or new ones needed / desired.

Signed-off-by: Andr=C3=A9 Draszik <git@andred.net>
---
 .../linux/{linux-yocto_4.%.bbappend =3D> linux-yocto_5.%.bbappend}  | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename meta-tpm/recipes-kernel/linux/{linux-yocto_4.%.bbappend =3D> linu=
x-yocto_5.%.bbappend} (100%)

diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto_4.%.bbappend b/met=
a-tpm/recipes-kernel/linux/linux-yocto_5.%.bbappend
similarity index 100%
rename from meta-tpm/recipes-kernel/linux/linux-yocto_4.%.bbappend
rename to meta-tpm/recipes-kernel/linux/linux-yocto_5.%.bbappend
--=20
2.23.0.rc1

