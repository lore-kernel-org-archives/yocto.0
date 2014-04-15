Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B197E00BE8
	for <yocto@yoctoproject.org>; Tue, 15 Apr 2014 16:37:42 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s3FNbEWh014605; Wed, 16 Apr 2014 00:37:14 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id SLz5b8L26BUn; Wed, 16 Apr 2014 00:37:14 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s3FNb37w014599
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Wed, 16 Apr 2014 00:37:09 +0100
Message-ID: <1397605018.15843.119.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Denys Dmytriyenko <denis@denix.org>
Date: Wed, 16 Apr 2014 00:36:58 +0100
In-Reply-To: <20140415194307.GG11339@denix.org>
References: <534C0415.20701@mlbassoc.com>
	<3130526.9zUpmp9SKQ@peggleto-mobl5.ger.corp.intel.com>
	<20140415162639.GC11339@denix.org>
	<16254891.OyPbf7clBT@peggleto-mobl5.ger.corp.intel.com>
	<20140415171601.GD11339@denix.org> <20140415174112.GE11339@denix.org>
	<20140415194307.GG11339@denix.org>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: BBB doesn't boot
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 15 Apr 2014 23:37:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2014-04-15 at 15:43 -0400, Denys Dmytriyenko wrote:
> I don't yet know what is going on, but building in the same directory with 
> sources (B = S) makes it work regarless of the path length:
> 
> /OE/RAM/poky-111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111/22222222222222222222222222222222222222222222222222222222222222222222/3333333333333333333333333333333333333333333333333333/tmp/work/beaglebone-poky-linux-gnueabi/linux-yocto/3.14+gitAUTOINC+928d7b2dda_0143c6ebb4-r0/linux
> 
> So, I just commented out setting kernel-specific B in linux-yocto.inc and any 
> kernel now boots with long path:
> 
> #B = "${WORKDIR}/linux-${PACKAGE_ARCH}-${LINUX_KERNEL_TYPE}-build"
> 
> I'm copying Richard and Bruce directly to see if they may have a quick insight 
> and/or accept it as a workaround for the release. I'll keep digging further, 
> but if anyone cares to verify the above workaround works for them, I would 
> appreciate. Thanks!

I'm travelling and don't have hardware so I'm limited in what I can look
at right now. I suspect this workaround "works" because it makes the
"beaglebone-standard-build" extra characters on the path. I have a
feeling your -1111111 test above may have reused sstate or something
like that and given misleading results. I'd be interested in the vmlinux
file from the build above to see if the poky-111111 pathnames are in
there (they get stripped out when you create the zImage).

Cheers,

Richard




