Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF942E009B3; Mon,  3 Aug 2015 06:37:36 -0700 (PDT)
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
	*      [209.85.220.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BAE9E00A19
	for <yocto@yoctoproject.org>; Mon,  3 Aug 2015 06:36:16 -0700 (PDT)
Received: by pawu10 with SMTP id u10so13164870paw.1
	for <yocto@yoctoproject.org>; Mon, 03 Aug 2015 06:36:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=uaQLZgPr9Nt6kQMigJnl/YsJ2vZvYubJdwvE9kvtgWY=;
	b=UXceLd6LE8d+gQob4n9XnoHGJgB5eNZdsGqfDMLTjchkketZyu8zJhhGrpdeYWtKN1
	jttS01SW84jQ1hN9RUvV0i1UCfHkPeAIE9JExA7qDFEQZiQs7GnfURI6NmdI7zb7TDd6
	qqAfjqyUJutPr3XI1ES9I3OOI9fezfFHIwmwYdcHn0sA7cGyT7pN81dyTp0KO3S27Eb2
	MS5GdqcuTkX+VIAFkQukFQ7TxCp9p0g9eSCOgsaLQqC/w0ZYSc0SjOBtp1GHcXKuDxl/
	VzpEEQqN4/UFBK9xFz1AzBxKrKu3IZmHvwiTgx1dBkQQj2DqT4UR54nvlorSrgCI567X
	1h2w==
X-Received: by 10.68.224.162 with SMTP id rd2mr23783113pbc.33.1438608976431;
	Mon, 03 Aug 2015 06:36:16 -0700 (PDT)
Received: from localhost.localdomain ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	xf6sm7999277pbc.70.2015.08.03.06.36.14
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 03 Aug 2015 06:36:15 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  3 Aug 2015 19:07:20 +0530
Message-Id: <1438609040-10118-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][PATCH 8/8] README : update supported refpolicy version details
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
X-List-Received-Date: Mon, 03 Aug 2015 13:37:36 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

README updated with the supported refpolicy version
details and information of refpolicy building from
git repository.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 README |   15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/README b/README
index 3fe8af4..afee84a 100644
--- a/README
+++ b/README
@@ -66,6 +66,21 @@ working with this layer, without the additional Poky meta data.  This
 approach may work, but is not generally tested by the maintainers.
 
 
+Using different versions of refpolicy
+-------------------------------------
+To prepare selinux enabled images using different ver. of refpolicy,
+we can choose supported releases of refpolicy
+refer to available versions under recipes-security/refpolicy
+
+We can use the refpolicy directly from git repository instead of release tarballs.
+By default refpolicy from git builds head commit of master branch, we can update
+SRCREV for refpolicy and refpolicy-contrib as appropriate at refpolicy_git.inc
+to check refpolicy as per required commits.
+
+* enable the preferred refpolicy-mls to local.conf or oe-selinux.conf
+e.g. REFERRED_VERSION_refpolicy-mls = "2.20140311"
+
+
 License
 -------
 
-- 
1.7.9.5


