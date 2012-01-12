Return-Path: <jfabernathy@gmail.com>
Received: from mail-qw0-f41.google.com (mail-qw0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66236E0030C
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2012 10:52:56 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qats34 with SMTP id s34so344371qat.14
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2012 10:52:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=0op/SqVaZ681CIYuQhnzbV2UfuMRsFmCCLe57zOy+/o=;
	b=CuOiYrumVemf7BZuhMm4uG1xPdSY87RLIksHu0xdlgxHKdlIMS7/WTKf2Xa1foL7cD
	vL6WYtoXen/UhGS/Bte0h07spSpjmF0RM87i5CFaNEDLAd9FEEj71FV/QbhKRgAD26C0
	7IbtXPTZn2caX/cWTYaEgQXFMeYfZ1gPJ8i84=
Received: by 10.224.52.75 with SMTP id h11mr7463256qag.46.1326394375344;
	Thu, 12 Jan 2012 10:52:55 -0800 (PST)
Received: from [10.0.1.39] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	r10sm11564856qaz.7.2012.01.12.10.52.53 (version=SSLv3 cipher=OTHER);
	Thu, 12 Jan 2012 10:52:54 -0800 (PST)
Message-ID: <4F0F2C01.4020504@gmail.com>
Date: Thu, 12 Jan 2012 13:52:49 -0500
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4F0ED7D2.9050807@gmail.com> <4F0EDAC1.2070805@mlbassoc.com>
In-Reply-To: <4F0EDAC1.2070805@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: where to put IMAGE_INSTALL??
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
X-List-Received-Date: Thu, 12 Jan 2012 18:52:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/12/2012 08:06 AM, Gary Thomas wrote:
> On 2012-01-12 05:53, Jim Abernathy wrote:
>> There seems to be some sensitivity to where I put the statement 
>> IMAGE_INSTALL += "web-webkit".
>>
>> At first I just modifed the 
>> meta/receipes-sato/image/core-image-sato.bb file to include it. That 
>> caused the webkit to be built.
>>
>> Since that is not an ideal location, I removed it and put it into the 
>> local.conf file. That also caused the webkit to be built, but I 
>> wanted it to be part of my BSP permanently.
>>
>> I thought about creating a core-image-sato.bbappend file with the 
>> IMAGE_INSTALL += "web-webkit" in it and put that into the BSP, but 
>> that didn't cause the webkit to be built. Under
>> the meta-intel/meta-n450 directory, I created a receipes-jfa 
>> directory and put the core-image-sato.bbappend file there.
>>
>> I must be missing a key rule about directory parsing and .bbappend 
>> files.
>
> Look at the how the layers are parsed - this info is in 
> <layer>/conf/layer.conf
>
> Try putting your .bbappend file in
>    .../meta-intel/meta-n450/recipes-jfa/images/core-image-sato.bbappend
>
I just tested your method of putting the .bbappend file in the directory 
above and it work just fine.  I also found out that you should not put 
the IMAGE_INSTALL in the local.conf.  It builds okay, but the resulting 
image will not boot.  Tom pointing me the a statement in the Poky 
reference manual about not doing this as well.

JIm A


