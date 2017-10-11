Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2544E00B87; Tue, 10 Oct 2017 18:30:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49DDAE008A4
	for <yocto@yoctoproject.org>; Tue, 10 Oct 2017 18:30:13 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v9B1UDG9024600
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Tue, 10 Oct 2017 18:30:13 -0700
Received: from [128.224.162.150] (128.224.162.150) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.361.1;
	Tue, 10 Oct 2017 18:30:12 -0700
To: Mark Hatle <mark.hatle@windriver.com>, <yocto@yoctoproject.org>
References: <20171010074643.114607-1-wenzong.fan@windriver.com>
	<7050676f-1eb4-4d7b-a999-8add244cb291@windriver.com>
From: wenzong fan <wenzong.fan@windriver.com>
Message-ID: <a8902997-f699-a9d1-3e4a-07575493609a@windriver.com>
Date: Wed, 11 Oct 2017 09:32:24 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <7050676f-1eb4-4d7b-a999-8add244cb291@windriver.com>
Subject: Re: [meta-selinux][PATCH] policycoreutils: update AUDITH, PAMH
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
X-List-Received-Date: Wed, 11 Oct 2017 01:30:14 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 10/10/2017 09:45 PM, Mark Hatle wrote:
> This is incorrect.  You are not allowed to dynamically determine capabilities
> like this.  Because if another component changes, the system has no way to
> determine if this package should also be recompiled.
> 
> policycoreutils should be using 'PACKAGECONFIG', with an audit and pam option.
> Then set a default with them enabled, allowing a user to override the settings.

Ok, I'll update the patch with 'PACKAGECONFIG' options.

Thanks
Wenzong

> 
> --Mark
> 
> On 10/10/17 2:46 AM, wenzong.fan@windriver.com wrote:
>> From: Wenzong Fan <wenzong.fan@windriver.com>
>>
>> Update definition of AUDITH, PAMH according to the upstream changes
>> for Makefiles:
>>
>>    commit 89ce96cac6ce5eeed78cb39c58514cd68494d7aa
>>    ...
>>    -ifeq ($(PAMH), /usr/include/security/pam_appl.h)
>>    +ifeq ($(PAMH), y)
>>    ...
>>    -ifeq ($(AUDITH), /usr/include/libaudit.h)
>>    +ifeq ($(AUDITH), y)
>>
>> Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>> ---
>>   recipes-security/selinux/policycoreutils.inc | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-security/selinux/policycoreutils.inc
>> index 442b086..63ca402 100644
>> --- a/recipes-security/selinux/policycoreutils.inc
>> +++ b/recipes-security/selinux/policycoreutils.inc
>> @@ -118,8 +118,8 @@ export STAGING_LIBDIR
>>   export BUILD_SYS
>>   export HOST_SYS
>>   
>> -AUDITH="`ls ${STAGING_INCDIR}/libaudit.h >/dev/null 2>&1 && echo /usr/include/libaudit.h `"
>> -PAMH="`ls ${STAGING_INCDIR}/security/pam_appl.h >/dev/null 2>&1 && echo /usr/include/security/pam_appl.h `"
>> +AUDITH="`ls ${STAGING_INCDIR}/libaudit.h >/dev/null 2>&1 && echo y`"
>> +PAMH="`ls ${STAGING_INCDIR}/security/pam_appl.h >/dev/null 2>&1 && echo y`"
>>   EXTRA_OEMAKE += "${@target_selinux(d, 'PAMH=${PAMH} AUDITH=${AUDITH}', 'PAMH= AUDITH= ')} INOTIFYH=n"
>>   EXTRA_OEMAKE += "PREFIX=${D}"
>>   EXTRA_OEMAKE += "INITDIR=${D}/etc/init.d"
>>
> 
> 

