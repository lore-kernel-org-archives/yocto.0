Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 833B2E00D15; Mon,  2 Oct 2017 18:26:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA665E00D03
	for <yocto@yoctoproject.org>; Mon,  2 Oct 2017 18:26:27 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga105.jf.intel.com with ESMTP; 02 Oct 2017 18:26:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,471,1500966000"; d="scan'208";a="155922362"
Received: from imakwana-mobl.amr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.142.79])
	by orsmga005.jf.intel.com with ESMTP; 02 Oct 2017 18:26:24 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Date: Tue, 03 Oct 2017 14:26:21 +1300
Message-ID: <1786227.q9ysM0urfs@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <7411926e7a7048e99289a55fdf1af075@sakuraus.com>
References: <7411926e7a7048e99289a55fdf1af075@sakuraus.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: package error for custom devtool recipe
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
X-List-Received-Date: Tue, 03 Oct 2017 01:26:28 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Greg,

On Tuesday, 3 October 2017 1:30:25 PM NZDT Greg Wilson-Lindberg wrote:
> I get some package errors when I build this:
> 
> ERROR: QA Issue: acsccid: Files/directories were installed but not shipped
> in any package:
>   /usr/lib/pcsc/drivers/ifd-acsccid.bundle/Contents/Info.plist
>   /usr/lib/pcsc/drivers/ifd-acsccid.bundle/Contents/Linux/libacsccid.so
> Please set FILES such that these items are packaged. Alternatively if they
> are unneeded, avoid installing them or delete them within do_install.
> acsccid: 2 installed and not shipped files. [installed-vs-shipped]
> 
> 
> I've added some FILES = lines to try to get rid of the error to no avail:
> 
> FILES_${PN} = "${libdir}/libacsccid.so"
> 
> or:
> 
> FILES_${PN} = ".libs/libacsccid.so"
> 
> or just:
> 
> FILES_${PN} = "libacsccid.so"

The reason none of these work is that none of these actually match the file 
path (not to mention you are setting the value outright instead of adding to 
the existing value). The path you are trying to match is 
"/usr/lib/pcsc/drivers/ifd-acsccid.bundle/Contents/Linux/libacsccid.so" so the 
value you want is either exactly that path, or something like 
"${libdir}/pcsc/drivers/*/Contents/Linux/*.so".  Also, instead of = use += so 
that you are adding to the existing value.

> and:
> 
> PACKAGE_BEFORE_PN = "info"
> FILES_${PN}-info = "Info.plist"

This isn't right - in PACKAGES (via PACKAGE_BEFORE_PN) you are placing "info" 
and then setting FILES_${PN}-info i.e. the package is named "${PN}-info". 
Probably the thing you want is to prepend this package to PACKAGES:

PACKAGES =+ "${PN}-info"

Cheers,
Paul 

-- 

Paul Eggleton
Intel Open Source Technology Centre

