Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1FADE00BAF; Fri, 23 Jun 2017 00:38:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74E1AE00B58
	for <yocto@yoctoproject.org>; Fri, 23 Jun 2017 00:38:28 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga105.fm.intel.com with ESMTP; 23 Jun 2017 00:38:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,376,1493708400"; d="scan'208";a="117925140"
Received: from lmmelle-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.49.63])
	by fmsmga005.fm.intel.com with ESMTP; 23 Jun 2017 00:38:27 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Robert Yang <liezhi.yang@windriver.com>
Date: Fri, 23 Jun 2017 09:38:26 +0200
Message-ID: <2019040.A3vqNy3AOs@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <2c1bc9f3-b4bd-d61d-62db-3a4347dd6e51@windriver.com>
References: <cover.1497320961.git.liezhi.yang@windriver.com>
	<b03dc586-1a36-291a-2d12-0298a886c7c5@windriver.com>
	<2c1bc9f3-b4bd-d61d-62db-3a4347dd6e51@windriver.com>
MIME-Version: 1.0
Cc: Konrad.Scherer@windriver.com, yocto@yoctoproject.org
Subject: Re: [PATCH V4 03/10] utils.py: remove obsolete dependencies
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
X-List-Received-Date: Fri, 23 Jun 2017 07:38:34 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday, 23 June 2017 5:22:35 AM CEST Robert Yang wrote:
> On 06/23/2017 11:03 AM, Robert Yang wrote:
> > On 06/22/2017 07:54 PM, Paul Eggleton wrote:
> >> How about this - could we start with a setting in the configuration that
> >> specifies that dependencies should be updated automatically, and if not
> >> set just gives a warning if the dependencies are not the same? We can
> >> then decide how to handle it when we see the warnings we're getting in
> >> the OE index.
> >
> > Sounds good to me, I will fix it in V5.
> 
> After more thinking, I will use:
> # Remove layer dependencies if it is not in conf/layer.conf
> REMOVE_LAYER_DEPENDENCIES = False
> 
> Currently it does can add dependencies from conf/layer.conf, but no remove,
> so use REMOVE_LAYER_DEPENDENCIES makes it more clear.

Sounds good to me.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

