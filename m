Return-Path: <randy.e.witt@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18913E0087F; Thu, 23 Jul 2015 11:01:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9775E0087F
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 11:01:46 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 23 Jul 2015 11:01:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,532,1432623600"; d="scan'208";a="769997873"
Received: from bitbang.jf.intel.com ([10.7.201.51])
	by orsmga002.jf.intel.com with ESMTP; 23 Jul 2015 11:01:46 -0700
To: "Ng, Mei Yeen" <mei.yeen.ng@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <62355CE5B24AE3438DF93AF114E1F91B2DBC9045@KMSMSX153.gar.corp.intel.com>
	<55B12B8B.7060509@linux.intel.com>
From: Randy Witt <randy.e.witt@linux.intel.com>
Message-ID: <55B12C0A.9090102@linux.intel.com>
Date: Thu, 23 Jul 2015 11:01:46 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.0.1
MIME-Version: 1.0
In-Reply-To: <55B12B8B.7060509@linux.intel.com>
Cc: "Hart, Darren" <darren.hart@intel.com>, "Witt,
	Randy E" <randy.e.witt@intel.com>
Subject: Re: Packages in packagegroup are not installed in image
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
X-List-Received-Date: Thu, 23 Jul 2015 18:01:49 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 07/23/2015 10:59 AM, Randy Witt wrote:
> Hi Mei,
>
> On 07/15/2015 10:40 AM, Ng, Mei Yeen wrote:
>> Hi,
>>
>> I need help for issue where packages in packagegroup that compiles perfectly
>> fine with core-images, but when verified in the image, they are not installed
>> for some reason.
>> My understanding was that packages listed under RDEPENDS in the packagegroup
>> would get compiled and installed.
>>
>> Some packages would appear in 1 image and then disappear in the next compiled
>> image.
>> I'm seeing this when compiling with core-image-full-cmdline and core-image-sato.
>>
>> I have attached the following package group created:
>>
>> -        graphics package group- ldd would not be installed in the image
>>
>> -        build essentials extended package group - gdb were not install, gcc
>> and mkdosfs will intermittently not install into the image
>
> Could you perhaps provide the recipe that creates the package group and show how
> you are adding the package group to the image?

Sorry I hit send too quickly, I saw the package group recipe, I just was curious 
how you are adding them to the image. Sorry.

>> Any help to shed some light on this is very much appreciated.
>>
>> Thanks,
>> MY
>>
>>
>>
>


