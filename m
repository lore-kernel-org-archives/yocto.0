Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 843DAE00D05; Tue, 24 Oct 2017 15:10:29 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 122D8E00CFF
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 15:10:28 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 Oct 2017 15:10:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,430,1503385200"; d="scan'208";a="164508746"
Received: from sooi8-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.148.122])
	by orsmga005.jf.intel.com with ESMTP; 24 Oct 2017 15:10:25 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Amanda Brindle <amanda.r.brindle@intel.com>
Date: Wed, 25 Oct 2017 11:10:22 +1300
Message-ID: <5353522.o5ISVOX0iu@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <a2a29050d3b05b61ce7ef1c1d46fce40f1dbe7d1.1508881202.git.amanda.r.brindle@intel.com>
References: <cover.1508881202.git.amanda.r.brindle@intel.com>
	<a2a29050d3b05b61ce7ef1c1d46fce40f1dbe7d1.1508881202.git.amanda.r.brindle@intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web][patch v3 1/1] Send email notification on publication
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
X-List-Received-Date: Tue, 24 Oct 2017 22:10:29 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Amanda,

On Wednesday, 25 October 2017 10:49:42 AM NZDT Amanda Brindle wrote:
> When publishing a layer, send an email notification to all of that
> layer's maintainers.
> 
> Fixes [YOCTO #11208]

This change looks good to me - I'll wait a day or so for other reviews and 
merge after that.

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

