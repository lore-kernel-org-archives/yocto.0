Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2B77E00960; Tue, 28 Apr 2015 01:30:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24005E0086D
	for <yocto@yoctoproject.org>; Tue, 28 Apr 2015 01:30:12 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga101.jf.intel.com with ESMTP; 28 Apr 2015 01:30:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,662,1422950400"; d="scan'208";a="562944387"
Received: from pkcletus-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.20.230])
	by orsmga003.jf.intel.com with ESMTP; 28 Apr 2015 01:30:10 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 28 Apr 2015 09:30:09 +0100
Message-ID: <57211261.fZrZbmzik8@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.9-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <5500469A22567C4BAF673A6E86AFA3A402227F4FA84D@IR-CENTRAL.corp.innerrange.com>
References: <AEC347BAFCE456419C9E7C9F50321CEF10E03514F5@IAD2MBX10.mex02.mlsrvr.com>
	<553E95B2.4050004@windriver.com>
	<5500469A22567C4BAF673A6E86AFA3A402227F4FA84D@IR-CENTRAL.corp.innerrange.com>
MIME-Version: 1.0
Subject: Re: [poky] Initramfs not appended to kernel image
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
X-List-Received-Date: Tue, 28 Apr 2015 08:30:17 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 28 April 2015 16:16:32 Craig McQueen wrote:
> I'm in the process of using the INITRAMFS_IMAGE and INITRAMFS_IMAGE_BUNDLE
> feature with the latest from the 'dizzy' branch for Poky, and it seems to
> be working for me (on BeagleBone Black).
> 
> It's been quite a slow process to understand the initramfs mechanism and how
> to use it in Poky. That's including the initramfs-framework. It would be
> great to see some documentation for these features.

This is an ideal opportunity for me to point out that there's a bug open for 
this:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=7096

Scott just needs someone to send him the raw material so he can add something 
(presumably a small section) to one of the manuals.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

