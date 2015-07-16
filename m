Return-Path: <rich.tollerton@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 693C5E00978; Wed, 15 Jul 2015 18:26:22 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCEEDE00957
	for <yocto@yoctoproject.org>; Wed, 15 Jul 2015 18:26:19 -0700 (PDT)
Received: from us-aus-mgwout2.amer.corp.natinst.com (nb-chan1-1338.natinst.com
	[130.164.19.134])
	by us-aus-skprod2.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	t6G1QFTZ002245; Wed, 15 Jul 2015 20:26:15 -0500
Received: from weregild.amer.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout2.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2015071520261554-1271373 ;
	Wed, 15 Jul 2015 20:26:15 -0500 
From: Richard Tollerton <rich.tollerton@ni.com>
To: yocto@yoctoproject.org, ajlennon@dynamicdevices.co.uk
Date: Wed, 15 Jul 2015 20:25:31 -0500
Message-Id: <cover.1436830398.git.rich.tollerton@ni.com>
X-Mailer: git-send-email 2.4.4
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut2/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 07/15/2015 08:26:15 PM,
	Serialize by Router on US-AUS-MGWOut2/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 07/15/2015 08:26:15 PM,
	Serialize complete at 07/15/2015 08:26:15 PM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2015-07-15_07:, , signatures=0
Subject: [meta-mono] [PATCH 0/1] mono: use PARALLEL_MAKEINST="" instead of PARALLEL_MAKE=""
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
X-List-Received-Date: Thu, 16 Jul 2015 01:26:22 -0000

Hi, last week I sent out a patch to disable parallel builds in mono; in
hindsight I should have used PARALLEL_MAKEINST instead of PARALLEL_MAKE. Patch
follows.

This is one of several topic branches I've hacked together over the last couple
of weeks; you can see the rest at https://github.com/rtollert/meta-mono. I'll
be meting them out over the next several days.


The following changes since commit 9f63cbaaa859f9ae55288de06c1c0eb0e6992f53:

  mono-4.xx.inc: disable parallel make (2015-07-08 11:46:11 +0100)

are available in the git repository at:

  git://github.com/rtollert/meta-mono dev/rtollert/v2/parallel
  https://github.com/rtollert/meta-mono/tree/dev/rtollert/v2/parallel

Richard Tollerton (1):
  mono-4.xx.inc: use PARALLEL_MAKEINST="" instead of PARALLEL_MAKE=""

 recipes-mono/mono/mono-4.xx.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.4.4


