Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 713A1E0132F
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2012 09:12:39 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 17 Apr 2012 09:12:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="90073345"
Received: from unknown (HELO envy.home) ([10.255.12.120])
	by AZSMGA002.ch.intel.com with ESMTP; 17 Apr 2012 09:12:38 -0700
Message-ID: <4F8D9655.9090109@linux.intel.com>
Date: Tue, 17 Apr 2012 09:12:05 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4F8CE449.8060501@linux.intel.com> <1334668768.616.92.camel@ted>
In-Reply-To: <1334668768.616.92.camel@ted>
X-Enigmail-Version: 1.4
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Writing do_install_append for target and virtclass-native in a bbappend
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
X-List-Received-Date: Tue, 17 Apr 2012 16:12:39 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 04/17/2012 06:19 AM, Richard Purdie wrote:
> On Mon, 2012-04-16 at 20:32 -0700, Darren Hart wrote:
>> I'm trying to address a symlink naming issue in the bzip2 package when
>> used with Chrome. Chrome is looking for a specific soname, which the
>> default install of bzip2 doesn't setup. I can address this easily by
>> adding the symlink via a bzip2 bbappend in do_install_append().
>> Unfortunately, this fails for the virtclass-native variant. I tried
>> adding and empty:
>>
>> do_install_append_virtclass-native() {
>> 	:
>> }
>>
>> function to the bbappend, which still failed. I then added an echo
>> statement which appeared in the output, but it still ran non-native
>> do_install_append() and failed. Switching the order of the functions
>> made the echo output disappear, but the native variant still failed.
>>
>> I figure I must be missing something rather fundamental here. Any ideas
>> what it might be?
> 
> _append variables stack so if you do:
> 
> A_append = "x"
> A_append = "y"
> A_append = "z"
> 
> You'll end up with A = "xyz".
> 
> You can do something a little more ugly to work around it like:
> 
> do_install_append () {
> 	${SYMLINK}
> }
> 
> SYMLINK = "ln -s a b"
> SYMLINK_virtclass-native = ":"
> 

Thank you RP, that does the trick.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

