Return-Path: <jfabernathy@gmail.com>
Received: from mail-qw0-f41.google.com (mail-qw0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 323DAE0072A
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2012 05:28:36 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qats34 with SMTP id s34so97938qat.14
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2012 05:28:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=OWHPNkKXLfDUiBHIoUiNyWBgwNqPahQ34HGaolfVTKo=;
	b=FSAxWuBfpDvEL3/+tq7uOMMTRmWhr8nH28uKkG01110xTNGMgM5bU3eHjpgjypLlF4
	plJ692P+qVITooXNhgZkxC0sq9Iv7tz/VuJyHXNoNGwCKWdloAOQjeQOgVAOYKZ3bWji
	A3mNNe09qsPvOQxfJj5IGP3ROqFTB/VKnImKo=
Received: by 10.224.186.130 with SMTP id cs2mr5285249qab.82.1326374915551;
	Thu, 12 Jan 2012 05:28:35 -0800 (PST)
Received: from [10.0.1.39] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	r17sm10094445qap.11.2012.01.12.05.28.34 (version=SSLv3 cipher=OTHER);
	Thu, 12 Jan 2012 05:28:34 -0800 (PST)
Message-ID: <4F0EDFFF.5010702@gmail.com>
Date: Thu, 12 Jan 2012 08:28:31 -0500
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
X-List-Received-Date: Thu, 12 Jan 2012 13:28:36 -0000
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
I think you are correct now that I look more closely at the 
meta-n450/conf/layer.conf file.

It has:
BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
     ${LAYERDIR}/recipes-*/*/*.bbappend"

which tells me that it will not find 
recipes-jfa/core-image-sato.bbappend, but will find 
meta-n450/recipes-jfa/images/core-image-sato.bbappend

Thanks,

JIm A

