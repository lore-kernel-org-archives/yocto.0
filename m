Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E727E0142F
	for <yocto@yoctoproject.org>; Tue, 29 May 2012 06:37:09 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 29 May 2012 06:37:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="172293882"
Received: from unknown (HELO helios.localnet) ([10.252.120.40])
	by fmsmga002.fm.intel.com with ESMTP; 29 May 2012 06:37:08 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: jack <woailinux@hotmail.com>
Date: Tue, 29 May 2012 14:37:07 +0100
Message-ID: <8066252.tDBoB4yUWV@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.2 (Linux/3.2.0-24-generic-pae; KDE/4.8.2; i686; ; )
In-Reply-To: <BLU0-SMTP194504711819C3FD84E79DFB9050@phx.gbl>
References: <BLU0-SMTP194504711819C3FD84E79DFB9050@phx.gbl>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to use Software support layers such as "meta-browser" in a yocto image?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 29 May 2012 13:37:09 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 29 May 2012 21:07:30 jack wrote:
> Who can tell me how could I use the /Software support layers /that
> provided by http://www.openembedded.org/wiki/LayerIndex into my own
> yocto image? For example, how could I use "meta-browser" during image
> building?

There are two steps needed here, both are covered in the documentation. 
First you need to add the layer to your bblayers.conf:

 http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#enabling-your-layer

Then you need to add the desired package to your image:

 http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#usingpoky-extend-customimage

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

