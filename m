Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B2B1E0053F; Sun,  8 Jan 2017 10:57:45 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFB64E004A0
	for <yocto@yoctoproject.org>; Sun,  8 Jan 2017 10:57:36 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 08 Jan 2017 10:57:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,337,1477983600"; d="scan'208";a="1091425493"
Received: from aupadhye-mobl2.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.185.80])
	by fmsmga001.fm.intel.com with ESMTP; 08 Jan 2017 10:57:33 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: richard_allen@keysight.com
Date: Mon, 09 Jan 2017 07:57:25 +1300
Message-ID: <2244309.YxLLuVC5TP@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.8.13-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <BC774F321B0EF24DBF41FE7457B2B7862D17D8A9@wcosexch01k.cos.is.keysight.com>
References: <BC774F321B0EF24DBF41FE7457B2B7862D17D5A2@wcosexch01k.cos.is.keysight.com>
	<20170105003127.GA87812@daswan-mobl5.amr.corp.intel.com>
	<BC774F321B0EF24DBF41FE7457B2B7862D17D8A9@wcosexch01k.cos.is.keysight.com>
MIME-Version: 1.0
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
X-List-Received-Date: Sun, 08 Jan 2017 18:57:45 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Richard,

A few things:

On Thu, 05 Jan 2017 14:27:39 richard_allen@keysight.com wrote:
> #runtime depends
> RDEPENDS_${PN} = " libgcc \
>                          libstdc++ \
>                          dtc \
>                            "
> DEPENDS_${PN} = " gtest"
> 
> #bring in all to build toolchain
> DEPENDS_${PN}-dev += " ${PN}-doc ${PN}-tests ${PN}-samples"

I assume you actually used RDEPENDS and not DEPENDS here? DEPENDS_${PN} is 
invalid.

> BBCLASSEXTEND = "native nativesdk"

Does it make sense to BBCLASSEXTEND to native given that this is precompiled 
for ARM?

On Wed, 04 Jan 2017 17:21:35 richard_allen@keysight.com wrote:
> ERROR: uninative-tarball-1.0-r0 do_populate_sdk: Unable to install packages.
> Command '/home/rcallen/proto/morty/tmp/sysroots/x86_64-linux/usr/bin/opkg
> --volatile-cache -f
> /home/rcallen/proto/morty/tmp/work/x86_64-nativesdk-linux/uninative-tarball
> /1.0-r0/opkg.conf -t
> /home/rcallen/proto/morty/tmp/work/x86_64-nativesdk-linux/uninative-tarball
> /1.0-r0/temp/ipktemp/ -o
> /home/rcallen/proto/morty/tmp/work/x86_64-nativesdk-linux/uninative-tarball
> /1.0-r0/sdk/image/opt/tlo/2.2/sysroots/none  --force_postinstall
> --prefer-arch-to-version   install hals hals-doc' returned 255: Collected
> errors:
>  * opkg_prepare_url_for_install: Couldn't find anything to satisfy 'hals'.
>  * rm_r: Failed to open dir
> /home/rcallen/proto/morty/tmp/work/x86_64-nativesdk-linux/uninative-tarball
> /1.0-r0/temp/ipktemp//opkg-BL2Z8g: No such file or directory.

It's interesting that this is coming up for uninative-tarball - that's not 
normally something that I would expect you would need to change for something 
like this. I suspect you have inadvertently modified the configuration of that 
(perhaps by setting TOOLCHAIN_HOST_TASK / TOOLCHAIN_TARGET_TASK globally?). 
What does your cfgs/add-hals.conf actually set?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

