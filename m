Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A68E3E01155; Tue, 26 Jun 2018 00:55:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A072DE01068
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2018 00:55:54 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	26 Jun 2018 00:55:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,274,1526367600"; d="scan'208";a="52940433"
Received: from pgsmsx107.gar.corp.intel.com ([10.221.44.105])
	by orsmga006.jf.intel.com with ESMTP; 26 Jun 2018 00:55:31 -0700
Received: from pgsmsx103.gar.corp.intel.com ([169.254.2.131]) by
	PGSMSX107.gar.corp.intel.com ([169.254.7.214]) with mapi id
	14.03.0319.002; Tue, 26 Jun 2018 15:55:30 +0800
From: "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>
To: "Purdie, Richard" <richard.purdie@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: yocto Digest, Vol 93, Issue 45
Thread-Index: AQHUAxT2YhsGxEgNhEG3C1I4sN2Tq6RyP6hw
Date: Tue, 26 Jun 2018 07:55:30 +0000
Message-ID: <AA9B40170ABA1047B45E714CB2B866B7068D9D77@PGSMSX103.gar.corp.intel.com>
References: <mailman.85992.1528885376.15860.yocto@yoctoproject.org>
In-Reply-To: <mailman.85992.1528885376.15860.yocto@yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMTE1ZTk1MjctN2YyNi00OGVkLTgxYmUtMWM1MDVhMmE3YmEzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiendTRGltXC90Q2VrT0pPZkNtcjMzNEJNNGhCcGlaS3NzVlJudnlZUkFcL2dINmE5N004QlVKSDNJOTNWTWpNMWNkIn0=
dlp-product: dlpe-windows
dlp-version: 11.0.200.100
dlp-reaction: no-action
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Subject: Re: yocto Digest, Vol 93, Issue 45
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
X-List-Received-Date: Tue, 26 Jun 2018 07:55:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Richard,

Did you manage to take a look at this patch ?

Regards,
Aaron

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of yocto-request@yoctoproject.org
Sent: Wednesday, June 13, 2018 6:23 PM
To: yocto@yoctoproject.org
Subject: yocto Digest, Vol 93, Issue 45

Send yocto mailing list submissions to
	yocto@yoctoproject.org

To subscribe or unsubscribe via the World Wide Web, visit
	https://lists.yoctoproject.org/listinfo/yocto
or, via email, send a message with subject or body 'help' to
	yocto-request@yoctoproject.org

You can reach the person managing the list at
	yocto-owner@yoctoproject.org

When replying, please edit your Subject line so it is more specific than "R=
e: Contents of yocto digest..."


Today's Topics:

   1. [PATCH] [yocto-autobuilder2] Add support to enable Manual	BSP
      on LAVA (Aaron Chan)
   2. Re: mono-native is trying to install files into a shared
      area... (Alex Lennon)
   3. Re: Image specific configuration files (Iv?n Castell)


----------------------------------------------------------------------

Message: 1
Date: Wed, 13 Jun 2018 15:07:58 +0800
From: Aaron Chan <aaron.chun.yew.chan@intel.com>
To: yocto@yoctoproject.org
Cc: Aaron Chan <aaron.chun.yew.chan@intel.com>
Subject: [yocto] [PATCH] [yocto-autobuilder2] Add support to enable
	Manual	BSP on LAVA
Message-ID:
	<1528873678-17502-1-git-send-email-aaron.chun.yew.chan@intel.com>

Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
---
 config.py     | 9 +++++++++
 schedulers.py | 9 +++++++--
 2 files changed, 16 insertions(+), 2 deletions(-)

diff --git a/config.py b/config.py
index 2568768..d21948f 100644
--- a/config.py
+++ b/config.py
@@ -80,3 +80,12 @@ builder_to_workers =3D {
     "nightly-deb-non-deb": [],
     "default": workers
 }
+
+# Supported LAVA-Linaro on Yocto Project # Enable Automated=20
+Manual(Hardware) BSP Test case(s) enable_hw_test =3D {
+    "enable": False,
+    "lava_user"   : "<Specify a valid user connected to LAVA-server>",
+    "lava_token"  : "<Specify token generated from LAVA profile>",
+    "lava_server" : "<Specify LAVA-server URL <server>:<port>"
+}
diff --git a/schedulers.py b/schedulers.py index 8f3dbc5..2c1b8e1 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -63,9 +63,14 @@ def props_for_builder(builder):
         props.append(util.BooleanParameter(
             name=3D"deploy_artifacts",
             label=3D"Do we want to deploy artifacts? ",
-            default=3DBoolean
+            default=3DFalse
+        ))
+    if builder in ['nightly-x86-64', 'nightly-x86-64-lsb', 'nightly-arm', =
'nightly-arm-lsb', 'nightly-arm64']:
+        props.append(util.BooleanParameter(
+            name=3D"enable_hw_test",
+            label=3D"Enable BSP Test case(s) on Hardware?",
+            default=3Dconfig.enable_hw_test['enable']
         ))
-
     props =3D props + repos_for_builder(builder)
     return props
=20
--
2.7.4



------------------------------

Message: 2
Date: Wed, 13 Jun 2018 10:50:49 +0100
From: Alex Lennon <ajlennon@gmail.com>
To: Craig McQueen <craig.mcqueen@innerrange.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto] mono-native is trying to install files into a
	shared area...
Message-ID: <f1091f7c-f86e-a84d-8a5a-7ed3192a1598@gmail.com>
Content-Type: text/plain; charset=3D"utf-8"; Format=3D"flowed"



On 12/06/2018 05:43, Khem Raj wrote:
>
>
> On Mon, Jun 11, 2018 at 8:36 PM Craig McQueen=20
> <craig.mcqueen@innerrange.com <mailto:craig.mcqueen@innerrange.com>>=20
> wrote:
>
>     I wrote:
>     >
>     > I wrote:
>     > >
>     > > Lately, I'm trying to upgrade to a later version of mono, 5.4.1.6=
.
>     > > When I try to do a build of my Yocto image, bitbake gets to
>     the end of
>     > > building mono- native, and then gets an error:
>     > >
>     > >
>     > > ERROR: mono-native-5.4.1.6-r0 do_populate_sysroot: The recipe
>     mono-
>     > > native is trying to install files into a shared area when
>     those files already
>     > exist.
>     > > Those files and their manifest location are:
>     > > /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-
>     > > linux/usr/lib/mono/lldb/mono.py
>     > >? Matched in b''
>     > > /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-
>     > > linux/usr/lib/mono/4.6.1-api/System.Web.Http.SelfHost.dll
>     > >? Matched in b''
>     > > ...
>     > > /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-
>     > >
>     >
>     linux/usr/lib/mono/xbuild/14.0/bin/MSBuild/Microsoft.Build.CommonType=
s.
>     > > xsd
>     > >? Matched in b''
>     > > /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-
>     > >
>     linux/usr/lib/mono/xbuild/14.0/bin/MSBuild/Microsoft.Build.Core.xsd
>     > >? Matched in b''
>     > > /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-
>     > >
>     >
>     linux/usr/lib/mono/xbuild/14.0/Microsoft.Common.targets/ImportAfter/M=
i
>     > > c
>     > > rosoft.NuGet.ImportAfter.targets
>     > >? Matched in b''
>     > > Please verify which recipe should provide the above files.
>     > > The build has stopped as continuing in this scenario WILL break
>     > > things, if not now, possibly in the future (we've seen builds fai=
l
>     > > several months later). If the system knew how to recover from thi=
s
>     > > automatically it would however there are several different
>     scenarios
>     > > which can result in this and we don't know which one this is.
>     It may
>     > > be you have switched providers of something like
>     virtual/kernel (e.g.
>     > > from linux-yocto to linux-yocto-dev), in that case you need to
>     execute the
>     > clean task for both recipes and it will resolve this error.
>     > > It may be you changed DISTRO_FEATURES from systemd to udev or vic=
e
>     > > versa. Cleaning those recipes should again resolve this error
>     however
>     > > switching DISTRO_FEATURES on an existing build directory is not
>     > > supported, you should really clean out tmp and rebuild
>     (reusing sstate
>     > > should be safe). It could be the overlapping files detected are
>     > > harmless in which case adding them to SSTATE_DUPWHITELIST may
>     be the
>     > > correct solution. It could also be your buil? d is including two
>     > > different conflicting versions of things (e.g. bluez
>     > > 4 and bluez 5 and the correct solution for that would be to
>     resolve
>     > > the conflict. If in doubt, please ask on the mailing list,
>     sharing the
>     > > error and filelist above.
>     > > ERROR: mono-native-5.4.1.6-r0 do_populate_sysroot: If the above
>     > > message is too much, the simpler version is you're advised to
>     wipe out
>     > > tmp and rebuild (reusing sstate is fine). That will likely fix
>     things
>     > > in most (but not all) cases.
>     > > ERROR: mono-native-5.4.1.6-r0 do_populate_sysroot: Function
>     failed:
>     > > sstate_task_postfunc
>     > > ERROR: Logfile of failure stored in:
>     > > /home/craigm/yocto/poky/build/tmp/work/x86_64-linux/mono-
>     > > native/5.4.1.6-r0/temp/log.do_populate_sysroot.108358
>     > > ERROR: Task
>     (/home/craigm/yocto/poky/build/../../meta-mono/recipes-
>     > > mono/mono/mono-native_5.4.1.6.bb:do_populate_sysroot) failed with
>     > exit
>     > > code '1'
>     > > NOTE: Tasks Summary: Attempted 670 tasks of which 662 didn't
>     need to
>     > > be rerun and 1 failed.
>     > >
>     > > Summary: 1 task failed:
>     > > ?/home/craigm/yocto/poky/build/../../meta-mono/recipes-
>     > > mono/mono/mono-native_5.4.1.6.bb:do_populate_sysroot
>     > > Summary: There were 3 ERROR messages shown, returning a
>     non-zero exit
>     > > code.
>     > >
>     > >
>     > > I'm building with Yocto poky morty branch (currently commit
>     > > 0e730770a9), meta-mono master (commit dced6635ca). I'm building o=
n
>     > Ubuntu 16.04.4.
>     > >
>     > > I have tried deleting the tmp directory, deleting all mono and
>     > > mono-native from sstate, cleaning mono and meta-mono, etc, to
>     no avail.
>     > >
>     > > It's puzzling why I'm getting these errors, because it says
>     "Matched
>     > > in b''", so the files are not clashing with another recipe. It
>     seems
>     > > to be somehow trying to install its own files twice, or
>     something like
>     > > that. If I look under
>     tmp/work/x86_64-linux/mono-native/5.4.1.6-r0/,
>     > > then I see the files present in both:
>     > >
>     > > sysroot-destdir/home/craigm/yocto/poky/build/tmp/sysroots/x86_64-
>     > linux
>     > > / and
>     image/home/craigm/yocto/poky/build/tmp/sysroots/x86_64-linux/
>     > >
>     > > Is that part of the problem?
>     >
>     >
>     > I haven't had any success figuring out what is going on. I tried
>     doing a new
>     > clean build, and got the same error.
>     >
>     > Does anyone else have this problem? Is it an incompatibility
>     with Yocto
>     > morty, which I'm using? Any pointers on how to narrow down the
>     cause?
>
>     I tried updating from morty to rocko, and no longer got this
>     error. So it seems it's somehow an issue with meta-mono in
>     conjunction with morty.
>
>
> That?s due to the fact that Rocko onwards OE switched to using recipe=20
> specific sysroots
>
Hey Craig,

There was an separate issue with the morty branch building which=20
hopefully I've resolved with a recent cherry-pick.

I'm not intending atm to update support for more recent releases of Mono=20
on Morty due to the issue you've identified above.

(This is because I think it's more valuable to put the time I have=20
available into supporting the current Mono release on master, T-P etc. -=20
which I'll hopefully be looking at shortly).

I'd be very pleased to receive PRs though if you have the time to=20
address this...

Cheers,

Alex

-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20180613/4e=
fe202c/attachment-0001.html>

------------------------------

Message: 3
Date: Wed, 13 Jun 2018 12:22:52 +0200
From: Iv?n Castell <icastell@nayarsystems.com>
To: Ulf Samuelsson <ulf.samuelsson@external.atlascopco.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] Image specific configuration files
Message-ID:
	<CAALXFYzjfgXYsbSgdwg3uh5a-G6S_=3DX6PPQEKGuBur=3D4TM4-uQ@mail.gmail.com>
Content-Type: text/plain; charset=3D"utf-8"

Very useful information!
This is the first time I understand this bbclass and BBCLASSEXTEND
mechanism (I was unable to understand it after reading documentation again
and again).
I managed implementing a custom but working solution.
Thanks a lot for sharing Mr Ulf! :)


2018-06-01 13:44 GMT+02:00 Ulf Samuelsson <
ulf.samuelsson@external.atlascopco.com>:

> Here is the idea developed at Atlas Copco.
>
> Not my code, but I thought it useful for this problem
>
>
> define three bbclasses.
>
> production.bbclass, rnd.bbclass, release.bbclass containing:
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
>
> # Class for use in BBCLASSEXTEND to make it easier to have a single recip=
e
> that
> # build and generate packages separately for release and normal images.
> #
> # Usage:
> # BBCLASSEXTEND =3D "release"
>
> CLASSOVERRIDE .=3D ":class-release"
>
> python release_virtclass_handler () {
>     # Do nothing if this is inherited, as it's for BBCLASSEXTEND
>     if "release" not in (d.getVar('BBCLASSEXTEND') or ""):
>         bb.error("Don't inherit release, use BBCLASSEXTEND")
>         return
>
>     # Restore BPN
>     bpn =3D d.getVar('BPN')
>     newbpn =3D bpn.replace('-release', '')
>     d.setVar('BPN', newbpn)
>
>     # Use default FILESPATH searching for patches and files
>     filespath =3D d.getVar('FILESPATH', True)
>     newfilespath =3D filespath.replace('-release', '')
>     d.setVar('FILESPATH', newfilespath)
> }
>
> addhandler release_virtclass_handler
> release_virtclass_handler[eventmask] =3D "bb.event.RecipePreFinalise"
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
> In a bbappend you use the classes:
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
>
> SRC_URI_append_class-production =3D " \
>     file://rcS.production \
> "
>
> SRC_URI_append_class-rnd =3D " \
>     file://rcS.rnd \
> "
>
> SRC_URI_append_class-release =3D " \
>     file://rcS.release \
> "
>
> do_install_append_class-production () {
>     install -m 755 ${WORKDIR}/rcS.production ${D}${sysconfdir}/init.d/rcS
> }
>
> do_install_append_class-rnd () {
>     install -m 755 ${WORKDIR}/rcS.rnd ${D}${sysconfdir}/init.d/rcS
> }
>
> do_install_append_class-release () {
>     install -m 755 ${WORKDIR}/rcS.release ${D}${sysconfdir}/init.d/rcS
> }
>
> BBCLASSEXTEND =3D "production rnd release"
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
>
> In your production image you add
>
> IMAGE_INSTALL_append =3D "busybox-production"
>
>
> Do something similar for the other two.
>
> BR
>
> Ulf Samuelsson
> ------------------------------
> *Fr?n:* yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org>
> f?r Damien LEFEVRE <lefevre.da@gmail.com>
> *Skickat:* den 1 juni 2018 13:17:53
> *Till:* Iv?n Castell
> *Kopia:* Yocto discussion list
> *?mne:* Re: [yocto] Image specific configuration files
>
> Thanks a lot everyone, this is very helpful =3D)
>
> On Fri, Jun 1, 2018 at 2:14 PM, Iv?n Castell <icastell@nayarsystems.com>
> wrote:
>
>
>
> 2018-06-01 11:24 GMT+02:00 Alexander Kanavin <alex.kanavin@gmail.com>:
>
> I have to say defining multiple distros and then tweaking recipes
> according to those definitions is not a good practice, as recipes should
> generally only access DISTRO_FEATURES and otherwise be distro-agnostic. T=
he
> above iptables scenario should be handled with different image recipes,
> which pull in (via packages) or create different configurations.
>
>
>
> That has sense. We will refactorize our Yocto repo as suggested. Always
> very helpfull with all your comments Mr Alexander. Thank you very much! :=
)
>
>
>
>
>
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20180613/b7=
862095/attachment.html>

------------------------------

--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


End of yocto Digest, Vol 93, Issue 45
*************************************

