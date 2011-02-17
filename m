Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id B36C74C800A8
	for <yocto@yoctoproject.org>; Thu, 17 Feb 2011 03:09:45 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1H99VP9025709;
	Thu, 17 Feb 2011 01:09:31 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 17 Feb 2011 01:09:30 -0800
Received: from [128.224.163.157] ([128.224.163.157]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 17 Feb 2011 01:09:30 -0800
Message-ID: <4D5CE5C8.50008@windriver.com>
Date: Thu, 17 Feb 2011 17:09:28 +0800
From: Kang Kai <Kai.Kang@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <CD558AEE-7B62-4DF4-923A-CC2604260653@keylevel.com>
In-Reply-To: <CD558AEE-7B62-4DF4-923A-CC2604260653@keylevel.com>
X-OriginalArrivalTime: 17 Feb 2011 09:09:30.0957 (UTC)
	FILETIME=[62D7C7D0:01CBCE82]
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Thu, 17 Feb 2011 09:09:46 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2011年02月17日 16:57, Chris Tapp wrote:
> I'm trying to create a recipe to build libSDL, but I can't get the 
> licensing working. My .bb file contains:
>
> LICENSE = "LGPLv2.1"
> LIC_FILES_CHKSUM = "file://COPYING;md5=27818cd7fd83877a8e3ef82b82798ef4"
>
> The source is downloaded in to tmp/ where I have a 
> libsdl-1.2.14-r0/SDL-1.2.14 directory that contains the COPYING file.
find the file COPYING, and run md5sum COPYING, then you will get the md5 
value, and substitute the value after "md5=".
I think it will be ok.



>
> How should I specify this in LIC_FILES_CHKSUM ?
>
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


