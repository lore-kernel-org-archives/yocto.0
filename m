Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7589DE00C25; Fri, 11 Sep 2015 09:28:03 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48A20E009B3
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 09:27:59 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id t8BGRw7Q023889
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 09:27:58 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.227) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.235.1; Fri, 11 Sep 2015 09:27:58 -0700
To: Yocto Project <yocto@yoctoproject.org>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <55F3010D.2070300@windriver.com>
Date: Fri, 11 Sep 2015 11:27:57 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
	Gecko/20100101 Thunderbird/38.2.0
MIME-Version: 1.0
Subject: [prelink-cross] New version available
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
X-List-Received-Date: Fri, 11 Sep 2015 16:28:03 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

I've pushed a new set of changes to the prelink_cross branch.

The change most likely to affect YP users will be the arch-arm fix contributed
by Andrew Stubbs (Mentor). This resolves a problem where the prelinker would not
work on modern binutils due to a change in the BFD library. For more
information, see:

    https://sourceware.org/ml/binutils/2014-06/msg00228.html

Also contributions from Samsung have added support to allow the prelinker to
evaluate LD_PRELOAD libraries as well.  This can be useful if you have a system
where you may need to preload libraries for various purposes.  It ensures that a
slot is available for preloading w/o conflicting with the normal load process.


Below is a quick summary of the changes (Changelog.cross entries):

2015-09-11   Mark Hatle <mark.hatle@windriver.com>
        * doc/prelink.8: Add --ld-preload docs
        * testsuite/Maekfile.am, testsuite/preload1*: Add test

2015-09-11   Vaneet Narang <v.narang@samsung.com>
        * src/gather.c, src/get.c, src/main.c, src/prelink.h:
        Add ability to specify preloaded libraries that influence the
        prelinker.

2015-09-09   Akhilesh Kumar <akhilesh.k@samsung.com>
        * src/gather.c: Remove unnecessary dso NULL check

2015-09-09   Maninder Singh <maninder1.s@samsung.com>
        * src/doit.c, src/gather.c, src/undoall.c: Fix realloc memory leak

2015-09-07  Andrew Stubbs  <ams@codesourcery.com>
        * src/arch-arm.c (PL_ARCH(arm)): Set max_page_size to match
        the new BFD default.

