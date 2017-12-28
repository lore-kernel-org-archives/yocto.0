Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF78CE00DB6; Wed, 27 Dec 2017 23:10:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f170.google.com (mail-qk0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD13BE00D84
	for <yocto@yoctoproject.org>; Wed, 27 Dec 2017 23:10:48 -0800 (PST)
Received: by mail-qk0-f170.google.com with SMTP id v188so21389504qkh.11
	for <yocto@yoctoproject.org>; Wed, 27 Dec 2017 23:10:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=IwmaBZctYsTezHTs4AQ3fmY2IQ7q6qLwLlNokKCbTzE=;
	b=L77UAUPc4OeT95nGzDVITyTJoBvxVwHbq+84/5QGGT19Arlgo7JyQoBLHgGB8Iljhb
	Dqd0bDK9KDmNuc6CdCeiO1cWnWKr4K4ZMMjvodvXRnRGK6VenCrbDEPZhvE5uP5a+Gju
	gISGpCOAvUPQO7Qi6HantN1Tg/BEwYgqlGWmaZHWcMOq4z1UFI/vZ7TZ8hSqra0zOwcd
	v4WybI8Ci4x+ZBJtyPuucieZghUNy2l95k1i7qTIo+fkKajeKteGte6b/hVAASDijVBT
	r54SFSU9txF5XNPGdW0MrrI3tn89mYegLnJRmfXjxX1N26yBtAvH22HOBX/imzIoThOB
	7JSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=IwmaBZctYsTezHTs4AQ3fmY2IQ7q6qLwLlNokKCbTzE=;
	b=mM810bDtnNKitd6C5IwHdvqSSLudVoxo2beO774+rY0XFV7/lavD+S8lvx2ocfChvC
	M9JeNQ/ilYrjMSbH8sAFv26vSMhDXiabXEeo2JEbE+ZHDNIUbNtJIjkHskhkQ2ahHiQY
	/0HX15xjW3yO0b8bCpH11+4cJgnjGPyMSrj7yHsXx09tIsdkdjc0ZwxMP0qRpDEKO/Mz
	fOJLkwvAa5Oz1wVs8dRFG0cpbj1awIMaNZKTsarhcXuUaDJSCIhDmEVOeVyXyeQDrrRC
	7Ki4Vq1NQejx3uRcfnUJU6AiyXMISxwzZVbj+RepHUDBuFsTqh1wBLxj8DgVGl3MhI/m
	zfVA==
X-Gm-Message-State: AKGB3mJuLSR8yyI9MJe91aBeWzTqvX7sEggxFjslpS3NeSsjNGV2JOpR
	RWtARMEDouUGXedgvOp0C4x+qRdOk3UgnRZJKb4WEA==
X-Google-Smtp-Source: ACJfBouqfCaRHJ6sggIHS4L1LW8j8deDYFL1fz5WSFrHbSGmRdXnnqeQP7YAgHmMPs+/OGFXAx4m33MpdtnnCTgZs7U=
X-Received: by 10.55.97.15 with SMTP id v15mr40330265qkb.71.1514445047457;
	Wed, 27 Dec 2017 23:10:47 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.202.146 with HTTP; Wed, 27 Dec 2017 23:10:46 -0800 (PST)
In-Reply-To: <1514438126832.39665@mentor.com>
References: <1514259762045.11906@mentor.com>
	<CAGAf8LzA1NqKmSf=Fm3wq+r3v-+wgmuLoXDzTR5dqDP-vp3zpg@mail.gmail.com>
	<1514430824343.14258@mentor.com>
	<CAGAf8LzvLKrD5woxk_g7ND=w7cp73NN3Xuk2JUUaT68-tKPs1w@mail.gmail.com>
	<1514438126832.39665@mentor.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 28 Dec 2017 08:10:46 +0100
Message-ID: <CAGAf8LwALyu682yCkV5F=h7CkF5vq=AmSH8-w9ESyscZ7-2TUg@mail.gmail.com>
To: "Hou, Yong" <Yong_Hou@mentor.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: =?UTF-8?B?UmU6IOetlOWkjTog562U5aSNOiBGZXRjaGVyIGZhaWx1cmUgZm9yIFVSTA==?=
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
X-List-Received-Date: Thu, 28 Dec 2017 07:10:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> I think i got the root cause that in my environment "https protocol"
> does not link to git-remote-https tool , I edit my bash profile file in\
> ~/.bash_profile : "PATH=3D$PATH:/usr/lib/git-core"  where the
> git-remote-https installed. and the issue is resolved completely.

Interesting... ?! I use Fedora 27 as a host, and git-core/ is not in
my PATH variable either.

[user@localhost bin]$ uname -r
4.14.8-300.fc27.x86_64
[user@localhost bin]$ echo $PATH
/usr/libexec/python2-sphinx:/usr/lib64/qt-3.3/bin:/usr/lib64/ccache:/usr/lo=
cal/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/home/user/.local/bin:/home/user=
/bin
[user@localhost usr]$ find . -name git-remote-https
./libexec/git-core/git-remote-https
[user@localhost usr]$ which git-remote-https
/usr/bin/which: no git-remote-https in
(/usr/libexec/python2-sphinx:/usr/lib64/qt-3.3/bin:/usr/lib64/ccache:/usr/l=
ocal/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/home/user/.local/bin:/home/use=
r/bin)
[user@localhost usr]$

But for me initial method works.

Anyway, thank you for sharing your solution (one more thing to consider).

Zoran
_______

On Thu, Dec 28, 2017 at 6:15 AM, Hou, Yong <Yong_Hou@mentor.com> wrote:
> I think i got the root cause that in my environment " https protocol" doe=
s not link to git-remote-https tool , I edit my bash profile file in ~/.bas=
h_profile :
> "PATH=3D$PATH:/usr/lib/git-core"  where the git-remote-https installed.
> and the issue is resolved completely.
>
> so the conclusion is:  the git tool environment shall be prepared properl=
y in order to fetch code based https protocol.
>
> regards
> Yong
>
> ________________________________________
> =E5=8F=91=E4=BB=B6=E4=BA=BA: Zoran Stojsavljevic <zoran.stojsavljevic@gma=
il.com>
> =E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4: 2017=E5=B9=B412=E6=9C=8828=E6=97=A5=
 12:38
> =E6=94=B6=E4=BB=B6=E4=BA=BA: Hou, Yong
> =E6=8A=84=E9=80=81: yocto@yoctoproject.org
> =E4=B8=BB=E9=A2=98: Re: =E7=AD=94=E5=A4=8D: [yocto] Fetcher failure for U=
RL
>
>> I suspect  error may be caused by the "protocol=3Dhttps",  then I change=
d to
>> "git://github.com/GENIVI/dlt-daemon.git;branch=3Dmaster"...
>
> Good observation. I use clones as close as to the latest HEAD (span
> from few days to several weeks).
>
> Which does not explain what are the differences between poky distro
> 2.0.2 (used by you) and latest 2.4. In most cases, developers are
> using much more stable releases. So this mystery is still unsolved.
> With respect to the Real World out there.
>
> Zoran
>
> On Thu, Dec 28, 2017 at 4:13 AM, Hou, Yong <Yong_Hou@mentor.com> wrote:
>> hello Zoran,
>>
>> thanks for your reply. I tried with your bb file, but there is still sam=
e problem.
>> I suspect  error may be caused by the "protocol=3Dhttps",  then I change=
d to
>> "git://github.com/GENIVI/dlt-daemon.git;branch=3Dmaster" ,
>> Fortunately there is no problem any more . Following is the result by us=
ing this change:
>> But i do not know the real root cause, if some one can let me understand=
 it it will be very nice.
>>
>> Myproject/build/tmp/work/corei7-64-poky-linux/dlt-daemon/2.15.0-r0/git$ =
ls -al
>> total 156
>> drwxr-xr-x 14 yong yong  4096 12=E6=9C=88 28 10:55 .
>> drwxrwxr-x 13 yong yong  4096 12=E6=9C=88 28 10:56 ..
>> -rw-r--r--  1 yong yong   555 12=E6=9C=88 28 10:55 AUTHORS
>> -rw-r--r--  1 yong yong   209 12=E6=9C=88 28 10:55 automotive-dlt-c++.pc=
.in
>> -rw-r--r--  1 yong yong   789 12=E6=9C=88 28 10:55 automotive-dlt.pc.in
>> -rw-r--r--  1 yong yong  3694 12=E6=9C=88 28 10:55 automotive-dlt.spec.i=
n
>> drwxr-xr-x  2 yong yong  4096 12=E6=9C=88 28 10:55 cmake
>> -rw-r--r--  1 yong yong 10593 12=E6=9C=88 28 10:55 CMakeLists.txt
>> -rw-r--r--  1 yong yong   460 12=E6=9C=88 28 10:55 COPYING
>> -rw-r--r--  1 yong yong   426 12=E6=9C=88 28 10:55 distfiles
>> drwxr-xr-x  3 yong yong  4096 12=E6=9C=88 28 10:55 doc
>> drwxr-xr-x  6 yong yong  4096 12=E6=9C=88 28 10:55 examples
>> drwxr-xr-x  8 yong yong  4096 12=E6=9C=88 28 10:55 .git
>> -rw-r--r--  1 yong yong   127 12=E6=9C=88 28 10:55 .gitignore
>> drwxr-xr-x 16 yong yong  4096 12=E6=9C=88 28 10:55 gtest-1.7.0
>> drwxr-xr-x  3 yong yong  4096 12=E6=9C=88 28 10:55 include
>> -rw-r--r--  1 yong yong  7441 12=E6=9C=88 28 10:55 INSTALL
>> -rw-r--r--  3 yong yong 16726 12=E6=9C=88 28 10:55 LICENSE
>> drwxrwxr-x  2 yong yong  4096 12=E6=9C=88 28 10:55 patches
>> drwxrwxr-x  9 yong yong  4096 12=E6=9C=88 28 10:55 .pc
>> -rw-r--r--  1 yong yong  2629 12=E6=9C=88 28 10:55 README
>> -rw-r--r--  1 yong yong 27180 12=E6=9C=88 28 10:55 ReleaseNotes.txt
>> drwxr-xr-x 15 yong yong  4096 12=E6=9C=88 28 10:55 src
>> drwxr-xr-x  3 yong yong  4096 12=E6=9C=88 28 10:55 systemd
>> drwxr-xr-x  3 yong yong  4096 12=E6=9C=88 28 10:55 tests
>> drwxr-xr-x  4 yong yong  4096 12=E6=9C=88 28 10:55 testscripts
>>
>> ________________________________________
>> =E5=8F=91=E4=BB=B6=E4=BA=BA: Zoran Stojsavljevic <zoran.stojsavljevic@gm=
ail.com>
>> =E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4: 2017=E5=B9=B412=E6=9C=8826=E6=97=
=A5 16:50
>> =E6=94=B6=E4=BB=B6=E4=BA=BA: Hou, Yong
>> =E6=8A=84=E9=80=81: yocto@yoctoproject.org
>> =E4=B8=BB=E9=A2=98: Re: [yocto] Fetcher failure for URL
>>
>>> Inside the bb file, there are following descriptions for this URL:
>>>
>>> SRC_URI =3D "git://github.com/GENIVI/dlt-daemon.git;protocol=3Dhttps"
>>> SRCREV =3D "e9a486a08fff6d3cc7133a350cec3ee10f463207"
>>
>> Interesting problem, for the sake of expertise/exercise I wanted to
>> reproduce it in poky/referent YOCTO Project distro.
>>
>> So I did create the dlp-daemon entry in my meta-mylayer, added layer
>> on the top of poky 3 layers for such of the experiment:
>>
>> user@localhost recipes-example]$ pwd
>> /home/user/YOCTO/oe_core_embedded/poky/meta-mylayer/recipes-example
>> [user@localhost recipes-example]$ ls -al
>> total 16
>> drwxrwxr-x. 4 user user 4096 Dec 26 08:55 .
>> drwxrwxr-x. 4 user user 4096 Nov 19 13:15 ..
>> drwxrwxr-x. 2 user user 4096 Dec 26 08:59 dlt-daemon
>> drwxrwxr-x. 3 user user 4096 Dec 26 07:37 script
>> [user@localhost recipes-example]$ cd dlt-daemon/
>> [user@localhost dlt-daemon]$ ls -al
>> total 16
>> drwxrwxr-x. 2 user user 4096 Dec 26 08:59 .
>> drwxrwxr-x. 4 user user 4096 Dec 26 08:55 ..
>> -rw-rw-r--. 1 user user 1370 Dec 26 08:59 dlt-daemon_2.15.0.bb
>> [user@localhost dlt-daemon]$
>>
>> The bb recipe I took from:
>> http://git.yoctoproject.org/cgit/cgit.cgi/meta-ivi/tree/meta-ivi/recipes=
-extended/dlt-daemon/dlt-daemon_2.15.0.bb?h=3Dmaster
>>
>> And I did modify it, in order for disable some inheritance I do not
>> have. Concisely I know it will not configure, but the aim was just to
>> see if I can
>> download it via bitbake script.
>>
>> With the following in my modified recipe:
>>
>> HOMEPAGE =3D "https://www.genivi.org/"
>> SECTION =3D "console/utils"
>> LICENSE =3D "MPLv2"
>> LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D8184208060df880fe3137b93eb88a=
eea"
>>
>> DEPENDS =3D "dbus zlib"
>>
>> SRCREV =3D "e9a486a08fff6d3cc7133a350cec3ee10f463207"
>> SRC_URI =3D "git://github.com/GENIVI/${BPN}.git;protocol=3Dhttps"
>> S =3D "${WORKDIR}/git"
>>
>> ## inherit gzipnative autotools gettext cmake systemd
>> inherit autotools gettext cmake systemd
>>
>> PACKAGES +=3D "${PN}-systemd"
>> SYSTEMD_PACKAGES =3D "${PN} ${PN}-systemd"
>> SYSTEMD_SERVICE_${PN} =3D "dlt-system.service dlt.service"
>> SYSTEMD_AUTO_ENABLE_${PN} =3D "enable"
>> SYSTEMD_SERVICE_${PN}-systemd =3D "dlt-example-user.service \
>>     dlt-dbus.service \
>>     dlt-adaptor-udp.service \
>>     dlt-receive.service"
>> SYSTEMD_AUTO_ENABLE_${PN}-systemd =3D "disable"
>>
>> EXTRA_OECMAKE =3D "-DWITH_SYSTEMD=3DON"
>>
>> FILES_${PN}-doc +=3D "/usr/share/dlt-filetransfer"
>>
>> do_install_append() {
>>    rm -f ${D}${bindir}/dlt-test-*
>> }
>>
>> It did indeed downloaded (CLI follows below as proof), but failed to
>> configure (understandable, gzipnative does not exist in reference
>> poky):
>>
>> [user@localhost 2.15.0-r0]$ pwd
>> /home/user/YOCTO/oe_core_embedded/poky/build/tmp/work/core2-64-poky-linu=
x/dlt-daemon/2.15.0-r0
>> [user@localhost 2.15.0-r0]$ cd git
>> [user@localhost git]$ ls -al
>> total 148
>> drwxr-xr-x. 12 user user  4096 Dec 26 09:00 .
>> drwxrwxr-x. 11 user user  4096 Dec 26 09:04 ..
>> -rw-r--r--.  1 user user   555 Dec 26 09:00 AUTHORS
>> -rw-r--r--.  1 user user   209 Dec 26 09:00 automotive-dlt-c++.pc.in
>> -rw-r--r--.  1 user user   789 Dec 26 09:00 automotive-dlt.pc.in
>> -rw-r--r--.  1 user user  3694 Dec 26 09:00 automotive-dlt.spec.in
>> drwxr-xr-x.  2 user user  4096 Dec 26 09:00 cmake
>> -rw-r--r--.  1 user user 10616 Dec 26 09:00 CMakeLists.txt
>> -rw-r--r--.  1 user user   460 Dec 26 09:00 COPYING
>> -rw-r--r--.  1 user user   426 Dec 26 09:00 distfiles
>> drwxr-xr-x.  3 user user  4096 Dec 26 09:00 doc
>> drwxr-xr-x.  6 user user  4096 Dec 26 09:00 examples
>> drwxr-xr-x.  8 user user  4096 Dec 26 09:00 .git
>> -rw-r--r--.  1 user user   127 Dec 26 09:00 .gitignore
>> drwxr-xr-x. 16 user user  4096 Dec 26 09:00 gtest-1.7.0
>> drwxr-xr-x.  3 user user  4096 Dec 26 09:00 include
>> -rw-r--r--.  1 user user  7441 Dec 26 09:00 INSTALL
>> -rw-r--r--.  3 user user 16726 Dec 26 09:00 LICENSE
>> -rw-r--r--.  1 user user  2629 Dec 26 09:00 README
>> -rw-r--r--.  1 user user 27180 Dec 26 09:00 ReleaseNotes.txt
>> drwxr-xr-x. 15 user user  4096 Dec 26 09:00 src
>> drwxr-xr-x.  3 user user  4096 Dec 26 09:00 systemd
>> drwxr-xr-x.  3 user user  4096 Dec 26 09:00 tests
>> drwxr-xr-x.  4 user user  4096 Dec 26 09:00 testscripts
>> [user@localhost git]$
>>
>> The download problem become visible with the original master recipe:
>>
>> SRCREV =3D "e9a486a08fff6d3cc7133a350cec3ee10f463207"
>> SRC_URI =3D "git://github.com/GENIVI/${BPN}.git;protocol=3Dhttps \
>>     file://0002-Don-t-execute-processes-as-a-specific-user.patch \
>>     file://0004-Modify-systemd-config-directory.patch \
>>     "
>> S =3D "${WORKDIR}/git"
>>
>> Patch 0002 did not download. The same as you had for the original URI,
>> but, in my case, it was just a 0002. ... .patch.
>>
>> Hope this helps.
>>
>> Zoran
>>
>> On Tue, Dec 26, 2017 at 4:42 AM, Hou, Yong <Yong_Hou@mentor.com> wrote:
>>> Hello all,
>>>
>>>
>>> When i build the project based on yocto 2.0.2 using bitbake tool, i
>>> encountered one fetch error :
>>>
>>>  "Failed to fetch URL git://github.com/GENIVI/dlt-daemon.git;protocol=
=3Dhttps,
>>> attempting MIRRORS if available"
>>>
>>>
>>> Inside the bb file, there are following descriptions for this URL:
>>>
>>> SRC_URI =3D "git://github.com/GENIVI/dlt-daemon.git;protocol=3Dhttps"
>>> SRCREV =3D "e9a486a08fff6d3cc7133a350cec3ee10f463207"
>>>
>>>
>>> Then i tried to fetch it manually as below, source code can be download=
ed
>>> successfully and commit id is also correct.
>>> myproject$git clone git://github.com/GENIVI/dlt-daemon.git
>>>
>>> myproject/dlt-daemon$ git -c core.fsyncobjectfiles=3D0 branch --contain=
s
>>> e9a486a08fff6d3cc7133a350cec3ee10f463207
>>> * master
>>>
>>>
>>> I have no idea why such issue occurred for this URL when i use bitbake =
for
>>> build.
>>>
>>> Thanks for help.
>>>
>>>
>>> Following is the detail error log:
>>>
>>>
>>> NOTE: recipe gnome-common-native-3.14.0-r0: task do_compile: Started
>>> NOTE: recipe gnome-common-native-3.14.0-r0: task do_compile: Succeeded
>>> NOTE: Running task 687 of 5699 (ID: 5344,
>>> virtual:native:/home/yong/MEL/android/Oreo/2017ww45/VM0/Xen_GVTG_EC1746=
_RC1-DOM0/poky/meta/recipes-gnome/gnome/gnome-common_3.14.0.bb,
>>> do_install)
>>> NOTE: recipe gnome-common-native-3.14.0-r0: task do_install: Started
>>> NOTE: recipe gnome-common-native-3.14.0-r0: task do_install: Succeeded
>>> NOTE: Running task 688 of 5699 (ID: 5345,
>>> virtual:native:/home/yong/MEL/android/Oreo/2017ww45/VM0/Xen_GVTG_EC1746=
_RC1-DOM0/poky/meta/recipes-gnome/gnome/gnome-common_3.14.0.bb,
>>> do_populate_sysroot)
>>> NOTE: recipe gnome-common-native-3.14.0-r0: task do_populate_sysroot:
>>> Started
>>> NOTE: recipe gnome-common-native-3.14.0-r0: task do_populate_sysroot:
>>> Succeeded
>>> NOTE: Running task 689 of 5699 (ID: 569,
>>> /home/yong/MEL/android/Oreo/2017ww45/VM0/Xen_GVTG_EC1746_RC1-DOM0/poky/=
../meta-ias-ivi-adapt/recipes-extended/dlt-daemon/dlt-daemon_2.15.0.bb,
>>> do_fetch)
>>> NOTE: recipe dlt-daemon-2.15.0-r0: task do_fetch: Started
>>> WARNING: Failed to fetch URL
>>> git://github.com/GENIVI/dlt-daemon.git;protocol=3Dhttps, attempting MIR=
RORS if
>>> available
>>> ERROR: Fetcher failure: Fetch command failed with exit code 128, output=
:
>>> Cloning into bare repository
>>> '/home/yong/MEL/android/Oreo/2017ww45/VM0/Xen_GVTG_EC1746_RC1-DOM0/buil=
d/downloads/git2/github.com.GENIVI.dlt-daemon.git'...
>>> fatal: Unable to find remote helper for 'https'
>>>
>>> ERROR: Function failed: Fetcher failure for URL:
>>> 'git://github.com/GENIVI/dlt-daemon.git;protocol=3Dhttps'. Unable to fe=
tch URL
>>> from any source.
>>> ERROR: Logfile of failure stored in:
>>> /home/yong/MEL/android/Oreo/2017ww45/VM0/Xen_GVTG_EC1746_RC1-DOM0/build=
/tmp/work/corei7-64-poky-linux/dlt-daemon/2.15.0-r0/temp/log.do_fetch.14762
>>> NOTE: recipe dlt-daemon-2.15.0-r0: task do_fetch: Failed
>>> ERROR: Task 569
>>> (/home/yong/MEL/android/Oreo/2017ww45/VM0/Xen_GVTG_EC1746_RC1-DOM0/poky=
/../meta-ias-ivi-adapt/recipes-extended/dlt-daemon/dlt-daemon_2.15.0.bb,
>>> do_fetch) failed with exit code '1'
>>> NOTE: Running task 690 of 5699 (ID: 3025,
>>> /home/yong/MEL/android/Oreo/2017ww45/VM0/Xen_GVTG_EC1746_RC1-DOM0/poky/=
meta/recipes-devtools/cmake/cmake-native_3.3.1.bb,
>>> do_fetch)
>>> NOTE: recipe cmake-native-3.3.1-r0: task do_fetch: Started
>>> NOTE: recipe cmake-native-3.3.1-r0: task do_fetch: Succeeded
>>> WARNING: Checksum failure encountered with download of
>>> http://www.w3.org/XML/Test/xmlts20080827.tar.gz;name=3Dtesttar - will a=
ttempt
>>> other sources if available
>>> WARNING: Renaming
>>> /home/yong/MEL/android/Oreo/2017ww45/VM0/Xen_GVTG_EC1746_RC1-DOM0/build=
/downloads/xmlts20080827.tar.gz
>>> to
>>> /home/yong/MEL/android/Oreo/2017ww45/VM0/Xen_GVTG_EC1746_RC1-DOM0/build=
/downloads/xmlts20080827.tar.gz_bad-checksum_3a944b972f2da90b97d8a57c6f939f=
a8
>>> NOTE: recipe libxml2-2.9.2-r0: task do_fetch: Succeeded
>>> NOTE: recipe libxml2-native-2.9.2-r0: task do_fetch: Succeeded
>>> NOTE: recipe glibc-initial-2.22-r0: task do_fetch: Succeeded
>>> NOTE: recipe glibc-2.22-r0: task do_fetch: Succeeded
>>> NOTE: recipe cairo-1.14.2-r1: task do_fetch: Succeeded
>>> NOTE: recipe binutils-cross-x86_64-2.25.1-r0: task do_fetch: Succeeded
>>> NOTE: Sending SIGTERM to remaining 1 tasks
>>>
>>>
>>> SRC_URI =3D "git://github.com/GENIVI/dlt-daemon.git;protocol=3Dhttps \
>>>            file://0004-Modify-systemd-config-directory.patch \
>>>
>>> file://0005-Rework-of-initialization-cleanup-of-user-library.patch \
>>>            file://0006-Fix-buffer-overflow-in-dlt_message_payload.patch=
 \
>>>
>>> file://0007-Fix-segfault-when-calling-DLT_LOG-on-an-uninitialize.patch =
\
>>>            file://0008-Header-and-payload-logging-fixed.patch \
>>>            file://0009-Enabled-mutex-priority-inheritance.patch \
>>>            file://0010-Fix-SEGFAULT-in-write_-utf8_-string.patch \
>>>            file://10-tmp-dlt.conf \
>>>            "
>>> SRCREV =3D "e9a486a08fff6d3cc7133a350cec3ee10f463207"
>>>
>>>
>>> regards
>>>
>>> Yong
>>>
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>

