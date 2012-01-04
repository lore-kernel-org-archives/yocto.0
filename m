Return-Path: <pedro@algarvio.me>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62875E01366
	for <yocto@yoctoproject.org>; Wed,  4 Jan 2012 05:32:41 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@algarvio.me;
	x-dkim-adsp=none (insecure policy)
Received: by wgbdt13 with SMTP id dt13so25850655wgb.11
	for <yocto@yoctoproject.org>; Wed, 04 Jan 2012 05:32:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=algarvio.me; s=mail;
	h=message-id:disposition-notification-to:date:from:user-agent
	:mime-version:to:subject:references:in-reply-to:x-enigmail-version
	:openpgp:content-type:content-transfer-encoding;
	bh=5MnHhwrHEw3SlBbzJMHI3K2/EYvaiSlw5AL2HbpG2xA=;
	b=I9+t6TgphyhbT2Z6+bGDfScP8s6K0NnDnMe2Z4KEbBGKtI2OMF9Q4Ard2tMC7iS4ae
	PyXzQ0I2G0qWhv8EzEEJOIfLiHLwm6RiLgmp1wpzs1VbZsbk3HsOu7UWPSDO0MvAhm2A
	B973NtxkjdMJuoljhAjAymuL4o4TYVto7ZkFs=
Received: by 10.227.57.68 with SMTP id b4mr11479725wbh.11.1325683960876;
	Wed, 04 Jan 2012 05:32:40 -0800 (PST)
Received: from [10.1.0.44] (a89-154-151-86.cpe.netcabo.pt. [89.154.151.86])
	by mx.google.com with ESMTPS id o41sm20471173wba.19.2012.01.04.05.32.39
	(version=SSLv3 cipher=OTHER); Wed, 04 Jan 2012 05:32:40 -0800 (PST)
Message-ID: <4F0454F0.3000107@algarvio.me>
Date: Wed, 04 Jan 2012 13:32:32 +0000
From: Pedro Algarvio <pedro@algarvio.me>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F02005F.4080705@algarvio.me>
	<20120104055803.GL31275@sakrah.homelinux.org>
In-Reply-To: <20120104055803.GL31275@sakrah.homelinux.org>
X-Enigmail-Version: 1.3.4
OpenPGP: id=9C558009
Subject: Re: Python Math Module
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
X-List-Received-Date: Wed, 04 Jan 2012 13:32:43 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

First of all, Thanks!

So basically, for a smaller space, python is split into several
packages, how can I known which packages exist?

Look at it's recipe?

Best Regards,
Pedro Algarvio.

On 04/01/12 05:58, Khem Raj wrote:
> On (02/01/12 19:07), Pedro Algarvio wrote:
>> I've started to port the Mini2440 openembedded layer found at
>> http://code.google.com/p/mini2440/ and also PySide from Angstrom or
>> the old OpenEmbedded layers I think(can't remember now).
>>
>> My layers can be found at http://dev.ufsoft.org/projects/yocto
>>
>> I found out while porting PySide's examples that python does not ship
>> with it's math module, is there a specific reason why?
> 
> add RDEPENDS_${PN} += "python-math" to your  pyside recipe
> 
>>
>> I need to add that I'm pretty new to all this, so I might be doin'
>> things the wrong way...
>>
>> Anyway, any pointers on how to add the python's math module to an
>> image is more than welcome, I'd like to include it as a dependency for
>> the pyside examples bb script.
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> 

