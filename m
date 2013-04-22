Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-vb0-f52.google.com (mail-vb0-f52.google.com
	[209.85.212.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65C8AE014F3
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 04:09:32 -0700 (PDT)
Received: by mail-vb0-f52.google.com with SMTP id w8so5605996vbf.25
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 04:09:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=pYa/SwEntZX5pP1yd/cQQxvDN6H2VcastS6ygYIbvCc=;
	b=p4lxiB7UyxKDWnu0ieVjOKK18sYaSsuqFWsTol/x7eL1Vz+ekCTTZhHCxrjxedjZxD
	QFAxBjWHBmdz2DKE9g/jyYGlRJqEbZd3wgqBfio294SAsGRLFOWhNZeCOLu1CfIW8L3J
	goxS3hGYVWtt/Bbl5d228os5RtKkkik4VGnP7g0MqVutRr0tCIcvqyyRgU7raEZfeD/F
	YAJgVn8levbyTzQ6flP3LCNfNW0NaXCvV7fYY5qNnAGfMSGzkR2F9p4k2iM66ooOr9gk
	HXcrNIqMCZ4QBSyQwT3/sOLGG6ZjvZpbYd9N8AddzHys+HPQ3NtjZFKfStc7UxYvPGNr
	PlWA==
MIME-Version: 1.0
X-Received: by 10.52.103.50 with SMTP id ft18mr7898995vdb.108.1366628971321;
	Mon, 22 Apr 2013 04:09:31 -0700 (PDT)
Sender: satyaswaroop.damarla@gmail.com
Received: by 10.52.88.177 with HTTP; Mon, 22 Apr 2013 04:09:31 -0700 (PDT)
In-Reply-To: <2299638.betjk7Cq9a@helios>
References: <CAFMfyzKEScWXRFDFXQRjrw-+Gm0ie=wwrtAt07JuXBZiOOmhPA@mail.gmail.com>
	<2299638.betjk7Cq9a@helios>
Date: Mon, 22 Apr 2013 13:09:31 +0200
X-Google-Sender-Auth: O3HKP96SqTJyzWL7kwsdY_9XwAM
Message-ID: <CAFMfyzLED+DNKY9UsFGZ0eijAQKaTgHJos86rwvuox0T_nPFXQ@mail.gmail.com>
From: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Tools for measuring temperature on Tegra-Harmony board or in general
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
X-List-Received-Date: Mon, 22 Apr 2013 11:09:32 -0000
Content-Type: multipart/alternative; boundary=047d7bacb7e460518204daf11abf

--047d7bacb7e460518204daf11abf
Content-Type: text/plain; charset=ISO-8859-1

Hey Paul..

Based on your advice.. I am using the recipe of lm-sensors and I have an
issue.. When I do the normal "bitbake lmsensors", I have absolutely no
issue but when I try to install it into the rootfs then, I get the
following error..
NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Function failed: do_rootfs (see
/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmony-poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_rootfs.24405
for further information)
ERROR: Logfile of failure stored in:
/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmony-poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_rootfs.24405
Log data follows:
| DEBUG: Executing shell function do_rootfs
| dpkg-scanpackages.real: info: Wrote 45 entries to output Packages file.
| dpkg-scanpackages.real: info: Wrote 5479 entries to output Packages file.
| dpkg-scanpackages.real: info: Wrote 159 entries to output Packages file.
| dpkg-scanpackages.real: info: Wrote 45 entries to output Packages file.
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
/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmony-poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_rootfs.24405
for further information)
ERROR: Task 7 (/home/damarla/yocto/poky/meta/recipes-graphics/images/
core-image-skidata.bb, do_rootfs) failed with exit code '1'
NOTE: Tasks Summary: Attempted 5467 tasks of which 5454 didn't need to be
rerun and 1 failed.
No currently running tasks (5467 of 5468)

Summary: 1 task failed:
  /home/damarla/yocto/poky/meta/recipes-graphics/images/
core-image-skidata.bb, do_rootfs
Summary: There was 1 ERROR message shown, returning a non-zero exit code.




On Mon, Apr 15, 2013 at 6:40 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Monday 15 April 2013 16:17:20 Satya Swaroop Damarla wrote:
> > I have successfully compiled and am so happy the way poky is working on
> my
> > Tgera-Harmony modified version board... I have a new requirement which is
> > to find temperature of CPU so that we can control the fan..
> >
> > I think it comes with NCT1008-i2c-4-4C temperature sensor and has Tegra
> i2C
> > adapter
>
> I have no experience with this platform, however typically on Linux,
> lm_sensors is the piece of software used to read sensor values such as
> temperature, fan speed etc. There is an lm_sensors recipe in the meta-oe
> layer.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--047d7bacb7e460518204daf11abf
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey Paul..=A0<div><br></div><div style>Based on your advic=
e.. I am using the recipe of lm-sensors and I have an issue.. When I do the=
 normal &quot;bitbake lmsensors&quot;, I have absolutely no issue but when =
I try to install it into the rootfs then, I get the following error..</div>
<div style><div>NOTE: Resolving any missing task queue dependencies</div><d=
iv>NOTE: Preparing runqueue</div><div>NOTE: Executing SetScene Tasks</div><=
div>NOTE: Executing RunQueue Tasks</div><div>ERROR: Function failed: do_roo=
tfs (see /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harm=
ony-poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_rootfs.24405 f=
or further information)</div>
<div>ERROR: Logfile of failure stored in: /home/damarla/yocto/poky/buildSki=
dataHarmony/tmp/work/skidata_harmony-poky-linux-gnueabi/core-image-skidata/=
1.0-r0/temp/log.do_rootfs.24405</div><div>Log data follows:</div><div>| DEB=
UG: Executing shell function do_rootfs</div>
<div>| dpkg-scanpackages.real: info: Wrote 45 entries to output Packages fi=
le.</div><div>| dpkg-scanpackages.real: info: Wrote 5479 entries to output =
Packages file.</div><div>| dpkg-scanpackages.real: info: Wrote 159 entries =
to output Packages file.</div>
<div>| dpkg-scanpackages.real: info: Wrote 45 entries to output Packages fi=
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
re-image-skidata/1.0-r0/temp/log.do_rootfs.24405 for further information)</=
div>
<div>ERROR: Task 7 (/home/damarla/yocto/poky/meta/recipes-graphics/images/<=
a href=3D"http://core-image-skidata.bb">core-image-skidata.bb</a>, do_rootf=
s) failed with exit code &#39;1&#39;</div><div>NOTE: Tasks Summary: Attempt=
ed 5467 tasks of which 5454 didn&#39;t need to be rerun and 1 failed.</div>
<div>No currently running tasks (5467 of 5468)</div><div><br></div><div>Sum=
mary: 1 task failed:</div><div>=A0 /home/damarla/yocto/poky/meta/recipes-gr=
aphics/images/<a href=3D"http://core-image-skidata.bb">core-image-skidata.b=
b</a>, do_rootfs</div>
<div>Summary: There was 1 ERROR message shown, returning a non-zero exit co=
de.</div><div><br></div></div><div style><br></div></div><div class=3D"gmai=
l_extra"><br><br><div class=3D"gmail_quote">On Mon, Apr 15, 2013 at 6:40 PM=
, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux=
.intel.com" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span> =
wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On M=
onday 15 April 2013 16:17:20 Satya Swaroop Damarla wrote:<br>
&gt; I have successfully compiled and am so happy the way poky is working o=
n my<br>
&gt; Tgera-Harmony modified version board... I have a new requirement which=
 is<br>
&gt; to find temperature of CPU so that we can control the fan..<br>
&gt;<br>
&gt; I think it comes with NCT1008-i2c-4-4C temperature sensor and has Tegr=
a i2C<br>
&gt; adapter<br>
<br>
</div></div>I have no experience with this platform, however typically on L=
inux,<br>
lm_sensors is the piece of software used to read sensor values such as<br>
temperature, fan speed etc. There is an lm_sensors recipe in the meta-oe<br=
>
layer.<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--047d7bacb7e460518204daf11abf--
