Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDAE5E0070B
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 17:22:09 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 18 Jul 2012 17:22:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="180065525"
Received: from unknown (HELO [10.255.12.217]) ([10.255.12.217])
	by fmsmga001.fm.intel.com with ESMTP; 18 Jul 2012 17:22:09 -0700
Message-ID: <50075331.9010007@linux.intel.com>
Date: Wed, 18 Jul 2012 17:22:09 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: Tim Bird <tim.bird@am.sony.com>
References: <50074BA9.5050506@am.sony.com>
In-Reply-To: <50074BA9.5050506@am.sony.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Manually fetching files (and disabling the sanity-checker)
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
X-List-Received-Date: Thu, 19 Jul 2012 00:22:09 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/18/2012 04:50 PM, Tim Bird wrote:
> Hi all,
>
> I've given up trying to work around Sony's firewall.  After repeated attempts
> I still can't get any 'git:'-based URLS to work through the firewall.
>
> I vaguely recall the last time I worked on this (about 5.0 timeframe) there
> was a mirror where tarballs could be downloaded, if the git fetch didn't work.
>
> Is this mirror still available?  If not, is there any way to disable
> the sanity-checker, and have bitbake tell me what repositories it's
> looking for, so I can manually construct a local mirror for yoctoproject
> to work off of?
>
To disable the sanity check you can set CONNECTIVITY_CHECK_URIS to "" 
and that will cause it to be skipped.

Regarding the mirroring, have you tried to just set the PREMIRRORS to 
use only http* and ftp in your local.conf:
PREMIRRORS = "\
ftp://.*/.*      http://downloads.yoctoproject.org/mirror/sources/ \n \
http://.*/.*     http://downloads.yoctoproject.org/mirror/sources/ \n \
https://.*/.*    http://downloads.yoctoproject.org/mirror/sources/ \n"

I am not sure, but this might force protocols. You could try a "bitbake 
-c fetchall universe"

I am going have Michael H. get you the information about where the the 
Downloads are.

Let me know how it goes.


Sau!


> Is there any way to extract the tarballs from a build appliance image?
>
> Any advice or pointers would be appreciated.
>
>   -- Tim
>
> =============================
> Tim Bird
> Architecture Group Chair, CE Workgroup of the Linux Foundation
> Senior Staff Engineer, Sony Network Entertainment
> =============================
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


