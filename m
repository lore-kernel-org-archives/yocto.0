Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCF43E00CDF; Sat,  6 Apr 2019 13:03:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
	[209.85.210.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73301E00872
	for <yocto@yoctoproject.org>; Sat,  6 Apr 2019 13:03:17 -0700 (PDT)
Received: by mail-pf1-f193.google.com with SMTP id c8so5191729pfd.10
	for <yocto@yoctoproject.org>; Sat, 06 Apr 2019 13:03:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=miRqWpGrGQbGVMMLBx89aWxr6ASncMKj4ztdcou6UJE=;
	b=Zonk6wGtaVrGLICwvwhhWMjq951US3kjvAv0lhClUZ1ID3Z/J+A/5JNOiF7z6XY9+u
	tH39buXsoHfuMIEyv+vnV5qyeR1Q/SKrDdUT8s+YfaHudLTkocTLNQ04qew4lvEbruOM
	gniGYYT5a3SXrz1jElBY+iyQzRCCm9JWav6aChg6ZCsYB3Q5ExViiRBkpKqbuI7CRm9I
	Fyb6oMNINcKweip13Kf8Vo9+sBzJEuUoqD+w03Ys1aPiKZMC/rtc2INzykrLWB2O2cB3
	o18kMdXoGFNbJtfBbAfpXCe1Vu5HvLuwulVn165JnpzQh5CY6klfD4xEfQY/ovwQJYzF
	8ptA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=miRqWpGrGQbGVMMLBx89aWxr6ASncMKj4ztdcou6UJE=;
	b=CcPZaBrSfyebs6BsjjEx+nycsSfi3haqU26GDVBLMz/77e+oFCphVEpU4HRNAL5b2N
	4rzyhOkrXez5UEY07+sytpySd9GYqdZyyk4OVu48AFlGjxZpfzt8GONRG5H0VBeBLD4E
	lOekaU2aZxBPTK+6rdWESEo1ckuwa5vGL6GYVUzdVBf58EdrCkBi3W9EuPYz3XOHHLtd
	MG37Dlv/BL1mJRMkauElWs3B7hgONkH9pmm9aof5ewBmExuy5xraYJvo/pUa23c13VrW
	x1vB3GgaRF+OqkrQvQfc6Q3noHal6pkbJphp4bDp4YgjjxlyoIOWDwZQPzRA9aOtNHcj
	6VdQ==
X-Gm-Message-State: APjAAAXEqzWGgT4n07OwDpUlIqBZERW5ADCmEob84o7TCPja1D5uBRKb
	C/4Ttv4T+YJrALTbkgbnpBxqVOjvCEs=
X-Google-Smtp-Source: APXvYqw8e+V5EtXkkWYz9uTWUL3CkX6uYN76ttXwIsJlq8jXjCc42WY237wsr+6g+Go3/reXKkHf/w==
X-Received: by 2002:a63:cc0b:: with SMTP id x11mr2108377pgf.35.1554580996466; 
	Sat, 06 Apr 2019 13:03:16 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136])
	by smtp.gmail.com with ESMTPSA id i15sm5901209pfr.8.2019.04.06.13.03.15
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 06 Apr 2019 13:03:15 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat,  6 Apr 2019 13:03:14 -0700
Message-Id: <20190406200314.19503-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security[v2]][PATCH] clamav: freshclam need bind to run
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 06 Apr 2019 20:03:18 -0000

Add it to the rdepends for that package

[v2]
v1 was sent with being first refreshed.

fixes:

ClamAV update process started at Sat Apr  6 14:59:25 2019
WARNING: Can't query current.cvd.clamav.net
WARNING: Invalid DNS reply. Falling back to HTTP mode.
ERROR: Can't get information about database.clamav.net: Temporary failure in name resolution
ERROR: Can't download main.cvd from database.clamav.net
Giving up on database.clamav.net...

because:

Use DNS to verify virus database version. Freshclam uses DNS TXT records
to verify database and software versions and it gets that support from
bind.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/clamav/clamav_0.99.4.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-security/clamav/clamav_0.99.4.bb b/recipes-security/clamav/clamav_0.99.4.bb
index d3295db..647e572 100644
--- a/recipes-security/clamav/clamav_0.99.4.bb
+++ b/recipes-security/clamav/clamav_0.99.4.bb
@@ -152,3 +152,4 @@ RCONFLICTS_${PN} += "${PN}-systemd"
 SYSTEMD_SERVICE_${PN} = "${BPN}.service"
 
 RDEPENDS_${PN} += "openssl ncurses-libncurses libbz2 ncurses-libtinfo clamav-freshclam clamav-libclamav"
+RDEPENDS_${PN}-freshclam = "bind"
-- 
2.17.1


