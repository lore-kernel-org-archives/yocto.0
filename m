Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44CC4E00C2E; Mon, 17 Jul 2017 07:38:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EC16E00C2E
	for <yocto@yoctoproject.org>; Mon, 17 Jul 2017 07:38:13 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga105.fm.intel.com with ESMTP; 17 Jul 2017 07:38:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,374,1496127600"; d="scan'208";a="879719619"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.119])
	by FMSMGA003.fm.intel.com with ESMTP; 17 Jul 2017 07:38:12 -0700
Message-ID: <1500302882.5349.110.camel@linux.intel.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 17 Jul 2017 09:48:02 -0500
In-Reply-To: <CAJTo0LYvGfA-QxNt42AQrT71ExA5Raf=VP6mxTOwPua8TCViZA@mail.gmail.com>
References: <1500278455-5712-1-git-send-email-pierre.ficheux@smile.fr>
	<1500300247.5349.105.camel@linux.intel.com>
	<CAJTo0LYvGfA-QxNt42AQrT71ExA5Raf=VP6mxTOwPua8TCViZA@mail.gmail.com>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] Added missing CPPFLAGS/CFLAGS/LDFLAGS in sample recipe for morty branch
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
X-List-Received-Date: Mon, 17 Jul 2017 14:38:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2017-07-17 at 15:30 +0100, Burton, Ross wrote:
> 
> On 17 July 2017 at 15:04, Leonardo Sandoval
> <leonardo.sandoval.gonzalez@linux.intel.com> wrote:
>         master has the second line (LDFLAGS) but not the first one
>         (CPPFLAGS and
>         CFLAGS) so the problem may also be present on master. Would
>         you mind
>         checking this and sent patches to the poky mailing list?
>         
> 
> The GNU_HASH warning is triggered by ignoring LDFLAGS.

Got it, so definitely LDFLAGS var is missing, not sure if the rest are
necessary for this simple hello world recipe.
Leo
> 
> 
> Ross



