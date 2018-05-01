Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B05B4E00C54; Tue,  1 May 2018 03:04:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63D03E00C40
	for <yocto@yoctoproject.org>; Tue,  1 May 2018 03:03:59 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	01 May 2018 03:03:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,350,1520924400"; d="scan'208";a="47387048"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga003.jf.intel.com with ESMTP; 01 May 2018 03:03:58 -0700
To: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
References: <cover.1525139239.git.paul.eggleton@linux.intel.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <8a00c2aa-ea4a-bc9f-65e7-4df683420169@linux.intel.com>
Date: Tue, 1 May 2018 12:58:03 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <cover.1525139239.git.paul.eggleton@linux.intel.com>
Subject: Re: [layerindex-web][PATCH 000/242] Integrate and improve Recipe Reporting System (cover letter only)
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
X-List-Received-Date: Tue, 01 May 2018 10:04:01 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 05/01/2018 05:23 AM, Paul Eggleton wrote:
> The Recipe Reporting System (RRS - live instance at
> http://recipes.yoctoproject.org) was originally developed as a fork of
> the layer index (live instance at http://layers.openembedded.org) - this
> set of changes rebases it on top of master and makes the functionality
> possible to activate for other layers. I've introduced the concept of a
> "Maintenance Plan" to tie together the recipe maintenance information
> for one or more layers and used it to replace all the parts that assumed
> Poky or OE-Core were the repositories/layers being tracked. I've also
> made it possible again for the application to gather data going back to
> 1.6 across the python 2/3 divide, and made various cleanups and
> optimisations in the code.

Thanks! Is this already taken into use on the recipes.yoctoproject.org?

Alex

