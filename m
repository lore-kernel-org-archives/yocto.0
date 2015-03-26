Return-Path: <randy.e.witt@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02754E00832; Thu, 26 Mar 2015 13:11:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 515B4E0056E
	for <yocto@yoctoproject.org>; Thu, 26 Mar 2015 13:11:12 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga101.jf.intel.com with ESMTP; 26 Mar 2015 13:11:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,474,1422950400"; d="scan'208";a="546896886"
Received: from bitbang.jf.intel.com ([10.7.201.37])
	by orsmga003.jf.intel.com with ESMTP; 26 Mar 2015 13:11:12 -0700
Message-ID: <551467E0.7010800@linux.intel.com>
Date: Thu, 26 Mar 2015 13:11:12 -0700
From: Randy Witt <randy.e.witt@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Preeti P <itspreetip89@gmail.com>, yocto <yocto@yoctoproject.org>
References: <CA+jjunDcbN-xq8TUB_8y6+HKnhErtckaGYgU7RnhGxV0OC1Qfw@mail.gmail.com>
	<CA+jjunCbZfd-b+V_ipMtdWkkLwyN6xJJH3vhHjGmKG8p8b8doA@mail.gmail.com>
In-Reply-To: <CA+jjunCbZfd-b+V_ipMtdWkkLwyN6xJJH3vhHjGmKG8p8b8doA@mail.gmail.com>
Subject: Re: : About adding documentation in final SDK image
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
X-List-Received-Date: Thu, 26 Mar 2015 20:11:15 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi Preeti,

On 03/19/2015 09:07 AM, Preeti P wrote:
> Hi all,
>
> I am working on adding the documents in to my SDK image.
> Basically, I want to have the man and info documentation for the tool-chain
> item in my SDK image.
>
> As per my understanding, the install package for every recipe gets split
> into different packages and finally shipped in to the SDK image.
>
> To add the documents in my SDK image, I tried to add the '-doc' support in
> 'PACKAGES' variable but still the documentation related files are not there
> in the final image.
>
> I even tried by adding below lines in to the do_install function in my
> recipe but my final image does not have those files:
>
> do_install {
>
>                  install -d ${D}${includedir}${doc}
>
>                  install -m 644 ${S}/doc/*.info ${D}${includedir}${doc}
>
> }
>
> Can anyone provide me inputs on how to add the documentation for packages
> in to the final SDK image?

I'm not sure whether you want them in the host sysroot or the target sysroot, 
but will either TOOLCHAIN_HOST_TASK or TOOLCHAIN_TARGET_TASK do what you need?

https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-TOOLCHAIN_HOST_TASK
https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-TOOLCHAIN_TARGET_TASK

> Thanks,
> Preeti
>


