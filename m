Return-Path: <rich.tollerton@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 404B5E009ED; Thu, 16 Jul 2015 10:22:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [130.164.80.24 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from ni.com (skprod3.natinst.com [130.164.80.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA07CE009D7
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2015 10:22:19 -0700 (PDT)
Received: from us-aus-mgwout1.amer.corp.natinst.com (nb-chan1-1338.natinst.com
	[130.164.19.134])
	by us-aus-skprod3.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	t6GHMHpW027443; Thu, 16 Jul 2015 12:22:17 -0500
Received: from weregild.amer.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout1.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2015071612221775-1313669 ;
	Thu, 16 Jul 2015 12:22:17 -0500 
From: Richard Tollerton <rich.tollerton@ni.com>
To: yocto@yoctoproject.org, ajlennon@dynamicdevices.co.uk
Date: Thu, 16 Jul 2015 12:22:16 -0500
Message-Id: <cover.1437067107.git.rich.tollerton@ni.com>
X-Mailer: git-send-email 2.4.4
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut1/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 07/16/2015 12:22:17 PM,
	Serialize by Router on US-AUS-MGWOut1/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 07/16/2015 12:22:17 PM,
	Serialize complete at 07/16/2015 12:22:17 PM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2015-07-16_05:, , signatures=0
Subject: [meta-mono] [PATCH 0/4] mono-xsp: upgrade and fix build
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
X-List-Received-Date: Thu, 16 Jul 2015 17:22:20 -0000

I ran into some fairly bad build issues when trying to build mono-xsp that
appear to be worked around by using mono-xsp's autogen.sh instead of letting
autotools.bbclass attempt to call everything itself.

I then took the opportunity to upgrade the package to 3.0.

I haven't actually tested these changes -- I was under the mistaken impression
that monotools-server was necessary for remote debugging to work with mono4, and
figured that I might as well not let these changes go to waste, even though I
will probably not use them.

The following changes since commit 8c613bf3d82dd5edb58472e5b016d86a1a9e4a63:

  README: Add contributors section (2015-07-16 10:17:06 +0100)

are available in the git repository at:

  git://github.com/rtollert/meta-mono dev/rtollert/v3/mono-xsp
  https://github.com/rtollert/meta-mono/tree/dev/rtollert/v3/mono-xsp

Richard Tollerton (4):
  mono-xsp-3.x.inc: copy from mono-xsp.inc
  mono-xsp-3.x.inc: updating SRC_URI and LIC_FILES_CHKSUM
  mono-xsp_3.0.11.bb: add
  mono-xsp-3.x.inc: use autogen.sh

 recipes-mono/mono-xsp/mono-xsp-3.x.inc   | 44 ++++++++++++++++++++++++++++++++
 recipes-mono/mono-xsp/mono-xsp_3.0.11.bb |  5 ++++
 2 files changed, 49 insertions(+)
 create mode 100644 recipes-mono/mono-xsp/mono-xsp-3.x.inc
 create mode 100644 recipes-mono/mono-xsp/mono-xsp_3.0.11.bb

-- 
2.4.4


