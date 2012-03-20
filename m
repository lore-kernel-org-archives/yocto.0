Return-Path: <john.toomey@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4035DE0044D
	for <yocto@yoctoproject.org>; Tue, 20 Mar 2012 08:49:29 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 20 Mar 2012 08:49:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="141948271"
Received: from jtoomey-mobl9.ger.corp.intel.com (HELO [163.33.228.168])
	([163.33.228.168])
	by fmsmga002.fm.intel.com with ESMTP; 20 Mar 2012 08:49:10 -0700
Message-ID: <4F68A6F6.8080900@linux.intel.com>
Date: Tue, 20 Mar 2012 15:49:10 +0000
From: John Toomey <john.toomey@linux.intel.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:10.0.1) Gecko/20120208 Thunderbird/10.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: issue building iputils with uclibc.
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
X-List-Received-Date: Tue, 20 Mar 2012 15:49:29 -0000
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

It works fine with eglibc. I posted this question before but didnt 
really get a good answer - can anyone help point me in the right direction?

Regards
John

