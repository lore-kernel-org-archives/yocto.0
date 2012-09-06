Return-Path: <scott.m.rifenbark@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D8A4E01423
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 07:10:00 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 06 Sep 2012 07:10:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,380,1344236400"; d="scan'208";a="218882464"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga001.fm.intel.com with ESMTP; 06 Sep 2012 07:09:59 -0700
Received: from [10.7.199.52] (srifenb-mobl.amr.corp.intel.com [10.7.199.52])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id D39FC2C8001
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 07:10:00 -0700 (PDT)
Message-ID: <5048AEB7.2090000@linux.intel.com>
Date: Thu, 06 Sep 2012 07:09:59 -0700
From: Scott Rifenbark <scott.m.rifenbark@linux.intel.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.DEB.2.02.1203100856480.1391@oneiric>
	<48107031.Jb7NvvnASa@helios>
In-Reply-To: <48107031.Jb7NvvnASa@helios>
Subject: Re: yocto ref manual: confusion between BB_ENV_WHITELIST and BB_ENV_EXTRAWHITE
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
X-List-Received-Date: Thu, 06 Sep 2012 14:10:00 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I  changed the variable from BB_ENV_WHITELIST in the description to 
BB_ENV_EXTRAWHITE to make sense with the given example.  You can see the 
change at 
http://www.yoctoproject.org/docs/1.3/poky-ref-manual/poky-ref-manual.html#ref-bitbake-runtask.

Scott

On 9/6/2012 1:41 AM, Paul Eggleton wrote:
> On Saturday 10 March 2012 08:59:02 Robert P. J. Day wrote:
>>    from section B.5 of yocto ref manual:
>>
>> Tell BitBake to load what you want from the environment into the data
>> store. You can do so through the BB_ENV_WHITELIST variable. For
>> example, assume you want to prevent the build system from accessing
>> your $HOME/.ccache directory. The following command tells BitBake to
>> load CCACHE_DIR from the environment into the data store:
>>
>>       export BB_ENV_EXTRAWHITE="$BB_ENV_EXTRAWHITE CCACHE_DIR"
>>
>>    i think you can see how that might confuse the reader.
> Looks like this still needs to be addressed. Scott, would you mind taking a
> look at this? Seems to me that BB_ENV_WHITELIST just ought to be changed to
> BB_ENV_EXTRAWHITE to make this make sense.
>
> Cheers,
> Paul
>


