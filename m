Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 173594C8006D
	for <yocto@yoctoproject.org>; Fri, 28 Jan 2011 12:23:07 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 28 Jan 2011 10:23:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,393,1291622400"; d="scan'208";a="381310586"
Received: from unknown (HELO [10.255.14.108]) ([10.255.14.108])
	by azsmga001.ch.intel.com with ESMTP; 28 Jan 2011 10:23:06 -0800
Message-ID: <4D430989.9050407@linux.intel.com>
Date: Fri, 28 Jan 2011 10:23:05 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <042CC4DD-1AF2-421C-8423-7251B294B935@keylevel.com>
In-Reply-To: <042CC4DD-1AF2-421C-8423-7251B294B935@keylevel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Kernel QA build error
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
X-List-Received-Date: Fri, 28 Jan 2011 18:23:07 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/28/2011 12:31 AM, Chris Tapp wrote:
> I'm getting a QA failure when running a build from a recent git master:
>
>> Checking autotools environment for common misconfiguration
>> NOTE: Checking autotools environment for common misconfiguration
>> linux: Recipe file does not have license file information
>> (LIC_FILES_CHKSUM)
>> ERROR: linux: Recipe file does not have license file information
>> (LIC_FILES_CHKSUM)
>> Licensing Error: LIC_FILES_CHKSUM does not match, please fix
>> ERROR: Licensing Error: LIC_FILES_CHKSUM does not match, please fix
>> Function 'do_qa_configure' failed
>> ERROR: Function 'do_qa_configure' failed
>
> This is when building kernel version 2.6.33.2-r2.
>
Chris,

This has been fixed in master, this is due to that recipe missing the 
LIC_FILES_CHKSUM (as noted in the error message).  I added the missing line:

+LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"

Thanks for pointing this one out.


Sau!

> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


