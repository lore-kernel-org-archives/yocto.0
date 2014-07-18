Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2835E003FA; Fri, 18 Jul 2014 09:52:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.80.206.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 219 seconds by postgrey-1.32 at yocto-www;
	Fri, 18 Jul 2014 09:52:24 PDT
Received: from smtp684.redcondor.net (smtp684.redcondor.net [208.80.206.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6640EE00342
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 09:52:24 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp684.redcondor.net ({700db0a8-6fb7-4c8b-9b2a-6812225182d8})
	via TCP (outbound) with ESMTPS id 20140718164843187
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 16:48:43 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=54665 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1X8BKn-0003gN-78; Fri, 18 Jul 2014 12:48:37 -0400
Date: Fri, 18 Jul 2014 12:48:33 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <53C94ACD.6010800@mlbassoc.com>
Message-ID: <alpine.LFD.2.11.1407181242001.14141@localhost>
References: <53C94ACD.6010800@mlbassoc.com>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Extending images
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 18 Jul 2014 16:52:29 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 18 Jul 2014, Gary Thomas wrote:

> I've always used 'IMAGE_INSTALL += " xyz"' in my local.conf
> to add new packages to a build.  That said, I had a working
> build for qemuarm (probably doesn't matter) and I added:
>   IMAGE_INSTALL += " strace"
> This produced a completely broken image which barely came
> up to a shell, lots of missing programs, etc.
>
> I then tried
>   CORE_IMAGE_EXTRA_INSTALL += " strace"
> which produced a perfectly working build (just as previous)
> with the new package added.
>
> I can see that the images produced are vastly different:
>
> * Original working build
> -rw-r--r-- 1 gthomas gthomas     11719 Jul 18 09:34
> core-image-sato-qemuarm-20140718124453.rootfs.manifest
> -rw-r--r-- 1 gthomas gthomas  87611203 Jul 18 09:34
> core-image-sato-qemuarm-20140718124453.rootfs.tar.bz2
>
> * After 'IMAGE_INSTALL += '
> -rw-r--r-- 1 gthomas gthomas      9986 Jul 18 09:55
> core-image-sato-qemuarm-20140718155134.rootfs.manifest
> -rw-r--r-- 1 gthomas gthomas  37859884 Jul 18 09:56
> core-image-sato-qemuarm-20140718155134.rootfs.tar.bz2
>
> * After 'CORE_IMAGE_EXTRA_INSTALL += '
> -rw-r--r-- 1 gthomas gthomas     11738 Jul 18 10:05
> core-image-sato-qemuarm-20140718160108.rootfs.manifest
> -rw-r--r-- 1 gthomas gthomas  87720106 Jul 18 10:05
> core-image-sato-qemuarm-20140718160108.rootfs.tar.bz2
>
> What's the difference and why did the first attempt fail?

  i'm going to guess this is related to my recent whining about how
weirdly core-image-* recipes are defined.  if i use the "bb" command
to see what will be installed on a qemuarm in a core-image-sato image,
i see:

$ bb show IMAGE_INSTALL -r core-image-sato
Parsing recipes..done.
# IMAGE_INSTALL=${CORE_IMAGE_BASE_INSTALL} packagegroup-core-x11-sato-games
IMAGE_INSTALL="packagegroup-core-boot packagegroup-base-extended \
  packagegroup-core-x11-sato-games"
$

  which looks good. but the instant i add the line:

IMAGE_INSTALL += "strace" to my local.conf ... whoops:

$ bb show IMAGE_INSTALL -r core-image-sato
Parsing recipes..done.
IMAGE_INSTALL=" strace packagegroup-core-x11-sato-games"
$

  note the loss of the essential core-boot and base-extended
packagegroups, which is why your image is broken, which is because of
the way IMAGE_INSTALL is assigned in core-image.bbclass.

  lesson: do not mess with IMAGE_INSTALL directly unless you truly
know what you're doing.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================



