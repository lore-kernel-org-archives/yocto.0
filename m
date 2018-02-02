Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B25BE00DD0; Fri,  2 Feb 2018 02:22:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E27BE00D6A
	for <yocto@yoctoproject.org>; Fri,  2 Feb 2018 02:22:18 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Feb 2018 02:22:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,448,1511856000"; d="scan'208";a="14934945"
Received: from anmitta2-mobl1.png.intel.com (HELO [10.221.17.104])
	([10.221.17.104])
	by fmsmga008.fm.intel.com with ESMTP; 02 Feb 2018 02:22:17 -0800
To: yocto@yoctoproject.org
References: <CAJCDnYZz0HLgoJUmZhis0n=Kh1Xy2Z06dAA=8ai5GvdH03Ob4w@mail.gmail.com>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <9105add4-ce81-a507-1740-434a1d537962@intel.com>
Date: Fri, 2 Feb 2018 18:22:16 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CAJCDnYZz0HLgoJUmZhis0n=Kh1Xy2Z06dAA=8ai5GvdH03Ob4w@mail.gmail.com>
Subject: Re: Remove nfs packages from image
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
X-List-Received-Date: Fri, 02 Feb 2018 10:22:19 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 02/02/2018 04:06 PM, Marek Słomiany wrote:
> Hi,
> 
> I am using yocto rocko, with custom distro (based on poky), and custom
> image inheriting core-image bbclass.
> I was asked to get rid of nfs-client and nfs-server (and generaly
> nfs-anything) from our image. If I'm right it comes with core-image.bbclass.
> I have tried using IMAGE_INSTALL_remove, DISTRO_FEATURES_remove,
> IMAGE_FEATURES_remove and few others in different places (like: image
> recipe, build/conf/local.conf) and there was no outcome, the nfs
> server/client were always there.
> Packages I was trying to point in those *_remove commands where "fns"
> "nfs-utils" "nfs-server" "nfs-client" and "packagegroup-core-nfs".
> Could you please give me a hint how to get rid of those?

I think it gets included by default using DISTRO_FEATURES_DEFAULT. So
using DISTRO_FEATURES_remove = " nfs" should work. However, you may also
want to define your own set of values for your distro for DISTRO_FEATURES.

https://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#ref-features-distro

Thanks,
Anuj

> 
> Kind regards,
> Marek Słomiany
> 
> 


