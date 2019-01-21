Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3985E00D17; Mon, 21 Jan 2019 01:10:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55D1AE00D0E
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2019 01:10:11 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x0L99ous025093
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2019 01:10:01 -0800
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.408.0; Mon, 21 Jan 2019 01:09:40 -0800
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 21 Jan 2019 17:09:35 +0800
Message-ID: <1548061778-253354-1-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [PATCH V2 0/2] update-rc.d: support enable/disable function
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
X-List-Received-Date: Mon, 21 Jan 2019 09:10:13 -0000
Content-Type: text/plain

These three patches are for support disable/enable function for update-rc.d

change in V2:
add some comments and fix commit message

change in V1:
* change of script update-rc.d is for support disable/enable of init script link
* update-rc.d.bbclass remove preinst to make disable/enable can work after upgrade
* fix the doc manual 

Changqing Li (2):
  update-rc.d.bbclass: remove preinst and remove -f for postinst
  ref-variables.xml: update manual page for update-rc.d

 documentation/ref-manual/ref-variables.xml |  2 +-
 meta/classes/update-rc.d.bbclass           | 28 ++++------------------------
 2 files changed, 5 insertions(+), 25 deletions(-)

-- 
2.7.4


