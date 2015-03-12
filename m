Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2BE22E00832; Thu, 12 Mar 2015 04:30:25 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91913E0034E
	for <yocto@yoctoproject.org>; Thu, 12 Mar 2015 04:30:22 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 12 Mar 2015 04:30:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,388,1422950400"; d="scan'208";a="697697377"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.24.97])
	by orsmga002.jf.intel.com with ESMTP; 12 Mar 2015 04:30:21 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Thu, 12 Mar 2015 11:30:20 +0000
Message-ID: <1617338.aDn8A884OZ@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.7-100.fc20.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <alpine.LFD.2.11.1503120418370.17812@localhost>
References: <alpine.LFD.2.11.1503120418370.17812@localhost>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: should bitbake manual mention other task flags like file-checksums, ...?
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
X-List-Received-Date: Thu, 12 Mar 2015 11:30:25 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert,

On Thursday 12 March 2015 04:22:58 Robert P. J. Day wrote:
>   bitbake user manual, section 3.6, provides a list of task flags, but
> there are a few others that aren't mentioned there, is it worth adding
> them or are they adequately obscure that readers don't need to know
> about them?
> 
> * [file-checksums]

So, I'm in two minds about this one - it's largely an internal implementation 
detail, but if we did document how the file checksum stuff works then we should 
document the flag since most of the implementation for that is actually in 
BitBake - IIRC the only missing bit that is in OE is the bit that actually 
sets this flag on the appropriate task (do_fetch for OE).

> * [lockfiles]

Yes this one should be mentioned I think.

> * [sstate-inputdirs]
> * [sstate-outputdirs]
> * [sstate-plaindirs]
> * [sstate-lockfile-shared]

Shared state is pretty much entirely an OE concept rather than a BitBake one 
and thus these wouldn't be appropriate for the BitBake manual, but they ought 
to be covered in the shared state documentation in the Yocto Project Reference 
manual - they are at least referred to in examples but at the moment there is 
no actual reference for them (which we should have).
 
> and i already mentioned that [recideptask] was missing from that list.
> are there any others?

It's not unlikely that there are others, yes.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

