Return-Path: <randy.e.witt@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EE14E00C2B; Tue, 25 Aug 2015 13:04:51 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2761BE00A92
	for <yocto@yoctoproject.org>; Tue, 25 Aug 2015 13:04:47 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 25 Aug 2015 13:04:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,747,1437462000"; d="scan'208";a="790818193"
Received: from bitbang.jf.intel.com ([10.7.201.51])
	by orsmga002.jf.intel.com with ESMTP; 25 Aug 2015 13:04:46 -0700
To: "Ng, Mei Yeen" <mei.yeen.ng@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <62355CE5B24AE3438DF93AF114E1F91B2DBC9045@KMSMSX153.gar.corp.intel.com>
	<55B12B8B.7060509@linux.intel.com>
	<62355CE5B24AE3438DF93AF114E1F91B2DC08180@PGSMSX103.gar.corp.intel.com>
From: Randy Witt <randy.e.witt@linux.intel.com>
Message-ID: <55DCCA5E.4080907@linux.intel.com>
Date: Tue, 25 Aug 2015 13:04:46 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <62355CE5B24AE3438DF93AF114E1F91B2DC08180@PGSMSX103.gar.corp.intel.com>
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
X-List-Received-Date: Tue, 25 Aug 2015 20:04:51 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 08/24/2015 07:20 PM, Ng, Mei Yeen wrote:
> Hi Randy,
>
> The packagegroups is added into the image as below:
>
> 1) Create a bbappend of the image core-image-full-cmdline.bbappend in our new layer
> 2) In the core-image-full-cmdline.bbappend, enable the following lines:
>
> 	DESCRIPTION = "Custom list of packages for build essentials for commandline image"
>
> 	IMAGE_INSTALL += "packagegroup-core-buildessential-extended"
> 	IMAGE_INSTALL += "packagegroup-core-devtools"

Could you try using _append like below, and see if that gives you the 
consistency you want?

IMAGE_INSTALL_append = " packagegroup-core-buildessential-extended"
IMAGE_INSTALL_append = " packagegroup-core-devtools"

> 3) Update the local.conf to include EXTRA_IMAGE_FEATURES = "debug-tweaks tools-testapps tools-debug"
>
> Thanks,
> MY
>
> -----Original Message-----
> From: Randy Witt [mailto:randy.e.witt@linux.intel.com]
> Sent: Friday, July 24, 2015 2:00 AM
> To: Ng, Mei Yeen; yocto@yoctoproject.org
> Cc: Hart, Darren; Witt, Randy E
> Subject: Re: [yocto] Packages in packagegroup are not installed in image
>
> Hi Mei,
>
> On 07/15/2015 10:40 AM, Ng, Mei Yeen wrote:
>> Hi,
>>
>> I need help for issue where packages in packagegroup that compiles perfectly fine with core-images, but when verified in the image, they are not installed for some reason.
>> My understanding was that packages listed under RDEPENDS in the packagegroup would get compiled and installed.
>>
>> Some packages would appear in 1 image and then disappear in the next compiled image.
>> I'm seeing this when compiling with core-image-full-cmdline and core-image-sato.
>>
>> I have attached the following package group created:
>>
>> -        graphics package group- ldd would not be installed in the image
>>
>> -        build essentials extended package group - gdb were not install, gcc and mkdosfs will intermittently not install into the image
>
> Could you perhaps provide the recipe that creates the package group and show how you are adding the package group to the image?
>
>> Any help to shed some light on this is very much appreciated.
>>
>> Thanks,
>> MY
>>
>>
>>
>


