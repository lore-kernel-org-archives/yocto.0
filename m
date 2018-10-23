Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E934E00901; Tue, 23 Oct 2018 14:14:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF569E008D7
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2018 14:14:55 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	23 Oct 2018 14:14:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.54,417,1534834800"; d="scan'208";a="101858330"
Received: from mananrde-mobl1.gar.corp.intel.com (HELO localhost.localdomain)
	([10.255.144.77])
	by fmsmga001.fm.intel.com with ESMTP; 23 Oct 2018 14:14:51 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 24 Oct 2018 10:14:48 +1300
Message-ID: <2829165.0Ht5z2aexs@localhost.localdomain>
Organization: Intel Corporation
MIME-Version: 1.0
Cc: openembedded-core@lists.openembedded.org
Subject: 2.6 migration guide
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
X-List-Received-Date: Tue, 23 Oct 2018 21:14:56 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi folks

When Scott prepares the migration guide for a release, he usually looks to me 
to collate the notable changes for it (those requiring user intervention). I 
haven't prepared anything yet though and the 2.6 release is fast approaching. 
Can anyone who has been involved in or is aware of such changes in master for 
upcoming 2.6 (thud) make a note of it on the wiki in raw form on this page:

  https://wiki.yoctoproject.org/wiki/FutureMigrationGuide

Scott and I will take care of cleaning it up, so things added there don't need 
to be perfect. 

I will also be doing my usual trawl through the commits in the release for the 
more general changelog, so most things will get picked up that way, but it's 
really helpful if people with first-hand knowledge of the implications of some 
of these changes are involved in how they get documented.

Thanks,
Paul

-- 
Paul Eggleton
Intel Open Source Technology Centre



