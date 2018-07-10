Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71B7BE00DE3; Mon,  9 Jul 2018 23:18:44 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39BADE00D3E
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2018 23:18:44 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	09 Jul 2018 23:18:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,333,1526367600"; d="scan'208";a="71017827"
Received: from rossbach-mobl.ger.corp.intel.com (HELO localhost.localdomain)
	([10.249.32.194])
	by fmsmga001.fm.intel.com with ESMTP; 09 Jul 2018 23:18:28 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 10 Jul 2018 08:18:27 +0200
Message-ID: <1909416.gzoZmKSdQq@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <c9cf4aad-d222-a12d-6167-0d9f7e6106f7@windriver.com>
References: <CANmTPBZZHDw5BVGSMMx_N+ZtRyLtE0k5+yDVK-Ywh+peciaPVw@mail.gmail.com>
	<c9cf4aad-d222-a12d-6167-0d9f7e6106f7@windriver.com>
MIME-Version: 1.0
Subject: Re: Keeping and modifying Source code in Yocto
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
X-List-Received-Date: Tue, 10 Jul 2018 06:18:44 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, 10 July 2018 3:32:56 AM CEST ChenQi wrote:
> I usually use the following steps when I need to modify source for some 
> purpose.
> 
> 1. bitbake A (or at least bitbake A -c configure)
> *2. cd tmp/work/xxxxx/A/<source dir>**
> **3. make the modification*
> 4. bitbake A -c compile -f
> 5. bitbake A
> 
> If you find the modification useful, make a patch from it.

This is the old way of doing it which can under some circumstances result in 
you losing your changes to the source tree, since the sources under tmp/work/ 
are only ever intended to be there temporarily. Devtool (as recommend by 
others on this thread) is designed to enable this workflow in a much safer 
manner.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



