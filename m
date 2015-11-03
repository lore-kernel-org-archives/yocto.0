Return-Path: <manjeet.p@samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52C0EE00B54; Tue,  3 Nov 2015 03:56:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	SPF_HELO_PASS,T_HDRS_LCASE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [203.254.224.34 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 T_HDRS_LCASE Odd capitalization of message header
X-Greylist: delayed 605 seconds by postgrey-1.32 at yocto-www;
	Tue, 03 Nov 2015 03:56:16 PST
Received: from mailout4.samsung.com (mailout4.samsung.com [203.254.224.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48A37E00AA5
	for <yocto@yoctoproject.org>; Tue,  3 Nov 2015 03:56:16 -0800 (PST)
Received: from epcpsbgr2.samsung.com
	(u142.gpu120.samsung.co.kr [203.254.230.142])
	by mailout4.samsung.com (Oracle Communications Messaging Server
	7.0.5.31.0 64bit (built May  5 2014))
	with ESMTP id <0NX802DKLM0YHS90@mailout4.samsung.com> for
	yocto@yoctoproject.org; Tue, 03 Nov 2015 20:46:10 +0900 (KST)
Received: from epcpsbgm1new.samsung.com ( [172.20.52.123])
	by epcpsbgr2.samsung.com (EPCPMTA) with SMTP id 4B.DB.05272.28E98365;
	Tue, 3 Nov 2015 20:46:10 +0900 (KST)
X-AuditID: cbfee68e-f791c6d000001498-21-56389e827995
Received: from epmmp2 ( [203.254.227.17])	by epcpsbgm1new.samsung.com (EPCPMTA)
	with SMTP id 29.B3.23663.28E98365; Tue,  3 Nov 2015 20:46:10 +0900 (KST)
Received: from localhost.localdomain ([107.108.92.210])
	by mmp2.samsung.com (Oracle Communications Messaging Server 7.0.5.31.0
	64bit
	(built May 5 2014)) with ESMTPA id <0NX800FNFLYNKR30@mmp2.samsung.com>;
	Tue, 03 Nov 2015 20:46:10 +0900 (KST)
From: Manjeet Pawar <manjeet.p@samsung.com>
To: yocto@yoctoproject.org, mark.hatle@windriver.com
Date: Tue, 03 Nov 2015 17:14:39 +0530
Message-id: <1446551079-38517-1-git-send-email-manjeet.p@samsung.com>
X-Mailer: git-send-email 1.7.9.5
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrMLMWRmVeSWpSXmKPExsWyRsSkWrdpnkWYwa7dghYvXk1gsXhw4SqT
	Rdvbn2wWh+e3sVjca13LZrHp+UEg681WJotDJ+cyWkx6uYbNgdOjb8sqRo/1W7YyebSf6GML
	YI7isklJzcksSy3St0vgyjiwcwNTwUX2iraLP1kbGKeydTFyckgImEjsnfaYCcIWk7hwbz1Q
	nItDSGAFo8TfQ28YYYoatv8DaxASmMUosfWgMETRT0aJxT8OsYAk2AS0Jfb8aGPvYuTgEAFq
	eNjHCFLDLHCSUeLIL5A4J4ewgI3E3AMdYINYBFQlFrXeBtvMK+AqcWJfMxtIr4SAgsScSTYg
	vRICzewSja+2skPUC0h8mwyyC6RGVmLTAWaI2yQlDq64wTKBUXABI8MqRtHUguSC4qT0IiO9
	4sTc4tK8dL3k/NxNjMCwPf3vWd8OxpsHrA8xCnAwKvHwLlhiHibEmlhWXJl7iNEUaMNEZinR
	5HxgdOSVxBsamxlZmJqYGhuZW5opifMmSP0MFhJITyxJzU5NLUgtii8qzUktPsTIxMEp1cA4
	+/bGs0sn6Tul/ft18NWhvdU8p25cWeaiFO/xhP1c+mvrM7fe7DkyJeBes4Pd5b4fP6oM9nzq
	22UgefLh5x3cWntqbNh9bjx5cSlTX8tF1Gpz6X2dPdLOabyLXD5wvL08w+WGxq84rqMzr09X
	kA3b8WzCvZcHp6tPjXvtV/14luzK2SL6z9T/PVJiKc5INNRiLipOBADKR/eTVgIAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprAIsWRmVeSWpSXmKPExsVy+t9jQd2meRZhBo0HuSxevJrAYvHgwlUm
	i7a3P9ksDs9vY7G417qWzWLT84NA1putTBaHTs5ltJj0cg2bA6dH35ZVjB7rt2xl8mg/0ccW
	wBzVwGiTkZqYklqkkJqXnJ+SmZduq+QdHO8cb2pmYKhraGlhrqSQl5ibaqvk4hOg65aZA3SI
	kkJZYk4pUCggsbhYSd8O04TQEDddC5jGCF3fkCC4HiMDNJCwhjHjwM4NTAUX2SvaLv5kbWCc
	ytbFyMkhIWAi0bD9H5QtJnHh3nowW0hgFqPE1oPCXYxcQPZPRonFPw6xgCTYBLQl9vxoY+9i
	5OAQAWp+2McIUsMscJJR4sgvkDgnh7CAjcTcAx1gg1gEVCUWtd5mArF5BVwlTuxrZgPplRBQ
	kJgzyWYCI/cCRoZVjBKpBckFxUnpuYZ5qeV6xYm5xaV56XrJ+bmbGMGx8UxqB+PBXe6HGAU4
	GJV4eBcsMQ8TYk0sK67MPcQowcGsJMK7e65FmBBvSmJlVWpRfnxRaU5q8SFGU6D9E5mlRJPz
	gXGbVxJvaGxibmpsamliYWJmqSTOq+9pFCYkkJ5YkpqdmlqQWgTTx8TBKdXA6LA/wlF6ybfN
	Ass3mOj19n5OyPkonuC7a8rzvQ8uOpWybfzM8o1nupB82af2XxWtJ6N14z2vcpraFncmfGyp
	nJKZrJXhvOOSUNPE+4WbJ2tVLz5w/OyDj+9/TTO7H3iuca/8p+pV/8ucxFb03O3Su2CjHMoU
	d/3q0QzvP8VZNsZfMk2Pr5yyTYmlOCPRUIu5qDgRAOZ2H4KjAgAA
DLP-Filter: Pass
X-MTR: 20000000000000000@CPGS
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Tue, 03 Nov 2015 06:41:51 -0800
Cc: Vaneet Narang <v.narang@samsung.com>, ajeet.y@samsung.com,
	doha.hwang@samsung.com, hakbong5.lee@samsung.com,
	maninder1.s@samsung.com, Manjeet Pawar <manjeet.p@samsung.com>,
	pankaj.m@samsung.com
Subject: [PATCH 1/1] Fix AARCH64_TLSDESC relocation conflict
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
X-List-Received-Date: Tue, 03 Nov 2015 11:56:18 -0000

This patch needs to be applied to 'cross_prelink_aarch64' branch.
It fixes tls1, tls2, tls4, tls5, tls6 test cases of prelink testsuite.
tls3 gets failed but this test case fails without prelink as well on AARCH64

Signed-off-by: Vaneet Narang <v.narang@samsung.com>
Signed-off-by: Manjeet Pawar <manjeet.p@samsung.com>
---
 src/arch-aarch64.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/src/arch-aarch64.c b/src/arch-aarch64.c
index e04dd6e..6499c68 100644
--- a/src/arch-aarch64.c
+++ b/src/arch-aarch64.c
@@ -375,7 +375,7 @@ aarch64_prelink_conflict_rela (DSO *dso, struct prelink_info *info,
       break;
     case R_AARCH64_TLSDESC:
 	  tls = conflict ? conflict->lookup.tls : info->curtls;
-	  ret->r_addend =  rela->r_addend + tls->offset;
+	  ret->r_addend = value + rela->r_addend + tls->offset;
      break;
     default:
       error (0, 0, "%s: Unknown AARCH64 relocation type %d", dso->filename,
-- 
1.7.1


