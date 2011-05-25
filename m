Return-Path: <dexuan.cui@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4935B4C80228
	for <yocto@yoctoproject.org>; Tue, 24 May 2011 21:23:54 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 24 May 2011 19:23:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,264,1304319600"; d="scan'208,217";a="1058723"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 24 May 2011 19:23:52 -0700
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 25 May 2011 10:21:30 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 25 May 2011 10:21:30 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: =?gb2312?B?J9XFzsS93Cc=?= <157724595@163.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Wed, 25 May 2011 10:21:29 +0800
Thread-Topic: [yocto] bitbake e2fsprogs encounter undefined reference
Thread-Index: AcwZZZpDkoaUi9w2QH2V1zdc88NcRgBHHpBA
Message-ID: <1865303E0DED764181A9D882DEF65FB694322A3FFA@shsmsx502.ccr.corp.intel.com>
References: <752f15.db68.1301d9f08ee.Coremail.157724595@163.com>
	<18a5b62.dbe3.1301da82a35.Coremail.157724595@163.com>
In-Reply-To: <18a5b62.dbe3.1301da82a35.Coremail.157724595@163.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: bitbake e2fsprogs encounter undefined reference
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
X-List-Received-Date: Wed, 25 May 2011 02:23:54 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_1865303E0DED764181A9D882DEF65FB694322A3FFAshsmsx502ccrc_"

--_000_1865303E0DED764181A9D882DEF65FB694322A3FFAshsmsx502ccrc_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SSBjYW4ndCByZXByb2R1Y2UgdGhlIGlzc3VlIG9uIHBva3kncyBicmFuY2ggbWFzdGVyJ3MgcmVj
ZW50IGNvbW1pdCAoZTEwYzI3NDJiZjBjZjc1MGE1YzE0YjRlNWY0NzYzYjg2YmUyYWIwNykgLS0g
ZTJmc3Byb2dzIGJ1aWxkcyBmaW5lIGFuZCBJIGRvbid0IHNlZSB0aGUgInVuZGVmaW5lZCByZWZl
cmVuY2UiIGlzc3VlLg0KTG9va3MgeW91J3JlIHVzaW5nIGJlcm5hcmQgYnJhbmNoLiBNYXliZSB0
aGVyZSBhcmUgc29tZSBkaWZmZXJlbmNlcyBiZXR3ZWVuIGJlcm5hcmQgYW5kIG1hc3Rlcj8/DQoN
ClRoYW5rcywNCi0tIERleHVhbg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0K
RnJvbTogeW9jdG8tYm91bmNlc0B5b2N0b3Byb2plY3Qub3JnIFttYWlsdG86eW9jdG8tYm91bmNl
c0B5b2N0b3Byb2plY3Qub3JnXSBPbiBCZWhhbGYgT2Yg1cXOxL3cDQpTZW50OiAyMDExxOo11MIy
NMjVIDA6MjANClRvOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBbeW9jdG9dIGJp
dGJha2UgZTJmc3Byb2dzIGVuY291bnRlciB1bmRlZmluZWQgcmVmZXJlbmNlDQoNCg0KDQpBdCAy
MDExLTA1LTI0IDAwOjEwOjE5o6wi1cXOxL3cIiA8MTU3NzI0NTk1QDE2My5jb20+IHdyb3RlOg0K
VGhlIGVycm9yIGxvZyBpcyBibG93Og0KfCBtYWtlWzJdOiBFbnRlcmluZyBkaXJlY3RvcnkgYC9z
ZGIxL3lvY3RvL3Bva3ktYmVybmFyZC01LjAvYnVpbGQvdG1wL3dvcmsvcHBjZTUwMHYyLXdycy1s
aW51eC1nbnUvZTJmc3Byb2dzLTEuNDEuMTItcjIwL2UyZnNwcm9ncy0xLjQxLjEyL21pc2MnDQp8
IENPTVBJTEVfRVQgcHJvZl9lcnIuZXQNCnwgQ0MgbWtlMmZzLmMNCnwgQ0MgdXRpbC5jDQp8IEND
IC4uL2UyZnNjay9wcm9maWxlLmMNCnwgQ0MgcHJvZl9lcnIuYw0KfCBQUk9GSUxFX1RPX0MgbWtl
MmZzLmNvbmYNCnwgQ0MgZGVmYXVsdF9wcm9maWxlLmMNCnwgTEQgbWtlMmZzDQp8IENDIGJhZGJs
b2Nrcy5jDQp8IExEIGJhZGJsb2Nrcw0KfCBDQyB0dW5lMmZzLmMNCnwgTEQgdHVuZTJmcw0KfCBD
QyBkdW1wZTJmcy5jDQp8IExEIGR1bXBlMmZzDQp8IENDIGJsa2lkLmMNCnwgTEQgYmxraWQNCnwg
Li4vbGliL2xpYmV4dDJmcy5zbzogdW5kZWZpbmVkIHJlZmVyZW5jZSB0byBgc2VtX2luaXQnDQp8
IC4uL2xpYi9saWJleHQyZnMuc286IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8gYHNlbV9kZXN0cm95
Jw0KfCAuLi9saWIvbGliZXh0MmZzLnNvOiB1bmRlZmluZWQgcmVmZXJlbmNlIHRvIGBzZW1fcG9z
dCcNCnwgLi4vbGliL2xpYmV4dDJmcy5zbzogdW5kZWZpbmVkIHJlZmVyZW5jZSB0byBgc2VtX3dh
aXQnDQp8IGNvbGxlY3QyOiBsZCByZXR1cm5lZCAxIGV4aXQgc3RhdHVzDQp8IG1ha2VbMl06ICoq
KiBbYmxraWRdIEVycm9yIDENCnwgbWFrZVsyXTogTGVhdmluZyBkaXJlY3RvcnkgYC9zZGIxL3lv
Y3RvL3Bva3ktYmVybmFyZC01LjAvYnVpbGQvdG1wL3dvcmsvcHBjZTUwMHYyLXdycy1saW51eC1n
bnUvZTJmc3Byb2dzLTEuNDEuMTItcjIwL2UyZnNwcm9ncy0xLjQxLjEyL21pc2MnDQp8IG1ha2Vb
MV06ICoqKiBbYWxsLXByb2dzLXJlY3Vyc2l2ZV0gRXJyb3IgMQ0KfCBtYWtlWzFdOiBMZWF2aW5n
IGRpcmVjdG9yeSBgL3NkYjEveW9jdG8vcG9reS1iZXJuYXJkLTUuMC9idWlsZC90bXAvd29yay9w
cGNlNTAwdjItd3JzLWxpbnV4LWdudS9lMmZzcHJvZ3MtMS40MS4xMi1yMjAvZTJmc3Byb2dzLTEu
NDEuMTInDQp8IG1ha2U6ICoqKiBbYWxsXSBFcnJvciAyDQp8IEZBVEFMOiBvZV9ydW5tYWtlIGZh
aWxlZA0KfCBFUlJPUjogRnVuY3Rpb24gJ2RvX2NvbXBpbGUnIGZhaWxlZCAoc2VlIC9zZGIxL3lv
Y3RvL3Bva3ktYmVybmFyZC01LjAvYnVpbGQvdG1wL3dvcmsvcHBjZTUwMHYyLXdycy1saW51eC1n
bnUvZTJmc3Byb2dzLTEuNDEuMTItcjIwL3RlbXAvbG9nLmRvX2NvbXBpbGUuMTA1ODkgZm9yIGZ1
cnRoZXIgaW5mb3JtYXRpb24pDQpOT1RFOiBwYWNrYWdlIGUyZnNwcm9ncy0xLjQxLjEyLXIyMDog
dGFzayBkb19jb21waWxlOiBGYWlsZWQNCkVSUk9SOiBUYXNrIDggKC9zZGIxL3lvY3RvL3Bva3kt
YmVybmFyZC01LjAvbWV0YS9yZWNpcGVzLWRldnRvb2xzL2UyZnNwcm9ncy9lMmZzcHJvZ3NfMS40
MS4xMi5iYiwgZG9fY29tcGlsZSkgZmFpbGVkIHdpdGggZXhpdCBjb2RlICcxJw0KV2FpdGluZyBm
b3IgMSBhY3RpdmUgdGFza3MgdG8gZmluaXNoOg0KMDogbmN1cnNlcy01LjctcjEgZG9fcGFja2Fn
ZSAocGlkIDMxNzQ4KQ0KDQpBbmQgaW4gaXRzIE1ha2VmaWxlIG9mIERJUiBtaXNjIGl0IGhhcw0K
Iw0KIyBMaWJyYXJ5IGRlZmluaXRpb25zDQojDQpMSUIgPSAkKHRvcF9idWlsZGRpcikvbGliDQpM
SUJTUyA9ICQoTElCKS9saWJzcy5zbyAjIC1sZGwNCkxJQkNPTV9FUlIgPSAkKExJQikvbGliY29t
X2Vyci5zbyAjIC1scHRocmVhZA0KTElCRTJQID0gJChMSUIpL2xpYmUycC5zbw0KTElCRVhUMkZT
ID0gJChMSUIpL2xpYmV4dDJmcy5zbw0KTElCVVVJRCA9IC1sdXVpZA0KTElCQkxLSUQgPSAkKExJ
QikvbGliYmxraWQuc28gIyAkKExJQlVVSUQpDQpJIHRoaW5rIHRoZSByZWQgbGluZCBzaG91bGQg
YXBwZW5kIC1scHRocmVhZCwgYnV0IGl0IG5vdC4gYW55IHN1Z2dlc3Rpb24/DQoNCg0KDQoNCg0K
DQo=

--_000_1865303E0DED764181A9D882DEF65FB694322A3FFAshsmsx502ccrc_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<META content=3D"text/html; charset=3Dgb2312" http-equiv=3DContent-Type>
<META name=3DGENERATOR content=3D"MSHTML 8.00.6001.19046"></HEAD>
<BODY>
<DIV dir=3Dltr align=3Dleft><SPAN class=3D937471802-25052011><FONT face=3D=
=CB=CE=CC=E5><FONT=20
size=3D2>I can't reproduce the issue on poky's branch&nbsp;master's recent =
commit=20
(e10c2742bf0cf750a5c14b4e5f4763b86be2ab07) -- e2fsprogs builds fine and&nbs=
p;I=20
don't see&nbsp;the "undefined reference" issue.</FONT></FONT></SPAN></DIV>
<DIV dir=3Dltr align=3Dleft><SPAN class=3D937471802-25052011><FONT size=3D2=
=20
face=3D=CB=CE=CC=E5>Looks you're using bernard branch. Maybe there are some=
 differences=20
between bernard and master??</FONT></SPAN></DIV>
<DIV dir=3Dltr align=3Dleft><FONT size=3D2><SPAN class=3D937471802-25052011=
><FONT=20
face=3D=CB=CE=CC=E5></FONT></SPAN><SPAN class=3D937471802-25052011><FONT=20
face=3D=CB=CE=CC=E5></FONT></SPAN></FONT>&nbsp;</DIV>
<DIV dir=3Dltr align=3Dleft><SPAN class=3D937471802-25052011><FONT size=3D2=
=20
face=3D=CB=CE=CC=E5>Thanks,</FONT></SPAN></DIV>
<DIV dir=3Dltr align=3Dleft><SPAN class=3D937471802-25052011><FONT size=3D2=
 face=3D=CB=CE=CC=E5>--=20
Dexuan</FONT></SPAN></DIV><BR>
<DIV dir=3Dltr lang=3Den-us class=3DOutlookMessageHeader align=3Dleft>
<HR tabIndex=3D-1>
<FONT size=3D2 face=3DTahoma><B>From:</B> yocto-bounces@yoctoproject.org=20
[mailto:yocto-bounces@yoctoproject.org] <B>On Behalf Of </B>=D5=C5=CE=C4=BD=
=DC<BR><B>Sent:</B>=20
2011=C4=EA5=D4=C224=C8=D5 0:20<BR><B>To:</B> yocto@yoctoproject.org<BR><B>S=
ubject:</B> [yocto]=20
bitbake e2fsprogs encounter undefined reference<BR></FONT><BR></DIV>
<DIV></DIV><BR>
<DIV></DIV><BR>At 2011-05-24 00:10:19=A3=AC"=D5=C5=CE=C4=BD=DC"&nbsp;&lt;15=
7724595@163.com&gt;=20
wrote:<BR>
<BLOCKQUOTE=20
style=3D"BORDER-LEFT: #ccc 1px solid; MARGIN: 0px 0px 0px 0.8ex; PADDING-LE=
FT: 1ex"=20
id=3DisReplyContent>The error log is blow:
  <DIV>
  <DIV>| make[2]: Entering directory=20
  `/sdb1/yocto/poky-bernard-5.0/build/tmp/work/ppce500v2-wrs-linux-gnu/e2fs=
progs-1.41.12-r20/e2fsprogs-1.41.12/misc'</DIV>
  <DIV>| <SPAN style=3D"WHITE-SPACE: pre" class=3DApple-tab-span></SPAN>COM=
PILE_ET=20
  prof_err.et</DIV>
  <DIV>| <SPAN style=3D"WHITE-SPACE: pre" class=3DApple-tab-span></SPAN>CC=
=20
  mke2fs.c</DIV>
  <DIV>| <SPAN style=3D"WHITE-SPACE: pre" class=3DApple-tab-span></SPAN>CC=
=20
  util.c</DIV>
  <DIV>| <SPAN style=3D"WHITE-SPACE: pre" class=3DApple-tab-span></SPAN>CC=
=20
  ../e2fsck/profile.c</DIV>
  <DIV>| <SPAN style=3D"WHITE-SPACE: pre" class=3DApple-tab-span></SPAN>CC=
=20
  prof_err.c</DIV>
  <DIV>| <SPAN style=3D"WHITE-SPACE: pre" class=3DApple-tab-span></SPAN>PRO=
FILE_TO_C=20
  mke2fs.conf</DIV>
  <DIV>| <SPAN style=3D"WHITE-SPACE: pre" class=3DApple-tab-span></SPAN>CC=
=20
  default_profile.c</DIV>
  <DIV>| <SPAN style=3D"WHITE-SPACE: pre" class=3DApple-tab-span></SPAN>LD=
=20
  mke2fs</DIV>
  <DIV>| <SPAN style=3D"WHITE-SPACE: pre" class=3DApple-tab-span></SPAN>CC=
=20
  badblocks.c</DIV>
  <DIV>| <SPAN style=3D"WHITE-SPACE: pre" class=3DApple-tab-span></SPAN>LD=
=20
  badblocks</DIV>
  <DIV>| <SPAN style=3D"WHITE-SPACE: pre" class=3DApple-tab-span></SPAN>CC=
=20
  tune2fs.c</DIV>
  <DIV>| <SPAN style=3D"WHITE-SPACE: pre" class=3DApple-tab-span></SPAN>LD=
=20
  tune2fs</DIV>
  <DIV>| <SPAN style=3D"WHITE-SPACE: pre" class=3DApple-tab-span></SPAN>CC=
=20
  dumpe2fs.c</DIV>
  <DIV>| <SPAN style=3D"WHITE-SPACE: pre" class=3DApple-tab-span></SPAN>LD=
=20
  dumpe2fs</DIV>
  <DIV>| <SPAN style=3D"WHITE-SPACE: pre" class=3DApple-tab-span></SPAN>CC=
=20
  blkid.c</DIV>
  <DIV>| <SPAN style=3D"WHITE-SPACE: pre" class=3DApple-tab-span></SPAN>LD=
=20
  blkid</DIV>
  <DIV>| ../lib/libext2fs.so: undefined reference to `sem_init'</DIV>
  <DIV>| ../lib/libext2fs.so: undefined reference to `sem_destroy'</DIV>
  <DIV>| ../lib/libext2fs.so: undefined reference to `sem_post'</DIV>
  <DIV>| ../lib/libext2fs.so: undefined reference to `sem_wait'</DIV>
  <DIV>| collect2: ld returned 1 exit status</DIV>
  <DIV>| make[2]: *** [blkid] Error 1</DIV>
  <DIV>| make[2]: Leaving directory=20
  `/sdb1/yocto/poky-bernard-5.0/build/tmp/work/ppce500v2-wrs-linux-gnu/e2fs=
progs-1.41.12-r20/e2fsprogs-1.41.12/misc'</DIV>
  <DIV>| make[1]: *** [all-progs-recursive] Error 1</DIV>
  <DIV>| make[1]: Leaving directory=20
  `/sdb1/yocto/poky-bernard-5.0/build/tmp/work/ppce500v2-wrs-linux-gnu/e2fs=
progs-1.41.12-r20/e2fsprogs-1.41.12'</DIV>
  <DIV>| make: *** [all] Error 2</DIV>
  <DIV>| FATAL: oe_runmake failed</DIV>
  <DIV>| ERROR: Function 'do_compile' failed (see=20
  /sdb1/yocto/poky-bernard-5.0/build/tmp/work/ppce500v2-wrs-linux-gnu/e2fsp=
rogs-1.41.12-r20/temp/log.do_compile.10589=20
  for further information)</DIV>
  <DIV>NOTE: package e2fsprogs-1.41.12-r20: task do_compile: Failed</DIV>
  <DIV>ERROR: Task 8=20
  (/sdb1/yocto/poky-bernard-5.0/meta/recipes-devtools/e2fsprogs/e2fsprogs_1=
.41.12.bb,=20
  do_compile) failed with exit code '1'</DIV>
  <DIV>Waiting for 1 active tasks to finish:</DIV>
  <DIV>0: ncurses-5.7-r1 do_package (pid 31748)</DIV></DIV>
  <DIV><BR></DIV>
  <DIV>And in its Makefile of DIR misc it has</DIV>
  <DIV>
  <DIV>#</DIV>
  <DIV># Library definitions</DIV>
  <DIV>#</DIV>
  <DIV>LIB =3D $(top_builddir)/lib</DIV>
  <DIV>LIBSS =3D $(LIB)/libss.so # -ldl</DIV>
  <DIV>LIBCOM_ERR =3D $(LIB)/libcom_err.so # -lpthread</DIV>
  <DIV>LIBE2P =3D $(LIB)/libe2p.so</DIV>
  <DIV><FONT class=3DApple-style-span color=3D#ff0000>LIBEXT2FS =3D=20
  $(LIB)/libext2fs.so</FONT></DIV>
  <DIV>LIBUUID =3D -luuid</DIV>
  <DIV>LIBBLKID =3D $(LIB)/libblkid.so # $(LIBUUID)</DIV></DIV>
  <DIV>I think the red lind should append -lpthread, but it not. any=20
  suggestion?</DIV>
  <DIV><BR></DIV>
  <DIV><BR></DIV><BR><BR><SPAN title=3Dneteasefooter><SPAN=20
  id=3Dnetease_mail_footer></SPAN></SPAN></BLOCKQUOTE><BR><BR><SPAN=20
title=3Dneteasefooter><SPAN id=3Dnetease_mail_footer></SPAN></SPAN></BODY><=
/HTML>

--_000_1865303E0DED764181A9D882DEF65FB694322A3FFAshsmsx502ccrc_--
