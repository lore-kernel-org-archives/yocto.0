Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83D75E00AA6; Wed, 29 Jul 2015 01:59:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7991E00A86
	for <yocto@yoctoproject.org>; Wed, 29 Jul 2015 01:59:22 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga101.jf.intel.com with ESMTP; 29 Jul 2015 01:59:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,569,1432623600"; d="scan'208";a="615065345"
Received: from kzamkov-mobl1.ccr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.21.165])
	by orsmga003.jf.intel.com with ESMTP; 29 Jul 2015 01:59:20 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Ryan Soussan <ryansvb91@gmail.com>
Date: Wed, 29 Jul 2015 09:59:20 +0100
Message-ID: <1980700.xQNOpmtgIP@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.0.8-200.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <CAMeZNHTxCpwOnpSCB6R=Tfc7YA-Fn2H6zDbgP0g2PfZsbzmf3Q@mail.gmail.com>
References: <CAMeZNHTxCpwOnpSCB6R=Tfc7YA-Fn2H6zDbgP0g2PfZsbzmf3Q@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Including Libavformat
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
X-List-Received-Date: Wed, 29 Jul 2015 08:59:39 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Ryan,

On Tuesday 28 July 2015 11:10:49 Ryan Soussan wrote:
> Is there a way to include libavformat without including ffmpeg or libav?
> Libav and ffmpeg seem to both require a commericial license and we're
> trying to avoid that.

One way would be to configure libav/ffmpeg appropriately (see libav/ffmpeg 
documentation) and then in the absence of commercial license-requiring 
components, you could presumably clear the LICENSE_FLAGS in the same bbappend.

(Not a lawyer and this is not legal advice.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

