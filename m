Return-Path: <john.toomey@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1320E0074A
	for <yocto@yoctoproject.org>; Tue, 28 Feb 2012 05:40:11 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 28 Feb 2012 05:39:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; 
	d="scan'208,217";a="115657670"
Received: from jtoomey-mobl9.ger.corp.intel.com (HELO [163.33.230.66])
	([163.33.230.66])
	by orsmga002.jf.intel.com with ESMTP; 28 Feb 2012 05:38:53 -0800
Message-ID: <4F4CD8EC.3080308@linux.intel.com>
Date: Tue, 28 Feb 2012 13:38:52 +0000
From: John Toomey <john.toomey@linux.intel.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:10.0.1) Gecko/20120208 Thunderbird/10.0.1
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <4F4BB0B9.1030809@linux.intel.com>
	<CAMKF1sqp-4PkEXTdbNRxEXxFhtPAi9LAn4ibhyHhjqBk6WESAQ@mail.gmail.com>
In-Reply-To: <CAMKF1sqp-4PkEXTdbNRxEXxFhtPAi9LAn4ibhyHhjqBk6WESAQ@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: uclibc elfutils
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
X-List-Received-Date: Tue, 28 Feb 2012 13:40:11 -0000
Content-Type: multipart/alternative;
	boundary="------------070100080801040205070607"

--------------070100080801040205070607
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 27/02/2012 17:07, Khem Raj wrote:
> On Mon, Feb 27, 2012 at 8:35 AM, John Toomey
> <john.toomey@linux.intel.com>  wrote:
>> Hello all,
>>
>> I'm having some difficulty building elfutils (required by gdb) and I think
>> its relating to the fact that im using uclibc.
> Yes elfutils has some glibc kinship unfortunately which is hard to untangle.
> However gdb does not need elfutils in fact. please cherry-pick
> following commit from oe-core master
>
> commit 8330205eeb605354c139605618255940e3b312d4
> Author: Khem Raj<raj.khem@gmail.com>
> Date:   Fri Jan 20 17:07:42 2012 -0800
>
>      gdb-common: Drop elfutils from DEPENDS
>
>      Signed-off-by: Khem Raj<raj.khem@gmail.com>
>
>
>> NOTE: package elfutils-0.148-r5: task do_compile: Started
>> ERROR: Function failed: do_compile (see
>> /tmp/work/i586-poky-linux-uclibc/elfutils-0.148-r5/temp/log.do_compile.14653
>> for further information)
>> ERROR: Logfile of failure stored in:
>> /tmp/work/i586-poky-linux-uclibc/elfutils-0.148-r5/temp/log.do_compile.14653
>> Log data follows:
>> | DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common',
>> 'common-linux', 'common-uclibc', 'i586-linux-uclibc', 'common']
>> | NOTE: make -j 24 -C libelf
>> | make: Entering directory
>> `/tmp/work/i586-poky-linux-uclibc/elfutils-0.148-r5/elfutils-0.148/libelf'
>> ...
>> | elf_error.c:56:21: fatal error: libintl.h: No such file or directory
>> | compilation terminated.
>> | make: *** [elf_error.o] Error 1
>> | make: *** Waiting for unfinished jobs....
>> | make: Leaving directory
>> `/tmp/work/i586-poky-linux-uclibc/elfutils-0.148-r5/elfutils-0.148/libelf'
>> | ERROR: oe_runmake failed
>> NOTE: package elfutils-0.148-r5: task do_compile: Failed
>> ERROR: Task 218
>> ([path]/poky/meta/recipes-devtools/elfutils/elfutils_0.148.bb, do_compile)
>> failed with exit code '1'
>>
>> The build works if I switch to eglibc. Can anyone help me figure out what
>> might cause this?
>>
>> Regards
>> John
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
Hi Raj

Thank you for your reply - this seems to have resolved my issue.

Can you let me know if there is a correct way to build gdbserver into my 
target? I have tried a few things and none of them seem to work. THIS 
<http://www.yoctoproject.org/docs/1.1/poky-ref-manual/poky-ref-manual.html#platdev-gdb-remotedebug-launch-gdbserver>page 
suggests that there should be a gdbserver package but it doesn seem to 
exist when I try to include it. Including 'gdb' on its own doesnt seem 
to put gdbserver on the target. Also - i have tried EXTRA_IMAGE_FEATURES 
= "tools-debug" in local.conf but that breaks everything as it depends 
on X11 which I am not using.

Regards,
John


--------------070100080801040205070607
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    On 27/02/2012 17:07, Khem Raj wrote:
    <blockquote
cite="mid:CAMKF1sqp-4PkEXTdbNRxEXxFhtPAi9LAn4ibhyHhjqBk6WESAQ@mail.gmail.com"
      type="cite">
      <pre wrap="">On Mon, Feb 27, 2012 at 8:35 AM, John Toomey
<a class="moz-txt-link-rfc2396E" href="mailto:john.toomey@linux.intel.com">&lt;john.toomey@linux.intel.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">Hello all,

I'm having some difficulty building elfutils (required by gdb) and I think
its relating to the fact that im using uclibc.
</pre>
      </blockquote>
      <pre wrap="">
Yes elfutils has some glibc kinship unfortunately which is hard to untangle.
However gdb does not need elfutils in fact. please cherry-pick
following commit from oe-core master

commit 8330205eeb605354c139605618255940e3b312d4
Author: Khem Raj <a class="moz-txt-link-rfc2396E" href="mailto:raj.khem@gmail.com">&lt;raj.khem@gmail.com&gt;</a>
Date:   Fri Jan 20 17:07:42 2012 -0800

    gdb-common: Drop elfutils from DEPENDS

    Signed-off-by: Khem Raj <a class="moz-txt-link-rfc2396E" href="mailto:raj.khem@gmail.com">&lt;raj.khem@gmail.com&gt;</a>


</pre>
      <blockquote type="cite">
        <pre wrap="">
NOTE: package elfutils-0.148-r5: task do_compile: Started
ERROR: Function failed: do_compile (see
/tmp/work/i586-poky-linux-uclibc/elfutils-0.148-r5/temp/log.do_compile.14653
for further information)
ERROR: Logfile of failure stored in:
/tmp/work/i586-poky-linux-uclibc/elfutils-0.148-r5/temp/log.do_compile.14653
Log data follows:
| DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common',
'common-linux', 'common-uclibc', 'i586-linux-uclibc', 'common']
| NOTE: make -j 24 -C libelf
| make: Entering directory
`/tmp/work/i586-poky-linux-uclibc/elfutils-0.148-r5/elfutils-0.148/libelf'
...
| elf_error.c:56:21: fatal error: libintl.h: No such file or directory
| compilation terminated.
| make: *** [elf_error.o] Error 1
| make: *** Waiting for unfinished jobs....
| make: Leaving directory
`/tmp/work/i586-poky-linux-uclibc/elfutils-0.148-r5/elfutils-0.148/libelf'
| ERROR: oe_runmake failed
NOTE: package elfutils-0.148-r5: task do_compile: Failed
ERROR: Task 218
([path]/poky/meta/recipes-devtools/elfutils/elfutils_0.148.bb, do_compile)
failed with exit code '1'

The build works if I switch to eglibc. Can anyone help me figure out what
might cause this?

Regards
John

_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>

</pre>
      </blockquote>
      <pre wrap="">
</pre>
    </blockquote>
    Hi Raj<br>
    <br>
    Thank you for your reply - this seems to have resolved my issue. <br>
    <br>
    Can you let me know if there is a correct way to build gdbserver
    into my target? I have tried a few things and none of them seem to
    work. <a
href="http://www.yoctoproject.org/docs/1.1/poky-ref-manual/poky-ref-manual.html#platdev-gdb-remotedebug-launch-gdbserver">THIS
    </a>page suggests that there should be a gdbserver package but it
    doesn seem to exist when I try to include it. Including 'gdb' on its
    own doesnt seem to put gdbserver on the target. Also - i have tried
    EXTRA_IMAGE_FEATURES = "tools-debug" in local.conf but that breaks
    everything as it depends on X11 which I am not using. <br>
    <br>
    Regards,<br>
    John<br>
    <br>
  </body>
</html>

--------------070100080801040205070607--
