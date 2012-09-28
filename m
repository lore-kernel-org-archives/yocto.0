Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E634BE0027F
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2012 08:19:41 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 28 Sep 2012 08:19:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,502,1344236400"; d="scan'208";a="215504414"
Received: from unknown (HELO helios.localnet) ([10.252.122.5])
	by orsmga002.jf.intel.com with ESMTP; 28 Sep 2012 08:19:34 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Evade Flow <evadeflow@gmail.com>
Date: Fri, 28 Sep 2012 16:19:29 +0100
Message-ID: <19284936.TeXuZqBLh2@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.1 (Linux/3.2.0-31-generic-pae; KDE/4.9.1; i686; ; )
In-Reply-To: <CAMAb8ZNWccQSq9c=8pFwO1tv5kCUC4nTPVamr1=5iFqh2JJaKg@mail.gmail.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A70CC9@FMSMSX151.amr.corp.intel.com>
	<10806457.GXdzIaxYOE@helios>
	<CAMAb8ZNWccQSq9c=8pFwO1tv5kCUC4nTPVamr1=5iFqh2JJaKg@mail.gmail.com>
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
X-List-Received-Date: Fri, 28 Sep 2012 15:19:42 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 28 September 2012 11:13:22 Evade Flow wrote:
> >  ...                  could you put this into a file and run it and tell
> >  me
> >  what it prints on your system?
> > 
> > --------------- snip --------------
> > #!/bin/sh
> > needtar=1
> > TARVERSION=`tar --version | head -n 1 | cut -d ' ' -f 4`
> > float_test() {
> > 
> >      echo | awk 'END { exit ( !( '"$1"')); }'
> > 
> > }
> 
> Erm... that *specific* bit prints nothing when pasted into a file and
> executed. (Is it really supposed to?)

No, but the rest of the script (the bit following the blank line that you've 
omitted) is... I wanted to ensure that both the stripping out of the version 
and float_test were working.
 
Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

