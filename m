Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74845E00D5A; Tue, 26 Apr 2016 19:37:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14D25E00D56
	for <yocto@yoctoproject.org>; Tue, 26 Apr 2016 19:37:39 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga103.jf.intel.com with ESMTP; 26 Apr 2016 19:37:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,539,1455004800"; d="scan'208";a="953698093"
Received: from wlee9-mobl3.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.141.75])
	by fmsmga001.fm.intel.com with ESMTP; 26 Apr 2016 19:37:36 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Wed, 27 Apr 2016 14:37:34 +1200
Message-ID: <2379067.IVpRXBJUD2@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.4.7-300.fc23.x86_64; KDE/4.14.18; x86_64; ;
	)
In-Reply-To: <571993C7.6080504@mlbassoc.com>
References: <1461157892-9156-1-git-send-email-piotr.lewicki@elfin.de>
	<CAMKF1spXb_kW0yzD1qVL6P31gz7uK0AG1Oma+c-KZNu5JSSpiA@mail.gmail.com>
	<571993C7.6080504@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] replace libav with ffmpeg and add a patch fixing building omxplayer after 3645b27848edd0d873925f5fa2a7686f3ff9eeb9
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
X-List-Received-Date: Wed, 27 Apr 2016 02:37:42 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Fri, 22 Apr 2016 05:00:23 Gary Thomas wrote:
> On 2016-04-22 01:31, Khem Raj wrote:
> > resend this patch to OE-Core mailing list. and also add
> > Upstream-Status: to patch
> 
> Actually, it should go to the RaspberryPi mailing list, not OE-core

There isn't such a thing - the yocto list is currently where patches to the 
meta-raspberrypi layer are supposed to be sent (though the subject should have 
been prefixed).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

