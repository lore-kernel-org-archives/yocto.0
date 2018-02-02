Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC0F4E00DD0; Fri,  2 Feb 2018 02:24:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08EFCE00D6A
	for <yocto@yoctoproject.org>; Fri,  2 Feb 2018 02:24:33 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Feb 2018 02:24:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,448,1511856000"; d="scan'208";a="14496692"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga007.jf.intel.com with ESMTP; 02 Feb 2018 02:24:32 -0800
To: Anuj Mittal <anuj.mittal@intel.com>, yocto@yoctoproject.org
References: <CAJCDnYZz0HLgoJUmZhis0n=Kh1Xy2Z06dAA=8ai5GvdH03Ob4w@mail.gmail.com>
	<9105add4-ce81-a507-1740-434a1d537962@intel.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <12a63587-82fc-3def-ba73-d20a19aa8191@linux.intel.com>
Date: Fri, 2 Feb 2018 12:24:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <9105add4-ce81-a507-1740-434a1d537962@intel.com>
Subject: Re: Remove nfs packages from image
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
X-List-Received-Date: Fri, 02 Feb 2018 10:24:35 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 02/02/2018 12:22 PM, Anuj Mittal wrote:
> I think it gets included by default using DISTRO_FEATURES_DEFAULT. So
> using DISTRO_FEATURES_remove = " nfs" should work. However, you may also
> want to define your own set of values for your distro for DISTRO_FEATURES.
> 
> https://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#ref-features-distro

DISTRO_FEATURES generally influence how packages get built, not what 
packages get installed into images.


Alex

