Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2479AE00B44; Thu,  5 Nov 2015 06:14:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD584E00B3D
	for <yocto@yoctoproject.org>; Thu,  5 Nov 2015 06:14:39 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga101.jf.intel.com with ESMTP; 05 Nov 2015 06:14:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,247,1444719600"; d="scan'208";a="843833939"
Received: from rorourke-mobl4.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.10.56])
	by fmsmga002.fm.intel.com with ESMTP; 05 Nov 2015 06:14:33 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Thu, 05 Nov 2015 14:14:32 +0000
Message-ID: <3016549.FSiAq4gXjU@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.8-100.fc21.x86_64; KDE/4.14.11; x86_64; ; )
In-Reply-To: <563B4DF9.5030206@mlbassoc.com>
References: <563B4DF9.5030206@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Python pip
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
X-List-Received-Date: Thu, 05 Nov 2015 14:14:40 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Gary,

On Thursday 05 November 2015 05:39:21 Gary Thomas wrote:
> Just curious, does anyone know why OE-core has python3-pip
> but python-pip is relegated to meta-oe?

I think it has to do with pip being supplied as part of the standard python 3 
distribution from 3.4 onwards. I think for simplicity's sake it might be 
argued that python-pip could be in the same place though.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

