Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.9208.1579519469334040509
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jan 2020 03:24:29 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: 140.211.169.56, mailfrom: ross.burton@intel.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E251EE01431; Mon, 20 Jan 2020 03:24:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/, high
	*      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B03A0E01149
	for <yocto@yoctoproject.org>; Mon, 20 Jan 2020 03:24:25 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 20 Jan 2020 03:24:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,341,1574150400"; 
   d="scan'208";a="228356518"
Received: from grossi-mobl.ger.corp.intel.com (HELO rburton-mac01.local) ([10.252.38.20])
  by orsmga006.jf.intel.com with ESMTP; 20 Jan 2020 03:24:23 -0800
Subject: Re: [oe] [RFC PATCH] python: remove Python 2 and all supporting classes
To: Andrey Zhizhikin <andrey.z@gmail.com>
Cc: OE Core mailing list <openembedded-core@lists.openembedded.org>,
 yocto@yoctoproject.org, openembedded-devel@lists.openembedded.org
References: <20200117141632.3809-1-ross.burton@intel.com>
 <CAHtQpK57OxO8z=iBERfc52w72H19XYyygzpL4gt7QxtLHAmfbw@mail.gmail.com>
From: "Ross Burton" <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <c9210040-bd8f-9b1a-f870-f48d40c7d295@intel.com>
Date: Mon, 20 Jan 2020 11:24:22 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAHtQpK57OxO8z=iBERfc52w72H19XYyygzpL4gt7QxtLHAmfbw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 19/01/2020 22:23, Andrey Zhizhikin wrote:
> I've just realized that this breaks entire
> [meta-openembedded/meta-python]. I'm now in a process of removing
> Python2 recipes, and just wanted to check that I'm doing the right
> thing and this is actually intended. Or am I missing something in my
> build config that is required to be set that Python2 gets disabled and
> I would actually not need to eliminate those recipes (some are
> actually dubbed by python3- versions but some are not)?

The python2 recipes are already copied into meta-python2, so the py2 
recipes in meta-python should be deleted.

Ross

