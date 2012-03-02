Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D090E00749
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2012 03:58:06 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1S3R7d-0001bu-0V
	for yocto@yoctoproject.org; Fri, 02 Mar 2012 06:58:05 -0500
Date: Fri, 2 Mar 2012 06:57:57 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1203020530280.8202@oneiric>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
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
Subject: simplest recipe for running yocto qemu images?
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
X-List-Received-Date: Fri, 02 Mar 2012 11:58:06 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  i want to do a short writeup on the *simplest* recipe for how to run
the pre-built yocto qemu image you can get here:

http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/machines/qemu/

and what should have been a simple procedure got a bit messy.  to be
clear, i want to document the absolute *least* you need to do to run a
yocto-built qemu image without having to build anything since,
technically, you shouldn't have to.  i'm aware of the writeup in the
quick start guide, but that seems like overkill based on what i'm
trying to do.  so here's what i just went through.

  first, starting with a fresh terminal window totally unconfigured
for yocto, download a matching kernel image and rootfs; in my case,
just for fun, i downloaded for arm:

* zImage-qemuarm.bin
* core-image-minimal-qemuarm.ext3

  now that i have that, the obvious next step is to use the convenient
"runqemu" wrapper in my yocto directory, so i'll extend my search
path:

  $ PATH=~/yocto/git/scripts:$PATH

and i'll turn on shell debugging in that "runqemu" script and test it
out:

$ runqemu qemuarm \
  zImage-2.6.37-qemuarm-1.0.bin \
  core-image-minimal-qemuarm.ext3
... snip ...
/home/rpjday/yocto/git/scripts/bitbake: line 106: -e: command not found
+ TMPDIR=
+ '[' -z '' ']'
+ echo 'Error: this script needs to be run from your build directory,'
Error: this script needs to be run from your build directory,
+ echo 'or you need to explicitly set TMPDIR in your environment'
or you need to explicitly set TMPDIR in your environment
+ exit 1
$

  ok, not sure why simply running a qemu image requires invoking
bitbake, but the error message looks pretty straightforward, so i'll
fix that and try again:

$ TMPDIR=/tmp runqemu qemuarm \
  zImage-2.6.37-qemuarm-1.0.bin \
  core-image-minimal-qemuarm.ext3
... snip ...

/home/rpjday/yocto/git/scripts/bitbake: line 106: -e: command not found
+ TMPDIR=
+ '[' -z '' ']'
+ echo 'Error: this script needs to be run from your build directory,'
Error: this script needs to be run from your build directory,
+ echo 'or you need to explicitly set TMPDIR in your environment'
or you need to explicitly set TMPDIR in your environment
+ exit 1
$

  well, that appeared to solve nothing despite the fact that i did
*exactly* what the earlier diagnostic suggested.  oh, wait, there's
this earlier in "runqemu":

# Don't use TMPDIR from the external environment, it may be a distro
# variable pointing to /tmp (e.g. within X on OpenSUSE)
# Instead, use OE_TMPDIR for passing this in externally.
TMPDIR="$OE_TMPDIR"

  grrrrrrrr.  ok, let's set OE_TMPDIR instead, whereupon we make
considerably more progress until:

... snip ...
++ tap='Error: Unable to find tunctl binary in
'\''/tmp/sysroots/x86_64-linux/usr/bin'\'''
++ '[' 1 -ne 0 ']'
++ sudo /home/rpjday/yocto/git/scripts/runqemu-ifup 1000
/tmp/sysroots/x86_64-linux
Error: Unable to find tunctl binary in
'/tmp/sysroots/x86_64-linux/usr/bin'
++ return
$

  which is actually fine since, obviously, i need to have an
appropriate sysroot directory in my PATH to pick up commands liek
"tunctl" and so on.  no problem -- i've installed the appropriate
ARM toolchain under /opt/poky so:

$ PATH=/opt/poky/1.1/sysroots/x86_64-pokysdk-linux/usr/bin:$PATH
$ type tunctl
tunctl is /opt/poky/1.1/sysroots/x86_64-pokysdk-linux/usr/bin/tunctl
$

all right, away we go again:

$ OE_TMPDIR=/tmp runqemu \
  qemuarm zImage-2.6.37-qemuarm-1.0.bin \
  core-image-minimal-qemuarm.ext3
... snip ...
/home/rpjday/yocto/git/scripts/bitbake: line 106: -e: command not found
Error: this script needs to be run from your build directory,
or you need to explicitly set TMPDIR in your environment
$

  wait, i thought i took care of that.  oh ...

$ type runqemu
runqemu is hashed (/opt/poky/1.1/sysroots/x86_64-pokysdk-linux/usr/bin/runqemu)
$

so now i'm picking up "runqemu" from the toolchain's sysroot
directory, which does *not* have the OE_TMPDIR reference, only the
earlier TMPDIR one.  so let's completely remove my yocto install
scripts directory from my search path, and use *only* the sysroots
directory:

$ PATH=/opt/poky/1.1/sysroots/x86_64-pokysdk-linux/usr/bin:$PATH
$ TMPDIR=/tmp runqemu qemuarm \
  zImage-2.6.37-qemuarm-1.0.bin \
  core-image-minimal-qemuarm.ext3
... snip ...
Setting up tap interface under sudo
+++ sudo
/opt/poky/1.1/sysroots/x86_64-pokysdk-linux/usr/bin/runqemu-ifup 1000
/tmp/sysroots/x86_64-linux
++ tap='Error: Unable to find tunctl binary in
'\''/tmp/sysroots/x86_64-linux/usr/bin'\'''
++ '[' 1 -ne 0 ']'
++ sudo
/opt/poky/1.1/sysroots/x86_64-pokysdk-linux/usr/bin/runqemu-ifup 1000
/tmp/sysroots/x86_64-linux
Error: Unable to find tunctl binary in '/tmp/sysroots/x86_64-linux/usr/bin'
++ return
$

  ok, it *has* to be easier than this.  quite simply, if one wants to
do nothing more than *run* one of those qemu images, there should be
no need to do any building or bitbaking, should there?  am i missing
something hideously obvious?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================





