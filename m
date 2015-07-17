Return-Path: <rich.tollerton@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EEA09E009EC; Fri, 17 Jul 2015 09:57:27 -0700 (PDT)
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
	*      [130.164.80.23 listed in list.dnswl.org]
Received: from ni.com (skprod2.natinst.com [130.164.80.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3E23E009C3
	for <yocto@yoctoproject.org>; Fri, 17 Jul 2015 09:57:23 -0700 (PDT)
Received: from us-aus-mgwout1.amer.corp.natinst.com (nb-snip2-1338.natinst.com
	[130.164.19.135])
	by us-aus-skprod2.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	t6HGvKCG016120; Fri, 17 Jul 2015 11:57:20 -0500
Received: from weregild.amer.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout1.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2015071711572102-1384540 ;
	Fri, 17 Jul 2015 11:57:21 -0500 
From: Richard Tollerton <rich.tollerton@ni.com>
To: yocto@yoctoproject.org, ajlennon@dynamicdevices.co.uk
Date: Fri, 17 Jul 2015 11:57:12 -0500
Message-Id: <cover.1437151912.git.rich.tollerton@ni.com>
X-Mailer: git-send-email 2.4.4
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut1/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 07/17/2015 11:57:21 AM,
	Serialize by Router on US-AUS-MGWOut1/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 07/17/2015 11:57:21 AM,
	Serialize complete at 07/17/2015 11:57:21 AM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2015-07-17_09:, , signatures=0
Subject: [meta-mono] [RFC] [PATCH 0/1] Force MONO_CFG_DIR
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
X-List-Received-Date: Fri, 17 Jul 2015 16:57:28 -0000

Hi Alex,

When you mentioned having weird build troubles, that reminded me that I
was seeing weird build problems of my own, that I had been refraining
from sending patches on until I could better characterize the issue.

If you've been seeing weird build failures in executables that really
should never be failing in the first place -- i.e., gacutils failures,
or "invalid resx file", or anything involving not being able to dlopen
libc or being unable to open /etc/mono/config -- you might be interested
in this patch.

That said, if you *don't* have problems compiling to an ARM sysroot, I'd
be interested in knowing that too. :F


The following changes since commit 041cc6b70c7fb3b55e73b90b1a101844da1726b2:

  README: Update to remove references to mono < 3.12.1 (2015-07-17 12:38:32 +0100)

are available in the git repository at:

  git://github.com/rtollert/meta-mono dev/rtollert/v5/mono-cfg
  https://github.com/rtollert/meta-mono/tree/dev/rtollert/v5/mono-cfg

Richard Tollerton (1):
  mono.bbclass: set MONO_CFG_DIR

 classes/mono.bbclass | 2 ++
 1 file changed, 2 insertions(+)

-- 
2.4.4


