Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEDB4E0141D
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 03:09:47 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 26 Jun 2012 03:09:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="160792027"
Received: from unknown (HELO helios.localnet) ([10.252.120.190])
	by azsmga001.ch.intel.com with ESMTP; 26 Jun 2012 03:09:46 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Tue, 26 Jun 2012 11:09:45 +0100
Message-ID: <10398861.esnekvBoZU@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.3 (Linux/3.2.0-25-generic-pae; KDE/4.8.3; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1206260459040.8547@oneiric>
References: <alpine.DEB.2.02.1206260459040.8547@oneiric>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: <rant>the current yocto FAQ is pretty much valueless</rant>
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 26 Jun 2012 10:09:47 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 26 June 2012 05:09:34 Robert P. J. Day wrote:
>   in other words, a *good* FAQ might be:
> 
> "how can i use the yocto prebuilt toolchains to save build time?"
> 
>   a *bad* FAQ would be:
> 
> "Does the Yocto Project have a special governance model, or is it
> managed as an open source project?"
> 
>   the kicker is that that last question is, in fact, in the yocto FAQ,
> along with a number of other questions that have never been asked by
> anyone in the history of the planet.  i chat about yocto with people
> on a regular basis, and i can assure you, not a single one of them has
> ever asked, "hey, rob, can you explain yocto's governance model?"
> 
>   no, what they ask is, "hey, rob, how can i add a single package to
> an existing target?"  a question that, i should point out, is not
> answered definitively in the existing docs *anywhere*.

You bring up a valid point, but I think it might be worth mentioning that the 
current FAQ evolved from a much less technically-oriented version that was 
produced when the project launched. At that time some people *were* asking the 
kind of questions that you're deriding. I think there's still a section of the 
*non-technical* audience who are interested in answers to those questions.

I suggested to Scott R previously that it might be worth having a project FAQ 
(i.e., what is this project about, what is it intended to be used for etc.) 
and a separate technical FAQ which answers the kind of questions you are 
expecting and that we see often on the mailing list. I think one of the 
reasons that hasn't been done is that we're hoping to introduce a Q&A function 
on the website similar to StackOverflow, where everyone can participate but the 
most appropriate answers bubble up to the top. As yet this has not been 
implemented and I'm not sure when it will be, so it may still be worth looking 
into a static technical FAQ on the wiki until it is.

Scott, what do you think?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

