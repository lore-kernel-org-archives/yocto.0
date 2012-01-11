Return-Path: <Zumeng.Chen@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD971E006E9
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 17:07:02 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q0B16qYK013837
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 10 Jan 2012 17:06:52 -0800 (PST)
Received: from [128.224.162.181] (128.224.162.181) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 10 Jan 2012 17:06:52 -0800
Message-ID: <4F0CE091.5050107@windriver.com>
Date: Wed, 11 Jan 2012 09:06:25 +0800
From: Zumeng Chen <zumeng.chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.11) Gecko/20100713 Lightning/1.0b1 Thunderbird/3.0.6
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1326210673.git.zumeng.chen@windriver.com>
	<f42f850e2c27a23f9e7b46bbebe977a6a19a6c54.1326210673.git.zumeng.chen@windriver.com>
	<4F0C6E4F.8040108@linux.intel.com>
In-Reply-To: <4F0C6E4F.8040108@linux.intel.com>
Cc: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [PATCH 1/4] lttng-ust: Integrate into yocto linux
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 11 Jan 2012 01:07:03 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

于 2012年01月11日 00:58, Darren Hart 写道:
>
> On 01/10/2012 08:11 AM, Zumeng Chen wrote:
>    
>> This patch intended to integrate the LTTng UST 2.0 package, which
>> contains the userspace tracer library to trace userspace codes.
>>
>> Signed-off-by: Zumeng Chen<zumeng.chen@windriver.com>
>> ---
>>   meta/recipes-kernel/lttng-2.0/lttng-ust_1.9.4.bb |   25 ++++++++++++++++++++++
>>   1 files changed, 25 insertions(+), 0 deletions(-)
>>   create mode 100644 meta/recipes-kernel/lttng-2.0/lttng-ust_1.9.4.bb
>>
>> diff --git a/meta/recipes-kernel/lttng-2.0/lttng-ust_1.9.4.bb b/meta/recipes-kernel/lttng-2.0/lttng-ust_1.9.4.bb
>> new file mode 100644
>> index 0000000..846019e
>> --- /dev/null
>> +++ b/meta/recipes-kernel/lttng-2.0/lttng-ust_1.9.4.bb
>> @@ -0,0 +1,25 @@
>> +SUMMARY = "Linux Trace Toolkit Userspace Tracer 2.0"
>> +DESCRIPTION = "The LTTng UST 2.0 package contains the userspace tracer library to trace userspace codes."
>> +HOMEPAGE = "http://lttng.org/lttng2.0"
>> +BUGTRACKER = "n/a"
>> +
>> +LICENSE = "LGPLv2.1+&  BSD"
>> +LIC_FILES_CHKSUM = "file://COPYING;md5=e647752e045a8c45b6f583771bd561ef \
>> +                    file://snprintf/snprintf.c;endline=32;md5=d3d544959d8a3782b2e07451be0a903c \
>> +                    file://snprintf/various.h;endline=31;md5=89f2509b6b4682c4fc95255eec4abe44"
>> +
>> +inherit autotools
>> +
>> +DEPENDS = "liburcu util-linux"
>> +
>> +SRC_URI = "http://lttng.org/files/lttng-ust/lttng-ust-${PV}.tar.gz"
>> +
>> +SRC_URI[md5sum] = "0f09bb954c99cb99ab6997cd492953c1"
>> +SRC_URI[sha256sum] = "e9ec3c55c2251b3f3b512bfa1015b0f67e35d55793850ccea5134f7b24ee3ba1"
>> +
>> +S = "${WORKDIR}/lttng-ust-${PV}"
>> +
>> +# Due to liburcu not building on MIPS currently this recipe needs to
>> +# be limited also.
>> +# So here let us first suppport x86/arm/powerpc platforms now.
>> +COMPATIBLE_HOST = '(x86_64.*|i.86.*|arm.*|powerpc.*)-linux'
>>      
> We had discussed using a different comment that more clearly stated why
> this is necessary and use the same comment across all the patches
> implementing this.
>
> This applies to all 4 patches. The suggestion was in my response to
> Patch 1/4 V1:
>    
Oops, sorry Darren, all fixed and really soon for V4 on OE :-)

Regards,
Zumeng
>    
>> Looking through documentation.conf and existing poky sources, I believe
>> this test is correct. HOST/TARGET are the same in this case. The comment
>> is a bit confusing however. I believe the comment should read:
>>
>> # liburcu doesn't build for MIPS
>> COMPATIBLE_HOST = '(x86_64.*|i.86.*|arm.*|powerpc.*)-linux'
>>
>> The key difference being "for" instead of "on". The rest of the comment
>> is redundant with the assignment itself. This applies to all 4 patches.
>>      
> Otherwise, things look good.
>
>    


