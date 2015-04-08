Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF7E1E0098D; Wed,  8 Apr 2015 01:55:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 848A7E00959
	for <yocto@yoctoproject.org>; Wed,  8 Apr 2015 01:55:36 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 08 Apr 2015 01:55:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,543,1422950400"; d="scan'208";a="710483507"
Received: from joeholla-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.10.65])
	by orsmga002.jf.intel.com with ESMTP; 08 Apr 2015 01:55:34 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Tobias Olausson <tobias.olausson@pelagicore.com>
Date: Wed, 08 Apr 2015 09:55:33 +0100
Message-ID: <1521935.2Je9FCNQNj@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.9-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <CAMg8ce8C3k6L0MOBKtk2i9QGbgmXyza0Kn1sfSZBbfO9kX9EzQ@mail.gmail.com>
References: <CAMg8ce8C3k6L0MOBKtk2i9QGbgmXyza0Kn1sfSZBbfO9kX9EzQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: bblayer priorities ignored for bbappends?
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
X-List-Received-Date: Wed, 08 Apr 2015 08:55:39 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Tobias,

On Wednesday 08 April 2015 08:54:20 Tobias Olausson wrote:
> I just had a weird experience with yocto and I wanted to know if the
> described behaviour is intentional.
> 
> I have a layer with priority 7 containing a recipe, foo.bb. In another
> layer, with priority 8, there is a foo.bbappend. Finally, I just added
> another layer, with priority 9, where foo.bb is redefined as a binary
> recipe.
> 
> When I added the last layer, I expected that to take precedence over the
> other two. However, the bbappend for foo is still applied (which in this
> case changed the SRC_URI, making the whole binary recipe moot). Is this
> really the way it's supposed to be? I would expect that lower layers cannot
> influence layers with higher priority at all, but that does not seem to be
> the case.

That is the case, yes - bbappends are always applied. As far as I am aware 
this is the first time this kind of situation has been asked about though so 
it's probably just that we didn't consider it before.

Presumably you could use a bbappend rather than a recipe in the last layer? 
You might need to stub out some of the functions of course, but it should be 
possible.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

