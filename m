Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 422E6E00799; Sat, 13 Sep 2014 04:48:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B913E006DB
	for <yocto@yoctoproject.org>; Sat, 13 Sep 2014 04:48:10 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 089FEF811DD; Sat, 13 Sep 2014 05:48:06 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id E2C35F811DB;
	Sat, 13 Sep 2014 05:48:04 -0600 (MDT)
Message-ID: <54142F22.6070101@mlbassoc.com>
Date: Sat, 13 Sep 2014 05:48:50 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <54134C92.3080208@gmail.com>	<CAJTo0LZi1rLbkDYbYTYSFz6h9i_SXA8BP2Vxpv7vkgQbSgUT3A@mail.gmail.com>
	<5413C4E3.4060102@gmail.com>
In-Reply-To: <5413C4E3.4060102@gmail.com>
Subject: Re: Basic build fails
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
X-List-Received-Date: Sat, 13 Sep 2014 11:48:21 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-09-12 22:15, Arun Kumar wrote:
> Thanks for the reply ross, but the build noise is too much form me to put it in here. I will post the last few lines of which i can make some sense, but the rest is somewhat incomprehensible.
>
> /-------------------------------------------------------------------------------
> | make[1]: *** [s-attrtab] Killed

This is very suspicious - looks like your build may have been killed by running
out of memory...

> | make[1]: *** Waiting for unfinished jobs....
> | make[1]: Leaving directory `/home/arun/Documents/Dev/yocto/tmp/work/x86_64-poky-linux/gcc-cross-i586/4.9.1-r0/gcc-4.9.1/build.x86_64-linux.i586-poky-linux/gcc'
> | make: *** [all-gcc] Error 2
> | ERROR: oe_runmake failed
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_compile (log file is located at /home/arun/Documents/Dev/yocto/build/../tmp/work/x86_64-poky-linux/gcc-cross-i586/4.9.1-r0/temp/log.do_compile.29857)
> ERROR: Task 595 (/home/arun/Documents/Dev/yocto/poky/meta/recipes-devtools/gcc/gcc-cross_4.9.bb, do_compile) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 2729 tasks of which 2728 didn't need to be rerun and 1 failed.
> No currently running tasks (307 of 5634)
>
> Summary: 1 task failed:
>    /home/arun/Documents/Dev/yocto/poky/meta/recipes-devtools/gcc/gcc-cross_4.9.bb, do_compile
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> /-------------------------------------------------------------------------------------------------------
>
> here is the pastebin link to the whole error http://pastebin.com/Y1JsA8dt
> hope this helps

How much memory (RAM+SWAP) does your host build machine have?

> On Saturday 13 September 2014 01:37 AM, Burton, Ross wrote:
>> On 12 September 2014 20:42, Arun Kumar <arunkr.linux@gmail.com> wrote:
>>> Hi all,
>>>
>>>      I am new to the yocto project and was following the steps given in the quick start guide. I made a slight change as given in the superuser section.
>>>
>>> I used the "fetchall" option to get all the packages first and then started the build, now when i use this command
>>>
>>> "bitbake -k core-image-sato" i get the following error
>>>
>>> /------------------------------------------------------------------------------------
>>> ERROR: Task 595 (/home/arun/Documents/Dev/yocto/poky/meta/recipes-devtools/gcc/gcc-cross_4.9.bb, do_compile) failed with exit code '1'
>>> NOTE: Tasks Summary: Attempted 2729 tasks of which 1784 didn't need to be rerun and 1 failed.
>>> No currently running tasks (2729 of 5634)
>>>
>>> Summary: 1 task failed:
>>>    /home/arun/Documents/Dev/yocto/poky/meta/recipes-devtools/gcc/gcc-cross_4.9.bb, do_compile
>>> Summary: There was 1 WARNING message shown.
>>> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>>> /------------------------------------------------------------------------------------
>>>
>>> any idea or hint where i might be going wrong?
>> You've trimmed the output at just the place where it was telling you
>> what went wrong.  Re-run bitbake gcc-cross, and paste the output of
>> that.
>>
>> Ross
>>
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

