Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43C14E00CF1; Tue, 26 Sep 2017 15:22:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5E16E00C62
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 15:22:51 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga105.fm.intel.com with ESMTP; 26 Sep 2017 15:22:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,441,1500966000"; d="scan'208";a="316555832"
Received: from scchinx-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.141.101])
	by fmsmga004.fm.intel.com with ESMTP; 26 Sep 2017 15:22:47 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Philip Balister <philip@balister.org>
Date: Wed, 27 Sep 2017 11:22:43 +1300
Message-ID: <3458014.5EK98WmiFs@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <e24f4051-eb8e-f5b2-3ec0-0b6fc4a2b08c@balister.org>
References: <1506287141-3998-1-git-send-email-maxin.john@intel.com>
	<6052844.NaO1fkoddp@peggleto-mobl.ger.corp.intel.com>
	<e24f4051-eb8e-f5b2-3ec0-0b6fc4a2b08c@balister.org>
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
X-List-Received-Date: Tue, 26 Sep 2017 22:22:52 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, 27 September 2017 11:14:21 AM NZDT Philip Balister wrote:
> On 09/26/2017 03:59 PM, Paul Eggleton wrote:
> > On Wednesday, 27 September 2017 1:16:19 AM NZDT Philip Balister wrote:
> >> Does the layer index let us search for recipes that depend on another
> >> recipe?
> > 
> > At the moment, no. I have explicitly not done anything with dependencies 
> > because they can be dependent on configuration (e.g. DISTRO_FEATURES, 
> > PACKAGECONFIG) and I haven't taken the time to figure out how to introspect 
> > and present such optional dependencies.
> 
> Thanks Paul. I was wondering since I suspect that over time, the
> question we are asking will become more important. We already ran into a
> similar issue with sip.

Right, the layer index really is the right place to be doing this. I've filed a
bug:

  https://bugzilla.yoctoproject.org/show_bug.cgi?id=12129
 
> Maybe it is time for oe-core-not-so-common-depends?

I'd think we'd want a bit more definition around what goes into such a layer,
that title is pretty vague.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

