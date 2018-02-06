Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D93B9E00DEF; Tue,  6 Feb 2018 08:43:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DFABE005BB
	for <yocto@yoctoproject.org>; Tue,  6 Feb 2018 08:43:08 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Feb 2018 08:43:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,469,1511856000"; d="scan'208";a="201831300"
Received: from linux.intel.com ([10.54.29.200])
	by fmsmga006.fm.intel.com with ESMTP; 06 Feb 2018 08:43:07 -0800
Received: from bfierec-mobl.amr.corp.intel.com (unknown [10.254.189.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTPS id 683D65803EB;
	Tue,  6 Feb 2018 08:43:07 -0800 (PST)
To: yocto@yoctoproject.org
From: Stephano Cetola <stephano.cetola@linux.intel.com>
Message-ID: <ccd4dcfb-d871-7985-ca62-e8ddafc58296@linux.intel.com>
Date: Tue, 6 Feb 2018 08:43:06 -0800
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
X-List-Received-Date: Tue, 06 Feb 2018 16:43:09 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Attendees:
Armin, Stephano, Alex, Maxin, Amanda, Stephen, Richard, Pascal, Ross,
Denys, Joshua Watt, Tim Orling, Martin/Oliver/Marcus (of Phoenix
Contact, Germany), wmills

Current Status:
https://wiki.yoctoproject.org/wiki/Weekly_Status

Spectre / Meltdown Info:
http://lists.openembedded.org/pipermail/openembedded-core/2018-January/146441.html

Automated Hardware Testing
Stay up to date on the Automated-testing list:
https://lists.yoctoproject.org/listinfo/automated-testing

Also, for an in depth look at automated hardware testing check out Tim
Orling's ELC talk coming up in March at ELC: http://sched.co/DXnc

