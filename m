Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E019BE00777; Wed, 12 Nov 2014 09:44:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8E66E005B7
	for <yocto@yoctoproject.org>; Wed, 12 Nov 2014 09:44:41 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 12 Nov 2014 09:44:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,370,1413270000"; d="scan'208";a="621331560"
Received: from tskannan-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.181])
	by fmsmga001.fm.intel.com with ESMTP; 12 Nov 2014 09:33:41 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: John Unland <opensourcejohn2112@gmail.com>, yocto@yoctoproject.org
Date: Wed, 12 Nov 2014 17:33:39 +0000
Message-ID: <2092067.aaeApHOQI2@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.2 (Linux/3.16.7-200.fc20.x86_64; KDE/4.14.2; x86_64; ; )
In-Reply-To: <CAByxTR-AS8DcboJH-iP5kgw3OitUKEYP7ZK5riJsuVX1bNNUpg@mail.gmail.com>
References: <CAByxTR_jmYDr4QUAtXg20UBV_FXZ-yUk=WEJ3LTA1wkaRAx6Yw@mail.gmail.com>
	<D087E4B4.4DDB7%belen.barros.pena@intel.com>
	<CAByxTR-AS8DcboJH-iP5kgw3OitUKEYP7ZK5riJsuVX1bNNUpg@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: Making Hob better.
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
X-List-Received-Date: Wed, 12 Nov 2014 17:44:43 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi John,

On Tuesday 11 November 2014 11:51:23 John Unland wrote:
> What about bootloaders? Where would I file a enhancement for different
> boot loaders (U-Boot, Lilo, etc.). Would be good if we had a boot
> loaders layer.

I'm not sure a separate bootloaders layer would really make sense - we 
normally keep bootloaders either in OE-Core (where we currently have u-boot, 
grub, grub-efi, syslinux, gummiboot, etc.) or in specific BSPs where a specific 
bootloader is needed (or a specific version of an existing bootloader, e.g. 
BSPs shipping their own version of u-boot is common). FWIW there is also a 
meta-initramfs layer in the meta-openembedded repository which contains 
kexecboot.

Are there bootloader(s) that you are looking for that are currently missing?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

