Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8A61E007DC
	for <yocto@yoctoproject.org>; Mon, 23 Dec 2013 12:56:40 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 23 Dec 2013 12:56:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,538,1384329600"; d="scan'208";a="454738468"
Received: from unknown (HELO helios.localnet) ([10.252.122.50])
	by fmsmga002.fm.intel.com with ESMTP; 23 Dec 2013 12:56:38 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Mon, 23 Dec 2013 20:56:37 +0000
Message-ID: <1775123.hQ8z5s0CFj@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-34-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <l9a7ft$2rm$1@ger.gmane.org>
References: <l9a7ft$2rm$1@ger.gmane.org>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: u-boot 2013.10 LIC_FILES_CHKSUM points to an invalid file
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
X-List-Received-Date: Mon, 23 Dec 2013 20:56:42 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert,

On Monday 23 December 2013 22:47:00 Robert Berger wrote:
> I try to build instead of u-boot v2013.07 [1] the latest and greatest
> released version i.e. v2013.10[2].
> 
> ... which does not build because LIC_FILES_CHKSUM points to an invalid
> file ...
> 
> ... and yes it does, since the COPYING file is gone ...
> 
> The licencense info is contained in the source code itself as
> SPDX-License-Identifiers.

Hmm, I'm not sure upstream should really have removed it, but I guess it's up 
to them...
 
> How do I get it to build?

In the absence of any other license statement, you'd have to point to one or 
more of the source files and use beginline and endline to select just the part 
of the header specifying the license.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

