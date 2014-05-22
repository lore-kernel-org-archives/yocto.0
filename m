Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E89CAE00B85; Wed, 21 May 2014 23:10:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from dan.rpsys.net (unknown [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50F86E0077C
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 23:10:34 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s4M6AKnF018269; Thu, 22 May 2014 07:10:20 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id RhK2IecnPiLJ; Thu, 22 May 2014 07:10:20 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s4M6AHKv018254
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Thu, 22 May 2014 07:10:19 +0100
Message-ID: <1400739010.17834.10.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Stefan Seefeld <stefan_seefeld@mentor.com>
Date: Thu, 22 May 2014 07:10:10 +0100
In-Reply-To: <537D1084.4000705@mentor.com>
References: <537D1084.4000705@mentor.com>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-mingw] build error
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
X-List-Received-Date: Thu, 22 May 2014 06:10:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2014-05-21 at 16:45 -0400, Stefan Seefeld wrote:
> Hello,
> 
> I started experimenting with the meta-mingw layer today, using the
> 'daisy' branch for both, poky as well as meta-mingw.
> 
> Running `bitbake meta-toolchain`, the build process failed in one of the
> last steps (1003 of 1005) with:
> 
> ERROR: nativesdk-packagegroup-sdk-host not found in the base feeds
> (x86_64-nativesdk-mingw32 noarch any all).
> 
> Any idea what I may be missing ? I'm using
> 
> MACHINE ??= "qemux86"
> SDKMACHINE ?= "x86_64-mingw32"

Which pacxkage backend were you using? If you didn't use ipk, I'd
suggest trying it. In theory others should work but its ipk I've been
using when working with those layers.

Cheers,

Richard


