Return-Path: <bart.houkes@sogeti.nl>
Received: from barracuda1.sogeti.nl (barracuda1.sogeti.nl [194.151.67.71])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8F7CE016F5
	for <yocto@yoctoproject.org>; Sat, 26 Oct 2013 13:11:46 -0700 (PDT)
X-ASG-Debug-ID: 1382818304-03c2540c6312327e0001-yzSStA
Received: from Heafitz.SGTI.NL ([10.234.192.94]) by barracuda1.sogeti.nl with
	ESMTP id 6HQUCotozbsPw9xb; Sat, 26 Oct 2013 22:11:44 +0200 (CEST)
X-Barracuda-Envelope-From: bart.houkes@sogeti.nl
X-ASG-Whitelist: Client
Received: from Sogmb1.SGTI.NL ([fe80::4c8:63ab:e438:d2e5]) by Heafitz.SGTI.NL
	([fe80::4cd:e589:1805:7a82%11]) with mapi;
	Sat, 26 Oct 2013 22:11:47 +0200
From: "Houkes, Bart" <bart.houkes@sogeti.nl>
To: "Voicu, Cristiana" <cristiana.voicu@intel.com>
Date: Sat, 26 Oct 2013 22:09:58 +0200
Thread-Topic: [yocto] Remote debugging with Yocto
X-ASG-Orig-Subj: RE: [yocto] Remote debugging with Yocto
Thread-Index: AQHOznsDEdbtYJI/qUGyUKTab6ciRZoAqbeA///47gCAACCYMIAGroNS
Message-ID: <FBA0FF4F0EC22C4AAFF3D9FD07EF2E383A5C6DAE6D@SOGMB1.SGTI.NL>
References: <FBA0FF4F0EC22C4AAFF3D9FD07EF2E383A5C6DAE5C@SOGMB1.SGTI.NL>,
	<52665531.2010205@intel.com>
	<FBA0FF4F0EC22C4AAFF3D9FD07EF2E383A5C6DAE60@SOGMB1.SGTI.NL>,
	<BE68E9C8E0850C43B0F0B0B7D57FA5AE2E88F651@IRSMSX105.ger.corp.intel.com>
In-Reply-To: <BE68E9C8E0850C43B0F0B0B7D57FA5AE2E88F651@IRSMSX105.ger.corp.intel.com>
Accept-Language: en-US, nl-NL
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, nl-NL
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[10.234.192.94]
X-Barracuda-Start-Time: 1382818304
X-Barracuda-URL: http://10.234.200.14:8000/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at sogeti.nl
X-Barracuda-BRTS-Status: 1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Remote debugging with Yocto
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
X-List-Received-Date: Sat, 26 Oct 2013 20:11:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,=20

By accident I solved some bugs in the repo, now I get better info. Here the=
 patch, feel free to use it... or maybe it's already solved, because I use =
1.4.1:

diff --git a/scripts/lib/bsp/kernel.py b/scripts/lib/bsp/kernel.py
index fc1e6bd..fbc3555 100644
--- a/scripts/lib/bsp/kernel.py
+++ b/scripts/lib/bsp/kernel.py
@@ -166,13 +166,15 @@ def read_config_items(scripts_path, machine):
     config_items =3D []
=20
     f =3D open_user_file(scripts_path, machine, machine+"-user-config.cfg"=
, "r")
-    lines =3D f.readlines()
-    for line in lines:
-        s =3D line.strip()
-        if s and not s.startswith("#"):
-            config_items.append(s)
-    f.close()
-
+    try:
+        lines =3D f.readlines()
+        for line in lines:
+            s =3D line.strip()
+            if s and not s.startswith("#"):
+                config_items.append(s)
+        f.close()
+    except:
+        print "No config file: " +machine+"-user-config.cfg"
     return config_items
=20
=20
@@ -562,14 +564,16 @@ def read_features(scripts_path, machine):
     features =3D []
=20
     f =3D open_user_file(scripts_path, machine, machine+"-user-features.sc=
c", "r")
-    lines =3D f.readlines()
-    for line in lines:
-        s =3D line.strip()
-        if s and not s.startswith("#"):
-            feature_include =3D s.split()
-            features.append(feature_include[1].strip())
-    f.close()
-
+    try:
+        lines =3D f.readlines()
+        for line in lines:
+            s =3D line.strip()
+            if s and not s.startswith("#"):
+                feature_include =3D s.split()
+                features.append(feature_include[1].strip())
+        f.close()

________________________________________
From: Voicu, Cristiana [cristiana.voicu@intel.com]
Sent: Tuesday, October 22, 2013 4:12 PM
To: Houkes, Bart
Cc: yocto@yoctoproject.org; Rifenbark, Scott M
Subject: RE: [yocto] Remote debugging with Yocto

Hi Bart,

It seems that tcf-agent was moved to eclipse-debug package group. So, inste=
ad of adding tools-debug to image features, you should add eclipse-debug.
I think that the documentation for tcf-agent is not updated. Scott, can you=
 please update this?
Thank you,
Cristiana

-----Original Message-----
From: Houkes, Bart [mailto:bart.houkes@sogeti.nl]
Sent: Tuesday, October 22, 2013 4:11 PM
To: Voicu, Cristiana
Subject: RE: [yocto] Remote debugging with Yocto

Hi Cristiana,

I did step 2 from http://www.yoctoproject.org/docs/latest/mega-manual/mega-=
manual.html#getting-the-images, and changed the makefile a lot. I copied th=
e file stubs-hard.h to stubs-soft.h, but in the end I miss a dependency lss=
l, which I can't find yet.

When I try to do the same with hob and add tcf-agent, it becomes red and ho=
b stops without any result. Maybe I should hire the young girl from Yocto's=
 movie, for her it is simple.
I added tools-debug to my local-conf and start bitbake again. For HOB, I ge=
t the RPM file which is useless... I need the sama5d34.dtb,  uImage (kernel=
 binary) and a core-image[a-z]*.tar.gz

My local.conf has following:
BB_NUMBER_THREADS =3D "4"
PARALLEL_MAKE =3D "-j 4"
MACHINE ??=3D "sama5d3xek"
DL_DIR ?=3D "/home/mensfort/workspace_poky/downloads"
DISTRO ?=3D "poky"
EXTRA_IMAGE_FEATURES =3D "debug-tweaks tools-debug"    <=3D=3D=3D Just adde=
d tools-debug.
USER_CLASSES ?=3D "buildstats image-mklibs image-prelink"
PATCHRESOLVE =3D "noop"
BB_DISKMON_DIRS =3D "\
    STOPTASKS,${TMPDIR},1G,100K \
    STOPTASKS,${DL_DIR},1G,100K \
    STOPTASKS,${SSTATE_DIR},1G,100K \
    ABORT,${TMPDIR},100M,1K \
    ABORT,${DL_DIR},100M,1K \
    ABORT,${SSTATE_DIR},100M,1K"
CONF_VERSION =3D "1"
SSTATE_MIRRORS =3D ""
PACKAGE_CLASSES =3D "package_rpm package_ipk"

I get following output from bitbake, no working output anymore.
| Error: packagegroup-core-boot not found in the base feeds (sama5d3xek cor=
texa9t2hf-vfp cortexa9hf-vfp armv7at2hf-vfp armv7ahf-vfp armv6thf-vfp armv6=
hf-vfp armv5tehf-vfp armv5ehf-vfp armv5thf-vfp armv5hf-vfp noarch any all).
| ERROR: Function failed: do_rootfs (see
| /home/mensfort/workspace_poky/poky/build-atmel/tmp/work/sama5d3xek-pok
| y-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.28222 for
| further information)
ERROR: Task 7 (/home/mensfort/workspace_poky/poky/meta/recipes-core/images/=
core-image-minimal.bb, do_rootfs) failed with exit code '1'
Currently 1 running tasks (1864 of 1870):
0: perl-5.14.3-r1 do_package_write_ipk (pid 28220)

Next time to try HOB, I will make a screenshot.
Maybe I am using the 'old' version 1.4.1. How to change to 1.4.2 or 1.5 ?

greetings,
Bart

Hi Bart,
On 10/21/2013 07:31 PM, Houkes, Bart wrote:
> Hi,
>
> 2 issues are blocking for my development:
>
> last few weeks I was able to download my own kernel on the ARM board with=
 SAMA5d3S.
>
> However, with HOB I cannot add TCF-agent or any other project.. HOB will =
give some error, becomes red and stops. I cannot compile anymore.
>
> I need TCF-agent to do remote debugging.
Regarding tcf-agent, you can find documentation at http://www.yoctoproject.=
org/docs/latest/mega-manual/mega-manual.html#getting-the-images.
If you already have tools-debug as extra feature in local.conf, and you rec=
eive an error in Hob, can you please provide a screenshot with it?

Cristiana
>
> Another:
>
> There are some presentations about standard projects. How about kernel dr=
ivers with cross compilers or Video 4 Linux. How to start those projects?
>
> greetings,
> Bart
> bart.houkes@sogeti.nl
>
> Disclaimer:
> This message contains information that may be privileged or confidential =
and is the property of Sogeti Nederland B.V. or its Group members. It is in=
tended only for the person to whom it is addressed. If you are not the inte=
nded recipient, you are not authorized to read, print, retain, copy, dissem=
inate, distribute, or use this message or any part thereof. If you receive =
this message in error, please notify the sender immediately and delete all =
copies of this message.
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto




Disclaimer: This message contains information that may be privileged or con=
fidential and is the property of Sogeti Nederland B.V. or its Group members=
. It is intended only for the person to whom it is addressed. If you are no=
t the intended recipient, you are not authorized to read, print, retain, co=
py, disseminate, distribute, or use this message or any part thereof. If yo=
u receive this message in error, please notify the sender immediately and d=
elete all copies of this message.

Disclaimer:=0D
This message contains information that may be privileged or confidential an=
d is the property of Sogeti Nederland B.V. or its Group members. It is inte=
nded only for the person to whom it is addressed. If you are not the intend=
ed recipient, you are not authorized to read, print, retain, copy, dissemin=
ate, distribute, or use this message or any part thereof. If you receive th=
is message in error, please notify the sender immediately and delete all co=
pies of this message.

