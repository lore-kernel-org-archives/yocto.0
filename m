Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72D2AE00D7E; Tue, 26 Dec 2017 00:50:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f175.google.com (mail-qk0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A84FE00D7E
	for <yocto@yoctoproject.org>; Tue, 26 Dec 2017 00:50:47 -0800 (PST)
Received: by mail-qk0-f175.google.com with SMTP id g123so10937063qka.3
	for <yocto@yoctoproject.org>; Tue, 26 Dec 2017 00:50:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/YB/uUM4bCX4alKHWo8tHqiqcPGP/qDuh/GeWlQW9a0=;
	b=PCOAu8j8I7ctCNnN6wqyM+hMnf4vgqx5ndLlpaa3ozxJ0vhk1R8hpMO9I5bn7LOy63
	ry6OBEdxCj3wuyZbo0tEO+pOgIhRK0vWbnx+hiw5MRRVDkt94qAoTUUjomBr+MdPN2s0
	eqkOIXuapzWxt7OlD/3cgoO+W5d/PY7TA5Yn7zsh+EOE2Dn12aOsWAH2M2xme09+j40X
	POt82rC59Zel1pUOleU0Cj7OqYidnvMR/htgHMFnG+fGcyej/UplCDdtnVqSAXKBIYR5
	6EERoj1YVhwR3ehM0xDLdvq8FcN243PgqVAdsZwhFYjlTJCByMN2x1Il7ol7JYBeL5i+
	rKpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/YB/uUM4bCX4alKHWo8tHqiqcPGP/qDuh/GeWlQW9a0=;
	b=Ri7J+GwUxCF0SXMEBxMHta+Jce5AW6vQ4OHq82qQHZ0ZL+ovxAgMH3+SvwbLNIK5bz
	ckp98+mjf19KA9+Ea+KjL+nAbB0cI8zkzjSg7kOCHOIe5fN+5+Lys3FBe48b3qZOLNcz
	5mD7miRb6m6eS6DdM5OddXuID2Kq0IA5VnrX6yznwo2NmR20+7WPOPfVnTj6tlIyr9bZ
	UaHUecBTQsZ6GMG8mp/HQcWkuM/nlvpwAO0GcbL975QbQZAzoq3OgdlYeLILoziA4yNG
	3Pimt3efnlijV9UN/LMfCExbDRy87sSAVwp/VMwHyZrCh3zCT70Y+W1GEqWk/JCO3sfe
	gckw==
X-Gm-Message-State: AKGB3mLAq/s3V3QJiMUEyDo+6IN2he55XtyCTYwAUcolUtrF6E3Zme6s
	hqSSY26DNit1Q9RyvWRrmwhyJI/JmmBnuDQaD6M=
X-Google-Smtp-Source: ACJfBot1d7h3PNIapBT82tpS+NQAJurA2m72U6eAWeDOIWp+0sMDF2JD/Qe7Mjbx87OrHgBCTxa4lxCsayo4oCVuQ04=
X-Received: by 10.55.38.81 with SMTP id y78mr16689670qkg.132.1514278246249;
	Tue, 26 Dec 2017 00:50:46 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.202.146 with HTTP; Tue, 26 Dec 2017 00:50:45 -0800 (PST)
In-Reply-To: <1514259762045.11906@mentor.com>
References: <1514259762045.11906@mentor.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Tue, 26 Dec 2017 09:50:45 +0100
Message-ID: <CAGAf8LzA1NqKmSf=Fm3wq+r3v-+wgmuLoXDzTR5dqDP-vp3zpg@mail.gmail.com>
To: "Hou, Yong" <Yong_Hou@mentor.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Fetcher failure for URL
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
X-List-Received-Date: Tue, 26 Dec 2017 08:50:48 -0000
Content-Type: text/plain; charset="UTF-8"

> Inside the bb file, there are following descriptions for this URL:
>
> SRC_URI = "git://github.com/GENIVI/dlt-daemon.git;protocol=https"
> SRCREV = "e9a486a08fff6d3cc7133a350cec3ee10f463207"

Interesting problem, for the sake of expertise/exercise I wanted to
reproduce it in poky/referent YOCTO Project distro.

So I did create the dlp-daemon entry in my meta-mylayer, added layer
on the top of poky 3 layers for such of the experiment:

user@localhost recipes-example]$ pwd
/home/user/YOCTO/oe_core_embedded/poky/meta-mylayer/recipes-example
[user@localhost recipes-example]$ ls -al
total 16
drwxrwxr-x. 4 user user 4096 Dec 26 08:55 .
drwxrwxr-x. 4 user user 4096 Nov 19 13:15 ..
drwxrwxr-x. 2 user user 4096 Dec 26 08:59 dlt-daemon
drwxrwxr-x. 3 user user 4096 Dec 26 07:37 script
[user@localhost recipes-example]$ cd dlt-daemon/
[user@localhost dlt-daemon]$ ls -al
total 16
drwxrwxr-x. 2 user user 4096 Dec 26 08:59 .
drwxrwxr-x. 4 user user 4096 Dec 26 08:55 ..
-rw-rw-r--. 1 user user 1370 Dec 26 08:59 dlt-daemon_2.15.0.bb
[user@localhost dlt-daemon]$

The bb recipe I took from:
http://git.yoctoproject.org/cgit/cgit.cgi/meta-ivi/tree/meta-ivi/recipes-extended/dlt-daemon/dlt-daemon_2.15.0.bb?h=master

And I did modify it, in order for disable some inheritance I do not
have. Concisely I know it will not configure, but the aim was just to
see if I can
download it via bitbake script.

With the following in my modified recipe:

HOMEPAGE = "https://www.genivi.org/"
SECTION = "console/utils"
LICENSE = "MPLv2"
LIC_FILES_CHKSUM = "file://LICENSE;md5=8184208060df880fe3137b93eb88aeea"

DEPENDS = "dbus zlib"

SRCREV = "e9a486a08fff6d3cc7133a350cec3ee10f463207"
SRC_URI = "git://github.com/GENIVI/${BPN}.git;protocol=https"
S = "${WORKDIR}/git"

## inherit gzipnative autotools gettext cmake systemd
inherit autotools gettext cmake systemd

PACKAGES += "${PN}-systemd"
SYSTEMD_PACKAGES = "${PN} ${PN}-systemd"
SYSTEMD_SERVICE_${PN} = "dlt-system.service dlt.service"
SYSTEMD_AUTO_ENABLE_${PN} = "enable"
SYSTEMD_SERVICE_${PN}-systemd = "dlt-example-user.service \
    dlt-dbus.service \
    dlt-adaptor-udp.service \
    dlt-receive.service"
SYSTEMD_AUTO_ENABLE_${PN}-systemd = "disable"

EXTRA_OECMAKE = "-DWITH_SYSTEMD=ON"

FILES_${PN}-doc += "/usr/share/dlt-filetransfer"

do_install_append() {
   rm -f ${D}${bindir}/dlt-test-*
}

It did indeed downloaded (CLI follows below as proof), but failed to
configure (understandable, gzipnative does not exist in reference
poky):

[user@localhost 2.15.0-r0]$ pwd
/home/user/YOCTO/oe_core_embedded/poky/build/tmp/work/core2-64-poky-linux/dlt-daemon/2.15.0-r0
[user@localhost 2.15.0-r0]$ cd git
[user@localhost git]$ ls -al
total 148
drwxr-xr-x. 12 user user  4096 Dec 26 09:00 .
drwxrwxr-x. 11 user user  4096 Dec 26 09:04 ..
-rw-r--r--.  1 user user   555 Dec 26 09:00 AUTHORS
-rw-r--r--.  1 user user   209 Dec 26 09:00 automotive-dlt-c++.pc.in
-rw-r--r--.  1 user user   789 Dec 26 09:00 automotive-dlt.pc.in
-rw-r--r--.  1 user user  3694 Dec 26 09:00 automotive-dlt.spec.in
drwxr-xr-x.  2 user user  4096 Dec 26 09:00 cmake
-rw-r--r--.  1 user user 10616 Dec 26 09:00 CMakeLists.txt
-rw-r--r--.  1 user user   460 Dec 26 09:00 COPYING
-rw-r--r--.  1 user user   426 Dec 26 09:00 distfiles
drwxr-xr-x.  3 user user  4096 Dec 26 09:00 doc
drwxr-xr-x.  6 user user  4096 Dec 26 09:00 examples
drwxr-xr-x.  8 user user  4096 Dec 26 09:00 .git
-rw-r--r--.  1 user user   127 Dec 26 09:00 .gitignore
drwxr-xr-x. 16 user user  4096 Dec 26 09:00 gtest-1.7.0
drwxr-xr-x.  3 user user  4096 Dec 26 09:00 include
-rw-r--r--.  1 user user  7441 Dec 26 09:00 INSTALL
-rw-r--r--.  3 user user 16726 Dec 26 09:00 LICENSE
-rw-r--r--.  1 user user  2629 Dec 26 09:00 README
-rw-r--r--.  1 user user 27180 Dec 26 09:00 ReleaseNotes.txt
drwxr-xr-x. 15 user user  4096 Dec 26 09:00 src
drwxr-xr-x.  3 user user  4096 Dec 26 09:00 systemd
drwxr-xr-x.  3 user user  4096 Dec 26 09:00 tests
drwxr-xr-x.  4 user user  4096 Dec 26 09:00 testscripts
[user@localhost git]$

The download problem become visible with the original master recipe:

SRCREV = "e9a486a08fff6d3cc7133a350cec3ee10f463207"
SRC_URI = "git://github.com/GENIVI/${BPN}.git;protocol=https \
    file://0002-Don-t-execute-processes-as-a-specific-user.patch \
    file://0004-Modify-systemd-config-directory.patch \
    "
S = "${WORKDIR}/git"

Patch 0002 did not download. The same as you had for the original URI,
but, in my case, it was just a 0002. ... .patch.

Hope this helps.

Zoran

On Tue, Dec 26, 2017 at 4:42 AM, Hou, Yong <Yong_Hou@mentor.com> wrote:
> Hello all,
>
>
> When i build the project based on yocto 2.0.2 using bitbake tool, i
> encountered one fetch error :
>
>  "Failed to fetch URL git://github.com/GENIVI/dlt-daemon.git;protocol=https,
> attempting MIRRORS if available"
>
>
> Inside the bb file, there are following descriptions for this URL:
>
> SRC_URI = "git://github.com/GENIVI/dlt-daemon.git;protocol=https"
> SRCREV = "e9a486a08fff6d3cc7133a350cec3ee10f463207"
>
>
> Then i tried to fetch it manually as below, source code can be downloaded
> successfully and commit id is also correct.
> myproject$git clone git://github.com/GENIVI/dlt-daemon.git
>
> myproject/dlt-daemon$ git -c core.fsyncobjectfiles=0 branch --contains
> e9a486a08fff6d3cc7133a350cec3ee10f463207
> * master
>
>
> I have no idea why such issue occurred for this URL when i use bitbake for
> build.
>
> Thanks for help.
>
>
> Following is the detail error log:
>
>
> NOTE: recipe gnome-common-native-3.14.0-r0: task do_compile: Started
> NOTE: recipe gnome-common-native-3.14.0-r0: task do_compile: Succeeded
> NOTE: Running task 687 of 5699 (ID: 5344,
> virtual:native:/home/yong/MEL/android/Oreo/2017ww45/VM0/Xen_GVTG_EC1746_RC1-DOM0/poky/meta/recipes-gnome/gnome/gnome-common_3.14.0.bb,
> do_install)
> NOTE: recipe gnome-common-native-3.14.0-r0: task do_install: Started
> NOTE: recipe gnome-common-native-3.14.0-r0: task do_install: Succeeded
> NOTE: Running task 688 of 5699 (ID: 5345,
> virtual:native:/home/yong/MEL/android/Oreo/2017ww45/VM0/Xen_GVTG_EC1746_RC1-DOM0/poky/meta/recipes-gnome/gnome/gnome-common_3.14.0.bb,
> do_populate_sysroot)
> NOTE: recipe gnome-common-native-3.14.0-r0: task do_populate_sysroot:
> Started
> NOTE: recipe gnome-common-native-3.14.0-r0: task do_populate_sysroot:
> Succeeded
> NOTE: Running task 689 of 5699 (ID: 569,
> /home/yong/MEL/android/Oreo/2017ww45/VM0/Xen_GVTG_EC1746_RC1-DOM0/poky/../meta-ias-ivi-adapt/recipes-extended/dlt-daemon/dlt-daemon_2.15.0.bb,
> do_fetch)
> NOTE: recipe dlt-daemon-2.15.0-r0: task do_fetch: Started
> WARNING: Failed to fetch URL
> git://github.com/GENIVI/dlt-daemon.git;protocol=https, attempting MIRRORS if
> available
> ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
> Cloning into bare repository
> '/home/yong/MEL/android/Oreo/2017ww45/VM0/Xen_GVTG_EC1746_RC1-DOM0/build/downloads/git2/github.com.GENIVI.dlt-daemon.git'...
> fatal: Unable to find remote helper for 'https'
>
> ERROR: Function failed: Fetcher failure for URL:
> 'git://github.com/GENIVI/dlt-daemon.git;protocol=https'. Unable to fetch URL
> from any source.
> ERROR: Logfile of failure stored in:
> /home/yong/MEL/android/Oreo/2017ww45/VM0/Xen_GVTG_EC1746_RC1-DOM0/build/tmp/work/corei7-64-poky-linux/dlt-daemon/2.15.0-r0/temp/log.do_fetch.14762
> NOTE: recipe dlt-daemon-2.15.0-r0: task do_fetch: Failed
> ERROR: Task 569
> (/home/yong/MEL/android/Oreo/2017ww45/VM0/Xen_GVTG_EC1746_RC1-DOM0/poky/../meta-ias-ivi-adapt/recipes-extended/dlt-daemon/dlt-daemon_2.15.0.bb,
> do_fetch) failed with exit code '1'
> NOTE: Running task 690 of 5699 (ID: 3025,
> /home/yong/MEL/android/Oreo/2017ww45/VM0/Xen_GVTG_EC1746_RC1-DOM0/poky/meta/recipes-devtools/cmake/cmake-native_3.3.1.bb,
> do_fetch)
> NOTE: recipe cmake-native-3.3.1-r0: task do_fetch: Started
> NOTE: recipe cmake-native-3.3.1-r0: task do_fetch: Succeeded
> WARNING: Checksum failure encountered with download of
> http://www.w3.org/XML/Test/xmlts20080827.tar.gz;name=testtar - will attempt
> other sources if available
> WARNING: Renaming
> /home/yong/MEL/android/Oreo/2017ww45/VM0/Xen_GVTG_EC1746_RC1-DOM0/build/downloads/xmlts20080827.tar.gz
> to
> /home/yong/MEL/android/Oreo/2017ww45/VM0/Xen_GVTG_EC1746_RC1-DOM0/build/downloads/xmlts20080827.tar.gz_bad-checksum_3a944b972f2da90b97d8a57c6f939fa8
> NOTE: recipe libxml2-2.9.2-r0: task do_fetch: Succeeded
> NOTE: recipe libxml2-native-2.9.2-r0: task do_fetch: Succeeded
> NOTE: recipe glibc-initial-2.22-r0: task do_fetch: Succeeded
> NOTE: recipe glibc-2.22-r0: task do_fetch: Succeeded
> NOTE: recipe cairo-1.14.2-r1: task do_fetch: Succeeded
> NOTE: recipe binutils-cross-x86_64-2.25.1-r0: task do_fetch: Succeeded
> NOTE: Sending SIGTERM to remaining 1 tasks
>
>
> SRC_URI = "git://github.com/GENIVI/dlt-daemon.git;protocol=https \
>            file://0004-Modify-systemd-config-directory.patch \
>
> file://0005-Rework-of-initialization-cleanup-of-user-library.patch \
>            file://0006-Fix-buffer-overflow-in-dlt_message_payload.patch \
>
> file://0007-Fix-segfault-when-calling-DLT_LOG-on-an-uninitialize.patch \
>            file://0008-Header-and-payload-logging-fixed.patch \
>            file://0009-Enabled-mutex-priority-inheritance.patch \
>            file://0010-Fix-SEGFAULT-in-write_-utf8_-string.patch \
>            file://10-tmp-dlt.conf \
>            "
> SRCREV = "e9a486a08fff6d3cc7133a350cec3ee10f463207"
>
>
> regards
>
> Yong
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

