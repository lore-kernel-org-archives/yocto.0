Return-Path: <vincent.prince.fr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA071E00D50; Fri, 27 Oct 2017 05:34:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vincent.prince.fr[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E6C2E00D41
	for <yocto@yoctoproject.org>; Fri, 27 Oct 2017 05:34:35 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id s66so3245346wmf.5
	for <yocto@yoctoproject.org>; Fri, 27 Oct 2017 05:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=2dzuXkHAGLQBbsbN7TKzl0ii5oO8euWPgU45b3FQ5iw=;
	b=i+iCFprwf2A05vTrFpq176B3M6RzCHTbrVajbOmC0nAw3f2nG3QUaWySMm7kZngQCZ
	V+8kdr6bujfFbJ2xlW6XbCY2EGxpJ0BmoH7Ir0pSl6byoI2k/6qTFLzvh2/ss0vzecj7
	+YgbNSOGkQsj0h8lVdtB0n7Bf/Ki2gwANzUsebGMPJm9emiIpwvX34SUacmVitpyFqt1
	y2VM3KKwe7PoblcI2NTxvzYc54tItDVpGsn8op7eOzQsddrXZPyw1dZygTuISNGrPg5X
	y2PkRVzOxp/KqPRjlnDo7LgaTdujU+DsHlsmggykM6/W8z96pUAecW4OIuhSuhUWkvQw
	E8jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=2dzuXkHAGLQBbsbN7TKzl0ii5oO8euWPgU45b3FQ5iw=;
	b=F9D44sqZpVlKU/0Oc9jZ/O5AqU+wWVQc7dUK+yZJWgWMsb4mt7WgSrOxDN5ENRsxck
	FviRH3pSb8Rd4aN5RpwAIsVLBdd43VyTfsfTJ1YiMhla21FVV++ny1FBm3lV7mJp7BzO
	kn7lKg7ASbqYQiTzf9hG19H/uXlf3Mxs1uEgDPXP/SzoE0LA0hxHeVjNqsWeTzV1tCgU
	QHbsPN4c3KIEMcgyMUYK1inYIIbz/Dg+3QBwhhAtwNH3A0rZhyX7IG0ObgwRZWtVrzKc
	CZzR3XG+nN+TwLv2YPO9DavjYehvG5iTp9gFZkb3VW1xwtJN0wC4BGCWhXTadgJyXyjT
	LcmQ==
X-Gm-Message-State: AMCzsaXhiIUs8JqQIZWsZEvpSOImscWKphj/fJ5xqPsb1Xu+2FKGzG0I
	2vGy+rTGYJqYf2snJdFX4L0jHQ==
X-Google-Smtp-Source: ABhQp+Qd0jpUYaZHVr2SrzKDCVmonT7IyflOH2lPC+hkBKjSm8/e5K/U4GB+fhEmA0c+mBVQzPNvvw==
X-Received: by 10.28.140.15 with SMTP id o15mr312018wmd.8.1509107674130;
	Fri, 27 Oct 2017 05:34:34 -0700 (PDT)
Received: from VPR-VM.fra.hager.corp ([212.51.167.132])
	by smtp.gmail.com with ESMTPSA id
	l127sm1608729wmd.18.2017.10.27.05.34.33
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 27 Oct 2017 05:34:33 -0700 (PDT)
From: Vincent Prince <vincent.prince.fr@gmail.com>
To: yocto@yoctoproject.org,
	maxin.john@intel.com
Date: Fri, 27 Oct 2017 14:18:13 +0200
Message-Id: <1509106693-16052-2-git-send-email-vincent.prince.fr@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1509106693-16052-1-git-send-email-vincent.prince.fr@gmail.com>
References: <1509106693-16052-1-git-send-email-vincent.prince.fr@gmail.com>
Subject: [meta-oracle-java][PATCH 2/2] On headless arm, do_package() complains about missing libX11.so.6 provider.
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
X-List-Received-Date: Fri, 27 Oct 2017 12:34:36 -0000

Full JRE created by jrecreate contains awt/swing dynamic libraries linked to libx11.

This patch creates a compact JRE without those libraries.

Signed-off-by: Vincent Prince <vincent.prince.fr@gmail.com>
---
 recipes-devtools/oracle-java/oracle-jse-ejre.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-devtools/oracle-java/oracle-jse-ejre.inc b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
index d7a4b33..0b0d978 100644
--- a/recipes-devtools/oracle-java/oracle-jse-ejre.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
@@ -21,5 +21,5 @@ LIC_FILES_CHKSUM = "\
 do_compile() {
 	DEST=${S}/${JDK_JRE}${PV}_${PV_UPDATE}
 	rm -rf ${DEST}
-	JAVA_HOME=${STAGING_DIR_NATIVE}/${JDK_HOME} ejdk${PV}_${PV_UPDATE}/bin/jrecreate.sh --dest ${DEST}
+	JAVA_HOME=${STAGING_DIR_NATIVE}/${JDK_HOME} ejdk${PV}_${PV_UPDATE}/bin/jrecreate.sh --profile compact3 --vm all --extension locales --dest ${DEST}
 }
-- 
2.7.4


