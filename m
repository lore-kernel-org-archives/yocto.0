Return-Path: <rich.tollerton@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD2C2E009D7; Thu, 16 Jul 2015 10:21:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [130.164.80.23 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from ni.com (skprod2.natinst.com [130.164.80.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39A74E009CC
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2015 10:21:55 -0700 (PDT)
Received: from us-aus-mgwout1.amer.corp.natinst.com (nb-chan1-1338.natinst.com
	[130.164.19.134])
	by us-aus-skprod2.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	t6GHLqKr024579; Thu, 16 Jul 2015 12:21:52 -0500
Received: from weregild.amer.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout1.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2015071612215208-1313647 ;
	Thu, 16 Jul 2015 12:21:52 -0500 
From: Richard Tollerton <rich.tollerton@ni.com>
To: yocto@yoctoproject.org, ajlennon@dynamicdevices.co.uk
Date: Thu, 16 Jul 2015 12:21:47 -0500
Message-Id: <cover.1437066998.git.rich.tollerton@ni.com>
X-Mailer: git-send-email 2.4.4
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut1/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 07/16/2015 12:21:52 PM,
	Serialize by Router on US-AUS-MGWOut1/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 07/16/2015 12:21:52 PM,
	Serialize complete at 07/16/2015 12:21:52 PM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2015-07-16_05:, , signatures=0
Subject: [meta-mono] [PATCH 0/2] upgrade mono-basic to 4.0
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
X-List-Received-Date: Thu, 16 Jul 2015 17:21:57 -0000

I don't use mono-basic and haven't tested it -- I just noticed there was a newer
version.

This is the first of three patchsets for mono packages, to prepare for two
additional patchsets I will submit on top of these three:

1. Refactoring common mono recipe variables into a bbclass
2. Setting PACKAGE_ARCH=all on packages with all-managed code


The following changes since commit 8c613bf3d82dd5edb58472e5b016d86a1a9e4a63:

  README: Add contributors section (2015-07-16 10:17:06 +0100)

are available in the git repository at:

  git://github.com/rtollert/meta-mono dev/rtollert/v3/mono-basic
  https://github.com/rtollert/meta-mono/tree/dev/rtollert/v3/mono-basic

Richard Tollerton (2):
  mono-basic-4.xx.inc: copy from mono-basic.inc
  mono-basic: add version 4.0

 recipes-mono/mono-basic/mono-basic-4.xx.inc | 33 +++++++++++++++++++++++++++++
 recipes-mono/mono-basic/mono-basic_4.0.bb   |  5 +++++
 2 files changed, 38 insertions(+)
 create mode 100644 recipes-mono/mono-basic/mono-basic-4.xx.inc
 create mode 100644 recipes-mono/mono-basic/mono-basic_4.0.bb

-- 
2.4.4


