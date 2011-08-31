Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01B66E0076F
	for <yocto@yoctoproject.org>; Wed, 31 Aug 2011 12:14:39 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7VJEKU5010916;
	Wed, 31 Aug 2011 20:14:20 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 10560-06; Wed, 31 Aug 2011 20:14:16 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7VJE6Dg010910
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 31 Aug 2011 20:14:14 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: =?UTF-8?Q?=E8=94=A1=E6=8C=AF=E5=86=9B?= <caizhenjun@insigma.com.cn>
In-Reply-To: <DBA535A2DF028041BB0EB6E8A5E8C6CE2D1EA5D669@WX-ExchMB.insigma.com.cn>
References: <DBA535A2DF028041BB0EB6E8A5E8C6CE2D1EA5D669@WX-ExchMB.insigma.com.cn>
Date: Wed, 31 Aug 2011 20:13:53 +0100
Message-ID: <1314818033.5939.484.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Unable to find package mio-lib (mio-lib)!
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
X-List-Received-Date: Wed, 31 Aug 2011 19:14:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2011-08-31 at 14:28 +0800, 蔡振军 wrote:

> grep -rn "mio-lib" ./
> 
> Binary file ./armv5te/mio-lib-dbg-0.1-r0.armv5te.rpm matches
> 
> Binary file ./armv5te/mio-lib-dev-0.1-r0.armv5te.rpm matches
> 
> Binary file ./armv5te/solvedb/Nvra matches
> 
> Binary file ./armv5te/solvedb/__db.006 matches
> 
> Binary file ./armv5te/solvedb/__db.003 matches
> 
> Binary file ./armv5te/solvedb/Providename matches
> 
> Binary file ./armv5te/solvedb/Packages matches
> 
> Binary file ./armv5te/solvedb/Name matches
> 
> ./armv5te/solvedb/manifest:7:/home/ll/work/optimus-imx28-build/tmp/deploy/rpm/armv5te/mio-lib-dbg-0.1-r0.armv5te.rpm
> 
> ./armv5te/solvedb/manifest:351:/home/ll/work/optimus-imx28-build/tmp/deploy/rpm/armv5te/mio-lib-dev-0.1-r0.armv5te.rpm
> 
> ./armv5te/solvedb/manifest:474:/home/ll/work/optimus-imx28-build/tmp/deploy/rpm/armv5te/mio-lib-staticdev-0.1-r0.armv5te.rpm

So there is
no ./armv5te/solvedb/manifest:7:/home/ll/work/optimus-imx28-build/tmp/deploy/rpm/armv5te/mio-lib-0.1-r0.armv5te.rpm

This means you probably didn't install any files into the main package
itself so it was empty and not created.


> error appear when I delete some line in makefile’s install
> target.Fllow is my operation:
> 
>  
> 
> install: $(all_targets)
> 
>          install -D -m 644 libaio.h $(includedir)/libaio.h
> 
>          install -D -m 644 libaio.a $(libdir)/libaio.a
> 
>          install -D -m 755 $(libname) $(libdir)/$(libname)
>       ===============original one
> 
>          ln -sf $(libname) $(libdir)/$(soname)
> 
>          ln -sf $(libname) $(libdir)/libaio.so
> 
>  
> 
>                    ||
> 
>                    ||
> 
>                    || 
> 
>                    \/
> 
>  
> 
> install: $(all_targets)
> 
>          install -D -m 644 libaio.h $(includedir)/libaio.h
> 
>          install -D -m 644 libaio.a $(libdir)/libaio.a
> ===================== bad work
> 
>  
> 
>  
> 
> install: $(all_targets)
> 
> install -D -m 755 $(libname) $(libdir)/$(libname)
> =======================google work

I don't know exactly what you mean here but your probably almost
certainly is due to the do_install function not installing the correct
files, or you are only installing headers and a static library so only
the -dev and -staticdev packages are created.

Cheers,

Richard


