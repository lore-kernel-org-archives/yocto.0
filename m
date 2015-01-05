Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7788E0083A; Sun,  4 Jan 2015 23:25:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D8A0E003E3
	for <yocto@yoctoproject.org>; Sun,  4 Jan 2015 23:24:58 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id t057OuQB004846
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 4 Jan 2015 23:24:56 -0800 (PST)
Received: from pek-kkang-d2.wrs.com (128.224.163.146) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.174.1; Sun, 4 Jan 2015 23:24:55 -0800
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 5 Jan 2015 15:25:14 +0800
Message-ID: <1420442714-13859-1-git-send-email-jackie.huang@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [meta-selinux][PATCH] lsof: use wildcard for version number in bbappend
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
X-List-Received-Date: Mon, 05 Jan 2015 07:25:02 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

The recipe in oe-core is already updated:
b463d70 lsof: Upgrade to 4.88

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 recipes-extended/lsof/{lsof_4.87.bbappend => lsof_%.bbappend} | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-extended/lsof/{lsof_4.87.bbappend => lsof_%.bbappend} (100%)

diff --git a/recipes-extended/lsof/lsof_4.87.bbappend b/recipes-extended/lsof/lsof_%.bbappend
similarity index 100%
rename from recipes-extended/lsof/lsof_4.87.bbappend
rename to recipes-extended/lsof/lsof_%.bbappend
-- 
1.9.1


