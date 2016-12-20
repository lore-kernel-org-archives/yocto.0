Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70B7EE00B93; Tue, 20 Dec 2016 12:23:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F322E009BA
	for <yocto@yoctoproject.org>; Tue, 20 Dec 2016 12:23:33 -0800 (PST)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga103.jf.intel.com with ESMTP; 20 Dec 2016 12:23:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,380,1477983600"; d="scan'208";a="45312768"
Received: from swold-mobl2.amr.corp.intel.com ([10.254.176.131])
	by fmsmga006.fm.intel.com with ESMTP; 20 Dec 2016 12:23:32 -0800
Message-ID: <1482265407.12532.55.camel@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
To: openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>, OpenEmbedded List
	<openembedded-core@lists.openembedded.org>
Date: Tue, 20 Dec 2016 12:23:27 -0800
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
Cc: Yocto Discussion <yocto@yoctoproject.org>
Subject: Deprecating hddimg/isoimg
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
X-List-Received-Date: Tue, 20 Dec 2016 20:23:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit


Folks,

For years we have wanted to get rid of the hddimg/iso type, we now have
the WIC tool integrated into OE-Core such that we can build properly
partitioned disk images.

Historically the hddimg was a single FAT filesystem that contained
boot-loader, the kernel and a rootfs.img file for booting Intel Arch
machines. This has a 4G limit due to the FAT limitations and we are
starting to see this limit hit more frequently.

Are there any other usages out there that we are not aware of?

Any reasons that this should not get deprecated at this time?

Sau!


