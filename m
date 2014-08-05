Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43DFEE00799; Tue,  5 Aug 2014 05:01:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 159F2E004DD
	for <yocto@yoctoproject.org>; Tue,  5 Aug 2014 05:01:05 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 05 Aug 2014 04:55:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,804,1400050800"; d="scan'208";a="583628381"
Received: from tskannan-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.122])
	by orsmga002.jf.intel.com with ESMTP; 05 Aug 2014 05:01:03 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Tue, 05 Aug 2014 13:01:01 +0100
Message-ID: <175908746.VFUipfJBL4@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.15.7-200.fc20.x86_64; KDE/4.13.3; x86_64; ; )
In-Reply-To: <alpine.LFD.2.11.1408040548310.4162@localhost>
References: <alpine.LFD.2.11.1408040548310.4162@localhost>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: what are the *required* variables for defining a new distro?
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
X-List-Received-Date: Tue, 05 Aug 2014 12:01:18 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert,

On Monday 04 August 2014 05:52:11 Robert P. J. Day wrote:
>   i asked about this on OE list but since this affects the yocto dev
> manual, i thought i'd ask here as well as i can fold the result into
> another doc patch.
> 
>   section 5.10 of dev manual:
> 
> http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#creating-> your-own-distribution
> 
> claims:
> 
>   Your [new distro] configuration file needs to set the following
> required variables:
> 
>      DISTRO_NAME
>      DISTRO_VERSION
> 
>   i don't think that's true -- i don't think it's *required* for a
> distro conf file to set DISTRO_NAME. can someone verify what variables
> are mandatory for a new distro configuration file?

The bottom line is, if you mean "which variables must I set in my distro config 
or my build will blow up?" - there aren't any; we already have reasonable 
defaults for all of the critical stuff, so the distro config mostly only needs 
to change the things you want to be different. DISTRO_NAME and DISTRO_VERSION 
are the minimum of variables that you'd *want* to set, though.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

