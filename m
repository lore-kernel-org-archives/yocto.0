Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B6C774C8050D
	for <yocto@yoctoproject.org>; Thu, 31 Mar 2011 11:36:34 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 31 Mar 2011 09:36:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,276,1299484800"; d="scan'208";a="621709687"
Received: from unknown (HELO [10.255.12.210]) ([10.255.12.210])
	by orsmga002.jf.intel.com with ESMTP; 31 Mar 2011 09:36:34 -0700
Message-ID: <4D94AD91.2060207@intel.com>
Date: Thu, 31 Mar 2011 09:36:33 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "Li, Simon" <simon.li@intel.com>
References: <23F1A04A50711046AF124F3D4D1EB2ECC073F3FE@pgsmsx507.gar.corp.intel.com>
In-Reply-To: <23F1A04A50711046AF124F3D4D1EB2ECC073F3FE@pgsmsx507.gar.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to compile Qt library with bitbake?
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
X-List-Received-Date: Thu, 31 Mar 2011 16:36:35 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/30/2011 11:52 PM, Li, Simon wrote:
> To whom may concern,
>
> Since Qt library is not existed in the default build configuration, I
> have to port it by myself.
>
> Is there any plan to compile Qt in the Yocto? I cannot find Qt with
> zypper as well.
>
Simon,

Qt4 is part of the yocto meta data.

The poky-image-sato-sdk image contains the qt4-pkgs, so you can use the
following command to build the image:

bitbake poky-image-sato-sdk

Sau!


> If not, is there any document to describe how to complie Qt with bitbake?
>
> Best Regards,
>
> Simon Li
>
> Intel Software & Service Group
>
> B1 #205 Tun-Hwa North Rd, Taipei, Taiwan
>
> Desk
>
> 	
>
> +886-2-2514-4287
>
> Mobile
>
> 	
>
> +886-987-303-523
>
> E-Mail
>
> 	
>
> simon.li@intel.com <mailto:gorden.nieh@intel.com>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


