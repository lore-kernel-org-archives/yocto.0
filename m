Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64DFBE00828; Wed,  4 Mar 2015 05:24:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7AC6E008D4
	for <yocto@yoctoproject.org>; Wed,  4 Mar 2015 05:24:07 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id t24DNx9q006210
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 4 Mar 2015 05:24:00 -0800 (PST)
Received: from server.local (128.224.20.61) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.224.2;
	Wed, 4 Mar 2015 05:23:59 -0800
Message-ID: <54F7076E.9070103@windriver.com>
Date: Wed, 4 Mar 2015 08:23:58 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
References: <alpine.LFD.2.11.1503040441040.31152@Device-040570>
In-Reply-To: <alpine.LFD.2.11.1503040441040.31152@Device-040570>
Subject: Re: possible "include" flags within .scc files?
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
X-List-Received-Date: Wed, 04 Mar 2015 13:24:10 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-03-04 4:46 AM, Robert P. J. Day wrote:
>
>    ok, i might need to switch to decaf shortly ...
>
>    wandering through linux-yocto-3.19 git repo, the meta branch,
> collecting examples of things to use in class, and ran across this:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.19/tree/meta/cfg/kernel-cache/ktypes/standard/standard.scc?h=meta
>
> and the first few lines:
>
> # Note: if only the features are desired, but not the configuration
> #       then this should be included as:
> #             include ktypes/standard/standard.scc nocfg
> #       if no chained configuration is desired, include it as:
> #             include ktypes/standard/standard.scc nocfg inherit
>
>    i was unaware of those flags for include lines, "nocfg" and
> "inherit"; they're not mentioned anywhere in the kernel dev manual.
> but the "inherit" one doesn't seem right, anyway ... i popped over to
> kern-tools and looked at the "spp" script, and i see this:
>
>    # if we have a "nocfg" or "nopatch" on the include directive,
>    # then we need to set the variables so they'll be passed down to
>    # the nested process call
>
> so the spp script seems to indicate there are two valid include flags,
> "nocfg" and "nopatch." should these be doecumented somewhere in the
> kernel-dev manual? do they have value for yocto developers beyond
> being used for defining kernel types?


These are internal flags, only used by the folks that maintain large
piles of kernels (and kernel variants) with stacked configuration.

Consider it akin to reading the internal calls of bitbake, they just
happen to be in the .scc file directives.

They are subject to change, hence aren't in the manuals.

>
>    and does that standard.scc file need to be corrected to not refer to
> a flag named "inherit"?

inherit still works for some older tools variants, and is ignored by
those that don't use it .. so it is safe to stay.

Bruce

>
> rday
>


