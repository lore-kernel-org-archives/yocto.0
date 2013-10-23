Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F80DE01750
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2013 09:34:26 -0700 (PDT)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Wed, 23 Oct 2013 12:34:25 -0400
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 23 Oct 2013 12:31:26 -0400
Thread-Topic: How to prevent building -dbg and -doc packages?
Thread-Index: Ac7QDVF7ANTXjm8NRhW2Wv/rU2Fakg==
Message-ID: <91586D499ADFD74FBCFB8425266A5DE40153B8ED06FE@pluto.melinkcorp.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: How to prevent building -dbg and -doc packages?
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
X-List-Received-Date: Wed, 23 Oct 2013 16:34:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm on poky/dylan-9.0.1.  I'm not using any of the -dbg and the -doc packag=
es and I'd like to clean things up for my build by not building these packa=
ges in the first place across the entire system.  I see references in the d=
ocumentation to these package types, but I haven't found anything about how=
 to keep the system from generating them.

I tried going into meta/conf/bitbake.conf and modifying the PACKAGES variab=
le to look as follows:

PACKAGES =3D "${PN}-staticdev ${PN}-dev ${PN}-locale ${PACKAGE_BEFORE_PN} $=
{PN}"

This caused a bunch of packages to get rebuilt and seemed to be working unt=
il it got to the libpam package.  Then I got the following errors:

ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_dispatch2
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_pwhistory1
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_access3
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_unix2
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_succeed_if1
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_authsucceed
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_dispatch4
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_access1
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_time1
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_unix3
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_authfail
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_cracklib1
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_access2
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_cracklib2
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_dispatch1
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_dispatch5
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_limits1
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_dispatch3
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_group1
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_unix4
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_access4
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_unix1
ERROR: QA run found fatal errors. Please consider fixing them.
ERROR: Function failed: do_package_qa
ERROR: Logfile of failure stored in: /media/sda3/poky/poky-build/tmp/work/a=
rm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/temp/log.do_package.8163
ERROR: Task 362 (/media/sda3/poky/meta/recipes-extended/pam/libpam_1.1.6.bb=
, do_package) failed with exit code '1'

So either I didn't remove enough from bitbake.conf or there is a better way=
 to do this.  Does anyone know of a good way to avoid building all the -dbg=
 and -doc packages?

Thanks,
Bryan





