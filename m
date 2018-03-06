Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F34AE00DFB; Tue,  6 Mar 2018 10:26:22 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7748BE00AF2
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 10:26:20 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Mar 2018 10:26:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.47,432,1515484800"; d="scan'208";a="36442062"
Received: from linux.intel.com ([10.54.29.200])
	by orsmga001.jf.intel.com with ESMTP; 06 Mar 2018 10:26:20 -0800
Received: from scetola-mac01.jf.intel.com (scetola-mac01.jf.intel.com
	[10.54.74.135])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTPS id 20FE15803D6
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 10:26:20 -0800 (PST)
To: yocto@yoctoproject.org
From: Stephano Cetola <stephano.cetola@linux.intel.com>
Message-ID: <e7a1e310-439a-050a-55b7-a927024b5665@linux.intel.com>
Date: Tue, 6 Mar 2018 10:26:19 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.6.0
MIME-Version: 1.0
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
X-List-Received-Date: Tue, 06 Mar 2018 18:26:22 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Attendees: Armin, Stephano, Juro, Stephen, Ross, Joshua Watt, Amanda,
Tim, David Reyna, Denys, Randy, Michael Halstead, Richard, Alex Kanavin,
Bill Mills, Mark Hatle, Tracey Erway

Current Status:
https://wiki.yoctoproject.org/wiki/Weekly_Status

It was mentioned that the 2.6 features should be discussed on the YPTM
next month. The hope is that people who have submitted feature requests
can give some feedback and possible help by contributing.

Any secondary GCC (e.g. 6.4 on Rocko) is hard to test on the
autobuilder. We should look into ways to automate this task if possible.
Also, Mark brought up that there is a built-in test suite in GCC which
YP isn't using. There is a long standing bugzilla entry for that:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=4437

Please feel free to comment with suggestions.

Cheers,
Stephano

