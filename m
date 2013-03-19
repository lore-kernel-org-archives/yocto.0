Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 236A9E006AD
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 08:55:53 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 19 Mar 2013 08:55:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,872,1355126400"; d="scan'208";a="216462397"
Received: from unknown (HELO helios.localnet) ([10.255.13.154])
	by AZSMGA002.ch.intel.com with ESMTP; 19 Mar 2013 08:55:51 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Florin Cristian Dan <dan.florincristian@gmail.com>
Date: Tue, 19 Mar 2013 15:55:50 +0000
Message-ID: <1466847.IjQTqfg5oi@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.1 (Linux/3.5.0-25-generic; KDE/4.10.1; i686; ; )
In-Reply-To: <CABzOdpRL6VJSfcx5n8aO81b=SRg61k8oZGX5nwvzJ8TRcNw0Lg@mail.gmail.com>
References: <CABzOdpQ0H0oBe7bFFwc03ff9nx=BtOXbpyy032iXwpTe2vSbaA@mail.gmail.com>
	<2307196.6NslAs12Xo@helios>
	<CABzOdpRL6VJSfcx5n8aO81b=SRg61k8oZGX5nwvzJ8TRcNw0Lg@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Yocto Java support.
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
X-List-Received-Date: Tue, 19 Mar 2013 15:55:53 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 19 March 2013 17:09:32 Florin Cristian Dan wrote:
> Hello, thank you very much for your answer, i will folow your instructions
> but i have few more misunderstandings, like...after i do all that steps to
> enable the java layer, and burn a new image, how i can develop a java app,
> what IDE i should use? Isn't necesary a plugin like the Eclipse case?

It should be possible to use any IDE that you like, there is no hard 
requirement. If you use Eclipse you will get some integration that we provide, 
but you can still develop your Java apps in another IDE and deploy them on the 
target separately.

Cheers,
Paul

PS: please reply on-list so that everyone can follow the discussion. Thanks.

-- 

Paul Eggleton
Intel Open Source Technology Centre

