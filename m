Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49BE4E00C27; Wed, 21 Mar 2018 08:28:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC3E0E00C27
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 08:28:15 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Mar 2018 08:28:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,340,1517904000"; d="scan'208";a="44084510"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga002.jf.intel.com with ESMTP; 21 Mar 2018 08:28:14 -0700
To: Svein Seldal <sveinse@seldal.com>, yocto@yoctoproject.org
References: <ad09d45b8456613da24304c00a2c2273@webmail.domeneshop.no>
	<67ee7cc2-3ff6-464e-ea81-c3ad2ec8756f@linux.intel.com>
	<16149a84-e90d-6702-14ca-88eff4c149ae@seldal.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <bf2eff58-9fa4-158f-ba2e-3919f7a753c6@linux.intel.com>
Date: Wed, 21 Mar 2018 17:21:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <16149a84-e90d-6702-14ca-88eff4c149ae@seldal.com>
Subject: Re: Yocto and NPM issues
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
X-List-Received-Date: Wed, 21 Mar 2018 15:28:17 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 03/21/2018 04:44 PM, Svein Seldal wrote:

>  > Oh, and you might have more success using meta-nodejs, as it doesn't try
>  > to implement a custom fetcher, and just runs npm directly during the
>  > build. If you don't mind that that makes the build outcome essentially
>  > random from one invocation to the next.
>  >
>  > https://github.com/imyller/meta-nodejs
> 
> The meta-nodejs repo seems to be abandoned, as it does support any newer 
> versions of nodejs. I asked on #yocto and I was suggested that this 
> layer wasn't really necessary as meta-openembedded supports nodejs.

You have seen first-hand what 'supports' means in practice :-) As long 
as it's not regularly, automatically tested against a wide set of target 
npm packages, it just isn't going to work well.

I'd suggest you could take over the maintenance of meta-nodejs maybe?

Alex

