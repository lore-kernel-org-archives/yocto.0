Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2D28E0071C; Thu, 22 Dec 2016 09:29:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E92B2E00563
	for <yocto@yoctoproject.org>; Thu, 22 Dec 2016 09:29:23 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga103.jf.intel.com with ESMTP; 22 Dec 2016 09:29:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,389,1477983600"; d="scan'208";a="205824885"
Received: from stseng1-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.156.43])
	by fmsmga004.fm.intel.com with ESMTP; 22 Dec 2016 09:29:20 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Eswaran Vinothkumar (BEG-PT/PJ-IOT1)" <Vinothkumar.Eswaran@de.bosch.com>
Date: Fri, 23 Dec 2016 06:29:18 +1300
Message-ID: <7129921.jo1R2Efc9J@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.8.13-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <c6d9b66bf50d4dbfaa4e3b5a5191263e@FE-MBX1014.de.bosch.com>
References: <c6d9b66bf50d4dbfaa4e3b5a5191263e@FE-MBX1014.de.bosch.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: =?UTF-8?B?UmU6IEFkZGluZyBtdWx0aXBsZSBwYXRjaGVzIHRvIFNSQ19VUkkgaW4gYSByZWNpcGUg4oCUIFlvY3Rv?=
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
X-List-Received-Date: Thu, 22 Dec 2016 17:29:24 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thu, 22 Dec 2016 07:23:44 Eswaran Vinothkumar wrote:
> I am creating a BSP to customized board using Yocto. I have some hundred
> plus patches for the Linux kernel and barebox. To include the patches for
> the Linux kernel, I have created an .scc file. In the .scc file I have
> included all the patches required.The SRC_URI option in the kernel recipe
> looks like:
> 
>     SRC_URI +=
> "https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.0.9.tar.xz \
> file://kernelpatch.scc \
>                 file://kernel-4.0.9.cfg \
>                 "
> 
> For the barebox, I tried to do the same, but it seems it doesn't support
> .scc files. So now I have included all the hundred plus patches using
> `file://patchname.patch`  in  SRC_URI:
> 
>             file://patches/0001-drivers.patch \
>             file://patches/0002-hw_random-C.patch \
>     .
>     .
>     .
>     .
>             file://patches/0304-usb-fastbootupport.patch \
> 
> I would like to know is there a better way for adding multiple patches to
> the SRC_URI ?

One thing to consider instead of carrying this number of patches is simply 
creating your own git repository and point to that in SRC_URI. Then the 
patches become *much* more manageable.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

