Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6EECAE008EA; Wed, 14 Jan 2015 07:12:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f182.google.com (mail-pd0-f182.google.com
	[209.85.192.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAF8DE0084D
	for <yocto@yoctoproject.org>; Wed, 14 Jan 2015 07:12:49 -0800 (PST)
Received: by mail-pd0-f182.google.com with SMTP id p10so10236598pdj.13
	for <yocto@yoctoproject.org>; Wed, 14 Jan 2015 07:12:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=rgyr8rSCCdUHVg5nP/3pT4ANXQP2XIEy4CEx564G82Y=;
	b=atJpfUKIKIOLNI6DGIyqa2ukOw/gSTQZV5vS85Wz7SWPS6PEqFXPSbz3YvIneORwMi
	jQTdVq/HwDMnxMVHBs4kv5zikCmo3keGG7ByQxip6H2M6C57s58H49HsFzskkkUUtGvc
	fKg1USc/oS+zu4U3IhZtS8bUVRZKfylQGhcRutd62U5hD89yGrviU9JjpJL7E6D8Aj7O
	MVLAEHM6OK1WqsJ8wfqwNIYTk4WBx9IwihTnBV05nKH5A3/Wh9kaXZJAWXHu53s2rgNu
	UnKmwxFaJG2zSwlGb2kAPyLwEqiIA4NTc8bJhzSiXvnPeSA9PSL2/rGwbcERP0eyCfeR
	ZU/A==
X-Received: by 10.70.47.161 with SMTP id e1mr6433528pdn.55.1421248369696;
	Wed, 14 Jan 2015 07:12:49 -0800 (PST)
Received: from Pahoa2.mvista.com (c-107-3-174-189.hsd1.ca.comcast.net.
	[107.3.174.189]) by mx.google.com with ESMTPSA id
	re13sm2094690pdb.28.2015.01.14.07.12.47 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 14 Jan 2015 07:12:48 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 14 Jan 2015 07:12:37 -0800
Message-Id: <1421248358-14391-4-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1421248358-14391-1-git-send-email-akuster808@gmail.com>
References: <1421248358-14391-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 4/5] checksec: fix rdepend issue
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
X-List-Received-Date: Wed, 14 Jan 2015 15:12:51 -0000

WARNING: QA Issue: checksec requires /bin/bash, but no providers in its RDEPENDS [file-rdeps]

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/checksec/checksec_1.5.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-security/checksec/checksec_1.5.bb b/recipes-security/checksec/checksec_1.5.bb
index 49ecc28..07f0f7c 100644
--- a/recipes-security/checksec/checksec_1.5.bb
+++ b/recipes-security/checksec/checksec_1.5.bb
@@ -14,3 +14,5 @@ do_install() {
     install -d ${D}${bindir}
     install -m 0755 ${WORKDIR}/checksec.sh    ${D}${bindir}
 }
+
+RDEPENDS_${PN} = "bash"
-- 
1.9.1


