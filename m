Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C615FE00CD9; Thu, 26 Jul 2018 03:43:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BA6FE00C82
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2018 03:43:44 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	26 Jul 2018 03:43:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,404,1526367600"; d="scan'208";a="70073616"
Received: from jfkehoe-mobl.amr.corp.intel.com (HELO localhost.localdomain)
	([10.252.50.133])
	by orsmga003.jf.intel.com with ESMTP; 26 Jul 2018 03:43:40 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: MOHAMMAD RASIM <mohammad.rasim96@gmail.com>
Date: Thu, 26 Jul 2018 12:43:39 +0200
Message-ID: <2256317.g0Ya7sYkEM@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <91623c72-a336-09d8-26e6-c2dd14355045@gmail.com>
References: <91623c72-a336-09d8-26e6-c2dd14355045@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to force build of a blacklisted recipe?
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
X-List-Received-Date: Thu, 26 Jul 2018 10:43:44 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 26 July 2018 11:16:02 AM CEST MOHAMMAD RASIM wrote:
> I'm trying to build dvb-apps recipe which is blacklisted and was removed 
> from the newer openembedded releases, but it exist in the release I work 
> with
> 
> Now when I try to build the recipe I get this error:
> 
>  >ERROR: 
> /home/oealliancebuilder/openpli-oe-core/meta-openembedded/meta-multimedia/
> recipes-dvb/dvb-apps/dvb-apps_1.1.1.bb 
> was skipped: Recipe is blacklisted: Fails to build with RSS 
> http://errors.yoctoproject.org/Errors/Details/130603/ - the recipe will 
> be removed on 2017-09-01 unless the issue is fixed
> 
> But I want to tell openembedded to override the blacklisting and build 
> the recipe anyway so I can investigate and hopefully fix the recipe. How 
> can I do that ?

You should be able to just set PNBLACKLIST[dvb-apps] = "" in a 
dvb-apps_%.bbappend for the recipe in your own layer, and then the 
blacklisting will be disabled for that recipe.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



