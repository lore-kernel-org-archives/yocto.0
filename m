Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90B6AE00CDD; Fri, 18 May 2018 07:12:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.126 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AA1FE00C36
	for <yocto@yoctoproject.org>; Fri, 18 May 2018 07:12:48 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	18 May 2018 07:12:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,415,1520924400"; d="scan'208";a="55548623"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga004.fm.intel.com with ESMTP; 18 May 2018 07:12:44 -0700
To: mamta0925@yahoo.com, yocto@yoctoproject.org
References: <396AD4CF-B81A-48EC-9641-068B3B6D6F59@yahoo.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <4bd6eee5-0af7-1cbb-f6f4-38de9ed329ea@linux.intel.com>
Date: Fri, 18 May 2018 17:12:44 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <396AD4CF-B81A-48EC-9641-068B3B6D6F59@yahoo.com>
Subject: Re: Using yocto as a build system
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
X-List-Received-Date: Fri, 18 May 2018 14:12:48 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 05/18/2018 12:06 AM, mamta0925@yahoo.com wrote:

> Apologies if these are basic questions but thought this will be the
> best place to find answers to the point
> 
> So our requirement is to build open source packages in Linux, windows
> and Mac on a build system. Currently we have an internal build system
> which is quite cumbersome to manage. Hence we are looking for outside
> options
> 
> Given our situation, is Yocto our best solution? Does it even provide
> for building windows and Mac open source packages?

Generally speaking, no. Yocto is aimed at embedded Linux use cases.

If you elaborate about your product and what are the 'open source 
packages', maybe someone can suggest other options.

Alex

