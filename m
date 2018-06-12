Return-Path: <prvs=5701fdb85f=adrian.ratiu@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37EFAE0273E; Tue, 12 Jun 2018 07:36:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [148.163.156.75 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1619 seconds by postgrey-1.32 at yocto-www;
	Tue, 12 Jun 2018 07:36:00 PDT
Received: from mx0b-00010702.pphosted.com (mx0a-00010702.pphosted.com
	[148.163.156.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA170E024D5
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 07:36:00 -0700 (PDT)
Received: from pps.filterd (m0098781.ppops.net [127.0.0.1])
	by mx0a-00010702.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	w5CE5abx016103; Tue, 12 Jun 2018 09:08:58 -0500
Received: from ni.com (skprod2.natinst.com [130.164.80.23])
	by mx0a-00010702.pphosted.com with ESMTP id 2jgcb4hajj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Tue, 12 Jun 2018 09:08:58 -0500
Received: from us-aus-exhub1.ni.corp.natinst.com
	(us-aus-exhub1.ni.corp.natinst.com [130.164.68.41])
	by us-aus-skprod2.natinst.com (8.16.0.22/8.16.0.22) with ESMTPS id
	w5CE8v0i009004
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Tue, 12 Jun 2018 09:08:57 -0500
Received: from us-aus-exhub2.ni.corp.natinst.com (130.164.68.32) by
	us-aus-exhub1.ni.corp.natinst.com (130.164.68.41) with Microsoft SMTP
	Server (TLS) id 15.0.1156.6; Tue, 12 Jun 2018 09:08:57 -0500
Received: from ionel-work.natinst.com (130.164.49.7) by
	us-aus-exhub2.ni.corp.natinst.com (130.164.68.32) with Microsoft SMTP
	Server
	id 15.0.1156.6 via Frontend Transport; Tue, 12 Jun 2018 09:08:56 -0500
From: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
To: <ajlennon@dynamicdevices.co.uk>
Date: Tue, 12 Jun 2018 17:10:24 +0300
Message-ID: <20180612141024.25961-1-adrian.ratiu@ni.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-06-12_01:, , signatures=0
X-Proofpoint-Spam-Reason: safe
Cc: yocto@yoctoproject.org
Subject: [meta-mono][PATCH] layer.conf: define LAYERSERIES_COMPAT_mono = "sumo"
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
X-List-Received-Date: Tue, 12 Jun 2018 14:36:01 -0000
Content-Type: text/plain

Newer versions of bitbake require each layer to explicitely state
their OE/Yocto release compatibility. The consensus is for each layer
to use the latest released version codename for the master branch.

Signed-off-by: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
---
 conf/layer.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/conf/layer.conf b/conf/layer.conf
index 017a7c7..e3a10b9 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -14,3 +14,5 @@ PREFERRED_VERSION_mono ?= "5.4.1.6"
 PREFERRED_VERSION_mono-native ?= "5.4.1.6"
 
 PREFERRED_VERSION_nuget ?= "3.5.0"
+
+LAYERSERIES_COMPAT_mono = "sumo"
-- 
2.17.1


