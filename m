Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70BFFE0027F
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2012 07:34:58 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 28 Sep 2012 07:34:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,502,1344236400"; d="scan'208";a="215473558"
Received: from unknown (HELO helios.localnet) ([10.252.122.5])
	by orsmga002.jf.intel.com with ESMTP; 28 Sep 2012 07:34:56 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Evade Flow <evadeflow@gmail.com>
Date: Fri, 28 Sep 2012 15:34:54 +0100
Message-ID: <10806457.GXdzIaxYOE@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.1 (Linux/3.2.0-31-generic-pae; KDE/4.9.1; i686; ; )
In-Reply-To: <CAMAb8ZO4+DBOAboVYLMQDq-Aa2ymreBrumnrLvUp0ZGJcqK+Tw@mail.gmail.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A70CC9@FMSMSX151.amr.corp.intel.com>
	<1470336.PrNkWSnEWe@helios>
	<CAMAb8ZO4+DBOAboVYLMQDq-Aa2ymreBrumnrLvUp0ZGJcqK+Tw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: build failure on current
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
X-List-Received-Date: Fri, 28 Sep 2012 14:34:58 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 28 September 2012 10:16:27 Evade Flow wrote:
> Seems it definitely didn't build tar:
> 
> evadeflow% pwd
> /home/evadeflow/projects/poky-git/build/tmp/sysroots/i686-linux/usr/bin

Just to confirm, this is the same path you get if you run "cat pseudodone" in 
your build directory?

> evadeflow% ls t*
> tabs  tailf  taskset  tic  toe	tput  tset  tunctl  tzselect
> evadeflow% tar --version
> tar (GNU tar) 1.22
> ...
> This is on denzil, BTW. (Maybe the check against the tar version was added
> later?)

No, the code to do this was there in denzil as well. Here's the code cut out 
into a shell script - could you put this into a file and run it and tell me 
what it prints on your system?

--------------- snip --------------
#!/bin/sh
needtar=1
TARVERSION=`tar --version | head -n 1 | cut -d ' ' -f 4`
float_test() {
     echo | awk 'END { exit ( !( '"$1"')); }'
}

# Tar version 1.24 and onwards handle overwriting symlinks correctly
# but earlier versions do not; this needs to work properly for sstate
float_test "$TARVERSION > 1.23" && needtar="0"
echo $needtar
--------------- snip --------------

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

