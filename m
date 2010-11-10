Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id C6D174C80815
	for <yocto@yoctoproject.org>; Wed, 10 Nov 2010 07:26:20 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAADQFfv002619;
	Wed, 10 Nov 2010 13:26:15 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 02382-05; Wed, 10 Nov 2010 13:26:11 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAADQ0li002613
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 10 Nov 2010 13:26:06 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <414DA7D8-2E3E-4DEE-9C36-24EF976D7A99@kernel.crashing.org>
References: <414DA7D8-2E3E-4DEE-9C36-24EF976D7A99@kernel.crashing.org>
Date: Wed, 10 Nov 2010 21:25:58 +0800
Message-ID: <1289395558.1272.248.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: TARGET_FPU for mpc8315e-rdb listed as SPE??
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
X-List-Received-Date: Wed, 10 Nov 2010 13:26:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-11-10 at 00:46 -0600, Kumar Gala wrote:
> Why does the meta/conf/machine/mpc8315e-rdb.conf list TARGET_FPU as
> SPE.  This isn't correct for an MPC8313 SoC.

I'm not familiar with that machine, please could you file a bug, maybe
with a patch showing what the correct values should be?

Cheers,

Richard


