Return-Path: <jfabernathy@gmail.com>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E1C4E00344
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 10:01:44 -0700 (PDT)
Received: by ggnk4 with SMTP id k4so1663315ggn.35
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 10:01:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=vXxTv2nU0EvhaNJLPWav8DLC5igClnv8jRPRx9glyWQ=;
	b=T4CzHhz33sKFfewvRKkQa2y9VzAkE/2x0m9dKXrDXeeHD0n5luJb2Zqg4b0FY+U3y2
	83PpZOb/5v3/CofTb+RkJk6wEqkzfC+3ZLRqzPcWFTdumOWpqueWWZrcVxfwCgc1f+KL
	uaWLO/88IEje0XDtmka67uOu6R49aaTJeYhfZ47RDeypI8VQlxCQspFe2VK46wRc6qiA
	uIYwZZncZxcAGDlLDrsiGVGIol04HWEFgRjFal5ButLLrO2SkulLcMukhw5t1fy4MhGU
	aTG1ANjw3vRAmQJEGt7+q32i17GT3svILg88QwmmEr6x17P6qaQfayuk5XRFWh9Sn5hI
	DvAg==
Received: by 10.236.73.4 with SMTP id u4mr57102625yhd.78.1342026104128;
	Wed, 11 Jul 2012 10:01:44 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-39-191.dhcp.embarqhsd.net. [184.4.39.191])
	by mx.google.com with ESMTPS id a79sm4095200yhk.16.2012.07.11.10.01.43
	(version=SSLv3 cipher=OTHER); Wed, 11 Jul 2012 10:01:43 -0700 (PDT)
Message-ID: <4FFDB177.4000208@gmail.com>
Date: Wed, 11 Jul 2012 13:01:43 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <4FFC86E1.9020402@gmail.com> <4FFD9E2C.2080005@gmail.com>
	<1781737.YJFop0SogY@helios> <4FFDAEAA.7060303@gmail.com>
In-Reply-To: <4FFDAEAA.7060303@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: meta-baryon
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
X-List-Received-Date: Wed, 11 Jul 2012 17:01:44 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/11/2012 12:49 PM, Jim Abernathy wrote:
> On 07/11/2012 11:47 AM, Paul Eggleton wrote:
>> On Wednesday 11 July 2012 11:39:24 Jim Abernathy wrote:
>>> On 07/10/2012 03:47 PM, Jim Abernathy wrote:
>>>> I took at look at the meta baryon NAS project and thought it was
>>>> interesting and decided to build it on a n410 based miniITX 
>>>> motherboard.
>>>>
>>>> I think I guessed correctly on how to integrate it in.
>>>> 1. make the machine = n450 in local.conf
>>>> 2. make distro = baryon in local.conf
>>>> 3. add meta-baryon and meta-n450 layers to bblayer.conf
>>>> 4. put the commercial license flag in local.conf.
>>> This is an issues with Denzil.  I went back and built it on edison
>>> branch and it built clean and boots on a D510MO board.
>> OK, thanks. FYI I'm just running through a fresh build with it now with
>> master, and have hit a few unrelated issues, so I haven't quite got 
>> to the one
>> you found yet. When I do I'll certainly investigate and let you know 
>> what I
>> find.
> When you do have time, let me know if my assumptions above were 
> correct.  I must be missing something because I can't find any 
> evidence of webmin in the file system.  So while my board boots Yocto, 
> I can't see any of the baryon layer.  Could a CORE-IMAGE-EXTRA-INSTALL 
> or something be needed to force the inclusion into the file system??
>
> Jim A
>
Never mind.  Because baryon is on master and poky is on edison, there 
are some issues like:

1.  the baryon-image.bb uses CORE_IMAGE_EXTRA_INSTALL instead of what 
edison needed,which was POKY_EXTRA_INSTALL
2.  ffmpeg needs COMMERCIAL_LICENSE = yes instead of 
LICENSE_FLAGS_WHITELIST += "commercial"

Jim A

>
>> Cheers,
>> Paul
>>
>
>



