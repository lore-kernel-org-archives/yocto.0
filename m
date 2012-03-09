Return-Path: <john.toomey@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FD26E013A3
	for <yocto@yoctoproject.org>; Fri,  9 Mar 2012 07:18:34 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 09 Mar 2012 07:18:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="119433841"
Received: from jtoomey-mobl9.ger.corp.intel.com (HELO [163.33.228.164])
	([163.33.228.164])
	by orsmga002.jf.intel.com with ESMTP; 09 Mar 2012 07:18:33 -0800
Message-ID: <4F5A1F48.4040601@linux.intel.com>
Date: Fri, 09 Mar 2012 15:18:32 +0000
From: John Toomey <john.toomey@linux.intel.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:10.0.1) Gecko/20120208 Thunderbird/10.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: issue building iputils with uclibc
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
X-List-Received-Date: Fri, 09 Mar 2012 15:18:34 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello all

I'm having problems compiling iputils with uclibc -

| ping6.o: In function `niquery_option_subject_name_handler':
| 
/tmp/work/i586-poky-linux-uclibc/iputils-s20101006-r2/iputils-s20101006/ping6.c:428: 
undefined reference to `dn_comp'
| collect2: ld returned 1 exit status
| make: *** [ping6] Error 1
| make: *** Waiting for unfinished jobs....
| make[1]: Leaving directory 
`/tmp/work/i586-poky-linux-uclibc/iputils-s20101006-r2/iputils-s20101006/doc'
| ERROR: oe_runmake failed
NOTE: package iputils-s20101006-r2: task do_compile: Failed
ERROR: Task 4 (/poky/meta/recipes-extended/iputils/iputils_s20101006.bb, 
do_compile) failed with exit code '1'

It works fine with eglibc. Any help would be greatly appreciated!

Regards
John


