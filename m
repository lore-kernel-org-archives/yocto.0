Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32D7CE00347
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2012 09:52:27 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 24 Sep 2012 09:52:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,476,1344236400"; d="scan'208";a="226048104"
Received: from unknown (HELO [10.255.14.15]) ([10.255.14.15])
	by fmsmga002.fm.intel.com with ESMTP; 24 Sep 2012 09:52:22 -0700
Message-ID: <50608FC5.7040408@linux.intel.com>
Date: Mon, 24 Sep 2012 09:52:21 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120827 Thunderbird/15.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <1716058.TZM8ukYCTx@helios>
In-Reply-To: <1716058.TZM8ukYCTx@helios>
Cc: yocto@yoctoproject.org
Subject: Re: Supported host distro updates
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
X-List-Received-Date: Mon, 24 Sep 2012 16:52:27 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 09/24/2012 04:10 AM, Paul Eggleton wrote:
> Hi all,
>
> With the release coming up fairly soon, it's time to look at updating our
> supported distro list. Currently we have the following (in meta-
> yocto/conf/distro/poky.conf):
>
> SANITY_TESTED_DISTROS ?= " \
>              Yocto (Built by Poky 7.0) 1.2 \n \
Will want to ensure this is updated to the correct Yocto version also, 
maybe both N and N-1.

Sau!

>              Ubuntu 10.04.4 LTS \n \
>              Ubuntu 11.10 \n \
>              Ubuntu 12.04 LTS \n \
>              Ubuntu 12.04.1 LTS \n \
>              Fedora release 15 (Lovelock) \n \
>              Fedora release 16 (Verne) \n \
>              Fedora release 17 (Beefy Miracle) \n \
>              CentOS release 5.6 (Final) \n \
>              CentOS release 5.7 (Final) \n \
>              CentOS release 6.2 (Final) \n \
>              Debian GNU/Linux 6.0.4 (squeeze) \n \
>              openSUSE 11.4 \n \
>              openSUSE 12.1 \n \
> 	    "
>
> I think we should drop at least Fedora 15. What do we want to do with CentOS?
> I've been using 6.3 here on my build machine for some time with no ill effects.
> I believe we have some interest in preserving 5.x; should we be adding 6.3 and
> removing 6.2? What about the rest?
>
> Cheers,
> Paul
>

