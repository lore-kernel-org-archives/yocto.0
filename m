Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFCEBE00E50; Thu, 28 Apr 2016 22:08:18 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9264EE00E42
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 22:08:12 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 28 Apr 2016 22:08:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,550,1455004800"; d="scan'208";a="942625703"
Received: from ychia3-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.143.114])
	by orsmga001.jf.intel.com with ESMTP; 28 Apr 2016 22:08:10 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Fri, 29 Apr 2016 17:08:06 +1200
Message-ID: <1690881.tSgHQ4Xn3V@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.4.7-300.fc23.x86_64; KDE/4.14.18; x86_64; ;
	)
In-Reply-To: <5722E217.40108@mlbassoc.com>
References: <5722E217.40108@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Change in override behavior?
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
X-List-Received-Date: Fri, 29 Apr 2016 05:08:18 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Gary,

On Fri, 29 Apr 2016 06:24:55 Gary Thomas wrote:
> I used to be able to use something like this:
>    VARIABLE = "xyz"
> and maybe in a .bbappend use
>    VARIABLE_mymachine = "xyzzy"
> where 'mymachine' is in OVERRIDES, which resulted in
>    VARIABLE = "xyzzy"
> 
> This doesn't seem to work the same today, what I get is
>    VARIABLE = "xyz"
>    VARIABLE_mymachine = "xyzzy"
> 
> Has this changed (recently)?  Why?  How to I make use of overrides?
> 
> Note: I'm using the latest Poky master (a9b503b26) updated 2016-04-28

When you say this is what you're seeing, how are you checking this? bitbake -e 
? Which part of that output are you looking at?

You *will* now see VARIABLE_mymachine in bitbake -e output even if "mymachine" 
is in OVERRIDES - that's because the overridden values stay in the datastore 
instead of a "finalisation" step eliminating them, in order to allow OVERRIDES 
to be changed dynamically (possibly multiple times) and still get the 
datastore contents you expect. That change was made in the 2.0 release 
(jethro). However That should not affect the final value of VARIABLE if 
"mymachine" is in OVERRIDES however. Are you sure you are seeing what you 
think you're seeing? If so, is the bbappend in fact being applied? Because if 
what you describe was really happening then pretty much the entire system 
would be broken. I just checked a similar case here and I see the expected 
results.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

