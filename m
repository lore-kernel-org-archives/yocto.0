Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 17B9F4C800A1
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2011 10:40:20 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6RFeF1n030934;
	Wed, 27 Jul 2011 16:40:15 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 30554-06; Wed, 27 Jul 2011 16:40:11 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6RFe63J030922
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 27 Jul 2011 16:40:06 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <0871F19F-E6BF-481E-920E-87091DEF7F49@kernel.crashing.org>
References: <0871F19F-E6BF-481E-920E-87091DEF7F49@kernel.crashing.org>
Date: Wed, 27 Jul 2011 16:39:55 +0100
Message-ID: <1311781195.2344.398.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: BSP in meta layer vs poky
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
X-List-Received-Date: Wed, 27 Jul 2011 15:40:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-07-27 at 09:23 -0500, Kumar Gala wrote:
> I was wondering what distinction qualified for a BSP existing in a
> meta layer vs in poky directly.
> 
> For FSL PPC we currently have MPC8315-RDB in poky.  Ideally we'd have
> one BSP for each major flavor [ associated with a unique compiler /
> libc target ].  This would end up being something like P2020-RDB
> (e500v2 core), P204x-RDB (e500mc core), P5020DS (e5500 core - 32/64
> bit).
> 
> Than everything else would live in the meta-fsl-ppc layer.

The original criteria for what we included was:

* One board per architecture
* Should be available to a general developer in a relatively cost 
  effective manner (sub $1000?)
* Lets us test functionality of the architecture

Trying to find a PPC board we could easily obtain was quite tricky. We
stuck to one board per architecture for fairness reasons and also
resources since the Yocto project isn't resourced to maintain BSPs.

We're definitely open to discussions about changes there but it does
need to be a high level discussion, likely at the advisory board level.

Note that some of Yocto's developers and the QA team have those
reference board for test purposes so if we do change we'd need to update
their hardware.

Cheers,

Richard



