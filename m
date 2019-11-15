Return-Path: <paul@betafive.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D34DBE00E51; Fri, 15 Nov 2019 05:09:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [64.147.123.21 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com
	[64.147.123.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 180D1E00C5C
	for <yocto@yoctoproject.org>; Fri, 15 Nov 2019 05:09:39 -0800 (PST)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id 793323A9;
	Fri, 15 Nov 2019 08:09:39 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
	by compute1.internal (MEProxy); Fri, 15 Nov 2019 08:09:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=betafive.co.uk;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding; s=fm3; bh=jRLShrejMNo0srvQsLfCPmb7NK
	vdICTaucpzw2I890I=; b=agKr5FEg1KDhjfBHbvdqJYh/m0jxBpHy2eiMb3sdUU
	he53b5lagHSTP0+QnhJoK/qY630VwrAZJJGk1MuzBkl+fID1Ij/0DSo1db7m7zAn
	iS9pBLdYJ+f5MBMRUaG1Mu9SNASgnaASZAz9+SzIpvZpEeEAIfcX7emolkkkt9sr
	4EgGSFjx9vh3FRt3EsGZAQ9AA9Gz9tnuRY5XuR/D2LJmnZ3RoTHge0EgfIhK11In
	1H02cvnFBbut8HoaanH+5rxNOBGKIGKw1yS0+tixJzrk7xRTh2lCsUVImtjYlNQ7
	FWQm2V4C28O86nBAmKp6g5MKHRj+WERtqNoAL5NuN57w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=jRLShrejMNo0srvQs
	LfCPmb7NKvdICTaucpzw2I890I=; b=UYrMENDQ5R1lxR8ZUgaE+npQkNLXHpMWc
	kxplbXc2uM1bZaf5U458UVfsChRwVE6KK3aJ7IXCRlQanGqUOzEqJO6AMwKrBKsF
	ZF2PgqCEDovYtrYq2/jqFl1hl4W0W88t2QduSjDMFoR/GsGa4ZozQg9FT2TFH07D
	MNhENdMwmeY7Pr+Uk/RxrZ4s997ekmv2+EAHrufZBNbYSuQrpdjtyOlkUP5uGau6
	+FDPYsVI/P7jPOm5wSRtLC0h3BPQ9pIcL7+YrTookVUOBCy3do2JXUk9x1SdYRtm
	gKYOWQs2hNVnhH9/KpJ7bJmiD3SoNQ6At1t4xm868857AQfQnE4yQ==
X-ME-Sender: <xms:kqPOXXTCykADO2lQNWFYUGYDXpmT0_JzT2tHPtl2O2cSCv42qyRFqg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudefhedggeelucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
	dttdenucfhrhhomheprfgruhhluceurghrkhgvrhcuoehprghulhessggvthgrfhhivhgv
	rdgtohdruhhkqeenucfkphepkedvrdegrddvtdejrdeivdenucfrrghrrghmpehmrghilh
	hfrhhomhepphgruhhlsegsvghtrghfihhvvgdrtghordhukhenucevlhhushhtvghrufhi
	iigvpedt
X-ME-Proxy: <xmx:kqPOXT_3Eyyf908lVLGPNcAz23DQ-3hQ2OLeRB58nOh1_JgSx2Xktw>
	<xmx:kqPOXb86zVgA04XyujbO2vaY1wVIULKt8_84VrqRkH5VIARyFBWKYQ>
	<xmx:kqPOXXRb1cks2fs88WwmA-NeopGbIKWiKGdTJkF_RyPPabAK3CaC1A>
	<xmx:k6POXZZUjOsiJVs8vUMKQ0rG1omHk77X3kG8MLyFAD69dWYZmnCENg>
Received: from arch-laptop.roaming.b5net.uk
	(cpc86219-nott20-2-0-cust829.12-2.cable.virginm.net [82.4.207.62])
	by mail.messagingengine.com (Postfix) with ESMTPA id 478EC8005C;
	Fri, 15 Nov 2019 08:09:38 -0500 (EST)
From: Paul Barker <paul@betafive.co.uk>
To: yocto@yoctoproject.org
Date: Fri, 15 Nov 2019 13:09:31 +0000
Message-Id: <20191115130931.47159-1-paul@betafive.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [patchtest-oe][PATCH] test_patch_upstream_status: Be explicit about case sensitivity
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
X-List-Received-Date: Fri, 15 Nov 2019 13:09:41 -0000
Content-Transfer-Encoding: 8bit

The case sensitivity of the checks for the "Upstream-Status" label
should match so that failure messages make sense. The checks in the
parse_upstream_status module are case sensitive and so the initial regex
check should also be made case sensitive.

A quick note about case sensitivity is added to the advice given if
"Upstream-Status" is not found.

Signed-off-by: Paul Barker <paul@betafive.co.uk>
---
 tests/test_patch_upstream_status.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/tests/test_patch_upstream_status.py b/tests/test_patch_upstream_status.py
index a477dfb..ecccc58 100644
--- a/tests/test_patch_upstream_status.py
+++ b/tests/test_patch_upstream_status.py
@@ -23,7 +23,7 @@ import os
 
 class PatchUpstreamStatus(base.Base):
 
-    upstream_status_regex = re.compile("(?<=\+)Upstream.Status", re.IGNORECASE)
+    upstream_status_regex = re.compile("(?<=\+)Upstream.Status")
 
     @classmethod
     def setUpClassLocal(cls):
@@ -47,7 +47,7 @@ class PatchUpstreamStatus(base.Base):
             payload = newpatch.__str__()
             if not self.upstream_status_regex.search(payload):
                 self.fail('Added patch file is missing Upstream-Status in the header',
-                          'Add Upstream-Status: <Valid status> to the header of %s' % newpatch.path,
+                          'Add Upstream-Status: <Valid status> (case sensitive) to the header of %s' % newpatch.path,
                           data=[('Standard format', self.standard_format), ('Valid status', self.valid_status)])
             for line in payload.splitlines():
                 if self.patchmetadata_regex.match(line):
-- 
2.17.1


