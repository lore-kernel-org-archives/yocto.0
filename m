Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C0FAE006F5
	for <yocto@yoctoproject.org>; Fri,  1 Feb 2013 20:52:26 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r124q0Xo001495
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 1 Feb 2013 20:52:00 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.20.169) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.318.4; Fri, 1 Feb 2013 20:51:58 -0800
Message-ID: <510C9B6D.8090803@windriver.com>
Date: Fri, 1 Feb 2013 23:51:57 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Brian Lloyd <blloyd@familyhonor.net>
References: <5BEFD653CA8A8D47AA194ED30AB5968C35CD91@GV1HQPEX03.babgsetc.pvt>
	<1358269789.2479.6.camel@omclinuxballt.devnet.ordermatic.net>
	<5BEFD653CA8A8D47AA194ED30AB5968C35D715@GV1HQPEX03.babgsetc.pvt>
	<50F5992C.9070705@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C35D97A@GV1HQPEX03.babgsetc.pvt>
	<50F5A221.2070209@windriver.com> <50F6DF54.2020005@linux.intel.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C370295@GV1HQPEX03.babgsetc.pvt>
	<50FEF7EC.6030601@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C370A99@GV1HQPEX03.babgsetc.pvt>
	<50FF6A82.9090201@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C370F09@GV1HQPEX03.babgsetc.pvt>
	<50FF7254.2050903@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C370F97@GV1HQPEX03.babgsetc.pvt>
	<50FFEA46.5050303@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C3710B3@GV1HQPEX03.babgsetc.pvt>
	<510B49AC.405@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C37AE5C@GV1HQPEX03.babgsetc.pvt>
	<1359779719.31775.17.camel@omclinuxballt.devnet.ordermatic.net>
In-Reply-To: <1359779719.31775.17.camel@omclinuxballt.devnet.ordermatic.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build external module against Yocto kernel
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
X-List-Received-Date: Sat, 02 Feb 2013 04:52:26 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-02-01 11:35 PM, Brian Lloyd wrote:
> While, I'm not an expert, I would like to point out:
> http://kernel.org/doc/index-old.html (the new index references this but
> the information isn't on the new index page directly).
>
> One thing mentioned is that a make distclean is required for reasonable
> results between any run with different architectures. So you can't run a
> make scripts to get scripts for the local system in a build directory
> configured for cross compiling for the device and expect it to work
> correctly.
>
> Also, about the config prompts: during dependency checking, the .config
> file is validated, and if it fails validation, make oldconfig is run, as
> it assumes the config was pulled from a previous kernel version. Since a
> .config file is ARCH specific, it will almost always be invalid when
> checked against a different architecture, and thus fire off a make
> oldconfig. This is why you get prompted to answer questions when you do
> "make scripts" and have a .config for another architecture.
>
> Also, I suspect you need to ensure the cross compiler is being called
> when necessary for the make scripts. It looks like the errors are from
> passing arm gcc parameters to an x86 gcc. You can try "make ARCH=arm
> CROSS_COMPILE=/???/" instead, where /???/ is the prefix to your arm
> cross compiler. The kernel build actually uses both cross and non-cross
> compilers during build so you have some support tools compiled to run
> natively and others that run on the end machine, so you don't want to
> override CXX and C++ to be the cross compiler.

We crossed while my email client was offline and I was typing up
a response. All of the above is definitely true, and what I had in
my rambling reply as well.

When building with the SDK, to avoid oldconfig AND get the build
infrastructure both CROSS_COMPILE and ARCH are required, just as bitbake
was providing during the original build.

The trick is to still generate modules that will work against the running
kernel .. but that's another story :)

Cheers,

Bruce

>
>
> Brian
>
> On Sat, 2013-02-02 at 00:48 +0000, Patrick Turley wrote:
>> On Jan 31, 2013, at 10:50 PM, Bruce Ashfield<bruce.ashfield@windriver.com  <mailto:bruce.ashfield@windriver.com>>  wrote:
>>
>> >  On 13-01-23 10:17 AM, Patrick Turley wrote:
>> >>
>> >>  On Jan 23, 2013, at 7:48 AM, Bruce Ashfield<bruce.ashfield@windriver.com  <mailto:bruce.ashfield@windriver.com>>
>> >>   wrote:
>> >>>  On 13-01-23 12:34 AM, Patrick Turley wrote:
>> >>>>
>> >>>>  On Jan 22, 2013, at 11:17 PM, Bruce Ashfield<bruce.ashfield@windriver.com  <mailto:bruce.ashfield@windriver.com>>   wrote:
>> >>>>
>> >>>>>  On 13-01-23 12:14 AM, Patrick Turley wrote:
>> >>>>>>  On Jan 22, 2013, at 10:43 PM, Bruce Ashfield<bruce.ashfield@windriver.com  <mailto:bruce.ashfield@windriver.com>>    wrote:
>> >>>>>>>  On 13-01-22 9:26 PM, Patrick Turley wrote:
>> >>>
>> >>>  Argh. I'll have to just run the commands myself and stop spamming the
>> >>>  list with ideas :) It's just a matter of making lkc accept the defaults
>> >>>  (i.e. you could also use allyesconfig, or allnoconfig) or even better
>> >>>  not trigger that config check at all.
>> >>
>> >>  You're very kind to have spent so much time on my problem already. I look forward to hearing back.
>> >
>> >  I'm not sure if you are still interested in this topic, but I took
>> >  a few minutes to look into this more today .. just to understand
>> >  exactly what is happening.
>> >
>> >  It is what was discussed on the thread already, when you invoke
>> >  make scripts, there is an explicit dependency on auto.conf and
>> >  that is what triggers the make oldconfig if the .config is newer
>> >  than it is. Technically we are safe from this, assuming that the
>> >  .config and captured auto.conf match, and that auto.conf is in the
>> >  SDK.
>> >
>> >  The other way that oldconfig is triggered in my experience (and
>> >  testing today) is what we mentioned before. If your .config was
>> >  generated with ARCH=<foo>  (even ARCH=i386 the default) and you then
>> >  execute 'make scripts', you'll trigger the oldconfig.
>> >
>> >  So to avoid it, you should execute your make scripts with ARCH=<your arch>
>> >  on the command line.
>> >
>> >  As for saving ARCH in the .config, it has been considered in the past,
>> >  but never implemented. Other elements such as CROSS_COMPILE are now
>> >  saved, but not ARCH= since it isn't directly used in the .config, it's
>> >  a Makefile construct.
>>
>> I absolutely *am* still interested in this issue, and thank you for taking another look.
>>
>> There are two commands that I'm interested in executing:
>>
>>      -- make oldconfig
>>
>>      -- make scripts
>>
>> (Since I install the SDK under /opt, I use sudo when running these commands, but I don't *think* that's important.)
>>
>>
>> Here's what happens with the first command:
>>
>> $ sudo make oldconfig ARCH=arm
>>    HOSTCC  scripts/basic/fixdep
>>    HOSTCC  scripts/basic/docproc
>>    HOSTCC  scripts/kconfig/conf.o
>>    HOSTCC  scripts/kconfig/kxgettext.o
>>    SHIPPED scripts/kconfig/zconf.tab.c
>>    SHIPPED scripts/kconfig/lex.zconf.c
>>    SHIPPED scripts/kconfig/zconf.hash.c
>>    HOSTCC  scripts/kconfig/zconf.tab.o
>>    HOSTLD  scripts/kconfig/conf
>> scripts/kconfig/conf --oldconfig Kconfig
>> #
>> # configuration written to .config
>> #
>>
>> As you say, adding"ARCH=arm"  puts the build at ease and it completes just fine.
>>
>>
>> Here's what happens with the second command:
>>
>> $ sudo make scripts ARCH=arm
>> scripts/kconfig/conf --silentoldconfig Kconfig
>>    HOSTCC  scripts/genksyms/genksyms.o
>>    SHIPPED scripts/genksyms/lex.c
>>    SHIPPED scripts/genksyms/parse.h
>>    SHIPPED scripts/genksyms/keywords.c
>>    HOSTCC  scripts/genksyms/lex.o
>>    SHIPPED scripts/genksyms/parse.c
>>    HOSTCC  scripts/genksyms/parse.o
>>    HOSTLD  scripts/genksyms/genksyms
>>    CC      scripts/mod/empty.o
>> cc1: error: unrecognized command line option"-mlittle-endian"
>> cc1: error: unrecognized command line option"-mapcs"
>> cc1: error: unrecognized command line option"-mno-sched-prolog"
>> cc1: error: unrecognized command line option"-mabi=aapcs-linux"
>> cc1: error: unrecognized command line option"-mno-thumb-interwork"
>> scripts/mod/empty.c:1: error: bad value (armv5t) for -march= switch
>> scripts/mod/empty.c:1: error: bad value (armv5t) for -mtune= switch
>> make[2]: *** [scripts/mod/empty.o] Error 1
>> make[1]: *** [scripts/mod] Error 2
>> make: *** [scripts] Error 2
>>
>> Recall that, when I do *not* give the"ARCH=arm"  argument, I get reams of config questions, but the build works.
>>
>> This is an improvement in that the config questions are gone but, of course, the build fails.
>>
>> Perhaps it *should* fail. Perhaps I'm doing something that actually doesn't make sense. Or perhaps I'm doing something that Yocto just isn't ready to support. At this point, I should say:
>>
>> 1) I have a workaround for all this, so I am *not* dead in the water.
>>
>> 2) I am a kernel building n00b and it legitimately may not be worth your time (or anyone else's) to continue to look at this until I"catch up."  I don't want anyone throwing up their hands in frustration and saying"Doesn't this guy know anything?"  It's perfectly reasonable to cut me off at this point :)
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org  <mailto:yocto@yoctoproject.org>
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


