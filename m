Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60209E0030B
	for <yocto@yoctoproject.org>; Thu, 29 Dec 2011 08:37:42 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 29 Dec 2011 08:37:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="91301654"
Received: from unknown (HELO [10.255.13.80]) ([10.255.13.80])
	by orsmga001.jf.intel.com with ESMTP; 29 Dec 2011 08:37:41 -0800
Message-ID: <4EFC9755.60805@linux.intel.com>
Date: Thu, 29 Dec 2011 08:37:41 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Andrew Schweitzer <a_schweitzer@yahoo.com>
References: <CANSwnwggQwOgZk61xvppWXnz3+Wks9jSaNcp0+cBf9eS2xNNOg@mail.gmail.com>
	<4EF20847.1030106@gmail.com>
	<loom.20111229T062302-471@post.gmane.org>
In-Reply-To: <loom.20111229T062302-471@post.gmane.org>
Cc: yocto@yoctoproject.org
Subject: Re: build error on meta-cedarview
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 29 Dec 2011 16:37:42 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/28/2011 09:26 PM, Andrew Schweitzer wrote:
> Jim Abernathy<jfabernathy@...>  writes:
>
>>
>>
>>      While running a build of the core-image-sato using the edison latest
>>      commits and the meta-cedartrail bsp, I notices some errors fly by
>>      and thought I'd see if anyone knows the reason.  The build is just
>>      to test the bsp with no changes.  Basically, doing the Appendix A of
>>      the Development manual substituting cedartrail for crownbay.
>>      snippet of the console log below:
>>      NOTE: package icon-naming-utils-native-0.8.7-r3: task do_unpack:
>>      Started
>>      ERROR: Function 'Unpack failure for URL:
> 'http://tango.freedesktop.org/releases/icon-naming-utils-0.8.7.tar.gz'.
>
> I don't know the reason, but I did get the same error when trying to build yocto
> per the getting started page, changing local.conf to create qemuarm
>
> I would be interested in knowing the reason too.
>
There has been a bug filed against this issue, it seems that the 
tarballs have moved or are unavailable from that location for some 
reason.  You are getting a download page, and I believe that the failure 
should occur earlier with a checksum mismatch, but is not.

You can fetch this file from our mirror at:
http://downloads.yoctoproject.org/mirror/sources/icon-naming-utils-0.8.7.tar.gz

Sau!

> Andy
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

