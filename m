Return-Path: <laurentiu.palcu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62219E00721
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2013 00:10:35 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 22 Jan 2013 00:08:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,513,1355126400"; d="scan'208";a="193829782"
Received: from lpalcu-linux (HELO [10.237.105.165]) ([10.237.105.165])
	by AZSMGA002.ch.intel.com with ESMTP; 22 Jan 2013 00:08:33 -0800
Message-ID: <50FE4900.7020804@intel.com>
Date: Tue, 22 Jan 2013 10:08:32 +0200
From: Laurentiu Palcu <laurentiu.palcu@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Wolfgang Denk <wd@denx.de>
References: <20130122071621.9D11520DA8C@gemini.denx.de>
In-Reply-To: <20130122071621.9D11520DA8C@gemini.denx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Installation of i686 SDK on a x86_64 machine?
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
X-List-Received-Date: Tue, 22 Jan 2013 08:10:35 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Wolfgang,

On 01/22/2013 09:16 AM, Wolfgang Denk wrote:
> Hi,
> 
> in previous releases it ha always been possible to install a SDK
> configured for a i686 machine on both x86 and x86_64 systems.
> 
> Since commit c04f5435 "populate_sdk_base.bbclass: use SDK_ARCH instead
> of SDKMACHINE" this does not work any more; instead, installation will
> abort with "Error: Installation machine not supported!"
> 
> ++ uname -m
> ++ sed -e 's/i[3-6]86/ix86/' -e 's/x86[-_]64/x86_64/'
> + INST_ARCH=x86_64
> ++ echo i686
> ++ sed -e 's/i[5-6]86/ix86/'
> + SDK_ARCH=ix86
> + '[' x86_64 '!=' ix86 ']'
> + echo 'Error: Installation machine not supported!'
> Error: Installation machine not supported!
> + exit -1
> 
> 
> Is this intended behaviour (and if so, why?) or rather a bug that
> should be reported and fixed?
This is the intended behavior. Please check:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3269

Also, this thread:
http://lists.linuxtogo.org/pipermail/openembedded-core/2012-November/031519.html

If people really need to install SDK tarballs intended for other hosts
than the SDK was built for (i686 on x86_64 or vice-versa), we could add
a -f flag to force installation and show an error message like this:

"Error: Installation machine not supported! Use -f to force installation."

Thanks,
Laurentiu

> 
> Thanks in advance.
> 
> Best regards,
> 
> Wolfgang Denk
> 

