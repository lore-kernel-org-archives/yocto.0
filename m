Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B32D0E009B1; Tue, 25 Oct 2016 04:32:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61DD1E00912
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2016 04:32:20 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga101.fm.intel.com with ESMTP; 25 Oct 2016 04:32:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,545,1473145200"; d="scan'208";a="23459302"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga005.jf.intel.com with ESMTP; 25 Oct 2016 04:32:19 -0700
To: yocto@yoctoproject.org
References: <F38A866CD026F746A3BF0928A84397BE3E7DC7A0@AZ-FFEXMB01.global.avaya.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <313b3229-3de6-63d9-5782-cb238b922bd5@linux.intel.com>
Date: Tue, 25 Oct 2016 14:30:12 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.4.0
MIME-Version: 1.0
In-Reply-To: <F38A866CD026F746A3BF0928A84397BE3E7DC7A0@AZ-FFEXMB01.global.avaya.com>
Subject: Re: Requires section of RPM Spec
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
X-List-Received-Date: Tue, 25 Oct 2016 11:32:22 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 10/25/2016 02:24 PM, Bipnesh, Abhinav (Abhinav) wrote:

> Is there a way we can avoid pre-populating the Requires section of the
> generated RPM Spec from a recipe?
>
> I have not set any RDEPENDS or other such section but still the section
> get populated. Below is an example
>
>
>
> Requires: libcrypto.so.1.0.0(OPENSSL_1.0.2d)
>
> Requires: libdl.so.2
>
> Requires: libuuid1 >= 2.26.2
>
> Requires(pre): libgcc1 >= 4.9.2
>
> Requires(pre): libssl1.0.0 >= 1.0.2h
>
> Requires(pre): libgcc_s.so.1(GCC_3.0)
>
> Requires(pre): libc.so.6(GLIBC_2.1)
>
> Requires(pre): /usr/bin/perl
>
> Requires(pre): libboost_system.so.1.58.0
>
> Requires(pre): libstdc++.so.6(GLIBCXX_3.4.20)
>
> Requires(pre): libc.so.6(GLIBC_2.3)

You need to provide some context: why do you want to avoid that? These 
are all runtime library dependencies, and they get added automatically 
by inspecting the binaries that your recipe generates. This is generally 
seen as a Good Thing.

Alex


