Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48F7EE01457
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 05:05:13 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q5IC5BPa004915;
	Mon, 18 Jun 2012 13:05:11 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 04750-01; Mon, 18 Jun 2012 13:05:07 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q5IC528J004900
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 18 Jun 2012 13:05:04 +0100
Message-ID: <1340021104.8481.18.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bongseo Jang <graycells@gmail.com>
Date: Mon, 18 Jun 2012 13:05:04 +0100
In-Reply-To: <CAKPsnf130xcvUrYE66p0BMjEFpVo48W58rtTWU_7zuLuZshP2g@mail.gmail.com>
References: <CAKPsnf130xcvUrYE66p0BMjEFpVo48W58rtTWU_7zuLuZshP2g@mail.gmail.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: question about devtools-native tasks
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
X-List-Received-Date: Mon, 18 Jun 2012 12:05:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-06-18 at 20:48 +0900, Bongseo Jang wrote:
> Hi All,
>  
> I'm watching console output of 'bitbake minimal-core-image'
> It starts with getting native devtools like,
>  
> NOTE: Running task 1 of 63 (ID:
> 11, /home/bsjang/poky/meta/recipes-devtools/quilt/quilt-native_0.60.bb, do_fetch)
> NOTE: Running task 2 of 63 (ID: 53,
> virtual:native:/home/bsjang/poky/meta/recipes-devtools/gnu-config/gnu-config_20111111.bb, do_fetch)
> NOTE: Running task 3 of 63 (ID:
> 60, /home/bsjang/poky/meta/recipes-devtools/m4/m4-native_1.4.16.bb,
> do_fetch)
> NOTE: Running task 4 of 63 (ID: 32,
> virtual:native:/home/bsjang/poky/meta/recipes-devtools/autoconf/autoconf_2.68.bb, do_fetch)
> 
> and then reads bblayers.conf, local.conf and so on which are
> actually asked to be done by me, right?
>  
> I'm wondering 
>      1) where the dependency on native devtools things are from
> (source level explanation or overall yocto/poky concept are all
> welcom) and 
>      2) can I use native tools which are already installed in my host
> linux distribution.(i don't want to fetch and compile the same tools
> again)

In general if its building it, its doing do for a reason. For autoconf
this is because of our own patches we need, for things like python/perl,
its because we need the exact same native version to be able to cross
compile effectively.

There are a small number of things like git-native which its probably
safe to ASSUME_PROVIDED but those are the exception rather than the
rule. We do this to ensure the same thing gets build regardless of which
system its built upon for build reproducibility.

Cheers,

Richard



