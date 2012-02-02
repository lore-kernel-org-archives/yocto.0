Return-Path: <jfabernathy@gmail.com>
Received: from mail-qw0-f41.google.com (mail-qw0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FE86E00592
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2012 09:36:39 -0800 (PST)
Received: by qadz32 with SMTP id z32so168688qad.14
	for <yocto@yoctoproject.org>; Thu, 02 Feb 2012 09:36:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=GcPvYUiQbC4SQLx7oVfYawA0IKhEOPN0J5ioRaVfNlM=;
	b=DXW0opZdC0mQktl7jAIfZS/zpMvlm7Fod63EPISgPseZCA0+b3lWKTFlp866ZQi/Zv
	2NfB/5J1dZXb2w/zFF72eG/QilN/Ud1K4kHapuP7HWIlwrSKDiGfuggZojURcrm1GBCe
	xiQkNYEtTfRPlRaQy0ORQSA8G9l3R2o2Us4g8=
Received: by 10.224.199.199 with SMTP id et7mr5259652qab.89.1328204198876;
	Thu, 02 Feb 2012 09:36:38 -0800 (PST)
Received: from [10.0.1.54] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id fd1sm6882491qab.1.2012.02.02.09.36.37
	(version=SSLv3 cipher=OTHER); Thu, 02 Feb 2012 09:36:38 -0800 (PST)
Message-ID: <4F2AC9A5.5040706@gmail.com>
Date: Thu, 02 Feb 2012 12:36:37 -0500
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F2A0A34.4020605@gmail.com> <4F2AB4FF.5070208@gmail.com>
	<4F2AC2AB.6030204@windriver.com>
In-Reply-To: <4F2AC2AB.6030204@windriver.com>
Subject: Re: needed site is down???
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
X-List-Received-Date: Thu, 02 Feb 2012 17:36:39 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/02/2012 12:06 PM, Mark Hatle wrote:
> On 2/2/12 10:08 AM, jfabernathy wrote:
>> On 02/01/2012 10:59 PM, jfabernathy wrote:
>>> Am I the only one seeing this dead link?  I'm building from master and
>>> can't get to this link that draws the error:
>>>
>>> http://cgit.freedesktop.org/libva/snapshot/libva-1.0.12.tar.bz2
>>>
>>> I'm building crownbay bsp with core-image-sato.
>>>
>>> Jim A
>>>
>> I can't seem to build anything that requires something from
>> cgit.freedesktop.org.  The whole site seems to be down.  Is there a 
>> mirror?
>
> Using the standard poky distribution configuration, you should be 
> connecting to our mirrors.
>
> meta-yocto/conf/distro/poky.conf has the settings.  All of the 
> upstream packages should be mirrored there.  If they are not, then 
> please let us know and we'll work on resolving any missing files.
>
> --Mark
>
In the poky.conf file you mentioned, I see the statement in the mirror 
section:

http://.*/.*     http://autobuilder.yoctoproject.org/sources/ \n \

I'm not sure if this statement will allow the yocto mirror site to pull 
the dead location:

http://cgit.freedesktop.org/libva/snapshot/libva-1.0.12.tar.bz2
>> JIm A
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


