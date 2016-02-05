Return-Path: <markus.lehtonen@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C03FFE00CCD; Fri,  5 Feb 2016 00:00:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AD5BE00B5A
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 00:00:54 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga102.jf.intel.com with ESMTP; 05 Feb 2016 00:00:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,399,1449561600"; d="scan'208";a="42880167"
Received: from mwoodwar-mobl8.ger.corp.intel.com (HELO [10.252.19.30])
	([10.252.19.30])
	by fmsmga004.fm.intel.com with ESMTP; 05 Feb 2016 00:00:52 -0800
User-Agent: Microsoft-MacOutlook/0.0.0.150701
Date: Fri, 05 Feb 2016 10:00:50 +0200
From: Markus Lehtonen <markus.lehtonen@linux.intel.com>
To: Chris Trobridge <christrobridge@hotmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <8D8D7F9C-EA46-4F48-9298-6D50BA671BE9@linux.intel.com>
Thread-Topic: [yocto] Signed RPMs
References: <DUB130-W75F413446FD2227886136DDAD10@phx.gbl>
In-Reply-To: <DUB130-W75F413446FD2227886136DDAD10@phx.gbl>
Mime-version: 1.0
Subject: Re: Signed RPMs
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
X-List-Received-Date: Fri, 05 Feb 2016 08:00:59 -0000
Content-type: text/plain;
	charset="UTF-8"
Content-transfer-encoding: 7bit

Hi Chris,



On 04/02/16 23:57, "Chris Trobridge" <yocto-bounces@yoctoproject.org on behalf of christrobridge@hotmail.com> wrote:

>Hi,
>I have been testing out the facility for generating signed RPMs.
>
>It's currently failing to find 'build/tmp/sysroots/x86_64-linux/etc/RPM-GPG-PUBKEY', log listed at end.
>
>I couldn't find a lot of documentation but from what I could find, I added the following to local.conf:

Unfortunately the documentation is rather scarce. The header of 'meta/classes/sign_rpm.bbclass' lists everything needed.


>INHERIT += " sign_rpm"
>RPM_GPG_NAME = "chris"
>RPM_GPG_PUBKEY = "/home/chris/mykey.pub"
>RPM_GPG_PASSPHRASE_FILE = "/home/chris/mypassphrase"

The "RPM_GPG_PUBKEY" setting is not used anymore as automatic exporting of the public key was enabled a while ago.


>It needed 'python-pexpect' installing (fedora 22) to run at all but after that it worked to an extent as I had to correct the stored passphrase to correct other errors.

Thanks for pointing that out. That should be added as a sanity check.


>At this stage of the build there is very little in 'build/tmp/sysroots/x86_64-linux/etc/' (just quilt related) but I also find it curious that it is looking for the variable name rather than it value.
>
>Now I was following the the Aug patch notes "'RPM_GPG_PUBKEY = "<path_to_pubkey>" in bitbake config pointing to the public key (in "armor" format).".
>
>Since then there was a patch "Automatically export public keys used for package(feed) signing" that obsoletes RPM_GPG_PUBKEY (and overwrites it) but I'm still not clear how/where to put the public key so it will end up in the staging directory.  Also, 'package_manager.py' copies the file named by RPM_GPG_PUBKEY to the location os.path.join(self.deploy_dir, 'RPM-GPG-KEY-%s' % distro_version).  I presume this copies from the staging directory to the deployment directory.

As said above, the "RPM_GPG_PUBKEY" setting in local.conf is obsolete (instead, it is set behind the scenes by sign_rpm.bbclass). You do not need to have the public key available in a file anywhere. It is exported (from gpg) to the sysroot by meta/recipes-core/meta/signing-keys.bb recipe. All recipes/tasks utilizing the pubkey(s) should depend on signing-keys.bb.


>So what I would like to know is where to put the RPM GPG public key so that it gets copied to the staging directory?

You do not need to put it anywhere.


>For the time being, I have copied it in by hand.

That really should not be needed. What version of poky are you using? I was not able to reproduce your problem. Try building signing-keys, does it copy the pubkey to the correct place?


Cheers,
  Markus


>Thanks,
>
>Chris
>
>Summary: 1 task failed:
>poky/meta/recipes-core/os-release/os-release.bb, do_compile
>
>
>DEBUG: Executing python function do_compile
>ERROR: Error executing a python function in /home/chris/yocto/poky/meta/recipes-core/os-release/os-release.bb:
>
>The stack trace of python calls that resulted in this exception/failure was:
>File: '/home/chris/yocto/poky/meta/recipes-core/os-release/os-release.bb', lineno: 16, function: <module>
>     0012:        distro_version = d.getVar('DISTRO_VERSION', True) or "oe.0"
>     0013:        shutil.copy2(rpm_gpg_pubkey, d.expand('/home/chris/yocto/build/tmp/work/all-poky-linux/os-release/1.0-r0/os-release-1.0/rpm-gpg/RPM-GPG-KEY-%s' % distro_version))
>     0014:
>     0015:
> *** 0016:do_compile(d)
>     0017:
>File: '/home/chris/yocto/poky/meta/recipes-core/os-release/os-release.bb', lineno: 13, function: do_compile
>     0009:do_fetch[noexec] = "1"
>     0010:do_unpack[noexec] = "1"
>     0011:do_patch[noexec] = "1"
>     0012:do_configure[noexec] = "1"
> *** 0013:
>     0014:# Other valid fields: BUILD_ID ID_LIKE ANSI_COLOR CPE_NAME
>     0015:#                     HOME_URL SUPPORT_URL BUG_REPORT_URL
>     0016:OS_RELEASE_FIELDS = "ID ID_LIKE NAME VERSION VERSION_ID PRETTY_NAME"
>     0017:
>File: '/usr/lib64/python2.7/shutil.py', lineno: 130, function: copy2
>     0126:
>     0127:    """
>     0128:    if os.path.isdir(dst):
>     0129:        dst = os.path.join(dst, os.path.basename(src))
> *** 0130:    copyfile(src, dst)
>     0131:    copystat(src, dst)
>     0132:
>     0133:def ignore_patterns(*patterns):
>     0134:    """Function that can be used as copytree() ignore parameter.
>File: '/usr/lib64/python2.7/shutil.py', lineno: 82, function: copyfile
>     0078:            # XXX What about other special files? (sockets, devices...)
>     0079:            if stat.S_ISFIFO(st.st_mode):
>     0080:                raise SpecialFileError("`%s` is a named pipe" % fn)
>     0081:
> *** 0082:    with open(src, 'rb') as fsrc:
>     0083:        with open(dst, 'wb') as fdst:
>     0084:            copyfileobj(fsrc, fdst)
>     0085:
>     0086:def copymode(src, dst):
>Exception: IOError: [Errno 2] No such file or directory: '/home/chris/yocto/build/tmp/sysroots/x86_64-linux/etc/RPM-GPG-PUBKEY'
>
>DEBUG: Python function do_compile finished
>ERROR: Function failed: do_compile
>
>
> 		 	   		  
>-- 
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto


