Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7474E00D9B; Wed,  9 Oct 2019 12:48:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15984E00D8D
	for <yocto@yoctoproject.org>; Wed,  9 Oct 2019 12:48:16 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	09 Oct 2019 12:48:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,277,1566889200"; d="scan'208";a="218784233"
Received: from kwang27-mobl10.gar.corp.intel.com (HELO linux.fritz.box)
	([10.249.75.165])
	by fmsmga004.fm.intel.com with ESMTP; 09 Oct 2019 12:48:13 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Mark Hatle <mark.hatle@kernel.crashing.org>
Date: Thu, 10 Oct 2019 08:48:10 +1300
Message-ID: <314136446.7s1GIYlPCi@linux.fritz.box>
Organization: Intel Corporation
In-Reply-To: <e767d0c7-30ec-8dff-6367-d8720af294e5@kernel.crashing.org>
References: <e767d0c7-30ec-8dff-6367-d8720af294e5@kernel.crashing.org>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web] Having problems instantiating a docker image
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
X-List-Received-Date: Wed, 09 Oct 2019 19:48:18 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Mark

On Wednesday, 9 October 2019 11:59:35 AM NZDT Mark Hatle wrote:
> I've setup the layerindex in the past (without docker).. but I'm attempting to
> follow the current instructions w/o much success.
> 
> I'm trying to use:
> 
> ./dockersetup.py -m 8080:80 --no-https
> 
> It asks me for my email address and then builds the docker images...
> 
> then I get a failure connecting to https://google.com, connectivity check.
> Since my layerindex will never leave my network I don't care about google.. so I
> re-run it with:
> 
> ./dockersetup.py -m 8080:80 --no-https --no-connectivity -r
> 
> re-enter my email address, it rebuilds the docker images...
> 
> it then sits and spins with what looks like a help message for 'exec' as well as:
> 
> Database server may not be ready; will try again.

I guess that's the docker-compose version issue we talked about on IRC - if it is then I should really add a version check.

> If I try to connect to that machine port 8080 with my browser, I get back a "Bad
> Request (400)"

I wonder if something is going wrong with the -m option, since it's not something I've exercised much. Perhaps it's erroneously setting up SSL on that port? Let's see if it recurs once docker-compose is upgraded.

> So something is running, but it's broken.
> 
> Any suggestions on getting this fixed?  Also what will the admin login be once
> it DOES come alive?  I know in the past it had asked me for admin login
> information and such, is the admin login documented somewhere for this docker
> container?

The admin login for the application user is something you get to set at the end of the installation process, but you're getting stuck before that part. You can set it on the command line but there almost certainly will be other issues, so let's fix those first and then you might not have to deal with this part.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



