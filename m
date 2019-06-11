Return-Path: <Zhe.He@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAA98E00D6F; Tue, 11 Jun 2019 00:01:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39C6CE00D68
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2019 00:01:52 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x5B70sLW027333
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 11 Jun 2019 00:01:25 -0700
Received: from [128.224.162.221] (128.224.162.221) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Tue, 11 Jun 2019 00:01:00 -0700
To: "Mittal, Anuj" <anuj.mittal@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <1560222410-414851-1-git-send-email-zhe.he@windriver.com>
	<1560222410-414851-2-git-send-email-zhe.he@windriver.com>
	<82c0e90ca18d0b5a2389a9fc608f3bab61492f7f.camel@intel.com>
From: He Zhe <zhe.he@windriver.com>
Message-ID: <0f6a60c2-b3c0-e787-51f4-d77046f91b08@windriver.com>
Date: Tue, 11 Jun 2019 15:00:57 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <82c0e90ca18d0b5a2389a9fc608f3bab61492f7f.camel@intel.com>
X-Originating-IP: [128.224.162.221]
Subject: Re: [meta-dpdk][PATCH] dpdk: Fix do_compile failure for qemux86 and qemux86-64
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
X-List-Received-Date: Tue, 11 Jun 2019 07:01:53 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 6/11/19 2:31 PM, Mittal, Anuj wrote:
> On Tue, 2019-06-11 at 11:06 +0800, zhe.he@windriver.com wrote:
>> From: He Zhe <zhe.he@windriver.com>
>>
>> DPDK_TARGET_MACHINE in bbappend in other layers forms the dpdk-
>> internal variable
>> MACHINE_CFLAGS which is passed to dpdk compilation command line
>> containing the
>> first -march parameter. And EXTRA_CFLAGS in dpdk.inc is passed to
>> dpdk command
>> line containing the second -march parameter. By mistake, the first
>> -march had
>> always overwritten the second one until the following commit of GCC
>> v9.1.0
>> 8c0f695d83d1 ("driver: Also prune joined switches with negation").
>>
>> Since it was fixed, the second -march, which was core2 for qemux86-64 
>> or
>> core2-32 for qemux86, began to take effect. But core2* does not have
>> SSE4.2
>> feature which is required by some dpdk instruction optimization and
>> thus cause
>> the following compilation failure.
>>
>> 9.1.0/include/smmintrin.h:179:1: error: inlining failed in call to
>> always_inline
>> '_mm_blendv_epi8': target specific option mismatch
>>   179 | _mm_blendv_epi8 (__m128i __X, __m128i __Y, __m128i __M)
>>       | ^~~~~~~~~~~~~~~
>>
>> This patch adds DPDK_EXTRA_CFLAGS to append appropriate -march,
>> corei7 which is
>> minimum and clear and independent of host machine, to dpdk
>> compilation command
>> line to overwrite all previous ones, without having to change dpdk
>> source code.
>>
>> Note that as we do not want to change the default tune core2* for
>> qemux86*, this
>> patch just fixes the compilation error. It would probably not be able
>> to run on
>> qemux86* with corei7 tune.
> I don't think overriding arch values in recipe is appropriate. Also the
> recipe is setting COMPATIBLE_MACHINE to be null because of this reason.
> If the MACHINE that we're building for doesn't support the features
> required, then we shouldn't be building dpdk for it in my opinion.

This is largely a fix for those who want to test building qemux86* with dpdk.
It does no harm to the rest of the configuration, and can be use as a way to
append potential flags to dpdk building command line.

But it's fine to me to drop it if it does not make much sense to you.

Thanks,
Zhe

>
> Thanks,
>
> Anuj
>
>> Signed-off-by: He Zhe <zhe.he@windriver.com>
>> ---
>>  recipes-extended/dpdk/dpdk.inc | 9 ++++++---
>>  1 file changed, 6 insertions(+), 3 deletions(-)
>>
>> diff --git a/recipes-extended/dpdk/dpdk.inc b/recipes-
>> extended/dpdk/dpdk.inc
>> index a0e081a..0275e0c 100644
>> --- a/recipes-extended/dpdk/dpdk.inc
>> +++ b/recipes-extended/dpdk/dpdk.inc
>> @@ -61,6 +61,9 @@ DPDK_RTE_TARGET_x86-64 = "x86_64-native-linuxapp-
>> gcc"
>>  DPDK_RTE_TARGET_x86 = "i686-native-linuxapp-gcc"
>>  DPDK_RTE_TARGET_aarch64 = "arm64-${DPDK_TARGET_MACH}-linuxapp-gcc"
>>  export RTE_TARGET = "${DPDK_RTE_TARGET}"
>> +DPDK_EXTRA_CFLAGS = ""
>> +DPDK_EXTRA_CFLAGS_qemux86 ?= "-march=corei7"
>> +DPDK_EXTRA_CFLAGS_qemux86-64 ?= "-march=corei7"
>>  
>>  # The list of intel Comms platforms and their target machine
>>  # process mapping. The supported target machine is listed under
>> @@ -100,18 +103,18 @@ do_compile () {
>>  
>>  	cd ${S}/${RTE_TARGET}
>>  	oe_runmake EXTRA_LDFLAGS="-L${STAGING_LIBDIR} --hash-style=gnu" 
>> \
>> -		   EXTRA_CFLAGS="${HOST_CC_ARCH} ${TOOLCHAIN_OPTIONS}
>> -I${STAGING_INCDIR}" \
>> +		   EXTRA_CFLAGS="${HOST_CC_ARCH} ${TOOLCHAIN_OPTIONS}
>> ${DPDK_EXTRA_CFLAGS} -I${STAGING_INCDIR}" \
>>  		   CROSS="${TARGET_PREFIX}" \
>>  		   prefix=""  LDFLAGS="${TUNE_LDARGS}"  WERROR_FLAGS="-
>> w" V=1
>>  
>>  	cd ${S}/examples/
>>  	oe_runmake EXTRA_LDFLAGS="-L${STAGING_LIBDIR} --hash-style=gnu
>> -fuse-ld=bfd" \
>> -		   EXTRA_CFLAGS="${HOST_CC_ARCH} ${TOOLCHAIN_OPTIONS}
>> -I${STAGING_INCDIR}" \
>> +		   EXTRA_CFLAGS="${HOST_CC_ARCH} ${TOOLCHAIN_OPTIONS}
>> ${DPDK_EXTRA_CFLAGS} -I${STAGING_INCDIR}" \
>>  		   CROSS="${TARGET_PREFIX}" O="${S}/examples/$@/"
>>  
>>  	cd ${S}/test/
>>  	oe_runmake EXTRA_LDFLAGS="-L${STAGING_LIBDIR} --hash-style=gnu
>> -fuse-ld=bfd" \
>> -		   EXTRA_CFLAGS="${HOST_CC_ARCH} ${TOOLCHAIN_OPTIONS}
>> -I${STAGING_INCDIR}" \
>> +		   EXTRA_CFLAGS="${HOST_CC_ARCH} ${TOOLCHAIN_OPTIONS}
>> ${DPDK_EXTRA_CFLAGS} -I${STAGING_INCDIR}" \
>>  		   CROSS="${TARGET_PREFIX}" O="${S}/test/$@/"
>>  }
>>  


