Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FA69E00BAD; Thu, 12 Apr 2018 06:15:22 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9BD1E00708
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2018 06:15:21 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Apr 2018 06:15:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,441,1517904000"; d="scan'208";a="42792740"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga003.jf.intel.com with ESMTP; 12 Apr 2018 06:15:20 -0700
To: Richard Collins <richard.collins@guidedknowledge.com>
References: <CAD-1PJi4SCi_QjuDdcvSy+qFAdKvK8iYi95r+Zk76uzN4GFViQ@mail.gmail.com>
	<37b0eb72-940b-71bb-a3e5-50857e490a2f@linux.intel.com>
	<CAD-1PJj+=U6K=HLfo5YYnBmr0RotyGPct0jRULO6v6qCgrMUag@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <ab3e024e-c92b-ad47-a75b-d8d5e5c6aaac@linux.intel.com>
Date: Thu, 12 Apr 2018 16:09:04 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CAD-1PJj+=U6K=HLfo5YYnBmr0RotyGPct0jRULO6v6qCgrMUag@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Getting the version of Yocto that is being used.
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
X-List-Received-Date: Thu, 12 Apr 2018 13:15:22 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 04/12/2018 03:11 PM, Richard Collins wrote:
> I get the following for DISTRO.
> 
> DISTRO            = "yogurt"
> DISTRO_VERSION    = "BSP-Yocto-RK3288-PD17.1.1"
> 
> Can't find any reference to yogurt so I assume this is something the 
> supplier of our SOM's has done. Looking on their Wiki it seems to be 
> based on 2.1.2 (Krogoth)

This is probably coming from meta-yogurt layer provided by a company 
called Phytec. Looking at their git repository, they have branches for 
all Yocto releases, so you could probably start by looking at that. 
Generally, Phytec should be your support channel :)

Alex

