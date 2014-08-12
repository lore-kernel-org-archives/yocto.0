Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B970E00799; Tue, 12 Aug 2014 08:19:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CDD6E006EF
	for <yocto@yoctoproject.org>; Tue, 12 Aug 2014 08:19:44 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP; 12 Aug 2014 08:19:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="371412426"
Received: from glucy-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.202])
	by FMSMGA003.fm.intel.com with ESMTP; 12 Aug 2014 08:16:25 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: openembedded-core@lists.openembedded.org, yocto@yoctoproject.org
Date: Tue, 12 Aug 2014 16:19:41 +0100
Message-ID: <8971389.fH3VELLT3O@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.15.8-200.fc20.x86_64; KDE/4.13.3; x86_64; ; )
MIME-Version: 1.0
Subject: Automatic upgrade helper
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
X-List-Received-Date: Tue, 12 Aug 2014 15:19:47 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi folks,

I'd like to announce the immediate availability of the Automatic Upgrade 
Helper, a tool for automating the task of upgrading recipes when a new 
upstream release occurs. It utilises the build system to check if a new 
version of the software built by a particular recipe is available, and if it 
is, it will attempt to upgrade the recipe to build that new version. The 
outcome of the process is emailed to the maintainer of the recipe along with a 
patch to do the upgrade, so that they can send the patch to be merged (if the 
build succeeded with no warnings) or develop the patch further if problems 
occurred.

The tool is available in the following repository:

  http://git.yoctoproject.org/cgit/cgit.cgi/auto-upgrade-helper/

Currently it builds upon distrodata.bbclass in order to do the upstream 
version checking, but in future we'd like to make better use of BitBake's 
fetcher to do this and also move some of the additional metadata out of inc 
files and into recipes as appropriate. There's probably other things we could 
do to make the tool more flexible in future as well. Feedback / contributions 
welcome.

(Thanks to Laurentiu Palcu & Marius Avram who did all of the work on this 
tool.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

