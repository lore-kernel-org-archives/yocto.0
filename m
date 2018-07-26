Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35642E00CD5; Wed, 25 Jul 2018 23:26:35 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24233E00C82
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2018 23:26:33 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	25 Jul 2018 23:26:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,404,1526367600"; d="scan'208";a="60789953"
Received: from sshuber-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
	([10.252.32.108])
	by orsmga006.jf.intel.com with ESMTP; 25 Jul 2018 23:26:32 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: MOHAMMAD RASIM <mohammad.rasim96@gmail.com>
Date: Thu, 26 Jul 2018 08:26:30 +0200
Message-ID: <4930421.VRI8zmqDti@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <14049c37-db6d-c5b3-b60c-4cdfb00a6f44@gmail.com>
References: <1aa737c1-9930-4a32-2060-6c6103142d88@gmail.com>
	<14049c37-db6d-c5b3-b60c-4cdfb00a6f44@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: can bitbake build offline ?
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
X-List-Received-Date: Thu, 26 Jul 2018 06:26:35 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Mohammad,

If it's failing during parsing that means you still have a recipe that does 
not have a proper SRCREV set, which you need to fix as described by the page 
that Alex linked. The error will be reporting which recipe that is.

Cheers,
Paul

On Thursday, 26 July 2018 5:44:26 AM CEST MOHAMMAD RASIM wrote:
> I tried that and bitbake still fails when disabling the network
> 
> 
> On 07/21/2018 11:42 AM, Alexander Kanavin wrote:
> > This page has a tip on what might be causing 'git ls-remote':
> >
> > https://wiki.yoctoproject.org/wiki/
How_do_I#Q:_How_do_I_create_my_own_source_download_mirror_.3F
> >
> > Alex
> >
> > 2018-07-21 10:32 GMT+02:00 MOHAMMAD RASIM <mohammad.rasim96@gmail.com>:
> >> Hi, is there a way I can run a bitbake build offline? I have all the
> >> required sources of the target in the sources directory, and I have built
> >> the target multiple times with internet connection, but when I build 
offline
> >> it fails because it needs internet access during parsing recipes.
> >> Can I tell bitbake to skip running `git ls-remote` during parsing recipes 
so
> >> I can build offline?
> >>
> >> Thanks
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> 
> 


-- 

Paul Eggleton
Intel Open Source Technology Centre



