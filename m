Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC41DE00B3D; Mon,  3 Oct 2016 15:54:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3035AE008D3
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2016 15:54:20 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga104.jf.intel.com with ESMTP; 03 Oct 2016 15:54:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,292,1473145200"; d="scan'208";a="1049071281"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com)
	([10.255.185.151])
	by fmsmga001.fm.intel.com with ESMTP; 03 Oct 2016 15:54:18 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Liam R. Howlett" <Liam.Howlett@windriver.com>
Date: Tue, 04 Oct 2016 11:54:16 +1300
Message-ID: <3958786.QOXee2gzd6@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.5-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <1474914338-26310-9-git-send-email-Liam.Howlett@WindRiver.com>
References: <1474914338-26310-1-git-send-email-Liam.Howlett@WindRiver.com>
	<1474914338-26310-9-git-send-email-Liam.Howlett@WindRiver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web][PATCH 08/10] layerindex: Add collection and version to layerbranch
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
X-List-Received-Date: Mon, 03 Oct 2016 22:54:33 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Mon, 26 Sep 2016 14:25:36 Liam R. Howlett wrote:
> Collection and version will be pulled from the layer.conf if it exists
> and dependencies will be resolved by first checking for layers with the
> dependency name and then checking for collections.  It is necessary to
> shutdown tinfoil to avoid bitbake complaining about multiple instances.

I'm not sure I understand why though, and there's not an explanation given 
here. What you're doing as a workaround only works by chance and I suspect it 
will break horribly when we do the tinfoil2 refactor in the next release (it's 
not expected that you'd have datastores still around and be parsing recipes 
when tinfoil has been shut down), so we *really* need to try to avoid shutting 
down like this. Can you explain what you saw?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

