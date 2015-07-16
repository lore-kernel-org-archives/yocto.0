Return-Path: <rich.tollerton@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D447E009E6; Thu, 16 Jul 2015 10:22:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [130.164.80.24 listed in list.dnswl.org]
Received: from ni.com (skprod3.natinst.com [130.164.80.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8B31E009DF
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2015 10:22:10 -0700 (PDT)
Received: from us-aus-mgwout2.amer.corp.natinst.com (nb-snip2-1338.natinst.com
	[130.164.19.135])
	by us-aus-skprod3.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	t6GHM7SA027081; Thu, 16 Jul 2015 12:22:08 -0500
Received: from weregild.amer.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout2.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2015071612220758-1321616 ;
	Thu, 16 Jul 2015 12:22:07 -0500 
From: Richard Tollerton <rich.tollerton@ni.com>
To: yocto@yoctoproject.org, ajlennon@dynamicdevices.co.uk
Date: Thu, 16 Jul 2015 12:22:07 -0500
Message-Id: <cover.1437067054.git.rich.tollerton@ni.com>
X-Mailer: git-send-email 2.4.4
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut2/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 07/16/2015 12:22:07 PM,
	Serialize by Router on US-AUS-MGWOut2/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 07/16/2015 12:22:07 PM,
	Serialize complete at 07/16/2015 12:22:07 PM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2015-07-16_05:, , signatures=0
Subject: [meta-mono] [PATCH 0/3] fsharp: build fixes and refactors
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
X-List-Received-Date: Thu, 16 Jul 2015 17:22:12 -0000

I ran into some build issues with fsharp (mono4 related IIRC) that were resolved
by upgrading it. I also noticed that the build needs autotools-brokensep so I
added that too. There was also a QA failure (debug-deps). Given that
opportunity, I also refactored the FILES_* settings.

The following changes since commit 8c613bf3d82dd5edb58472e5b016d86a1a9e4a63:

  README: Add contributors section (2015-07-16 10:17:06 +0100)

are available in the git repository at:

  git://github.com/rtollert/meta-mono dev/rtollert/v3/fsharp
  https://github.com/rtollert/meta-mono/tree/dev/rtollert/v3/fsharp

Richard Tollerton (3):
  fsharp_3.1.2.4.bb: add
  fsharp: disable build separation
  fsharp.inc: refactor FILES_*

 recipes-mono/fsharp/fsharp.inc        | 54 +++++++++++------------------------
 recipes-mono/fsharp/fsharp_3.1.2.4.bb |  7 +++++
 2 files changed, 24 insertions(+), 37 deletions(-)
 create mode 100644 recipes-mono/fsharp/fsharp_3.1.2.4.bb

-- 
2.4.4


