Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 29F6C4C80815
	for <yocto@yoctoproject.org>; Wed, 10 Nov 2010 07:21:22 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAADLJfT002535;
	Wed, 10 Nov 2010 13:21:19 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 02178-05; Wed, 10 Nov 2010 13:21:15 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAADKubV002528
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 10 Nov 2010 13:21:08 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Saul Wold <sgw@linux.intel.com>
In-Reply-To: <4CD897F4.9050706@linux.intel.com>
References: <4CD897F4.9050706@linux.intel.com>
Date: Wed, 10 Nov 2010 21:20:54 +0800
Message-ID: <1289395254.1272.231.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [PULL] Distro Updates and Locale Generation Change to Posix
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
X-List-Received-Date: Wed, 10 Nov 2010 13:21:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2010-11-08 at 16:38 -0800, Saul Wold wrote:
> Dexuan Cui (2):
>        busybox: enable more options for tar to support more file formats.
>        eglibc: install the missing /etc/ld.so.conf into target
> 
> Jiajun Xu (1):
>        imagetest-qemu: Add test case for dmesg check in target
> 
> Qing He (1):
>        bzip2: upgrade to version 1.0.6
> 
> Saul Wold (5):
>        task-sdk-gmae: fix typo in SDK-EXTRAS and convert to ?= for 
> assignment
>        poky.conf: Change default locale to POSIX
>        ld.so.conf: create empty file
>        eglibc: add en-us locale generation
>        poky.conf: Default Locale Generation

I've merged these.

> Xiaofeng Yan (1):
>        LSB: Add a new package

A minor nitpick but which GPL is this under? I'd like to get this fixed
before it gets merged.

Cheers,

Richard


