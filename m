Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33D9FE00857; Tue,  3 Apr 2018 08:42:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 979ADE00857
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2018 08:42:49 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	03 Apr 2018 08:42:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,401,1517904000"; d="scan'208";a="188318076"
Received: from linux.intel.com ([10.54.29.200])
	by orsmga004.jf.intel.com with ESMTP; 03 Apr 2018 08:42:48 -0700
Received: from scetola-mac01.jf.intel.com (scetola-mac01.jf.intel.com
	[10.24.10.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTPS id 73E8B58043A;
	Tue,  3 Apr 2018 08:42:48 -0700 (PDT)
From: Stephano Cetola <stephano.cetola@linux.intel.com>
To: yocto@yoctoproject.org
References: <ccd4dcfb-d871-7985-ca62-e8ddafc58296@linux.intel.com>
Message-ID: <1dc415ff-6945-87e8-1c41-f7c431abe0ee@linux.intel.com>
Date: Tue, 3 Apr 2018 08:42:49 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <ccd4dcfb-d871-7985-ca62-e8ddafc58296@linux.intel.com>
Subject: Minutes: Yocto Project Technical Meeting
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
X-List-Received-Date: Tue, 03 Apr 2018 15:42:50 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Attendees:
Armin, Stephano, Robin, Richard, Maxin, Alex K, Sean Gabriel, Martin,
Denys, Joshua Watt, Michael Halstead, Pascal Bach, Randy MacLeod,
Amanda, Trevor, Tracey


If people are aware of items that should be going into 2.5 but are not
on the list, please contact Richard. While no high level list exists
today we will work on getting that setup. For now, please see the commit
logs to determine if a feature you are looking for has been included.

The new autobuilder setup will be used for the 2.6 release. Testing on
that system can begin soon with the knowledge that some features are not
yet implemented.

poky-contrib cleanup should be happening regularly and Michael will
begin tracking this in bugzilla.


AR: Robin - Work to communicate an appropriate high level overview for
releases. Be aware Paul usually pulls together the release notes. (the
wiki would be higher level)

AR: Tracey - Add to the website a page regarding bug triage.

AR: Stephano - Add yocto/oe-core/bitbake to bug triage invite.


NOTES:
"AR" == Action Required
"Opens" == Anything you would like to be discussed which is not
explicitly on the agenda.

