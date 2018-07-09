Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF528E00D8E; Mon,  9 Jul 2018 01:34:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46536E00CA6
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2018 01:34:11 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	09 Jul 2018 01:34:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,329,1526367600"; d="scan'208";a="70718264"
Received: from gosinald-mobl.ger.corp.intel.com (HELO localhost.localdomain)
	([10.252.54.166])
	by fmsmga001.fm.intel.com with ESMTP; 09 Jul 2018 01:34:08 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Robert Yang <liezhi.yang@windriver.com>
Date: Mon, 09 Jul 2018 10:34:07 +0200
Message-ID: <21268191.2cf1WCTquc@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <8be7c6c9057c9b1d461aacfde8459adeddb348d5.1531109397.git.liezhi.yang@windriver.com>
References: <cover.1531109397.git.liezhi.yang@windriver.com>
	<8be7c6c9057c9b1d461aacfde8459adeddb348d5.1531109397.git.liezhi.yang@windriver.com>
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
X-List-Received-Date: Mon, 09 Jul 2018 08:34:13 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert,

On Monday, 9 July 2018 6:11:30 AM CEST Robert Yang wrote:
> Fixed:
> Assume there is no master branch in hello layer:
> $ update.py -l hello -b master
> INFO: Skipping update of layer hello - branch master doesn't exist
> 
> This is correct since hello layer doesn't have master branch, but when --nocheckout:
> $ update.py -l hello -b master  --nocheckout
> [snip]
> INFO: Sorting layers for branch mater:
> WARNING: Cannot find required collections on branch master:
> WARNING: hello: LAYERDEPENDS: <snip>
> 
> This is incorrect, this patch fixed the problem, now it skips it since the
> branch doesn't exists when --nocheckout.

This fix doesn't seem right. The intention of --nocheckout is to not check anything
out, i.e. use whatever HEAD is in the current repository. It wouldn't be correct
to get the commit from the origin in this case.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



