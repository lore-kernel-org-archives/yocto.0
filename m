Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id F1BC64C80A1D
	for <yocto@yoctoproject.org>; Fri, 18 Feb 2011 18:30:57 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 6267916602BB; Fri, 18 Feb 2011 17:30:42 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 820F81660285;
	Fri, 18 Feb 2011 17:30:01 -0700 (MST)
Message-ID: <4D5F0F09.5000503@mlbassoc.com>
Date: Fri, 18 Feb 2011 17:30:01 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <13233D92-281E-48E5-9830-E31753F2717E@keylevel.com>	<1865303E0DED764181A9D882DEF65FB6863CE7363B@shsmsx502.ccr.corp.intel.com>
	<63A706D0-7DED-4FFB-B10F-83ECE0C85509@keylevel.com>
In-Reply-To: <63A706D0-7DED-4FFB-B10F-83ECE0C85509@keylevel.com>
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
X-List-Received-Date: Sat, 19 Feb 2011 00:30:58 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/18/2011 05:04 PM, Chris Tapp wrote:
> On 18 Feb 2011, at 09:42, Cui, Dexuan wrote:
>
>> Chris Tapp wrote:
>>> I've created a simple recipe based on an example from the Poky
>>> Reference manual (I've added a license to get it to build):
>> The code looks ok.
>>
>>> However, if I 'bitbake test' the code isn't compiled:
>>>
>>> NOTE: Running setscene task 178 of 276 (/home/chris/poky-dev/meta/
>>> recipes-keylevel/test/test_0.1.0.bb:do_populate_sysroot_setscene)
>>> NOTE: Running setscene task 179 of 276 (/home/chris/poky-dev/meta/
>>> recipes-keylevel/test/test_0.1.0.bb:do_package_setscene)
>>> NOTE: package test-0.1.0-r0: task do_populate_sysroot_setscene:
>>> Started NOTE: package test-0.1.0-r0: task do_package_setscene: Started
>>> NOTE: package test-0.1.0-r0: task do_populate_sysroot_setscene:
>>> Succeeded
>>> NOTE: Running setscene task 180 of 276 (/home/chris/poky-dev/meta/
>>> recipes-keylevel/test/test_0.1.0.bb:do_populate_lic_setscene)
>>> NOTE: package test-0.1.0-r0: task do_package_setscene: Succeeded
>>> NOTE: package test-0.1.0-r0: task do_populate_lic_setscene: Started
>>> NOTE: Running setscene task 181 of 276 (/home/chris/poky-dev/meta/
>>> recipes-keylevel/test/test_0.1.0.bb:do_package_write_ipk_setscene)
>>> NOTE: package test-0.1.0-r0: task do_populate_lic_setscene: Succeeded
>>> NOTE: package test-0.1.0-r0: task do_package_write_ipk_setscene:
>>> Started NOTE: package test-0.1.0-r0: task
>>> do_package_write_ipk_setscene: Succeeded
>>> NOTE: Executing RunQueue Tasks
>>> NOTE: Running noexec task 828 of 829 (ID: 9,
>>> /home/chris/poky-dev/meta/ recipes-keylevel/test/test_0.1.0.bb,
>>> do_package_write)
>>> NOTE: Running noexec task 829 of 829 (ID: 4,
>>> /home/chris/poky-dev/meta/ recipes-keylevel/test/test_0.1.0.bb,
>>> do_build)
>>>
>>>
>>> Why doesn't the code get built?
>> Is this the complete log?
>> I don't find any tasks(e.g., do_fetch, do_unpack, do_install...) that should be there. This is odd.
>
> Yes, that's the complete log ! I thought it was odd too.
>
>> Maybe you can try "bitbake -c cleanall test; bitbake test" to see if any change?
>
> That does work, but it seems as if 'make clean' quite often (though not always) doesn't do enough.

This is probably happening because of the shared state info which
is cached for successfully built packages.  bitbake clean does not
(possibly can not) remove that.

If you want to run clean on a recipe (and not change the recipe per se)
you'll need to clean the state info as well.  I normally do this by hand
like this (for your package named test):
   % bitbake test -c clean
   % rm sstate-cache/sstate-test*

Note: there is a bitbake action 'cleanall' which I think tries to clean
up everything it possibly can, including state info, but I've not had
perfect luck with it, hence my choice to do this manually.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

