Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1C75E007DA; Tue,  3 Nov 2015 06:52:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AE32E00343
	for <yocto@yoctoproject.org>; Tue,  3 Nov 2015 06:52:18 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP; 03 Nov 2015 06:52:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,239,1444719600"; d="scan'208";a="677446332"
Received: from bcrawfor-mobl.amr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.26.120])
	by orsmga003.jf.intel.com with ESMTP; 03 Nov 2015 06:52:14 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Martin Townsend <mtownsend1973@gmail.com>
Date: Tue, 03 Nov 2015 14:52:13 +0000
Message-ID: <23334139.OfoGbnEVIn@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.8-100.fc21.x86_64; KDE/4.14.11; x86_64; ; )
In-Reply-To: <CABatt_wJb_j_YOptOeirf03SWO2znr9cXqzCzgFxxT-s_vq29Q@mail.gmail.com>
References: <CABatt_zq+Bt3w=PyTYfSM9X5TUyOYXBuVTpK8a0JH-L2HAApMQ@mail.gmail.com>
	<46665729.FfZ08QW5SE@peggleto-mobl.ger.corp.intel.com>
	<CABatt_wJb_j_YOptOeirf03SWO2znr9cXqzCzgFxxT-s_vq29Q@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: populate_sdk and debian packages problem
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
X-List-Received-Date: Tue, 03 Nov 2015 14:52:21 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 03 November 2015 14:34:33 Martin Townsend wrote:
> I don't know if it worked before, we were using daisy with an external
> toolchain and populate_sdk wasn't working.  I've wanted to go to Fido and
> use the built toolchain so I bit the bullet as all looks good except
> populate_sdk with dpkg.  Anyway, I'll file a bug as it looks like there is
> a problem.

OK, thanks.

> In the meantime if someone could point me in the direction of which class
> files to look at that would be great as I need to get this working asap and
> I don't mind doing some ground work.

Basically:

meta/classes/package_deb.bbclass
meta/classes/rootfs_deb.bbclass

Most of the logic is actually in Dpkg* classes in:

meta/lib/oe/sdk.py
meta/lib/oe/package_manager.py
meta/lib/oe/rootfs.py

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

