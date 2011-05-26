Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id F3E954C80335
	for <yocto@yoctoproject.org>; Thu, 26 May 2011 04:49:42 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4Q9naok011495;
	Thu, 26 May 2011 10:49:36 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 10928-06; Thu, 26 May 2011 10:49:32 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4Q9nTda011486
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 26 May 2011 10:49:30 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Martin Jansa <martin.jansa@gmail.com>
In-Reply-To: <20110526073937.GL3222@jama.jama.net>
References: <4DDDAA38.8070404@gmail.com> <1306381066.22553.52.camel@elmorro>
	<20110526073937.GL3222@jama.jama.net>
Date: Thu, 26 May 2011 10:49:25 +0100
Message-ID: <1306403365.27470.99.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "dvhart@linux.intel.com" <dvhart@linux.intel.com>,
	Yocto Mailer <yocto@yoctoproject.org>
Subject: Re: In consistancy in the defition of BBFILE_COLLECTIONS in layer.conf
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
X-List-Received-Date: Thu, 26 May 2011 09:49:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-05-26 at 09:39 +0200, Martin Jansa wrote:
> Using machine override has one small benefit
> 
> when I have meta-nokia layer which has only recipes with
> COMPATIBLE_MACHINE = "nokia900" and I'm building different machine (like
> om-gta02) I get this warning:
> WARNING: No bb files matched BBFILE_PATTERN_nokia-layer '^/OE/shr-core/meta-smartphone/meta-nokia/'
> because all bb files from this layer are ignored because of
> COMPATIBLE_MACHINE

I think there is a change on bitbake master which should fix some of the
cases where this warning was appearing (where a layer only
contained .bbappend files).

> if I change it like this
> -BBFILE_COLLECTIONS += "nokia-layer"
> +BBFILE_COLLECTIONS_nokia900 += "nokia-layer"
> maybe with more overrides per layer.conf if it supports multiple
> machines, the warning is gone, but seems like sstate checksums are
> different again, because during test I changed only this and another gcc
> rebuild is in runqueue now :/.

Ouch. If you can figure out what changed we can try and fix that. FWIW,
I also merged the signature generation data writing at stamp creation
time (with fixes).

Cheers,

Richard




