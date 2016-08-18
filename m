Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14EAEE00D43; Thu, 18 Aug 2016 08:33:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1CECE00D35
	for <yocto@yoctoproject.org>; Thu, 18 Aug 2016 08:33:13 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u7IFXCLk029846
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Thu, 18 Aug 2016 08:33:12 -0700
Received: from soho-mhatle-m.local (172.25.36.235) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Thu, 18 Aug 2016 08:33:12 -0700
From: Mark Hatle <mark.hatle@windriver.com>
To: Yocto Project <yocto@yoctoproject.org>
Organization: Wind River Systems
Message-ID: <bd977914-50f2-b44a-b592-925f168ac199@windriver.com>
Date: Thu, 18 Aug 2016 10:33:11 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.2.0
MIME-Version: 1.0
Subject: New prelink version
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
X-List-Received-Date: Thu, 18 Aug 2016 15:33:17 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 8bit

I have issued a new prelink release today.

git://git.yoctoproject.org/prelink-cross

master branch: target based prelink
new release tag: 20160818

cross_prelink branch: prelink w/ emulated 'rtld' (ld.so)
new release tag: 20160818_cross


From the README file there are a few known issues:

* The --preload option does not always work.  The preload1 test currently fails.

* quick2 test will fail if you do not have static libc installed.

* IFUNC on glibc.  glibc appears to have a bug related to specific IFUNC
ordering.  build_local_scope in glibc is processing depth first instead of
breadth-first processing as it should be.  The prelink-rtld version works
around this issue.  (Prelink-rtld is only available in the cross compile
version.)  See: https://bugzilla.yoctoproject.org/show_bug.cgi?id=9131

* ARM & PPC: both are currently failing the reloc8 and reloc9 test
Further investigation is in progress on these items.  Until an explanation
is found, you should hold off using this for ARM and PPC.


Changelog for the cross_prelink follows:

Common changes:

* Update configure.ac, libelf.m4 and */Makefile.am to avoid various auto* warnings
* Fixed a few compile warnings
* Add testcase for YP 9131 - IFUNC problem
* Fix LD_PRELOAD issues
* Fix section ordering problem (required for binutils-2.22)

Cross prelink specific changes:

* rtld: resync to glibc-2.23
* rtld: add additional debug scope support
* rtld: Add fix for YP 9131, IFUNC problem

