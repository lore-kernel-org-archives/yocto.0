Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-vb0-f50.google.com (mail-vb0-f50.google.com
	[209.85.212.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 243CFE006F9
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 23:46:48 -0700 (PDT)
Received: by mail-vb0-f50.google.com with SMTP id w16so253461vbb.37
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 23:46:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:sender:date:x-google-sender-auth:message-id
	:subject:from:to:content-type;
	bh=qtNA8B5ULRicf7WZcXuvyP4o1VO+n4ahZiIAvU4akKg=;
	b=PAdTKfALrmXzSAFWRHMuWnl9JwPTlSPbgk2KortSd1CXyOea9OTnYbZnrMOdDkKMZ9
	0W2hGQGpr4tsrdImaQYnYrYQ3F088fc1Aqayci7JwuoDxIzPYirSCkilZ8yY3uBgxxpN
	YRLfHQMLZ2YyvTsYuB1lYflHmJ+xOwmbKbDOgXoDBxeIXUUng6fwvK7tYyaaV87X710f
	ElFTR82WDR6Azs3/w8RqEV6vjX0KsQ3y/WHmh0/QltJtvxxIEkGaspvkVtXhyvBCMjtC
	pXMgWVqIGb/s/MonLw3osDpsWgpXmmytyBYMGQZEkVzT19ZgGxpc7qwg0ctHMpMIWnAR
	jByw==
MIME-Version: 1.0
X-Received: by 10.220.77.138 with SMTP id g10mr21542543vck.69.1366699607258;
	Mon, 22 Apr 2013 23:46:47 -0700 (PDT)
Sender: satyaswaroop.damarla@gmail.com
Received: by 10.52.88.177 with HTTP; Mon, 22 Apr 2013 23:46:47 -0700 (PDT)
Date: Tue, 23 Apr 2013 08:46:47 +0200
X-Google-Sender-Auth: ItttogNxOkV6Mf-WvLbW202A1wA
Message-ID: <CAFMfyzLjPQ4rn6DkeTjAQTkfg2dipZ00WatkHgc-JBS-axgP2w@mail.gmail.com>
From: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: lm_sensors
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
X-List-Received-Date: Tue, 23 Apr 2013 06:46:48 -0000
Content-Type: multipart/alternative; boundary=047d7b3a8d049b2e9504db018c99

--047d7b3a8d049b2e9504db018c99
Content-Type: text/plain; charset=ISO-8859-1

Hey Guys,

I have some issues installing lm_sensors... I copied the package from from
meta-oe/recipes-support into meta/recipes-support...

The normal "bitbake lmsensors" worked perfectly without any errors but then
when I wanted to add it to the rootfs then I get the following error.... I
tried to analyse the error but with not much success

damarla@linuxbuildsrv:~/yocto/poky/buildSkidataHarmony$ bitbake
core-image-skidata
Loading cache: 100%
|###########################################################################################################################################################################|
ETA:  00:00:00
Loaded 1138 entries from dependency cache.
Parsing recipes: 100%
|#########################################################################################################################################################################|
Time: 00:00:00
Parsing of 829 .bb files complete (824 cached, 5 parsed). 1140 targets, 36
skipped, 0 masked, 0 errors.

Build Configuration:
BB_VERSION        = "1.17.1"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-12.04"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "skidata-harmony"
DISTRO            = "poky"
DISTRO_VERSION    = "1.3+snapshot-20130423"
TUNE_FEATURES     = "armv7a vfp thumb vfpv3d16 cortexa9"
TARGET_FPU        = "vfp-vfpv3d16"
meta
meta-yocto
meta-yocto-bsp    = "master:a317cc911abe33d0f513d48e7bc4afd319c7e040"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Function failed: do_rootfs (see
/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmony-poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_rootfs.24440
for further information)
ERROR: Logfile of failure stored in:
/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmony-poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_rootfs.24440
Log data follows:
| DEBUG: Executing shell function do_rootfs
| dpkg-scanpackages.real: info: Wrote 46 entries to output Packages file.
| dpkg-scanpackages.real: info: Wrote 5679 entries to output Packages file.
| dpkg-scanpackages.real: info: Wrote 159 entries to output Packages file.
| dpkg-scanpackages.real: info: Wrote 46 entries to output Packages file.
| Ign file: ./ InRelease
| Ign file: ./ InRelease
| Ign file: ./ InRelease
| Ign file: ./ Release.gpg
| Ign file: ./ Release.gpg
| Ign file: ./ Release.gpg
| Get:1 file: ./ Release [23 B]
| Get:2 file: ./ Release [29 B]
| Get:3 file: ./ Release [11 B]
| Ign file: ./ Translation-en
| Ign file: ./ Translation-en
| Ign file: ./ Translation-en
| Reading package lists...
| Reading package lists...
| Building dependency tree...
| Reading state information...
| The following extra packages will be installed:
|   eglibc-localedata-iso14651-t1 eglibc-localedata-iso14651-t1-common
|   eglibc-localedata-translit-circle eglibc-localedata-translit-cjk-compat
|   eglibc-localedata-translit-compat eglibc-localedata-translit-font
|   eglibc-localedata-translit-fraction eglibc-localedata-translit-narrow
|   eglibc-localedata-translit-neutral eglibc-localedata-translit-small
|   eglibc-localedata-translit-wide
| The following NEW packages will be installed:
|   eglibc-localedata-i18n eglibc-localedata-iso14651-t1
|   eglibc-localedata-iso14651-t1-common eglibc-localedata-translit-circle
|   eglibc-localedata-translit-cjk-compat eglibc-localedata-translit-compat
|   eglibc-localedata-translit-font eglibc-localedata-translit-fraction
|   eglibc-localedata-translit-narrow eglibc-localedata-translit-neutral
|   eglibc-localedata-translit-small eglibc-localedata-translit-wide
| 0 upgraded, 12 newly installed, 0 to remove and 0 not upgraded.
| Need to get 0 B/131 kB of archives.
| After this operation, 0 B of additional disk space will be used.
| WARNING: The following packages cannot be authenticated!
|   eglibc-localedata-translit-circle eglibc-localedata-translit-cjk-compat
|   eglibc-localedata-translit-small eglibc-localedata-translit-compat
|   eglibc-localedata-translit-narrow eglibc-localedata-translit-wide
|   eglibc-localedata-translit-font eglibc-localedata-translit-fraction
|   eglibc-localedata-translit-neutral eglibc-localedata-iso14651-t1-common
|   eglibc-localedata-iso14651-t1 eglibc-localedata-i18n
| Authentication warning overridden.
| dpkg: warning: overriding problem because --force enabled:
|  package architecture (armel) does not match system (amd64)
| Selecting previously unselected package eglibc-localedata-translit-circle.
| (Reading database ... 0 files and directories currently installed.)
| Unpacking eglibc-localedata-translit-circle (from
.../eglibc-localedata-translit-circle_2.17-r0_armel.deb) ...
| dpkg: warning: overriding problem because --force enabled:
|  package architecture (armel) does not match system (amd64)
| Selecting previously unselected package
eglibc-localedata-translit-cjk-compat.
| Unpacking eglibc-localedata-translit-cjk-compat (from
.../eglibc-localedata-translit-cjk-compat_2.17-r0_armel.deb) ...
| dpkg: warning: overriding problem because --force enabled:
|  package architecture (armel) does not match system (amd64)
| Selecting previously unselected package eglibc-localedata-translit-small.
| Unpacking eglibc-localedata-translit-small (from
.../eglibc-localedata-translit-small_2.17-r0_armel.deb) ...
| dpkg: warning: overriding problem because --force enabled:
|  package architecture (armel) does not match system (amd64)
| Selecting previously unselected package eglibc-localedata-translit-compat.
| Unpacking eglibc-localedata-translit-compat (from
.../eglibc-localedata-translit-compat_2.17-r0_armel.deb) ...
| dpkg: warning: overriding problem because --force enabled:
|  package architecture (armel) does not match system (amd64)
| Selecting previously unselected package eglibc-localedata-translit-narrow.
| Unpacking eglibc-localedata-translit-narrow (from
.../eglibc-localedata-translit-narrow_2.17-r0_armel.deb) ...
| dpkg: warning: overriding problem because --force enabled:
|  package architecture (armel) does not match system (amd64)
| Selecting previously unselected package eglibc-localedata-translit-wide.
| Unpacking eglibc-localedata-translit-wide (from
.../eglibc-localedata-translit-wide_2.17-r0_armel.deb) ...
| dpkg: warning: overriding problem because --force enabled:
|  package architecture (armel) does not match system (amd64)
| Selecting previously unselected package eglibc-localedata-translit-font.
| Unpacking eglibc-localedata-translit-font (from
.../eglibc-localedata-translit-font_2.17-r0_armel.deb) ...
| dpkg: warning: overriding problem because --force enabled:
|  package architecture (armel) does not match system (amd64)
| Selecting previously unselected package
eglibc-localedata-translit-fraction.
| Unpacking eglibc-localedata-translit-fraction (from
.../eglibc-localedata-translit-fraction_2.17-r0_armel.deb) ...
| dpkg: warning: overriding problem because --force enabled:
|  package architecture (armel) does not match system (amd64)
| Selecting previously unselected package
eglibc-localedata-translit-neutral.
| Unpacking eglibc-localedata-translit-neutral (from
.../eglibc-localedata-translit-neutral_2.17-r0_armel.deb) ...
| dpkg: warning: overriding problem because --force enabled:
|  package architecture (armel) does not match system (amd64)
| Selecting previously unselected package
eglibc-localedata-iso14651-t1-common.
| Unpacking eglibc-localedata-iso14651-t1-common (from
.../eglibc-localedata-iso14651-t1-common_2.17-r0_armel.deb) ...
| dpkg: warning: overriding problem because --force enabled:
|  package architecture (armel) does not match system (amd64)
| Selecting previously unselected package eglibc-localedata-iso14651-t1.
| Unpacking eglibc-localedata-iso14651-t1 (from
.../eglibc-localedata-iso14651-t1_2.17-r0_armel.deb) ...
| dpkg: warning: overriding problem because --force enabled:
|  package architecture (armel) does not match system (amd64)
| Selecting previously unselected package eglibc-localedata-i18n.
| Unpacking eglibc-localedata-i18n (from
.../eglibc-localedata-i18n_2.17-r0_armel.deb) ...
| Reading package lists...
| Building dependency tree...
| Reading state information...
| The following extra packages will be installed:
|   eglibc-binary-localedata-en-us
| The following NEW packages will be installed:
|   eglibc-binary-localedata-en-us locale-base-en-us
| 0 upgraded, 2 newly installed, 0 to remove and 0 not upgraded.
| 12 not fully installed or removed.
| Need to get 0 B/327 kB of archives.
| After this operation, 0 B of additional disk space will be used.
| WARNING: The following packages cannot be authenticated!
|   eglibc-binary-localedata-en-us locale-base-en-us
| Authentication warning overridden.
| dpkg: warning: overriding problem because --force enabled:
|  package architecture (armel) does not match system (amd64)
| Selecting previously unselected package eglibc-binary-localedata-en-us.
| (Reading database ... 17 files and directories currently installed.)
| Unpacking eglibc-binary-localedata-en-us (from
.../eglibc-binary-localedata-en-us_2.17-r0_armel.deb) ...
| dpkg: warning: overriding problem because --force enabled:
|  package architecture (armel) does not match system (amd64)
| Selecting previously unselected package locale-base-en-us.
| Unpacking locale-base-en-us (from
.../locale-base-en-us_2.17-r0_armel.deb) ...
| Reading package lists...
| Building dependency tree...
| Reading state information...
| The following extra packages will be installed:
|   eglibc-binary-localedata-en-gb
| The following NEW packages will be installed:
|   eglibc-binary-localedata-en-gb locale-base-en-gb
| 0 upgraded, 2 newly installed, 0 to remove and 0 not upgraded.
| 14 not fully installed or removed.
| Need to get 0 B/327 kB of archives.
| After this operation, 0 B of additional disk space will be used.
| WARNING: The following packages cannot be authenticated!
|   eglibc-binary-localedata-en-gb locale-base-en-gb
| Authentication warning overridden.
| dpkg: warning: overriding problem because --force enabled:
|  package architecture (armel) does not match system (amd64)
| Selecting previously unselected package eglibc-binary-localedata-en-gb.
| (Reading database ... 33 files and directories currently installed.)
| Unpacking eglibc-binary-localedata-en-gb (from
.../eglibc-binary-localedata-en-gb_2.17-r0_armel.deb) ...
| dpkg: warning: overriding problem because --force enabled:
|  package architecture (armel) does not match system (amd64)
| Selecting previously unselected package locale-base-en-gb.
| Unpacking locale-base-en-gb (from
.../locale-base-en-gb_2.17-r0_armel.deb) ...
| Reading package lists...
| Building dependency tree...
| Reading state information...
| Package lmsensors is not available, but is referred to by another package.
| This may mean that the package is missing, has been obsoleted, or
| is only available from another source
|
| E: Package 'lmsensors' has no installation candidate
| ERROR: Function failed: do_rootfs (see
/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmony-poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_rootfs.24440
for further information)
ERROR: Task 7 (/home/damarla/yocto/poky/meta/recipes-graphics/images/
core-image-skidata.bb, do_rootfs) failed with exit code '1'
NOTE: Tasks Summary: Attempted 5548 tasks of which 5545 didn't need to be
rerun and 1 failed.
No currently running tasks (5547 of 5549)

Summary: 1 task failed:
  /home/damarla/yocto/poky/meta/recipes-graphics/images/
core-image-skidata.bb, do_rootfs
Summary: There was 1 ERROR message shown, returning a non-zero exit code.


Cheers,
Satya

--047d7b3a8d049b2e9504db018c99
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey Guys,<div><br></div><div style>I have some issues inst=
alling lm_sensors... I copied the package from from meta-oe/recipes-support=
 into meta/recipes-support...=A0</div><div style><br></div><div style>The n=
ormal &quot;bitbake lmsensors&quot; worked perfectly without any errors but=
 then when I wanted to add it to the rootfs then I get the following error.=
... I tried to analyse the error but with not much success</div>
<div style><br></div><div style><div>damarla@linuxbuildsrv:~/yocto/poky/bui=
ldSkidataHarmony$ bitbake core-image-skidata</div><div>Loading cache: 100% =
|##########################################################################=
###########################################################################=
######################| ETA: =A000:00:00</div>
<div>Loaded 1138 entries from dependency cache.</div><div>Parsing recipes: =
100% |#####################################################################=
###########################################################################=
#########################| Time: 00:00:00</div>
<div>Parsing of 829 .bb files complete (824 cached, 5 parsed). 1140 targets=
, 36 skipped, 0 masked, 0 errors.</div><div><br></div><div>Build Configurat=
ion:</div><div>BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.17.1&quot;</div><div>B=
UILD_SYS =A0 =A0 =A0 =A0 =3D &quot;x86_64-linux&quot;</div>
<div>NATIVELSBSTRING =A0 =3D &quot;Ubuntu-12.04&quot;</div><div>TARGET_SYS =
=A0 =A0 =A0 =A0=3D &quot;arm-poky-linux-gnueabi&quot;</div><div>MACHINE =A0=
 =A0 =A0 =A0 =A0 =3D &quot;skidata-harmony&quot;</div><div>DISTRO =A0 =A0 =
=A0 =A0 =A0 =A0=3D &quot;poky&quot;</div>
<div>DISTRO_VERSION =A0 =A0=3D &quot;1.3+snapshot-20130423&quot;</div><div>=
TUNE_FEATURES =A0 =A0 =3D &quot;armv7a vfp thumb vfpv3d16 cortexa9&quot;</d=
iv><div>TARGET_FPU =A0 =A0 =A0 =A0=3D &quot;vfp-vfpv3d16&quot;</div><div>me=
ta =A0 =A0 =A0 =A0 =A0 =A0 =A0</div>
<div>meta-yocto =A0 =A0 =A0 =A0</div><div>meta-yocto-bsp =A0 =A0=3D &quot;m=
aster:a317cc911abe33d0f513d48e7bc4afd319c7e040&quot;</div><div><br></div><d=
iv>NOTE: Resolving any missing task queue dependencies</div><div>NOTE: Prep=
aring runqueue</div>
<div>NOTE: Executing SetScene Tasks</div><div>NOTE: Executing RunQueue Task=
s</div><div>ERROR: Function failed: do_rootfs (see /home/damarla/yocto/poky=
/buildSkidataHarmony/tmp/work/skidata_harmony-poky-linux-gnueabi/core-image=
-skidata/1.0-r0/temp/log.do_rootfs.24440 for further information)</div>
<div>ERROR: Logfile of failure stored in: /home/damarla/yocto/poky/buildSki=
dataHarmony/tmp/work/skidata_harmony-poky-linux-gnueabi/core-image-skidata/=
1.0-r0/temp/log.do_rootfs.24440</div><div>Log data follows:</div><div>| DEB=
UG: Executing shell function do_rootfs</div>
<div>| dpkg-scanpackages.real: info: Wrote 46 entries to output Packages fi=
le.</div><div>| dpkg-scanpackages.real: info: Wrote 5679 entries to output =
Packages file.</div><div>| dpkg-scanpackages.real: info: Wrote 159 entries =
to output Packages file.</div>
<div>| dpkg-scanpackages.real: info: Wrote 46 entries to output Packages fi=
le.</div><div>| Ign file: ./ InRelease</div><div>| Ign file: ./ InRelease</=
div><div>| Ign file: ./ InRelease</div><div>| Ign file: ./ Release.gpg</div=
>
<div>| Ign file: ./ Release.gpg</div><div>| Ign file: ./ Release.gpg</div><=
div>| Get:1 file: ./ Release [23 B]</div><div>| Get:2 file: ./ Release [29 =
B]</div><div>| Get:3 file: ./ Release [11 B]</div><div>| Ign file: ./ Trans=
lation-en</div>
<div>| Ign file: ./ Translation-en</div><div>| Ign file: ./ Translation-en<=
/div><div>| Reading package lists...</div><div>| Reading package lists...</=
div><div>| Building dependency tree...</div><div>| Reading state informatio=
n...</div>
<div>| The following extra packages will be installed:</div><div>| =A0 egli=
bc-localedata-iso14651-t1 eglibc-localedata-iso14651-t1-common</div><div>| =
=A0 eglibc-localedata-translit-circle eglibc-localedata-translit-cjk-compat=
</div>
<div>| =A0 eglibc-localedata-translit-compat eglibc-localedata-translit-fon=
t</div><div>| =A0 eglibc-localedata-translit-fraction eglibc-localedata-tra=
nslit-narrow</div><div>| =A0 eglibc-localedata-translit-neutral eglibc-loca=
ledata-translit-small</div>
<div>| =A0 eglibc-localedata-translit-wide</div><div>| The following NEW pa=
ckages will be installed:</div><div>| =A0 eglibc-localedata-i18n eglibc-loc=
aledata-iso14651-t1</div><div>| =A0 eglibc-localedata-iso14651-t1-common eg=
libc-localedata-translit-circle</div>
<div>| =A0 eglibc-localedata-translit-cjk-compat eglibc-localedata-translit=
-compat</div><div>| =A0 eglibc-localedata-translit-font eglibc-localedata-t=
ranslit-fraction</div><div>| =A0 eglibc-localedata-translit-narrow eglibc-l=
ocaledata-translit-neutral</div>
<div>| =A0 eglibc-localedata-translit-small eglibc-localedata-translit-wide=
</div><div>| 0 upgraded, 12 newly installed, 0 to remove and 0 not upgraded=
.</div><div>| Need to get 0 B/131 kB of archives.</div><div>| After this op=
eration, 0 B of additional disk space will be used.</div>
<div>| WARNING: The following packages cannot be authenticated!</div><div>|=
 =A0 eglibc-localedata-translit-circle eglibc-localedata-translit-cjk-compa=
t</div><div>| =A0 eglibc-localedata-translit-small eglibc-localedata-transl=
it-compat</div>
<div>| =A0 eglibc-localedata-translit-narrow eglibc-localedata-translit-wid=
e</div><div>| =A0 eglibc-localedata-translit-font eglibc-localedata-transli=
t-fraction</div><div>| =A0 eglibc-localedata-translit-neutral eglibc-locale=
data-iso14651-t1-common</div>
<div>| =A0 eglibc-localedata-iso14651-t1 eglibc-localedata-i18n</div><div>|=
 Authentication warning overridden.</div><div>| dpkg: warning: overriding p=
roblem because --force enabled:</div><div>| =A0package architecture (armel)=
 does not match system (amd64)</div>
<div>| Selecting previously unselected package eglibc-localedata-translit-c=
ircle.</div><div>| (Reading database ... 0 files and directories currently =
installed.)</div><div>| Unpacking eglibc-localedata-translit-circle (from .=
../eglibc-localedata-translit-circle_2.17-r0_armel.deb) ...</div>
<div>| dpkg: warning: overriding problem because --force enabled:</div><div=
>| =A0package architecture (armel) does not match system (amd64)</div><div>=
| Selecting previously unselected package eglibc-localedata-translit-cjk-co=
mpat.</div>
<div>| Unpacking eglibc-localedata-translit-cjk-compat (from .../eglibc-loc=
aledata-translit-cjk-compat_2.17-r0_armel.deb) ...</div><div>| dpkg: warnin=
g: overriding problem because --force enabled:</div><div>| =A0package archi=
tecture (armel) does not match system (amd64)</div>
<div>| Selecting previously unselected package eglibc-localedata-translit-s=
mall.</div><div>| Unpacking eglibc-localedata-translit-small (from .../egli=
bc-localedata-translit-small_2.17-r0_armel.deb) ...</div><div>| dpkg: warni=
ng: overriding problem because --force enabled:</div>
<div>| =A0package architecture (armel) does not match system (amd64)</div><=
div>| Selecting previously unselected package eglibc-localedata-translit-co=
mpat.</div><div>| Unpacking eglibc-localedata-translit-compat (from .../egl=
ibc-localedata-translit-compat_2.17-r0_armel.deb) ...</div>
<div>| dpkg: warning: overriding problem because --force enabled:</div><div=
>| =A0package architecture (armel) does not match system (amd64)</div><div>=
| Selecting previously unselected package eglibc-localedata-translit-narrow=
.</div>
<div>| Unpacking eglibc-localedata-translit-narrow (from .../eglibc-localed=
ata-translit-narrow_2.17-r0_armel.deb) ...</div><div>| dpkg: warning: overr=
iding problem because --force enabled:</div><div>| =A0package architecture =
(armel) does not match system (amd64)</div>
<div>| Selecting previously unselected package eglibc-localedata-translit-w=
ide.</div><div>| Unpacking eglibc-localedata-translit-wide (from .../eglibc=
-localedata-translit-wide_2.17-r0_armel.deb) ...</div><div>| dpkg: warning:=
 overriding problem because --force enabled:</div>
<div>| =A0package architecture (armel) does not match system (amd64)</div><=
div>| Selecting previously unselected package eglibc-localedata-translit-fo=
nt.</div><div>| Unpacking eglibc-localedata-translit-font (from .../eglibc-=
localedata-translit-font_2.17-r0_armel.deb) ...</div>
<div>| dpkg: warning: overriding problem because --force enabled:</div><div=
>| =A0package architecture (armel) does not match system (amd64)</div><div>=
| Selecting previously unselected package eglibc-localedata-translit-fracti=
on.</div>
<div>| Unpacking eglibc-localedata-translit-fraction (from .../eglibc-local=
edata-translit-fraction_2.17-r0_armel.deb) ...</div><div>| dpkg: warning: o=
verriding problem because --force enabled:</div><div>| =A0package architect=
ure (armel) does not match system (amd64)</div>
<div>| Selecting previously unselected package eglibc-localedata-translit-n=
eutral.</div><div>| Unpacking eglibc-localedata-translit-neutral (from .../=
eglibc-localedata-translit-neutral_2.17-r0_armel.deb) ...</div><div>| dpkg:=
 warning: overriding problem because --force enabled:</div>
<div>| =A0package architecture (armel) does not match system (amd64)</div><=
div>| Selecting previously unselected package eglibc-localedata-iso14651-t1=
-common.</div><div>| Unpacking eglibc-localedata-iso14651-t1-common (from .=
../eglibc-localedata-iso14651-t1-common_2.17-r0_armel.deb) ...</div>
<div>| dpkg: warning: overriding problem because --force enabled:</div><div=
>| =A0package architecture (armel) does not match system (amd64)</div><div>=
| Selecting previously unselected package eglibc-localedata-iso14651-t1.</d=
iv>
<div>| Unpacking eglibc-localedata-iso14651-t1 (from .../eglibc-localedata-=
iso14651-t1_2.17-r0_armel.deb) ...</div><div>| dpkg: warning: overriding pr=
oblem because --force enabled:</div><div>| =A0package architecture (armel) =
does not match system (amd64)</div>
<div>| Selecting previously unselected package eglibc-localedata-i18n.</div=
><div>| Unpacking eglibc-localedata-i18n (from .../eglibc-localedata-i18n_2=
.17-r0_armel.deb) ...</div><div>| Reading package lists...</div><div>| Buil=
ding dependency tree...</div>
<div>| Reading state information...</div><div>| The following extra package=
s will be installed:</div><div>| =A0 eglibc-binary-localedata-en-us</div><d=
iv>| The following NEW packages will be installed:</div><div>| =A0 eglibc-b=
inary-localedata-en-us locale-base-en-us</div>
<div>| 0 upgraded, 2 newly installed, 0 to remove and 0 not upgraded.</div>=
<div>| 12 not fully installed or removed.</div><div>| Need to get 0 B/327 k=
B of archives.</div><div>| After this operation, 0 B of additional disk spa=
ce will be used.</div>
<div>| WARNING: The following packages cannot be authenticated!</div><div>|=
 =A0 eglibc-binary-localedata-en-us locale-base-en-us</div><div>| Authentic=
ation warning overridden.</div><div>| dpkg: warning: overriding problem bec=
ause --force enabled:</div>
<div>| =A0package architecture (armel) does not match system (amd64)</div><=
div>| Selecting previously unselected package eglibc-binary-localedata-en-u=
s.</div><div>| (Reading database ... 17 files and directories currently ins=
talled.)</div>
<div>| Unpacking eglibc-binary-localedata-en-us (from .../eglibc-binary-loc=
aledata-en-us_2.17-r0_armel.deb) ...</div><div>| dpkg: warning: overriding =
problem because --force enabled:</div><div>| =A0package architecture (armel=
) does not match system (amd64)</div>
<div>| Selecting previously unselected package locale-base-en-us.</div><div=
>| Unpacking locale-base-en-us (from .../locale-base-en-us_2.17-r0_armel.de=
b) ...</div><div>| Reading package lists...</div><div>| Building dependency=
 tree...</div>
<div>| Reading state information...</div><div>| The following extra package=
s will be installed:</div><div>| =A0 eglibc-binary-localedata-en-gb</div><d=
iv>| The following NEW packages will be installed:</div><div>| =A0 eglibc-b=
inary-localedata-en-gb locale-base-en-gb</div>
<div>| 0 upgraded, 2 newly installed, 0 to remove and 0 not upgraded.</div>=
<div>| 14 not fully installed or removed.</div><div>| Need to get 0 B/327 k=
B of archives.</div><div>| After this operation, 0 B of additional disk spa=
ce will be used.</div>
<div>| WARNING: The following packages cannot be authenticated!</div><div>|=
 =A0 eglibc-binary-localedata-en-gb locale-base-en-gb</div><div>| Authentic=
ation warning overridden.</div><div>| dpkg: warning: overriding problem bec=
ause --force enabled:</div>
<div>| =A0package architecture (armel) does not match system (amd64)</div><=
div>| Selecting previously unselected package eglibc-binary-localedata-en-g=
b.</div><div>| (Reading database ... 33 files and directories currently ins=
talled.)</div>
<div>| Unpacking eglibc-binary-localedata-en-gb (from .../eglibc-binary-loc=
aledata-en-gb_2.17-r0_armel.deb) ...</div><div>| dpkg: warning: overriding =
problem because --force enabled:</div><div>| =A0package architecture (armel=
) does not match system (amd64)</div>
<div>| Selecting previously unselected package locale-base-en-gb.</div><div=
>| Unpacking locale-base-en-gb (from .../locale-base-en-gb_2.17-r0_armel.de=
b) ...</div><div>| Reading package lists...</div><div>| Building dependency=
 tree...</div>
<div>| Reading state information...</div><div>| Package lmsensors is not av=
ailable, but is referred to by another package.</div><div>| This may mean t=
hat the package is missing, has been obsoleted, or</div><div>| is only avai=
lable from another source</div>
<div>|=A0</div><div>| E: Package &#39;lmsensors&#39; has no installation ca=
ndidate</div><div>| ERROR: Function failed: do_rootfs (see /home/damarla/yo=
cto/poky/buildSkidataHarmony/tmp/work/skidata_harmony-poky-linux-gnueabi/co=
re-image-skidata/1.0-r0/temp/log.do_rootfs.24440 for further information)</=
div>
<div>ERROR: Task 7 (/home/damarla/yocto/poky/meta/recipes-graphics/images/<=
a href=3D"http://core-image-skidata.bb">core-image-skidata.bb</a>, do_rootf=
s) failed with exit code &#39;1&#39;</div><div>NOTE: Tasks Summary: Attempt=
ed 5548 tasks of which 5545 didn&#39;t need to be rerun and 1 failed.</div>
<div>No currently running tasks (5547 of 5549)</div><div><br></div><div>Sum=
mary: 1 task failed:</div><div>=A0 /home/damarla/yocto/poky/meta/recipes-gr=
aphics/images/<a href=3D"http://core-image-skidata.bb">core-image-skidata.b=
b</a>, do_rootfs</div>
<div>Summary: There was 1 ERROR message shown, returning a non-zero exit co=
de.</div><div><br></div><div><br></div><div style>Cheers,</div><div style>S=
atya</div></div></div>

--047d7b3a8d049b2e9504db018c99--
