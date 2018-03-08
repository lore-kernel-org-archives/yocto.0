Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 936CAE00E51; Thu,  8 Mar 2018 10:46:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2683FE00B1A
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2018 10:46:32 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Mar 2018 10:46:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.47,441,1515484800"; d="scan'208";a="40341479"
Received: from linux.intel.com ([10.54.29.200])
	by orsmga002.jf.intel.com with ESMTP; 08 Mar 2018 10:46:32 -0800
Received: from scetola-mac01.jf.intel.com (scetola-mac01.jf.intel.com
	[10.24.10.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTPS id 35333580393
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2018 10:46:32 -0800 (PST)
To: yocto@yoctoproject.org
From: Stephano Cetola <stephano.cetola@linux.intel.com>
Message-ID: <f45f1c68-10fa-524f-7d56-fa291dbe8608@linux.intel.com>
Date: Thu, 8 Mar 2018 10:46:32 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.6.0
MIME-Version: 1.0
Subject: New Release Number 2.99 in Bugzilla
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
X-List-Received-Date: Thu, 08 Mar 2018 18:46:33 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

The Yocto Project team is moving to a new release planning process and I
want to provide an overview as there will be some things I need from
those of you making changes and adding things to Bugzilla.

Overview:
We are moving to a “Pull” process for planning rather than a “Push”
process.  What this means is that we will start with an empty 2.6
release bucket and pull bugs and enhancements in that map to our top
priorities rather than push things out of a giant bucket.  We are hoping
this will help us start 2.6 with a very clear idea as to what we will
focus on and be much less overwhelming than pushing a giant snowball
through each release.

How does this effect you?
If you are pushing bugs/enhancements to the next release or adding new
bugs/enhancements for the next release you need to be aware of the
following:

-We have a M+ Future status that holds items that are important and need
to be addressed soon.  This bucket is pretty big.
-We have moved all 2.6 features and bugs to a 2.99 release.  This bucket
is a temporary hold for the items that didn’t make it into 2.5 and are
at the very top of our list for review to pull in.  We don’t want them
to get lost in the M+ Future bucket.  Once 2.6 planning is complete,
this 2.99 bucket will be empty and removed.
-If you are adding new bugs and enhancements that you believe should be
slotted for 2.6, please enter them as 2.99.
-If you are pushing anything from 2.5 to 2.6, please enter it as 2.99.

Please let me know if you have any questions about this.

Thanks,
Stephano


