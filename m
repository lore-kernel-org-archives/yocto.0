Return-Path: <ian.ray@ge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52E21E00D04; Fri, 18 Sep 2015 07:43:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [67.231.149.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 3384 seconds by postgrey-1.32 at yocto-www;
	Fri, 18 Sep 2015 07:43:22 PDT
Received: from mx0a-00176a03.pphosted.com (mx0a-00176a03.pphosted.com
	[67.231.149.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E31C4E00BF8
	for <yocto@yoctoproject.org>; Fri, 18 Sep 2015 07:43:22 -0700 (PDT)
Received: from pps.filterd (m0047962.ppops.net [127.0.0.1])
	by m0047962.ppops.net-00176a03. (8.15.0.59/8.15.0.59) with SMTP id
	t8IDismZ026361
	for <yocto@yoctoproject.org>; Fri, 18 Sep 2015 09:47:01 -0400
Received: from cinmlip12.e2k.ad.ge.com ([12.71.149.1])
	by m0047962.ppops.net-00176a03. with ESMTP id 1wvd9wwyb4-1
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Fri, 18 Sep 2015 09:47:01 -0400
Received: from cinmlip01.e2k.ad.ge.com ([3.159.213.48])
	by cinmlip12.e2k.ad.ge.com with ESMTP/TLS/RC4-SHA;
	18 Sep 2015 09:46:57 -0400
Received: from unknown (HELO clipsmtp.clients.em.health.ge.com) ([3.187.7.87])
	by CINMLIP01.e2k.ad.ge.com with ESMTP; 18 Sep 2015 09:46:52 -0400
Received: from macaroni.clients.em.health.ge.com
	(macaroni.clients.em.health.ge.com [3.187.18.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by clipsmtp.clients.em.health.ge.com (Postfix) with ESMTPSA id
	E4EB910BC301; Fri, 18 Sep 2015 16:42:20 +0300 (EEST)
From: Ian Ray <ian.ray@ge.com>
To: yocto@yoctoproject.org
Date: Fri, 18 Sep 2015 16:42:17 +0300
Message-Id: <1442583738-21852-1-git-send-email-ian.ray@ge.com>
X-Mailer: git-send-email 1.8.3.1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2015-09-18_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
	suspectscore=1
	malwarescore=0 phishscore=0 adultscore=0 bulkscore=0 classifier=spam
	adjust=0 reason=mlx scancount=1 engine=8.0.1-1507310000
	definitions=main-1509180182
Subject: [yocto-docs][PATCH 0/1] new PTEST_RUN_SCRIPT_PATH
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
X-List-Received-Date: Fri, 18 Sep 2015 14:43:24 -0000

New PTEST_RUN_SCRIPT_PATH allows recipes to override the default
location of the run-ptest script.

Ian Ray (1):
  ref-manual, dev-manual: Updates to support PTEST_RUN_SCRIPT_PATH.

 documentation/dev-manual/dev-manual-common-tasks.xml |  5 ++++-
 documentation/ref-manual/ref-variables.xml           | 15 +++++++++++++++
 2 files changed, 19 insertions(+), 1 deletion(-)

-- 
1.8.3.1


