Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ABDFAE009C2; Thu, 16 Apr 2015 02:37:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F24ECE009A3
	for <yocto@yoctoproject.org>; Thu, 16 Apr 2015 02:37:16 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 16 Apr 2015 02:36:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,587,1422950400"; d="scan'208";a="710080237"
Received: from nwalsh-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.27.88])
	by fmsmga002.fm.intel.com with ESMTP; 16 Apr 2015 02:36:57 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "METHOT, DAVID" <damethot@tycoint.com>
Date: Thu, 16 Apr 2015 10:36:56 +0100
Message-ID: <1924570.ZkAuPx7hfc@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.9-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <B2DB68B3697B8042BDB56671387303E8C2FB53@003FCH1MPN2-042.003f.mgd2.msft.net>
References: <B2DB68B3697B8042BDB56671387303E8C2FB53@003FCH1MPN2-042.003f.mgd2.msft.net>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Force to install package last
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
X-List-Received-Date: Thu, 16 Apr 2015 09:37:20 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi David,

On Wednesday 15 April 2015 20:22:11 METHOT, DAVID wrote:
> I made a package recipe to merge files into my final rootfs (mostly init
> scripts under /etc).
> 
> These files may be overriden by other packages so it is crucial that they
> remain intact.
> 
> I am wondering if there is a way to make sure a package is the last one to
> be installed in the rootfs.

There is no mechanism for this. There are two alternative means to do this 
kind of thing (just for the files that are already packaged by other recipes):

A) Use bbappends on the original recipes that package these files to change 
them there as desired

or

B) Create a shell function in your image which makes the desired modifications 
under ${IMAGE_ROOTFS} and add it to ROOTFS_POSTPROCESS_COMMAND; it will be 
called towards the end of the image construction.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

