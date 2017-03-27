Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46482E00B01; Mon, 27 Mar 2017 09:39:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [134.134.136.31 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E41BDE00890
	for <yocto@yoctoproject.org>; Mon, 27 Mar 2017 09:39:17 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga104.jf.intel.com with ESMTP; 27 Mar 2017 09:39:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,232,1486454400"; d="scan'208";a="1112614021"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.141])
	by orsmga001.jf.intel.com with ESMTP; 27 Mar 2017 09:39:17 -0700
Message-ID: <1490633240.28281.108.camel@linux.intel.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Soumya Gupta <soumyag213@gmail.com>
Date: Mon, 27 Mar 2017 10:47:20 -0600
In-Reply-To: <CAFD+RaYpSKgybYvi2kmRVDGq8Mgi8esrH5MH-M8NjV5+Zv-Zog@mail.gmail.com>
References: <CAFD+RaYpSKgybYvi2kmRVDGq8Mgi8esrH5MH-M8NjV5+Zv-Zog@mail.gmail.com>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Error on installation, Help required
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
X-List-Received-Date: Mon, 27 Mar 2017 16:39:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2017-03-26 at 23:06 +0530, Soumya Gupta wrote:
> 
> Upon running bitbake core-image-sato, my system executed about
> 2309/6489 tasks and then runs into this error. I can't figure out why
> this is happening. 

Which distro (your host) are you using? try using one supported by YP.
Do you have the same issue with core-image-minimal?


One more thing, be more precise on your subject, 'error on installation'
does not help much.

> 
> 
> All help is appreciated. 
> Thanks :)
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



