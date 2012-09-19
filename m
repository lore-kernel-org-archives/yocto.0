Return-Path: <evadeflow@gmail.com>
Received: from mail-oa0-f48.google.com (mail-oa0-f48.google.com
	[209.85.219.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6B81E004AB
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 09:34:22 -0700 (PDT)
Received: by oagn16 with SMTP id n16so1602124oag.35
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 09:34:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Dd9sNaYDMQpAyP1jI/Kksu9yrx4E6PQKJuP0tSpgtjE=;
	b=KhEfhnaECVufsBXKd0rYO0r2sKB2I6C5G/pNFsG2yA4AFHn55mM3QDvxRdD1NqiT9O
	eJ9YjWGTOkcA9X4NABzeKHvEd5ZAdi/BxfITx/CWvvlR7ouBsS3kwKSBEIBwCvRiWPjp
	QlOgV21KD7olhve/2O4SDM1XX36XlLJ1aHxa647kAOxqb261gxebiRNQmf9TVXm/rshF
	Aqgv3D0zOzRs2luQPG1bjM85IuZu9ypCBJ/wiFk6zJ/Nqy8BFW+vljL7NxZvcmn+vHKw
	IVh8wRb9dQYD6PUJI3oF/0hyCpObXLSgQ9OwCYUKkc4KIH0tLsDIkDQH8lraR+McMuSa
	cErQ==
MIME-Version: 1.0
Received: by 10.182.76.194 with SMTP id m2mr3498542obw.27.1348072459887; Wed,
	19 Sep 2012 09:34:19 -0700 (PDT)
Received: by 10.76.153.198 with HTTP; Wed, 19 Sep 2012 09:34:19 -0700 (PDT)
Date: Wed, 19 Sep 2012 12:34:19 -0400
Message-ID: <CAMAb8ZO=KzrgNoW4VPADtCn27KUfviP4QL84_ia5sAUbj_9a3Q@mail.gmail.com>
From: Evade Flow <evadeflow@gmail.com>
To: yocto@yoctoproject.org
Subject: BB_NO_NETWORK and own-mirrors not working with meta-systemd
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
X-List-Received-Date: Wed, 19 Sep 2012 16:34:23 -0000
Content-Type: text/plain; charset=ISO-8859-1

Trying to build the meta-ivi discovery-image behind a firewall is
proving to be quite a challenge. I tried modifying my conf/local.conf
file as follows:

CONNECTIVITY_CHECK_URIS=""
BB_GENERATE_MIRROR_TARBALLS = "1"
SOURCE_MIRROR_URL ?= "file:///home/evadeflow/projects/poky-mirror/"
INHERIT += "own-mirrors"

and then ran:

% bitbake discovery-image

in a VM on my home laptop over the weekend. (I'm trying to build using
the meta-ivi layer, per the instructions in its README.) After grinding
and churning for some 60+ hours, it finally succeeded, leaving 11 GB of
'stuff' in my poky-mirror folder.

Then, I copied the poky-mirror folder to a firewalled machine at work
and added:

BB_NO_NETWORK="1"

to local.conf.  When I tried to bitbake discovery-image on this machine,
I got the following error:


NOTE: Running task 697 of 3568 (ID: 1374,
/home/evadeflow/projects/poky-git/meta-systemd/recipes-kernel/kmod/kmod_7.bb,
do_fetch)
NOTE: package kmod-7-r0: task do_fetch: Started
ERROR: Function failed: Network access disabled through BB_NO_NETWORK
but access rquested with command git ls-remote
git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git v7 (for url
None)
ERROR: Logfile of failure stored in:
/home/evadeflow/projects/poky-git/build/tmp-eglibc-eglibc/work/armv7a-vfp-neon-oe-linux-gnueabi/kmod-7-r0/temp/log.do_fetch.29423
Log data follows:
| ERROR: Function failed: Network access disabled through
BB_NO_NETWORK but access rquested with command git ls-remote
git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git v7 (for url
None)
NOTE: package kmod-7-r0: task do_fetch: Failed
ERROR: Task 1374
(/home/evadeflow/projects/poky-git/meta-systemd/recipes-kernel/kmod/kmod_7.bb,
do_fetch) failed with exit code '1'
Waiting for 1 running tasks to finish:
0: libusb1-1.0.8-r4 do_compile (pid 29232)
NOTE: package libusb1-1.0.8-r4: task do_compile: Succeeded
NOTE: Tasks Summary: Attempted 697 tasks of which 105 didn't need to
be rerun and 1 failed.

Summary: 1 task failed:
  /home/evadeflow/projects/poky-git/meta-systemd/recipes-kernel/kmod/kmod_7.bb,
do_fetch
Summary: There was 1 ERROR message shown, returning a non-zero exit code.
bitbake discovery-image  5338.15s user 995.52s system 187% cpu 56:12.92 total

[NOTE: I'm on poky denzil@65ffa73, meta-ivi denzil@e068388, and
meta-systemd denzil@6a358e9. Also, that typo in the output
isn't mine, i.e., 'rquested' should be 'requested'.]

Can anyone explain what's going on here? If I look in the poky-mirror
folder for kmod-related stuff, I see:

% ls /home/evadeflow/projects/poky-mirror/*kmod*
/home/evadeflow/projects/poky-mirror/git2_git.kernel.org.pub.scm.utils.kernel.kmod.kmod.git.tar.gz
/home/evadeflow/projects/poky-mirror/git2_git.profusion.mobi.kmod.git.tar.gz

I *think* this is what needs to be downloaded for this recipe(?) Why is
`git ls-remote` being run at all? I'm not sure whether this is the fault
of poky/oe-core, or of the meta-systemd layer. I'd just really wish it
worked. `:-}  Any advice?

