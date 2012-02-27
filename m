Return-Path: <john.toomey@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B481BE0059B
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2012 08:35:16 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 27 Feb 2012 08:35:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; 
	d="scan'208,217";a="115304118"
Received: from jtoomey-mobl9.ger.corp.intel.com (HELO [163.33.228.190])
	([163.33.228.190])
	by orsmga002.jf.intel.com with ESMTP; 27 Feb 2012 08:35:06 -0800
Message-ID: <4F4BB0B9.1030809@linux.intel.com>
Date: Mon, 27 Feb 2012 16:35:05 +0000
From: John Toomey <john.toomey@linux.intel.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:10.0.1) Gecko/20120208 Thunderbird/10.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: uclibc elfutils
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
X-List-Received-Date: Mon, 27 Feb 2012 16:35:16 -0000
Content-Type: multipart/alternative;
	boundary="------------060605030407040708010403"

--------------060605030407040708010403
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello all,

I'm having some difficulty building elfutils (required by gdb) and I 
think its relating to the fact that im using uclibc.

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
    ([path]/poky/meta/recipes-devtools/elfutils/elfutils_0.148.bb,
    do_compile) failed with exit code '1'

The build works if I switch to eglibc. Can anyone help me figure out 
what might cause this?

Regards
John

--------------060605030407040708010403
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hello all,<br>
    <br>
    I'm having some difficulty building elfutils (required by gdb) and I
    think its relating to the fact that im using uclibc. <br>
    <br>
    <blockquote>NOTE: package elfutils-0.148-r5: task do_compile:
      Started<br>
      ERROR: Function failed: do_compile (see
      /tmp/work/i586-poky-linux-uclibc/elfutils-0.148-r5/temp/log.do_compile.14653
      for further information)<br>
      ERROR: Logfile of failure stored in:
/tmp/work/i586-poky-linux-uclibc/elfutils-0.148-r5/temp/log.do_compile.14653<br>
      Log data follows:<br>
      | DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common',
      'common-linux', 'common-uclibc', 'i586-linux-uclibc', 'common']<br>
      | NOTE: make -j 24 -C libelf<br>
      | make: Entering directory
`/tmp/work/i586-poky-linux-uclibc/elfutils-0.148-r5/elfutils-0.148/libelf'<br>
      ...<br>
      | elf_error.c:56:21: fatal error: libintl.h: No such file or
      directory<br>
      | compilation terminated.<br>
      | make: *** [elf_error.o] Error 1<br>
      | make: *** Waiting for unfinished jobs....<br>
      | make: Leaving directory
`/tmp/work/i586-poky-linux-uclibc/elfutils-0.148-r5/elfutils-0.148/libelf'<br>
      | ERROR: oe_runmake failed<br>
      NOTE: package elfutils-0.148-r5: task do_compile: Failed<br>
      ERROR: Task 218
      ([path]/poky/meta/recipes-devtools/elfutils/elfutils_0.148.bb,
      do_compile) failed with exit code '1'<br>
    </blockquote>
    The build works if I switch to eglibc. Can anyone help me figure out
    what might cause this?<br>
    <br>
    Regards<br>
    John<br>
  </body>
</html>

--------------060605030407040708010403--
