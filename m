Return-Path: <jpdjong@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45E2EE00AF8; Fri,  7 Apr 2017 12:04:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jpdjong[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.196 listed in dnsbl.sorbs.net]
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9DE5E00A96
	for <yocto@yoctoproject.org>; Fri,  7 Apr 2017 12:04:12 -0700 (PDT)
Received: by mail-wr0-f196.google.com with SMTP id t20so21432284wra.2
	for <yocto@yoctoproject.org>; Fri, 07 Apr 2017 12:04:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=lmFUKVCQHRPj2MhFL4j6Iqpbg4q3uxdF4ZRPFfdh7fE=;
	b=FcUIM1KvO1LZ+Wseh5atJ6byYzRh+hY3A01xP3/LRMx+G5RJOXGboM6oSOpAPwf7ck
	vVZ9poNTw9BT57Z+6cQc3zVAHAZpqDnOUv2RXhYer75v+04p3uJtYrapLNtZPoSqY+Sh
	ZvaIEo6L0dQieOsy5BBFV593EEreZ5054E1okLP3tWW0T5YLgVeNMHU44VHGAwWEpySi
	661FBJJvhB8D0IxTIjmLi1VzjBB7vWKz8QEHpprBixTy20EpRadZ0bVOQ0lIwf7d+JUw
	cyefh8gujgw+kMTuK7uVvgUGrUrJOcoGp9p7JEjkj/j/2qgT/t+mbyewVYhNjx2PAGAk
	av2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=lmFUKVCQHRPj2MhFL4j6Iqpbg4q3uxdF4ZRPFfdh7fE=;
	b=DQ9owix5KhYbWDOLCO5YUtcbd7Qk35BYXgnqx1gcR6ZCLNzdOehIek6qdj1bcjY/m7
	gka4CTa/0QcfT+K+9pi1/UudCbPDAh2VGyiJr7jzqfkS+15sXdr88Ie19PVNA2vMCt7P
	IZMDPrYQClKJtjFt3xmGpwW9eXSgY9Bbt7Z/x80SLhwZyE0avTBBQepxZpbrQdqXCrF6
	EsZqZRC984EXEOZQeY0WxgADDQjJARkZ/JRMTcNmOHIkWN1VYD3QGPj3BJI1Up/9jEW4
	haXgBdeJkdjItF7AQIzm0kHs3mLqlUmkr7T/VOptHg2bqIVGTPi6N63eXGEHEZETk9R7
	aEVA==
X-Gm-Message-State: AFeK/H0sK9a7rZ6qeAEUVctWi0GlxcJYaefg7Jrh5OeQUmA3iTgz1hvwvAVcjsXDMwAZ3w==
X-Received: by 10.223.150.19 with SMTP id b19mr16762533wra.98.1491591851470;
	Fri, 07 Apr 2017 12:04:11 -0700 (PDT)
Received: from localhost.localdomain (6d482eb6.ftth.concepts.nl.
	[109.72.46.182]) by smtp.gmail.com with ESMTPSA id
	b66sm7049430wrd.29.2017.04.07.12.04.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 07 Apr 2017 12:04:10 -0700 (PDT)
From: Jaap de Jong <jpdjong@gmail.com>
X-Google-Original-From: Jaap de Jong <jaap.dejong@nedap.com>
To: yocto@yoctoproject.org
Date: Fri,  7 Apr 2017 21:04:03 +0200
Message-Id: <1491591843-6407-1-git-send-email-jaap.dejong@nedap.com>
X-Mailer: git-send-email 2.7.4
X-Mailman-Approved-At: Fri, 07 Apr 2017 16:38:15 -0700
Subject: [meta-oracle-java][PATCH] oracle-jse-ejre: Fix jre path
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
X-List-Received-Date: Fri, 07 Apr 2017 19:04:14 -0000

Signed-off-by: Jaap de Jong <jaap.dejong@nedap.com>
---
 recipes-devtools/oracle-java/oracle-jse-ejre.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-devtools/oracle-java/oracle-jse-ejre.inc b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
index bea4a03..0af0b6b 100644
--- a/recipes-devtools/oracle-java/oracle-jse-ejre.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
@@ -19,7 +19,7 @@ LIC_FILES_CHKSUM = "\
 	"
 
 do_compile() {
-	DEST=${S}/ejre${PV}_${PV_UPDATE}
+	DEST=${S}/ejre${PV}_${PV_UPDATE}/jre
 	rm -rf ${DEST}
 	JAVA_HOME=${STAGING_DIR_NATIVE}/${JDK_HOME} ejdk${PV}_${PV_UPDATE}/bin/jrecreate.sh --dest ${DEST}
 }
-- 
2.7.4


