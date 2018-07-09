Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 766D2E00E12; Mon,  9 Jul 2018 02:41:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3C6BE00D8E
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2018 02:41:02 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	09 Jul 2018 02:41:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,329,1526367600"; d="scan'208";a="243702251"
Received: from gosinald-mobl.ger.corp.intel.com (HELO localhost.localdomain)
	([10.252.54.166])
	by fmsmga005.fm.intel.com with ESMTP; 09 Jul 2018 02:41:00 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Robert Yang <liezhi.yang@windriver.com>
Date: Mon, 09 Jul 2018 11:40:59 +0200
Message-ID: <2221590.FpTxYoP4FW@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <ee730a9c-c778-d9ca-18c6-66a3d9c09e17@windriver.com>
References: <cover.1531109397.git.liezhi.yang@windriver.com>
	<6127064.6tErUYcu2e@localhost.localdomain>
	<ee730a9c-c778-d9ca-18c6-66a3d9c09e17@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web][PATCH 4/4] update.py: check whether branch existed when nocheckout
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
X-List-Received-Date: Mon, 09 Jul 2018 09:41:03 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, 9 July 2018 10:45:58 AM CEST Robert Yang wrote:
> On 07/09/2018 04:36 PM, Paul Eggleton wrote:
> > On Monday, 9 July 2018 10:34:07 AM CEST Paul Eggleton wrote:
> >> On Monday, 9 July 2018 6:11:30 AM CEST Robert Yang wrote:
> >>> Fixed:
> >>> Assume there is no master branch in hello layer:
> >>> $ update.py -l hello -b master
> >>> INFO: Skipping update of layer hello - branch master doesn't exist
> >>>
> >>> This is correct since hello layer doesn't have master branch, but when --nocheckout:
> >>> $ update.py -l hello -b master  --nocheckout
> >>> [snip]
> >>> INFO: Sorting layers for branch mater:
> >>> WARNING: Cannot find required collections on branch master:
> >>> WARNING: hello: LAYERDEPENDS: <snip>
> >>>
> >>> This is incorrect, this patch fixed the problem, now it skips it since the
> >>> branch doesn't exists when --nocheckout.
> >>
> >> This fix doesn't seem right. The intention of --nocheckout is to not check anything
> >> out, i.e. use whatever HEAD is in the current repository. It wouldn't be correct
> >> to get the commit from the origin in this case.
> > 
> > Actually, on a second reading of the change. It's not obvious why this is needed but I suppose the comment clarifies it.
> 
> Do I need update commit message, please ?

No, it's OK, I'll merge as-is.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



