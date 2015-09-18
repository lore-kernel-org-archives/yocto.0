Return-Path: <ian.ray@ge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E18B9E00CC8; Fri, 18 Sep 2015 08:33:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [67.231.157.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx0b-00176a03.pphosted.com (mx0b-00176a03.pphosted.com
	[67.231.157.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 808A7E00BF8
	for <yocto@yoctoproject.org>; Fri, 18 Sep 2015 08:33:41 -0700 (PDT)
Received: from pps.filterd (m0048300.ppops.net [127.0.0.1])
	by m0048300.ppops.net-00176a03. (8.15.0.59/8.15.0.59) with SMTP id
	t8IDiNvr031224
	for <yocto@yoctoproject.org>; Fri, 18 Sep 2015 09:46:57 -0400
Received: from cinmlip13.e2k.ad.ge.com (n165-156-000-000.static.ge.com
	[165.156.4.1] (may be forged))
	by m0048300.ppops.net-00176a03. with ESMTP id 1wvcqmx3b6-5
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Fri, 18 Sep 2015 09:46:57 -0400
Received: from cinmlip01.e2k.ad.ge.com ([3.159.213.48])
	by cinmlip13.e2k.ad.ge.com with ESMTP/TLS/RC4-SHA;
	18 Sep 2015 09:46:46 -0400
Received: from unknown (HELO clipsmtp.clients.em.health.ge.com) ([3.187.7.87])
	by CINMLIP01.e2k.ad.ge.com with ESMTP; 18 Sep 2015 09:46:44 -0400
Received: from macaroni.clients.em.health.ge.com
	(macaroni.clients.em.health.ge.com [3.187.18.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by clipsmtp.clients.em.health.ge.com (Postfix) with ESMTPSA id
	6C4C010BC301; Fri, 18 Sep 2015 16:42:12 +0300 (EEST)
From: Ian Ray <ian.ray@ge.com>
To: yocto@yoctoproject.org
Date: Fri, 18 Sep 2015 16:42:08 +0300
Message-Id: <1442583729-21809-1-git-send-email-ian.ray@ge.com>
X-Mailer: git-send-email 1.8.3.1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2015-09-18_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
	suspectscore=1
	malwarescore=0 phishscore=0 adultscore=0 bulkscore=0 classifier=spam
	adjust=0 reason=mlx scancount=1 engine=8.0.1-1507310000
	definitions=main-1509180182
Subject: [PATCH 0/1] new PTEST_RUN_SCRIPT_PATH
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
X-List-Received-Date: Fri, 18 Sep 2015 15:33:45 -0000

New "weak" assigned PTEST_RUN_SCRIPT_PATH to allow recipes to
override the default location of the run-ptest script.

This is useful if the package ships its own run-ptest script.

Ian Ray (1):
  ptest: user-specified run-ptest script location

 meta/classes/ptest.bbclass | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

-- 
1.8.3.1


