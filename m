Return-Path: <rich.tollerton@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0480AE00563; Wed, 16 Jul 2014 12:49:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from ni.com (skprod3.natinst.com [130.164.80.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69A4AE00543
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 12:49:07 -0700 (PDT)
Received: from us-aus-mgwout2.amer.corp.natinst.com (nb-chan1-1338.natinst.com
	[130.164.19.134])
	by us-aus-skprod3.natinst.com (8.14.5/8.14.5) with ESMTP id
	s6GIwKOH028116; Wed, 16 Jul 2014 13:58:20 -0500
Received: from weregild.amer.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout2.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6)
	with ESMTP id 2014071613582057-448925 ;
	Wed, 16 Jul 2014 13:58:20 -0500 
From: Richard Tollerton <rich.tollerton@ni.com>
To: yocto@yoctoproject.org, richard.purdie@linuxfoundation.org
Date: Wed, 16 Jul 2014 13:58:02 -0500
Message-Id: <1405537085-9453-1-git-send-email-rich.tollerton@ni.com>
X-Mailer: git-send-email 2.0.1
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut2/AUS/H/NIC(Release
	8.5.3FP6|November 21, 2013) at 07/16/2014 01:58:20 PM,
	Serialize by Router on US-AUS-MGWOut2/AUS/H/NIC(Release
	8.5.3FP6|November 21, 2013) at 07/16/2014 01:58:20 PM,
	Serialize complete at 07/16/2014 01:58:20 PM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.12.52, 1.0.14,
	0.0.0000
	definitions=2014-07-16_07:2014-07-16, 2014-07-16,
	1970-01-01 signatures=0
Cc: ben.shelton@ni.com, ken.sharp@ni.com
Subject: [meta-mingw][RESEND][PATCH 0/3] Fix gdb-cross-canadian on mingw32
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
X-List-Received-Date: Wed, 16 Jul 2014 19:49:11 -0000

A lot of people were made very happy when mingw toolchain support was
resurrected last year. Unfortunately, all of those came back this year crying
"where's my Eclipse debugging support!?!" :F

Fortunately, it seeeems like getting a working gdb-cross-canadian isn't too much
of a hassle, as long as you don't care about Python support or TUI.

These patches were tested on daisy then ported to master.

Richard Tollerton (3):
  common-mingw: force ac_cv_func_mmap_fixed_mapped=no
  gdb-cross-canadian: remove ncurses and python deps from mingw32 builds
  packagegroup-cross-canadian: reenable gdb on mingw32

 meta/site/common-mingw                                          | 2 ++
 recipes-core/packagegroups/packagegroup-cross-canadian.bbappend | 5 -----
 recipes-devtools/gdb/gdb-cross-canadian_7.7.bbappend            | 5 +++++
 3 files changed, 7 insertions(+), 5 deletions(-)
 create mode 100644 meta/site/common-mingw
 delete mode 100644 recipes-core/packagegroups/packagegroup-cross-canadian.bbappend
 create mode 100644 recipes-devtools/gdb/gdb-cross-canadian_7.7.bbappend

-- 
2.0.1


