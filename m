Return-Path: <yocto@emagii.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8F72E00BFB; Tue, 15 Jan 2019 21:21:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [79.136.2.42 listed in list.dnswl.org]
Received: from pio-pvt-msa3.bahnhof.se (pio-pvt-msa3.bahnhof.se [79.136.2.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57324E007B3
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2019 21:21:41 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by pio-pvt-msa3.bahnhof.se (Postfix) with ESMTP id 6FC113F3B2;
	Wed, 16 Jan 2019 06:21:40 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
Received: from pio-pvt-msa3.bahnhof.se ([127.0.0.1])
	by localhost (pio-pvt-msa3.bahnhof.se [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id DuCHVNuC1r41; Wed, 16 Jan 2019 06:21:40 +0100 (CET)
Received: from [10.175.196.210] (h-169-62.A454.priv.bahnhof.se [37.123.169.62])
	(Authenticated sender: mb782575)
	by pio-pvt-msa3.bahnhof.se (Postfix) with ESMTPA id 7F5E73F248;
	Wed, 16 Jan 2019 06:21:38 +0100 (CET)
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Yocto list discussion <yocto@yoctoproject.org>
References: <09d6ac15-7dbe-3ffa-3f9c-381746ec7433@emagii.com>
	<c7769c36a9575fbdcd2c312430eacb3266fd60de.camel@linuxfoundation.org>
From: Ulf Samuelsson <yocto@emagii.com>
Message-ID: <c6aa45ce-2bfc-8252-5d5f-309a5854224e@emagii.com>
Date: Wed, 16 Jan 2019 06:21:34 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <c7769c36a9575fbdcd2c312430eacb3266fd60de.camel@linuxfoundation.org>
Subject: Re: bitbake: DataSmart.expandWithRefs causing exception when handed "${@...}"
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
X-List-Received-Date: Wed, 16 Jan 2019 05:21:44 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: sv
Content-Transfer-Encoding: 7bit

Den 2019-01-15 kl. 14:38, skrev Richard Purdie:
> On Sun, 2019-01-13 at 22:53 +0100, Ulf Samuelsson wrote:
>> I am trying to add a new image class "SWU" in "sumo" for a "software
>> update image".
>> As a result:
>> do_sdk_depends[depends] = '${@get_ext_sdk_depends(d)} meta-extsdk-
>> toolchain:do_populate_sysroot'
>>
>> When data_smart.py works on this, it will call
>>
>> DataSmart.expandWithRefs(self, s, varname)
>> s        = '${@get_ext_sdk_depends(d)} meta-extsdk-
>> toolchain:do_populate_sysroot'
>> varname  = 'do_sdk_depends[depends]'
>>
>> I will get an exception in this statement:
>>
>>          while s.find('${') != -1:
>>              olds = s
>>              try:
>>                  s = __expand_var_regexp__.sub(varparse.var_sub, s)
>>
>> The definition of __expand_var_regexp__ is:
>>    __expand_var_regexp__ = re.compile(r"\${[^{}@\n\t :]+}")
>>
>> That is, it is looking for the string "${<X>}"
>> but <X> may not contains anything in [{}@\n\t :]
>>
>> since the "variable" in "s" is actually a call to
>> get_ext_sdk_depends,
>> and thus contains a '@' character it is not matched.
>>
>> The build aborts with an exception.
>>
>> I am not sure, if '${@get_ext_sdk_depends(d)}' should be expanded
>> before
>> DataSmart,expandWithRefs, or if expandWithRefs needs to be extended
>> to handle the case where the variable is a "call".
>>
>> This is blocking us from upgrading from pyro to sumo.
>>
>> Any ideas on a solution?
> 
> Can you firstly say what the error is you're seeing. Your attempt to
> understand it is good but I'm not sure which error you see?
> 
> Secondly, is there a way someone else could reproduce this bug?
> 
> The fragment you quote looks correct. If you have variable and function
> names conflicting that would be a problem though as they're all in the
> same namespace. I'm unclear whether that is a problem here or not
> though based on the available information.
> 
> Cheers,
> 
> Richard
> 

I found the problem.
The "image_swu.bbclass" in the customer contained a statement:

"addtask do_packageswu after do_image_complete before do_image_qa"

The dependencies of the image recipe is:
     do_fetch
     do_prepare_recipe_sysroot:    do_fetch
     do_unpack:                    do_fetch
     do_patch:                     do_unpack
     do_populate_lic:              do_patch
     do_configure:                 do_patch
     do_compile:                   do_configure
     do_install:                   do_compile
     do_package:                   do_install
     do_package_data:              do_package
     do_rootfs:                    do_package_data \
                                   do_prepare_recipe_sysroot \
                                   do_populate_lic
1    do_image_qa:                  do_rootfs
     do_image:                     do_image_qa do_rootfs
     do_image_tar:                 do_image
2    do_image_complete:            do_image_tar do_image
     do_build                      do_image_complete \
                                   do_package_data \
                                   do_populate_lic

The addtask statement want something which is after (2) but before (1) 
and bitbake responds by creating a circular dependency.

When I changed this to:

"addtask do_packageswu after do_image_ubifs before do_image_complete"

the build works.

(the swu image will work on a previously created file system, which 
happens to be ubifs in this case)


I think a simple good improvement would be to have an addtask
check if this would create a circular dependency.

KNOWN_TASKS = [ 'do_fetch', 'do_unpack', ... , 'do_build' ]
# Some tasks which has a fuzzy order like do_prepare_recipe_sysroot
# may have to be omitted.

TASK_ORDER['do_fetch'] = 1
...
TASK_ORDER['do_build'] = <n>

def circular(before, after)
     if not before in KNOWN_TASKS
         return false
     if not after in KNOWN_TASKS:
         return false
     before_prio = TASK_ORDER[before]
     after_prio = TASK_ORDER[after]
     return after_prio > before_prio

This would at least catch the more common tasks, and would be quick,
since the particular recipe would not have to be parsed.

Where could such code be added (not used to hacking bitbake)?

A better implementation would of course analyze the specific recipe
before accepting the addtask statement.

-- 
Best Regards
Ulf Samuelsson

