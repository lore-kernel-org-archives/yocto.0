Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93E9BE00AE6; Wed, 12 Jul 2017 08:51:10 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9644E00AA7
	for <yocto@yoctoproject.org>; Wed, 12 Jul 2017 08:51:08 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Jul 2017 08:51:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,350,1496127600"; d="scan'208";a="1194552724"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.119])
	by fmsmga002.fm.intel.com with ESMTP; 12 Jul 2017 08:51:07 -0700
Message-ID: <1499875249.5349.46.camel@linux.intel.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Kenny Koller <kenny@understoryweather.com>
Date: Wed, 12 Jul 2017 11:00:49 -0500
In-Reply-To: <CAPtqgUxdtgOZNVqRUjrGX6e-+e9Hd=zwac2-zDRUdWQSk=+8fw@mail.gmail.com>
References: <CAPtqgUxdtgOZNVqRUjrGX6e-+e9Hd=zwac2-zDRUdWQSk=+8fw@mail.gmail.com>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Determining Load Addresses
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
X-List-Received-Date: Wed, 12 Jul 2017 15:51:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2017-07-12 at 05:23 +0000, Kenny Koller wrote:
> I'm trying to piece together the various load addresses used in the
> boot sequence. I have built core-image-minimal for a Beaglebone. How
> can I determine which load address and entry point is used when
> mkimage is called for the kernel? Should I dig in to the recipe?
> Search some log files? I've tried a few difference things without
> results.
> 
> 
This type of info usually comes in the machine definition, thus look
there. Diong a simple git grep ^UBOOT shows the following related
variables

meta/conf/documentation.conf:UBOOT_ENTRYPOINT[doc] = "Specifies the
entry point for the U-Boot image."
meta/conf/documentation.conf:UBOOT_LOADADDRESS[doc] = "Specifies the
load address for the U-Boot image."



> Thanks.
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



