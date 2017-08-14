Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83E1AE00C01; Mon, 14 Aug 2017 08:40:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58AF3E00726
	for <yocto@yoctoproject.org>; Mon, 14 Aug 2017 08:40:36 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Aug 2017 08:40:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,373,1498546800"; d="scan'208";a="1003458021"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.134])
	by orsmga003.jf.intel.com with ESMTP; 14 Aug 2017 08:40:14 -0700
Message-ID: <1502725740.28941.13.camel@linux.intel.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Riko <antonius.riko@gmail.com>
Date: Mon, 14 Aug 2017 10:49:00 -0500
In-Reply-To: <39341581-7086-955e-d678-fa771e5941da@gmail.com>
References: <39341581-7086-955e-d678-fa771e5941da@gmail.com>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: layer.conf on openembedded-core ?
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
X-List-Received-Date: Mon, 14 Aug 2017 15:40:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2017-08-14 at 15:11 +0800, Riko wrote:
> Dear Yocto Members,
> 
> How can I find this file ?


this is a pretty general question. are you running bitbake from the
build directory? double check your conf/bblayers.conf and make sure
paths there are pointing correctly.


> 
> ==
> 
> ERROR: Unable to parse 
> /home/bianchi/poky/openembedded-core/conf/layer.conf: [Errno 2] file 
> /home/bianchi/poky/openembedded-core/conf/layer.conf not found
> 
> 
> Thanks,
> 
> Riko
> 



