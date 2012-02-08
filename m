Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F078E004D2
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2012 15:18:44 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 08 Feb 2012 15:18:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="104691560"
Received: from unknown (HELO [10.255.14.241]) ([10.255.14.241])
	by azsmga001.ch.intel.com with ESMTP; 08 Feb 2012 15:18:43 -0800
Message-ID: <4F3302D3.7070507@linux.intel.com>
Date: Wed, 08 Feb 2012 15:18:43 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Daniel Stenberg <daniel@haxx.se>
References: <4F323C52.8030304@intel.com> <20120208100718.GB8335@giant>
	<4F32C595.4040508@linux.intel.com>
	<alpine.DEB.2.00.1202082215320.8688@tvnag.unkk.fr>
In-Reply-To: <alpine.DEB.2.00.1202082215320.8688@tvnag.unkk.fr>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Upstream-Status finally @ 100%
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
X-List-Received-Date: Wed, 08 Feb 2012 23:18:44 -0000
Content-Type: text/plain; charset=ISO-8859-15; format=flowed
Content-Transfer-Encoding: 8bit

On 02/08/2012 01:26 PM, Daniel Stenberg wrote:
> On Wed, 8 Feb 2012, Saul Wold wrote:
>
>> If the author of curl would like to review and/or implement
>> modification for OE that would be awesome, feel free to share the
>> patches with them.
>
> I am the maintainer of curl.
>
> The curl patches Björn mentioned are clearly not written in way intended
> to be "upstreamable" so they cannot be accepted by the curl project and
> nobody has tried to.
>
I am sure there are many patches like that in OE, they are written, 
tested and then forgotten about, our goal here is to not let them get 
forgotten.

> This said, at least one of the patches fixes a problem that still exists
> upstream but the yocto patch [*] is made in such a hard-coded way it'd
> have to be seriously edited to get accepted. The flaw has not even been
> discussed with or mentioned to the curl project AFAICR...
>
> So, room for improvements!
>
> [*] =
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-support/curl/curl/noldlibpath.patch
>
>

Daniel,

I think Khem has already said that we are taking incremental steps here, 
as I mentioned in my prior email, we have over 1200 patches lurking 
around in OE currently, initially we have about 460 as marked as pending.

If you can fix those issues, since we can't address all of them 
initially or be experts in all upstreams, we would be very grateful to 
remove 1 or 2 more patches.

Thanks for your understanding.

Sau!

