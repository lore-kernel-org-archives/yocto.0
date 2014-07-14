Return-Path: <jags.gediya@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACD37E006B7; Mon, 14 Jul 2014 08:53:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jags.gediya[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qc0-f172.google.com (mail-qc0-f172.google.com
	[209.85.216.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FC66E0030A;
	Mon, 14 Jul 2014 08:53:31 -0700 (PDT)
Received: by mail-qc0-f172.google.com with SMTP id l6so3792850qcy.31
	for <multiple recipients>; Mon, 14 Jul 2014 08:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=GsT6kT9Et11R/rmm34mz0lsFQkAGGpH68LbMNuTXe34=;
	b=b+D50GgV6lha4BHI+kZFAC4lzbLmKf+lN6cKgehyrh8I0uS1Ny6uC4ulfeWB+M1sWb
	J/dm1UtRqOD31b38iHeqb46c9oNEZA6DqYL2M02Y77JnscSjKMal6F1/p28XjRV1X4pB
	DwKFktQD9KvAjqKoLs9KAlWTyG8B64GXDkU7c87txN7aOyHVV1SQ/4y9c96hta6ELqUy
	2NBXhHHfpXNXp9eLdpqQhTA2DuVviqqSGSDnWu3nEDOmP3vFgJDYLQszK+G3eUypzBWb
	JldXg72S/zGP2lDSe7Xk9f+ADbpE34ynOKa1m5bI490f9E/Zuf5OeB+QHcva248HsBs8
	J6mQ==
MIME-Version: 1.0
X-Received: by 10.140.43.118 with SMTP id d109mr24375130qga.10.1405353211137; 
	Mon, 14 Jul 2014 08:53:31 -0700 (PDT)
Received: by 10.224.37.133 with HTTP; Mon, 14 Jul 2014 08:53:31 -0700 (PDT)
Date: Mon, 14 Jul 2014 21:23:31 +0530
Message-ID: <CAP3RZoiaZLH+adych_EReWMHZZuVvf6=v3Yg3-aJoYyQ7h9Axw@mail.gmail.com>
From: jags gediya <jags.gediya@gmail.com>
To: yocto@yoctoproject.org, meta-freescale@yoctoproject.org
Subject: do_rootfs is throwing errors
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
X-List-Received-Date: Mon, 14 Jul 2014 15:53:36 -0000
Content-Type: text/plain; charset=UTF-8

Currently 1 running tasks (1771 of 1777):
Currently 1 running tasks (1771 of 1777):
Currently 1 running tasks (1771 of 1777):
ERROR: Error executing a python function in
/home/jags/Projects/asai_iotg/asai_iotg/src/sources/poky/meta/recipes-core/images/core-image-minimal.bb:

The stack trace of python calls that resulted in this exception/failure was:
File: 'do_rootfs', lineno: 17, function: <module>
     0013:    # generate final images
     0014:    create_image(d)
     0015:
     0016:
 *** 0017:do_rootfs(d)
     0018:
File: 'do_rootfs', lineno: 11, function: do_rootfs
     0007:    # generate the initial manifest
     0008:    create_manifest(d)
     0009:
     0010:    # generate rootfs
 *** 0011:    create_rootfs(d)
     0012:
     0013:    # generate final images
     0014:    create_image(d)
     0015:
File: '/home/jags/Projects/asai_iotg/asai_iotg/src/sources/poky/meta/lib/oe/rootfs.py',
lineno: 732, function: create_rootfs
     0728:    env_bkp = os.environ.copy()
     0729:
     0730:    img_type = d.getVar('IMAGE_PKGTYPE', True)
     0731:    if img_type == "rpm":
 *** 0732:        RpmRootfs(d, manifest_dir).create()
     0733:    elif img_type == "ipk":
     0734:        OpkgRootfs(d, manifest_dir).create()
     0735:    elif img_type == "deb":
     0736:        DpkgRootfs(d, manifest_dir).create()
File: '/home/jags/Projects/asai_iotg/asai_iotg/src/sources/poky/meta/lib/oe/rootfs.py',
lineno: 107, function: create
     0103:        bb.utils.mkdirhier(sysconfdir)
     0104:        with open(sysconfdir + "/version", "w+") as ver:
     0105:            ver.write(self.d.getVar('BUILDNAME', True) + "\n")
     0106:
 *** 0107:        self._run_intercepts()
     0108:
     0109:        execute_pre_post_process(self.d, post_process_cmds)
     0110:
     0111:        if base_contains("IMAGE_FEATURES", "read-only-rootfs",
File: '/home/jags/Projects/asai_iotg/asai_iotg/src/sources/poky/meta/lib/oe/rootfs.py',
lineno: 185, function: _run_intercepts
     0181:
     0182:            bb.note("> Executing %s intercept ..." % script)
     0183:
     0184:            try:
 *** 0185:                subprocess.check_output(script_full)
     0186:            except subprocess.CalledProcessError as e:
     0187:                bb.warn("The postinstall intercept hook '%s'
failed (exit code: %d)! See log for details!" %
     0188:                        (script, e.returncode))
     0189:
File: '/usr/lib/python2.7/subprocess.py', lineno: 537, function: check_output
     0533:    'ls: non_existent_file: No such file or directory\n'
     0534:    """
     0535:    if 'stdout' in kwargs:
     0536:        raise ValueError('stdout argument not allowed, it
will be overridden.')
 *** 0537:    process = Popen(stdout=PIPE, *popenargs, **kwargs)
     0538:    output, unused_err = process.communicate()
     0539:    retcode = process.poll()
     0540:    if retcode:
     0541:        cmd = kwargs.get("args")
File: '/usr/lib/python2.7/subprocess.py', lineno: 679, function: __init__
     0675:                            cwd, env, universal_newlines,
     0676:                            startupinfo, creationflags, shell,
     0677:                            p2cread, p2cwrite,
     0678:                            c2pread, c2pwrite,
 *** 0679:                            errread, errwrite)
     0680:
     0681:        if mswindows:
     0682:            if p2cwrite is not None:
     0683:                p2cwrite = msvcrt.open_osfhandle(p2cwrite.Detach(), 0)
File: '/usr/lib/python2.7/subprocess.py', lineno: 1249, function: _execute_child
     1245:                child_exception = pickle.loads(data)
     1246:                for fd in (p2cwrite, c2pread, errread):
     1247:                    if fd is not None:
     1248:                        os.close(fd)
 *** 1249:                raise child_exception
     1250:
     1251:
     1252:        def _handle_exitstatus(self, sts, _WIFSIGNALED=os.WIFSIGNALED,
     1253:                _WTERMSIG=os.WTERMSIG, _WIFEXITED=os.WIFEXITED,
Exception: OSError: [Errno 13] Permission denied

ERROR: Function failed: do_rootfs
ERROR: Logfile of failure stored in:
/home/jags/Projects/asai_iotg/asai_iotg/src/build/tmp/work/imx6slevk-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.26461
ERROR: Task 7 (/home/jags/Projects/asai_iotg/asai_iotg/src/sources/poky/meta/recipes-core/images/core-image-minimal.bb,
do_rootfs) failed with exit code '1'
NOTE: Tasks Summary: Attempted 1776 tasks of which 23 didn't need to
be rerun and 1 failed.
No currently running tasks (1776 of 1777)

Summary: 1 task failed:
  /home/jags/Projects/asai_iotg/asai_iotg/src/sources/poky/meta/recipes-core/images/core-image-minimal.bb,
do_rootfs
Summary: There were 5 WARNING messages shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

