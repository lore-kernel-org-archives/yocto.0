Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28F42E00D01; Fri,  8 Mar 2019 07:25:13 -0800 (PST)
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
	*      [209.85.215.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com
	[209.85.215.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC62AE00BBC
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2019 07:25:12 -0800 (PST)
Received: by mail-pg1-f172.google.com with SMTP id l11so14402927pgq.10
	for <yocto@yoctoproject.org>; Fri, 08 Mar 2019 07:25:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=DH0rDjzS7gVHweoQKG91TD8RllpxA+JiPB4q2cTJVC4=;
	b=D7LLLlUWFDUDkl49ThFcP00SwG4PFtVUlWDOYNFxGMZR+DTPEtr+3qslNzpt3xlKAx
	oEz6QdnaGt1M3rDJYwCwqWMegZrawsOgJQ3cIY1mdklC+n7nJvC6HqcrDHck9gYcDyTz
	by08Xff6fYkpT9BqlIKe+pySBFIo+6w7E3uD7HxUqgnEmc9Ab5rMyGCA91Wzl5hOZ2fc
	2kI2JkRmvoeBfwVb6vR9+2l1QtpPeV8xZJRN7PnTqz3PeMspa4BYSXz3UYIon/GSyqG+
	R1Mdg2JATbB5iTkM0VOHIBKWP5cI2zksXsiqa81jhqb7N2u7xaj401EE0zBv8CSwEPFt
	b0+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=DH0rDjzS7gVHweoQKG91TD8RllpxA+JiPB4q2cTJVC4=;
	b=JhERBtzP+JaKUa4UqUWHzTzT6IFbho8HmXU5hq/KDXNa8ty+AZw456c7ZW4BupO/Wy
	GrWNJ5aWtVt1rkcm3qsujiLCKRj6U8n7PFmKaIStHSefqKUsRIh/kjf7lrtgPvK0ZLHz
	3A5CJ9f2kxAAI0trTHEv+X4rJUxR659NkYqD4QzKbqO5SNamg0iOvHRMlxiVxLi5h4V0
	vjePLFg0ctiQ5LJlqyUQXjCcF9vsO82y+DDeBEcRaA/uv+Kt9fUptM++T4QeFIof5hk2
	JQgLI1OzjR/9M3p8jzutJNiI2L3yjmL8MsnpISRZYzNPvuMVDARAGFNGGRFWc355jm+E
	BLlg==
X-Gm-Message-State: APjAAAXZgVAfaVIZ3acdFAIDqK9WmXGT+CsABX9UoV8rIxlJhDRp6e+E
	/W9RkgJUP+JwAs9kOSdXWPfBLa0L
X-Google-Smtp-Source: APXvYqyZVG9C1qgMv8UxeYWvllFWkV/XFw6vgrBPk/xaSNvF7xE69iYaGLs06Uic0gWzqPHN4Htd5w==
X-Received: by 2002:aa7:8847:: with SMTP id k7mr18622965pfo.99.1552058712030; 
	Fri, 08 Mar 2019 07:25:12 -0800 (PST)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	u13sm21490467pfa.169.2019.03.08.07.25.11 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 08 Mar 2019 07:25:11 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri,  8 Mar 2019 07:25:09 -0800
Message-Id: <20190308152510.13245-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH 1/2] keyutils: improve ptests
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
X-List-Received-Date: Fri, 08 Mar 2019 15:25:13 -0000

Tests need lsb

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/keyutils/keyutils_1.6.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/keyutils/keyutils_1.6.bb b/recipes-security/keyutils/keyutils_1.6.bb
index 1d7427d..730e174 100644
--- a/recipes-security/keyutils/keyutils_1.6.bb
+++ b/recipes-security/keyutils/keyutils_1.6.bb
@@ -43,4 +43,4 @@ do_install_ptest () {
     sed -i -e 's/OSDIST=Unknown/OSDIST=${DISTRO}/' ${D}${PTEST_PATH}/tests/prepare.inc.sh
 }
 
-RDEPENDS_${PN}-ptest += "glibc-utils"
+RDEPENDS_${PN}-ptest += "glibc-utils lsb"
-- 
2.17.1


