Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4884E00DB6; Wed, 27 Dec 2017 20:38:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f178.google.com (mail-qt0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C13DE00D84
	for <yocto@yoctoproject.org>; Wed, 27 Dec 2017 20:38:37 -0800 (PST)
Received: by mail-qt0-f178.google.com with SMTP id i40so49989651qti.8
	for <yocto@yoctoproject.org>; Wed, 27 Dec 2017 20:38:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=Xo8ops6KgNUwSl3FbkLtmA0Cn2L60eIGypipqDKITBc=;
	b=hOEGU79TPh7iiE240NIBVz9/au8v8BkACKoNIVqfbQGwR3wWOE94pDBhjn/Lv4n+qD
	Rtl8qf+p6FHZlzF8UgkpicZb0W0Wbx1LLbBQDxIl5HRYbqCqfxgXzxIeqIpF5z0a4Eb5
	9pbdYvqTeywoOZ0g1Rf2iLZ6fqawTPDpBBma3NSWs6m+9MOPOs7iCtzpKG18jx+O2Gf5
	vlwxqyntlGuMQkPWHtAAKE85VFnNJjLyzF/lnapgZjGRFPKPDYXRtyCimvawMm8i+/9l
	VcVbTK60UaLJ9Ayi6dId/REOGpyAiIe6TR3J+a0lOJvX1pTpS4nQRWktUX6iBLT7hm0p
	sadQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=Xo8ops6KgNUwSl3FbkLtmA0Cn2L60eIGypipqDKITBc=;
	b=Dw4xIfpQHJaT9LDlCE8qmRHGF2hb2qWxpgUXzZL4WYC7f62d14GnC2Cu+ATmTjIMGk
	UQT6p4FI+FCWaZeoioy8iVyGg/f2GLLX0e+XQzAgK3Z2uD2YBLqnil7z0nRjT68/FUQn
	wxM1aIfgHfxOkdTvurWQ6EJZ0rfH/Mf/4ipKFwuLnQlN7O6FmqiZIn9c1ltLHBoRZp5J
	JGy7fyWkiDa69p49nx1mYYt5yOyOFzNpZ7fA6X9gB+l0EjpOczKFw1Z9nCV3VTNVLpjt
	POtIrWfjjbtRagkB4Mv3/jqcyViyAzhjXC+ofISuo/9jA5Z9/4FSkUEwlNaEiDRtbMa2
	MwpQ==
X-Gm-Message-State: AKGB3mJLq3o1glLjgtDlGrvRE6Dw3qxTGWBvyubOP3wxUHyRaMakdV2O
	2cGFmJBU3lSDXLu2Q5tpxFVcFEGo6i3vw+GhQwE=
X-Google-Smtp-Source: ACJfBot3/KnIdEmcrBL7+imsd3lLDeB6eLuAijvlD9EHxc1ryEZtM7DW7N4yAjq82djp16aGtAb7LFoO9OFg3av8cYw=
X-Received: by 10.200.35.28 with SMTP id a28mr43931468qta.51.1514435916170;
	Wed, 27 Dec 2017 20:38:36 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.202.146 with HTTP; Wed, 27 Dec 2017 20:38:35 -0800 (PST)
In-Reply-To: <1514430824343.14258@mentor.com>
References: <1514259762045.11906@mentor.com>
	<CAGAf8LzA1NqKmSf=Fm3wq+r3v-+wgmuLoXDzTR5dqDP-vp3zpg@mail.gmail.com>
	<1514430824343.14258@mentor.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 28 Dec 2017 05:38:35 +0100
Message-ID: <CAGAf8LzvLKrD5woxk_g7ND=w7cp73NN3Xuk2JUUaT68-tKPs1w@mail.gmail.com>
To: "Hou, Yong" <Yong_Hou@mentor.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: =?UTF-8?B?UmU6IOetlOWkjTogRmV0Y2hlciBmYWlsdXJlIGZvciBVUkw=?=
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
X-List-Received-Date: Thu, 28 Dec 2017 04:38:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> I suspect  error may be caused by the "protocol=3Dhttps",  then I changed=
 to
> "git://github.com/GENIVI/dlt-daemon.git;branch=3Dmaster"...

Good observation. I use clones as close as to the latest HEAD (span
from few days to several weeks).

Which does not explain what are the differences between poky distro
2.0.2 (used by you) and latest 2.4. In most cases, developers are
using much more stable releases. So this mystery is still unsolved.
With respect to the Real World out there.

Zoran

On Thu, Dec 28, 2017 at 4:13 AM, Hou, Yong <Yong_Hou@mentor.com> wrote:
> hello Zoran,
>
> thanks for your reply. I tried with your bb file, but there is still same=
 problem.
> I suspect  error may be caused by the "protocol=3Dhttps",  then I changed=
 to
> "git://github.com/GENIVI/dlt-daemon.git;branch=3Dmaster" ,
> Fortunately there is no problem any more . Following is the result by usi=
ng this change:
> But i do not know the real root cause, if some one can let me understand =
it it will be very nice.
>
> Myproject/build/tmp/work/corei7-64-poky-linux/dlt-daemon/2.15.0-r0/git$ l=
s -al
> total 156
> drwxr-xr-x 14 yong yong  4096 12=E6=9C=88 28 10:55 .
> drwxrwxr-x 13 yong yong  4096 12=E6=9C=88 28 10:56 ..
> -rw-r--r--  1 yong yong   555 12=E6=9C=88 28 10:55 AUTHORS
> -rw-r--r--  1 yong yong   209 12=E6=9C=88 28 10:55 automotive-dlt-c++.pc.=
in
> -rw-r--r--  1 yong yong   789 12=E6=9C=88 28 10:55 automotive-dlt.pc.in
> -rw-r--r--  1 yong yong  3694 12=E6=9C=88 28 10:55 automotive-dlt.spec.in
> drwxr-xr-x  2 yong yong  4096 12=E6=9C=88 28 10:55 cmake
> -rw-r--r--  1 yong yong 10593 12=E6=9C=88 28 10:55 CMakeLists.txt
> -rw-r--r--  1 yong yong   460 12=E6=9C=88 28 10:55 COPYING
> -rw-r--r--  1 yong yong   426 12=E6=9C=88 28 10:55 distfiles
> drwxr-xr-x  3 yong yong  4096 12=E6=9C=88 28 10:55 doc
> drwxr-xr-x  6 yong yong  4096 12=E6=9C=88 28 10:55 examples
> drwxr-xr-x  8 yong yong  4096 12=E6=9C=88 28 10:55 .git
> -rw-r--r--  1 yong yong   127 12=E6=9C=88 28 10:55 .gitignore
> drwxr-xr-x 16 yong yong  4096 12=E6=9C=88 28 10:55 gtest-1.7.0
> drwxr-xr-x  3 yong yong  4096 12=E6=9C=88 28 10:55 include
> -rw-r--r--  1 yong yong  7441 12=E6=9C=88 28 10:55 INSTALL
> -rw-r--r--  3 yong yong 16726 12=E6=9C=88 28 10:55 LICENSE
> drwxrwxr-x  2 yong yong  4096 12=E6=9C=88 28 10:55 patches
> drwxrwxr-x  9 yong yong  4096 12=E6=9C=88 28 10:55 .pc
> -rw-r--r--  1 yong yong  2629 12=E6=9C=88 28 10:55 README
> -rw-r--r--  1 yong yong 27180 12=E6=9C=88 28 10:55 ReleaseNotes.txt
> drwxr-xr-x 15 yong yong  4096 12=E6=9C=88 28 10:55 src
> drwxr-xr-x  3 yong yong  4096 12=E6=9C=88 28 10:55 systemd
> drwxr-xr-x  3 yong yong  4096 12=E6=9C=88 28 10:55 tests
> drwxr-xr-x  4 yong yong  4096 12=E6=9C=88 28 10:55 testscripts
>
> ________________________________________
> =E5=8F=91=E4=BB=B6=E4=BA=BA: Zoran Stojsavljevic <zoran.stojsavljevic@gma=
il.com>
> =E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4: 2017=E5=B9=B412=E6=9C=8826=E6=97=A5=
 16:50
> =E6=94=B6=E4=BB=B6=E4=BA=BA: Hou, Yong
> =E6=8A=84=E9=80=81: yocto@yoctoproject.org
> =E4=B8=BB=E9=A2=98: Re: [yocto] Fetcher failure for URL
>
>> Inside the bb file, there are following descriptions for this URL:
>>
>> SRC_URI =3D "git://github.com/GENIVI/dlt-daemon.git;protocol=3Dhttps"
>> SRCREV =3D "e9a486a08fff6d3cc7133a350cec3ee10f463207"
>
> Interesting problem, for the sake of expertise/exercise I wanted to
> reproduce it in poky/referent YOCTO Project distro.
>
> So I did create the dlp-daemon entry in my meta-mylayer, added layer
> on the top of poky 3 layers for such of the experiment:
>
> user@localhost recipes-example]$ pwd
> /home/user/YOCTO/oe_core_embedded/poky/meta-mylayer/recipes-example
> [user@localhost recipes-example]$ ls -al
> total 16
> drwxrwxr-x. 4 user user 4096 Dec 26 08:55 .
> drwxrwxr-x. 4 user user 4096 Nov 19 13:15 ..
> drwxrwxr-x. 2 user user 4096 Dec 26 08:59 dlt-daemon
> drwxrwxr-x. 3 user user 4096 Dec 26 07:37 script
> [user@localhost recipes-example]$ cd dlt-daemon/
> [user@localhost dlt-daemon]$ ls -al
> total 16
> drwxrwxr-x. 2 user user 4096 Dec 26 08:59 .
> drwxrwxr-x. 4 user user 4096 Dec 26 08:55 ..
> -rw-rw-r--. 1 user user 1370 Dec 26 08:59 dlt-daemon_2.15.0.bb
> [user@localhost dlt-daemon]$
>
> The bb recipe I took from:
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-ivi/tree/meta-ivi/recipes-=
extended/dlt-daemon/dlt-daemon_2.15.0.bb?h=3Dmaster
>
> And I did modify it, in order for disable some inheritance I do not
> have. Concisely I know it will not configure, but the aim was just to
> see if I can
> download it via bitbake script.
>
> With the following in my modified recipe:
>
> HOMEPAGE =3D "https://www.genivi.org/"
> SECTION =3D "console/utils"
> LICENSE =3D "MPLv2"
> LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D8184208060df880fe3137b93eb88ae=
ea"
>
> DEPENDS =3D "dbus zlib"
>
> SRCREV =3D "e9a486a08fff6d3cc7133a350cec3ee10f463207"
> SRC_URI =3D "git://github.com/GENIVI/${BPN}.git;protocol=3Dhttps"
> S =3D "${WORKDIR}/git"
>
> ## inherit gzipnative autotools gettext cmake systemd
> inherit autotools gettext cmake systemd
>
> PACKAGES +=3D "${PN}-systemd"
> SYSTEMD_PACKAGES =3D "${PN} ${PN}-systemd"
> SYSTEMD_SERVICE_${PN} =3D "dlt-system.service dlt.service"
> SYSTEMD_AUTO_ENABLE_${PN} =3D "enable"
> SYSTEMD_SERVICE_${PN}-systemd =3D "dlt-example-user.service \
>     dlt-dbus.service \
>     dlt-adaptor-udp.service \
>     dlt-receive.service"
> SYSTEMD_AUTO_ENABLE_${PN}-systemd =3D "disable"
>
> EXTRA_OECMAKE =3D "-DWITH_SYSTEMD=3DON"
>
> FILES_${PN}-doc +=3D "/usr/share/dlt-filetransfer"
>
> do_install_append() {
>    rm -f ${D}${bindir}/dlt-test-*
> }
>
> It did indeed downloaded (CLI follows below as proof), but failed to
> configure (understandable, gzipnative does not exist in reference
> poky):
>
> [user@localhost 2.15.0-r0]$ pwd
> /home/user/YOCTO/oe_core_embedded/poky/build/tmp/work/core2-64-poky-linux=
/dlt-daemon/2.15.0-r0
> [user@localhost 2.15.0-r0]$ cd git
> [user@localhost git]$ ls -al
> total 148
> drwxr-xr-x. 12 user user  4096 Dec 26 09:00 .
> drwxrwxr-x. 11 user user  4096 Dec 26 09:04 ..
> -rw-r--r--.  1 user user   555 Dec 26 09:00 AUTHORS
> -rw-r--r--.  1 user user   209 Dec 26 09:00 automotive-dlt-c++.pc.in
> -rw-r--r--.  1 user user   789 Dec 26 09:00 automotive-dlt.pc.in
> -rw-r--r--.  1 user user  3694 Dec 26 09:00 automotive-dlt.spec.in
> drwxr-xr-x.  2 user user  4096 Dec 26 09:00 cmake
> -rw-r--r--.  1 user user 10616 Dec 26 09:00 CMakeLists.txt
> -rw-r--r--.  1 user user   460 Dec 26 09:00 COPYING
> -rw-r--r--.  1 user user   426 Dec 26 09:00 distfiles
> drwxr-xr-x.  3 user user  4096 Dec 26 09:00 doc
> drwxr-xr-x.  6 user user  4096 Dec 26 09:00 examples
> drwxr-xr-x.  8 user user  4096 Dec 26 09:00 .git
> -rw-r--r--.  1 user user   127 Dec 26 09:00 .gitignore
> drwxr-xr-x. 16 user user  4096 Dec 26 09:00 gtest-1.7.0
> drwxr-xr-x.  3 user user  4096 Dec 26 09:00 include
> -rw-r--r--.  1 user user  7441 Dec 26 09:00 INSTALL
> -rw-r--r--.  3 user user 16726 Dec 26 09:00 LICENSE
> -rw-r--r--.  1 user user  2629 Dec 26 09:00 README
> -rw-r--r--.  1 user user 27180 Dec 26 09:00 ReleaseNotes.txt
> drwxr-xr-x. 15 user user  4096 Dec 26 09:00 src
> drwxr-xr-x.  3 user user  4096 Dec 26 09:00 systemd
> drwxr-xr-x.  3 user user  4096 Dec 26 09:00 tests
> drwxr-xr-x.  4 user user  4096 Dec 26 09:00 testscripts
> [user@localhost git]$
>
> The download problem become visible with the original master recipe:
>
> SRCREV =3D "e9a486a08fff6d3cc7133a350cec3ee10f463207"
> SRC_URI =3D "git://github.com/GENIVI/${BPN}.git;protocol=3Dhttps \
>     file://0002-Don-t-execute-processes-as-a-specific-user.patch \
>     file://0004-Modify-systemd-config-directory.patch \
>     "
> S =3D "${WORKDIR}/git"
>
> Patch 0002 did not download. The same as you had for the original URI,
> but, in my case, it was just a 0002. ... .patch.
>
> Hope this helps.
>
> Zoran
>
> On Tue, Dec 26, 2017 at 4:42 AM, Hou, Yong <Yong_Hou@mentor.com> wrote:
>> Hello all,
>>
>>
>> When i build the project based on yocto 2.0.2 using bitbake tool, i
>> encountered one fetch error :
>>
>>  "Failed to fetch URL git://github.com/GENIVI/dlt-daemon.git;protocol=3D=
https,
>> attempting MIRRORS if available"
>>
>>
>> Inside the bb file, there are following descriptions for this URL:
>>
>> SRC_URI =3D "git://github.com/GENIVI/dlt-daemon.git;protocol=3Dhttps"
>> SRCREV =3D "e9a486a08fff6d3cc7133a350cec3ee10f463207"
>>
>>
>> Then i tried to fetch it manually as below, source code can be downloade=
d
>> successfully and commit id is also correct.
>> myproject$git clone git://github.com/GENIVI/dlt-daemon.git
>>
>> myproject/dlt-daemon$ git -c core.fsyncobjectfiles=3D0 branch --contains
>> e9a486a08fff6d3cc7133a350cec3ee10f463207
>> * master
>>
>>
>> I have no idea why such issue occurred for this URL when i use bitbake f=
or
>> build.
>>
>> Thanks for help.
>>
>>
>> Following is the detail error log:
>>
>>
>> NOTE: recipe gnome-common-native-3.14.0-r0: task do_compile: Started
>> NOTE: recipe gnome-common-native-3.14.0-r0: task do_compile: Succeeded
>> NOTE: Running task 687 of 5699 (ID: 5344,
>> virtual:native:/home/yong/MEL/android/Oreo/2017ww45/VM0/Xen_GVTG_EC1746_=
RC1-DOM0/poky/meta/recipes-gnome/gnome/gnome-common_3.14.0.bb,
>> do_install)
>> NOTE: recipe gnome-common-native-3.14.0-r0: task do_install: Started
>> NOTE: recipe gnome-common-native-3.14.0-r0: task do_install: Succeeded
>> NOTE: Running task 688 of 5699 (ID: 5345,
>> virtual:native:/home/yong/MEL/android/Oreo/2017ww45/VM0/Xen_GVTG_EC1746_=
RC1-DOM0/poky/meta/recipes-gnome/gnome/gnome-common_3.14.0.bb,
>> do_populate_sysroot)
>> NOTE: recipe gnome-common-native-3.14.0-r0: task do_populate_sysroot:
>> Started
>> NOTE: recipe gnome-common-native-3.14.0-r0: task do_populate_sysroot:
>> Succeeded
>> NOTE: Running task 689 of 5699 (ID: 569,
>> /home/yong/MEL/android/Oreo/2017ww45/VM0/Xen_GVTG_EC1746_RC1-DOM0/poky/.=
./meta-ias-ivi-adapt/recipes-extended/dlt-daemon/dlt-daemon_2.15.0.bb,
>> do_fetch)
>> NOTE: recipe dlt-daemon-2.15.0-r0: task do_fetch: Started
>> WARNING: Failed to fetch URL
>> git://github.com/GENIVI/dlt-daemon.git;protocol=3Dhttps, attempting MIRR=
ORS if
>> available
>> ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
>> Cloning into bare repository
>> '/home/yong/MEL/android/Oreo/2017ww45/VM0/Xen_GVTG_EC1746_RC1-DOM0/build=
/downloads/git2/github.com.GENIVI.dlt-daemon.git'...
>> fatal: Unable to find remote helper for 'https'
>>
>> ERROR: Function failed: Fetcher failure for URL:
>> 'git://github.com/GENIVI/dlt-daemon.git;protocol=3Dhttps'. Unable to fet=
ch URL
>> from any source.
>> ERROR: Logfile of failure stored in:
>> /home/yong/MEL/android/Oreo/2017ww45/VM0/Xen_GVTG_EC1746_RC1-DOM0/build/=
tmp/work/corei7-64-poky-linux/dlt-daemon/2.15.0-r0/temp/log.do_fetch.14762
>> NOTE: recipe dlt-daemon-2.15.0-r0: task do_fetch: Failed
>> ERROR: Task 569
>> (/home/yong/MEL/android/Oreo/2017ww45/VM0/Xen_GVTG_EC1746_RC1-DOM0/poky/=
../meta-ias-ivi-adapt/recipes-extended/dlt-daemon/dlt-daemon_2.15.0.bb,
>> do_fetch) failed with exit code '1'
>> NOTE: Running task 690 of 5699 (ID: 3025,
>> /home/yong/MEL/android/Oreo/2017ww45/VM0/Xen_GVTG_EC1746_RC1-DOM0/poky/m=
eta/recipes-devtools/cmake/cmake-native_3.3.1.bb,
>> do_fetch)
>> NOTE: recipe cmake-native-3.3.1-r0: task do_fetch: Started
>> NOTE: recipe cmake-native-3.3.1-r0: task do_fetch: Succeeded
>> WARNING: Checksum failure encountered with download of
>> http://www.w3.org/XML/Test/xmlts20080827.tar.gz;name=3Dtesttar - will at=
tempt
>> other sources if available
>> WARNING: Renaming
>> /home/yong/MEL/android/Oreo/2017ww45/VM0/Xen_GVTG_EC1746_RC1-DOM0/build/=
downloads/xmlts20080827.tar.gz
>> to
>> /home/yong/MEL/android/Oreo/2017ww45/VM0/Xen_GVTG_EC1746_RC1-DOM0/build/=
downloads/xmlts20080827.tar.gz_bad-checksum_3a944b972f2da90b97d8a57c6f939fa=
8
>> NOTE: recipe libxml2-2.9.2-r0: task do_fetch: Succeeded
>> NOTE: recipe libxml2-native-2.9.2-r0: task do_fetch: Succeeded
>> NOTE: recipe glibc-initial-2.22-r0: task do_fetch: Succeeded
>> NOTE: recipe glibc-2.22-r0: task do_fetch: Succeeded
>> NOTE: recipe cairo-1.14.2-r1: task do_fetch: Succeeded
>> NOTE: recipe binutils-cross-x86_64-2.25.1-r0: task do_fetch: Succeeded
>> NOTE: Sending SIGTERM to remaining 1 tasks
>>
>>
>> SRC_URI =3D "git://github.com/GENIVI/dlt-daemon.git;protocol=3Dhttps \
>>            file://0004-Modify-systemd-config-directory.patch \
>>
>> file://0005-Rework-of-initialization-cleanup-of-user-library.patch \
>>            file://0006-Fix-buffer-overflow-in-dlt_message_payload.patch =
\
>>
>> file://0007-Fix-segfault-when-calling-DLT_LOG-on-an-uninitialize.patch \
>>            file://0008-Header-and-payload-logging-fixed.patch \
>>            file://0009-Enabled-mutex-priority-inheritance.patch \
>>            file://0010-Fix-SEGFAULT-in-write_-utf8_-string.patch \
>>            file://10-tmp-dlt.conf \
>>            "
>> SRCREV =3D "e9a486a08fff6d3cc7133a350cec3ee10f463207"
>>
>>
>> regards
>>
>> Yong
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>

