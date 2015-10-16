Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE3E7E00BC2; Fri, 16 Oct 2015 03:01:23 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBF69E00B23
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 03:01:17 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 16 Oct 2015 03:01:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,688,1437462000"; d="scan'208";a="828135196"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com) ([10.252.9.47])
	by orsmga002.jf.intel.com with ESMTP; 16 Oct 2015 03:01:17 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Reshetova, Elena" <elena.reshetova@intel.com>
Date: Fri, 16 Oct 2015 11:01:15 +0100
Message-ID: <2493770.plBqoWDchi@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.8-100.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <2236FBA76BA1254E88B949DDB74E612B419B8DE0@IRSMSX102.ger.corp.intel.com>
References: <2236FBA76BA1254E88B949DDB74E612B419B8DE0@IRSMSX102.ger.corp.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Not able to preserve a variable across two python functions in bbclass
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
X-List-Received-Date: Fri, 16 Oct 2015 10:01:23 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Elena,

On Friday 16 October 2015 09:52:28 Reshetova, Elena wrote:
> I am having a very stupid issue, which I can't figure out. I am setting my
> own variable from one python function (via d.setVar) and then attempting to
> read it from another python function (via d.getVar). Both functions are in
> the same bbclass.
> 
> However, result of reading is always empty. But if I read this variable back
> in the same python function, I get a correct value.
> 
> Aren't "d" store is global and supposed to work across functions and even
> classes?
> 
> 
> 
> Here is the commit that shows that I am doing:
> https://github.com/01org/meta-security-isafw/commit/590f7158a90c98dbb1bf650e
> d081adbccb6e0006
> 
> Really plain simple, but doesn't work :(

I'm afraid not, other than dependency relationships, task functions are 
executed independently and thus have their own scope. The way to do this sort 
of thing is to set the variable in the parent scope i.e. the recipe level (or 
above that, the configuration level).  

If you absolutely must pass things between tasks you need to do so via the 
sysroot, taking care to set up the appropriate task dependency relationship to 
ensure the sysroot gets populated; I'm not sure that's the case here though.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

