Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80F34E00779; Thu, 26 Feb 2015 12:29:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4295BE0074C
	for <yocto@yoctoproject.org>; Thu, 26 Feb 2015 12:29:05 -0800 (PST)
Received: from [99.240.204.5] (port=54316 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1YR53N-00031u-Kz; Thu, 26 Feb 2015 15:29:01 -0500
Date: Thu, 26 Feb 2015 15:29:01 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <3318322.uVudHOlJ9O@peggleto-mobl5.ger.corp.intel.com>
Message-ID: <alpine.LFD.2.11.1502261526130.5576@localhost>
References: <alpine.LFD.2.11.1502250351310.26693@localhost>
	<20150225134406.GH8949@mentor.com>
	<alpine.LFD.2.11.1502260402300.27160@localhost>
	<3318322.uVudHOlJ9O@peggleto-mobl5.ger.corp.intel.com>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: yocto@yoctoproject.org
Subject: Re: kernel manual: confusing coverage of FILESEXTRAPATHS_prepend
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
X-List-Received-Date: Thu, 26 Feb 2015 20:29:07 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 26 Feb 2015, Paul Eggleton wrote:

> Our policy in OE-Core (and the layers under meta-openembedded) is to
> move away from files/ to ${BPN} for a bit of consistency - if you
> use ${BPN} it then doesn't matter if you have more than one recipe
> in a directory, the files for each recipe are still kept separate
> instead of a files/ directory with a mixture of files for different
> recipes. ${BP} would only be used for patches that are specific to a
> version where multiple versioned recipes are being provided, leading
> to multiple versions of the same files needing to be present.

  ok, so ... ${BPN} for single-recipe directories *or* common files
across multi-version recipes, and ${BP} for version-specific stuff?
that's the way i'm reading that. that's good, it's the sort of thing
that would be good in a "style guide."

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

