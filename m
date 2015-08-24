Return-Path: <Siva.Borra@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5719BE00ACD; Mon, 24 Aug 2015 01:32:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	URIBL_BLACK autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	*  1.7 URIBL_BLACK Contains an URL listed in the URIBL blacklist
	*      [URIs: configure.ac]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 2E478E00ABE
	for <yocto@yoctoproject.org>; Mon, 24 Aug 2015 01:32:33 -0700 (PDT)
Received: from [172.16.141.161] (172.16.141.161) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.224.2;
	Mon, 24 Aug 2015 10:32:31 +0200
Message-ID: <55DAD69F.7050409@enea.com>
Date: Mon, 24 Aug 2015 10:32:31 +0200
From: Siva Borra <siva.borra@enea.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <A8FC939F80655644A89BB21CCD3741E8011BCBAF60@G08CNEXMBPEKD03.g08.fujitsu.local>	<1439960637-8744-1-git-send-email-lixin.fnst@cn.fujitsu.com>	<DDB0C57E45663A458C5CACB7B5688BC21D8DB4FD@SESTOEX04.enea.se>	<A8FC939F80655644A89BB21CCD3741E8011BCBB87A@G08CNEXMBPEKD03.g08.fujitsu.local>
	<A8FC939F80655644A89BB21CCD3741E8011BCBC2E2@G08CNEXMBPEKD03.g08.fujitsu.local>
In-Reply-To: <A8FC939F80655644A89BB21CCD3741E8011BCBC2E2@G08CNEXMBPEKD03.g08.fujitsu.local>
X-Originating-IP: [172.16.141.161]
Subject: Re: [meta-cgl][PATCH v2] cluster-glue: upgrade 1.0.5 -> 1.0.12
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
X-List-Received-Date: Mon, 24 Aug 2015 08:32:41 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi Li,
The error reproducible on ppc32.
Here are the error messages:

make[2]: Entering directory=20
`/media/data/fb/zsibo/CGL/P2041_RC/tmp/work/ppce500mc-enea-linux/cluster-gl=
ue/1.0.12-r0/build/lrm/admin'
echo Creating lrmadmin.8

Creating lrmadmin.8

chmod a+x lrmadmin

help2man --output lrmadmin.8 --no-info --section 8 --name "Part of the=20
Linux-HA project" /usr/sbin/lrmadmin

make[2]: *** [lrmadmin.8] Error 1
make[2]: Leaving directory=20
`/media/data/fb/zsibo/CGL/P2041_RC/tmp/work/ppce500mc-enea-linux/cluster-gl=
ue/1.0.12-r0/build/lrm/admin'

make[1]: *** [all-recursive] Error 1
make[1]: Leaving directory=20
`/media/data/fb/zsibo/CGL/P2041_RC/tmp/work/ppce500mc-enea-linux/cluster-gl=
ue/1.0.12-r0/build/lrm'

make: *** [all-recursive] Error 1

+ die 'oe_runmake failed'
+ bbfatal 'oe_runmake failed'
+ echo 'ERROR: oe_runmake failed'
ERROR: oe_runmake failed
+ exit 1
+ bb_exit_handler

+ ret=3D1
+ case $ret in
+ case $BASH_VERSION in
+ echo 'WARNING:=20
/media/data/fb/zsibo/CGL/P2041_RC/tmp/work/ppce500mc-enea-linux/cluster-glu=
e/1.0.12-r0/temp/run.do_compile.47522:1=20
exit 1 from
   exit' 1
WARNING:=20
/media/data/fb/zsibo/CGL/P2041_RC/tmp/work/ppce500mc-enea-linux/cluster-glu=
e/1.0.12-r0/temp/run.do_compile.47522:1=20
exit 1 from
   exit 1
+ exit 1

for `all'.
make[2]: Leaving directory=20
`/media/data/fb/zsibo/CGL/P2041_RC/tmp/work/ppce500mc-enea-linux/cluster-gl=
ue/1.0.12-r0/build/lrm/lrmd'
Making all in admin
make[2]: Entering directory=20
`/media/data/fb/zsibo/CGL/P2041_RC/tmp/work/ppce500mc-enea-linux/cluster-gl=
ue/1.0.12-r0/build/lrm/admin'
echo Creating lrmadmin.8
Creating lrmadmin.8
chmod a+x lrmadmin
help2man --output lrmadmin.8 --no-info --section 8 --name "Part of the=20
Linux-HA project" /usr/sbin/lrmadmin
make[2]: *** [lrmadmin.8] Error 1
make[2]: Leaving directory=20
`/media/data/fb/zsibo/CGL/P2041_RC/tmp/work/ppce500mc-enea-linux/cluster-gl=
ue/1.0.12-r0/build/lrm/admin'
make[1]: *** [all-recursive] Error 1
make[1]: Leaving directory=20
`/media/data/fb/zsibo/CGL/P2041_RC/tmp/work/ppce500mc-enea-linux/cluster-gl=
ue/1.0.12-r0/build/lrm'
make: *** [all-recursive] Error 1

Regards,
Siva Borra.

On 2015-08-24 08:43, Li, Xin wrote:
> Hi, Alex V.
>
> I bitbake cluster-glue for x86, Arm, and Powerpc. But I can't produce the=
 error.
> Would you mind providing the error message for me?
>
> Regards,
> Li
>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.=
org]
>> On Behalf Of Li, Xin
>> Sent: Friday, August 21, 2015 10:51 AM
>> To: Alexandru Vaduva; yocto@yoctoproject.org
>> Subject: Re: [yocto] [meta-cgl][PATCH v2] cluster-glue: upgrade 1.0.5 ->=
 1.0.12
>>
>> Hi, Alex V.
>>
>> Thanks a lot.
>>
>> Indeed, the error does not occur on my system.
>> I will do some extra test, and resend the patch.
>>
>> Regards,
>> Li
>>
>>> -----Original Message-----
>>> From: Alexandru Vaduva [mailto:Alexandru.Vaduva@enea.com]
>>> Sent: Thursday, August 20, 2015 10:51 PM
>>> To: Li, Xin/=E6=9D=8E =E6=AC=A3; yocto@yoctoproject.org
>>> Subject: RE: [yocto] [meta-cgl][PATCH v2] cluster-glue: upgrade 1.0.5
>>> -> 1.0.12
>>>
>>> Hello,
>>>
>>> Could you please take one more look on this since for me the build is
>>> failing in the do_compile stage.
>>> Due to this error I was not able to build the other two patches
>>> heardbleat and pacemaker. :D
>>>
>>> Alex V.
>>>
>>> -----Original Message-----
>>> From: yocto-bounces@yoctoproject.org
>>> [mailto:yocto-bounces@yoctoproject.org]
>>> On Behalf Of Li xin
>>> Sent: Wednesday, August 19, 2015 8:04 AM
>>> To: yocto@yoctoproject.org
>>> Subject: [yocto] [meta-cgl][PATCH v2] cluster-glue: upgrade 1.0.5 ->
>>> 1.0.12
>>>
>>> * Add patch to aviod build Error and Warning.
>>>   --0001-don-t-compile-doc-and-Error-Fix.patch
>>>   --0001-ribcl.py.in-Warning-Fix.patch
>>>
>>> * Dropped backported patch:
>>>   --fix-const-cast.patch
>>>   --glue-remove-getpid-check.patch
>>>   --glue-repair-deprecated-glib-support.patch
>>>   --glue-repair-libxml-support.patch
>>>
>>> * Replace the hardcoded strings "/usr/lib" "/etc/" "/usr/sbin" "/usr/sh=
are"
>>>
>>> Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
>>> ---
>>> .../0001-don-t-compile-doc-and-Error-Fix.patch     |  50 ++++++++++
>>> .../0001-ribcl.py.in-Warning-Fix.patch             |  34 +++++++
>>> .../cluster-glue/cluster-glue/fix-const-cast.patch | 103 --------------=
-------
>>> .../cluster-glue/glue-remove-getpid-check.patch    |  31 -------
>>> .../glue-repair-deprecated-glib-support.patch      |  12 ---
>>> .../cluster-glue/glue-repair-libxml-support.patch  |  14
>>> ---  ...luster-glue_1.0.5.bb =3D> cluster-glue_1.0.12.bb} |  76
>>> ++++++++-------
>>> 7 files changed, 125 insertions(+), 195 deletions(-)  create mode
>>> 100644
>>> meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/0001-don-t-compil
>>> e-doc-and
>>> -Error-Fix.patch
>>> create mode 100644
>>> meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/0001-ribcl.py.in-=
Warning-Fi
>> x.
>>> patch
>>> delete mode 100644
>>> meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/fix-const-cast.pa
>>> tch
>>> delete mode 100644
>>> meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/glue-remove-getpi
>>> d-check.p
>>> atch
>>> delete mode 100644
>>> meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/glue-repair-depre
>>> cated-glib-
>>> support.patch
>>> delete mode 100644
>>> meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/glue-repair-libxm
>>> l-support.p
>>> atch
>>> rename meta-cgl-common/recipes-cgl/cluster-glue/{cluster-glue_1.0.5.bb
>>> =3D> cluster-glue_1.0.12.bb} (49%)
>>>
>>> diff --git
>>> a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/0001-don-t-comp
>>> ile-doc-a
>>> nd-Error-Fix.patch
>>> b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/0001-don-t-comp
>>> ile-doc-a
>>> nd-Error-Fix.patch
>>> new file mode 100644
>>> index 0000000..471b1e4
>>> --- /dev/null
>>> +++ b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/0001-don-t-
>>> +++ c
>>> +++ ompile-doc-and-Error-Fix.patch
>>> @@ -0,0 +1,50 @@
>>> +From b64b676f7abf896ca714341eb330099f2ff04213 Mon Sep 17 00:00:00 2001
>>> +From: Li xin <lixin.fnst@cn.fujitsu.com>
>>> +Date: Tue, 18 Aug 2015 17:43:29 +0900
>>> +Subject: [PATCH] don't compile doc and Error Fix
>>> +
>>> +| help2man: can't get `--help' info from ../../lrm/admin/lrmadmin
>>> +| make[2]: *** [lrmadmin.8] Error 1
>>> +
>>> +| make[2]: a2x: Command not found
>>> +| /usr/bin/xsltproc \
>>> +|       --xinclude \
>>> +|
>>> +| http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.
>>> +| x
>>> +| sl ha_logd.xml
>>> +| make[2]: *** [hb_report.8] Error 127
>>> +
>>> +Upstream-Status: pending
>>> +
>>> +Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
>>> +---
>>> + Makefile.am           | 2 +-
>>> + configure.ac          | 6 ++++++
>>> + lrm/admin/Makefile.am | 2 +-
>>> + 3 files changed, 8 insertions(+), 2 deletions(-)
>>> +
>>> +diff --git a/Makefile.am b/Makefile.am index 93dbaf6..2f4d03b 100644
>>> +--- a/Makefile.am
>>> ++++ b/Makefile.am
>>> +@@ -23,7 +23,7 @@ MAINTAINERCLEANFILES	=3D Makefile.in aclocal.m4
>> configure
>>> DRF/config-h.in \
>>> + 			  DRF/stamp-h.in libtool.m4 ltdl.m4 libltdl.tar
>>> +
>>> + SUBDIRS			=3D include $(LIBLTDL_DIR) replace lib lrm logd \
>>> +-			  hb_report doc config
>>> ++			  hb_report config
>>> +
>>> + install-exec-local:
>>> + 	$(INSTALL) -d $(DESTDIR)/$(HA_COREDIR) diff --git
>>> +a/lrm/admin/Makefile.am b/lrm/admin/Makefile.am index a92cd72..ed938e0
>>> +100644
>>> +--- a/lrm/admin/Makefile.am
>>> ++++ b/lrm/admin/Makefile.am
>>> +@@ -36,5 +36,5 @@ man8_MANS =3D	$(sbin_PROGRAMS:%=3D%.8)
>>> + %.8:	%
>>> + 	echo Creating $@
>>> + 	chmod a+x $<
>>> +-	help2man --output $@ --no-info --section 8 --name "Part of the Linux=
-HA
>>> project" $(top_builddir)/lrm/admin/$<
>>> ++	help2man --output $@ --no-info --section 8 --name "Part of the
>>> ++Linux-HA project" /usr/sbin/$<
>>> + endif
>>> +--
>>> +1.8.4.2
>>> +
>>> diff --git
>>> a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/0001-ribcl.py.i
>>> n-Warning-F
>>> ix.patch
>>> b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/0001-ribcl.py.i
>>> n-Warning-F
>>> ix.patch
>>> new file mode 100644
>>> index 0000000..31010d4
>>> --- /dev/null
>>> +++ b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/0001-ribcl.
>>> +++ p
>>> +++ y.in-Warning-Fix.patch
>>> @@ -0,0 +1,34 @@
>>> +From a2c66927b75547cee1db1340a67449ded0812df3 Mon Sep 17 00:00:00 2001
>>> +From: Li xin <lixin.fnst@cn.fujitsu.com>
>>> +Date: Wed, 19 Aug 2015 11:13:46 +0900
>>> +Subject: [PATCH] ribcl.py.in: Warning Fix
>>> +
>>> +WARNING: QA Issue:
>>> +/usr/lib/stonith/plugins/stonith2/ribcl.py_cluster-glue-plugin-stonith
>>> +2 -ribcl contained in package cluster-glue-plugin-stonith2-ribcl
>>> +requires /usr/local/bin/python, but no providers found in its RDEPENDS
>>> +[file-rdeps]
>>> +
>>> +Add target python handling
>>> +Allow the build to specify a path for the python instead of reusing
>>> +the PYTHON variable which can lead to inconsistencies if we are cross
>>> +compiling.
>>> +
>>> +Upstream-Status: pending
>>> +
>>> +Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
>>> +---
>>> + lib/plugins/stonith/ribcl.py.in | 2 +-
>>> + 1 file changed, 1 insertion(+), 1 deletion(-)
>>> +
>>> +diff --git a/lib/plugins/stonith/ribcl.py.in
>>> +b/lib/plugins/stonith/ribcl.py.in index 14e070c..01205e3 100644
>>> +--- a/lib/plugins/stonith/ribcl.py.in
>>> ++++ b/lib/plugins/stonith/ribcl.py.in
>>> +@@ -1,4 +1,4 @@
>>> +-#!@PYTHON@
>>> ++#!@TRAGET_PYTHON@
>>> +
>>> +
>>> + #
>>> +--
>>> +1.8.4.2
>>> +
>>> diff --git
>>> a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/fix-const-cast.
>>> patch
>>> b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/fix-const-cast.
>>> patch
>>> deleted file mode 100644
>>> index 6de65bf..0000000
>>> ---
>>> a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/fix-const-cast.
>>> patch
>>> +++ /dev/null
>>> @@ -1,103 +0,0 @@
>>> -This patch gets rid of new warning introduced with gcc 4.5 -Warning is
>>> explained here
>>> -http://gcc.gnu.org/viewcvs/trunk/gcc/doc/invoke.texi?r1=3D148037&r2=3D=
1480
>>> 53&diff
>>> _format=3Dh
>>> -
>>> --Khem
>>> --updated by Alexandru Vaduva - patch needed redone
>>> -
>>> -diff -Naur a/lib/plugins/stonith/apcsmart.c b/lib/plugins/stonith/apcs=
mart.c
>>> ---- a/lib/plugins/stonith/apcsmart.c	2014-07-09 17:14:24.492455034 +02=
00
>>> -+++ b/lib/plugins/stonith/apcsmart.c	2014-07-09 17:15:03.386817399 +02=
00
>>> -@@ -719,7 +719,7 @@
>>> - 	}
>>> - 	ERRIFNOTCONFIGED(s,NULL);
>>> -
>>> --	return OurImports->CopyHostList((const char **)ad->hostlist);
>>> -+    return OurImports->CopyHostList(CONST_CAST(ad->hostlist));
>>> - }
>>> -
>>> - static gboolean
>>> -diff -Naur a/lib/plugins/stonith/external.c b/lib/plugins/stonith/exte=
rnal.c
>>> ---- a/lib/plugins/stonith/external.c	2014-07-09 17:15:28.661753145 +02=
00
>>> -+++ b/lib/plugins/stonith/external.c	2014-07-09 17:17:03.873743634 +02=
00
>>> -@@ -540,7 +540,7 @@
>>> - 		sd->confignames[dircount] =3D NULL;
>>> - 	}
>>> -
>>> --	return (const char **)sd->confignames;
>>> -+    return CONST_CAST(sd->confignames);
>>> - }
>>> -
>>> - /*
>>> -diff -Naur a/lib/plugins/stonith/meatware.c b/lib/plugins/stonith/meat=
ware.c
>>> ---- a/lib/plugins/stonith/meatware.c	2014-07-09 17:18:47.597375001 +02=
00
>>> -+++ b/lib/plugins/stonith/meatware.c	2014-07-09 17:19:35.943338541 +02=
00
>>> -@@ -136,7 +136,7 @@
>>> - 		return(NULL);
>>> - 	}
>>> -
>>> --	return OurImports->CopyHostList((const char **)nd->hostlist);
>>> -+    return OurImports->CopyHostList(CONST_CAST(nd->hostlist));
>>> - }
>>> -
>>> - /*
>>> -diff -Naur a/lib/plugins/stonith/null.c b/lib/plugins/stonith/null.c
>>> ---- a/lib/plugins/stonith/null.c	2014-07-09 17:20:12.389803230 +0200
>>> -+++ b/lib/plugins/stonith/null.c	2014-07-09 17:20:55.156001606 +0200
>>> -@@ -126,7 +126,7 @@
>>> - 	struct pluginDevice*	nd =3D (struct pluginDevice*)s;
>>> -
>>> - 	ERRIFWRONGDEV(s, NULL);
>>> --	return OurImports->CopyHostList((const char**)nd->hostlist);
>>> -+    return OurImports->CopyHostList(CONST_CAST(nd->hostlist));
>>> - }
>>> -
>>> -
>>> -diff -Naur a/lib/plugins/stonith/rcd_serial.c b/lib/plugins/stonith/rc=
d_serial.c
>>> ---- a/lib/plugins/stonith/rcd_serial.c	2014-07-09 17:21:12.603266573 +=
0200
>>> -+++ b/lib/plugins/stonith/rcd_serial.c	2014-07-09 17:21:56.341423862 +=
0200
>>> -@@ -347,7 +347,7 @@
>>> - 		return(NULL);
>>> - 	}
>>> -
>>> --	return OurImports->CopyHostList((const char **)rcd->hostlist);
>>> -+    return OurImports->CopyHostList(CONST_CAST(rcd->hostlist));
>>> - }
>>> -
>>> - /*
>>> -diff -Naur a/lib/plugins/stonith/rhcs.c b/lib/plugins/stonith/rhcs.c
>>> ---- a/lib/plugins/stonith/rhcs.c	2014-07-09 17:17:27.652742171 +0200
>>> -+++ b/lib/plugins/stonith/rhcs.c	2014-07-09 17:18:18.562597957 +0200
>>> -@@ -703,7 +703,7 @@
>>> - 		sd->confignames[dircount] =3D NULL;
>>> - 	}
>>> -
>>> --	return (const char **)sd->confignames;
>>> -+    return CONST_CAST(sd->confignames);
>>> - }
>>> -
>>> - /*
>>> -diff -Naur a/lib/plugins/stonith/ssh.c b/lib/plugins/stonith/ssh.c
>>> ---- a/lib/plugins/stonith/ssh.c	2014-07-09 17:22:15.320624229 +0200
>>> -+++ b/lib/plugins/stonith/ssh.c	2014-07-09 17:22:53.499015642 +0200
>>> -@@ -161,7 +161,7 @@
>>> - 		return(NULL);
>>> - 	}
>>> -
>>> --	return OurImports->CopyHostList((const char **)sd->hostlist);
>>> -+    return OurImports->CopyHostList(CONST_CAST(sd->hostlist));
>>> - }
>>> -
>>> -
>>> -diff -Naur a/lib/plugins/stonith/stonith_plugin_common.h
>>> b/lib/plugins/stonith/stonith_plugin_common.h
>>> ---- a/lib/plugins/stonith/stonith_plugin_common.h	2014-07-09
>>> 17:23:16.954027367 +0200
>>> -+++ b/lib/plugins/stonith/stonith_plugin_common.h	2014-07-09
>>> 17:24:38.538609129 +0200
>>> -@@ -123,5 +123,8 @@
>>> -     return; \
>>> -   }
>>> -
>>> -+#define CONST_CAST(s) \
>>> -+    (__extension__(union {char ** a; const char** b;})(s)).b
>>> -+
>>> - #endif
>>> -
>>> diff --git
>>> a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/glue-remove-get
>>> pid-check
>>> .patch
>>> b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/glue-remove-get
>>> pid-check
>>> .patch
>>> deleted file mode 100644
>>> index 30f422c..0000000
>>> ---
>>> a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/glue-remove-get
>>> pid-check
>>> .patch
>>> +++ /dev/null
>>> @@ -1,31 +0,0 @@
>>> -diff -Naur a/configure.ac b/configure.ac
>>> ---- a/configure.ac	2014-07-09 17:05:51.602037193 +0200
>>> -+++ b/configure.ac	2014-07-09 17:08:44.566761961 +0200
>>> -@@ -441,24 +441,9 @@
>>> - AC_MSG_RESULT($BUILD_VERSION)
>>> - AC_SUBST(BUILD_VERSION)
>>> -
>>> --
>>> --dnl check if there are getpid() inconsistency
>>> --dnl	Note: reduce LIBS; in particular, ltdl can cause confusion.
>>> --dnl	Possibly better:  move 'LIBS=3D"$LIBS -lltdl"' from above to beyo=
nd here.
>>> --dnl
>>> --AC_MSG_CHECKING(for getpid() consistency in multi-process/threads
>>> program) --ac_save_LIBS=3D$LIBS --LIBS=3D"-lpthread"
>>> --AC_TRY_RUN(`cat $srcdir/config/pidtest.c`, --AC_MSG_RESULT(ok),
>>> --[AC_MSG_RESULT(fail); AC_DEFINE(GETPID_INCONSISTENT, 1 , [pid
>>> inconsistent])],) --LIBS=3D$ac_save_LIBS
>>> --
>>> --dnl check byte order
>>> --AC_MSG_CHECKING(for byteorder)
>>> --AC_TRY_RUN(`cat $srcdir/config/byteorder_test.c`,
>>> --[AC_MSG_RESULT(little-endian); AC_DEFINE(CONFIG_LITTLE_ENDIAN, 1,
>>> [little-endian])], --[AC_MSG_RESULT(big-endian);
>>> AC_DEFINE(CONFIG_BIG_ENDIAN, 1, [big-endian])],)
>>> -+AC_C_BIGENDIAN(
>>> -+  [AC_DEFINE(CONFIG_BIG_ENDIAN, 1, [big])],
>>> -+  [AC_DEFINE(CONFIG_LITTLE_ENDIAN, 1, [little])])
>>> -
>>> -
>>> - dnl =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
>>> diff --git
>>> a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/glue-repair-dep
>>> recated-gli
>>> b-support.patch
>>> b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/glue-repair-dep
>>> recated-gli
>>> b-support.patch
>>> deleted file mode 100644
>>> index 16fc679..0000000
>>> ---
>>> a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/glue-repair-dep
>>> recated-gli
>>> b-support.patch
>>> +++ /dev/null
>>> @@ -1,12 +0,0 @@
>>> -diff -Naur a/include/clplumbing/cl_uuid.h b/include/clplumbing/cl_uuid=
.h
>>> ---- a/include/clplumbing/cl_uuid.h	2014-07-14 14:25:24.127378762 +0200
>>> -+++ b/include/clplumbing/cl_uuid.h	2014-07-14 14:23:32.120193782 +0200
>>> -@@ -16,7 +16,7 @@
>>> -
>>> - #ifndef _CL_UUID_H_
>>> - #define _CL_UUID_H_
>>> --#include <glib/gtypes.h>
>>> -+#include <glib.h>
>>> -
>>> - typedef struct cl_uuid_s{
>>> - 	unsigned char	uuid[16];
>>> diff --git
>>> a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/glue-repair-lib
>>> xml-support
>>> .patch
>>> b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/glue-repair-lib
>>> xml-support
>>> .patch
>>> deleted file mode 100644
>>> index a436575..0000000
>>> ---
>>> a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/glue-repair-lib
>>> xml-support
>>> .patch
>>> +++ /dev/null
>>> @@ -1,14 +0,0 @@
>>> -diff -Naur a/configure.ac b/configure.ac
>>> ---- a/configure.ac	2014-07-14 13:02:42.016652860 +0200
>>> -+++ b/configure.ac	2014-07-14 13:03:59.585322332 +0200
>>> -@@ -679,8 +679,8 @@
>>> -
>>> - CPPFLAGS=3D"$CPPFLAGS $XML2HEAD"
>>> -
>>> --AC_CHECK_HEADERS(libxml/xpath.h)
>>> --if test "$ac_cv_header_libxml_xpath_h" !=3D "yes"; then
>>> -+AC_CHECK_HEADERS(libxml2/libxml/xpath.h)
>>> -+if test x"$ac_cv_header_libxml2_libxml_xpath_h" !=3D x"yes"; then
>>> -    AC_MSG_ERROR(The libxml developement headers were not found)
>>> - fi
>>> -
>>> diff --git
>>> a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.5.bb
>>> b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
>>> similarity index 49%
>>> rename from
>>> meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.5.bb
>>> rename to
>>> meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
>>> index f1b4a78..be04469 100644
>>> --- a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.5.bb
>>> +++ b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
>>> @@ -7,21 +7,20 @@ LICENSE =3D "GPLv2"
>>> DEPENDS =3D "libxml2 libtool glib-2.0 bzip2 util-linux net-snmp openhpi=
"
>>>
>>> SRC_URI =3D " \
>>> -	http://hg.linux-ha.org/glue/archive/glue-${PV}.tar.bz2 \
>>> -    file://glue-repair-libxml-support.patch \
>>> -    file://glue-repair-deprecated-glib-support.patch \
>>> -    file://glue-remove-getpid-check.patch \
>>> -    file://fix-const-cast.patch \
>>> +    http://hg.linux-ha.org/glue/archive/glue-${PV}.tar.bz2 \
>>> +    file://0001-don-t-compile-doc-and-Error-Fix.patch \
>>> +    file://0001-ribcl.py.in-Warning-Fix.patch \
>>>      file://volatiles \
>>>      file://tmpfiles \
>>> -	"
>>> +"
>>> SRC_URI_append_libc-uclibc =3D " file://kill-stack-protector.patch"
>>> -SRC_URI[md5sum] =3D "d2b6f798e58ef2497526e404b8ad640a"
>>> -SRC_URI[sha256sum] =3D
>>> "0e1922373aba1c3811f6ef61559a9c407c0bec71d2ebc451a4db5b940ded8ec0"
>>> +
>>> +SRC_URI[md5sum] =3D "ec620466d6f23affa3b074b72bca7870"
>>> +SRC_URI[sha256sum] =3D
>>> "feba102fa1e24b6be2005089ebe362b82d6567af60005cf371679b1b44ec503f"
>>>
>>> LIC_FILES_CHKSUM =3D
>>> "file://${COREBASE}/meta/COPYING.GPLv2;md5=3D751419260aa954499f7abaabaa=
8
>> 8
>>> 2bbe"
>>>
>>> -inherit autotools useradd
>>> +inherit autotools useradd pkgconfig
>>>
>>> S =3D "${WORKDIR}/Reusable-Cluster-Components-glue--glue-${PV}"
>>>
>>> @@ -70,43 +69,50 @@ PACKAGES +=3D "\
>>> 	 ${PN}-plugin-interfacemgr-dbg \
>>> 	 ${PN}-plugin-interfacemgr-staticdev \
>>> 	 ${PN}-lrmtest \
>>> +         ${PN}-plugin-compress \
>>> +         ${PN}-plugin-compress-dbg \
>>> +         ${PN}-plugin-compress-staticdev \
>>> 	 "
>>>
>>> -FILES_${PN} =3D "/etc/ /var /usr/lib/lib*.so.* /usr/sbin
>>> /usr/share/cluster-glue/*sh /usr/share/cluster-glue/*pl\
>>> -	/usr/lib/heartbeat/transient-test.sh \
>>> -	/usr/lib/heartbeat/logtest \
>>> -	/usr/lib/heartbeat/ipctransientserver \
>>> -	/usr/lib/heartbeat/base64_md5_test \
>>> -	/usr/lib/heartbeat/ipctest \
>>> -	/usr/lib/heartbeat/ipctransientclient \
>>> -	/usr/lib/heartbeat/ha_logd \
>>> -	/usr/lib/heartbeat/lrmd \
>>> +FILES_${PN} =3D "${sysconfdir} /var ${libdir}/lib*.so.* ${sbindir}
>>> ${datadir}/cluster-glue/*sh ${datadir}/cluster-glue/*pl\
>>> +	${libdir}/heartbeat/transient-test.sh \
>>> +	${libdir}/heartbeat/logtest \
>>> +	${libdir}/heartbeat/ipctransientserver \
>>> +	${libdir}/heartbeat/base64_md5_test \
>>> +	${libdir}/heartbeat/ipctest \
>>> +	${libdir}/heartbeat/ipctransientclient \
>>> +	${libdir}/heartbeat/ha_logd \
>>> +	${libdir}/heartbeat/lrmd \
>>> 	"
>>>
>>> -FILES_${PN}-dbg +=3D "/usr/lib/heartbeat/.debug/"
>>> +FILES_${PN}-dbg +=3D "${libdir}/heartbeat/.debug/ \
>>> +                   "
>>> +FILES_${PN}-plugin-compress =3D "${libdir}/heartbeat/plugins/compress/=
*.so"
>>> +FILES_${PN}-plugin-compress-staticdev =3D
>>> "${libdir}/heartbeat/plugins/compress/*.*a"
>>> +FILES_${PN}-plugin-compress-dbg =3D
>>> "${libdir}/heartbeat/plugins/compress/.debug/"
>>>
>>> -FILES_${PN}-plugin-test =3D "/usr/lib/heartbeat/plugins/test/test.so"
>>> -FILES_${PN}-plugin-test-staticdev =3D "/usr/lib/heartbeat/plugins/test=
/test.*a"
>>> -FILES_${PN}-plugin-test-dbg =3D "/usr/lib/heartbeat/plugins/test/.debu=
g/"
>>> +FILES_${PN}-plugin-test =3D "${libdir}/heartbeat/plugins/test/test.so"
>>> +FILES_${PN}-plugin-test-staticdev =3D "${libdir}/heartbeat/plugins/tes=
t/test.*a"
>>> +FILES_${PN}-plugin-test-dbg =3D "${libdir}/heartbeat/plugins/test/.deb=
ug/"
>>> FILES_${PN}-plugin-stonith2 =3D " \
>>> -	/usr/lib/stonith/plugins/xen0-ha-dom0-stonith-helper \
>>> -	/usr/lib/stonith/plugins/stonith2/*.so \
>>> +	${libdir}/stonith/plugins/xen0-ha-dom0-stonith-helper \
>>> +	${libdir}/stonith/plugins/stonith2/*.so \
>>> 	"
>>> -FILES_${PN}-plugin-stonith2-ribcl =3D "/usr/lib/stonith/plugins/stonit=
h2/ribcl.py"
>>> +FILES_${PN}-plugin-stonith2-ribcl =3D "${libdir}/stonith/plugins/stoni=
th2/ribcl.py"
>>>
>>> -FILES_${PN}-plugin-stonith2-dbg =3D "/usr/lib/stonith/plugins/stonith2=
/.debug/"
>>> -FILES_${PN}-plugin-stonith2-staticdev =3D "/usr/lib/stonith/plugins/st=
onith2/*.*a"
>>> +FILES_${PN}-plugin-stonith2-dbg =3D "${libdir}/stonith/plugins/stonith=
2/.debug/"
>>> +FILES_${PN}-plugin-stonith2-staticdev =3D "${libdir}/stonith/plugins/s=
tonith2/*.*a"
>>>
>>> -FILES_${PN}-plugin-stonith-external =3D "/usr/lib/stonith/plugins/exte=
rnal/"
>>> -FILES_${PN}-plugin-raexec =3D "/usr/lib/heartbeat/plugins/RAExec/*.so"
>>> -FILES_${PN}-plugin-raexec-staticdev =3D "/usr/lib/heartbeat/plugins/RA=
Exec/*.*a"
>>> -FILES_${PN}-plugin-raexec-dbg =3D "/usr/lib/heartbeat/plugins/RAExec/.=
debug/"
>>> +FILES_${PN}-plugin-stonith-external =3D "${libdir}/stonith/plugins/ext=
ernal/"
>>> +FILES_${PN}-plugin-raexec =3D "${libdir}/heartbeat/plugins/RAExec/*.so=
"
>>> +FILES_${PN}-plugin-raexec-staticdev =3D "${libdir}/heartbeat/plugins/R=
AExec/*.*a"
>>> +FILES_${PN}-plugin-raexec-dbg =3D "${libdir}/heartbeat/plugins/RAExec/=
.debug/"
>>>
>>> -FILES_${PN}-plugin-interfacemgr =3D
>>> "/usr/lib/heartbeat/plugins/InterfaceMgr/generic.so"
>>> -FILES_${PN}-plugin-interfacemgr-staticdev =3D
>>> "/usr/lib/heartbeat/plugins/InterfaceMgr/generic.*a"
>>> -FILES_${PN}-plugin-interfacemgr-dbg =3D
>>> "/usr/lib/heartbeat/plugins/InterfaceMgr/.debug/"
>>> +FILES_${PN}-plugin-interfacemgr =3D
>>> "${libdir}/heartbeat/plugins/InterfaceMgr/generic.so"
>>> +FILES_${PN}-plugin-interfacemgr-staticdev =3D
>>> "${libdir}/heartbeat/plugins/InterfaceMgr/generic.*a"
>>> +FILES_${PN}-plugin-interfacemgr-dbg =3D
>>> "${libdir}/heartbeat/plugins/InterfaceMgr/.debug/"
>>>
>>> -FILES_${PN}-lrmtest =3D "/usr/share/cluster-glue/lrmtest/"
>>> +FILES_${PN}-lrmtest =3D "${datadir}/cluster-glue/lrmtest/"
>>>
>>> RDEPENDS_${PN} +=3D "perl"
>>> RDEPENDS_${PN}-plugin-stonith2 +=3D "bash"
>>> --
>>> 1.8.4.2
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


