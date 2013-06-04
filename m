Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qc0-f178.google.com (mail-qc0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 471B1E014A1
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 04:41:33 -0700 (PDT)
Received: by mail-qc0-f178.google.com with SMTP id l11so47775qcy.23
	for <yocto@yoctoproject.org>; Tue, 04 Jun 2013 04:41:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=sVlPXti8e3mnfKjZLmilXBGF30Td/aXUQFGIWmS6anA=;
	b=QEv5rPhOqxrFNvM0LZnZxQuhxdE9BaVPZ6tYUyrjD4Ik7s2bkl3VkiSYghUQFBgsh+
	H4cGOyQLay3FEfh1lf4MvCZw5Tr22PV1XrYBdQcdKqb9Yx+inyO8k/rIm7iEKt9vkD3V
	tbcF9m1cRsTGMQqqxzk06rFbTcjfjnfUyaomkLdf9mqZC1DKDaeVR8iOlW8Astq8lXg8
	Ku6OCpLjpzaswEl+StjSc5OfhtA4Dd9i2V0e7D0j0NUoTtV9imB55hugcAOOYDH63tFD
	F0roGBN8bahHTtLTdFKNEJsj1JVrCQ5BpQRRRBW1u9NSMM80l5kM23/Wv0gYY2vq9D7q
	1wdQ==
MIME-Version: 1.0
X-Received: by 10.49.75.99 with SMTP id b3mr26763270qew.11.1370346092442; Tue,
	04 Jun 2013 04:41:32 -0700 (PDT)
Received: by 10.49.24.239 with HTTP; Tue, 4 Jun 2013 04:41:32 -0700 (PDT)
Date: Tue, 4 Jun 2013 13:41:32 +0200
Message-ID: <CAFyqS9pSX-XjSAsW2ABFRUCLiLfFUn2OCi9TtU1Y6EiBg9WHqA@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Strange error from do_package_write_rpm
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
X-List-Received-Date: Tue, 04 Jun 2013 11:41:33 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello. After checking out poky:master
0c0bb02f5104e3856c9d90088e1ece08652cc19f we suddenly experience the
following error coming from one of our recipes. We never observed this
before doing the poky uplift. Any hints to what might cause this?

I can see this:

Exception: ExpansionError: Failure expanding variable SUMMARY,
expression was ${SUMMARY} - Debugging files which triggered exception
Exception: variable SUMMARY references itself!

But even if I somewhat understand what it is trying to tell me,at the
same time I do not really understand what can be done about it :(

Hans



Build Configuration:
BB_VERSION        = "1.19.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "SUSE-LINUX-11"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "zynq-zc706"
DISTRO            = "poky-chris"
DISTRO_VERSION    = "1.4+snapshot-20130604"
TUNE_FEATURES     = "armv7a vfp cortexa9"
TARGET_FPU        = "vfp"
meta
meta-yocto
meta-yocto-bsp    = "master:0c0bb02f5104e3856c9d90088e1ece08652cc19f"
meta-oe           = "master:7c292ce28756824b1fa377d516aedd979fa41f19"

Ant the error:

ERROR: Error executing a python function in
/home/qhanbec/poky/meta-chris/recipes-core/lmc/lmc.bb:

The stack trace of python calls that resulted in this exception/failure was:
File: 'write_specfile', lineno: 505, function: <module>
     0501:
     0502:    specfile.close()
     0503:
     0504:
 *** 0505:write_specfile(d)
     0506:
File: 'write_specfile', lineno: 209, function: write_specfile
     0205:        conffiles = (localdata.getVar('CONFFILES', True) or
"").split()
     0206:
     0207:        splitname    = strip_multilib(pkgname, d)
     0208:
 *** 0209:        splitsummary = (localdata.getVar('SUMMARY', True) or
localdata.getVar('DESCRIPTION', True) or ".")
     0210:        splitversion = (localdata.getVar('PKGV', True) or
"").replace('-', '+')
     0211:        splitrelease = (localdata.getVar('PKGR', True) or "")
     0212:        splitepoch   = (localdata.getVar('PKGE', True) or "")
     0213:        splitlicense = (localdata.getVar('LICENSE', True) or "")
File: '/home/qhanbec/poky/bitbake/lib/bb/data_smart.py', lineno: 503,
function: getVar
     0499:        value = self.getVarFlag(var, "_content", False, noweakdefault)
     0500:
     0501:        # Call expand() separately to make use of the expand cache
     0502:        if expand and value:
 *** 0503:            return self.expand(value, var)
     0504:        return value
     0505:
     0506:    def renameVar(self, key, newkey, **loginfo):
     0507:        """
File: '/home/qhanbec/poky/bitbake/lib/bb/data_smart.py', lineno: 336,
function: expand
     0332:
     0333:        return varparse
     0334:
     0335:    def expand(self, s, varname = None):
 *** 0336:        return self.expandWithRefs(s, varname).value
     0337:
     0338:
     0339:    def finalize(self, parent = False):
     0340:        """Performs final steps upon the datastore,
including application of overrides"""
File: '/home/qhanbec/poky/bitbake/lib/bb/data_smart.py', lineno: 326,
function: expandWithRefs
     0322:                raise
     0323:            except bb.parse.SkipPackage:
     0324:                raise
     0325:            except Exception as exc:
 *** 0326:                raise ExpansionError(varname, s, exc)
     0327:
     0328:        varparse.value = s
     0329:
     0330:        if varname:
Exception: ExpansionError: Failure expanding variable SUMMARY,
expression was ${SUMMARY} - Debugging files which triggered exception
Exception: variable SUMMARY references itself!

ERROR: Function failed: write_specfile
ERROR: Logfile of failure stored in:
/home/qhanbec/poky/build/tmp/work/cortexa9-vfp-poky-linux-gnueabi/lmc/1.0-r0/temp/log.do_package_write_rpm.3408
ERROR: Task 12 (/home/qhanbec/poky/meta-chris/recipes-core/lmc/lmc.bb,
do_package_write_rpm) failed with exit code '1'
NOTE: Tasks Summary: Attempted 845 tasks of which 827 didn't need to
be rerun and 1 failed.

