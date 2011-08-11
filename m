Return-Path: <scott.a.garman@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24B04E00771
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2011 16:57:35 -0700 (PDT)
Received: from mail-iy0-f172.google.com ([209.85.210.172])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 11 Aug 2011 16:57:44 -0700
Received: by iye7 with SMTP id 7so4390184iye.17
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2011 16:57:44 -0700 (PDT)
Received: by 10.231.93.135 with SMTP id v7mr639942ibm.18.1313107063983;
	Thu, 11 Aug 2011 16:57:43 -0700 (PDT)
Received: from [127.0.0.1] (masterfoo.zenlinux.com [207.192.74.254])
	by mx.google.com with ESMTPS id fu7sm1848970ibb.53.2011.08.11.16.57.42
	(version=SSLv3 cipher=OTHER); Thu, 11 Aug 2011 16:57:43 -0700 (PDT)
Message-ID: <4E446C74.9070807@intel.com>
Date: Thu, 11 Aug 2011 16:57:40 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Lightning/1.0b2 Thunderbird/3.1.11
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <02B62B87-3FD5-421C-A344-9A808B1E9C99@keylevel.com>
In-Reply-To: <02B62B87-3FD5-421C-A344-9A808B1E9C99@keylevel.com>
Subject: Re: bbappend - Where should my file be?
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
X-List-Received-Date: Thu, 11 Aug 2011 23:57:35 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/11/2011 04:51 PM, Chris Tapp wrote:
> I've got a linux-wrs_git.bbappend file in a layer (under poky laverne
> 4.0.1) that contains:
>
> COMPATIBLE_MACHINE_Vortex86DX = "Vortex86DX"
> WRMACHINE_Vortex86DX = "common_pc"
>
> FILESEXTRAPATHS := "${THISDIR}/${PN}"
>
> SRC_URI += " file://defconfig"
>
> Where should the defconfig file be relative to the bbappend?
>
> I've tried:
>
> MyLayer
> +--- recipies
> +--- linux
> +--- linux-wrs_git.bbappend
> +--- linux-wrs_git
> +--- defconfig
>
>
> However, my defconfig file isn't being picked up during do_unpack:
>
> cp: cannot stat
> `/home/chris/yocto/yocto-versions/laverne-4.0.1/meta/recipes-kernel/linux/files/defconfig':
> No such file or directory

It looks like this is where the file is expected.

I believe also meta/recipes-kernel/linux/linux/defconfig should also work.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

