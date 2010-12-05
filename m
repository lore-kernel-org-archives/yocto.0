Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7E6B74C80039
	for <yocto@yoctoproject.org>; Sun,  5 Dec 2010 14:42:04 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB5KfxmX030160;
	Sun, 5 Dec 2010 20:41:59 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 29604-08; Sun,  5 Dec 2010 20:41:54 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB5KfoWI030154
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 5 Dec 2010 20:41:51 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
In-Reply-To: <AANLkTimOUSrRJd+bVLmprX+e+tCTtQHLQEC52GNgMCZ=@mail.gmail.com>
References: <AANLkTimOUSrRJd+bVLmprX+e+tCTtQHLQEC52GNgMCZ=@mail.gmail.com>
Date: Sun, 05 Dec 2010 20:41:49 +0000
Message-ID: <1291581709.14277.2905.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org, openembedded-devel@lists.openembedded.org
Subject: Re: AUTOTOOLS_STAGE_PKGCONFIG still used?
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
X-List-Received-Date: Sun, 05 Dec 2010 20:42:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2010-12-05 at 00:31 +0100, Frans Meulenbroeks wrote:
> Is AUTOTOOLS_STAGE_PKGCONFIG still of any use?

No, it used to do something but hasn't for over a year in either OE or
Poky.

> I was trying to fidn out what I did, I ran a grep on both my
> openembedded dir (results see below) and my yocto tree, both trees at
> git head.
> I see a lot of places where it is set but no place where it is used.
> 
> Anyone who can confirm that this is a stale var? Or otherwise anyone
> who can explain how this is used. (and no, bitbake does not know the
> var either, not that I had expected it)

Its not needed and can be removed. I've pushed a patch to poky removing
the references and acked your patch for OE.

Cheers,

Richard


