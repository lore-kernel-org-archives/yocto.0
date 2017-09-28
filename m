Return-Path: <cavallini.koan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4227E00CCC; Thu, 28 Sep 2017 06:55:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (cavallini.koan[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.178 listed in dnsbl.sorbs.net]
Received: from mail-wr0-f178.google.com (mail-wr0-f178.google.com
	[209.85.128.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C210E00CB4
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 06:55:51 -0700 (PDT)
Received: by mail-wr0-f178.google.com with SMTP id 54so2823528wrz.10
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 06:55:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=hnyaccqeZVnj1hcyf/dQRYGX6jmczfMdwMXS6zozOkw=;
	b=LYAKgtzQEAWeH2SMYvJxLHx2B3Md9Q9j/FEdxgBCIu/T9wW89zdPIlM2tA5AEtz3sj
	cVjLHKAj//82w4zduBABDhV1E9cjYe7Y2FqBYiz5rEvsxR4r5STGSSf1xMQU/2slhv/I
	2X/JQemoJ4Cx1C9T97u9ALEwVA19OaRM6Nx30ofj9cNJJZtbbCszhzcdf3lu8NRralwO
	Qj5xAMcXYxzW5beVXYYLZTbgAkUmy7YhCWLmO4aRM0Q2m0YXPT7mT9RH57zILcsfbsFh
	Cnie63QFzxhQiG/NnRsUj7Kk+ZE3U/a9nVU7riOiMZ3ilVEYja4kC6b3/urvszWKKFmW
	/bXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=hnyaccqeZVnj1hcyf/dQRYGX6jmczfMdwMXS6zozOkw=;
	b=Db7olylnrjwxwzO3DdEk+gigWXjLAwqP6kwkOLV5bZVxMpJdSC0/ofDFqFlnZiV3oM
	CYsxk4bKMLX2UeIZtOAhW2pLhW/LtMNjed5x3YudrLlDv6BRUK9+sjA1/ZmP61xt/Woi
	7tD4DhAM4l2/QYhvLXv/GNvd34qULWNTI7Fes3KHHiB/66lv0mOZzuAib/zulcFdTQC/
	p534c+KTvzSeNL8D4OW7hGw2RQ+1cwPMyhQVuOYrEKamY9VhZI+m0g1BzcfWgFLNdkQl
	Ww/z3HP112XsNMGDXleRKNzM6Es3IW0YwehNR+sbcbXhJ2zfWCqubolyi+bKS6p5293p
	+aYA==
X-Gm-Message-State: AMCzsaWdMOXXHxg9FCvmScdfAhmZagQCwl6echAuarpS2zVYlIl7AWMF
	l7RQf+axFE/xxNyZjoSoS+eanpIC8XFWq2MsYbF7eg==
X-Google-Smtp-Source: AOwi7QCj83gFPwuPrheKUDh/yXggWWGKdVMTVBZxvLzT75w4ZJLHj+Esv3z3Xc6YwZ3tVVBeFEh7jpHdSxbA6QimxG4=
X-Received: by 10.25.198.8 with SMTP id w8mr232102lff.232.1506606949976; Thu,
	28 Sep 2017 06:55:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.212.195 with HTTP; Thu, 28 Sep 2017 06:55:49 -0700 (PDT)
From: Marco <cavallini.koan@gmail.com>
Date: Thu, 28 Sep 2017 15:55:49 +0200
Message-ID: <CAFQ+Dih3dqhvOo-LjbCTxYFibzJdU_V2V6BAEjO6TfpDopZ1Yg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: SSTATE_DIR not working with multi user environment
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
X-List-Received-Date: Thu, 28 Sep 2017 13:55:52 -0000
Content-Type: text/plain; charset="UTF-8"

Hi
this is a follow up to another thread called "Unclear sstate-cache dir
permissions"

I am trying to share a sstate-cache between two (or more) users in a
shared directory.
Although I set the directory owner, group and permissions I face to a
weird condition that I don't understand and seems to point out a
bitbake/class problem.


Problem description

I have a shared area with the following permissions (g+ws) set up at
before the builds

ls -al /opt/yocto
    drwxrwsrwx   4 tux yocto 20480 set 28 14:47 downloads
    drwxrwsrwx 259 tux yocto  4096 set 28 15:33 sstate-cache

This is the common local.conf
    DL_DIR ?= "/opt/yocto/downloads"
    SSTATE_DIR ?= "/opt/yocto/sstate-cache"

1. workspace1 with user1 (tux) generates the first build
using bitbake core-image-minimal

    /opt/yocto/sstate-cache (content excerpt)
    drwxr-xr-x   2 tux yocto 4096 set 28 14:44 94
    drwxr-sr-x   2 tux yocto 4096 set 28 14:45 95
    drwxr-xr-x   2 tux yocto 4096 set 28 14:46 96

2. build on workspace2 using user2 (devel) faces to the following problem
Permission denied: '/opt/yocto/sstate-cache/95/sigtask'
because the permissions of directory '95' is 'drwxr-sr-x'



$ bitbake core-image-minimal

Build Configuration:
BB_VERSION        = "1.34.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "universal-4.8"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "qemuarm"
DISTRO            = "poky"
DISTRO_VERSION    = "2.3.2"
TUNE_FEATURES     = "arm armv5 thumb dsp"
TARGET_FPU        = "soft"
meta
meta-poky
meta-yocto-bsp    = "pyro:30613467d864130202d90e8460f7bbfa4db98397"

Initialising tasks: 100%
|############################################################################################################|
Time: 0:00:04
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: core-image-minimal-1.0-r0 do_image_ext4: Execution of event
handler 'sstate_eventhandler' failed
Traceback (most recent call last):
  File "/home/devel/yocto-pyro-qemuarm2/poky/bitbake/lib/bb/siggen.py",
line 356, in dump_this_task(outfile='/opt/yocto/sstate-cache/95/sstate:core-image-minimal:qemuarm-poky-linux-gnueabi:1.0:r0:qemuarm:3:95da4ea64e782dcc0c8dfb4b9b7c0099_image_ext4.tgz.siginfo',
d=<bb.data_smart.DataSmart object at 0x7f0e07567cc0>):
         referencestamp = bb.build.stamp_internal(task, d, None, True)
    >    bb.parse.siggen.dump_sigtask(fn, task, outfile, "customfile:"
+ referencestamp)

  File "/home/devel/yocto-pyro-qemuarm2/poky/meta/lib/oe/sstatesig.py",
line 184, in SignatureGeneratorOEBasicHash.dump_sigtask(fn='/home/devel/yocto-pyro-qemuarm2/poky/meta/recipes-core/images/core-image-minimal.bb',
task='do_image_ext4',
stampbase='/opt/yocto/sstate-cache/95/sstate:core-image-minimal:qemuarm-poky-linux-gnueabi:1.0:r0:qemuarm:3:95da4ea64e782dcc0c8dfb4b9b7c0099_image_ext4.tgz.siginfo',
runtime='customfile:/home/devel/yocto-pyro-qemuarm2/poky/build/tmp/stamps/qemuarm-poky-linux-gnueabi/core-image-minimal/1.0-r0'):
                 return
    >        super(bb.siggen.SignatureGeneratorBasicHash,
self).dump_sigtask(fn, task, stampbase, runtime)

  File "/home/devel/yocto-pyro-qemuarm2/poky/bitbake/lib/bb/siggen.py",
line 300, in SignatureGeneratorOEBasicHash.dump_sigtask(fn='/home/devel/yocto-pyro-qemuarm2/poky/meta/recipes-core/images/core-image-minimal.bb',
task='do_image_ext4',
stampbase='/opt/yocto/sstate-cache/95/sstate:core-image-minimal:qemuarm-poky-linux-gnueabi:1.0:r0:qemuarm:3:95da4ea64e782dcc0c8dfb4b9b7c0099_image_ext4.tgz.siginfo',
runtime='customfile:/home/devel/yocto-pyro-qemuarm2/poky/build/tmp/stamps/qemuarm-poky-linux-gnueabi/core-image-minimal/1.0-r0'):

    >        fd, tmpfile =
tempfile.mkstemp(dir=os.path.dirname(sigfile), prefix="sigtask.")
             try:
  File "/usr/lib/python3.4/tempfile.py", line 409, in
mkstemp(suffix='', prefix='sigtask.',
dir='/opt/yocto/sstate-cache/95', text=False):

    >    return _mkstemp_inner(dir, prefix, suffix, flags)

  File "/usr/lib/python3.4/tempfile.py", line 339, in
_mkstemp_inner(dir='/opt/yocto/sstate-cache/95', pre='sigtask.',
suf='', flags=131266):
             try:
    >            fd = _os.open(file, flags, 0o600)
                 return (fd, _os.path.abspath(file))
PermissionError: [Errno 13] Permission denied:
'/opt/yocto/sstate-cache/95/sigtask._nk80whe'

ERROR: core-image-minimal-1.0-r0 do_image_ext4: Build of do_image_ext4 failed
ERROR: core-image-minimal-1.0-r0 do_image_ext4: Traceback (most recent
call last):
  File "/home/devel/yocto-pyro-qemuarm2/poky/bitbake/lib/bb/build.py",
line 644, in exec_task
    return _exec_task(fn, task, d, quieterr)
  File "/home/devel/yocto-pyro-qemuarm2/poky/bitbake/lib/bb/build.py",
line 618, in _exec_task
    event.fire(TaskSucceeded(task, logfn, localdata), localdata)
  File "/home/devel/yocto-pyro-qemuarm2/poky/bitbake/lib/bb/event.py",
line 211, in fire
    fire_class_handlers(event, d)
  File "/home/devel/yocto-pyro-qemuarm2/poky/bitbake/lib/bb/event.py",
line 134, in fire_class_handlers
    execute_handler(name, handler, event, d)
  File "/home/devel/yocto-pyro-qemuarm2/poky/bitbake/lib/bb/event.py",
line 106, in execute_handler
    ret = handler(event)
  File "/home/devel/yocto-pyro-qemuarm2/poky/meta/classes/sstate.bbclass",
line 1003, in sstate_eventhandler
    bb.siggen.dump_this_task(sstatepkg + '_' + taskname + ".tgz" ".siginfo", d)
  File "/home/devel/yocto-pyro-qemuarm2/poky/bitbake/lib/bb/siggen.py",
line 356, in dump_this_task
    bb.parse.siggen.dump_sigtask(fn, task, outfile, "customfile:" +
referencestamp)
  File "/home/devel/yocto-pyro-qemuarm2/poky/meta/lib/oe/sstatesig.py",
line 184, in dump_sigtask
    super(bb.siggen.SignatureGeneratorBasicHash,
self).dump_sigtask(fn, task, stampbase, runtime)
  File "/home/devel/yocto-pyro-qemuarm2/poky/bitbake/lib/bb/siggen.py",
line 300, in dump_sigtask
    fd, tmpfile = tempfile.mkstemp(dir=os.path.dirname(sigfile),
prefix="sigtask.")
  File "/usr/lib/python3.4/tempfile.py", line 409, in mkstemp
    return _mkstemp_inner(dir, prefix, suffix, flags)
  File "/usr/lib/python3.4/tempfile.py", line 339, in _mkstemp_inner
    fd = _os.open(file, flags, 0o600)
PermissionError: [Errno 13] Permission denied:
'/opt/yocto/sstate-cache/95/sigtask._nk80whe'

ERROR: Task (/home/devel/yocto-pyro-qemuarm2/poky/meta/recipes-core/images/core-image-minimal.bb:do_image_ext4)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 2254 tasks of which 2063 didn't need to
be rerun and 1 failed.

Summary: 1 task failed:
  /home/devel/yocto-pyro-qemuarm2/poky/meta/recipes-core/images/core-image-minimal.bb:do_image_ext4
Summary: There was 1 WARNING message shown.
Summary: There were 3 ERROR messages shown, returning a non-zero exit code.

