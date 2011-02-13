Return-Path: <scott.a.garman@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 61B044C80053
	for <yocto@yoctoproject.org>; Sat, 12 Feb 2011 19:02:43 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 12 Feb 2011 17:02:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,463,1291622400"; d="scan'208";a="602117760"
Received: from unknown (HELO [10.255.14.125]) ([10.255.14.125])
	by orsmga002.jf.intel.com with ESMTP; 12 Feb 2011 17:02:41 -0800
Message-ID: <4D572DB0.7050805@intel.com>
Date: Sat, 12 Feb 2011 17:02:40 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <789F9655DD1B8F43B48D77C5D30659733294D0BE@shsmsx501.ccr.corp.intel.com>	<789F9655DD1B8F43B48D77C5D306597332C18774@shsmsx501.ccr.corp.intel.com>	<1865303E0DED764181A9D882DEF65FB68629835F3E@shsmsx502.ccr.corp.intel.com>	<4D56CCCD.6040106@windriver.com>	<C7D623A5-69C2-4318-8C2F-5792C66391BD@dominion.thruhere.net>	<4D56DCB5.2070205@mlbassoc.com>
	<4D570BE2.4020900@windriver.com>
In-Reply-To: <4D570BE2.4020900@windriver.com>
Subject: Re: Master build error caused a small typo by commit today : fetch2: unpack revision
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
X-List-Received-Date: Sun, 13 Feb 2011 01:02:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/12/2011 02:38 PM, Mark Hatle wrote:
> On 2/12/11 1:17 PM, Gary Thomas wrote:
>> On 02/12/2011 12:08 PM, Koen Kooi wrote:
>>>
>>> Op 12 feb 2011, om 19:09 heeft Mark Hatle het volgende geschreven:
>>>
>>>> On 2/12/11 3:30 AM, Cui, Dexuan wrote:
>>>>> Hi Mark,
>>>>> As Liping said, the following change breaks building xorg-minimal-fonts as destdir is not correct.
>>>>> Can you please explain the actual different between cp and tar here? I think "cp -p" is similar to "tar -x -p" here?
>>>>>
>>>>
>>>> We can revert the change.  But the reason for it is tar preserves hard links,
>>>> while cp does not.
>>>
>>> The problem is that people can hit things like this:
>>>
>>> | NOTE: Unpacking /OE/tentacle/sources/angstrom-layers/BSP/TI/recipes-bsp/linux/linux-omap-psp-2.6.32/beagleboard/defconfig to /OE/tentacle/build/tmp-angstrom_2010_x/work/beagleboard-angstrom-linux-gnueabi/linux-omap-psp-2.6.32-r99+gitr5fc29e7b2a76a64a739f857858ef0b98294aa155/
>>> | ERROR: Error executing a python function in /OE/tentacle/sources/angstrom-layers/BSP/TI/recipes-bsp/linux/linux-omap-psp_2.6.32.bb:
>>> | TypeError: %d format: a number is required, not str
>>> |
>>> | ERROR: The stack trace of python calls that resulted in this exception/failure was:
>>> | ERROR:   File "base_do_unpack", line 19, in<module>
>>> | ERROR:
>>> | ERROR:   File "base_do_unpack", line 14, in base_do_unpack
>>> | ERROR:
>>> | ERROR:   File "/OE/tentacle/sources/bitbake/lib/bb/fetch2/__init__.py", line 1015, in unpack
>>> | ERROR:     ud.method.unpack(ud, root, self.d)
>>> | ERROR:
>>> | ERROR:   File "/OE/tentacle/sources/bitbake/lib/bb/fetch2/__init__.py", line 724, in unpack
>>> | ERROR:     cmd = 'tar -cf - -C "%d" -ps . | tar -xf - -C "%s/%s/"' % (file, rootdir, destdir)
>>
>> Does not changing this "%d" to "%s" work?
>
> Yes, this is the correct fix.  Nobody has been around today to push the fix into
> the tree however.
>
> It was a simple typo.

I managed to catch Richard on IRC about an hour ago and he pushed a fix 
to master.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

