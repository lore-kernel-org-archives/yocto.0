Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2748DE00BC0; Thu, 22 Jun 2017 04:33:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEE13E00B8B
	for <yocto@yoctoproject.org>; Thu, 22 Jun 2017 04:33:51 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	22 Jun 2017 04:33:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,373,1493708400"; d="scan'208";a="102401422"
Received: from wbosek-mobl3.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.63.90])
	by orsmga002.jf.intel.com with ESMTP; 22 Jun 2017 04:33:49 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Robert Yang <liezhi.yang@windriver.com>
Date: Thu, 22 Jun 2017 13:33:48 +0200
Message-ID: <3824633.FRioWf2P8i@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <a25f9998-b0d8-058b-ca2f-302d1cf47022@windriver.com>
References: <cover.1497320961.git.liezhi.yang@windriver.com>
	<2010745.Jk45bzNWZ4@peggleto-mobl.ger.corp.intel.com>
	<a25f9998-b0d8-058b-ca2f-302d1cf47022@windriver.com>
MIME-Version: 1.0
Cc: Konrad.Scherer@windriver.com, yocto@yoctoproject.org
Subject: Re: [PATCH V4 06/10] update.py: update layers orderly
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
X-List-Received-Date: Thu, 22 Jun 2017 11:33:54 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert,

On Thursday, 22 June 2017 1:04:23 PM CEST Robert Yang wrote:
> On 06/21/2017 10:21 PM, Paul Eggleton wrote:
> > On Tuesday, 13 June 2017 4:36:47 AM CEST Robert Yang wrote:
> >> --- a/layerindex/update_layer.py
> >> +++ b/layerindex/update_layer.py
> ...
> >> +def get_layer_var(config_data, var):
> >> +    collection = config_data.getVar('BBFILE_COLLECTIONS', True)
> >
> > This makes the assumption that the layer.conf only adds one collection
> > to BBFILE_COLLECTIONS. Probably a valid assumption 99.9% of the time these
> > days, but it is worth noting.
> 
> Should we check all BBFILE_COLLECTIONS, please ?

I would say let's split the value and use the first one, but if there is more 
than one then warn e.g. "Multiple collections found, handling first one (%s) 
only" but otherwise continue processing. That way at least we'll know if this 
situation occurs.

> >> +def explode_dep_versions2(bitbakepath, deps):
> >> +    bblib = bitbakepath + '/lib'
> >> +    if not bblib in sys.path:
> >> +        sys.path.insert(0, bblib)
> >> +    import bb.utils
> >> +    return bb.utils.explode_dep_versions2(deps)
> >
> > I'm not particularly happy with this (the wrapper nor calling bitbake code
> 
> update.py needs explode_dep_versions2 to get dependencies and then calculate
> them, I had tried to move the code into update_layer.py, and let
> update_layer.py print explode_dep_versions2() to update.py, but it is a
> OderedDic, and not easy to process it manually, so I leave the code in
> update.py.

Right, I understand the limitations and I don't really have a better 
alternative unfortunately, so we'll go with your current implementation. We 
may need to re-evaluate this in future at least structure-wise if we find the 
need to call other bitbake code in a similar way.

Cheers,
Paul


-- 

Paul Eggleton
Intel Open Source Technology Centre

