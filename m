Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C28BE00348
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2012 04:14:30 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q9OBEGWQ002123;
	Wed, 24 Oct 2012 12:14:16 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 01410-01; Wed, 24 Oct 2012 12:14:12 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q9OBE5VW002117
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Wed, 24 Oct 2012 12:14:07 +0100
Message-ID: <1351077244.22340.90.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Steffen Sledz <sledz@dresearch-fe.de>
Date: Wed, 24 Oct 2012 12:14:04 +0100
In-Reply-To: <1351076036-25453-2-git-send-email-sledz@dresearch-fe.de>
References: <20121023184056.GR3269@jama.jama.net>
	<1351076036-25453-1-git-send-email-sledz@dresearch-fe.de>
	<1351076036-25453-2-git-send-email-sledz@dresearch-fe.de>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH resend][opkg-utils] opkg.py/opkg-build: fix creation of tar archives
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
X-List-Received-Date: Wed, 24 Oct 2012 11:14:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-10-24 at 12:53 +0200, Steffen Sledz wrote:
> Since openSUSE 12.2 the installed tar uses posix instead of gnu encoding
> by default. This format is not fully supported by opkg and results in
> ipk packages not installable at the target.
> 
> Collected errors:
>  * get_header_tar: Unknown typeflag: 0x78: Success.
>  * get_header_tar: Unknown typeflag: 0x78: Success.
>  * get_header_tar: Unknown typeflag: 0x78: Success.
>  * extract_archive: Don't know how to handle /var/lib/opkg/tmp/opkg-mg997m/chicken-bin-fGRvr4/PaxHeaders.17512/.: No such file or directory.
>  * get_header_tar: Unknown typeflag: 0x78: No such file or directory.
>  * get_header_tar: Unknown typeflag: 0x78: No such file or directory.
>  ...
> 
> Signed-off-by: Steffen Sledz <sledz@dresearch-fe.de>
> ---
>  opkg-build |    6 +++---
>  opkg.py    |    6 +++---
>  2 files changed, 6 insertions(+), 6 deletions(-)

Merged to master, thanks.

Richard


