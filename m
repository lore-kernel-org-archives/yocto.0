Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D5DDE00A54; Fri, 14 Aug 2015 01:46:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0764AE00707
	for <yocto@yoctoproject.org>; Fri, 14 Aug 2015 01:46:10 -0700 (PDT)
Received: by pacgr6 with SMTP id gr6so55878775pac.2
	for <yocto@yoctoproject.org>; Fri, 14 Aug 2015 01:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=hHl/R90qbpxk03ydoDCtulfF4bjzEhMpwOfV/mNZvoo=;
	b=KDDcxsaWFfPa5K3usldjxy+vyeQMoAkHwDjizcMpt4gryg/+ggMnz+nA6iLfdeJl3u
	Y4JjjDp4WXa9RbMGNwZztqxGkjgDyhk94MNx1DfVtwj+H2bLKiHql21y3R6cVQ2fSrT9
	UZoTeRo0W934f22i4FolnVo/FYLZxbZKGQkmba7/Gk0ySpB3gjnw4ONZMSKMZcaMZmwX
	Yo5XP0sNv2uzyr4TcA3nxaNhYwNlJHfddRTAvotlrFIGqYYXW7oyGm7Z7CN7WFg/fy6b
	PqLBAY7Yis8wHsjyv3+CO7Yk0qkiWazyWX8NC6TkUlbcKqeEPN1M0wOXqC+7T2sxTSRo
	x3Uw==
X-Received: by 10.66.185.231 with SMTP id ff7mr1545108pac.48.1439541970391;
	Fri, 14 Aug 2015 01:46:10 -0700 (PDT)
Received: from localhost.localdomain ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id x2sm5203361pdx.63.2015.08.14.01.46.08
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 14 Aug 2015 01:46:09 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 14 Aug 2015 14:16:10 +0530
Message-Id: <1439541970-21519-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][PATCH] audit: fix qa warning of unrecognised config
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
X-List-Received-Date: Fri, 14 Aug 2015 08:46:15 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

remove --with-armeb=yes to fix the configure
unrecognised option qa warning.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 recipes-security/audit/audit_2.4.3.bb |    1 -
 1 file changed, 1 deletion(-)

diff --git a/recipes-security/audit/audit_2.4.3.bb b/recipes-security/audit/audit_2.4.3.bb
index 8f125c0..31f4b03 100644
--- a/recipes-security/audit/audit_2.4.3.bb
+++ b/recipes-security/audit/audit_2.4.3.bb
@@ -41,7 +41,6 @@ EXTRA_OECONF += "--without-prelude \
         --without-python3 \
         --disable-zos-remote \
 	"
-EXTRA_OECONF_append_arm = " --with-armeb=yes"
 
 EXTRA_OEMAKE += "PYLIBVER='python${PYTHON_BASEVERSION}' \
 	PYINC='${STAGING_INCDIR}/$(PYLIBVER)' \
-- 
1.7.9.5


