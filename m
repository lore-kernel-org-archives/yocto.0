Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04348E00D74; Thu,  7 Dec 2017 12:46:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1EE3E00D71
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 12:46:02 -0800 (PST)
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	07 Dec 2017 12:46:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,374,1508828400"; 
   d="scan'208";a="784367"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga008.fm.intel.com with ESMTP; 07 Dec 2017 12:46:00 -0800
To: Paul Knopf <pauldotknopf@gmail.com>
References: <CAKmWj-1fwjsLE9SU05JBO0Q3BHXqRHdOYfN759=0D-OtYYXJrA@mail.gmail.com>
	<CAKmWj-0_JS5WTDC+ih2oW9_MPTnZJZurHj0cRy4N1jXcH5vSPg@mail.gmail.com>
	<95676e99-422b-8ab4-131f-de9878d3b3e8@linux.intel.com>
	<CAKmWj-1PzW29FUnWTeuJh6=hRghQ-7vi+PKst5K1cL4Tg1LQyw@mail.gmail.com>
	<43b0281e-9d30-a07f-6b6d-048f91326c32@linux.intel.com>
	<CAKmWj-29bb=R6-PgwD9VMT0gy-X-1wVNRXpzEezRbCovNtqeEA@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <925c176c-3d60-17fc-da45-fe7430a3c71f@linux.intel.com>
Date: Thu, 7 Dec 2017 22:46:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAKmWj-29bb=R6-PgwD9VMT0gy-X-1wVNRXpzEezRbCovNtqeEA@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Preventing a variable from being cached
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
X-List-Received-Date: Thu, 07 Dec 2017 20:46:03 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 12/07/2017 10:30 PM, Paul Knopf wrote:
> Use a SRC_URI for another recip? Let me show you my recipe.
> 
> SUMMARY = "Puts a file in the image that contains the application version."
> DESCRIPTION = "Puts a file in the image that contains the application 
> version."

Openembedded isn't really designed for this. The principle is that the 
output of a recipe is determined entirely by what is in the recipe and 
the source code it pulls in (and dependencies). If a task has 
successfully completed, it should not be run again if nothing has changed.

So you need to udpate the necessary files with an external script before 
you run bitbake, and then pull them in via SRC_URI and file fetcher.

Alex

