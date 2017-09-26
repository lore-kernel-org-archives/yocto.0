Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EAB5E00C62; Tue, 26 Sep 2017 12:59:16 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CBE3E00C62
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 12:59:13 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	26 Sep 2017 12:59:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,441,1500966000"; d="scan'208";a="1018730773"
Received: from scchinx-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.141.101])
	by orsmga003.jf.intel.com with ESMTP; 26 Sep 2017 12:59:10 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Philip Balister <philip@balister.org>
Date: Wed, 27 Sep 2017 08:59:06 +1300
Message-ID: <6052844.NaO1fkoddp@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <ef0eee81-2614-5d79-d6b9-344ab696fbd7@balister.org>
References: <1506287141-3998-1-git-send-email-maxin.john@intel.com>
	<CAMhs6Yzx+emQw40AvbrHRA2_MmOXiods5=B+2V-sYSW5nxyg_g@mail.gmail.com>
	<ef0eee81-2614-5d79-d6b9-344ab696fbd7@balister.org>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-java][PATCH 5/6] bdwgc: import from meta-oe
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
X-List-Received-Date: Tue, 26 Sep 2017 19:59:16 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, 27 September 2017 1:16:19 AM NZDT Philip Balister wrote:
> Does the layer index let us search for recipes that depend on another
> recipe?

At the moment, no. I have explicitly not done anything with dependencies 
because they can be dependent on configuration (e.g. DISTRO_FEATURES, 
PACKAGECONFIG) and I haven't taken the time to figure out how to introspect 
and present such optional dependencies.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

