Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE67EE00B8B; Mon, 18 Jan 2016 03:26:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48DA9E00AB9
	for <yocto@yoctoproject.org>; Mon, 18 Jan 2016 03:26:39 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga102.fm.intel.com with ESMTP; 18 Jan 2016 03:26:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,312,1449561600"; d="scan'208";a="31487985"
Received: from stan94-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.180.176])
	by fmsmga004.fm.intel.com with ESMTP; 18 Jan 2016 03:26:38 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Reshetova, Elena" <elena.reshetova@intel.com>
Date: Tue, 19 Jan 2016 00:26:36 +1300
Message-ID: <1576691.CfaMhytqa9@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.3.3-300.fc23.x86_64; KDE/4.14.14; x86_64; ;
	)
In-Reply-To: <2236FBA76BA1254E88B949DDB74E612B41A51178@IRSMSX102.ger.corp.intel.com>
References: <2236FBA76BA1254E88B949DDB74E612B41A4F981@IRSMSX102.ger.corp.intel.com>
	<3835688.JcI4W2YYKz@peggleto-mobl.ger.corp.intel.com>
	<2236FBA76BA1254E88B949DDB74E612B41A51178@IRSMSX102.ger.corp.intel.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Package naming "exceptions" in Yocto
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
X-List-Received-Date: Mon, 18 Jan 2016 11:26:44 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Mon, 18 Jan 2016 11:14:31 Reshetova, Elena wrote:
> > FYI we do have meta/conf/distro/include/distro_alias.inc which sets
> 
> DISTRO_PN_ALIAS for each recipe, which is intended to help map to the names
> used in other distros. Will that work?
> 
> Yes, I think this is exactly what I was hoping to find! Great that you
> already have smth line this in place :)
>  Just one question: how is this value supposed to be fetched in a class? I
> could not find any usage example through the code. Is it set for each
> package automatically or do I need to enable smth?

create_distro_packages_list() in meta/lib/oe/distro_check.py is the only 
existing code that reads those values that I'm aware of, but that may not be 
in the form that you need it.

One thing you'll definitely need to do is to actually include the file in your 
configuration i.e.:

require conf/distro/include/distro_alias.inc

After that you should just be able to access DISTRO_PN_ALIAS like any other 
recipe-specific variable provided you're doing so in the context of a recipe 
(e.g. within a task for the recipe you wish to query the value for).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

