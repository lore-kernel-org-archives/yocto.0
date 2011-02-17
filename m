Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5B8734C800A8
	for <yocto@yoctoproject.org>; Thu, 17 Feb 2011 03:14:27 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 17 Feb 2011 01:14:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,485,1291622400"; d="scan'208";a="603583428"
Received: from unknown (HELO [10.255.15.38]) ([10.255.15.38])
	by orsmga002.jf.intel.com with ESMTP; 17 Feb 2011 01:14:24 -0800
Message-ID: <4D5CE6EF.7040507@linux.intel.com>
Date: Thu, 17 Feb 2011 01:14:23 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CD558AEE-7B62-4DF4-923A-CC2604260653@keylevel.com>
In-Reply-To: <CD558AEE-7B62-4DF4-923A-CC2604260653@keylevel.com>
Subject: Re: Specifying license files
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
X-List-Received-Date: Thu, 17 Feb 2011 09:14:27 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/17/2011 12:57 AM, Chris Tapp wrote:
> I'm trying to create a recipe to build libSDL, but I can't get the
> licensing working. My .bb file contains:
>
> LICENSE = "LGPLv2.1"
> LIC_FILES_CHKSUM = "file://COPYING;md5=27818cd7fd83877a8e3ef82b82798ef4"
>
This is correct if the md5sum of COPYING is matching.

> The source is downloaded in to tmp/ where I have a
> libsdl-1.2.14-r0/SDL-1.2.14 directory that contains the COPYING file.
>
Since the source is created in a subdirectory, you need to reset the $S as:

S = "${WORKDIR}/SDL-${PV}"

${PV} is derived from the version of the recipe, you do not need to set 
it explicitly.

> How should I specify this in LIC_FILES_CHKSUM ?
>
By setting S as above this will give the file:// root to be under the 
SDL-1.2.14 directory.

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


