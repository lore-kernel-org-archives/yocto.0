Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4AF27E00992; Thu,  6 Apr 2017 05:05:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 550 seconds by postgrey-1.32 at yocto-www;
	Thu, 06 Apr 2017 05:05:07 PDT
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AACCE00961
	for <yocto@yoctoproject.org>; Thu,  6 Apr 2017 05:05:06 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTP id v36Btl73006246; 
	Thu, 6 Apr 2017 12:55:50 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id zAkUBHM1GYft; Thu,  6 Apr 2017 12:55:50 +0100 (BST)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	v36Bce1G003515
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Thu, 6 Apr 2017 12:38:41 +0100
Message-ID: <1491478720.17200.35.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Romain Perier <romain.perier@collabora.com>, liezhi.yang@windriver.com
Date: Thu, 06 Apr 2017 12:38:40 +0100
In-Reply-To: <20170405150521.19160-2-romain.perier@collabora.com>
References: <20170405150521.19160-1-romain.perier@collabora.com>
	<20170405150521.19160-2-romain.perier@collabora.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [OE-core] [PATCH 1/2] logrotate: Bump to 3.11.0
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
X-List-Received-Date: Thu, 06 Apr 2017 12:05:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2017-04-05 at 17:05 +0200, Romain Perier wrote:
> This commit updates the recipe to the last upstream tag. Then, as the
> tarball no longer contains the pre-generated Makefile, inherit from
> autotools
> 
> [...]

> -PACKAGECONFIG ?= "${@bb.utils.filter('DISTRO_FEATURES', 'acl
> selinux', d)}"
> +PACKAGECONFIG ?= "\
> +    ${@bb.utils.contains('DISTRO_FEATURES', 'acl', 'acl', '', d)} \
> +    ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux',
> '', d)} \
> +"

I'm not sure the above should be there, it reverts someone else's
change?

I am a little nervous of taking this at this point in the release
too...

Cheers,

Richard

