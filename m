Return-Path: <belen.barros.pena@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E35ABE00770
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 06:11:06 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 12 Dec 2012 06:11:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,266,1355126400"; 
	d="7795'?scan'208";a="179927641"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by AZSMGA002.ch.intel.com with ESMTP; 12 Dec 2012 06:11:03 -0800
Received: from irsmsx151.ger.corp.intel.com (163.33.192.59) by
	IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 12 Dec 2012 14:09:34 +0000
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.151]) by
	IRSMSX151.ger.corp.intel.com ([169.254.4.21]) with mapi id
	14.01.0355.002; Wed, 12 Dec 2012 14:09:34 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: Building pseudo fails
Thread-Index: AQHN2HJPwaQ79wtHOUORqXLaY3Jx/A==
Date: Wed, 12 Dec 2012 14:09:33 +0000
Message-ID: <CCEE409D.1DB0A%belen.barros.pena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.2.5.121010
x-originating-ip: [10.252.63.93]
MIME-Version: 1.0
Subject: Building pseudo fails
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
X-List-Received-Date: Wed, 12 Dec 2012 14:11:07 -0000
X-Groupsio-MsgNum: 11023
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_002_CCEE409D1DB0Abelenbarrospenaintelcom_"

--_002_CCEE409D1DB0Abelenbarrospenaintelcom_
Content-Type: text/plain; charset="us-ascii"
Content-ID: <B0969B8B686B8E44831595DA46EBE7B9@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

I just downloaded the Danny release to an Ubuntu 12.10 computer, and
pseudo failed to build. Before opening a bug, I just wanted to make sure
it's not something silly I am doing. The log file is attached and below
I've pasted the terminal output.

Thanks!

Belen

Pseudo is not present but is required, building this first before the main
build
Loading cache: 100% |###########################################| ETA:
00:00:00
Loaded 1132 entries from dependency cache.

Build Configuration:
BB_VERSION        =3D "1.16.0"
TARGET_ARCH       =3D "i586"
TARGET_OS         =3D "linux"
MACHINE           =3D "qemux86"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.3"
TUNE_FEATURES     =3D "m32 i586"
TARGET_FPU        =3D ""
meta              =

meta-yocto        =

meta-yocto-bsp    =3D "<unknown>:<unknown>"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Error executing a python function in
/home/yocto/poky-danny-8.0/meta/recipes-devtools/quilt/quilt-native_0.60.bb
 <http://quilt-native_0.60.bb/>:
OSError: [Errno 2] No such file or directory

ERROR: The stack trace of python calls that resulted in this
exception/failure was:
ERROR:   File "relocatable_binaries_preprocess", line 6, in <module>
ERROR: =

ERROR:   File "relocatable_binaries_preprocess", line 3, in
relocatable_binaries_preprocess
ERROR: =

ERROR:   File "chrpath.bbclass", line 7, in rpath_replace
ERROR: =

ERROR:   File "chrpath.bbclass", line 36, in process_dir
ERROR: =

ERROR:   File "/usr/lib/python2.7/subprocess.py", line 679, in __init__
ERROR:     errread, errwrite)
ERROR: =

ERROR:   File "/usr/lib/python2.7/subprocess.py", line 1259, in
_execute_child
ERROR:     raise child_exception
ERROR: =

ERROR: The code that was being executed was:
ERROR:      0002:def relocatable_binaries_preprocess(d):
ERROR:      0003:  =

rpath_replace(d.expand('/home/yocto/poky-danny-8.0/build/tmp/work/i686-linu
x/quilt-native-0.60-r0/sysroot-destdir/'), d)
ERROR:      0004:
ERROR:      0005:
ERROR:  *** 0006:relocatable_binaries_preprocess(d)
ERROR:      0007:
ERROR: [From file: 'relocatable_binaries_preprocess', lineno: 6, function:
<module>]
ERROR:      0001:
ERROR:      0002:def relocatable_binaries_preprocess(d):
ERROR:  *** 0003:  =

rpath_replace(d.expand('/home/yocto/poky-danny-8.0/build/tmp/work/i686-linu
x/quilt-native-0.60-r0/sysroot-destdir/'), d)
ERROR:      0004:
ERROR:      0005:
ERROR:      0006:relocatable_binaries_preprocess(d)
ERROR:      0007:
ERROR: [From file: 'relocatable_binaries_preprocess', lineno: 3, function:
relocatable_binaries_preprocess]
ERROR:      0003:
ERROR:      0004:    for bindir in bindirs:
ERROR:      0005:        #bb.note ("Processing directory " + bindir)
ERROR:      0006:        directory =3D path + "/" + bindir
ERROR:  *** 0007:        process_dir (directory, d)
ERROR:      0008:
ERROR: [From file: 'chrpath.bbclass', lineno: 7, function: rpath_replace]
ERROR:      0032:            else:
ERROR:      0033:                # Temporarily make the file writeable so
we can chrpath it
ERROR:      0034:                os.chmod(fpath, perms|stat.S_IRWXU)
ERROR:      0035:
ERROR:  *** 0036:            p =3D sub.Popen([cmd, '-l',
fpath],stdout=3Dsub.PIPE,stderr=3Dsub.PIPE)
ERROR:      0037:            err, out =3D p.communicate()
ERROR:      0038:            # If returned succesfully, process stderr for
results
ERROR:      0039:            if p.returncode !=3D 0:
ERROR:      0040:                continue
ERROR: [From file: 'chrpath.bbclass', lineno: 36, function: process_dir]
ERROR: Function failed: relocatable_binaries_preprocess
ERROR: Logfile of failure stored in:
/home/yocto/poky-danny-8.0/build/tmp/work/i686-linux/quilt-native-0.60-r0/t
emp/log.do_populate_sysroot.7795
ERROR: Task 10 =

(/home/yocto/poky-danny-8.0/meta/recipes-devtools/quilt/quilt-native_0.60.b
b <http://quilt-native_0.60.bb/>, do_populate_sysroot) failed with exit
code '1'
NOTE: Tasks Summary: Attempted 7 tasks of which 6 didn't need to be rerun
and 1 failed.
No currently running tasks (7 of 63)

Summary: 1 task failed:
  =

/home/yocto/poky-danny-8.0/meta/recipes-devtools/quilt/quilt-native_0.60.bb
 <http://quilt-native_0.60.bb/>, do_populate_sysroot
Summary: There were 50 ERROR messages shown, returning a non-zero exit
code.



---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.

--_002_CCEE409D1DB0Abelenbarrospenaintelcom_
Content-Type: application/octet-stream; name="log.do_populate_sysroot.7795"
Content-Description: log.do_populate_sysroot.7795
Content-Disposition: attachment; filename="log.do_populate_sysroot.7795";
	size=3095; creation-date="Wed, 12 Dec 2012 14:09:33 GMT";
	modification-date="Wed, 12 Dec 2012 14:09:33 GMT"
Content-ID: <0EBC1837DFB61B48918CB3552F11627A@intel.com>
Content-Transfer-Encoding: base64

REVCVUc6IEV4ZWN1dGluZyBweXRob24gZnVuY3Rpb24gc3N0YXRlX3Rhc2tfcHJlZnVuYwpERUJV
RzogUHl0aG9uIGZ1bmN0aW9uIHNzdGF0ZV90YXNrX3ByZWZ1bmMgZmluaXNoZWQKREVCVUc6IEV4
ZWN1dGluZyBweXRob24gZnVuY3Rpb24gZG9fcG9wdWxhdGVfc3lzcm9vdApERUJVRzogRXhlY3V0
aW5nIHNoZWxsIGZ1bmN0aW9uIHN5c3Jvb3Rfc3RhZ2VfYWxsCkRFQlVHOiBTaGVsbCBmdW5jdGlv
biBzeXNyb290X3N0YWdlX2FsbCBmaW5pc2hlZApERUJVRzogRXhlY3V0aW5nIHB5dGhvbiBmdW5j
dGlvbiByZWxvY2F0YWJsZV9iaW5hcmllc19wcmVwcm9jZXNzCkVSUk9SOiBFcnJvciBleGVjdXRp
bmcgYSBweXRob24gZnVuY3Rpb24gaW4gL2hvbWUveW9jdG8vcG9reS1kYW5ueS04LjAvbWV0YS9y
ZWNpcGVzLWRldnRvb2xzL3F1aWx0L3F1aWx0LW5hdGl2ZV8wLjYwLmJiOgpPU0Vycm9yOiBbRXJy
bm8gMl0gTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeQoKRVJST1I6IFRoZSBzdGFjayB0cmFjZSBv
ZiBweXRob24gY2FsbHMgdGhhdCByZXN1bHRlZCBpbiB0aGlzIGV4Y2VwdGlvbi9mYWlsdXJlIHdh
czoKRVJST1I6ICAgRmlsZSAicmVsb2NhdGFibGVfYmluYXJpZXNfcHJlcHJvY2VzcyIsIGxpbmUg
NiwgaW4gPG1vZHVsZT4KRVJST1I6IApFUlJPUjogICBGaWxlICJyZWxvY2F0YWJsZV9iaW5hcmll
c19wcmVwcm9jZXNzIiwgbGluZSAzLCBpbiByZWxvY2F0YWJsZV9iaW5hcmllc19wcmVwcm9jZXNz
CkVSUk9SOiAKRVJST1I6ICAgRmlsZSAiY2hycGF0aC5iYmNsYXNzIiwgbGluZSA3LCBpbiBycGF0
aF9yZXBsYWNlCkVSUk9SOiAKRVJST1I6ICAgRmlsZSAiY2hycGF0aC5iYmNsYXNzIiwgbGluZSAz
NiwgaW4gcHJvY2Vzc19kaXIKRVJST1I6IApFUlJPUjogICBGaWxlICIvdXNyL2xpYi9weXRob24y
Ljcvc3VicHJvY2Vzcy5weSIsIGxpbmUgNjc5LCBpbiBfX2luaXRfXwpFUlJPUjogICAgIGVycnJl
YWQsIGVycndyaXRlKQpFUlJPUjogCkVSUk9SOiAgIEZpbGUgIi91c3IvbGliL3B5dGhvbjIuNy9z
dWJwcm9jZXNzLnB5IiwgbGluZSAxMjU5LCBpbiBfZXhlY3V0ZV9jaGlsZApFUlJPUjogICAgIHJh
aXNlIGNoaWxkX2V4Y2VwdGlvbgpFUlJPUjogCkVSUk9SOiBUaGUgY29kZSB0aGF0IHdhcyBiZWlu
ZyBleGVjdXRlZCB3YXM6CkVSUk9SOiAgICAgIDAwMDI6ZGVmIHJlbG9jYXRhYmxlX2JpbmFyaWVz
X3ByZXByb2Nlc3MoZCk6CkVSUk9SOiAgICAgIDAwMDM6ICAgIHJwYXRoX3JlcGxhY2UoZC5leHBh
bmQoJy9ob21lL3lvY3RvL3Bva3ktZGFubnktOC4wL2J1aWxkL3RtcC93b3JrL2k2ODYtbGludXgv
cXVpbHQtbmF0aXZlLTAuNjAtcjAvc3lzcm9vdC1kZXN0ZGlyLycpLCBkKQpFUlJPUjogICAgICAw
MDA0OgpFUlJPUjogICAgICAwMDA1OgpFUlJPUjogICoqKiAwMDA2OnJlbG9jYXRhYmxlX2JpbmFy
aWVzX3ByZXByb2Nlc3MoZCkKRVJST1I6ICAgICAgMDAwNzoKRVJST1I6IFtGcm9tIGZpbGU6ICdy
ZWxvY2F0YWJsZV9iaW5hcmllc19wcmVwcm9jZXNzJywgbGluZW5vOiA2LCBmdW5jdGlvbjogPG1v
ZHVsZT5dCkVSUk9SOiAgICAgIDAwMDE6CkVSUk9SOiAgICAgIDAwMDI6ZGVmIHJlbG9jYXRhYmxl
X2JpbmFyaWVzX3ByZXByb2Nlc3MoZCk6CkVSUk9SOiAgKioqIDAwMDM6ICAgIHJwYXRoX3JlcGxh
Y2UoZC5leHBhbmQoJy9ob21lL3lvY3RvL3Bva3ktZGFubnktOC4wL2J1aWxkL3RtcC93b3JrL2k2
ODYtbGludXgvcXVpbHQtbmF0aXZlLTAuNjAtcjAvc3lzcm9vdC1kZXN0ZGlyLycpLCBkKQpFUlJP
UjogICAgICAwMDA0OgpFUlJPUjogICAgICAwMDA1OgpFUlJPUjogICAgICAwMDA2OnJlbG9jYXRh
YmxlX2JpbmFyaWVzX3ByZXByb2Nlc3MoZCkKRVJST1I6ICAgICAgMDAwNzoKRVJST1I6IFtGcm9t
IGZpbGU6ICdyZWxvY2F0YWJsZV9iaW5hcmllc19wcmVwcm9jZXNzJywgbGluZW5vOiAzLCBmdW5j
dGlvbjogcmVsb2NhdGFibGVfYmluYXJpZXNfcHJlcHJvY2Vzc10KRVJST1I6ICAgICAgMDAwMzoK
RVJST1I6ICAgICAgMDAwNDogICAgZm9yIGJpbmRpciBpbiBiaW5kaXJzOgpFUlJPUjogICAgICAw
MDA1OiAgICAgICAgI2JiLm5vdGUgKCJQcm9jZXNzaW5nIGRpcmVjdG9yeSAiICsgYmluZGlyKQpF
UlJPUjogICAgICAwMDA2OiAgICAgICAgZGlyZWN0b3J5ID0gcGF0aCArICIvIiArIGJpbmRpcgpF
UlJPUjogICoqKiAwMDA3OiAgICAgICAgcHJvY2Vzc19kaXIgKGRpcmVjdG9yeSwgZCkKRVJST1I6
ICAgICAgMDAwODoKRVJST1I6IFtGcm9tIGZpbGU6ICdjaHJwYXRoLmJiY2xhc3MnLCBsaW5lbm86
IDcsIGZ1bmN0aW9uOiBycGF0aF9yZXBsYWNlXQpFUlJPUjogICAgICAwMDMyOiAgICAgICAgICAg
IGVsc2U6CkVSUk9SOiAgICAgIDAwMzM6ICAgICAgICAgICAgICAgICMgVGVtcG9yYXJpbHkgbWFr
ZSB0aGUgZmlsZSB3cml0ZWFibGUgc28gd2UgY2FuIGNocnBhdGggaXQKRVJST1I6ICAgICAgMDAz
NDogICAgICAgICAgICAgICAgb3MuY2htb2QoZnBhdGgsIHBlcm1zfHN0YXQuU19JUldYVSkKRVJS
T1I6ICAgICAgMDAzNToKRVJST1I6ICAqKiogMDAzNjogICAgICAgICAgICBwID0gc3ViLlBvcGVu
KFtjbWQsICctbCcsIGZwYXRoXSxzdGRvdXQ9c3ViLlBJUEUsc3RkZXJyPXN1Yi5QSVBFKQpFUlJP
UjogICAgICAwMDM3OiAgICAgICAgICAgIGVyciwgb3V0ID0gcC5jb21tdW5pY2F0ZSgpCkVSUk9S
OiAgICAgIDAwMzg6ICAgICAgICAgICAgIyBJZiByZXR1cm5lZCBzdWNjZXNmdWxseSwgcHJvY2Vz
cyBzdGRlcnIgZm9yIHJlc3VsdHMKRVJST1I6ICAgICAgMDAzOTogICAgICAgICAgICBpZiBwLnJl
dHVybmNvZGUgIT0gMDoKRVJST1I6ICAgICAgMDA0MDogICAgICAgICAgICAgICAgY29udGludWUK
RVJST1I6IFtGcm9tIGZpbGU6ICdjaHJwYXRoLmJiY2xhc3MnLCBsaW5lbm86IDM2LCBmdW5jdGlv
bjogcHJvY2Vzc19kaXJdCkRFQlVHOiBQeXRob24gZnVuY3Rpb24gcmVsb2NhdGFibGVfYmluYXJp
ZXNfcHJlcHJvY2VzcyBmaW5pc2hlZApERUJVRzogUHl0aG9uIGZ1bmN0aW9uIGRvX3BvcHVsYXRl
X3N5c3Jvb3QgZmluaXNoZWQKRVJST1I6IEZ1bmN0aW9uIGZhaWxlZDogcmVsb2NhdGFibGVfYmlu
YXJpZXNfcHJlcHJvY2Vzcwo=

--_002_CCEE409D1DB0Abelenbarrospenaintelcom_--
