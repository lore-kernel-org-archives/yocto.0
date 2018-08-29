Return-Path: <Kamal.Pandey@ifm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71C3DE00939; Wed, 29 Aug 2018 04:29:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [91.90.150.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from s2065.ppsmtp.net (s2065.ppsmtp.net [91.90.150.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A754E00718
	for <yocto@yoctoproject.org>; Wed, 29 Aug 2018 04:29:09 -0700 (PDT)
Received: from pps.filterd (s2065.ppsmtp.net [127.0.0.1])
	by s2065.ppsmtp.net (8.16.0.22/8.16.0.22) with SMTP id w7TBPSep012340
	for <yocto@yoctoproject.org>; Wed, 29 Aug 2018 13:29:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ifm.com;
	h=from : to : subject :
	date : message-id : mime-version : content-type :
	content-transfer-encoding; s=pps;
	bh=uWDM9v44gFRqTwDHCt2D+ovzIAquajFE9grLY54VJ+k=;
	b=hMVHroPG39zBPANIPK5OaNh48qyQS1J5h63LNId7m4ocwmr5eW8tke8iwiHoQYODpSbT
	aP/gksfIlvyQK7ZGkMy2qvJcMNKKgys7G080xMvvSjFjkFFcCIu2O7knRmwhZcJV7pqT
	Uq484Wd4/LQ+EcuEx1eGT9jwJHU93OVsLgq3yVLg6Sf/fz5v31B9YIIzcQip78aJT0LV
	sOCUAETvQDbmYYoY8vE4Wq/gkPW2dv5hmZ9/m/BHE22ciPdAUoduR9KaRjtYU2BBznA+
	9eDQlCs3sD1pOWEcN0AYJZbkjvgFvA6JUBM18pzcORF6Xma2ShrXY+Nv8sqqlVyJdr73
	5g== 
Received: from deesdmz226.dmz.es.de.ifm (mail26.ifm.com [194.156.152.226])
	by s2065.ppsmtp.net with ESMTP id 2m3f914qve-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Wed, 29 Aug 2018 13:29:07 +0200
Received: from deesdmz226.dmz.es.de.ifm (localhost.localdomain [127.0.0.1])
	by deesdmz226.dmz.es.de.ifm (Postfix) with ESMTP id 7E9B3703838
	for <yocto@yoctoproject.org>; Wed, 29 Aug 2018 13:29:07 +0200 (CEST)
From: "Pandey, Kamal" <Kamal.Pandey@ifm.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: building weston wayland custom image with QT
Thread-Index: AdQ/i3d2nm7l/FqtTkSIKrNmZFIfYg==
Date: Wed, 29 Aug 2018 11:28:56 +0000
Message-ID: <df56a93b72cb4f97ba8792a437e5f8ef@ifm.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.29.169.96]
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.2.1013-24060.006
X-TM-AS-Result: No-10.628000-5.000000-10
X-TMASE-MatchedRID: 0yomwp+I2kNfmyDIJjZQhISvKOGqLLPK2NaZtAHkymq/1wzJ0ZdiZZOu
	v4LVY2bF0eixX2oSmF6GPHo72p7nlfslEzyWdE1TUIhTTahb7dUHQj6IJQ7jnU+22UIEmHJSTx9
	jhIf/nmzg5AioEwK6n5Dc/WR35yCuo3S7Fgg29DVNa4UOfkJSNObduH7kYuk831GU/N5W5BCFHv
	yK4Rt/mGYMI7YdpARmvUS6K+jSHAs+3ZY5WP55R2ivjLE8DPtZLoYOuiLW+uX+TXZJvYxoecRko
	eJ3OFRcGtN6lKoOwr2XGMAubeIpK48iv1am7RhcM8ORI7N4NZYLitYSIrUiB2quw69QUQrLOO2i
	nOE1RtNApomIi7eNYuRtU7LPcR/PkbjrxLvJ6LCzI1v7J4hECkDGfX813PGpLraGNlLRahhR4VO
	4qL8IpEVdyb8L+SKJnJ5n6T9FRmV2Rany8ZWn3qrxFQMz0ixcQqkzn0LWK15KBTgQlAdsOK920v
	ZneR+99jSR+8DKGQUZNp33AIIyQGE+Mh9mdkEuThh/2J+QysW0k7HugtylSBnqZmOmN1+HFdse8
	JtJj/olpVclvjJJDGpdmBUD2i+xDPIzF4wRfrD+xOhjarOnHq0hbOeGOMG1+gtHj7OwNO0Yzpbd
	T4uedwMEgt3BUiM2mQuWouYXgkRZwLPXSIrJLRBvPPzJr94l
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--10.628000-5.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.2.1013-24060.006
x-tm-snts-smtp: 7A1E669ED32EC14BB913F7144800F9A3848F475174510AE640D068B1778891532
x-c2processedorg: 02c94ccb-b9eb-40fe-af38-4bcaa8aaafa4
MIME-Version: 1.0
X-CompuMailGateway: Version: 7.00.0.18486.x86_64 COMPUMAIL Date:
	20180829112907Z
X-Proofpoint-ID: SID=2m3f914qve QID=2m3f914qve-1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-08-29_03:, , signatures=0
Subject: building weston wayland custom image with QT
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
X-List-Received-Date: Wed, 29 Aug 2018 11:29:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I was trying to create sdk for Weston wayland image but iam facing these er=
rors as shown below:

bitbake -c populate_sdk core-image-weston-pdm3

Build Configuration:
BB_VERSION           =3D "1.36.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "universal"
TARGET_SYS           =3D "aarch64-pdm3-linux"
MACHINE              =3D "pdm3-rev-b-zynqmp"
DISTRO               =3D "pdm3-linux"
DISTRO_VERSION       =3D "0.2.0.0"
TUNE_FEATURES        =3D "aarch64"
TARGET_FPU           =3D ""
meta                =20
meta-poky           =20
meta-selftest       =20
meta-skeleton       =20
meta-yocto-bsp       =3D "rocko:2731fd35d5570263bc004ab16acf4acb0d94422b"
meta-xilinx-bsp     =20
meta-xilinx-contrib  =3D "rel-v2018.1:e7a6531bd8fc9ce5797be082c8478a2701c37=
66a"
meta-xilinx-tools    =3D "rel-v2018.1:93d6b87bdc451ee81d6d716809e0d7e9bc3b7=
021"
meta-oe             =20
meta-perl           =20
meta-python         =20
meta-multimedia     =20
meta-networking     =20
meta-filesystems    =20
meta-webserver       =3D "rocko:352531015014d1957d6444d114f4451e241c4d23"
meta-ifm-pdm3-bsp   =20
meta-ifm-pdm3        =3D "rocko-2.4-xlnx2018.1+wayland:8008e389aeda83088c57=
577471bf040221255887"
meta-qt5             =3D "rocko:682ad61c071a9710e9f9d8a32ab1b5f3c14953d1"
meta-codesys         =3D "master:08029b5f9add1c414e6341bcea52fe532fb3c6b7"

Initialising tasks: 100% |#################################################=
###########################################################################=
###################################################################| Time: =
0:00:06
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: qtwayland-5.9.6+gitAUTOINC+8c5999644c-r0 do_configure: Error calling=
 /home/iepl/work/yocto_build/poky/build-weston/tmp/work/aarch64-pdm3-linux/=
qtwayland/5.9.6+gitAUTOINC+8c5999644c-r0/recipe-sysroot-native/usr/bin/qt5/=
qmake -makefile -o Makefile       /home/iepl/work/yocto_build/poky/build-we=
ston/tmp/work/aarch64-pdm3-linux/qtwayland/5.9.6+gitAUTOINC+8c5999644c-r0/g=
it/qtwayland.pro  --   -no-feature-drm-egl-server -no-feature-libhybris-egl=
-server -no-feature-wayland-brcm -feature-wayland-client -feature-wayland-e=
gl -feature-wayland-server -feature-xcomposite-egl -feature-xcomposite-glx
ERROR: qtwayland-5.9.6+gitAUTOINC+8c5999644c-r0 do_configure: Function fail=
ed: do_configure (log file is located at /home/iepl/work/yocto_build/poky/b=
uild-weston/tmp/work/aarch64-pdm3-linux/qtwayland/5.9.6+gitAUTOINC+8c599964=
4c-r0/temp/log.do_configure.3215)
ERROR: Logfile of failure stored in: /home/iepl/work/yocto_build/poky/build=
-weston/tmp/work/aarch64-pdm3-linux/qtwayland/5.9.6+gitAUTOINC+8c5999644c-r=
0/temp/log.do_configure.3215
Log data follows:
| DEBUG: Executing shell function qmake5_base_preconfigure
| Previously configured separate build directory detected, cleaning /home/i=
epl/work/yocto_build/poky/build-weston/tmp/work/aarch64-pdm3-linux/qtwaylan=
d/5.9.6+gitAUTOINC+8c5999644c-r0/build
| DEBUG: Shell function qmake5_base_preconfigure finished
| DEBUG: Executing shell function do_configure
| NOTE: qmake prevar substitution: '  '
| NOTE: qmake configure substitution: '  -no-feature-drm-egl-server -no-fea=
ture-libhybris-egl-server -no-feature-wayland-brcm -feature-wayland-client =
-feature-wayland-egl -feature-wayland-server -feature-xcomposite-egl -featu=
re-xcomposite-glx'
| Info: creating stash file /home/iepl/work/yocto_build/poky/build-weston/t=
mp/work/aarch64-pdm3-linux/qtwayland/5.9.6+gitAUTOINC+8c5999644c-r0/build/.=
qmake.stash
| Info: creating cache file /home/iepl/work/yocto_build/poky/build-weston/t=
mp/work/aarch64-pdm3-linux/qtwayland/5.9.6+gitAUTOINC+8c5999644c-r0/build/.=
qmake.cache
|=20
| Running configuration tests...
| Checking for Wayland client library... yes
| Checking for Wayland cursor library... yes
| Checking for wayland-scanner... yes
| Checking for Wayland EGL library... yes
| Checking for XComposite... yes
| Checking for wayland-server... yes
| Done running configuration tests.
|=20
| Configure summary:
|=20
| Qt Wayland Drivers:
|   EGL .................................... yes
|   Raspberry Pi ........................... no
|   XComposite EGL ......................... yes
|   XComposite GLX ......................... no
|   DRM EGL ................................ no
|   libhybris EGL .......................... no
| Qt Wayland Client ........................ yes
| Qt Wayland Compositor .................... yes
|=20
| ERROR: Feature 'xcomposite-glx' was enabled, but the pre-condition 'featu=
res.wayland-client && features.opengl && !features.opengles2 && features.xl=
ib && libs.xcomposite && libs.glx' failed.
|=20
| ERROR: Feature 'xcomposite-glx' was enabled, but the pre-condition 'featu=
res.wayland-server && features.opengl && !features.opengles2 && libs.xcompo=
site && libs.glx' failed.
|=20
| Check config.log for details.
| ERROR: Error calling /home/iepl/work/yocto_build/poky/build-weston/tmp/wo=
rk/aarch64-pdm3-linux/qtwayland/5.9.6+gitAUTOINC+8c5999644c-r0/recipe-sysro=
ot-native/usr/bin/qt5/qmake -makefile -o Makefile       /home/iepl/work/yoc=
to_build/poky/build-weston/tmp/work/aarch64-pdm3-linux/qtwayland/5.9.6+gitA=
UTOINC+8c5999644c-r0/git/qtwayland.pro  --   -no-feature-drm-egl-server -no=
-feature-libhybris-egl-server -no-feature-wayland-brcm -feature-wayland-cli=
ent -feature-wayland-egl -feature-wayland-server -feature-xcomposite-egl -f=
eature-xcomposite-glx
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_configure (log file is located at /home/iepl/w=
ork/yocto_build/poky/build-weston/tmp/work/aarch64-pdm3-linux/qtwayland/5.9=
.6+gitAUTOINC+8c5999644c-r0/temp/log.do_configure.3215)
ERROR: Task (/home/iepl/work/yocto_build/poky/../meta-qt5/recipes-qt/qt5/qt=
wayland_git.bb:do_configure) failed with exit code '1'
NOTE: Tasks Summary: Attempted 6246 tasks of which 6228 didn't need to be r=
erun and 1 failed.
NOTE: No commit since BUILDHISTORY_COMMIT !=3D '1'

Summary: 1 task failed:
  /home/iepl/work/yocto_build/poky/../meta-qt5/recipes-qt/qt5/qtwayland_git=
.bb:do_configure
Summary: There were 5 WARNING messages shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

The log file is shown below :

DEBUG: Executing shell function qmake5_base_preconfigure
Previously configured separate build directory detected, cleaning /home/iep=
l/work/yocto_build/poky/build-weston/tmp/work/aarch64-pdm3-linux/qtwayland/=
5.9.6+gitAUTOINC+8c5999644c-r0/build
DEBUG: Shell function qmake5_base_preconfigure finished
DEBUG: Executing shell function do_configure
NOTE: qmake prevar substitution: '  '
NOTE: qmake configure substitution: '  -no-feature-drm-egl-server -no-featu=
re-libhybris-egl-server -no-feature-wayland-brcm -feature-wayland-client -f=
eature-wayland-egl -feature-wayland-server -feature-xcomposite-egl -feature=
-xcomp$
Info: creating stash file /home/iepl/work/yocto_build/poky/build-weston/tmp=
/work/aarch64-pdm3-linux/qtwayland/5.9.6+gitAUTOINC+8c5999644c-r0/build/.qm=
ake.stash
Info: creating cache file /home/iepl/work/yocto_build/poky/build-weston/tmp=
/work/aarch64-pdm3-linux/qtwayland/5.9.6+gitAUTOINC+8c5999644c-r0/build/.qm=
ake.cache

Running configuration tests...
Checking for Wayland client library... yes
Checking for Wayland cursor library... yes
Checking for wayland-scanner... yes
Checking for Wayland EGL library... yes
Checking for XComposite... yes
Checking for wayland-server... yes
Done running configuration tests.

Configure summary:

Qt Wayland Drivers:
  EGL .................................... yes
  Raspberry Pi ........................... no
  XComposite EGL ......................... yes
  XComposite GLX ......................... no
  DRM EGL ................................ no
  libhybris EGL .......................... no
Qt Wayland Client ........................ yes
Qt Wayland Compositor .................... yes

ERROR: Feature 'xcomposite-glx' was enabled, but the pre-condition 'feature=
s.wayland-client && features.opengl && !features.opengles2 && features.xlib=
 && libs.xcomposite && libs.glx' failed.

ERROR: Feature 'xcomposite-glx' was enabled, but the pre-condition 'feature=
s.wayland-server && features.opengl && !features.opengles2 && libs.xcomposi=
te && libs.glx' failed.

Check config.log for details.
ERROR: Error calling /home/iepl/work/yocto_build/poky/build-weston/tmp/work=
/aarch64-pdm3-linux/qtwayland/5.9.6+gitAUTOINC+8c5999644c-r0/recipe-sysroot=
-native/usr/bin/qt5/qmake -makefile -o Makefile       /home/iepl/work/yocto=
_build$
WARNING: exit code 1 from a shell command.
ERROR: Function failed: do_configure (log file is located at /home/iepl/wor=
k/yocto_build/poky/build-weston/tmp/work/aarch64-pdm3-linux/qtwayland/5.9.6=
+gitAUTOINC+8c5999644c-r0/temp/log.do_configure.3215)

I am guessing my layer has qtbase_git.bb append file which includes :

PACKAGECONFIG_remove =3D " gl"
PACKAGECONFIG_append_pn-qtbase =3D " accessibility"
PACKAGECONFIG_append =3D " fontconfig freetype linuxfb"
PACKAGECONFIG_append =3D " ${@bb.utils.contains('DISTRO_FEATURES', 'opengl'=
, 'gles2', '', d)} "

Now I found in some other yocto mailing list that if qtbase_git .bbappend h=
as DISTRO_FEATURES  ''gles2" both xcomposite-glx and xcomposite-egl  cannot=
 be enabled in qtwayland.bb file
 So which xcomposite should be removed.
I tried removing xcomposite-glx  and was able to create sdk but while testi=
ng my qt application after compiling that sdk it gave some errors as follow=
s:

This application failed to start because it could not find or load the Qt p=
latform plugin "wayland" in ".
available platform plugins are: linuxfd, minimal, offscreen, vnc, scb.
Reinstalling the application may fix this problem.


So what configuration should I use to build a successful Weston wayland ima=
ge for QT.
Or what changes do I need to do in sdk to successfully launch wayland

-----Original Message-----
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> On Be=
half Of yocto-request@yoctoproject.org
Sent: 29 August 2018 02:56
To: yocto@yoctoproject.org
Subject: yocto Digest, Vol 95, Issue 86

Send yocto mailing list submissions to
	yocto@yoctoproject.org

To subscribe or unsubscribe via the World Wide Web, visit
	https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject.=
org_listinfo_yocto&d=3DDwICAg&c=3DriR7jviByh3sGm7GIiSlHkFN0_aSATB6A8x0nHa2E=
M0&r=3DB4t2KSJ3IM1b9sK9gvCmTFe5JX-rxgD15fYh5lG11MM&m=3Dmns8g05cUibniMeGPSlq=
nU99Sp7kr-xPEowhK_JQg84&s=3DbTHU9SeOPtfI3FO8vPqbkrvR4ArVcNC4VuZy6ry5gfc&e=
=3D
or, via email, send a message with subject or body 'help' to
	yocto-request@yoctoproject.org

You can reach the person managing the list at
	yocto-owner@yoctoproject.org

When replying, please edit your Subject line so it is more specific than "R=
e: Contents of yocto digest..."


