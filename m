Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4507F4C80B70
	for <yocto@yoctoproject.org>; Wed, 24 Nov 2010 00:47:54 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id AD2B01660890; Tue, 23 Nov 2010 23:47:53 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id CB172166088A;
	Tue, 23 Nov 2010 23:47:51 -0700 (MST)
Message-ID: <4CECB517.5030603@mlbassoc.com>
Date: Tue, 23 Nov 2010 23:47:51 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.12) Gecko/20101027 Fedora/3.1.6-1.fc13 Thunderbird/3.1.6
MIME-Version: 1.0
To: "Zhang, Jessica" <jessica.zhang@intel.com>
References: <4CEA3442.6080909@mlbassoc.com>	<4CEA53B8.9060804@mlbassoc.com>	<C10D3FB0CD45994C8A51FEC1227CE22F1ACE892ED1@shsmsx502.ccr.corp.intel.com>	<4CEA7405.8070700@mlbassoc.com>	<C10D3FB0CD45994C8A51FEC1227CE22F1ACE892EE5@shsmsx502.ccr.corp.intel.com>	<4CEA8B25.3060103@mlbassoc.com>
	<4CEA8D05.8010608@mlbassoc.com>	<9AFCD584B0B67B48AE8D8585BE30BA95133F@orsmsx504.amr.corp.intel.com>	<4CEB7C74.4000502@mlbassoc.com>
	<9AFCD584B0B67B48AE8D8585BE30BA95A7BF4B@orsmsx504.amr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA95A7BF4E@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA95A7BF4E@orsmsx504.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Eclipse plugin
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
X-List-Received-Date: Wed, 24 Nov 2010 06:47:54 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/23/2010 02:44 PM, Zhang, Jessica wrote:
> Sorry forgot the attachements.
>
>
> Zhang, Jessica wrote:
>> Gary,
>>
>> I setup my eclipse IDE to be using 0.9 plug-in and couldn't reproduce
>> the problem that you run into.  Here're several key step screenshots
>> that I used to create a Yocto Autotools based project and run
>> autoconfig for it.
>> Step 1: Please refere preference.png for your "Yocto SDK" settings
>> under Window->Preference
>> Step 2: In c project, please make sure you select "Yocto SDK
>> Project->Hello World ANSI C Autotools Project" (please refer to
>> project.png)
>> Step 3: reconfigure.png is the output when I do Project->"Reconfigure
>> Project".
>>
>> If you still run into problem, go under Project->Invoke Yocto
>> Tools->Reconfigure Yocto, make sure the setting there is the same as
>> your settings under preference.  Then do step 3 again to reconfigure.
>>
>> Hope this will get you going...

Thanks, this did help.  My biggest problem was that the Poky tree I was
trying to use had grown a permission problem so I could no longer execute
the compiler (result of moving the tree between machines - pure cockpit
error, sorry).  Once I restarted a new Eclipse project with a proper tree
(again I forgot the meta-ide-support package - is this documented?), things
have started coming together.

Next step - try to debug this project on my remote board.

Thanks again

>> Gary Thomas wrote:
>>> On 11/22/10 11:43, Zhang, Jessica wrote:
>>>> Hi Gary,
>>>>
>>>> I just setup my machine for ppc and create a new auto tools based c
>>>> project and everything seems working fine for me, so if you go
>>>> "Window->Preferecencs->Yocto SDK" in that setup window, do you see
>>>> "Sysroot" field? If yo, somehow you're using the 1.0 plugin, but
>>>> that's fine, just put
>>>> "/home/gary/mytarget_poky/tmp/sysroots/ppc603e-poky-linux" there.
>>>> And try to reconfigure your project which should trigger autoconfig
>>>> and the compiler should be able to use the correct sysroot setup...
>>>>
>>>> Let me know whether that help or not.
>>>
>>> I don't have a Sysroot field on that form, only a "Poky root" which
>>> is pointing to the top of my tree, in your example
>>> "/home/gary/mytarget_poky/"
>>>
>>> I installed the Yocto SDK 1.0.0.201010202121 from
>>> http://www.yoctoproject.org/downloads/eclipse-plugin/
>>>
>>>> Gary Thomas wrote:
>>>>> On 11/22/2010 08:24 AM, Gary Thomas wrote:
>>>>>> On 11/22/2010 06:55 AM, Lu, Lianhao wrote:
>>>>>>>
>>>>>>> Gary Thomas wrote on 2010-11-22:
>>>>>>>> Thanks, I installed Helios directly from the Eclipse site and
>>>>>>>> that's working better now. I also installed the components you
>>>>>>>> mention above.
>>>>>>>>
>>>>>>>> When I try to configure Yocto, I'm trying to use the Poky tree
>>>>>>>> method but it doesn't like my tree :-( I pointed it to my build
>>>>>>>> directory (the one which contains tmp/, sstate-cache/ and conf/)
>>>>>>>>
>>>>>>>> What else am I missing?
>>>>>>>>
>>>>>>>
>>>>>>> You need to "bitbake meta-ide-support" before you can use the
>>>>>>> poky tree mode.
>>>>>>
>>>>>> I did that and now I can move a bit farther. I managed to select
>>>>>> my SDK type (ppc603e-poky-linux) and started with the autotools
>>>>>> example. However, I get this error when trying to run autogen.sh:
>>>>>>
>>>>>>
>>>>>> Generating Makefile in build directory:
>>>>>> /home/gthomas/workspace/yocto_test3
>>>>>>
>>>>>> sh /home/gthomas/workspace/yocto_test3/configure
>>>>>> --host=powerpc-poky-linux --build=i686-linux
>>>>>> --target=powerpc-poky-linux checking for a BSD-compatible
>>>>>> install... /usr/bin/install -c checking whether build environment
>>>>>> is sane... yes checking for powerpc-poky-linux-strip... no
>>>>>> checking for strip... strip
>>>>>> configure: WARNING: using cross tools not prefixed with host
>>>>>> triplet checking for a thread-safe mkdir -p... /bin/mkdir -p
>>>>>> checking for gawk... gawk checking whether make sets $(MAKE)...
>>>>>> yes
>>>>>> checking build system type... i686-pc-linux-gnu
>>>>>> checking host system type... powerpc-poky-linux-gnu
>>>>>> checking for style of include used by make... GNU
>>>>>> checking for powerpc-poky-linux-gcc... powerpc-poky-linux-gcc
>>>>>> checking whether the C compiler works... no
>>>>>> configure: error: in `/home/gthomas/workspace/yocto_test3':
>>>>>> configure: error: C compiler cannot create executables
>>>>>> See `config.log' for more details.
>>>>>>
>>>>>> Configuration failed with error
>>>>>>
>>>>>> It looks like there is a confusion over the SDK type and the
>>>>>> compiler setup?
>>>>>>
>>>>>
>>>>> BTW, this was on my console (hidden by the eclipse window), in
>>>>> case it helps:
>>>>>
>>>>> get env key CC value powerpc-poky-linux-gcc
>>>>> get env key CXX value powerpc-poky-linux-g++
>>>>> get env key GDB value powerpc-poky-linux-gdb
>>>>> get env key TARGET_PREFIX value powerpc-poky-linux-
>>>>> get env key CONFIGURE_FLAGS value --target=powerpc-poky-linux
>>>>> --host=powerpc-poky-linux --build=i686-linux get env key CFLAGS
>>>>> value
>>>>> -mcpu=603e -mhard-float
>>>>> get env key CXXFLAGS value -mcpu=603e -mhard-float
>>>>> get env key POKY_NATIVE_SYSROOT value
>>>>> /home/gary/mytarget_poky/tmp/sysroots/i686-linux
>>>>> get env key POKY_TARGET_SYSROOT value
>>>>> /home/gary/mytarget_poky/tmp/sysroots/ppc603e-poky-linux

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

