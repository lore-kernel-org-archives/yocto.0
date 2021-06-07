Received: from ciao.gmane.io (ciao.gmane.io [116.202.254.214])
 by mx.groups.io with SMTP id smtpd.web08.2403.1623094031565560628
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Jun 2021 12:27:12 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: m.gmane-mx.org, ip: 116.202.254.214, mailfrom: gley-yocto@m.gmane-mx.org)
Received: from list by ciao.gmane.io with local (Exim 4.92)
	(envelope-from <gley-yocto@m.gmane-mx.org>)
	id 1lqKtw-0009r4-Aj
	for yocto@lists.yoctoproject.org; Mon, 07 Jun 2021 21:27:08 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@lists.yoctoproject.org
From: "Gmane Admin" <gley-yocto@m.gmane-mx.org>
Subject: Re: bitbake controlling memory use
Date: Mon, 7 Jun 2021 21:27:00 +0200
Message-ID: <5a37c855-943a-7ae2-b481-e030ebb69de8@gmail.com>
References: <s4v495$bak$1@ciao.gmane.io>
 <CANNYZj_CsY0YL_bjtgf6O3A16FXe38-hLke4wEQR6mMz58SMVg@mail.gmail.com>
 <d8ab0231-717d-69e4-e6f9-739b9a08bd29@gmail.com>
 <CANNYZj_K-zpP-iTQMh5YA58dhBV88wLP-PouXS5KrHjybfsy-g@mail.gmail.com>
 <14207c27-7f5e-9a13-d8e8-28dbb0e7ea7b@gmail.com>
 <CANNYZj8MtLM5KdUqMsqhiVMHTnmj4VMoSf3XnCLvSns8grpmmA@mail.gmail.com>
 <0c8c0d85-c3e0-41d5-1a0b-2d121302439a@windriver.com>
 <2f23e846365f9736f925351e8d553c54a9d2782c.camel@linuxfoundation.org>
 <1685B30F5819A655.13459@lists.yoctoproject.org>
Mime-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
Cc: yocto-gJxINTE1zeQw8ufyyF7U+SST3g8Odh+X-XMD5yJDbdMReXY1tMh2IBg@public.gmane.org
In-Reply-To: <1685B30F5819A655.13459@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Op 05-06-2021 om 15:35 schreef Gmane Admin:
> Op 14-04-2021 om 06:59 schreef Richard Purdie:
>> On Tue, 2021-04-13 at 21:14 -0400, Randy MacLeod wrote:
>>> On 2021-04-11 12:19 p.m., Alexander Kanavin wrote:
>>>> make already has -l option for limiting new instances if load 
>>>> average is
>>>> too high, so it's only natural to add a RAM limiter too.
>>>>
>>>>     -l [N], --load-average[=N], --max-load[=N]
>>>>                                 Don't start multiple jobs unless 
>>>> load is
>>>> below N.
>>>>
>>>> In any case, patches welcome :)
>>>
>>> During today's Yocto technical call (1),
>>> we talked about approaches to limiting the system load and avoiding
>>> swap and/or OOM events. Here's what (little!) i recall from the
>>> discussion, 9 busy hours later.
>>>
>>> In the short run, instead of independently maintaining changes to
>>> configurations to limit parallelism or xz memory usage, etc, we
>>> could develop an optional common include file where such limits
>>> are shared across the community.
>>>
>>> In the longer run, changes to how bitbake schedules work may be needed.
>>>
>>> Richard says that there was a make/build server idea and maybe even a
>>> patch from a while ago. It may be in one of his poky-contrib branches.
>>> I took a few minutes to look but nothing popped up. A set of keywords to
>>> search for might help me find it.
>>
>> http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=rpurdie/wipqueue4&id=d66a327fb6189db5de8bc489859235dcba306237 

This patch resolves a starvation of a particular resource (execution 
cores), which is good.
However, the problem I am facing is starvation of another resource (memory).

>> Cheers,
>>
>> Richard
>>
>>
> I like the idea. Unfortunately the patch doesn't apply to Gatesgarth, so 
> I couldn't test it. Any chance you would be doing a refresh?

Ok so I refreshed this patch my self and it seems to be working nicely 
(3000 out of 4000 tasks complete), except for one thing: do_configure 
for cmake-native fails and I don't see why. From the log:

loading initial cache file 
xxxxxx/out/linux64/build/tmp/work/x86_64-linux/cmake-native/3.18.2-r0/build/Bootstrap.cmk/InitialCacheFlags.cmake
-- The C compiler identification is GNU 10.3.0
-- The CXX compiler identification is GNU 10.3.0
-- Detecting C compiler ABI info
CMake Error: Generator: execution of make failed. Make command was: 
xxxxxx/out/linux64/poky/scripts/make-intercept/make cmTC_68352/fast &&
-- Detecting C compiler ABI info - failed
-- Check for working C compiler: xxxxxx/out/linux64/build/tmp/hosttools/gcc
CMake Error: Generator: execution of make failed. Make command was: 
xxxxxx/out/linux64/poky/scripts/make-intercept/make cmTC_f23a0/fast &&
-- Check for working C compiler: 
xxxxxx/out/linux64/build/tmp/hosttools/gcc - broken
CMake Error at Modules/CMakeTestCCompiler.cmake:66 (message):
   The C compiler

     "xxxxxx/out/linux64/build/tmp/hosttools/gcc"

   is not able to compile a simple test program.

   It fails with the following output:

     Change Dir: 
xxxxxx/tmp/work/x86_64-linux/cmake-native/3.18.2-r0/build/CMakeFiles/CMakeTmp

     Run Build 
Command(s):xxxxxx/out/linux64/poky/scripts/make-intercept/make 
cmTC_f23a0/fast && Permission denied
     Generator: execution of make failed. Make command was: 
xxxxxx/out/linux64/poky/scripts/make-intercept/make cmTC_f23a0/fast &&

   CMake will not be able to correctly generate this project.
Call Stack (most recent call first):
   CMakeLists.txt:7 (project)

Crazy. I don't see why making a complete recipe works fine, while making 
a test program during configure fails. Ideas?

