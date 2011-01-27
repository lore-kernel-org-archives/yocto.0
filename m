Return-Path: <liping.ke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 91DCE4C80594
	for <yocto@yoctoproject.org>; Wed, 26 Jan 2011 20:13:15 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 26 Jan 2011 18:13:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,383,1291622400"; d="scan'208";a="380478362"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by azsmga001.ch.intel.com with ESMTP; 26 Jan 2011 18:13:14 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 27 Jan 2011 10:12:16 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Thu, 27 Jan 2011 10:12:15 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 27 Jan 2011 10:12:07 +0800
Thread-Topic: one build error with latest cs, (Lock problem)
Thread-Index: Acu9x5k20x2xCxEUTsay1De8FE1ksw==
Message-ID: <789F9655DD1B8F43B48D77C5D3065973317FC26A@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: one build error with latest cs, (Lock problem)
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
X-List-Received-Date: Thu, 27 Jan 2011 02:13:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,=20
recently (from this week), I continuously meet build error (x86 and arm).

Seems it's a kind of lock problem, eg: complaining that No such file or dir=
ectory: {POKYBASE}/build-arm/tmp/sysroots/package-output.lock. (not limitin=
g to this, I run into at least four times). Detailed log is pasted below. A=
fter re-compile, the problem will be gone. But if you continues, you might =
meet it again in the future...

Raised it here in case it is a potential problem.=20

Thanks& Regards,
criping


{POKYBASE}/build-arm/tmp/work/armv5te-poky-linux-gnueabi/libfm-0.1.14-r1/te=
mp/log.do_package.19852

the following files were installed but not shipped in any package:
NOTE: the following files were installed but not shipped in any package:
  /usr/lib/gio/modules/libgiofm.a
NOTE:   /usr/lib/gio/modules/libgiofm.a
  /usr/lib/gio/modules/libgiofm.la
NOTE:   /usr/lib/gio/modules/libgiofm.la
  /usr/lib/gio/modules/libgiofm.so
NOTE:   /usr/lib/gio/modules/libgiofm.so
  /usr/lib/gio/modules/.debug/libgiofm.so
NOTE:   /usr/lib/gio/modules/.debug/libgiofm.so
  /usr/share/mime/packages/libfm.xml
NOTE:   /usr/share/mime/packages/libfm.xml
Multiple libraries (libfm.so.0, libfm-gtk.so.0) found and LEAD_SONAME not d=
efined
NOTE: Multiple libraries (libfm.so.0, libfm-gtk.so.0) found and LEAD_SONAME=
 not defined Error executing a python function in /media/poky/new.git/meta/=
recipes-support/libfm/libfm_0.1.14.bb:
OSError: [Errno 2] No such file or directory: '/media/poky/new.git/build-ar=
m/tmp/sysroots/package-output.lock'

ERROR: Error executing a python function in /media/poky/new.git/meta/recipe=
s-support/libfm/libfm_0.1.14.bb:
OSError: [Errno 2] No such file or directory: '/media/poky/new.git/build-ar=
m/tmp/sysroots/package-output.lock'

The stack trace of python calls that resulted in this exception/failure was=
:
ERROR: The stack trace of python calls that resulted in this exception/fail=
ure was:
  File "emit_pkgdata", line 79, in <module>
ERROR:   File "emit_pkgdata", line 79, in <module>

ERROR:=20
  File "emit_pkgdata", line 76, in emit_pkgdata
ERROR:   File "emit_pkgdata", line 76, in emit_pkgdata

ERROR:=20
  File "/media/poky/new.git/bitbake/lib/bb/utils.py", line 452, in unlockfi=
le
ERROR:   File "/media/poky/new.git/bitbake/lib/bb/utils.py", line 452, in u=
nlockfile
    os.unlink(lf.name)
ERROR:     os.unlink(lf.name)

ERROR:=20
The code that was being executed was:
ERROR: The code that was being executed was:
     0075:
ERROR:      0075:
     0076:	bb.utils.unlockfile(lf)
ERROR:      0076:	bb.utils.unlockfile(lf)
     0077:
ERROR:      0077:
     0078:
ERROR:      0078:
 *** 0079:emit_pkgdata(d)
ERROR:  *** 0079:emit_pkgdata(d)
     0080:
ERROR:      0080:
(file: 'emit_pkgdata', lineno: 79, function: <module>)
ERROR: (file: 'emit_pkgdata', lineno: 79, function: <module>)
     0072:		if g or allow_empty =3D=3D "1":
ERROR:      0072:		if g or allow_empty =3D=3D "1":
     0073:			packagedfile =3D pkgdatadir + '/runtime/%s.packaged' % pkg
ERROR:      0073:			packagedfile =3D pkgdatadir + '/runtime/%s.packaged' % =
pkg
     0074:			file(packagedfile, 'w').close()
ERROR:      0074:			file(packagedfile, 'w').close()
     0075:
ERROR:      0075:
 *** 0076:	bb.utils.unlockfile(lf)
ERROR:  *** 0076:	bb.utils.unlockfile(lf)
     0077:
ERROR:      0077:
     0078:
ERROR:      0078:
     0079:emit_pkgdata(d)
ERROR:      0079:emit_pkgdata(d)
     0080:
ERROR:      0080:
(file: 'emit_pkgdata', lineno: 76, function: emit_pkgdata)
ERROR: (file: 'emit_pkgdata', lineno: 76, function: emit_pkgdata) Function =
'emit_pkgdata' failed
ERROR: Function 'emit_pkgdata' failed

