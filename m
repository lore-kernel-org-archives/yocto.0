Return-Path: <ml@communistcode.co.uk>
Received: from eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B83FBE0074B
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 02:31:26 -0700 (PDT)
Received: from localhost ([127.0.0.1]:44740 helo=eumx.net)
	by eumx.net with esmtp (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1T7NZV-0000LI-Pl
	for yocto@yoctoproject.org; Fri, 31 Aug 2012 09:31:25 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=eumx.net; h=message-id
	:date:from:reply-to:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding; s=default;
	bh=tm5PbZuKR0PvSrJwBoKc887efik=; b=yypH562wv/EkMpw7pYvy+/vB5uu3
	NQcfybN/s787v8EBrzXEwASNWq5YmrjqZs3LbIsLVgoeWKwjUjupild3y36dytJc
	u516PpEv/TH9mSipiz7A4UZ4CW/VAw8ZLbUZHdK2ofvRtcRZuBGFj8JgB5HkYhB4
	iVTO11jAJmDMtk8=
Received: from [195.171.99.130] (port=43101 helo=[192.168.0.33])
	by eumx.net with esmtpa (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1T7NZV-0000L5-JP
	for yocto@yoctoproject.org; Fri, 31 Aug 2012 09:31:25 +0000
Message-ID: <504084C5.2040409@communistcode.co.uk>
Date: Fri, 31 Aug 2012 10:32:53 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120828 Thunderbird/15.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5040835B.1030201@communistcode.co.uk>
In-Reply-To: <5040835B.1030201@communistcode.co.uk>
Subject: Re: [meta-raspberrypi] gettext RPATH QA issue
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ml@communistcode.co.uk
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 31 Aug 2012 09:31:27 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 31/08/12 10:26, Jack Mitchell wrote:
> So, I have run into a second problem with the new RPATH sanity checks 
> in bitbake. I'm on master for everything and this is the error I am 
> receiving:
>
>    [jack@archHP raspberry]$ bitbake rpi-hwup-image
>    Pseudo may be out of date, rebuilding pseudo before the main build
>    Parsing recipes: 100% |#########################################|
>    Time: 00:00:19
>    Parsing of 1193 .bb files complete (0 cached, 1193 parsed). 1528
>    targets, 48 skipped, 1 masked, 0 errors.
>    WARNING: Host distribution could not be determined; you may possibly
>    experience unexpected failures. It is recommended that you use a
>    tested distribution.
>
>    Build Configuration:
>    BB_VERSION        = "1.15.3"
>    TARGET_ARCH       = "arm"
>    TARGET_OS         = "linux-gnueabi"
>    MACHINE           = "raspberrypi"
>    DISTRO            = "poky"
>    DISTRO_VERSION    = "1.2+snapshot-20120831"
>    TUNE_FEATURES     = "armv6 vfp arm1176jzfs"
>    TARGET_FPU        = "vfp"
>    meta
>    meta-yocto        = "master:9ba1e33e2d14362971d6441ee6142bcb0857df1a"
>    meta-raspberrypi  = "master:ad5ef650663b7bf67c4ca08f0b1a9ce402e58be9"
>    meta-oe           = "master:a81cdc840c1dfca2bd0cb4ddd6e4bc1488286649"
>
>    NOTE: Resolving any missing task queue dependencies
>    NOTE: Preparing runqueue
>    NOTE: Executing SetScene Tasks
>    NOTE: Executing RunQueue Tasks
>    NOTE: Tasks Summary: Attempted 63 tasks of which 30 didn't need to
>    be rerun and all succeeded.
>
>    Summary: There was 1 WARNING message shown.
>    Loading cache: 100% |###########################################|
>    ETA:  00:00:00
>    Loaded 1529 entries from dependency cache.
>    WARNING: Host distribution could not be determined; you may possibly
>    experience unexpected failures. It is recommended that you use a
>    tested distribution.
>
>    Build Configuration:
>    BB_VERSION        = "1.15.3"
>    TARGET_ARCH       = "arm"
>    TARGET_OS         = "linux-gnueabi"
>    MACHINE           = "raspberrypi"
>    DISTRO            = "poky"
>    DISTRO_VERSION    = "1.2+snapshot-20120831"
>    TUNE_FEATURES     = "armv6 vfp arm1176jzfs"
>    TARGET_FPU        = "vfp"
>    meta
>    meta-yocto        = "master:9ba1e33e2d14362971d6441ee6142bcb0857df1a"
>    meta-raspberrypi  = "master:ad5ef650663b7bf67c4ca08f0b1a9ce402e58be9"
>    meta-oe           = "master:a81cdc840c1dfca2bd0cb4ddd6e4bc1488286649"
>
>    NOTE: Resolving any missing task queue dependencies
>    NOTE: Preparing runqueue
>    NOTE: Executing SetScene Tasks
>    NOTE: Executing RunQueue Tasks
>    ERROR: QA Issue: libgettextlib:
> /work/armv6-vfp-poky-linux-gnueabi/gettext-0.18.1.1-r16/packages-split/libgettextlib/usr/lib/libgettextlib-0.18.1.so
>    contains probably-redundant RPATH /usr/lib/../lib
>    ERROR: QA Issue: libgettextsrc:
> /work/armv6-vfp-poky-linux-gnueabi/gettext-0.18.1.1-r16/packages-split/libgettextsrc/usr/lib/libgettextsrc-0.18.1.so
>    contains probably-redundant RPATH /usr/lib/../lib
>    ERROR: QA run found fatal errors. Please consider fixing them.
>    ERROR: Function failed: do_package_qa
>    ERROR: Logfile of failure stored in:
> /home/jack/Projects/poky-rasp/raspberry/tmp/work/armv6-vfp-poky-linux-gnueabi/gettext-0.18.1.1-r16/temp/log.do_package.7077
>    ERROR: Task 834
> (/home/jack/Projects/poky-rasp/meta/recipes-core/gettext/gettext_0.18.1.1.bb,
>    do_package) failed with exit code '1'
>    NOTE: Tasks Summary: Attempted 1412 tasks of which 661 didn't need
>    to be rerun and 1 failed.
>
>    Summary: 1 task failed:
> /home/jack/Projects/poky-rasp/meta/recipes-core/gettext/gettext_0.18.1.1.bb,
>    do_package
>    Summary: There was 1 WARNING message shown.
>    Summary: There were 4 ERROR messages shown, returning a non-zero
>    exit code.
>
> Does anybody have an suggestions?
>
> Regards,
>

I'm not sure where this issue lies, I have a standard qemu build on 
going which seems ok, so I'm tempted to say that it is either meta-oe or 
meta-raspberry pi doing some overides?

-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--


