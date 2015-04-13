Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E978E009C9; Mon, 13 Apr 2015 05:43:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 715F1E009AA
	for <yocto@yoctoproject.org>; Mon, 13 Apr 2015 05:43:06 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 13 Apr 2015 05:43:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,569,1422950400"; d="scan'208";a="480227636"
Received: from lglikman-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.24.82])
	by FMSMGA003.fm.intel.com with ESMTP; 13 Apr 2015 05:43:05 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Francois P. Gallichand" <francois.p.gallichand@ca.abb.com>
Date: Mon, 13 Apr 2015 13:43:04 +0100
Message-ID: <16058327.QEQjjjhQFS@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.9-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <AM3PR06MB4510B6E81D1E70198602BC68AE70@AM3PR06MB451.eurprd06.prod.outlook.com>
References: <AM3PR06MB4510B6E81D1E70198602BC68AE70@AM3PR06MB451.eurprd06.prod.outlook.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Git and http problem.
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
X-List-Received-Date: Mon, 13 Apr 2015 12:43:10 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Francois,

On Monday 13 April 2015 11:53:25 Francois P. Gallichand wrote:
> I'm working behind a firewall, on which I have absolutely no control, and it
> does not allows the git protocol to go through. So I patch the recipes to
> replace the git protocol by the http protocol and it works most of the
> time. However one specific package, linux-yocto, does not seem to work even
> If I use the http protocol. It either times-out during the fetch, of the
> fetch goes on forever.

Assuming there's no infrastructure issue on our end, it sounds a bit like your 
firewall might be proxying the http fetch completely, and the fetch takes 
longer than the configured timeout.

You could set up a local mirror to work around this and set up the system to 
point to it using PREMIRRORS. Note that you can also use PREMIRRORS to 
effectively add ;protocol=http to git URIs as well, you shouldn't need to patch 
each recipe.
 
> Frustrated with that situation, I tried various things to realize that if I
> tried to manually clone the git repository, it doesn't work with a "git
> clone git://...;protocol=http;..." but if I use "git clone
> http://...;protocol=http; ...",it is working fine. But the  http:// form is
> not supported by bitbake as if I use it in a recipe as the SRC_URI, bitbake
> gives me an error.
> 
> Is it a bug with bitbake or am I doing something wrong?

It's not a bug - git and bitbake's fetcher expect different URI formats - 
bitbake has support for multiple fetch types and therefore needs a hint to 
tell it which fetcher module should handle the URI and that's the prefix, so 
anything that should be fetched by the git fetcher module needs to be prefixed 
with git:// even if the actual protocol ends up being http (in which case it 
would be git://...;protocol=http). If you are then going back to git on the 
command line you'd need to translate that back into http://.. form (note that 
protocol= is something our git fetcher understands; git itself does not so you 
would not specify that on the git command line).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

