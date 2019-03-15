Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4AC9BE00CD5; Fri, 15 Mar 2019 12:03:01 -0700 (PDT)
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
	*      [209.85.215.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
	[209.85.215.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC70FE0096F
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2019 12:03:00 -0700 (PDT)
Received: by mail-pg1-f196.google.com with SMTP id k11so7074029pgb.8
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2019 12:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=WC2okftQyWsexiMS5yjqUSkdxLb8/8G07HfxYKLz8EY=;
	b=tYj18UADLdmWqjV9F7wUw8zsQxOrthdxAmO8nwgP9nQ9dmTIeCQYkLaTGtHvqA2T3V
	CKWpvLVEv2ka/03z7ajWHXSXB/zSy8qg8ZCAkrQnyLIL3xelSVHMPP9957GqQHv2Itsp
	xFigOI6l7SpeUFGaJsivXaEIdXhnrR4v9RN4X+ova8ZJyB+0FovqDl1QuKo5IGeS2dQJ
	V39N2LbbpqP4X096ys7bJpLhwtngh9k+Ji8JVTdC4ioAlFpwqo+KyLUb9cwVUCah8+pk
	IZkaoi2DpNQ/nz9rkgK8g0CdnI7PXt0RncJ7TN24Jiw2V+9FjgG8v43G/EQJmLVKle2k
	vZ5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=WC2okftQyWsexiMS5yjqUSkdxLb8/8G07HfxYKLz8EY=;
	b=HUwKqp9L0x2vUPsoLcWuqNy+zs/wdQUraRz2rdFtEWzMNZoD7ocdQ2NTh4ribmoc99
	JnZe6KYdgfwYvMzaiokznLeeZWs1OCLITrMXGbUZ0XMftlPOl2yz6g0AOcchlkQ5Qb+0
	g7unG3B25beq+dbTjw8in90fc2QEfxMGQ5e45/HedP+VPe9SLsPNPXvvRaag9n1FC1ga
	7tAQFTF7614rDjloO2nwVMhJMpVndkLjYF/YU6bsBKGm/QRpa1opKLkplVE1ux+gbaDx
	jvM74YFhvB8el8sKe6x5WLD3gMVMhBZf8KBI0+5yhfNfABZKOUhHtaBW4Y8LeqbYElaW
	4wgQ==
X-Gm-Message-State: APjAAAXCAlndTYcoy6TnD0B2pw/ARcmJO+3DDzVmmXmuyURoz1B1My/z
	eFMPWdxi/d39UQu/tWM7BQ6ptdL1
X-Google-Smtp-Source: APXvYqwFLBeOIGoqjDyknFgTTMW9qH5vfTAKkSOdP7nwtXN0WFBOYn0AEzylkZbInNK+2QlSXHsDmw==
X-Received: by 2002:a62:2e07:: with SMTP id u7mr5503109pfu.176.1552676580015; 
	Fri, 15 Mar 2019 12:03:00 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136])
	by smtp.gmail.com with ESMTPSA id e2sm1955318pfa.64.2019.03.15.12.02.59
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 15 Mar 2019 12:02:59 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 15 Mar 2019 12:02:57 -0700
Message-Id: <20190315190257.10329-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] libseccomp: update to 2.4.0
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
X-List-Received-Date: Fri, 15 Mar 2019 19:03:01 -0000

Update the syscall table for Linux v5.0-rc5.
also a security releated issue;
https://github.com/seccomp/libseccomp/issues/139

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../libseccomp/{libseccomp_2.3.3.bb => libseccomp_2.4.0.bb}   | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename recipes-security/libseccomp/{libseccomp_2.3.3.bb => libseccomp_2.4.0.bb} (95%)

diff --git a/recipes-security/libseccomp/libseccomp_2.3.3.bb b/recipes-security/libseccomp/libseccomp_2.4.0.bb
similarity index 95%
rename from recipes-security/libseccomp/libseccomp_2.3.3.bb
rename to recipes-security/libseccomp/libseccomp_2.4.0.bb
index 9c66db6..41ffd62 100644
--- a/recipes-security/libseccomp/libseccomp_2.3.3.bb
+++ b/recipes-security/libseccomp/libseccomp_2.4.0.bb
@@ -4,9 +4,9 @@ SECTION = "security"
 LICENSE = "LGPL-2.1"
 LIC_FILES_CHKSUM = "file://LICENSE;beginline=0;endline=1;md5=8eac08d22113880357ceb8e7c37f989f"
 
-SRCREV = "74b190e1aa05f07da0c61fb9a30dbc9c18ce2c9d"
+SRCREV = "4d64011741375bb1a4ba7d71905ca37b97885083"
 
-SRC_URI = "git://github.com/seccomp/libseccomp.git;branch=release-2.3 \
+SRC_URI = "git://github.com/seccomp/libseccomp.git;branch=release-2.4 \
            file://run-ptest \
 "
 
-- 
2.17.1


