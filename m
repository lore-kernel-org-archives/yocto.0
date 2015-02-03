Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C80AE008A6; Tue,  3 Feb 2015 01:56:19 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC99FE0086F
	for <yocto@yoctoproject.org>; Tue,  3 Feb 2015 01:56:07 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Feb 2015 01:52:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,511,1418112000"; d="scan'208";a="680127958"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.17.39])
	by orsmga002.jf.intel.com with ESMTP; 03 Feb 2015 01:56:01 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Bian, Naimeng" <biannm@cn.fujitsu.com>
Date: Tue, 03 Feb 2015 09:55:59 +0000
Message-ID: <2359761.Daau3xpYjF@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <30DC4EDFD798C94083F3E083754532CC73DECC32@G08CNEXMBPEKD02.g08.fujitsu.local>
References: <30DC4EDFD798C94083F3E083754532CC73DECC32@G08CNEXMBPEKD02.g08.fujitsu.local>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [RFC]provide native recipe for every package
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
X-List-Received-Date: Tue, 03 Feb 2015 09:56:19 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Bian,

On Tuesday 03 February 2015 00:38:54 Bian, Naimeng wrote:
> Would you tell me why can't we inherit native.bbclass in every recipes.
> IMO, it's better to provide native recipe for every package.

Assuming what you mean is BBCLASSEXTEND = "native" for every recipe, I don't 
think we want to do this. There are a lot of things that should simply be 
provided by the host rather than us building them; we need to be selective 
about what we build as a workaround for the host not providing a suitable 
version.

See this bug for an example of at least one way this can go wrong:

  https://bugzilla.yoctoproject.org/show_bug.cgi?id=7264

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

