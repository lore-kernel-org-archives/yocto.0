Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3715BE00BB8
	for <yocto@yoctoproject.org>; Mon, 14 Apr 2014 10:26:40 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 14 Apr 2014 10:26:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,858,1389772800"; d="scan'208";a="418832482"
Received: from johnmcca-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.91])
	by azsmga001.ch.intel.com with ESMTP; 14 Apr 2014 10:26:37 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Richard Schmitt <richard.schmitt@freescale.com>
Date: Mon, 14 Apr 2014 18:26:36 +0100
Message-ID: <2000012.WNxQQrOkdx@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.4 (Linux/3.13.9-200.fc20.x86_64; KDE/4.12.4; x86_64; ; )
In-Reply-To: <20140414144121.GC2132@jama>
References: <aa3464940d85426fbca4b43ff4c7c9c9@BL2PR03MB210.namprd03.prod.outlook.com>
	<20140414144121.GC2132@jama>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: openssl and heartbleed
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
X-List-Received-Date: Mon, 14 Apr 2014 17:26:43 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 14 April 2014 16:41:21 Martin Jansa wrote:
> On Mon, Apr 14, 2014 at 02:37:52PM +0000, Richard Schmitt wrote:
> > Does the Yocto project plan to have some response to the heartbleed
> > exploit in openssl in the near term?  Has this already been addressed?
>
> It was already addressed for master, daisy, dora and dylan.

Specifically, for master and daisy (what will be the 1.6 release), OpenSSL was 
upgraded to 1.0.1g which includes the fix. For dora (1.5) and dylan (1.4) 
branches, the specific fix was backported as a patch on top of 1.0.1e.

We haven't yet had a point release of 1.4 or 1.5 that includes the fix. At this 
point given the nature of our project, I'm not sure if we would rush to do 
one. It's certainly likely we will have a 1.5 point release in the near future 
though.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

