Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36497E00BAA; Wed, 20 Jan 2016 05:42:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9387E00B9C
	for <yocto@yoctoproject.org>; Wed, 20 Jan 2016 05:42:36 -0800 (PST)
Received: by mail-wm0-f48.google.com with SMTP id r129so131632244wmr.0
	for <yocto@yoctoproject.org>; Wed, 20 Jan 2016 05:42:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id;
	bh=vII051Gi4Y0EB5vwhdArxm5aFQHRZc5mocbK0CT57wg=;
	b=b0v9LeLdCxDSwb7bgdh7SAwD7nCb8NYsOU+8VzAvVbNk2PUbkJkeLVh7gkUI6+lCE+
	Kr+MtcYU9vv5oIIPcB+uy87WrLKPn2URbs58lE6qKdjN7CPKoWOw0OKrTrCTb5ZwKnZx
	HmlPPZVRlskdUhH6io02Yl70Y+j8DuQCFV4Qw22wGkTnV6eeATHJW5ci/Wu/F8yrA3Ba
	TtTgMqwRXz7vPDbWgKUk9btwIigkaulW/PrvRZN0uPdTrP4HQ8ygcQVP6XNuhyiZ3ePK
	3kph6MB5zIvnflzAW5jAmVe7V6FiIuyGoJ3yApXblF8K6ItWQhQuuYAwfmN3AqCTnAd+
	yICg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=vII051Gi4Y0EB5vwhdArxm5aFQHRZc5mocbK0CT57wg=;
	b=kuyRKH9NKUvwzh6empqoxm4+sDWcfPHirFC5E4fzWIM7sR+Qwozyd9ngix6le/XowS
	2G2bPg8jrgwGkabPgTa7To0qDNt9kPV2u0PPW+3/2rzVy3ELnagQowVCvZ+1KNEPGb88
	VRItVzviBoxq6VTIXREM8LG0AnnfE56n/Gf1UAGrwRBwdAzFfdVC2OOCOdcFUsZQm1C6
	cJUOzQ1T5sm3a1xXbqT2z+BoO5ykz2SFIEHKaNwCvpR4V3wQ513MEBgyoOX9WJoPTt1R
	Ppao7autE6tFwasFIQIT7Ejrpkrtxxy5KOxoUbiVWdz/Btlxc9uegqwsVebtDbXdUWZu
	VIvA==
X-Gm-Message-State: ALoCoQlKfUfhVvEXeceEb8ulyYnYJmu2zZYu1ONtXpjw3Q6dSknQdWYGeTlXK70hgJho+UPR8ohWwTPrCJFDWtsyt751+V1XLw==
X-Received: by 10.194.24.226 with SMTP id x2mr35566885wjf.43.1453297355111;
	Wed, 20 Jan 2016 05:42:35 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	c203sm25196259wmd.5.2016.01.20.05.42.34 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 20 Jan 2016 05:42:34 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 20 Jan 2016 13:42:31 +0000
Message-Id: <1453297351-6620-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 2.6.4
Subject: [PATCH][meta-qt3] qt-x11-free: update SRC_URI
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
X-List-Received-Date: Wed, 20 Jan 2016 13:42:45 -0000

ftp.trolltech.com doesn't exist anymore, so update SRC_URI to use qt.io.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 recipes-qt3/qt3/qt-x11-free_3.3.7.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-qt3/qt3/qt-x11-free_3.3.7.bb b/recipes-qt3/qt3/qt-x11-free_3.3.7.bb
index 89f976d..f90f9b9 100644
--- a/recipes-qt3/qt3/qt-x11-free_3.3.7.bb
+++ b/recipes-qt3/qt3/qt-x11-free_3.3.7.bb
@@ -5,7 +5,7 @@ PR = "${INC_PR}.1"
 LIC_FILES_CHKSUM = "file://LICENSE.GPL;md5=b07b0d5ac6b1822effe47173a1744433 \
                     file://LICENSE.QPL;md5=b81b6b6fc04ed873adde5aa901c0613b"
 
-SRC_URI = "ftp://ftp.trolltech.com/qt/source/qt-x11-free-${PV}.tar.bz2 \
+SRC_URI = "http://download.qt.io/archive/qt/3/${BP}.tar.bz2 \
 	   file://configure.patch \
 	   file://no-examples.patch \
            file://gcc4_1-HACK.patch \
-- 
2.6.4


