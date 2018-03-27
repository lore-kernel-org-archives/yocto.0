Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8440E00BAF; Tue, 27 Mar 2018 07:36:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54018E008A2
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 07:36:00 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	27 Mar 2018 07:35:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,367,1517904000"; d="scan'208";a="27394439"
Received: from linux.intel.com ([10.54.29.200])
	by fmsmga007.fm.intel.com with ESMTP; 27 Mar 2018 07:35:58 -0700
Received: from mingeeon-mobl7.amr.corp.intel.com (unknown [10.254.35.92])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTPS id AF3115803CE;
	Tue, 27 Mar 2018 07:35:57 -0700 (PDT)
To: Eric Schwarz <eas@sw-optimization.com>
References: <659e5b2f633db141db18cd7d14cb1d87@sw-optimization.com>
From: Stephano Cetola <stephano.cetola@linux.intel.com>
Message-ID: <d8540677-33af-5440-fd16-b2a5fd33de5d@linux.intel.com>
Date: Tue, 27 Mar 2018 07:35:57 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <659e5b2f633db141db18cd7d14cb1d87@sw-optimization.com>
Cc: yocto@yoctoproject.org
Subject: Re: New Recipes / Recipe Fixes
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
X-List-Received-Date: Tue, 27 Mar 2018 14:36:01 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 3/27/18 6:28 AM, Eric Schwarz wrote:
> Hello,
> 
> is this the right mailing list to post new recipes for libraries to be
> included in the openembedded layer and/or recipes patches, respectively?
> 
> Many thanks
> Eric

Hey Eric,

Thank you for looking into contributing to OE & Yocto.

Depending on the recipe, you will either submit new recipes / fixes to
oe-core or meta-openembedded.

oe-core is, as the name implies, reserved for "core functionality".

meta-openembedded houses all other peripheral functionality.

You can learn more here:

https://wiki.yoctoproject.org/wiki/Newcomers

Specifically

https://wiki.yoctoproject.org/wiki/Newcomers#How_to_Contribute

Hope that helps!

Cheers,
Stephano

