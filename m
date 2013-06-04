Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qa0-f42.google.com (mail-qa0-f42.google.com
	[209.85.216.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EDF2E01409
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 08:31:44 -0700 (PDT)
Received: by mail-qa0-f42.google.com with SMTP id bs12so2671999qab.1
	for <yocto@yoctoproject.org>; Tue, 04 Jun 2013 08:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=yVtw8/lfqdXsS6qirPjeSL2I8XNHEcH1DtZdywwjbUs=;
	b=yCJ7RQ5JUGq8B1oi/79q7ZVjbwIDuXJNifbn9f7tXNcq/TYn8UmCmitNo0NIXYKqej
	nJVdg/Q3G++H9CQV1MXK0TQMyF2gJaZBJW4z+lVQePkKa4/BGvYlgVNNrPL6BGRdfjs3
	st78VQMAf2kxc2z+Mroarj2KCPro008QGDpYLMQb47UiiPkZDDc6b+mzqfreEpLJ2Fqt
	I3O/iynnRv4rlH4k/qqw8wv8gHMe4zxCmEEF2GkTfvh0Ef6QyU0fGOQC9KR4w1+2yY1H
	Cq59O2x4WLuIp91LNj1JBN5glX+xohk6pPOU1UinrltNVpA7WO2Ktu9XNbWnm4unRVyB
	wgUg==
MIME-Version: 1.0
X-Received: by 10.224.78.193 with SMTP id m1mr23754151qak.79.1370359903497;
	Tue, 04 Jun 2013 08:31:43 -0700 (PDT)
Received: by 10.49.24.239 with HTTP; Tue, 4 Jun 2013 08:31:43 -0700 (PDT)
In-Reply-To: <51ADE57D.60502@mlbassoc.com>
References: <CAFyqS9pSX-XjSAsW2ABFRUCLiLfFUn2OCi9TtU1Y6EiBg9WHqA@mail.gmail.com>
	<51ADE57D.60502@mlbassoc.com>
Date: Tue, 4 Jun 2013 17:31:43 +0200
Message-ID: <CAFyqS9ricg7doE+j=9CO9mQuqkjA6X6UJ=RTWhi=A0eS9QhoKQ@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Strange error from do_package_write_rpm
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
X-List-Received-Date: Tue, 04 Jun 2013 15:31:44 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 4, 2013 at 3:02 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2013-06-04 05:41, Hans Beck=E9rus wrote:
>>
>> Hello. After checking out poky:master
>> 0c0bb02f5104e3856c9d90088e1ece08652cc19f we suddenly experience the
>> following error coming from one of our recipes. We never observed this
>> before doing the poky uplift. Any hints to what might cause this?
>>
>> I can see this:
>>
>> Exception: ExpansionError: Failure expanding variable SUMMARY,
>> expression was ${SUMMARY} - Debugging files which triggered exception
>> Exception: variable SUMMARY references itself!
>>
>> But even if I somewhat understand what it is trying to tell me,at the
>> same time I do not really understand what can be done about it :(
>
>
> What does your SUMMARY line look like in your lmc_1.0.bb recipe?
>

That's an easy one ;) It is not set at all. But digging deeper into
this problem gave me the solution.
The lmc.bb is a recipe that does not actually build anything. It is
thus very similar to e.g. the package-index.bb.
So, what I did was to instead use that recipe as a base and now it works :)
More precisely, what we did before was

do_package[noexec] =3D "1"
do_packagedata[noexec] =3D "1"
do_populate_sysroot[noexec] =3D "1"

But it seems that is not enough, we also need to tell it not to run

do_package_write[noexec] =3D "1"
do_package_write_ipk[noexec] =3D "1"
do_package_write_rpm[noexec] =3D "1"
do_package_write_deb[noexec] =3D "1"

The incorrect assumption we made was that do_package[data] on top
level would also drag in all the sub-functions which seems not to be
the case. So with all these set to noexec the error is gone! I do have
one more question. I can see in package-index.bb the following being
set

INHIBIT_DEFAULT_DEPS =3D "1"
PACKAGES =3D ""
EXCLUDE_FROM_WORLD =3D "1"

Is this something that is recommended to be used for recipes like
this? Or can we safely leave them out?

Hans

>>
>>
>> Build Configuration:
>> BB_VERSION        =3D "1.19.0"
>> BUILD_SYS         =3D "x86_64-linux"
>> NATIVELSBSTRING   =3D "SUSE-LINUX-11"
>> TARGET_SYS        =3D "arm-poky-linux-gnueabi"
>> MACHINE           =3D "zynq-zc706"
>> DISTRO            =3D "poky-chris"
>> DISTRO_VERSION    =3D "1.4+snapshot-20130604"
>> TUNE_FEATURES     =3D "armv7a vfp cortexa9"
>> TARGET_FPU        =3D "vfp"
>> meta
>> meta-yocto
>> meta-yocto-bsp    =3D "master:0c0bb02f5104e3856c9d90088e1ece08652cc19f"
>> meta-oe           =3D "master:7c292ce28756824b1fa377d516aedd979fa41f19"
>>
>> Ant the error:
>>
>> ERROR: Error executing a python function in
>> /home/qhanbec/poky/meta-chris/recipes-core/lmc/lmc.bb:
>>
>> The stack trace of python calls that resulted in this exception/failure
>> was:
>> File: 'write_specfile', lineno: 505, function: <module>
>>       0501:
>>       0502:    specfile.close()
>>       0503:
>>       0504:
>>   *** 0505:write_specfile(d)
>>       0506:
>> File: 'write_specfile', lineno: 209, function: write_specfile
>>       0205:        conffiles =3D (localdata.getVar('CONFFILES', True) or
>> "").split()
>>       0206:
>>       0207:        splitname    =3D strip_multilib(pkgname, d)
>>       0208:
>>   *** 0209:        splitsummary =3D (localdata.getVar('SUMMARY', True) o=
r
>> localdata.getVar('DESCRIPTION', True) or ".")
>>       0210:        splitversion =3D (localdata.getVar('PKGV', True) or
>> "").replace('-', '+')
>>       0211:        splitrelease =3D (localdata.getVar('PKGR', True) or "=
")
>>       0212:        splitepoch   =3D (localdata.getVar('PKGE', True) or "=
")
>>       0213:        splitlicense =3D (localdata.getVar('LICENSE', True) o=
r
>> "")
>> File: '/home/qhanbec/poky/bitbake/lib/bb/data_smart.py', lineno: 503,
>> function: getVar
>>       0499:        value =3D self.getVarFlag(var, "_content", False,
>> noweakdefault)
>>       0500:
>>       0501:        # Call expand() separately to make use of the expand
>> cache
>>       0502:        if expand and value:
>>   *** 0503:            return self.expand(value, var)
>>       0504:        return value
>>       0505:
>>       0506:    def renameVar(self, key, newkey, **loginfo):
>>       0507:        """
>> File: '/home/qhanbec/poky/bitbake/lib/bb/data_smart.py', lineno: 336,
>> function: expand
>>       0332:
>>       0333:        return varparse
>>       0334:
>>       0335:    def expand(self, s, varname =3D None):
>>   *** 0336:        return self.expandWithRefs(s, varname).value
>>       0337:
>>       0338:
>>       0339:    def finalize(self, parent =3D False):
>>       0340:        """Performs final steps upon the datastore,
>> including application of overrides"""
>> File: '/home/qhanbec/poky/bitbake/lib/bb/data_smart.py', lineno: 326,
>> function: expandWithRefs
>>       0322:                raise
>>       0323:            except bb.parse.SkipPackage:
>>       0324:                raise
>>       0325:            except Exception as exc:
>>   *** 0326:                raise ExpansionError(varname, s, exc)
>>       0327:
>>       0328:        varparse.value =3D s
>>       0329:
>>       0330:        if varname:
>> Exception: ExpansionError: Failure expanding variable SUMMARY,
>> expression was ${SUMMARY} - Debugging files which triggered exception
>> Exception: variable SUMMARY references itself!
>>
>> ERROR: Function failed: write_specfile
>> ERROR: Logfile of failure stored in:
>>
>> /home/qhanbec/poky/build/tmp/work/cortexa9-vfp-poky-linux-gnueabi/lmc/1.=
0-r0/temp/log.do_package_write_rpm.3408
>> ERROR: Task 12 (/home/qhanbec/poky/meta-chris/recipes-core/lmc/lmc.bb,
>> do_package_write_rpm) failed with exit code '1'
>> NOTE: Tasks Summary: Attempted 845 tasks of which 827 didn't need to
>> be rerun and 1 failed.
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

On Tue, Jun 4, 2013 at 3:02 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2013-06-04 05:41, Hans Beck=E9rus wrote:
>>
>> Hello. After checking out poky:master
>> 0c0bb02f5104e3856c9d90088e1ece08652cc19f we suddenly experience the
>> following error coming from one of our recipes. We never observed this
>> before doing the poky uplift. Any hints to what might cause this?
>>
>> I can see this:
>>
>> Exception: ExpansionError: Failure expanding variable SUMMARY,
>> expression was ${SUMMARY} - Debugging files which triggered exception
>> Exception: variable SUMMARY references itself!
>>
>> But even if I somewhat understand what it is trying to tell me,at the
>> same time I do not really understand what can be done about it :(
>
>
> What does your SUMMARY line look like in your lmc_1.0.bb recipe?
>
>>
>> Hans
>>
>>
>>
>> Build Configuration:
>> BB_VERSION        =3D "1.19.0"
>> BUILD_SYS         =3D "x86_64-linux"
>> NATIVELSBSTRING   =3D "SUSE-LINUX-11"
>> TARGET_SYS        =3D "arm-poky-linux-gnueabi"
>> MACHINE           =3D "zynq-zc706"
>> DISTRO            =3D "poky-chris"
>> DISTRO_VERSION    =3D "1.4+snapshot-20130604"
>> TUNE_FEATURES     =3D "armv7a vfp cortexa9"
>> TARGET_FPU        =3D "vfp"
>> meta
>> meta-yocto
>> meta-yocto-bsp    =3D "master:0c0bb02f5104e3856c9d90088e1ece08652cc19f"
>> meta-oe           =3D "master:7c292ce28756824b1fa377d516aedd979fa41f19"
>>
>> Ant the error:
>>
>> ERROR: Error executing a python function in
>> /home/qhanbec/poky/meta-chris/recipes-core/lmc/lmc.bb:
>>
>> The stack trace of python calls that resulted in this exception/failure
>> was:
>> File: 'write_specfile', lineno: 505, function: <module>
>>       0501:
>>       0502:    specfile.close()
>>       0503:
>>       0504:
>>   *** 0505:write_specfile(d)
>>       0506:
>> File: 'write_specfile', lineno: 209, function: write_specfile
>>       0205:        conffiles =3D (localdata.getVar('CONFFILES', True) or
>> "").split()
>>       0206:
>>       0207:        splitname    =3D strip_multilib(pkgname, d)
>>       0208:
>>   *** 0209:        splitsummary =3D (localdata.getVar('SUMMARY', True) o=
r
>> localdata.getVar('DESCRIPTION', True) or ".")
>>       0210:        splitversion =3D (localdata.getVar('PKGV', True) or
>> "").replace('-', '+')
>>       0211:        splitrelease =3D (localdata.getVar('PKGR', True) or "=
")
>>       0212:        splitepoch   =3D (localdata.getVar('PKGE', True) or "=
")
>>       0213:        splitlicense =3D (localdata.getVar('LICENSE', True) o=
r
>> "")
>> File: '/home/qhanbec/poky/bitbake/lib/bb/data_smart.py', lineno: 503,
>> function: getVar
>>       0499:        value =3D self.getVarFlag(var, "_content", False,
>> noweakdefault)
>>       0500:
>>       0501:        # Call expand() separately to make use of the expand
>> cache
>>       0502:        if expand and value:
>>   *** 0503:            return self.expand(value, var)
>>       0504:        return value
>>       0505:
>>       0506:    def renameVar(self, key, newkey, **loginfo):
>>       0507:        """
>> File: '/home/qhanbec/poky/bitbake/lib/bb/data_smart.py', lineno: 336,
>> function: expand
>>       0332:
>>       0333:        return varparse
>>       0334:
>>       0335:    def expand(self, s, varname =3D None):
>>   *** 0336:        return self.expandWithRefs(s, varname).value
>>       0337:
>>       0338:
>>       0339:    def finalize(self, parent =3D False):
>>       0340:        """Performs final steps upon the datastore,
>> including application of overrides"""
>> File: '/home/qhanbec/poky/bitbake/lib/bb/data_smart.py', lineno: 326,
>> function: expandWithRefs
>>       0322:                raise
>>       0323:            except bb.parse.SkipPackage:
>>       0324:                raise
>>       0325:            except Exception as exc:
>>   *** 0326:                raise ExpansionError(varname, s, exc)
>>       0327:
>>       0328:        varparse.value =3D s
>>       0329:
>>       0330:        if varname:
>> Exception: ExpansionError: Failure expanding variable SUMMARY,
>> expression was ${SUMMARY} - Debugging files which triggered exception
>> Exception: variable SUMMARY references itself!
>>
>> ERROR: Function failed: write_specfile
>> ERROR: Logfile of failure stored in:
>>
>> /home/qhanbec/poky/build/tmp/work/cortexa9-vfp-poky-linux-gnueabi/lmc/1.=
0-r0/temp/log.do_package_write_rpm.3408
>> ERROR: Task 12 (/home/qhanbec/poky/meta-chris/recipes-core/lmc/lmc.bb,
>> do_package_write_rpm) failed with exit code '1'
>> NOTE: Tasks Summary: Attempted 845 tasks of which 827 didn't need to
>> be rerun and 1 failed.
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

