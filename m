Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AC54E00BDF; Thu, 12 Jun 2014 06:53:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F4F8E00BB1
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 06:53:17 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 12 Jun 2014 06:53:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,465,1400050800"; d="scan'208";a="556336729"
Received: from nithyasr-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.63])
	by orsmga002.jf.intel.com with ESMTP; 12 Jun 2014 06:53:16 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Holger Freyther <holger@freyther.de>
Date: Thu, 12 Jun 2014 14:53:15 +0100
Message-ID: <2178194.8ak3tKtQ3M@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.5-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <loom.20140611T081745-106@post.gmane.org>
References: <loom.20140611T081745-106@post.gmane.org>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: pseudo source gone missing?
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
X-List-Received-Date: Thu, 12 Jun 2014 13:53:22 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Holger,

On Wednesday 11 June 2014 06:19:49 Holger Freyther wrote:
> pseudo_1.5.1.bb refers to a URL like this
> http://www.yoctoproject.org/downloads/${BPN}/${BPN}-${PV}.tar.bz2
> but that is not were the sourcecode is located anymore. It looks
> like an infrastructure problem? Should I report a bug somewhere
> or can this be easily fixed?

I know you've already seen this but just to round this off, the issue is now 
fixed:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=6426

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

