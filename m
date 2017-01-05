Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28A75E0049D; Wed,  4 Jan 2017 16:31:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80C6AE00443
	for <yocto@yoctoproject.org>; Wed,  4 Jan 2017 16:31:28 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP; 04 Jan 2017 16:31:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,318,1477983600"; d="scan'208";a="1079292961"
Received: from daswan-mobl5.amr.corp.intel.com ([10.254.61.101])
	by orsmga001.jf.intel.com with ESMTP; 04 Jan 2017 16:31:27 -0800
Date: Wed, 4 Jan 2017 16:31:27 -0800
From: Stephano Cetola <stephano.cetola@linux.intel.com>
To: richard_allen@keysight.com
Message-ID: <20170105003127.GA87812@daswan-mobl5.amr.corp.intel.com>
References: <BC774F321B0EF24DBF41FE7457B2B7862D17D5A2@wcosexch01k.cos.is.keysight.com>
MIME-Version: 1.0
In-Reply-To: <BC774F321B0EF24DBF41FE7457B2B7862D17D5A2@wcosexch01k.cos.is.keysight.com>
User-Agent: Mutt/1.7.2 (2016-11-26)
Cc: yocto@yoctoproject.org
Subject: Re: morty populate_sdk_ext fails for recipes inherit bin_package
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
X-List-Received-Date: Thu, 05 Jan 2017 00:31:31 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 01/04, richard_allen@keysight.com wrote:
> I am getting errors with morty and -c populate_sdk_ext when I have recipes which inherit bin_package
> These recipes work fine with Krogoth and it's populate_sdk_ext
> 
> Note: package is not empty, Use to install package on running system.
> 
> No idea how to proceed on fixing this (or if this is an morty issue with populate_sdk_ext
> (-c populate_sdk works fine)

Are you able to bitbake the image without "-c populate_sdk_ext"?

I am currently working on some bin_package related features, and I am
able to build my image (with a bin_package recipe) as well as well as
populate the eSDK and SDK.

> If I use ipk for package managment
> 
> NOTE: Executing RunQueue Tasks
> ERROR: uninative-tarball-1.0-r0 do_populate_sdk: Unable to install packages. Command '/home/rcallen/proto/morty/tmp/sysroots/x86_64-linux/usr/bin/opkg --volatile-cache -f /home/rcallen/proto/morty/tmp/work/x86_64-nativesdk-linux/uninative-tarball/1.0-r0/opkg.conf -t /home/rcallen/proto/morty/tmp/work/x86_64-nativesdk-linux/uninative-tarball/1.0-r0/temp/ipktemp/ -o /home/rcallen/proto/morty/tmp/work/x86_64-nativesdk-linux/uninative-tarball/1.0-r0/sdk/image/opt/tlo/2.2/sysroots/none  --force_postinstall --prefer-arch-to-version   install hals hals-doc' returned 255:

Looks like it can't find hals or hals-doc. Are you sure these are
built? The error you are seeing (Couldn't find anything to satisfy)
is from the above command: opkg [...] install hals hals-doc.

The RPM error is the same. It is telling you that the package-feeds
don't contain anything called "hals".

> Collected errors:
>  * opkg_prepare_url_for_install: Couldn't find anything to satisfy 'hals'.
>  * rm_r: Failed to open dir /home/rcallen/proto/morty/tmp/work/x86_64-nativesdk-linux/uninative-tarball/1.0-r0/temp/ipktemp//opkg-BL2Z8g: No such file or directory.
> 

