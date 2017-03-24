Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 345F3E007AD; Fri, 24 Mar 2017 06:56:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_HI,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB4D9E003C1
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 06:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1490363792; x=1521899792;
	h=subject:to:references:from:message-id:date:mime-version:
	in-reply-to:content-transfer-encoding;
	bh=seFYSG+EOOzkOX8FJ01Cd7zefn430vmEzH6dBtzVMjM=;
	b=Z7wY3rAR2FrPdKKyASb1dGOU7fne3qmXV38OOxu0cKnPETzOLYam6GT3
	9m+G6I9I0Yo2OK14sK85Py+sxFOnnw==;
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 Mar 2017 06:56:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,215,1486454400"; d="scan'208";a="239933566"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga004.fm.intel.com with ESMTP; 24 Mar 2017 06:56:16 -0700
To: yocto@yoctoproject.org
References: <CAKEinFzZ-8poavqXnmDPXg47N6OQ7un4X1nLpwofUKRrY8gW1w@mail.gmail.com>
	<alpine.LFD.2.20.1703240952060.21856@localhost.localdomain>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <bfad5b0f-704c-f612-5023-2753bf0c344e@linux.intel.com>
Date: Fri, 24 Mar 2017 15:55:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.20.1703240952060.21856@localhost.localdomain>
Subject: Re: Remove a recipe's do_install_append() function in an append file
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
X-List-Received-Date: Fri, 24 Mar 2017 13:56:34 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 03/24/2017 03:53 PM, Robert P. J. Day wrote:
> On Fri, 24 Mar 2017, Cody Piersall wrote:

>> do_install_append () {
>>     rm -fr ${D}/usr/share
>> }
>>
>> which gets rid of lots lots of useful functionality, like
>> context-aware autocompletion.  Can a bbappend file get rid of that
>> function, or do I need to edit the actual recipe? I've attempted
>> defining an empty do_install_append() { : } but it didn't work.
>
>   it might be worth asking why zsh is doing that in the first place.
> if one doesn't want all that stuff, *that* is where an append could be
> used to remove it. i think zsh removing it by default is
> inappropriate.

That's right; it's better to fix the original recipe and send the patch 
so it can be included in meta-oe. What is written in recipes is not some 
kind of Universal Truth; if you see how things could be done better, go 
ahead and do it.

Alex


