Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95506E00BE1; Thu,  3 Mar 2016 12:54:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vaduvajanalexandru[at]yahoo.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [98.136.216.167 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm28-vm8.bullet.mail.gq1.yahoo.com
	(nm28-vm8.bullet.mail.gq1.yahoo.com [98.136.216.167])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B998BE00B97
	for <yocto@yoctoproject.org>; Thu,  3 Mar 2016 12:54:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1457038488; bh=XyasG825113a7fChdAcM1AaueglS5gECDPDJ3FBsSBU=;
	h=From:To:Cc:Subject:Date:From:Subject;
	b=efke78wKskPL79oOQiyBrXHQn1x+KNd2V0bYVl1cqLKElN4JGU6ttPZenu/r1BXhLMdfVqcvFBUmljlZsA/1KQFxadUHXPLxRCLelL/UyhFYXZlIChXSz2WKnFtGoyFzKIiU66ogcxBsC63G3fzESB+vclf91sgHAsL7ajzBmQYxNfT4pNldohCx++x3qw1QWzUkrd+TQ7FgGk8cZkb9yTq0BF29+COi3PyfP3/KOR0PRNvIrLH63Yz+DGCbeuZ5r+YJFsHx3YaqkgV58i66umQm8NfUpWo82N1k9lJNk2sf1c32tM0nUiuLPfntuoQ7xG9aighsB9oXx5fh0s000Q==
Received: from [98.137.12.58] by nm28.bullet.mail.gq1.yahoo.com with NNFMP;
	03 Mar 2016 20:54:48 -0000
Received: from [98.136.164.70] by tm3.bullet.mail.gq1.yahoo.com with NNFMP;
	03 Mar 2016 20:54:48 -0000
Received: from [127.0.0.1] by smtp232.mail.gq1.yahoo.com with NNFMP;
	03 Mar 2016 20:54:48 -0000
X-Yahoo-Newman-Id: 552072.51286.bm@smtp232.mail.gq1.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: Fdch9RMVM1mbkZigD7V1fGFc2PuRxzkmXyuCIjrM2o6W6kL
	oAWmBNdekNRwRcanEypUUa92ppU91gwyxcqxGo4cZKIqS3C09Qbra0CyzuqU
	FDxynsEXuO_pmK4olD2e3qB44zM1Z4YIrFuoWnVinGXsyDo6QVrhIsBT0Moc
	KssiHppgSuD_vb65nb6AH4yRrI_u9eKWHxkCBOhYIN95HpTcCxurPZbu4kQK
	g8_vtvDMQ69hZF8.QVbM_hkpk4mkVlgQ5UZcCqt9NSNDG4m.IxnZf2DSoH18
	bTWhKmjQ0fM3KyypWsBwwP0d8SQMRVayZ89k4HC7Mc936YXbDXB2Yqmb6sfE
	mWo6anc3AVGmZXFW4zsXxAvOOQXsBm9N3p6zVuE6tjS0Qh4Uk76a9DVGgMpF
	qq3VljOXtms.9ldE45vMgG_hRacwb5OzDMV7lZ7adFIqIQNX7dXSCEt8PRaK
	RgK1OL3vgUIpOkwPWPTyHxZwvd1wN2nc_2rUl5aJRfPJcNFkw8uI91xfjmR.
	vlj2AjqLhQM8fqNYjHmmbf.YohjyhvIHcImvgUnUZy1wsgdldi.HjDqxz4HI
	GI269v7NmwL0vLhjLEg--
X-Yahoo-SMTP: nOggmNuswBA1X.L67jJQBEggMWwFMkOGtH3lM4PRRQ--
From: vaduvajanalexandru@yahoo.com
To: yocto@yoctoproject.org
Date: Thu,  3 Mar 2016 22:54:44 +0200
Message-Id: <1457038484-6834-1-git-send-email-alexandru.vaduva@linux.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-cgl][PATCH] add a more generic support for generic defined bbappends
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
X-List-Received-Date: Thu, 03 Mar 2016 20:54:52 -0000

The four recipes bbappends:
    base-files
    sysvinit
    iscsi-initiator-utils
    umip
only add generic support, one that is applicable for every recipe
version so a more generic bbappend is defined for them.
This is done to ensure the fact that whenever the bb version increases
there wil not be the need for an extra bbappend with the same
functionality.

Signed-off-by: Alexandru.Vaduva <alexandru.vaduva@linux.com>
---
 .../base-files/{base-files_3.0.14.bbappend => base-files_3.%.bbappend}    | 0
 .../sysvinit/{sysvinit_2.88dsf.bbappend => sysvinit_2.%.bbappend}         | 0
 ...-initiator-utils_2.0-873.bbappend => iscsi-initiator-utils_%.bbappend} | 0
 meta-cgl-common/recipes-extended/umip/{umip%.bbappend => umip_%.bbappend} | 0
 4 files changed, 0 insertions(+), 0 deletions(-)
 rename meta-cgl-common/recipes-core/base-files/{base-files_3.0.14.bbappend => base-files_3.%.bbappend} (100%)
 rename meta-cgl-common/recipes-core/sysvinit/{sysvinit_2.88dsf.bbappend => sysvinit_2.%.bbappend} (100%)
 rename meta-cgl-common/recipes-extended/iscsi-initiator-utils/{iscsi-initiator-utils_2.0-873.bbappend => iscsi-initiator-utils_%.bbappend} (100%)
 rename meta-cgl-common/recipes-extended/umip/{umip%.bbappend => umip_%.bbappend} (100%)

diff --git a/meta-cgl-common/recipes-core/base-files/base-files_3.0.14.bbappend b/meta-cgl-common/recipes-core/base-files/base-files_3.%.bbappend
similarity index 100%
rename from meta-cgl-common/recipes-core/base-files/base-files_3.0.14.bbappend
rename to meta-cgl-common/recipes-core/base-files/base-files_3.%.bbappend
diff --git a/meta-cgl-common/recipes-core/sysvinit/sysvinit_2.88dsf.bbappend b/meta-cgl-common/recipes-core/sysvinit/sysvinit_2.%.bbappend
similarity index 100%
rename from meta-cgl-common/recipes-core/sysvinit/sysvinit_2.88dsf.bbappend
rename to meta-cgl-common/recipes-core/sysvinit/sysvinit_2.%.bbappend
diff --git a/meta-cgl-common/recipes-extended/iscsi-initiator-utils/iscsi-initiator-utils_2.0-873.bbappend b/meta-cgl-common/recipes-extended/iscsi-initiator-utils/iscsi-initiator-utils_%.bbappend
similarity index 100%
rename from meta-cgl-common/recipes-extended/iscsi-initiator-utils/iscsi-initiator-utils_2.0-873.bbappend
rename to meta-cgl-common/recipes-extended/iscsi-initiator-utils/iscsi-initiator-utils_%.bbappend
diff --git a/meta-cgl-common/recipes-extended/umip/umip%.bbappend b/meta-cgl-common/recipes-extended/umip/umip_%.bbappend
similarity index 100%
rename from meta-cgl-common/recipes-extended/umip/umip%.bbappend
rename to meta-cgl-common/recipes-extended/umip/umip_%.bbappend
-- 
1.9.1


