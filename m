Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F2FEE0072F
	for <yocto@yoctoproject.org>; Fri,  1 Feb 2013 21:16:35 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r125GUc6001687
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 1 Feb 2013 21:16:30 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.20.169) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.318.4; Fri, 1 Feb 2013 21:16:29 -0800
Message-ID: <510CA12C.7000909@windriver.com>
Date: Sat, 2 Feb 2013 00:16:28 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Brian Lloyd <blloyd@familyhonor.net>
References: <5BEFD653CA8A8D47AA194ED30AB5968C35CD91@GV1HQPEX03.babgsetc.pvt>
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
	<510C9A99.1000500@windriver.com>
	<1359781933.31775.24.camel@omclinuxballt.devnet.ordermatic.net>
In-Reply-To: <1359781933.31775.24.camel@omclinuxballt.devnet.ordermatic.net>
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
X-List-Received-Date: Sat, 02 Feb 2013 05:16:35 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-02-02 12:12 AM, Brian Lloyd wrote:
> I would like to point out the reason CROSS_COMPILE is used is because
> kernel makes things that run natively and also things that are for the
> end environment. Thus $(CROSS_COMPILE)$(CXX) is used to prepend when
> building something for the end system, and $(CXX) is used for local run
> items. So even with CROSS_COMPILE defined, not everything uses the
> CROSS_COMPILE. Let's hope the kernel maintainers got the use and not use
> right for us, because I sure don't want to be second guessing on this mess.

Absolutely .. the kernel always gets this right, native utilities never
use the prefix. In fact, in 12 years I've only run into one mix up
between target and native .o's in a kernel build.

Cheers,

Bruce

>
> I do know make scripts does create items intended to run in the final
> environment.
>
> Since I build for i386 on an x64 these days, I don't usually have
> problems where I can't run the cross compiled tools, so my personal
> recent experience is limited as well as bad parameters issues from using
> the wrong compiler (as my compiler can generally make for both).
>
> Brian
>
> On Fri, 2013-02-01 at 23:48 -0500, Bruce Ashfield wrote:
>> On 13-02-01 7:48 PM, Patrick Turley wrote:
>> >
>> >  On Jan 31, 2013, at 10:50 PM, Bruce Ashfield<bruce.ashfield@windriver.com  <mailto:bruce.ashfield@windriver.com>>   wrote:
>> >
>> >>  On 13-01-23 10:17 AM, Patrick Turley wrote:
>> >>>
>> >>>  On Jan 23, 2013, at 7:48 AM, Bruce Ashfield<bruce.ashfield@windriver.com  <mailto:bruce.ashfield@windriver.com>>
>> >>>    wrote:
>> >>>>  On 13-01-23 12:34 AM, Patrick Turley wrote:
>> >>>>>
>> >>>>>  On Jan 22, 2013, at 11:17 PM, Bruce Ashfield<bruce.ashfield@windriver.com  <mailto:bruce.ashfield@windriver.com>>    wrote:
>> >>>>>
>> >>>>>>  On 13-01-23 12:14 AM, Patrick Turley wrote:
>> >>>>>>>  On Jan 22, 2013, at 10:43 PM, Bruce Ashfield<bruce.ashfield@windriver.com  <mailto:bruce.ashfield@windriver.com>>     wrote:
>> >>>>>>>>  On 13-01-22 9:26 PM, Patrick Turley wrote:
>> >>>>
>> >>>>  Argh. I'll have to just run the commands myself and stop spamming the
>> >>>>  list with ideas :) It's just a matter of making lkc accept the defaults
>> >>>>  (i.e. you could also use allyesconfig, or allnoconfig) or even better
>> >>>>  not trigger that config check at all.
>> >>>
>> >>>  You're very kind to have spent so much time on my problem already. I look forward to hearing back.
>> >>
>> >>  I'm not sure if you are still interested in this topic, but I took
>> >>  a few minutes to look into this more today .. just to understand
>> >>  exactly what is happening.
>> >>
>> >>  It is what was discussed on the thread already, when you invoke
>> >>  make scripts, there is an explicit dependency on auto.conf and
>> >>  that is what triggers the make oldconfig if the .config is newer
>> >>  than it is. Technically we are safe from this, assuming that the
>> >>  .config and captured auto.conf match, and that auto.conf is in the
>> >>  SDK.
>> >>
>> >>  The other way that oldconfig is triggered in my experience (and
>> >>  testing today) is what we mentioned before. If your .config was
>> >>  generated with ARCH=<foo>   (even ARCH=i386 the default) and you then
>> >>  execute 'make scripts', you'll trigger the oldconfig.
>> >>
>> >>  So to avoid it, you should execute your make scripts with ARCH=<your arch>
>> >>  on the command line.
>> >>
>> >>  As for saving ARCH in the .config, it has been considered in the past,
>> >>  but never implemented. Other elements such as CROSS_COMPILE are now
>> >>  saved, but not ARCH= since it isn't directly used in the .config, it's
>> >>  a Makefile construct.
>> >
>> >  I absolutely *am* still interested in this issue, and thank you for taking another look.
>> >
>> >  There are two commands that I'm interested in executing:
>> >
>> >       -- make oldconfig
>> >
>> >       -- make scripts
>> >
>> >  (Since I install the SDK under /opt, I use sudo when running these commands, but I don't *think* that's important.)
>> >
>> >
>> >  Here's what happens with the first command:
>> >
>> >  $ sudo make oldconfig ARCH=arm
>> >     HOSTCC  scripts/basic/fixdep
>> >     HOSTCC  scripts/basic/docproc
>> >     HOSTCC  scripts/kconfig/conf.o
>> >     HOSTCC  scripts/kconfig/kxgettext.o
>> >     SHIPPED scripts/kconfig/zconf.tab.c
>> >     SHIPPED scripts/kconfig/lex.zconf.c
>> >     SHIPPED scripts/kconfig/zconf.hash.c
>> >     HOSTCC  scripts/kconfig/zconf.tab.o
>> >     HOSTLD  scripts/kconfig/conf
>> >  scripts/kconfig/conf --oldconfig Kconfig
>> >  #
>> >  # configuration written to .config
>> >  #
>> >
>> >  As you say, adding"ARCH=arm"  puts the build at ease and it completes just fine.
>> >
>> >
>> >  Here's what happens with the second command:
>> >
>> >  $ sudo make scripts ARCH=arm
>> >  scripts/kconfig/conf --silentoldconfig Kconfig
>> >     HOSTCC  scripts/genksyms/genksyms.o
>> >     SHIPPED scripts/genksyms/lex.c
>> >     SHIPPED scripts/genksyms/parse.h
>> >     SHIPPED scripts/genksyms/keywords.c
>> >     HOSTCC  scripts/genksyms/lex.o
>> >     SHIPPED scripts/genksyms/parse.c
>> >     HOSTCC  scripts/genksyms/parse.o
>> >     HOSTLD  scripts/genksyms/genksyms
>> >     CC      scripts/mod/empty.o
>> >  cc1: error: unrecognized command line option"-mlittle-endian"
>> >  cc1: error: unrecognized command line option"-mapcs"
>> >  cc1: error: unrecognized command line option"-mno-sched-prolog"
>> >  cc1: error: unrecognized command line option"-mabi=aapcs-linux"
>> >  cc1: error: unrecognized command line option"-mno-thumb-interwork"
>> >  scripts/mod/empty.c:1: error: bad value (armv5t) for -march= switch
>> >  scripts/mod/empty.c:1: error: bad value (armv5t) for -mtune= switch
>> >  make[2]: *** [scripts/mod/empty.o] Error 1
>> >  make[1]: *** [scripts/mod] Error 2
>> >  make: *** [scripts] Error 2
>> >
>> >  Recall that, when I do *not* give the"ARCH=arm"  argument, I get reams of config questions, but the build works.
>> >
>>
>> The thing is that the timestamps of the .config and the kernel's auto.conf
>> should match and not trigger any more oldconfig executions.
>>
>> I trust that if you still try"make scripts"  without the ARCH,
>> even after the oldconfig step #1, you are still seeing the
>> questions. Thinking about it .. that does make sense that you'd
>> be seeing the oldconfig questions .. since the ARCH did change.
>>
>> .. and just so I'm clear, you are building a ARM machine on a
>> x86 host and creating a SDK for that same x86 host, correct ?
>>
>> The kernel's scripts target are really just a set of helpers for
>> building the kernel, and in this case, you aren't actually building
>> on a ARM machine, but on your x86 host. But the ARCH= is triggering
>> the ARM toolchain settings to be passed to your host compiler, since
>> CROSS_COMPILE= wasn't passed to the build.
>>
>> So there's a couple of things more to consider:
>>
>> 1) go back to phase #1 and back to the idea of generating a
>> allnoconfig/allyesconfig
>> SDK configuration, that would save you from the oldconfig questions,
>> but if any of the kernel modules or whatever you are building *use*
>> the config values, you aren't going to be building them against the
>> running kernel and it's settings .. which is a recipe for problems.
>>
>> 2) Pass CROSS_COMPILE to the scripts phase and see how it works, the
>> cross toolchain is in the SDK after all, so it is available. The
>> scripts should be fine, but of course any executables that are build
>> won't run on the host.
>>
>> And even once you are up and building with kernel modules, you have
>> to take care to keep your SDK in sync with the running kernel.
>>
>> Moving the SDK to the target would of course get around the ARM compiler
>> options and executables, but you'd have to have a ARM native compiler
>> in the SDK and not a cross compiler. I don't know if this is done, or
>> possible at the moment.
>>
>> >  This is an improvement in that the config questions are gone but, of course, the build fails.
>> >
>> >  Perhaps it *should* fail. Perhaps I'm doing something that actually doesn't make sense. Or perhaps I'm doing something that Yocto just isn't ready to support. At this point, I should say:
>> >
>> >  1) I have a workaround for all this, so I am *not* dead in the water.
>> >
>> >  2) I am a kernel building n00b and it legitimately may not be worth your time (or anyone else's) to continue to look at this until I"catch up."  I don't want anyone throwing up their hands in frustration and saying"Doesn't this guy know anything?"  It's perfectly reasonable to cut me off at this point :)
>>
>> I'm interested still, because it shows what I've warned about a few
>> times in the past, and appears to still hold true .. that adding the
>> ability to build kernel modules against a SDK itself, is still
>> difficult, both in the kernel tooling and in keeping the SDK and
>> running kernel in sync.
>>
>> Working through the issues will let us know what is missing, and how
>> much effort is left to complete the work.
>>
>> The thing is that the SDK is constructed with the native-sdk packages
>> (I've added Jessica, since I'm not 100% sure on this point), which
>> means the SDK packages are for a particular host architecture (the
>> native part) to  generate binaries for another. We just need to make the
>> kernel build infrastructure work like this in the SDK (we know it is
>> possible, since that's how the entire kernel build runs during a
>> normal build).
>>
>> Cheers,
>>
>> Bruce
>>
>> >
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org  <mailto:yocto@yoctoproject.org>
>> https://lists.yoctoproject.org/listinfo/yocto
>


