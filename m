Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A309BE008DE; Wed, 14 Jan 2015 07:12:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.171 listed in list.dnswl.org]
Received: from mail-pd0-f171.google.com (mail-pd0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C979CE00853
	for <yocto@yoctoproject.org>; Wed, 14 Jan 2015 07:12:45 -0800 (PST)
Received: by mail-pd0-f171.google.com with SMTP id y13so10300424pdi.2
	for <yocto@yoctoproject.org>; Wed, 14 Jan 2015 07:12:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=/9Z60oSBqkqLt/dM2mLpqqJz2L++6M1PnfWki9PwxN4=;
	b=JV6QXnCyPFxZaN0ZTydb7ZrICdLq4QnzeCqQME8yL0rhadKryW3BMwdTnKGWlJZulx
	iITIoZYgalN41DYR6cQstnHGOwsmSOf4wxVE+2qtmy2oQNDmKPnAw4AYtCXnFwobOZtb
	yTgxdTktgWSTUXezsMYvjoHM7wOZGPaA0GESK/oTkaBHK+rwNr88IVf4bnjSaVnu+REa
	Kw1wvZt3ZDvovJVdHPqKuA2ljgpxwAgkabrPLV1xFeHB7T+fHvGqe0WNMmDYwwi6hlJC
	D1GGaausXGMWrEaJWnOoZAk9L5/loNK2LvwvLhOZCSQxy+32xV6kK5E+sQ45v4+d6Cn5
	mLeg==
X-Received: by 10.70.1.8 with SMTP id 8mr6675999pdi.26.1421248365521;
	Wed, 14 Jan 2015 07:12:45 -0800 (PST)
Received: from Pahoa2.mvista.com (c-107-3-174-189.hsd1.ca.comcast.net.
	[107.3.174.189]) by mx.google.com with ESMTPSA id
	re13sm2094690pdb.28.2015.01.14.07.12.43 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 14 Jan 2015 07:12:44 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 14 Jan 2015 07:12:35 -0800
Message-Id: <1421248358-14391-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1421248358-14391-1-git-send-email-akuster808@gmail.com>
References: <1421248358-14391-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/5] ccs-tools: remove unused variable.
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
X-List-Received-Date: Wed, 14 Jan 2015 15:12:53 -0000

There was a ref to  DEPEND  with is meaningless so remove it.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/ccs-tools/ccs-tools_1.8.3.bb | 1 -
 1 file changed, 1 deletion(-)

diff --git a/recipes-security/ccs-tools/ccs-tools_1.8.3.bb b/recipes-security/ccs-tools/ccs-tools_1.8.3.bb
index 92f82ef..a47cafe 100644
--- a/recipes-security/ccs-tools/ccs-tools_1.8.3.bb
+++ b/recipes-security/ccs-tools/ccs-tools_1.8.3.bb
@@ -47,4 +47,3 @@ FILES_${PN}-dbg = "\
 "
 
 REQUIRED_DISTRO_FEATURES ?=" tomoyo"
-RDEPEND += "systemd"
-- 
1.9.1


