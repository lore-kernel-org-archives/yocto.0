Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC76CE0030B
	for <yocto@yoctoproject.org>; Wed, 29 Feb 2012 08:18:31 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 29 Feb 2012 08:18:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="123258629"
Received: from unknown (HELO helios.localnet) ([10.252.123.96])
	by fmsmga001.fm.intel.com with ESMTP; 29 Feb 2012 08:18:30 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: John Toomey <john.toomey@linux.intel.com>
Date: Wed, 29 Feb 2012 16:18:29 +0000
Message-ID: <4241171.S03hq4heSm@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-16-generic-pae; KDE/4.8.0; i686; ; )
In-Reply-To: <4F4E4512.7000505@linux.intel.com>
References: <4F4E4512.7000505@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: RPROVIDES issue
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
X-List-Received-Date: Wed, 29 Feb 2012 16:18:32 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 29 February 2012 15:32:34 John Toomey wrote:
> I am getting an error when I try to include some packages such as
> logrotate, valgrind and minicom in my configuration using "IMAGE_INSTALL
> += ... "
> 
>     ERROR: Nothing RPROVIDES '"minicom"' (but
>     [path]/core-image-[blah].bb RDEPENDS on or otherwise requires it)
>     NOTE: Runtime target '"minicom"' is unbuildable, removing...
>     Missing or unbuildable dependency chain was: ['"minicom"']
>     ERROR: Required build target 'core-image-small' has no buildable
>     providers.
>     Missing or unbuildable dependency chain was: ['core-image-[blah]',
>     '"minicom"']
> 
> 
> I am able to build the packages individually without issue, for example
> "bitbake minicom" works fine.
> 
> Can anyone help point me in the right direction?

I noticed something here which I saw earlier - there is somehow an extra set 
of quotes in there i.e. it's reporting '"minicom"' instead of 'minicom'. 
Having just confirmed here with the 1.1 release that when you specify something 
that doesn't exist you only get one set of single quotes in the error, I 
suspect that's the root of the problem in your case. How you would have got a 
set of double quotes in there I don't know, though. When I do IMAGE_INSTALL += 
"something" I don't get them here.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

