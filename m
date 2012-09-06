Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29FF2E004AB
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 03:36:28 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 06 Sep 2012 03:36:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,380,1344236400"; d="scan'208";a="218808886"
Received: from unknown (HELO helios.localnet) ([10.252.121.173])
	by fmsmga001.fm.intel.com with ESMTP; 06 Sep 2012 03:36:27 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Yes Yanus <yesyanus@yahoo.com>
Date: Thu, 06 Sep 2012 11:36:26 +0100
Message-ID: <2325002.b8UzUBqXdE@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-30-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <1344430759.60259.YahooMailNeo@web121502.mail.ne1.yahoo.com>
References: <1344430759.60259.YahooMailNeo@web121502.mail.ne1.yahoo.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: a question about multilib
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
X-List-Received-Date: Thu, 06 Sep 2012 10:36:28 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 08 August 2012 05:59:19 Yes Yanus wrote:
>  I have a question about multilib. I have a layer which is Independent of
> meta. this layer include some bb files and some of them are same with bb
> files in meta. for example, ncurses_5.7.bb in my layer and ncurses_5.9.bb
> in meta. but when I run command bitbake lib32-ncurses the bb file in meta
> is called. I have set the priority in my layer. the prority is higher than
> layer in meta. why bb files in my layer can't be called ? and if I run
> bitbake ncurses then bb files in my layer can be called.
> 
> Who can tell me the cause and how to solve the question?

Not sure if I already noted this, but I reproduced the issue here and filed bug 
2933 since it affects anything that uses the BBCLASSEXTENDS mechanism:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=2933

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

