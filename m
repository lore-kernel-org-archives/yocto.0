Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B25DE00E10; Mon, 22 Jan 2018 05:14:00 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AEBCE00B1A
	for <yocto@yoctoproject.org>; Mon, 22 Jan 2018 05:13:59 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	22 Jan 2018 05:13:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,396,1511856000"; d="scan'208";a="21608804"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by FMSMGA003.fm.intel.com with ESMTP; 22 Jan 2018 05:13:56 -0800
To: Andrea Galbusera <gizero@gmail.com>
References: <FBE5527A-743B-468F-9CEA-FC1732314AFE@googlemail.com>
	<CAC+thW1kL2F2LKxpnLMTd-YfWZV8KNzDSqpF8q2KdOBENBjt4g@mail.gmail.com>
	<CAC+thW0xBGsXZz-GJQU5f-LbVtUVWmzt5ReUwZr-SG4gvw-eVA@mail.gmail.com>
	<20d47e1b-c33b-d7f6-1b9e-f7a6f1e779a0@linux.intel.com>
	<CAEHkU3WSqGih6myuVDZCrWjszPA7yaj6p_BWuEqin53LBh_tsA@mail.gmail.com>
	<CAC+thW0g-Sc+K7yNp6BU6ia31RX1Gy4N0v6LQ1qFcTjiXniDTQ@mail.gmail.com>
	<24fffbce-1f44-dba6-aed2-913af75ba525@linux.intel.com>
	<CAJ86T=U4m-J8WLdRP6UFP7T=FxyRRMsc7uXzpOyU9uCoimA1_g@mail.gmail.com>
	<28c69ac5-219a-8718-83f6-5f7f2b51bf10@linux.intel.com>
	<CAC+thW07t_5w-g9aWDTSWeqN_V0zH=mEZBDLrUO_5LD97JG5-A@mail.gmail.com>
	<cf336aca-3cb1-4e1f-e7fc-601311a7d87b@linux.intel.com>
	<CAC+thW1JpGq4p+OhWg-mtxBHwacULiJCvWY7jtxHV5vFkXFDvw@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <842fae0b-8d4d-2ffd-dbb7-bcd960973400@linux.intel.com>
Date: Mon, 22 Jan 2018 15:08:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAC+thW1JpGq4p+OhWg-mtxBHwacULiJCvWY7jtxHV5vFkXFDvw@mail.gmail.com>
Cc: Mathias Rudnik <rudnik.mathias@googlemail.com>,
	Yocto Project <yocto@yoctoproject.org>
Subject: Re: Error do_compile libepoxy
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
X-List-Received-Date: Mon, 22 Jan 2018 13:14:00 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 01/19/2018 06:36 PM, Andrea Galbusera wrote:

>> This is where I think the configuration is not quite right. Instead of
>> virtual/libx11, it should say virtual/libgl. And if that dependency cannot
>> be satisfied, then the x11 option should be altogether disabled in the
>> distro/local config (in poky mesa provides virtual/libgl). At least that's
>> how it's configured in many other recipes throughout oe-core.
> 
> Can you point to any in particular so I can have a look at the pattern?

Basically anything that mentions 'virtual/libgl' - you can grep the 
oe-core layer for it.

>> b) changing the dependency in that option to virtual/libgl and see what kind
>> of error you get, if any. I guess this is the right fix after all.
> 
> Nope, below change has no effect. The error is the same as in the
> original post (missing symbols from X11/Xlib.h)

Before producing any patches, I'd really like you to establish the 
difference between working and failing build in a systematic way - we've 
all been doing 'shotgun debugging based on guessing' up to now to be 
honest. Here's how:

1. Do not make any changes to libepoxy recipe, use it as it is now in 
oe-core.

2. Build libepoxy with a default plain-poky config, it should succeed. 
Copy the working directory of libepoxy somewhere safe for later comparison.

3. Build libepoxy with raspberry config that makes it fail.

4. Carefully compare the working directory of libepoxy with the one that 
you saved. What are the differences? How do the configure and compile 
steps differ (particularly the output of meson at do_configure stage, 
ninja build files, and compiler flags)? How do the sysroots differ, 
particularly in what gets installed to /usr/include? It would be great 
to establish the specific root cause of the failure vs success and work 
out a fix from there.

Alex

