Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 889A5E00C3B; Sun, 28 Oct 2018 11:50:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
	[209.85.214.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A54CE00C34
	for <yocto@yoctoproject.org>; Sun, 28 Oct 2018 11:50:39 -0700 (PDT)
Received: by mail-pl1-f196.google.com with SMTP id y11-v6so2731988plt.3
	for <yocto@yoctoproject.org>; Sun, 28 Oct 2018 11:50:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=OEazaTubCVnhevMaVoY2q3hPtqk4vDI0motL0nC+msI=;
	b=KZj3wML/uU1ZHCkRSNroQSoq+PG58/IllfqFv+P3DQcCCbkY/gc6hYYfPdMJkmnTJ8
	ukKiqe9WdN79w/4mQvhEZU2i7IvNuaGfpBzX4CtlPUXcEfv23AD8wse6zpFsVtKXfBBU
	UDVTfLXyMaMRxK3A5XoXKCzO8H8tB1Q5wgLRmUXZcMW973kQ1TLojzHgTSrUixV889ix
	frnnH1/MB8Jr3wRgILm1TW5OH/E9g8qkTK6Crl+9i8xGQB2EtY1vg/JLRXZaaF1dTT8t
	mOGkXT43WECvMaPYrhMFyJfHBHinmbyO9Q4IDbrHNTA4YIQ+X9K3Z8Qbf9NhvudBE6QQ
	08mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=OEazaTubCVnhevMaVoY2q3hPtqk4vDI0motL0nC+msI=;
	b=Z86RpkaHsxFrx5EkVlQIltdHHPBg3V+uAijZGH//0gUiY8dFE2a3kn3O6HUV13Miz4
	ZItUEkEKxg7hfjaibsfOhiV+PIErHwBojgVF0JAknSClXDLwnCsxu8l+6JCOWTqKi6ph
	W9FC48QJBSmI456hKsQr4joqL8ZMiaxJI3ynZOfZd94jAlq8kAME3zSk446V75tm8MlC
	W+NJiWnK0xdWDaEys+S3yMauQ6IIbaaenZmBG/ueWqF+gfqBH1rmaU5ESyYSLD/Tb2kD
	dsrI4ro5mQ0u4lYlUMY1dcRhpCmW9PPX02XtUvgu9YitaB1wy0Jxl53bf0WOIipdLcF6
	24kA==
X-Gm-Message-State: AGRZ1gIWWLd8SEa2tzN20cG+fg/eWtNFZUOWX3rOhrujC2Cq3Pwh/qrG
	d0AVVC/v/sVm24G1TFW80f5vUm09
X-Google-Smtp-Source: AJdET5fqxIQZi7FDw5eTBvUdgvGr1YMXEtyaa3V/wZidv3PNUyWSHCo/A8GwSR5rRdh6ffAZ728KaQ==
X-Received: by 2002:a17:902:20c5:: with SMTP id
	v5-v6mr483807plg.156.1540752638549; 
	Sun, 28 Oct 2018 11:50:38 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4180:c33:dd9d:5398:e0dd:9d0f])
	by smtp.gmail.com with ESMTPSA id
	y144-v6sm25394451pfb.81.2018.10.28.11.50.37
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 28 Oct 2018 11:50:37 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 28 Oct 2018 18:50:25 +0000
Message-Id: <1540752628-10832-10-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1540752628-10832-1-git-send-email-akuster808@gmail.com>
References: <1540752628-10832-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 10/13] packagegroup-core-security: add tripwire ptest
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
X-List-Received-Date: Sun, 28 Oct 2018 18:50:42 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/packagegroup/packagegroup-core-security.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-security/packagegroup/packagegroup-core-security.bb b/recipes-security/packagegroup/packagegroup-core-security.bb
index 5ee06e3..741ff5c 100644
--- a/recipes-security/packagegroup/packagegroup-core-security.bb
+++ b/recipes-security/packagegroup/packagegroup-core-security.bb
@@ -77,6 +77,7 @@ RDEPENDS_packagegroup-security-ptest = " \
     libseccomp-ptest \
     python-scapy-ptest \
     suricata-ptest \
+    tripwire-ptest \
     ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", "apparmor-ptest", "",d)} \
     ${@bb.utils.contains("DISTRO_FEATURES", "smack", "smack-ptest", "",d)} \
     ptest-runner \
-- 
2.7.4


