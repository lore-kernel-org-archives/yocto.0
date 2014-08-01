Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78D01E005BB; Fri,  1 Aug 2014 02:53:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51825E0056A
	for <yocto@yoctoproject.org>; Fri,  1 Aug 2014 02:53:22 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP; 01 Aug 2014 02:53:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="366647505"
Received: from pwarusav-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.170])
	by FMSMGA003.fm.intel.com with ESMTP; 01 Aug 2014 02:50:10 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Fri, 01 Aug 2014 10:53:19 +0100
Message-ID: <34318024.nU0i3jDByz@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.15.6-200.fc20.x86_64; KDE/4.13.3; x86_64; ; )
In-Reply-To: <alpine.LFD.2.11.1408010535410.15871@localhost>
References: <alpine.LFD.2.11.1408010535410.15871@localhost>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: what is the long-term plan for YP and eglibc?
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
X-List-Received-Date: Fri, 01 Aug 2014 09:53:26 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert,

On Friday 01 August 2014 05:38:07 Robert P. J. Day wrote:
>   at the YP resources page for eglibc:
> 
> https://www.yoctoproject.org/tools-resources/projects/eglibc
> 
> one reads:
> 
> "The Yocto Project encourages interested parties to get involved with
> the EGLIBC project. More information is at http://eglibc.org."

That might now be out of date in view of upstream developments.

>   but following that link, one learns:
> 
> "EGLIBC is no longer developed and such goals are now being addressed
> directly in GLIBC."

The long-term (even medium-term) plan is to switch back to glibc. We do still 
rely on some of the functionality in eglibc that hasn't been incorporated back 
into glibc though, e.g. poky-tiny uses eglibc's fine-grained component 
selection, so it's not necessarily a straightforward switch. Mostly I think 
we're waiting on some of Khem's (and probably other folks) time to sort this 
out.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

