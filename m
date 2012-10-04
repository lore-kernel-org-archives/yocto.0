Return-Path: <jfabernathy@gmail.com>
Received: from mail-gh0-f176.google.com (mail-gh0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14F35E0146E
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2012 12:17:12 -0700 (PDT)
Received: by mail-gh0-f176.google.com with SMTP id z16so237085ghb.35
	for <yocto@yoctoproject.org>; Thu, 04 Oct 2012 12:17:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=kv3zJK2BS06y/UzlObKMX7eGc3Jg8JA6lIaLowQXwVo=;
	b=d7BFaic9ZpTpQ+QC7g1yYZE5Gqi/ZyYc2+mEuqB8kaw7NZw9T7Sx6Hwre1YK9ATCDg
	G/m2nm22qbayoM0YemDlXgse4NPdhvOSgoPRYJpC/rgt5vmra0Q37/OT2rxcBE9/QVpM
	GzX36v7Ii+qbM+dtpwtVOonF0YcwUTBjy9IFgHpI+yJKUhy/N5Tsk9QHlNd9XM02Dzol
	3aW/Vq8bdaC+IENVE1Hhu+04mzNoLc1C5DquX4gNP/wyRXTJ7FAUZ5cpLO7cSmGwahLc
	c0VaIuYmgY2DMgyiRqHg+2xjEhV+kQfIH23DynFv+2lB5EZYeclnVlOUBYLwqjZAEVSe
	0qeQ==
Received: by 10.236.118.17 with SMTP id k17mr6173171yhh.69.1349378229577;
	Thu, 04 Oct 2012 12:17:09 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-32-137.dhcp.embarqhsd.net. [184.4.32.137])
	by mx.google.com with ESMTPS id p1sm946697anj.13.2012.10.04.12.17.08
	(version=SSLv3 cipher=OTHER); Thu, 04 Oct 2012 12:17:09 -0700 (PDT)
Message-ID: <506DE0B4.7060904@gmail.com>
Date: Thu, 04 Oct 2012 15:17:08 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120912 Thunderbird/15.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <506DE049.8050507@gmail.com>
In-Reply-To: <506DE049.8050507@gmail.com>
Subject: Re: log
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
X-List-Received-Date: Thu, 04 Oct 2012 19:17:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/04/2012 03:15 PM, Jim Abernathy wrote:
> Build Configuration:
> BB_VERSION        = "1.16.0"
> TARGET_ARCH       = "i586"
> TARGET_OS         = "linux"
> MACHINE           = "crownbay"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.2+snapshot-20121004"
> TUNE_FEATURES     = "m32 core2"
> TARGET_FPU        = ""
> meta
> meta-yocto
> meta-yocto-bsp    = "master:ee76b805f96f00aec386a1c34d176eea7d66f526"
> meta-intel
> meta-crownbay     = "master:c4a86a2ad5df3a94b47e394090f67f7e324b1483"
> meta-jfa          = "<unknown>:<unknown>"
>
My bad.  meant to send this to my other computer.

Jim A

