Return-Path: <jfabernathy@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10566E00596
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2012 11:54:54 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so4348092ghb.35
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2012 11:54:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=TqseZ5+eo11MvUwzIwlfuPrxTGlF/kOF9JT3/XqBx20=;
	b=eaxyo/w1pOYgWCBJnakjOmLYhrLBaJV3xq91hYpXNXizTlZurZMh7xasffkjbHXfKj
	yS+rQOUaJ6h5KqBHPvshEsLo4gkm/6F4ceb+31kuwNgsXd/0gv5rE6PSE0mNNR0+ykBx
	biuhmFXrSIkA1Cj4eY3uhrIjku4BzJs+a+hbTtRN+9LMGarARwDSd7FmH4LTT0LTNyM7
	DguHXZyLvc6sogGhq5Wp1QBG6Hq9ag8vquois0pYrKs9YJqYimI+h6MoXBwv7NNqFJ+r
	jKal/WFUX0FUtlhWHKqNWEYePb5t0VeHss7FTYXn9Yl47Ak8imQ/MKXenLBgvDpW5ugX
	Oaeg==
Received: by 10.224.198.133 with SMTP id eo5mr390588qab.34.1331837694359;
	Thu, 15 Mar 2012 11:54:54 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-33-105.dhcp.embarqhsd.net. [184.4.33.105])
	by mx.google.com with ESMTPS id w9sm5553523qao.0.2012.03.15.11.54.53
	(version=SSLv3 cipher=OTHER); Thu, 15 Mar 2012 11:54:53 -0700 (PDT)
Message-ID: <4F623AFC.1030707@gmail.com>
Date: Thu, 15 Mar 2012 14:54:52 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAPhnLPBAvAMwmuC1wNDS7E9mA5Y4VM_5SvA=4qo+UokPtiABQQ@mail.gmail.com>
In-Reply-To: <CAPhnLPBAvAMwmuC1wNDS7E9mA5Y4VM_5SvA=4qo+UokPtiABQQ@mail.gmail.com>
Subject: Re: [Announcement] 1.2 Milestone 3 Released
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
X-List-Received-Date: Thu, 15 Mar 2012 18:54:55 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/14/2012 06:05 PM, Flanagan, Elizabeth wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
> Hello,
>
> We are pleased to announce the third milestone of the coming release
> of Yocto 1.2. This milestone release is available at:
>
>     http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.2-m3/poky-edison-6.1.0-m3.tar.bz2
>     or
>     http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/poky-edison-6.1.0-m3.tar.bz2
>
> Additional tarballs for meta-qt3 and the eclipse plugin are available at:
>
>     http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.2-m3/meta-qt3-edison-6.1.0-m3.tar.bz2
>     http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.2-m3/eclipse-poky-edison-6.1.0-m3.tar.bz2
>
> with mirror locations at:
>
>     http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/meta-qt3-edison-6.1.0-m3.tar.bz2
>     http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/eclipse-poky-edison-6.1.0-m3.tar.bz2
>
> For information on 1.2 M3 test results see:
>
>     http://wiki.yoctoproject.org/wiki/Yocto_1.2_Milestone_Test_Report
>
> Thank you everyone for all the hard work.
>
> - ------------------
> Elizabeth Flanagan
> Yocto Project
> Release Engineer

Dumb question Alert!

So if I want to test with 1.2_M3.final, what is the correct way using 
git?  I periodically 'git pull' in poky and meta-intel directories while 
master is checked out.  From doing that I see the recent changes 
relative to M3.

Do i just 'git checkout -b 1.2_M3.final' and start there?  Do I do the 
same thing in both the poky and meta-intel directory?

Jim A

> - --------------------
> edison-6.1.0-m3 Errata
> - --------------------
> Release Name: poky-edison-6.1.0-m3
> Branch:  1.2_M3
> Tag:  1.2_M3.final
> Hash:  320558f494c618f53e0c773db3ea0109476e8359
> md5:  24a90ec80d90c7f6757d9be50c2efe47  poky-edison-6.1.0-m3.tar.bz2
> Download Locations:
> http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.2-m3/poky-edison-6.1.0-m3.tar.bz2
> http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/poky-edison-6.1.0-m3.tar.bz2
>
> Release Name: eclipse-poky-edison-6.1.0-m3
> Branch:  1.2_M3
> Tag:  1.2_M3.final
> Hash:  06652a1b3f7a82481b4a7f1fee279ce1c616013b
> md5:  eaa2d0e9a5554463b1d44b8b5f9d29e0  eclipse-poky-edison-6.1.0-m3.tar.bz2
> Download Locations:
> http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.2-m3/eclipse-poky-edison-6.1.0-m3.tar.bz2
> http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/eclipse-poky-edison-6.1.0-m3.tar.bz2
>
> Release Name: meta-qt3-edison-6.1.0-m3
> Branch:  1.2_M3
> Tag:  1.2_M3.final
> Hash:  7e283e296d589256bef1a5652b72f264aba72e1a
> md5:  89d04eaf3aead8322c3b601190391f2d  meta-qt3-edison-6.1.0-m3.tar.bz2
> Download Locations:
> http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.2-m3/meta-qt3-edison-6.1.0-m3.tar.bz2
> http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/meta-qt3-edison-6.1.0-m3.tar.bz2
>
> - --------------------
> Features
> - --------------------
> - - HOB2 with redesigned UI and workflow implementation
> - - Build appliance features and stability.
> - - Error handling improvement such as display a summary of warning
> and error messages at the end of Bitbake command.
> - - Oracle/Sun Hotspot JDK/JRE support.
> - - POSIX support
> - - Enhancement to the Eclipse plug-in for Bitbake commander
>
> - --------------------
> Known Issues
> - --------------------
> - - Bug 2066 - Glxgears failed in qemuarm/qemuppc/qemumips.
> - - Bug 1898-[beagleboard C4] X server cannot startup with 3.0 kernel.
> - - Bug 1906 -[QEMU] loses focus in qemux86-64 terminal When I press
> key [CTRL+L]
> - - Bug 1912-[beagleboard C4] Segmentation fault when reboot the
> system with 3.0 kernel
> - - Bug 1917-[non-GPLv3] image fails to boot up with no root filesystem found
> - - Bug 1918-[x32] insane.bbclass reports error for x32 kernel
> - - Bug 1899-[multilib] do_rootfs failed for lib-connman-gnome with ipk
> - - Bug 1903-[HOB] do_rootfs failed with dummy-image against a clean working dir
> - - Bug 1910-[HOB] git recipes not shown in package view due to
> inconsistent package name
> - - Bug 1911-[HOB] non-GPLv3 build not work
>
>
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v2.0.16 (GNU/Linux)
>
> iQEcBAEBAgAGBQJPYRW0AAoJEEyK+E/MEkQPd8MIALCvjFoOhM8yU7osB/YYqBWC
> 6NfnzRmPLnySGoeN3oobKomLG9ZoGmrwwuSfYfAlf3w6TDTAOunSi6x/94L1P6pa
> 5cOiSCkZGYP4OLBDfGynciCRLTjmqREq7I6uEHscvvG9n8f5uN99hVG8zc99JAzi
> Cu2z4iyr/qV/WLzJj7Fg9QPAWLUp3xtrgiqaa+0W26qdea6go6hbdbhZ0tYhf/HE
> duXPgjgwhGHUKNFli3UDchJRdGoIvm/TLkKfzqgFEDdE/5lbKPvWg6Q21Ec04ZM9
> N8OqoAJJMOUtVztl3CIJ7bA2/zTNazIzLBVFiodtzpKJr9FMJsJKp+GpJybuCKg=
> =n5IG
> -----END PGP SIGNATURE-----
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


