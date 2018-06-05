Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECD4EE00E57; Tue,  5 Jun 2018 16:26:36 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FF4CE00E49
	for <yocto@yoctoproject.org>; Tue,  5 Jun 2018 16:26:36 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	05 Jun 2018 16:26:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,479,1520924400"; d="scan'208";a="205625379"
Received: from tuzhen-mobl.ccr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.70.49])
	by orsmga004.jf.intel.com with ESMTP; 05 Jun 2018 16:26:33 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Yi Zhao <yi.zhao@windriver.com>
Date: Wed, 06 Jun 2018 11:26:30 +1200
Message-ID: <2192262.kuo8ijSF3A@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <1527836411-20020-2-git-send-email-yi.zhao@windriver.com>
References: <1527836411-20020-1-git-send-email-yi.zhao@windriver.com>
	<1527836411-20020-2-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web][PATCH 2/2] rrs_upstream_history.py: fix set_regexes function
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
X-List-Received-Date: Tue, 05 Jun 2018 23:26:37 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Yi

On Friday, 1 June 2018 7:00:11 PM NZST Yi Zhao wrote:
> REGEX, REGEX_URI and GITTAGREGEX are replaced by UPSTREAM_CHECK_REGEX,
> UPSTREAM_CHECK_URI and UPSTREAM_CHECK_GITTAGREGEX

Merged both of these, thanks.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



