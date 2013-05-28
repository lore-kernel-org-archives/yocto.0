Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77C44E01458
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 06:54:59 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 28 May 2013 06:54:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,758,1363158000"; d="scan'208";a="308954153"
Received: from unknown (HELO helios.localnet) ([10.252.121.204])
	by azsmga001.ch.intel.com with ESMTP; 28 May 2013 06:54:41 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Tue, 28 May 2013 14:54:40 +0100
Message-ID: <3376326.FccA9gDt9x@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-22-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <CAAGt+t1eJo8yRC7ZKLFOz1c8zLAJZv7Uc_2d6SxkXq-ij+Pe=A@mail.gmail.com>
References: <CAAGt+t1SvAkQik=jAr5xPPBe7NE-VOwbDhLTnszst7NKF5W5TA@mail.gmail.com>
	<CA+AhUGy_+4H9K_eWDdPdziYb90EtSsC40voGc=JsVMBknpJYcw@mail.gmail.com>
	<CAAGt+t1eJo8yRC7ZKLFOz1c8zLAJZv7Uc_2d6SxkXq-ij+Pe=A@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Hello world-Checksum error
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
X-List-Received-Date: Tue, 28 May 2013 13:54:59 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 28 May 2013 15:45:10 Zafrullah Syed wrote:
> Error corrected. Thank You.
> 
> Do we need to add IMAGE_INSTALL += " hello " and EXTRA_IMAGE_FEATURES += "
> hello " to yocto/build/conf/local.conf or yocto/poky/build/conf/local.conf
>  before running build?

If you want it installed into an image, yes. However, IMAGE_INSTALL += "hello" 
in local.conf won't work, because it will be overridden by the setting of 
IMAGE_INSTALL in the image recipe itself, since local.conf will be parsed 
first. You need to do this instead in local.conf:

IMAGE_INSTALL_append = " hello"

(note the leading space, this is important with _append as _append does not 
add a space for you). _append operations are deferred until the end of parsing 
and thus will be applied even if the value is set with = afterwards as in this 
case.

Also, EXTRA_IMAGE_FEATURES += " hello " won't do anything since "hello" is not 
a valid image feature, it's a package. Appending it to IMAGE_INSTALL is enough 
to have it installed into the image.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

