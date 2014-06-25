Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76964E00524; Wed, 25 Jun 2014 08:41:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA03BE003FA
	for <yocto@yoctoproject.org>; Wed, 25 Jun 2014 08:41:19 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 25 Jun 2014 08:29:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,546,1400050800"; d="scan'208";a="563283221"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.121.119])
	by orsmga002.jf.intel.com with ESMTP; 25 Jun 2014 08:35:13 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Bollinger, Seth" <Seth.Bollinger@digi.com>
Date: Wed, 25 Jun 2014 16:35:12 +0100
Message-ID: <4926257.DJ1LoBhQc2@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.8-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <CFD04364.9642%seth.bollinger@digi.com>
References: <CFCD80D1.95CB%seth.bollinger@digi.com>
	<1746880.Dvn3uyFT8K@peggleto-mobl5.ger.corp.intel.com>
	<CFD04364.9642%seth.bollinger@digi.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: File system for alternate partition
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
X-List-Received-Date: Wed, 25 Jun 2014 15:41:22 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 25 June 2014 15:22:29 Bollinger, Seth wrote:
> >Are you sure? IMAGE_POSTPROCESS_COMMAND runs after all of the image files
> >have
> >been created; at that time, the contents of the image has already been
> >compressed or otherwise combined into the final output file(s), so I
> >would think
> >that would be too late to modify the contents.
> 
> I just unzipped the bz2 and most dirs were removed, only /var/lib/opkg
> remains.  Is there any workaround for this, or should I wait for the bug
> fix?

I'm not sure without digging into it further (which I'm unable to do at the 
moment, perhaps someone else can.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

