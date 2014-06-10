Return-Path: <ajlennon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83B48E00BBA; Tue, 10 Jun 2014 02:45:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.1 DKIM_SIGNED Message has a DKIM or DK signature,
	not necessarily *      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.169 listed in list.dnswl.org]
Received: from mail-we0-f169.google.com (mail-we0-f169.google.com
	[74.125.82.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26762E00B0B
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 02:45:47 -0700 (PDT)
Received: by mail-we0-f169.google.com with SMTP id t60so1926633wes.28
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 02:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:in-reply-to:references;
	bh=51nydbrPtGElYiEiImaiPemKOiPqM8yLDqvOfvhQqko=;
	b=PVtVXh0eX22XgQ5/6sGJz+ZEB7VbNYcesVEaxJmplEu/xJuQfdPAFmeUo61e6Yxkyz
	iufNIR2YGUW328L0oVm25HmzKSsN6pV+rMiFRQQF0Txn2EI9vcNpAfJdbSfkaBz/rAB+
	ouy5rLT1Cn4FgqSQM/JqyDmc5uM8fi+raWBx9i5a0v4Xdx7DwNukwEZJ6XYQfmIDeHgq
	6m8kvW1cShHq1cd+EtYyC38zYdfI+jzvXfbov0Da76Hca/r5Ler3WGQ5PP7QCnYrTNDC
	3aT5Qaz2OJojUDEfffTwXrLhBV1VYIuSaPfPJ7CTan+zEvfOX4+8FHcb25z3WnsDngi0
	Xwyg==
X-Received: by 10.180.77.70 with SMTP id q6mr36245721wiw.28.1402393546496;
	Tue, 10 Jun 2014 02:45:46 -0700 (PDT)
Received: from localhost.localdomain
	(cpc32-live22-2-0-cust59.17-2.cable.virginm.net. [82.36.253.60])
	by mx.google.com with ESMTPSA id
	hi6sm28770488wjc.32.2014.06.10.02.45.45 for <yocto@yoctoproject.org>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 10 Jun 2014 02:45:45 -0700 (PDT)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org
Date: Tue, 10 Jun 2014 10:45:16 +0100
Message-Id: <08a914fef41e8dd5e70057fc6add16c75b3618a0.1402393381.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 2.0.0
In-Reply-To: <cover.1402393381.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1402393381.git.ajlennon@dynamicdevices.co.uk>
Subject: [PATCH 1/1] README: Add link to best practice when providing patches
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
X-List-Received-Date: Tue, 10 Jun 2014 09:45:53 -0000

Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
---
 README | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/README b/README
index 0a18c9c..425ccd5 100644
--- a/README
+++ b/README
@@ -47,3 +47,10 @@ repository.
 
 Note: The scripts directory should be treated with extra care as it is a mix
       of oe-core and poky-specific files.
+
+Patch Creation
+==============
+
+Prior to providing a patch, please review the Best Known Methods for Package Updating
+
+https://wiki.yoctoproject.org/wiki/Best_Known_Methods_(BKMs)_for_Package_Updating#Patches
-- 
2.0.0


