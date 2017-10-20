Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECCD8E00D48; Fri, 20 Oct 2017 02:49:32 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97450E00D46
	for <yocto@yoctoproject.org>; Fri, 20 Oct 2017 02:49:32 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	20 Oct 2017 02:49:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,405,1503385200"; d="scan'208";a="162766846"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga005.jf.intel.com with ESMTP; 20 Oct 2017 02:49:30 -0700
To: "Burton, Ross" <ross.burton@intel.com>,
	Belisko Marek <marek.belisko@gmail.com>
References: <CAAfyv37ogJyGkDSVYSgi61C=3+Y+Z2wXJgg5isHOiXderZ=e-Q@mail.gmail.com>
	<CAJTo0LYbM5HeRgn6iuVwvpYqrWnN-H2f82qMqzXADj5Zn7QdJQ@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <b4892a0c-4562-9d04-1f15-5506e1c3648b@linux.intel.com>
Date: Fri, 20 Oct 2017 12:44:53 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LYbM5HeRgn6iuVwvpYqrWnN-H2f82qMqzXADj5Zn7QdJQ@mail.gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: rocko: QA issue with glibc-locale
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
X-List-Received-Date: Fri, 20 Oct 2017 09:49:33 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 10/19/2017 10:15 PM, Burton, Ross wrote:
> On 19 October 2017 at 12:10, Belisko Marek <marek.belisko@gmail.com 
> <mailto:marek.belisko@gmail.com>> wrote:
> 
>     I'm using latest origin/rocko
>     (65d23bd7986615fdfb0f1717b615534a2a14ab80) with no change to build
>     beaglebone core-image-minimal. While build I got this QA error:
> 
>     ERROR: glibc-locale-2.26-r0 do_package: QA Issue: glibc-locale:
>     Files/directories were installed but not shipped in any package:
>        /usr/share/i18n
> 
> 
> I've seen this (and some other weird ones) in glibc-locales, and they've 
> always been resolved by just rebuilding the recipe. bitbake glibc-locale 
> -cclean && bitbake glibc-locale might well make it go away.

I'm beginning to wonder if the best way to resolve these elusive 
glibc-locale issues (also the notorious host contamination one) is to 
throw away the existing, extremely convoluted recipe, and do a clean 
rewrite.

Alex

