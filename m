Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EF17E00848; Mon,  8 Sep 2014 01:44:22 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF93CE00846
	for <yocto@yoctoproject.org>; Mon,  8 Sep 2014 01:44:21 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP; 08 Sep 2014 01:44:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="382879817"
Received: from mriddel-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.53])
	by FMSMGA003.fm.intel.com with ESMTP; 08 Sep 2014 01:39:23 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Chris Tapp <opensource@keylevel.com>
Date: Mon, 08 Sep 2014 09:44:18 +0100
Message-ID: <7090234.WN5mfuZ9Sn@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.15.10-201.fc20.x86_64; KDE/4.13.3; x86_64; ;
	)
In-Reply-To: <E4E599B2-1AEC-4FCD-9AA8-BEA0A0BB541A@keylevel.com>
References: <E4E599B2-1AEC-4FCD-9AA8-BEA0A0BB541A@keylevel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Daisy mercurial support
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
X-List-Received-Date: Mon, 08 Sep 2014 08:44:22 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Chris,

On Sunday 07 September 2014 22:59:58 Chris Tapp wrote:
> I'm trying to build a recipe under "daisy" that uses a mercurial repository,
> but I'm getting "Nothing provides mercurial-native".
> 
> Adding:
> 
>   ASSUME_PROVIDED += "mercurial-native"
> 
> to my local.conf appears to fix this, but is this what I should be doing?

I guess we haven't paid too much attention to this since we don't tend to have 
recipes that fetch from mercurial repositories, so we've left it open - either 
you do this and ensure mercurial is installed on the host, or provide a recipe 
so that it can be built (one is provided in meta-oe, incidentally).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

