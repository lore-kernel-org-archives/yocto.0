Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31CFEE0044A
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2012 06:16:43 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3HDGf2c013515;
	Tue, 17 Apr 2012 14:16:41 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 12559-08; Tue, 17 Apr 2012 14:16:37 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3HDGZt0013509
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 17 Apr 2012 14:16:36 +0100
Message-ID: <1334668598.616.90.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: tom.zanussi@intel.com
Date: Tue, 17 Apr 2012 14:16:38 +0100
In-Reply-To: <cover.1334633179.git.tom.zanussi@intel.com>
References: <cover.1334633179.git.tom.zanussi@intel.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/3] kernel26 cleanup
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
X-List-Received-Date: Tue, 17 Apr 2012 13:16:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-04-16 at 22:29 -0500, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> This (post-1.2) patchset removes the last vestiges of kernel26 from poky.
> 
> The following changes since commit c936fca6e163bc19bc08cbd0036b31ca6f6c3ed6:
>   Richard Purdie (1):
>         bitbake.conf: Add PARALLEL_MAKE to BB_HASHBASE_WHITELIST
> 
> are available in the git repository at:
> 
>   git://git.yoctoproject.org/poky-contrib.git tzanussi/kernel26-removal
>   http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/kernel26-removal
> 
> Tom Zanussi (3):
>   yocto-bsp: remove kernel26 machine feature from templates
>   meta-yocto: remove kernel26 machine feature usage

I've merged these, thanks.

>   dev-manual: remove kernel26 machine feature mention

and I've passed this on to Scott to handle.

Cheers,

Richard


