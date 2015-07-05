Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91A6EE00A30; Sun,  5 Jul 2015 12:12:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.225 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Sun, 05 Jul 2015 12:12:48 PDT
Received: from bin-vsp-out-02.atm.binero.net (vsp-unauthed01.binero.net
	[195.74.38.225])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA289E009CC
	for <yocto@yoctoproject.org>; Sun,  5 Jul 2015 12:12:48 -0700 (PDT)
X-Halon-ID: aa0b3fba-2349-11e5-bc2d-005056917f90
Authorized-sender: petter@technux.se
Received: from [192.168.1.82] (unknown [81.229.90.163])
	by bin-vsp-out-02.atm.binero.net (Halon Mail Gateway) with ESMTPSA;
	Sun,  5 Jul 2015 21:11:38 +0200 (CEST)
Message-ID: <5599816C.3040602@technux.se>
Date: Sun, 05 Jul 2015 21:11:40 +0200
From: =?windows-1252?Q?Petter_Mab=E4cker?= <petter@technux.se>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Nikolay Dimitrov <picmaster@mail.bg>, Jonathan Liu <net147@gmail.com>
References: <1435981717-29443-1-git-send-email-net147@gmail.com>
	<55976F44.5070106@mail.bg>
In-Reply-To: <55976F44.5070106@mail.bg>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] firmware.inc: fetch from SVN instead of Git
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
X-List-Received-Date: Sun, 05 Jul 2015 19:12:52 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 07/04/2015 07:29 AM, Nikolay Dimitrov wrote:
> Hi Jonathan,
>
> On 07/04/2015 06:48 AM, Jonathan Liu wrote:
>> Reduces the download time significantly.
>>
>> Signed-off-by: Jonathan Liu <net147@gmail.com>
>> ---
>>   recipes-bsp/common/firmware.inc | 6 +++---
>>   1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/recipes-bsp/common/firmware.inc 
>> b/recipes-bsp/common/firmware.inc
>> index ad3176a..100df3a 100644
>> --- a/recipes-bsp/common/firmware.inc
>> +++ b/recipes-bsp/common/firmware.inc
>> @@ -1,7 +1,7 @@
>> -RPIFW_SRCREV ?= "e42a747e8d5c4a2fb3e837d0924c7cc39999936a"
>> +RPIFW_SRCREV ?= "461"
>>   RPIFW_DATE ?= "20150206"
>> -RPIFW_SRC_URI ?= 
>> "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
>> -RPIFW_S ?= "${WORKDIR}/git"
>> +RPIFW_SRC_URI ?= 
>> "svn://github.com/raspberrypi/firmware;protocol=https;module=trunk"
>> +RPIFW_S ?= "${WORKDIR}/trunk"
>>
>>   SRC_URI = "${RPIFW_SRC_URI}"
>>   SRCREV = "${RPIFW_SRCREV}"
>>
>
> Just tested the download times for this repo:
>
> git (deep clone): 24m
> svn: 3m8s
> git (shallow clone): 40s
>
> Isn't it possible to use "--depth 1" for git clone? I would rather
> prefer seeing this instead of just giving up and going back to svn...
>
> Regards,
> Nikolay
Jonathan, I understand your problem, I have pointed out 
"https://github.com/raspberrypi/firmware/archive/${RPIFW_SRCREV}.zip" 
ontop of HEAD when building in order to get rid of this problem. But I 
agree with Nikolay that going back to svn feels like a step in the wrong 
direction and instead we should push for a changle like the one 
discussed in the thread: '[yocto] [meta-raspberrypi][PATCH] 
firmware.inc: Fetch a zip instead of cloning a git repo'

or by using "--depth=1" (which isn't supported in the bitbake git 
fetcher for the moment..).

I will try to push for that one of the solutions (--depth=1 or .zip) is 
merged soon so we once for all can get rid of this annoying problem.

BR,
Petter


