Return-Path: <jfabernathy@gmail.com>
Received: from mail-gh0-f176.google.com (mail-gh0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70AD4E00283
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2012 13:40:55 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so6424482ghb.35
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2012 13:40:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=K6U5qySVo94aLrvhGQWVG7q5QUq5Lkh7IXmrK8PCM0c=;
	b=d5C9+3AZ5slu/bTokc8Mh4xJr/Op2xNVwHJ1K6eTJOyos6yrT8/831rqImkVhAuFKc
	pR2eEDGyvxBiQ65Swdx7lVVVEgmcwWQWKvzLen0OWgu9Zyh9UUol3g9PLfPpZpwSkHeh
	eyt7eVJJS3CgJPQ6QsiIz0VMeB5Gy2usdUMkMFOPix1MTE/2MPbjJevc0wS0Mj/q/4Jq
	oKSOra7E9ziN1w5Hsw1MMpLWzyAV6+wX0xtx1CfgyXdUgIBZolfcK1Bz0hb+Fnah/g1G
	zpeQ6CY1QB3R0AWa+x6ssEYIiXaJ9DH9dKtwuyj1dfPk6fysWsc49byhyZzKVbsy/COX
	UaXg==
Received: by 10.236.75.132 with SMTP id z4mr10473215yhd.25.1342471254726;
	Mon, 16 Jul 2012 13:40:54 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-39-191.dhcp.embarqhsd.net. [184.4.39.191])
	by mx.google.com with ESMTPS id y63sm30960517yha.9.2012.07.16.13.40.52
	(version=SSLv3 cipher=OTHER); Mon, 16 Jul 2012 13:40:53 -0700 (PDT)
Message-ID: <50047C52.7020701@gmail.com>
Date: Mon, 16 Jul 2012 16:40:50 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4C00373C-A571-4194-A3CF-28B349430E53@keylevel.com>
In-Reply-To: <4C00373C-A571-4194-A3CF-28B349430E53@keylevel.com>
Subject: Re: Is it just me? Can't get 'Atom-PC' to boot.
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
X-List-Received-Date: Mon, 16 Jul 2012 20:40:55 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/16/2012 04:25 PM, Chris Tapp wrote:
> I've built the 'atom-pc' kernel as follows:
>
> 1) git clone git://git.yoctoproject.org/poky.git
> 2) git checkout denzil
> 3) source poky/oe-init-build-env work-area
> 4) Edit local.conf so that threads/parallel make are both 16 and MACHINE is 'atom-pc'
> 8) bitbake virtual/kernel.
>
> However, the kernel that gets produced fails to boot. All I get is a screen full of random characters and nothing comes out of the serial port (configured for kernel messages). I don't get any 'Loading...' or 'Uncompressing...' messages either. Using a kernel image from else where (e.g. Voyage Linux) works as expected.
>
> What do I need to do differently to get the above to build a bootable image? I'm assuming that 'atom-pc' works for others?
When I build for Atom PCs, I'm usually targeting a specific BSP like 
CrownBay, n450, Cedartrail. All of those require the meta-intel layer. 
So you need to edit the local.conf with a machine like n450, crownbay, 
cedartrail, etc. and you need to edit bblayer.conf to add the meta-intel 
layer and the meta-intel/meta/crownbay, etc.

I always bitbake core-image minimal or core-image-sato.

Jim A

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



