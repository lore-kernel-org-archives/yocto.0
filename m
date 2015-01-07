Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16A88E002F9; Wed,  7 Jan 2015 12:31:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DECFEE002F9
	for <yocto@yoctoproject.org>; Wed,  7 Jan 2015 12:31:34 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id t07KVXo3018852
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 7 Jan 2015 12:31:33 -0800 (PST)
Received: from msp-dhcp23.wrs.com (172.25.34.23) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.174.1;
	Wed, 7 Jan 2015 12:31:32 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 7 Jan 2015 14:31:30 -0600
Message-ID: <1420662691-241726-1-git-send-email-mark.hatle@windriver.com>
X-Mailer: git-send-email 1.9.3
MIME-Version: 1.0
Subject: [meta-mingw] Patch to replace .sh with Win style batch files
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
X-List-Received-Date: Wed, 07 Jan 2015 20:31:41 -0000
Content-Type: text/plain

When using meta-mingw to build a Windows compatible SDK, we should be 
generating .bat files instead of .sh files to setup the environment.

We also want to make sure the resulting files are in windows format,
i.e. contain the \r.

Mark Hatle (1):
  meta-environment: Update environment files to batch files

 classes/toolchain-scripts-mingw32.bbclass   | 87 +++++++++++++++++++++++++++++
 recipes-core/meta/meta-environment.bbappend |  4 ++
 2 files changed, 91 insertions(+)
 create mode 100644 classes/toolchain-scripts-mingw32.bbclass
 create mode 100644 recipes-core/meta/meta-environment.bbappend

-- 
1.9.3


