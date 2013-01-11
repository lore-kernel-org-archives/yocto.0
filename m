Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DFD1E006D2
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2013 08:31:07 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 11 Jan 2013 08:31:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,453,1355126400"; d="scan'208";a="242814414"
Received: from unknown (HELO envy.home) ([10.255.14.218])
	by azsmga001.ch.intel.com with ESMTP; 11 Jan 2013 08:31:07 -0800
Message-ID: <50F03E48.6030300@linux.intel.com>
Date: Fri, 11 Jan 2013 08:31:04 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <6F94DE12-515D-47A0-BDC6-9491AFD6849F@keylevel.com>
	<50EAFB84.9090007@linux.intel.com>
	<E4DED516-A931-4908-A58F-5C44D072072B@keylevel.com>
	<50EEF716.5080500@linux.intel.com>
	<BA3737A9-620D-47D1-A6B5-A69309AC706F@keylevel.com>
In-Reply-To: <BA3737A9-620D-47D1-A6B5-A69309AC706F@keylevel.com>
X-Enigmail-Version: 1.4.6
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: meta-cedartrail - where is grub configured for 'install' option?
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
X-List-Received-Date: Fri, 11 Jan 2013 16:31:08 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 01/11/2013 01:00 AM, Chris Tapp wrote:

> BTW the change I need to make to the grub file is partially related -
> the boot device is sda and the internal (install target) is sdb. Grub
> gets configured to boot from sdb but the device is sda on a clean
> boot.

That is definitely a weakness in the installer. Would you please open a
bug for this? An improved installer is something we are working on and
this would be good input to track.

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

