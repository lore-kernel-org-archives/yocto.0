Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFD91E002AC
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 05:14:42 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 48F02F81249; Wed, 19 Sep 2012 06:14:42 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 62D4DF81248;
	Wed, 19 Sep 2012 06:14:40 -0600 (MDT)
Message-ID: <5059B73A.3040009@mlbassoc.com>
Date: Wed, 19 Sep 2012 06:14:50 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120827 Thunderbird/15.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAB3sqtaSno+aXJ41YOZ9zXhjbF1xPwDYS3TYdooWHP0GoJB=yg@mail.gmail.com>
In-Reply-To: <CAB3sqtaSno+aXJ41YOZ9zXhjbF1xPwDYS3TYdooWHP0GoJB=yg@mail.gmail.com>
Subject: Re: Lighttpd recipe is falling ERROR: Error executing a python function
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
X-List-Received-Date: Wed, 19 Sep 2012 12:14:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-09-19 06:08, Tarek El-Sherbiny wrote:
> I would like to build lighttpd for my imx6 project.
>
> Her is the error I'm getting after I type bitbake lighttpd
>
> NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> NOTE: Running task 644 of 885 (ID: 9, /home/telsherbiny/work/fsl/sources/poky/meta/recipes-extended/lighttpd/lighttpd_1.4.30.bb <http://lighttpd_1.4.30.bb>, do_package)
> NOTE: Running task 882 of 885 (ID: 3, /home/telsherbiny/work/fsl/sources/poky/meta/recipes-extended/lighttpd/lighttpd_1.4.30.bb <http://lighttpd_1.4.30.bb>, do_populate_sysroot)
> NOTE: package lighttpd-1.4.30-r12: task do_package: Started
> NOTE: package lighttpd-1.4.30-r12: task do_populate_sysroot: Started
> NOTE: package lighttpd-1.4.30-r12: task do_populate_sysroot: Succeeded
> ERROR: Error executing a python function in /home/telsherbiny/work/fsl/sources/poky/meta/recipes-extended/lighttpd/lighttpd_1.4.30.bb <http://lighttpd_1.4.30.bb>:
> AttributeError: 'NoneType' object has no attribute 'split'
>
> ERROR: The stack trace of python calls that resulted in this exception/failure was:
> ERROR:   File "populate_packages", line 323, in <module>
> ERROR:
> ERROR:   File "populate_packages", line 115, in populate_packages
> ERROR:
> ERROR:   File "populate_packages", line 72, in systemd_check_services
> ERROR:
> ERROR: The code that was being executed was:
> ERROR:      0319:bb.note("%s contains dangling symlink to %s" % (pkg, l))
> ERROR:      0320:d.setVar('RDEPENDS_' + pkg, bb.utils.join_deps(rdepends, commasep=False))
> ERROR:      0321:
> ERROR:      0322:
> ERROR:  *** 0323:populate_packages(d)
> ERROR:      0324:
> ERROR: (file: 'populate_packages', lineno: 323, function: <module>)
> ERROR:      0111:for pkg_systemd in d.getVar('SYSTEMD_PACKAGES', 1).split():
> ERROR:      0112:if d.getVar('SYSTEMD_SERVICE' + "_" + pkg_systemd, 1) and d.getVar('SYSTEMD_SERVICE' + "_" + pkg_systemd, 1).strip():
> ERROR:      0113:systemd_generate_package_scripts(pkg_systemd)
> ERROR:      0114:systemd_add_rdepends(pkg_systemd)
> ERROR:  *** 0115:systemd_check_services()
> ERROR:      0116:        lighttpd_libdir = d.expand('/usr/lib')
> ERROR:      0117:        do_split_packages(d, lighttpd_libdir, '^mod_(.*)\.so$', 'lighttpd-module-%s', 'Lighttpd module for %s', extra_depends='')
> ERROR:      0118:def update_rcd_package(pkg):
> ERROR:      0119:bb.debug(1, 'adding update-rc.d calls to postinst/postrm for %s' % pkg)
> ERROR: (file: 'populate_packages', lineno: 115, function: populate_packages)
> ERROR: Function failed: populate_packages
> ERROR: Logfile of failure stored in: /home/telsherbiny/work/fsl/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/lighttpd-1.4.30-r12/temp/log.do_package.32369
> NOTE: package lighttpd-1.4.30-r12: task do_package: Failed
> ERROR: Task 9 (/home/telsherbiny/work/fsl/sources/poky/meta/recipes-extended/lighttpd/lighttpd_1.4.30.bb <http://lighttpd_1.4.30.bb>, do_package) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 882 tasks of which 880 didn't need to be rerun and 1 failed.
>
> Summary: 1 task failed:
>    /home/telsherbiny/work/fsl/sources/poky/meta/recipes-extended/lighttpd/lighttpd_1.4.30.bb <http://lighttpd_1.4.30.bb>, do_package
> Summary: There were 27 ERROR messages shown, returning a non-zero exit code.
>
>
> Can anyone help to solve this problem?

It would be necessary to see your recipe: lighttpd_1.4.30.bb
(and any associated files)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

