Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE464E00C73; Thu, 31 Mar 2016 03:22:37 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFC5BE00BBF
	for <yocto@yoctoproject.org>; Thu, 31 Mar 2016 03:22:34 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 31 Mar 2016 03:22:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,421,1455004800"; d="scan'208";a="945147651"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga002.jf.intel.com with ESMTP; 31 Mar 2016 03:22:09 -0700
To: yocto@yoctoproject.org
References: <BY1PR0701MB15940BD220DBA10E21250F6AE1810@BY1PR0701MB1594.namprd07.prod.outlook.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <56FCF95D.4040700@linux.intel.com>
Date: Thu, 31 Mar 2016 13:18:05 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.6.0
MIME-Version: 1.0
In-Reply-To: <BY1PR0701MB15940BD220DBA10E21250F6AE1810@BY1PR0701MB1594.namprd07.prod.outlook.com>
Subject: Re: [Query] Process of Up-streaming a new meta layer
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
X-List-Received-Date: Thu, 31 Mar 2016 10:22:37 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 03/23/2016 04:24 PM, Jaggi, Manish wrote:

> What is the process of upstreaming a new meta layer ?
> The layer is specific to cavium thunderx and it can be named as meta-cavium
>
> Is this the correct mailing list to upstream ?

You need to publish the layer somewhere public (e.g. github), and then 
fill out the form at http://layers.openembedded.org so it's added to the 
layer index.

Alex


