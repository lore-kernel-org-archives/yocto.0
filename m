Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11797E00BC0; Thu, 22 Jun 2017 04:54:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0814E00B8B
	for <yocto@yoctoproject.org>; Thu, 22 Jun 2017 04:54:25 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	22 Jun 2017 04:54:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,373,1493708400"; d="scan'208";a="1143771351"
Received: from wbosek-mobl3.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.63.90])
	by orsmga001.jf.intel.com with ESMTP; 22 Jun 2017 04:54:23 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Robert Yang <liezhi.yang@windriver.com>
Date: Thu, 22 Jun 2017 13:54:22 +0200
Message-ID: <2617411.3bLWJbXsiM@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <d81b63c1-cd74-0c1c-eed5-443ba3e9e4de@windriver.com>
References: <cover.1497320961.git.liezhi.yang@windriver.com>
	<27239647.GeoKIh8NCA@peggleto-mobl.ger.corp.intel.com>
	<d81b63c1-cd74-0c1c-eed5-443ba3e9e4de@windriver.com>
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
X-List-Received-Date: Thu, 22 Jun 2017 11:54:29 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 22 June 2017 12:47:31 PM CEST Robert Yang wrote:
> On 06/21/2017 05:06 PM, Paul Eggleton wrote:
> > So I do see the need to clear out old dependency values when your list of
> > dependencies is coming entirely from LAYERDEPENDS, however if you have only
> > manually added dependencies and LAYERDEPENDS is not complete (as is often the
> > case in the OE layer index), will this automatically remove those? If so I
> 
> The dependencies will be removed if it is not in conf/layer.conf.
> 
> > think we're going to have to come up with some mechanism to avoid that.
> > Probably the easiest one would be to avoid touching the dependencies unless
> > LAYERDEPENDS actually changes. Of course if that means we're going to store
> > the previous LAYERDEPENDS value somewhere to compare to, we'd need to avoid it
> > triggering initially when none of those values are set.
> 
> Why not fix conf/layer.conf rather than fix it from database ? If
> conf/layer.conf is wrong, we would meet problems elsewhere. 

Up until now it hasn't caused any issues other than not getting an error
up front from bitbake when a dependencies are missing, so it can easily go
unnoticed (particularly when users follow manual instructions or use existing
configurations rather than an automated tool that pays attention to
LAYERDEPENDS).

> The database
> should obey local.conf when mismatches, otherwise, this would confuse
> users a lot when they want to update LAYERDEPENDS.

As I indicated, I agree that if LAYERDEPENDS gets updated then the
dependencies in the database should get updated. My concern is updating
them if LAYERDEPENDS has not changed and it simply happens to have
a difference to what is in the database (most importantly if it has less
dependencies specified).

> I'm glad to fix oe-classic's LAYERDEPENDS issues if they are wrong.

Well, it's not so much OE-Classic as every single layer in the index,
maintained by a number of different maintainers. I agree in the long term we
do want people to fix their dependencies. The trouble is we don't
even know the size of the problem at the moment, and if it's widespread
then we'll end up dropping dependencies potentially leading to errors during
parsing.

How about this - could we start with a setting in the configuration that
specifies that dependencies should be updated automatically, and if not
set just gives a warning if the dependencies are not the same? We can
then decide how to handle it when we see the warnings we're getting in
the OE index.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

