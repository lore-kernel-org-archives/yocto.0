Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A99EE0027F
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2012 09:00:31 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 28 Sep 2012 09:00:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,502,1344236400"; d="scan'208";a="227811046"
Received: from unknown (HELO helios.localnet) ([10.252.122.5])
	by fmsmga001.fm.intel.com with ESMTP; 28 Sep 2012 09:00:28 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Evade Flow <evadeflow@gmail.com>
Date: Fri, 28 Sep 2012 17:00:27 +0100
Message-ID: <1776612.6uYv7lrdGp@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.1 (Linux/3.2.0-31-generic-pae; KDE/4.9.1; i686; ; )
In-Reply-To: <CAMAb8ZMWnVWDah+h7A1qp=HytRd8kNOZfn_yeM5aa11QT4LHSQ@mail.gmail.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A70CC9@FMSMSX151.amr.corp.intel.com>
	<19284936.TeXuZqBLh2@helios>
	<CAMAb8ZMWnVWDah+h7A1qp=HytRd8kNOZfn_yeM5aa11QT4LHSQ@mail.gmail.com>
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
X-List-Received-Date: Fri, 28 Sep 2012 16:00:31 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 28 September 2012 11:53:53 Evade Flow wrote:
> > > Erm... that *specific* bit prints nothing when pasted into a file and
> > > executed. (Is it really supposed to?)
> > 
> > No, but the rest of the script (the bit following the blank line that
> > you've omitted) is...
> 
> My bad, sorry. (I really need to read more carefully.) Here's what I get
> when I add the missing lines:
> 
> evadeflow% cat > temp.sh
> #!/bin/sh
> needtar=1
> TARVERSION=`tar --version | head -n 1 | cut -d ' ' -f 4`
> float_test() {
>      echo | awk 'END { exit ( !( '"$1"')); }'
> }
> 
> # Tar version 1.24 and onwards handle overwriting symlinks correctly
> # but earlier versions do not; this needs to work properly for sstate
> float_test "$TARVERSION > 1.23" && needtar="0"
> echo $needtar
> evadeflow% chmod +x temp.sh
> evadeflow% ./temp.sh
> 1
> 
> So... it correctly determines that it needs to build tar, but... the built
> tar can't unpack the tarball from CPAN:
> 
> evadeflow% wget http://www.cpan.org/src/5.0/perl-5.14.2.tar.gz
> --2012-09-28 11:46:13--  http://www.cpan.org/src/5.0/perl-5.14.2.tar.gz
> Resolving usaprox1.lightning.com... 10.102.184.7
> Connecting to usaprox1.lightning.com|10.102.184.7|:8080... connected.
> Proxy request sent, awaiting response... 200 OK
> Length: 15223598 (15M) [application/x-gzip]
> Saving to: `perl-5.14.2.tar.gz'
> 
> 100%[================================================================>]
> 15,223,598  62.2M/s   in 0.2s
> 
> 2012-09-28 11:46:13 (62.2 MB/s) - `perl-5.14.2.tar.gz' saved
> [15223598/15223598]
> 
> evadeflow% ./poky-git/build/tmp/sysroots/i686-linux/usr/bin/tar xf
> perl-5.14.2.tar.gz
> 
> gzip: stdin: invalid compressed data--crc error
> ./poky-git/build/tmp/sysroots/i686-linux/usr/bin/tar: Child returned status
> 1 ./poky-git/build/tmp/sysroots/i686-linux/usr/bin/tar: Error is not
> recoverable: exiting now
> 
> 
> Weird. Anyway, I have a workaround, so it's not a big deal--especially given
> that Ubuntu 10.04 isn't officially supported.  I'm happy to run any other
> tests you can think of to hunt down the cause of this (I've got a pretty
> fast build mchine now), but I totally understand if you've got bigger fish
> to fry at the moment...

Is it definitely tar that's the problem or gzip? This would suggest gzip:

http://code.google.com/p/go/issues/detail?id=3443

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

