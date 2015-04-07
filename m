Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72C5CE00854; Tue,  7 Apr 2015 01:21:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29281E007A0
	for <yocto@yoctoproject.org>; Tue,  7 Apr 2015 01:21:39 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 07 Apr 2015 01:21:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,536,1422950400"; d="scan'208";a="676214902"
Received: from esinnott-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.27.139])
	by orsmga001.jf.intel.com with ESMTP; 07 Apr 2015 01:21:39 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Yu, Chan KitX" <chan.kitx.yu@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 07 Apr 2015 09:21:37 +0100
Message-ID: <46079264.Yf3jybEbXn@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.9-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <0E4D391FE2BDEC45AA0B4E32D6BD598A28B390@PGSMSX101.gar.corp.intel.com>
References: <0E4D391FE2BDEC45AA0B4E32D6BD598A28AF2F@PGSMSX101.gar.corp.intel.com>
	<F14AEF751653024287138321000C846AF48138A8@BOS-DAG1.zone1.flir.net>
	<0E4D391FE2BDEC45AA0B4E32D6BD598A28B390@PGSMSX101.gar.corp.intel.com>
MIME-Version: 1.0
Subject: Re: Kernel Panic: /sbin/init not found
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
X-List-Received-Date: Tue, 07 Apr 2015 08:21:44 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 07 April 2015 00:06:39 Yu, Chan KitX wrote:
> I guess I have mistaken something in
> https://wiki.yoctoproject.org/wiki/Multilib#How_to_use_it . I have simply
> put the line:
> 
> IMAGE_INSTALL = "lib32-connman"
> 
> which turned out to be a wrong move. I'm not entirely sure of why this has
> worked for me for several months but that was the case and I stuck to it
> until this problem took me in the knee. I'm not sure if the line above is
> correct in its context. lib32-connman is just a package and perhaps it
> should have used IMAGE_INSTALL_append or IMAGE_INSTALL+=

Ah, right, that page was wrong - and I have just fixed it. It's probably out-
of-date as well, and in fact there is an open bug to make sure we have what we 
need in the manual and then turn the page into a redirect.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

