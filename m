Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B9B5E008DE; Thu,  4 Dec 2014 09:27:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 778C9E008CA
	for <yocto@yoctoproject.org>; Thu,  4 Dec 2014 09:27:04 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 59097F811DD; Thu,  4 Dec 2014 10:27:04 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 61315F8119A;
	Thu,  4 Dec 2014 10:27:02 -0700 (MST)
Message-ID: <5480997B.1030505@mlbassoc.com>
Date: Thu, 04 Dec 2014 10:27:23 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5480849F.5050908@mlbassoc.com>
	<CAJTo0Lbto9J5DjyY6RCjq28Jy-6zkV=VQeYGEkyDREwnvutRHg@mail.gmail.com>
In-Reply-To: <CAJTo0Lbto9J5DjyY6RCjq28Jy-6zkV=VQeYGEkyDREwnvutRHg@mail.gmail.com>
Subject: Re: What drives automounting volumes?
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
X-List-Received-Date: Thu, 04 Dec 2014 17:27:09 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-12-04 09:04, Burton, Ross wrote:
> On 4 December 2014 at 15:58, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     I've noticed this before - the /run/media mounts were sometimes
>     present, other times not.  Any clues what drives this and why
>     they worked on Tuesday and not on Thursday (this week)?
>
>
> udev-extraconf is the recipe that installs these rules.  If you can replicate it working and not working reliably, then bisecting it would be appreciated.

Thanks.  It turns out that it was one of my other layers
(meta-fsl-arm) that was pulling in that package before and
now no longer does.  My base image did not explicitly include
udev-extraconf, so it was only the meta-fsl-arm recipe that
was bringing it in.

I've tried to add udev-extraconf to my image, but now I'm
getting this [strange] persistent error:
   Collected errors:
    * check_data_file_clashes: Package udev-rules-imx wants to install file 
/local/p0382-cutting-edge_2014-11-21/tmp/work/teton_p0382-amltd-linux-gnueabi/amltd-console-image/1.0-r0/rootfs/etc/udev/rules.d/10-imx.rules
         But that file is already provided by package  * udev-extraconf

This makes no sense to me as those packages do not have any
overlapping files:
   $ find tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/udev-extraconf/1.1-r0/image
   tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/udev-extraconf/1.1-r0/image
   tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/udev-extraconf/1.1-r0/image/etc
   tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/udev-extraconf/1.1-r0/image/etc/udev
   tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/udev-extraconf/1.1-r0/image/etc/udev/rules.d
   tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/udev-extraconf/1.1-r0/image/etc/udev/rules.d/automount.rules
   tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/udev-extraconf/1.1-r0/image/etc/udev/rules.d/localextra.rules
   tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/udev-extraconf/1.1-r0/image/etc/udev/rules.d/autonet.rules
   tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/udev-extraconf/1.1-r0/image/etc/udev/scripts
   tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/udev-extraconf/1.1-r0/image/etc/udev/scripts/mount.sh
   tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/udev-extraconf/1.1-r0/image/etc/udev/scripts/network.sh
   tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/udev-extraconf/1.1-r0/image/etc/udev/mount.blacklist
   $ find tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/udev-rules-imx/1.0-r0/image/
   tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/udev-rules-imx/1.0-r0/image/
   tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/udev-rules-imx/1.0-r0/image/etc
   tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/udev-rules-imx/1.0-r0/image/etc/udev
   tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/udev-rules-imx/1.0-r0/image/etc/udev/rules.d
   tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/udev-rules-imx/1.0-r0/image/etc/udev/rules.d/10-imx.rules

I've tried rebuilding both packages via
   $ bitbake udev-extraconf udev-rules-imx -c cleansstate
still the problem persisted.

After more investigation, I found why this is happening.  Previously
there was no udev-rules-imx, only a .bbappend to udev-extraconf
that did the same thing.  This caused the resulting package to
be considered machine dependent.  When the recipes were split,
the resulting packages are only architecture dependent.  Hence
the clash as the old machine dependent package still lives in
my package repo:
   $ find tmp/deploy/ipk/ -name "udev-extra*" -or -name "udev-rules-imx*"
   tmp/deploy/ipk/teton_p0382/udev-extraconf_1.1-r0.1_teton_p0382.ipk
   tmp/deploy/ipk/teton_p0382/udev-extraconf-dev_1.1-r0.1_teton_p0382.ipk
   tmp/deploy/ipk/teton_p0382/udev-extraconf-dbg_1.1-r0.1_teton_p0382.ipk
   tmp/deploy/ipk/cortexa9hf-vfp-neon/udev-rules-imx-dev_1.0-r0.0_cortexa9hf-vfp-neon.ipk
   tmp/deploy/ipk/cortexa9hf-vfp-neon/udev-extraconf-dbg_1.1-r0.0_cortexa9hf-vfp-neon.ipk
   tmp/deploy/ipk/cortexa9hf-vfp-neon/udev-extraconf_1.1-r0.0_cortexa9hf-vfp-neon.ipk
   tmp/deploy/ipk/cortexa9hf-vfp-neon/udev-rules-imx_1.0-r0.0_cortexa9hf-vfp-neon.ipk
   tmp/deploy/ipk/cortexa9hf-vfp-neon/udev-rules-imx-dbg_1.0-r0.0_cortexa9hf-vfp-neon.ipk
   tmp/deploy/ipk/cortexa9hf-vfp-neon/udev-extraconf-dev_1.1-r0.0_cortexa9hf-vfp-neon.ipk

So the clash is coming because the build uses these packages and it's picking from
   tmp/deploy/ipk/teton_p0382/udev-extraconf_1.1-r0.1_teton_p0382.ipk
   tmp/deploy/ipk/cortexa9hf-vfp-neon/udev-rules-imx_1.0-r0.0_cortexa9hf-vfp-neon.ipk
which would definitely have a clash.  When I remove the [now incorrect] machine
dependent packages, the image build succeeds.

Was there a way for the build system to have properly detected this
change and cleaned the machine dependent package?  I've seen it before
(very rarely) and it's really hard to figure out when it happens...

n.b. the main reason for this extensive email was to document
the issue I ran into and its solution in hopes of helping the
next poor sod (maybe me) that runs into this problem.  I can
see it biting any number of meta-fsl-arm users that had builds
that crossed 2014-12-03 when the change was made.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

