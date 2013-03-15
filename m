Return-Path: <koansoftware@gmail.com>
Received: from mail-ea0-f175.google.com (mail-ea0-f175.google.com
	[209.85.215.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6309E00429
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 09:58:33 -0700 (PDT)
Received: by mail-ea0-f175.google.com with SMTP id o10so1619964eaj.20
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 09:58:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:reply-to:organization:user-agent
	:mime-version:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=W3lwiJUsYhHtXIrejfRQOnBZwHMC8jbwUxYfczW292Y=;
	b=y+KTodfbPEzNfOArIsfjolhEMVbtpmiX7LX7ca2h6z5EQ0ZHmpOmFRrFa3i7DApC3T
	3pooSXS6+4mR+FqbhpW5lrdUwY2Fi5GltNBRgsJofn/8MlfSwq0fzAsauma//ftBZl+R
	cZMPw9yfn8bSkCr80fPMg0Q6UpKGPnJu4iIkG9TD/IlojvRK+nZXSaGnyQo6L0fJwoB2
	XaU4ny12XMgjKU6DOVZoGNYFGgpe0qsoQEdTdtIVjm8XjxkVAHEI1XKxZqe79/QMlFbd
	qXvjox+mxGs8dCmlX6q28T3KIluGCvIZlFksekL0bWZgrZqXziHcRq7lBI2IA8SYb22a
	UN9w==
X-Received: by 10.14.223.199 with SMTP id v47mr19872459eep.18.1363366712335;
	Fri, 15 Mar 2013 09:58:32 -0700 (PDT)
Received: from [192.168.0.5]
	(host56-7-static.30-87-b.business.telecomitalia.it. [87.30.7.56])
	by mx.google.com with ESMTPS id q5sm11147328eep.11.2013.03.15.09.58.29
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 15 Mar 2013 09:58:30 -0700 (PDT)
Message-ID: <51435334.6010406@gmail.com>
Date: Fri, 15 Mar 2013 17:58:28 +0100
From: Marco <koansoftware@gmail.com>
Organization: MC
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130308 Thunderbird/17.0.4
MIME-Version: 1.0
CC: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CABTzgQ6bgSFJ2nu2PcW37sfb=YiibDqOPZyc9m5u_w8RE=GJuA@mail.gmail.com>
In-Reply-To: <CABTzgQ6bgSFJ2nu2PcW37sfb=YiibDqOPZyc9m5u_w8RE=GJuA@mail.gmail.com>
Subject: Re: Problem with core-image-sato at init
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: koansoftware@gmail.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 15 Mar 2013 16:58:34 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Il 06/03/2013 16:32, Satya Swaroop Damarla ha scritto:
> Hey Guys, Hi Rudy, Hi Hans
>
> As promised I am coming with the problem again.. I successfully made
> core-image-minimal working and boot after chnaging the boot
> parameters... but my core-image-sato is hanging at the boot.
>
> I looked in the init files of core-image minimal and core-image-sato and
> they are the same. Here is the output where it logs.... I tried to find
> the error with my little yocto experience but so far no success. I would
> request your professional suggestions in this problem
>
> [    3.240408] VFS: Mounted root (ext2 filesystem) on device 179:1.
> [    3.273397] devtmpfs: mounted
> [    3.276615] Freeing init memory: 236K
> INIT: version 2.88 booting
>
> Cheers,
> Satya
>
>
> _______________________________________________


Hi,
I have the same problem here:


VFS: Mounted root (nfs filesystem) on device 0:9.
Freeing init memory: 144K

... more than 60" waiting with no messages nor splashscreen ...

Poky 8.0 (Yocto Project 1.3 Reference Distro) 1.3+snapshot-20130315 ttyS0

login:


Any hint would be appreciated.
TIA
-- 
Marco

