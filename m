Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5774D4C8090F
	for <yocto@yoctoproject.org>; Fri, 18 Feb 2011 18:04:44 -0600 (CST)
Received: from durham.keylevel.com ([109.224.134.115]:50746
	helo=[192.168.1.83])
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1PqaJW-0004ap-23; Sat, 19 Feb 2011 00:04:42 +0000
Message-Id: <63A706D0-7DED-4FFB-B10F-83ECE0C85509@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: "Cui, Dexuan" <dexuan.cui@intel.com>
In-Reply-To: <1865303E0DED764181A9D882DEF65FB6863CE7363B@shsmsx502.ccr.corp.intel.com>
Mime-Version: 1.0 (Apple Message framework v936)
Date: Sat, 19 Feb 2011 00:04:37 +0000
References: <13233D92-281E-48E5-9830-E31753F2717E@keylevel.com>
	<1865303E0DED764181A9D882DEF65FB6863CE7363B@shsmsx502.ccr.corp.intel.com>
X-Mailer: Apple Mail (2.936)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: do_compile() isn't run when building
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
X-List-Received-Date: Sat, 19 Feb 2011 00:04:44 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

On 18 Feb 2011, at 09:42, Cui, Dexuan wrote:

> Chris Tapp wrote:
>> I've created a simple recipe based on an example from the Poky
>> Reference manual (I've added a license to get it to build):
> The code looks ok.
>
>> However, if I 'bitbake test' the code isn't compiled:
>>
>> NOTE: Running setscene task 178 of 276 (/home/chris/poky-dev/meta/
>> recipes-keylevel/test/test_0.1.0.bb:do_populate_sysroot_setscene)
>> NOTE: Running setscene task 179 of 276 (/home/chris/poky-dev/meta/
>> recipes-keylevel/test/test_0.1.0.bb:do_package_setscene)
>> NOTE: package test-0.1.0-r0: task do_populate_sysroot_setscene:
>> Started NOTE: package test-0.1.0-r0: task do_package_setscene:  
>> Started
>> NOTE: package test-0.1.0-r0: task do_populate_sysroot_setscene:
>> Succeeded
>> NOTE: Running setscene task 180 of 276 (/home/chris/poky-dev/meta/
>> recipes-keylevel/test/test_0.1.0.bb:do_populate_lic_setscene)
>> NOTE: package test-0.1.0-r0: task do_package_setscene: Succeeded
>> NOTE: package test-0.1.0-r0: task do_populate_lic_setscene: Started
>> NOTE: Running setscene task 181 of 276 (/home/chris/poky-dev/meta/
>> recipes-keylevel/test/test_0.1.0.bb:do_package_write_ipk_setscene)
>> NOTE: package test-0.1.0-r0: task do_populate_lic_setscene: Succeeded
>> NOTE: package test-0.1.0-r0: task do_package_write_ipk_setscene:
>> Started NOTE: package test-0.1.0-r0: task
>> do_package_write_ipk_setscene: Succeeded
>> NOTE: Executing RunQueue Tasks
>> NOTE: Running noexec task 828 of 829 (ID: 9,
>> /home/chris/poky-dev/meta/ recipes-keylevel/test/test_0.1.0.bb,
>> do_package_write)
>> NOTE: Running noexec task 829 of 829 (ID: 4,
>> /home/chris/poky-dev/meta/ recipes-keylevel/test/test_0.1.0.bb,
>> do_build)
>>
>>
>> Why doesn't the code get built?
> Is this the complete log?
> I don't find any tasks(e.g., do_fetch, do_unpack, do_install...)  
> that should be there. This is odd.

Yes, that's the complete log ! I thought it was odd too.

> Maybe you can try "bitbake -c cleanall test; bitbake test" to see if  
> any change?

That does work, but it seems as if 'make clean' quite often (though  
not always) doesn't do enough.

Chris


