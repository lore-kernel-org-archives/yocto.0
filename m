Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29272E00D14; Fri, 24 Nov 2017 06:19:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55113E00D0B
	for <yocto@yoctoproject.org>; Fri, 24 Nov 2017 06:19:25 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 Nov 2017 06:19:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,447,1505804400"; 
   d="scan'208";a="9079854"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga001.jf.intel.com with ESMTP; 24 Nov 2017 06:19:23 -0800
To: "Koehler, Yannick" <yannick.koehler@hpe.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CS1PR8401MB084071ADF580BCCD624BF26DED260@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
	<1c666fce-c37f-efd8-6ad8-4400e4650e8a@linux.intel.com>
	<CS1PR8401MB0840B4C7DC656142180276BFED260@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <fb1def6f-9c04-dbfe-d15d-682a559e8cde@linux.intel.com>
Date: Fri, 24 Nov 2017 16:19:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CS1PR8401MB0840B4C7DC656142180276BFED260@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
Subject: Re: Executing ptest using image test ?
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
X-List-Received-Date: Fri, 24 Nov 2017 14:19:27 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 11/24/2017 03:59 PM, Koehler, Yannick wrote:

> I had pretty much done all that is documented under 4.21 of this
> documentation.  I can execute my test within the image using
> "ptest_runner" and I see it PASS/FAIL according to my test's content.
> So that's great, but the problem with this is still that I need to
> manually invoke qemu and initiate the ptest-runner script.  I would
> like that to occurs from within the testimage using Image test as
> describe under https://wiki.yoctoproject.org/wiki/Image_tests.  Yet
> it seems that to get image test support I need to write additional
> python test scripts which I feel is excessive and since those scripts
> are not store within the recipe folder, I feel those test are more
> MACHINE testing than package testing.
> 
> I would like to use 1 python test to execute and report the result of
> one or more ptest, in the same automatic way image test does.  I
> cannot see or connect the dot between ptest and image test by reading
> and re-reading section 4.21.

Right, I see. The unattended runtime execution of ptests should be 
performed by meta/lib/oeqa/runtime/cases/ptest.py, I don't at the moment 
remember how the pieces fit together exactly so that it runs, but I 
think if you follow what it says [1] and run bitbake -c testimage 
<image> then it should work.

[1]
     @skipIfNotFeature('ptest', 'Test requires ptest to be in 
DISTRO_FEATURES')
     @skipIfNotFeature('ptest-pkgs', 'Test requires ptest-pkgs to be in 
IMAGE_FEATURES')


Alex

