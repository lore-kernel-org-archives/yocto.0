Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A67C5E00849; Wed, 27 Apr 2016 11:06:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52C23E00756
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 11:06:15 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u3RI6Ar3008213
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 27 Apr 2016 11:06:11 -0700 (PDT)
Received: from soho-mhatle-m.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Wed, 27 Apr 2016 11:06:10 -0700
To: Khem Raj <raj.khem@gmail.com>, "Burton, Ross" <ross.burton@intel.com>
References: <B1D22563-F31B-4EF1-90D6-16EB391134D5@gmail.com>
	<CACS+7ZSpWgziO+GF++25dM7kgP4SZ_GDV+-DcEMQ_YUGyEEnfQ@mail.gmail.com>
	<CAMKF1spQn114r9dCAk9z7c3hw-NJp3pVoVP+f3gao2mhLTBHYg@mail.gmail.com>
	<CAMKF1spwimpQwSE38B5jWmyZXwMKy6znMEF9p-NmTM4mGGr+4g@mail.gmail.com>
	<CAJTo0Lb25x1H44nGn05d6qBVLDpyiaZ3XW40fdrAWcP_D+qYwg@mail.gmail.com>
	<CAJTo0LZZ3Hs_yrm5ceik4j8Orv-UQ9T72Wu=R_PCRKw4Y9-WCw@mail.gmail.com>
	<CAMKF1sozR3_Mhy5PKSaKCo7S2yHrtLzTNrUURFhN38gV0AbkYQ@mail.gmail.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <246f9c39-736b-7ed6-b69a-69d8c4369236@windriver.com>
Date: Wed, 27 Apr 2016 13:06:07 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1sozR3_Mhy5PKSaKCo7S2yHrtLzTNrUURFhN38gV0AbkYQ@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	openembeded-devel <openembedded-devel@lists.openembedded.org>,
	OE Core mailing list <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] GCC 6 Recipes
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
X-List-Received-Date: Wed, 27 Apr 2016 18:06:16 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 4/27/16 12:53 PM, Khem Raj wrote:
> thanks I think most of them come to these categories. So any help in
> fixing them is welcome.
> 
> 1. kernel older than 4.4, backport needed fixed into these branches or
> move to newer kernels.
> 2. uboot dont have gcc6 compiler header files, backport the needed fixes
> 2. meta-qt4 needs to use gnu++98
> 3. gcc6 providing its own stdlib.h in libstdc++
> 4. gcc6 swtiching to gnu++14 for C++ as default.
> 5. GPLv2-only versions of recipes are simply old will need fixing

From a -very- brief look, I suspect each of these fixes will be fairly simple.
So as we move into the next oe-core phase, we should be able get through this
pretty quickly.

--Mark

> I will take a stab at fixing the nativesdk recipes which is mostly due
> to stdlib.h issue.
> 
> 
> On Wed, Apr 27, 2016 at 1:53 AM, Burton, Ross <ross.burton@intel.com> wrote:
>> Finally made errors.yp do the right thing:
>> http://errors.yoctoproject.org/Errors/Latest/?filter=91ef7bf5ad13304827e2ef06738f7fc28ed650f6&type=commit
>> is a list of all the failures.
>>
>> Ross
>>
>> On 27 April 2016 at 09:02, Burton, Ross <ross.burton@intel.com> wrote:
>>>
>>>
>>> On 21 April 2016 at 04:06, Khem Raj <raj.khem@gmail.com> wrote:
>>>>
>>>> I have updated
>>>>
>>>> http://git.openembedded.org/openembedded-core-contrib/log/?h=kraj/gcc-6
>>>>
>>>> With few more patches added now. Most of packages in OE-Core are
>>>> building fine except linux-yocto on mips and ppc
>>>
>>>
>>> I threw this at the autobuilder.  Lots of c++ failures on various
>>> architectures.
>>>
>>> https://autobuilder.yoctoproject.org/main/tgrid, the row for SHA 91ef.
>>>
>>> Ross
>>
>>


