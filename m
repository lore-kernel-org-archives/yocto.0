Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1836E0098A; Thu, 16 Mar 2017 04:43:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_HI,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5E19E0094C
	for <yocto@yoctoproject.org>; Thu, 16 Mar 2017 04:43:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1489664620; x=1521200620;
	h=subject:to:references:from:message-id:date:mime-version:
	in-reply-to:content-transfer-encoding;
	bh=rPkFty5R00xFUhw7ohoqnwx7tssW0b/LthBUkiVyC34=;
	b=x8m4GIHIn3HcbFqWnD5s3+MOlgiVYGJdk0Y5eKAsut+Vby15tIpGBy2Z
	WZAP0fQtXPdD09xk9citXGH0OCj7kg==;
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	16 Mar 2017 04:43:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,172,1486454400"; d="scan'208";a="76085647"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga005.jf.intel.com with ESMTP; 16 Mar 2017 04:43:38 -0700
To: yocto@yoctoproject.org, openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>
References: <37d4f98c-9102-f4bf-c6cc-f64e1ffbce40@linux.intel.com>
	<83c550f8-9f33-3179-3092-19fad4a37aec@rsi-elektrotechnik.de>
	<20170316093021.4901da8c@host0.betafive.co.uk>
	<e75b196f-0ee2-97e0-1ed4-8e52fe7695ae@linux.intel.com>
	<aa65d1ce-1709-cb64-55f5-4bfe6f8ce9bf@embed.me.uk>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <9af179f7-2774-3910-7007-cbbc3cd9a549@linux.intel.com>
Date: Thu, 16 Mar 2017 13:42:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <aa65d1ce-1709-cb64-55f5-4bfe6f8ce9bf@embed.me.uk>
Subject: Re: [Openembedded-architecture] Sum up - Proposal: dealing with language-specific build tools/dependency management tools
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
X-List-Received-Date: Thu, 16 Mar 2017 11:43:40 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 03/16/2017 12:48 PM, Jack Mitchell wrote:

> An issue with not having separate recipes is going to cause problems
> with OTA package updates. I currently have a node package that I
> maintain for a client and it's so big (excess of 30,000 files with all
> deps) that we have to have a special update procedure of uninstalling
> the package, re-installing the new version and then performing a system
> update. A package update with 30,000 files on a quad core fast arm64
> chip takes upwards of 40 minutes. It would be fantastic, if only the
> core node application and changed dependencies could be updated.
>
> Would it be possible to use something similar to the 'auto-package'
> stuff we already have to split out the inner package dependencies and
> have specific packages for each dependency but not a separate recipe?

Yes, certainly. In fact, I think npm.bbclass already does it.

Alex


