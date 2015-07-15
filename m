Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C1D0E009B3; Wed, 15 Jul 2015 02:23:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43E54E0097F
	for <yocto@yoctoproject.org>; Wed, 15 Jul 2015 02:23:11 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga101.jf.intel.com with ESMTP; 15 Jul 2015 02:23:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,479,1432623600"; d="scan'208";a="524612095"
Received: from nbrady-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.20.45])
	by FMSMGA003.fm.intel.com with ESMTP; 15 Jul 2015 02:23:11 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Spriggs, Jim" <J.Spriggs@raylase.de>
Date: Wed, 15 Jul 2015 10:23:09 +0100
Message-ID: <4760612.nIr3tGfN7C@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.0.7-200.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <2238EDC6081C944E97E4EE915AE5CBEC547088C1@EXCHANGE-B.raylase.de>
References: <2238EDC6081C944E97E4EE915AE5CBEC547088C1@EXCHANGE-B.raylase.de>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Is there a fetcher for (dare I say it?) TFS (arrrrgh, I said it...) out there somewhere, or do I have to roll my own?
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
X-List-Received-Date: Wed, 15 Jul 2015 09:23:17 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Jim,

On Wednesday 15 July 2015 09:06:19 Spriggs, Jim wrote:
> [ before anyone tells me to wash my mouth with soap: I actually have to live
> with this junk on a daily basis, so cut me some slack already :-\ ]

Been there! (Not with TFS, but VSS in a previous job...)

> I'm running the dizzy version of bb  on my build-server, and currently
> actively *push* stuff to it from the TFS-server.
>
> Obviously, I'd much rather have the build-server *pull* from the TFS-server,
> probably using the TEE CLC.
> 
> I realize that there's never likely to be any "official" support for TFS,
> and I'll probably have to roll my own fetcher.

FWIW, and I hope Richard doesn't hit me, I think we would accept a fetcher 
implementation into BitBake rather than having to have it floating around 
somewhere externally - you can see we've done that for other proprietary 
version control systems. The challenge with these fetchers though is that 
nobody who regularly maintains BitBake is able to test them, so we are almost 
completely reliant on folks in the community such as yourself to do that 
testing for us after it gets merged (and not send us patches that break it, 
because we probably won't be able to verify that they don't).
 
> The current Bitbake User Manual seems only to describe the standard
> fetchers, so if anyone could point me at a
> clue or two about how to write
> and integrate a custom fetcher, I'd be very grateful indeed. 

I don't think we have anything in the way of documentation on writing your own 
fetcher - the only documentation is the code. That said, using the existing 
fetchers as examples it should be fairly straightforward I would hope.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

