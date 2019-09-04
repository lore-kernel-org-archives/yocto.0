Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 581DDE00BB5; Wed,  4 Sep 2019 16:27:01 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.178 listed in list.dnswl.org]
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com
	[209.85.214.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30035E00BB5
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2019 16:26:59 -0700 (PDT)
Received: by mail-pl1-f178.google.com with SMTP id bd8so331722plb.6
	for <yocto@yoctoproject.org>; Wed, 04 Sep 2019 16:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=SNw2N+CO7vKwbI/rDkOI32cwOmsQHpqSxqqlYIyTRv8=;
	b=AESOpnFFYe9f8BzXuoIsKX1Stac8hiWnt+Qb2UZB14tjhLkFbX3l5HUZdHqvEYRFuT
	0ug7mKXi2VmgFUkNshfGbf/wpWRd9jvusW4+g2GCGDCYskDO3JzL9SSZzFxNIQm9KE4Q
	Z9Lhy4tvETzIQ4oxYOq4NQ3QvNISc2RxiJu9re1KULoFTIYFVjDCAjIZ8OGVOHayykru
	1IaMH0FqCQFtKFbwaHbdjPcvDSkciyXJK5mMoUzn25i7jbLpUVzMdxEG2hGcC8X6m1EH
	ie8gmC176AUyatGW6VvunmTiFceFQqu9WYaxovkX+sco9jCydLk6GGNc9ddsT+78siuT
	Dq5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=SNw2N+CO7vKwbI/rDkOI32cwOmsQHpqSxqqlYIyTRv8=;
	b=AtpH0atEh++exaIu+ZxaJpLVdyvJxdS9JYyJFSWN9iwDB5CYZllqr08xIMC3vPIumF
	T/BTYpj691I7polC35tL+lqdX9oKl9wp2ejAhGH7f2L2BQ8n7UUBegJ/ab78ofhlORu/
	l2x1OzxoRQlOGBFN5iqgPFm6X9RZbI4uWGQ1PtGwKUEmp9faHG4+rRVowbloQPaCHmGv
	2OzBiTwi+292Vtk9+ccFIbdnUZ4zhC3y1DeHxweGybu8hX+VuLfeFmJsgIs6YqDJLQ8P
	QfI7gWnzHDykXCglIghXZIlZgG6eJ4A5GTcDdg4RSmuC1lC+IKc2AMXtdLD8UgFpTGbt
	ASaA==
X-Gm-Message-State: APjAAAUPrS0HQVZgEyWvopPcijRbhkfmJ9bjiThZtr+poV7fPnuLoNnY
	eMB7/7A73faRzU5Fx4TDvm3rIjVp
X-Google-Smtp-Source: APXvYqzHprdHLJJBP606Ja/70EJRuT4SigtOjGsW6coxLZPbWYt9w3uFEIKMhT4lMSPjdIAuVDtjbA==
X-Received: by 2002:a17:902:8f90:: with SMTP id
	z16mr315357plo.138.1567639619267; 
	Wed, 04 Sep 2019 16:26:59 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	(c-71-204-143-8.hsd1.ca.comcast.net. [71.204.143.8])
	by smtp.gmail.com with ESMTPSA id
	129sm153508pfd.173.2019.09.04.16.26.58 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 04 Sep 2019 16:26:58 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  4 Sep 2019 16:26:54 -0700
Message-Id: <1567639615-8404-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567639615-8404-1-git-send-email-akuster808@gmail.com>
References: <1567639615-8404-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/3] oe-scap: Fix QA RDEPENDS error
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
X-List-Received-Date: Wed, 04 Sep 2019 23:27:01 -0000

ERROR: oe-scap-1.0-r0 do_package_qa: QA Issue: /usr/share/oe-scap/run_tests.sh contained in package oe-scap requires /bin/bash, but no providers found in RDEPENDS_oe-scap? [file-rdeps]

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-security-compliance/recipes-openscap/oe-scap/oe-scap_1.0.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-security-compliance/recipes-openscap/oe-scap/oe-scap_1.0.bb b/meta-security-compliance/recipes-openscap/oe-scap/oe-scap_1.0.bb
index e84ed30..fd53fcb 100644
--- a/meta-security-compliance/recipes-openscap/oe-scap/oe-scap_1.0.bb
+++ b/meta-security-compliance/recipes-openscap/oe-scap/oe-scap_1.0.bb
@@ -30,4 +30,4 @@ do_install () {
 
 FILES_${PN} += "${datadir}/oe-scap"
 
-RDEPENDS_${PN} = "openscap"
+RDEPENDS_${PN} = "openscap bash"
-- 
2.7.4


