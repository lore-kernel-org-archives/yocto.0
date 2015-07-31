Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B18FCE00B98; Fri, 31 Jul 2015 09:19:17 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E2FAE00B8C
	for <yocto@yoctoproject.org>; Fri, 31 Jul 2015 09:18:59 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 31 Jul 2015 09:18:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,585,1432623600"; d="scan'208";a="775315058"
Received: from alimon-thinkpad-w540.zpn.intel.com (HELO [10.219.5.54])
	([10.219.5.54])
	by orsmga002.jf.intel.com with ESMTP; 31 Jul 2015 09:18:59 -0700
Message-ID: <55BB9FF8.7060109@linux.intel.com>
Date: Fri, 31 Jul 2015 11:19:04 -0500
From: =?windows-1252?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <1438203053-7909-1-git-send-email-anibal.limon@linux.intel.com>
	<1954435.FDO7q63aNY@peggleto-mobl.ger.corp.intel.com>
	<55BB96B9.4050605@linux.intel.com>
	<1692996.ymRgL7KP11@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <1692996.ymRgL7KP11@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 10/10][auh] upgradehelper: Add support for generate buildhistory recipe diff's
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
X-List-Received-Date: Fri, 31 Jul 2015 16:19:17 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit



On 31/07/15 11:10, Paul Eggleton wrote:
> On Friday 31 July 2015 10:39:37 Aníbal Limón wrote:
>> Hi Paul,
>>
>> On 31/07/15 10:29, Paul Eggleton wrote:
>>> Hi Aníbal,
>>>
>>> On Wednesday 29 July 2015 15:50:53 Aníbal Limón wrote:
>>>> Now AUH generates buildhistory diff when recipe was upgraded
>>>> successfully.
>>>>
>>>> For enable this feature set into local.conf.
>>>>
>>>> 	INHERIT += "buildhistory"
>>>> 	BUILDHISTORY_COMMIT = "1"
>>>>
>>>> Summary of the changes,
>>>>
>>>> 	- bitbake.py: Enable environment generation without recipe,
>>>> 	
>>>>             removes Buildhistory class.
>>>> 	
>>>> 	- buildhistory.py: Add buildhistory class that generates initial
>>>> 	
>>>>             buildhistory revision and keeps track of build revisions for
>>>>             generate diff when build is successful.
>>>>           
>>>>           - upgradehelper.py: Add buildhistory steps for upgrade, add
>>>>           
>>>>             support for detect when buildhistory is enabled loading the
>>>>             environment without recipe.
>>> So this looks OK, but I can't tell if it ensures you get the difference
>>> between successful builds rather than the difference to the last build -
>>> we need to ensure that a failed build of a recipe in between isn't
>>> considered as part of the comparison. In practice I guess this would mean
>>> storing the buildhistory revision of the last successful build for each
>>> recipe.
>> I only made a diff if the build success in all machines this guarantee
>> that only stores good information.
> OK, I think I'm following now.
>
> One other thing - I'm not particularly keen on the BB_ENV_EXTRAWHITE thing -
> can you perhaps query the build system for the path it's using instead?

I modified this env var to pass BUILDHISTORY_DIR variable per recipe 
this enables
to save buildhistory into AUH workdir 
(build/upgrade-helper/work/recipe/buildhistory).

     alimon

>
> CHeers,
> Paul
>
> Cheers,
> Paul
>


