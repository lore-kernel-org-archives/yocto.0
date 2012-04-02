Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0620E01304
	for <yocto@yoctoproject.org>; Mon,  2 Apr 2012 05:38:55 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q32CcpC6012318;
	Mon, 2 Apr 2012 13:38:51 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 03987-10; Mon,  2 Apr 2012 13:38:47 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q32CceRL012312
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 2 Apr 2012 13:38:43 +0100
Message-ID: <1333370320.647.30.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Shane Wang <shane.wang@intel.com>
Date: Mon, 02 Apr 2012 13:38:40 +0100
In-Reply-To: <5d0a3fc2ba2b0ba509a50dffcdaee298f1ac0e9d.1333358047.git.shane.wang@intel.com>
References: <cover.1333358047.git.shane.wang@intel.com>
	<5d0a3fc2ba2b0ba509a50dffcdaee298f1ac0e9d.1333358047.git.shane.wang@intel.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] meta-yocto/local.conf.sample: change = to ?= for BB_NUMBER_THREADS and PARALLEL_MAKE
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
X-List-Received-Date: Mon, 02 Apr 2012 12:38:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-04-02 at 17:23 +0800, Shane Wang wrote:
> In the current local.conf, BB_NUMBER_THREADS and PARALLEL_MAKE are assigned
> by '=', which overwrites the values set from the Hob. To avoid that, use '?='
> instead.
> 
> [Yocto #2210]
> 
> Signed-off-by: Shane Wang <shane.wang@intel.com>
> ---
>  meta-yocto/conf/local.conf.sample |    4 ++--
>  1 files changed, 2 insertions(+), 2 deletions(-)

If the user has used "=" in their configuration files, hob needs to deal
with this. It is not acceptable to patch the world to revolve around
hob.

So, no, I'm not going to take this patch, sorry.

Cheers,

Richard


