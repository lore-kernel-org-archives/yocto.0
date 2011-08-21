Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83A01E0048B
	for <yocto@yoctoproject.org>; Sun, 21 Aug 2011 05:13:28 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:7737
	helo=MacBook-Pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1Qv64y-0007iD-0C
	for yocto@yoctoproject.org; Sun, 21 Aug 2011 12:20:36 +0100
Message-Id: <DB98A6C7-B673-4397-9D06-C14F2B01266D@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
In-Reply-To: <A0C1441E-0D7E-4E39-B917-53F486935D42@keylevel.com>
Mime-Version: 1.0 (Apple Message framework v936)
Date: Sun, 21 Aug 2011 12:20:36 +0100
References: <1D7CE6A2-A65C-44F7-89F9-F66374E58B36@keylevel.com>
	<1313770598.13995.115.camel@rex>
	<BD6545AE-F137-4DF9-99FB-8337A2306780@keylevel.com>
	<1313786982.13995.126.camel@rex>
	<CF307BEE-0981-4EC1-8BAA-8071B8B2071A@keylevel.com>
	<1313788968.13995.127.camel@rex>
	<A0C1441E-0D7E-4E39-B917-53F486935D42@keylevel.com>
X-Mailer: Apple Mail (2.936)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Re: Build fails moving from 4.0.1 to 5.0.1
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
X-List-Received-Date: Sun, 21 Aug 2011 12:13:28 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

On 21 Aug 2011, at 10:19, Chris Tapp wrote:

>> What does "ls /home/chris/yocto/ebox3300-build/tmp/deploy/ipk" say?
>>
>
> drwxr-xr-x 2 chris chris   4096 2011-08-19 21:12 all
> drwxr-xr-x 2 chris chris 143360 2011-08-19 21:12 i586
> -rw-r--r-- 1 chris chris      0 2011-08-19 21:12 Packages
> -rw-r--r-- 1 chris chris      0 2011-08-19 21:12 Packages.filelist
> -rwxr--r-- 1 chris chris      0 2011-08-19 03:19 Packages.flock
> -rwxr--r-- 1 chris chris     20 2011-08-19 21:12 Packages.gz
> -rw-r--r-- 1 chris chris      0 2011-08-19 21:12 Packages.stamps
> drwxr-xr-x 2 chris chris   4096 2011-08-19 21:12 Vortex86DX


I don't know if it helps, but all the missing dependencies have .ipk  
files in the i586 directory shown above.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




