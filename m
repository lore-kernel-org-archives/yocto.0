Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C4D2E00DF0; Fri, 16 Feb 2018 06:25:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 699FEE00DA9
	for <yocto@yoctoproject.org>; Fri, 16 Feb 2018 06:25:24 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w1GEP6Rx031644
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Fri, 16 Feb 2018 06:25:07 -0800
Received: from server.local (128.224.23.209) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Fri, 16 Feb 2018 06:25:05 -0800
To: akuster808 <akuster808@gmail.com>, Anuj Mittal <anuj.mittal@intel.com>,
	<richard.purdie@linuxfoundation.org>
References: <cover.1517934700.git.bruce.ashfield@windriver.com>
	<2d69d47f2413a8e1b969303c9d985869b9abc847.1517934700.git.bruce.ashfield@windriver.com>
	<7b1631bc-be63-91c5-04b0-085432488822@intel.com>
	<f8869bbe-22f3-63cd-dd90-e0a776498b66@gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <c6725e2c-e0f7-9d16-20f8-debc48c793a3@windriver.com>
Date: Fri, 16 Feb 2018 09:25:19 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
	Gecko/20100101 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <f8869bbe-22f3-63cd-dd90-e0a776498b66@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/3] poky: update default kernel to v4.15
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
X-List-Received-Date: Fri, 16 Feb 2018 14:25:25 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2018-02-16 1:14 AM, akuster808 wrote:
> 
> 
> On 02/15/2018 08:54 PM, Anuj Mittal wrote:
>> Hi Bruce,
>>
>> On 02/07/2018 12:34 AM, Bruce Ashfield wrote:
>>> Updating the default kernel for qemu* to be v4.15. This allows easy
>>> integration of the latest fixes/features for new BSPs. 4.14 is also
>>> available as a LTS kernel option.
>>>
>>> Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
>>> ---
>>>   meta-poky/conf/distro/poky.conf | 2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
>>> index 3dac26fa3c7b..441986c190bf 100644
>>> --- a/meta-poky/conf/distro/poky.conf
>>> +++ b/meta-poky/conf/distro/poky.conf
>>> @@ -21,7 +21,7 @@ POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"
>>>   
>>>   DISTRO_FEATURES ?= "${DISTRO_FEATURES_DEFAULT} ${DISTRO_FEATURES_LIBC} ${POKY_DEFAULT_DISTRO_FEATURES}"
>>>   
>>> -PREFERRED_VERSION_linux-yocto ?= "4.12%"
>>> +PREFERRED_VERSION_linux-yocto ?= "4.14%"
>> Should this have been 4.15?
> If I am not mistaken, the default will be the lts kernel which is 4.14.

Yup. There were several bounces of this in thread, but the end
result are 4.12, 4.14 and 4.15 being the default for various
platforms.

It will end up being 4.14 and 4.15 by the time the release is done.
.. we just need to get the h/w references moved first.

Bruce

> 
> - armin
>>
>> Thanks,
>> Anuj
>>
>>>   
>>>   SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${IMAGE_BASENAME}-${TUNE_PKGARCH}"
>>>   SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
>>>
> 


