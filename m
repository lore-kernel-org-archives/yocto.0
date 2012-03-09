Return-Path: <john.toomey@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2E8AE013A7
	for <yocto@yoctoproject.org>; Fri,  9 Mar 2012 07:45:03 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 09 Mar 2012 07:45:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="116863353"
Received: from jtoomey-mobl9.ger.corp.intel.com (HELO [163.33.228.164])
	([163.33.228.164])
	by azsmga001.ch.intel.com with ESMTP; 09 Mar 2012 07:45:02 -0800
Message-ID: <4F5A257D.3000508@linux.intel.com>
Date: Fri, 09 Mar 2012 15:45:01 +0000
From: John Toomey <john.toomey@linux.intel.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:10.0.1) Gecko/20120208 Thunderbird/10.0.1
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <4F5A1F48.4040601@linux.intel.com>
	<CAMKF1sp+rEg4CRbRjyRTOtHaFLnxEKpqk++F5pE1xei-Tejnaw@mail.gmail.com>
In-Reply-To: <CAMKF1sp+rEg4CRbRjyRTOtHaFLnxEKpqk++F5pE1xei-Tejnaw@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: issue building iputils with uclibc
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
X-List-Received-Date: Fri, 09 Mar 2012 15:45:04 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/03/2012 15:29, Khem Raj wrote:
> On Fri, Mar 9, 2012 at 7:18 AM, John Toomey<john.toomey@linux.intel.com>  wrote:
>> undefined reference to `dn_comp'
> add LDFLAGS_libc-uclibc_append = " -lresolv" to recipe.
>
Hi Raj

I'm still getting the same...

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
ERROR: Task 7 (/poky/meta/recipes-extended/iputils/iputils_s20101006.bb, 
do_compile) failed with exit code '1'

Anything else I can try?

Regards
John

