Return-Path: <john.toomey@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F0B3E00747
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2012 08:01:11 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 01 Jun 2012 08:01:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="151387533"
Received: from jtoomey-mobl9.ger.corp.intel.com (HELO [163.33.228.53])
	([163.33.228.53])
	by orsmga002.jf.intel.com with ESMTP; 01 Jun 2012 08:01:10 -0700
Message-ID: <4FC8D934.7050100@linux.intel.com>
Date: Fri, 01 Jun 2012 16:01:08 +0100
From: John Toomey <john.toomey@linux.intel.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:10.0.1) Gecko/20120208 Thunderbird/10.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: meta-toolchain uclibc issue
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
X-List-Received-Date: Fri, 01 Jun 2012 15:01:11 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello all,

I'm trying to use uClibc and meta-toolchain to compile software for my 
target system. After building and installing the toolchain I get the 
following error when trying to compile:

/toolchain$ $CC hello.c -o hello_after
/toolchain/poky/1.2/sysroots/x86_64-pokysdk-linux/usr/bin/i586-poky-linux-uclibc/../../libexec/i586-poky-linux-uclibc/gcc/i586-poky-linux-uclibc/4.6.4/ld: 
cannot find uclibc_nonshared.a
collect2: ld returned 1 exit status

but if I include the following Yocto tmp directory

/toolchain$ $CC -o hello hello.c -L 
.../tmp/work/i586-poky-linux-uclibc/uclibc-0.9.33-r6.0/package/usr/lib

everythoing works correctly. Does anyone know why this file isnt 
included in the toolchain package? Is this something im doing wrong or 
an issue with meta-toolchain?

Thanks,
John



