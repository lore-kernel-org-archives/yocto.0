Return-Path: <jfabernathy@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 997E8E00344
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 09:49:48 -0700 (PDT)
Received: by yenl5 with SMTP id l5so1639902yen.35
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 09:49:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=hknfKZYgvxyQy0buKqXsc/tu/XAVnd03XPq6Zy7Fn4s=;
	b=m8d8Zmn5furZ2S0ctugKsnqwS0NXmshxT/Dvbd5jRjwArCUx+/fMqotZNKQrxGCqQQ
	IuINSN3QM1VRWZyIJ3s58M+PIXt6FeDoHBHsxOBulOlAwR5JLoLsxygtVvbtnWi1ovdI
	HmMzkQa1l4xO6r5ZhZRamItek6iixY+8EvUgyxiKDpsHKoYJuYcnh1fjckmzCebx1kJS
	lKlPCQ/tbWkcpHnjaeh00ErvXp+c3jhJ2RH3VOoyfepGGSwneGEedRJrenUxmoBJUiyT
	yG4oKTgDwM/8xy9gVk08D/razuKMi01v+FMCFKZg5tkrEERvuiSdckOlwXAA6sKqKQGU
	+ryQ==
Received: by 10.236.78.195 with SMTP id g43mr17214135yhe.62.1342025388109;
	Wed, 11 Jul 2012 09:49:48 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-39-191.dhcp.embarqhsd.net. [184.4.39.191])
	by mx.google.com with ESMTPS id u23sm4029498yhl.21.2012.07.11.09.49.46
	(version=SSLv3 cipher=OTHER); Wed, 11 Jul 2012 09:49:47 -0700 (PDT)
Message-ID: <4FFDAEAA.7060303@gmail.com>
Date: Wed, 11 Jul 2012 12:49:46 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <4FFC86E1.9020402@gmail.com> <4FFD9E2C.2080005@gmail.com>
	<1781737.YJFop0SogY@helios>
In-Reply-To: <1781737.YJFop0SogY@helios>
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
X-List-Received-Date: Wed, 11 Jul 2012 16:49:48 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/11/2012 11:47 AM, Paul Eggleton wrote:
> On Wednesday 11 July 2012 11:39:24 Jim Abernathy wrote:
>> On 07/10/2012 03:47 PM, Jim Abernathy wrote:
>>> I took at look at the meta baryon NAS project and thought it was
>>> interesting and decided to build it on a n410 based miniITX motherboard.
>>>
>>> I think I guessed correctly on how to integrate it in.
>>> 1. make the machine = n450 in local.conf
>>> 2. make distro = baryon in local.conf
>>> 3. add meta-baryon and meta-n450 layers to bblayer.conf
>>> 4. put the commercial license flag in local.conf.
>> This is an issues with Denzil.  I went back and built it on edison
>> branch and it built clean and boots on a D510MO board.
> OK, thanks. FYI I'm just running through a fresh build with it now with
> master, and have hit a few unrelated issues, so I haven't quite got to the one
> you found yet. When I do I'll certainly investigate and let you know what I
> find.
When you do have time, let me know if my assumptions above were 
correct.  I must be missing something because I can't find any evidence 
of webmin in the file system.  So while my board boots Yocto, I can't 
see any of the baryon layer.  Could a CORE-IMAGE-EXTRA-INSTALL or 
something be needed to force the inclusion into the file system??

Jim A


> Cheers,
> Paul
>



