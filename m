Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87E52E00DC9; Fri,  2 Feb 2018 04:24:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EC62E00D41
	for <yocto@yoctoproject.org>; Fri,  2 Feb 2018 04:24:15 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Feb 2018 04:24:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,448,1511856000"; d="scan'208";a="14514492"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga007.jf.intel.com with ESMTP; 02 Feb 2018 04:24:14 -0800
To: colin.helliwell@ln-systems.com, yocto@yoctoproject.org
References: <05b001d39c1f$b673d4c0$235b7e40$@ln-systems.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <f03dfbe4-9f35-611c-c268-61f8fd39f68b@linux.intel.com>
Date: Fri, 2 Feb 2018 14:24:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <05b001d39c1f$b673d4c0$235b7e40$@ln-systems.com>
Subject: Re: Getting a recipe's files from within an image recipe
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
X-List-Received-Date: Fri, 02 Feb 2018 12:24:17 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 02/02/2018 02:16 PM, colin.helliwell@ln-systems.com wrote:
> I have an app which has a config file, and I'd like my two images
> (production and dev) to have different configs. Obviously it'd be neater to
> keep the two config files within the recipe's directory structure.
> I guess I can't do this in the app's recipe since it has no concept of what
> image it might end up in. So I could have the the app's recipe deploy one of
> the configs by default, and use a step in the 'other' image recipe to
> overwrite it.
> But is there a way to tell the image recipe where the app's workdir/srcdir
> is? Something like ${WORKDIR}_MyRecipe
> Or am I just going to have to hard-code the path in?

Maybe the easiest is to have two separate recipes for the two versions 
of config and have images pull in one or the other?

Alex

