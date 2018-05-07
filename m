Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CA0BE00A75; Sun,  6 May 2018 23:41:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f169.google.com (mail-qt0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1510DE00A39
	for <yocto@yoctoproject.org>; Sun,  6 May 2018 23:41:30 -0700 (PDT)
Received: by mail-qt0-f169.google.com with SMTP id c2-v6so34898974qtn.9
	for <yocto@yoctoproject.org>; Sun, 06 May 2018 23:41:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=WSG7Qr5ZXSTJW0hm1BH/f7D9/Qz2OBzezsVocDwttvk=;
	b=GHKJS3qgRTFIKqe6S1clNNsRaC+k9un769vo/KFgZmFENSx+iKIcEVGbR+hxYZpIxS
	zicp8/YHCUqrxFxjz5+RpF4F0YouHk0EsSvKqfApg1nswNcW2aymYxoH8ntYrg8VKwn9
	jrO9ccfkGdOMvK+s8ASE7wslhTS3iFtbVdsX5VGOjJs4iFRPhneqMguuXivlvqA27+vr
	K/KOSGu8BdACT+r/gLJ1jjlDffGmQKfQDy29omP+1sY58Lnu1y2MU/FVLKTlqQABwxK1
	IgTrR9gUZWT5q/PC8oDxNU/ekbUXApi8yxoooxy6IguLW8w79h/2nKj8hmIRiMIOjN59
	uCSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=WSG7Qr5ZXSTJW0hm1BH/f7D9/Qz2OBzezsVocDwttvk=;
	b=JSFWbxsa8HaTIdTOlSal6zfftLHxbBGZG5pvRx3zrnLPlZh4YMflqAgJ8qpqQLYUOx
	SuzyfOHogEzk9XzRmgLgDmjPMayjfPhBTuOVTN1Wy6qRIXlTGVk0PTg860LgBl6EboqD
	zu5WZ2J3VH9crrJz0HqXOOaCg1PEHTlWtfquld0FUHhDhFxMb+aUoumDd6gasuZIyhXO
	PwlOCfF2kUjMPcxfuSVrDYlYi8X3B3VJ3hj9aJoYYDQ2ap2IyjKYZlmjHlYlu1b0GQKu
	+xFBVGiHLNPpO+kDClmrwoiEPIfFdGNryXyGE9S+MyrtSyQabNDul3lgFU4RSSawyqFH
	Gcxg==
X-Gm-Message-State: ALQs6tAq7qj9XOMySoKaugtIwU6HiLUu1nLCXY6ggbG6DgmnRVgqha+U
	QlZgB7rJRgjf9GVXv+PKcUawPmOdnK2BSjZb0fYt5A==
X-Google-Smtp-Source: AB8JxZqvTNuFNQ/Un9CsfEZ7kmlN0/pJYs4sdYZBJ6Sn3b+7fScq38T4VK6g9O41Tfl3ekZkWnZA5cHqd3Ew4anTBLE=
X-Received: by 2002:ac8:18f9:: with SMTP id
	o54-v6mr33455976qtk.353.1525675289350; 
	Sun, 06 May 2018 23:41:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.173.106 with HTTP; Sun, 6 May 2018 23:41:28 -0700 (PDT)
In-Reply-To: <AM5PR0902MB2034E7A84703702D64ED675E87820@AM5PR0902MB2034.eurprd09.prod.outlook.com>
References: <AM5PR0902MB2034E7A84703702D64ED675E87820@AM5PR0902MB2034.eurprd09.prod.outlook.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 7 May 2018 08:41:28 +0200
Message-ID: <CAGAf8LxKb-_p7DBYGw_XzURjLg-a2UAnd9scwye=AZywoagMkA@mail.gmail.com>
To: Luis Martins <luis_martins_5@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Help with Bitbake: (bitbake-layers show-recipes)
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
X-List-Received-Date: Mon, 07 May 2018 06:41:33 -0000
X-Groupsio-MsgNum: 41020
Content-Type: multipart/related; boundary="000000000000aa3af8056b97f580"

--000000000000aa3af8056b97f580
Content-Type: multipart/alternative; boundary="000000000000aa3af6056b97f57f"

--000000000000aa3af6056b97f57f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hmmmm... I called my best friend www.google.com to the help, since it seems
to me that you are trying to do Docker, and that you need to set your
kernel differently then it is done by default.

The link I found: definitely worth trying/reading. At least, I should say.

In the book: Embedded Linux Development Using Yocto Project Cookbook:
Practical recipes (Second Edition) By Alex Gonz=C3=A1lez it says (pages 338=
 and
339):

Yocto Cookbook page 339
<https://books.google.de/books?id=3D6NRJDwAAQBAJ&pg=3DPA339&lpg=3DPA339&dq=
=3D"DISTRO_FEATURES_append+%3D+"+virtualization""&source=3Dbl&ots=3DREWctm4=
BHL&sig=3DmfSLf5CMRi-TNL3piIbsIO82Da8&hl=3Den&sa=3DX&ved=3D0ahUKEwjr7Ifl-_L=
aAhVsCcAKHfzSA0oQ6AEINzAC#v=3Donepage&q=3D"DISTRO_FEATURES_append%20%3D%20"=
%20virtualization""&f=3Dfalse>

Please, go to the page 339 and read carefully both 338 and 339 pages.

Please, let us all know if this helps! ;-)

Zoran
_______

On Mon, Apr 30, 2018 at 6:18 PM, Luis Martins <luis_martins_5@hotmail.com>
wrote:

> Good afternoon,
>
> The path that lead me to bitbake's recipe building is going to be
> presented next, if the setup isn't important the warnings and errors are
> highlited in green and you can skip it to there.
>
> Similar to this thread
> <https://community.arm.com/dev-platforms/f/discussions/157/issue-of-build=
ing-the-openembedded-filesysytem-from-source-for-juno>,
> i'm having some hard time building the openembedded filesystem.
> So far I have managed to follow this tutorial
> <https://community.arm.com/dev-platforms/w/docs/303/juno> until the
> "Booting the board" section. After running the board some errors appear
> during the execution:
>
> [image: Inline image OWAPstImg945310]
> [image: Inline image OWAPstImg953070]
>
> This lead me to follow the *"Addendum B: Building the OpenEmbedded
> filesysytem from source" *
> (I thought this part was optional since in this section "Initialising a
> workspace" it says "The script will guide you through the process of
> initialising your workspace, automatically downloading all relevant sourc=
e
> files and required binaries.")
>
> I executed this commands with no problems:
>
> */* Create workspace */*
>
> */* WARNING: Do *not* create this as a subdirectory of the main Linaro Ar=
m
> Platforms workspace created by `workspace_yy.mm <http://workspace_yy.mm>'
> above */*
>
> *$ mkdir openembedded*
>
> *$ cd openembedded*
>
> *$ export OE_HOME=3D`pwd`*
>
> *$ git clone git://git.linaro.org/openembedded/jenkins-setup.git
> <http://git.linaro.org/openembedded/jenkins-setup.git>*
>
> *$ cd $OE_HOME/jenkins-setup*
>
> *$ git checkout release-YY.MM*
>
> *$ cd $OE_HOME*
>
> *$ sudo jenkins-setup/pre-build-root-install-dependencies.sh*
>
> *$ jenkins-setup/init-and-build.sh*
>
> *$ cd $OE_HOME/openembedded-core*
>
> *$ ./oe-init-build-env*
>
> */* Add bitbake to your $PATH */*
>
> *$ export PATH=3D$OE_HOME/openembedded-core/bi**tbake/bin:$PATH*
>
>
> But, after running this commands:
>
> *$ cd $OE_HOME/build*
>
> *$ bitbake-layers show-recip**es*
>
>
> I get the following Warnings and Errors (from the log file located in the
> directory /Desktop/openembedded/build/tmp-glibc/log/cooker)):
>
> *WARNING:
> /home/lfpm1993/Desktop/openembedded/meta-linaro/meta-ilp32/recipes-overla=
yed/glibc/glibc_2.26.bb
> <http://glibc_2.26.bb>: Exception during build_dependencies for do_instal=
l*
>
> *WARNING:
> /home/lfpm1993/Desktop/openembedded/meta-linaro/meta-ilp32/recipes-overla=
yed/glibc/glibc_2.26.bb
> <http://glibc_2.26.bb>: Error during finalise of
> /home/lfpm1993/Desktop/openembedded/meta-linaro/meta-ilp32/recipes-overla=
yed/glibc/glibc_2.26.bb
> <http://glibc_2.26.bb>*
>
> *WARNING:
> /home/lfpm1993/Desktop/openembedded/meta-linaro/meta-ilp32/recipes-overla=
yed/glibc/glibc-initial_2.26.bb
> <http://glibc-initial_2.26.bb>: Exception during build_dependencies for
> do_install*
>
> *WARNING:
> /home/lfpm1993/Desktop/openembedded/meta-linaro/meta-ilp32/recipes-overla=
yed/glibc/glibc-initial_2.26.bb
> <http://glibc-initial_2.26.bb>: Error during finalise of
> /home/lfpm1993/Desktop/openembedded/meta-linaro/meta-ilp32/recipes-overla=
yed/glibc/glibc-initial_2.26.bb
> <http://glibc-initial_2.26.bb>*
>
> *ERROR: ExpansionError during parsing
> /home/lfpm1993/Desktop/openembedded/meta-linaro/meta-ilp32/recipes-overla=
yed/glibc/glibc_2.26.bb
> <http://glibc_2.26.bb>*
>
> *Traceback (most recent call last):*
>
> *bb.data_smart.ExpansionError: Failure expanding variable do_install,
> expression was                oe_runmake
> install_root=3D/home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/a=
arch64-oe-linux/glibc/2.26-r0/image
> install*
>
> *                for r in bootparam_prot.x nlm_prot.x rstat.x
>  yppasswd.x klm_prot.x rex.x sm_inter.x mount.x           rusers.x spray.=
x
> nfs_prot.x rquota.x key_prot.x; do*
>
> *                                h=3D`echo $r|sed -e's,\.x$,.h,'`*
>
> *                                install -m 0644
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/git/sunrpc/rpcsvc/$h
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/image//usr/include/rpcsvc/*
>
> *                done*
>
> *                install -Dm 0644
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/etc/ld.so.conf
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/image//etc/ld.so.conf*
>
> *                install -d
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/image/usr/lib/locale*
>
> *                make -f
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/generate-supported.mk
> <http://generate-supported.mk>
> IN=3D"/home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe=
-linux/glibc/2.26-r0/git/localedata/SUPPORTED"
> OUT=3D"/home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-o=
e-linux/glibc/2.26-r0/SUPPORTED"*
>
> *                # get rid of some broken files...*
>
> *                for i in ; do*
>
> *                                sed -i "/$i/d"
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/SUPPORTED*
>
> *                done*
>
> *                rm -f
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/image/etc/rpc*
>
> *                rm -rf
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/image/usr/share/zoneinfo*
>
> *                rm -rf
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/image/usr/libexec/getconf*
>
> *                rm -f
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/image/etc/localtime*
>
> *                rm -rf
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/image/var*
>
>
> *                # remove empty glibc dir*
>
> *                if [ -d
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/image/usr/libexec
> ]; then*
>
> *                                rmdir --ignore-fail-on-non-empty
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/image/usr/libexec*
>
> *                fi*
>
>
> *                oe_multilib_header bits/syscall.h bits/long-double.h*
>
>
> *                if [ -f
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/image/usr/bin/mtrace
> ]; then*
>
> *                                sed -i -e '1s,#!.*perl,#! /usr/bin/env
> perl,' -e '2s,exec.*perl,exec /usr/bin/env perl,'
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/image/usr/bin/mtrace*
>
> *                fi*
>
> *                rm -rf
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/image/usr/include/rpcsvc/rquota**
>
> *                # Info dir listing isn't interesting at this point so
> remove it if it exists.*
>
> *                if [ -e
> "/home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linu=
x/glibc/2.26-r0/image/usr/share/info/dir"
> ]; then*
>
> *                                rm -f
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/image/usr/share/info/dir*
>
> *                fi*
>
>
> *                if ! ${@bb.utils.contains('DISTRO_FEATURES', 'ldconfig',
> 'true', 'false', d)}; then*
>
> *                                # The distro doesn't want these files so
> let's not install them*
>
> *                                rm -f
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/image/etc/ld.so.conf*
>
> *                                rm -f
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/image/sbin/ldconfig*
>
> *                                # This directory will be empty now so
> remove it too.*
>
> *                                # But check whether it exists first,
> since it won't for glibc-initial.*
>
> *                                if [ -d
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/image/etc
> ]; then*
>
> *                                               rmdir
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/image/etc*
>
> *                                fi*
>
> *                fi*
>
>
> *                if echo glibc|grep -q "glibc-initial"; then*
>
> *                                return*
>
> *                fi*
>
>
> *                install -d
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/image/etc/init.d*
>
> *                install -d
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/image/var/db/nscd*
>
> *                install -m 0755
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/git/nscd/nscd.init
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/image/etc/init.d/nscd*
>
> *                install -m 0755
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/git/nscd/nscd.conf
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/image/etc/nscd.conf*
>
> *                sed -i "s%daemon%start-stop-daemon --start --exec%g"
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/image/etc/init.d/nscd*
>
>
> *                install -d
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/image/lib/systemd/system*
>
> *                install -m 0644
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/git/nscd/nscd.service
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/image/lib/systemd/system/*
>
>
> *                if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd',
> 'true', 'false', d)}; then*
>
> *                                install -d
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/image/etc/tmpfiles.d*
>
> *                                echo "d /run/nscd 755 root root -" \*
>
> *                                               >
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/image/etc/tmpfiles.d/nscd.conf*
>
> *                else*
>
> *                                install -d
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/image/etc/default/volatiles*
>
> *                                echo "d root root 0755 /var/run/nscd
> none" \*
>
> *                                               >
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/image/etc/default/volatiles/98_nscd*
>
> *                fi*
>
> *                if [ "/lib" !=3D "/lib" ] ; then*
>
> *                                # The aarch64 ABI says the dynamic linke=
r
> -must- be /lib/ld-linux-aarch64[_be].so.1*
>
> *                                install -d
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/image/lib*
>
> *                                if [ -e
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/image/lib/ld-linux-aarch64.so.1
> ]; then*
>
> *                                                ln -s
> ${@base_path_relative('/lib', '/lib')}/ld-linux-aarch64.so.1 \*
>
> *
>  /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linu=
x/glibc/2.26-r0/image/lib/ld-linux-aarch64.so.1*
>
> *                                elif [ -e
> /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linux=
/glibc/2.26-r0/image/lib/ld-linux-aarch64_be.so.1
> ]; then*
>
> *                                               ln -s
> ${@base_path_relative('/lib', '/lib')}/ld-linux-aarch64_be.so.1 \*
>
> *
>  /home/lfpm1993/Desktop/openembedded/build/tmp-glibc/work/aarch64-oe-linu=
x/glibc/2.26-r0/image/lib/ld-linux-aarch64_be.so.1*
>
> *                                fi*
>
> *                fi*
>
> *                do_install_armm**ultilib*
>
> *which triggered exception NameError: name 'base_path_relative' is not
> defined*
>
>
>
> The only thing I changed from the original files was that I added *"DISTR=
O_FEATURES_append
> =3D " virtualization"*" to the /Desktop/openembedded/meta-
> virtualization/layers.conf.
> Executing uname -a gives:
> Linux lfpm1993-virtual-machine 4.13.0-39-generic #44~16.04.1-Ubuntu SMP
> Thu Apr 5 16:43:10 UTC 2018 x86_64 x86_64 x86_64
>
> So, my question is how do I solve those warnings and errors?
>
> Thanks for helping me,
> Luis Martins
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--000000000000aa3af6056b97f57f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hmmmm... I called my best friend <a href=3D"http://www.goo=
gle.com">www.google.com</a> to the help, since it seems to me that you are =
trying to do Docker, and that you need to set your kernel differently then =
it is done by default.<div><br></div><div>The link I found: definitely wort=
h trying/reading. At least, I should say.</div><div><br></div><div>

<h1 class=3D"gmail-gb-volume-title" dir=3D"ltr" style=3D"display:block;font=
-size:11.869px;margin:0px;color:rgb(51,51,51);font-family:Arial,sans-serif;=
font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-de=
coration-style:initial;text-decoration-color:initial"><span style=3D"font-w=
eight:normal">In the book:</span><span style=3D"font-weight:bold"> Embedded=
 Linux Development Using Yocto Project Cookbook: Practical recipes (Second =
Edition) By Alex Gonz=C3=A1lez </span><span style=3D"font-weight:normal">it=
 says (pages 338 and 339):</span><span style=3D"font-family:arial,sans-seri=
f;font-size:small;font-weight:normal;color:rgb(34,34,34)"></span></h1></div=
><div><span style=3D"font-weight:normal"><br></span></div><div><span style=
=3D"font-weight:normal"><a href=3D"https://books.google.de/books?id=3D6NRJD=
wAAQBAJ&amp;pg=3DPA339&amp;lpg=3DPA339&amp;dq=3D&quot;DISTRO_FEATURES_appen=
d+%3D+&quot;+virtualization&quot;&quot;&amp;source=3Dbl&amp;ots=3DREWctm4BH=
L&amp;sig=3DmfSLf5CMRi-TNL3piIbsIO82Da8&amp;hl=3Den&amp;sa=3DX&amp;ved=3D0a=
hUKEwjr7Ifl-_LaAhVsCcAKHfzSA0oQ6AEINzAC#v=3Donepage&amp;q=3D&quot;DISTRO_FE=
ATURES_append%20%3D%20&quot;%20virtualization&quot;&quot;&amp;f=3Dfalse">Yo=
cto Cookbook page 339</a><br></span></div><div><br></div><div>Please, go to=
 the page 339 and read carefully both 338 and 339 pages.</div><div><br></di=
v><div>Please, let us all know if this helps! ;-)</div><div><br></div><div>=
Zoran</div><div>_______</div></div><div class=3D"gmail_extra"><br><div clas=
s=3D"gmail_quote">On Mon, Apr 30, 2018 at 6:18 PM, Luis Martins <span dir=
=3D"ltr">&lt;<a href=3D"mailto:luis_martins_5@hotmail.com" target=3D"_blank=
">luis_martins_5@hotmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex">




<div dir=3D"ltr">
<div id=3D"m_8628374641230203970divtagdefaultwrapper" style=3D"font-size:12=
pt;color:#000000;font-family:Calibri,Helvetica,sans-serif" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0"></p>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font=
-size:16px">
Good afternoon,</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font=
-size:16px">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font=
-size:16px">
The path that lead me to bitbake&#39;s recipe building is going to be prese=
nted next, if the setup isn&#39;t important the warnings and errors are hig=
hlited in green and you can skip it to there.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font=
-size:16px">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font=
-size:16px">
Similar to=C2=A0<a href=3D"https://community.arm.com/dev-platforms/f/discus=
sions/157/issue-of-building-the-openembedded-filesysytem-from-source-for-ju=
no" rel=3D"noopener noreferrer" class=3D"m_8628374641230203970x_OWAAutoLink=
" id=3D"m_8628374641230203970LPlnk78529" target=3D"_blank">this thread</a>,
 i&#39;m having some hard time building the openembedded filesystem.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font=
-size:16px">
So far I have managed to follow=C2=A0<a href=3D"https://community.arm.com/d=
ev-platforms/w/docs/303/juno" rel=3D"noopener noreferrer" class=3D"m_862837=
4641230203970x_OWAAutoLink" id=3D"m_8628374641230203970LPlnk989448" target=
=3D"_blank">this tutorial</a>=C2=A0until the &quot;Booting the board&quot; =
section.
 After running the board some errors appear during the execution:</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font=
-size:16px">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font=
-size:16px">
<img size=3D"20030" id=3D"m_8628374641230203970OWAPstImg945310" style=3D"ma=
x-width:544px;max-height:248px;width:544px" class=3D"m_8628374641230203970E=
mojiInsert" alt=3D"Inline image OWAPstImg945310" src=3D"cid:baff0da2-52a1-4=
6e2-891a-9f7a8975beb4"><br>
<img size=3D"5529" id=3D"m_8628374641230203970OWAPstImg953070" style=3D"max=
-width:492px;max-height:69px;width:492px" class=3D"m_8628374641230203970Emo=
jiInsert" alt=3D"Inline image OWAPstImg953070" src=3D"cid:f2fd8f4d-8646-4a7=
7-8910-1e17a08d76ba"><br>
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font=
-size:16px">
This lead me to follow the=C2=A0<b><span style=3D"color:rgb(255,0,0)">&quot=
;Addendum B: Building the OpenEmbedded filesysytem from source&quot;=C2=A0<=
/span></b></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font=
-size:16px">
(I thought this part was optional since in this section &quot;Initialising =
a workspace&quot; it says &quot;The script will guide you through the proce=
ss of initialising your workspace, automatically downloading all relevant s=
ource files and required binaries.&quot;)</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font=
-size:16px">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font=
-size:16px">
I executed this commands with no problems:</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font=
-size:16px">
<br>
</div>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font-s=
ize:16px">
</p>
<blockquote style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFo=
nt;font-size:16px;margin:0px 0px 0px 40px;border:none;padding:0px">
<p></p>
<div><span style=3D"color:rgb(0,111,201)"><b>/* Create workspace */</b></sp=
an></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(0,111,201)"><b>/* WARNING: Do *not* create th=
is as a subdirectory of the main Linaro Arm Platforms workspace created by =
`<a href=3D"http://workspace_yy.mm" target=3D"_blank">workspace_yy.mm</a>&#=
39; above */</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(0,111,201)"><b>$ mkdir openembedded</b></span=
></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(0,111,201)"><b>$ cd openembedded</b></span></=
div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(0,111,201)"><b>$ export OE_HOME=3D`pwd`</b></=
span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(0,111,201)"><b>$ git clone git://<a href=3D"h=
ttp://git.linaro.org/openembedded/jenkins-setup.git" target=3D"_blank">git.=
linaro.org/<wbr>openembedded/jenkins-setup.git</a></b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(0,111,201)"><b>$ cd $OE_HOME/jenkins-setup</b=
></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(0,111,201)"><b>$ git checkout release-YY.MM</=
b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(0,111,201)"><b>$ cd $OE_HOME</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(0,111,201)"><b>$ sudo jenkins-setup/pre-build=
-root-<wbr>install-dependencies.sh</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(0,111,201)"><b>$ jenkins-setup/init-and-build=
.<wbr>sh</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(0,111,201)"><b>$ cd $OE_HOME/openembedded-cor=
e</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(0,111,201)"><b>$ ./oe-init-build-env</b></spa=
n></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(0,111,201)"><b>/* Add bitbake to your $PATH *=
/</b></span></div>
<p></p>
<p></p>
<div><b><span style=3D"color:rgb(0,111,201)">$ export PATH=3D$OE_HOME/opene=
mbedded-<wbr>core/bi</span></b><span style=3D"color:rgb(0,111,201)"><b>tbak=
e/bin:$PATH</b></span></div>
<p></p>
</blockquote>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font-s=
ize:16px">
</p>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font=
-size:16px">
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font=
-size:16px">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font=
-size:16px">
But, after running this commands:</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font=
-size:16px">
<br>
</div>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font-s=
ize:16px">
</p>
<blockquote style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFo=
nt;font-size:16px;margin:0px 0px 0px 40px;border:none;padding:0px">
<p></p>
<div><span style=3D"color:rgb(0,111,201)"><b>$ cd $OE_HOME/build</b></span>=
</div>
<p></p>
<p></p>
<div><b><span style=3D"color:rgb(0,111,201)">$ bitbake-layers show-recip</s=
pan></b><span style=3D"color:rgb(0,111,201)"><b>es</b></span></div>
<p></p>
</blockquote>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font-s=
ize:16px">
</p>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font=
-size:16px">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font=
-size:16px">
I get the following Warnings and Errors (from the log file located in the d=
irectory /Desktop/openembedded/build/<wbr>tmp-glibc/log/cooker)):</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font=
-size:16px">
<br>
</div>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font-s=
ize:16px">
</p>
<blockquote style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFo=
nt;font-size:16px;margin:0px 0px 0px 40px;border:none;padding:0px">
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>WARNING: /home/lfpm1993/Deskto=
p/<wbr>openembedded/meta-linaro/meta-<wbr>ilp32/recipes-overlayed/glibc/<a =
href=3D"http://glibc_2.26.bb" target=3D"_blank"><wbr>glibc_2.26.bb</a>: Exc=
eption during build_dependencies for do_install</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>WARNING: /home/lfpm1993/Deskto=
p/<wbr>openembedded/meta-linaro/meta-<wbr>ilp32/recipes-overlayed/glibc/<a =
href=3D"http://glibc_2.26.bb" target=3D"_blank"><wbr>glibc_2.26.bb</a>: Err=
or during finalise of /home/lfpm1993/Desktop/<wbr>openembedded/meta-linaro/=
meta-<wbr>ilp32/recipes-overlayed/glibc/<a href=3D"http://glibc_2.26.bb" ta=
rget=3D"_blank"><wbr>glibc_2.26.bb</a></b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>WARNING: /home/lfpm1993/Deskto=
p/<wbr>openembedded/meta-linaro/meta-<wbr>ilp32/recipes-overlayed/glibc/<a =
href=3D"http://glibc-initial_2.26.bb" target=3D"_blank"><wbr>glibc-initial_=
2.26.bb</a>: Exception during build_dependencies for do_install</b></span><=
/div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>WARNING: /home/lfpm1993/Deskto=
p/<wbr>openembedded/meta-linaro/meta-<wbr>ilp32/recipes-overlayed/glibc/<a =
href=3D"http://glibc-initial_2.26.bb" target=3D"_blank"><wbr>glibc-initial_=
2.26.bb</a>: Error during finalise of /home/lfpm1993/Desktop/<wbr>openembed=
ded/meta-linaro/meta-<wbr>ilp32/recipes-overlayed/glibc/<a href=3D"http://g=
libc-initial_2.26.bb" target=3D"_blank"><wbr>glibc-initial_2.26.bb</a></b><=
/span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>ERROR: ExpansionError during p=
arsing /home/lfpm1993/Desktop/<wbr>openembedded/meta-linaro/meta-<wbr>ilp32=
/recipes-overlayed/glibc/<a href=3D"http://glibc_2.26.bb" target=3D"_blank"=
><wbr>glibc_2.26.bb</a></b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>Traceback (most recent call la=
st):</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>bb.data_smart.ExpansionError: =
Failure expanding variable do_install, expression was=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 oe_runmake install_root=3D/home/lfpm1993=
/<wbr>Desktop/openembedded/build/<wbr>tmp-glibc/work/aarch64-oe-<wbr>linux/=
glibc/2.26-r0/image
 install</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 for r in bootparam_prot.x nlm_prot.x rstat.x=C2=
=A0 =C2=A0 =C2=A0 =C2=A0yppasswd.x klm_prot.x rex.x sm_inter.x mount.x=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rusers.x spray.x nfs_prot.x rquota.x =
key_prot.x; do</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 h=3D`echo $r|sed -e&#39;s,\.x$,.h,&#39;`</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 install -m 0644 /home/lfpm1993/Desktop/<wbr>openembedded/build/t=
mp-glibc/<wbr>work/aarch64-oe-linux/glibc/2.<wbr>26-r0/git/sunrpc/rpcsvc/$h=
 /home/lfpm1993/Desktop/<wbr>openembedded/build/tmp-glibc/<wbr>work/aarch64=
-oe-linux/glibc/2.<wbr>26-r0/image//usr/include/<wbr>rpcsvc/</b></span></di=
v>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 done</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -Dm 0644 /home/lfpm1993/Desktop/<wbr>op=
enembedded/build/tmp-glibc/<wbr>work/aarch64-oe-linux/glibc/2.<wbr>26-r0/et=
c/ld.so.conf /home/lfpm1993/Desktop/<wbr>openembedded/build/tmp-glibc/<wbr>=
work/aarch64-oe-linux/glibc/2.<wbr>26-r0/image//etc/ld.so.conf</b></span></=
div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d /home/lfpm1993/Desktop/<wbr>openembe=
dded/build/tmp-glibc/<wbr>work/aarch64-oe-linux/glibc/2.<wbr>26-r0/image/us=
r/lib/locale</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 make -f /home/lfpm1993/Desktop/<wbr>openembedde=
d/build/tmp-glibc/<wbr>work/aarch64-oe-linux/glibc/2.<wbr>26-r0/<a href=3D"=
http://generate-supported.mk" target=3D"_blank">generate-supported.mk</a> I=
N=3D&quot;/home/lfpm1993/Desktop/<wbr>openembedded/build/tmp-glibc/<wbr>wor=
k/aarch64-oe-linux/glibc/2.<wbr>26-r0/git/localedata/<wbr>SUPPORTED&quot;
 OUT=3D&quot;/home/lfpm1993/Desktop/<wbr>openembedded/build/tmp-glibc/<wbr>=
work/aarch64-oe-linux/glibc/2.<wbr>26-r0/SUPPORTED&quot;</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # get rid of some broken files...</b></span></d=
iv>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 for i in ; do</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 sed -i &quot;/$i/d&quot; /home/lfpm1993/Desktop/<wbr>openembedde=
d/build/tmp-glibc/<wbr>work/aarch64-oe-linux/glibc/2.<wbr>26-r0/SUPPORTED</=
b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 done</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rm -f /home/lfpm1993/Desktop/<wbr>openembedded/=
build/tmp-glibc/<wbr>work/aarch64-oe-linux/glibc/2.<wbr>26-r0/image/etc/rpc=
</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rm -rf /home/lfpm1993/Desktop/<wbr>openembedded=
/build/tmp-glibc/<wbr>work/aarch64-oe-linux/glibc/2.<wbr>26-r0/image/usr/sh=
are/zoneinfo</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rm -rf /home/lfpm1993/Desktop/<wbr>openembedded=
/build/tmp-glibc/<wbr>work/aarch64-oe-linux/glibc/2.<wbr>26-r0/image/usr/li=
bexec/<wbr>getconf</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rm -f /home/lfpm1993/Desktop/<wbr>openembedded/=
build/tmp-glibc/<wbr>work/aarch64-oe-linux/glibc/2.<wbr>26-r0/image/etc/loc=
altime</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rm -rf /home/lfpm1993/Desktop/<wbr>openembedded=
/build/tmp-glibc/<wbr>work/aarch64-oe-linux/glibc/2.<wbr>26-r0/image/var</b=
></span></div>
<p></p>
<p></p>
<div><b><br>
</b></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # remove empty glibc dir</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ -d /home/lfpm1993/Desktop/<wbr>openembedde=
d/build/tmp-glibc/<wbr>work/aarch64-oe-linux/glibc/2.<wbr>26-r0/image/usr/l=
ibexec ]; then</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 rmdir --ignore-fail-on-non-empty /home/lfpm1993/Desktop/<wbr>ope=
nembedded/build/tmp-glibc/<wbr>work/aarch64-oe-linux/glibc/2.<wbr>26-r0/ima=
ge/usr/libexec</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 fi</b></span></div>
<p></p>
<p></p>
<div><b><br>
</b></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 oe_multilib_header bits/syscall.h bits/long-dou=
ble.h</b></span></div>
<p></p>
<p></p>
<div><b><br>
</b></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ -f /home/lfpm1993/Desktop/<wbr>openembedde=
d/build/tmp-glibc/<wbr>work/aarch64-oe-linux/glibc/2.<wbr>26-r0/image/usr/b=
in/mtrace ]; then</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 sed -i -e &#39;1s,#!.*perl,#! /usr/bin/env perl,&#39; -e &#39;2s=
,exec.*perl,exec /usr/bin/env perl,&#39; /home/lfpm1993/Desktop/<wbr>openem=
bedded/build/tmp-glibc/<wbr>work/aarch64-oe-linux/glibc/2.<wbr>26-r0/image/=
usr/bin/mtrace</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 fi</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rm -rf /home/lfpm1993/Desktop/<wbr>openembedded=
/build/tmp-glibc/<wbr>work/aarch64-oe-linux/glibc/2.<wbr>26-r0/image/usr/in=
clude/<wbr>rpcsvc/rquota*</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Info dir listing isn&#39;t interesting at thi=
s point so remove it if it exists.</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ -e &quot;/home/lfpm1993/Desktop/<wbr>opene=
mbedded/build/tmp-glibc/<wbr>work/aarch64-oe-linux/glibc/2.<wbr>26-r0/image=
/usr/share/info/<wbr>dir&quot; ]; then</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 rm -f /home/lfpm1993/Desktop/<wbr>openembedded/build/tmp-glibc/<=
wbr>work/aarch64-oe-linux/glibc/2.<wbr>26-r0/image/usr/share/info/dir</b></=
span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 fi</b></span></div>
<p></p>
<p></p>
<div><b><br>
</b></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if ! ${@bb.utils.contains(&#39;DISTRO_<wbr>FEAT=
URES&#39;, &#39;ldconfig&#39;, &#39;true&#39;, &#39;false&#39;, d)}; then</=
b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 # The distro doesn&#39;t want these files so let&#39;s not insta=
ll them</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 rm -f /home/lfpm1993/Desktop/<wbr>openembedded/build/tmp-glibc/<=
wbr>work/aarch64-oe-linux/glibc/2.<wbr>26-r0/image/etc/ld.so.conf</b></span=
></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 rm -f /home/lfpm1993/Desktop/<wbr>openembedded/build/tmp-glibc/<=
wbr>work/aarch64-oe-linux/glibc/2.<wbr>26-r0/image/sbin/ldconfig</b></span>=
</div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 # This directory will be empty now so remove it too.</b></span><=
/div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 # But check whether it exists first, since it won&#39;t for glib=
c-initial.</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 if [ -d /home/lfpm1993/Desktop/<wbr>openembedded/build/tmp-glibc=
/<wbr>work/aarch64-oe-linux/glibc/2.<wbr>26-r0/image/etc ]; then</b></span>=
</div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rmdir /ho=
me/lfpm1993/Desktop/<wbr>openembedded/build/tmp-glibc/<wbr>work/aarch64-oe-=
linux/glibc/2.<wbr>26-r0/image/etc</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 fi</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 fi</b></span></div>
<p></p>
<p></p>
<div><b><br>
</b></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if echo glibc|grep -q &quot;glibc-initial&quot;=
; then</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 return</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 fi</b></span></div>
<p></p>
<p></p>
<div><b><br>
</b></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d /home/lfpm1993/Desktop/<wbr>openembe=
dded/build/tmp-glibc/<wbr>work/aarch64-oe-linux/glibc/2.<wbr>26-r0/image/et=
c/init.d</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d /home/lfpm1993/Desktop/<wbr>openembe=
dded/build/tmp-glibc/<wbr>work/aarch64-oe-linux/glibc/2.<wbr>26-r0/image/va=
r/db/nscd</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 0755 /home/lfpm1993/Desktop/<wbr>ope=
nembedded/build/tmp-glibc/<wbr>work/aarch64-oe-linux/glibc/2.<wbr>26-r0/git=
/nscd/nscd.init /home/lfpm1993/Desktop/<wbr>openembedded/build/tmp-glibc/<w=
br>work/aarch64-oe-linux/glibc/2.<wbr>26-r0/image/etc/init.d/nscd</b></span=
></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 0755 /home/lfpm1993/Desktop/<wbr>ope=
nembedded/build/tmp-glibc/<wbr>work/aarch64-oe-linux/glibc/2.<wbr>26-r0/git=
/nscd/nscd.conf /home/lfpm1993/Desktop/<wbr>openembedded/build/tmp-glibc/<w=
br>work/aarch64-oe-linux/glibc/2.<wbr>26-r0/image/etc/nscd.conf</b></span><=
/div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sed -i &quot;s%daemon%start-stop-daemon --start=
 --exec%g&quot; /home/lfpm1993/Desktop/<wbr>openembedded/build/tmp-glibc/<w=
br>work/aarch64-oe-linux/glibc/2.<wbr>26-r0/image/etc/init.d/nscd</b></span=
></div>
<p></p>
<p></p>
<div><b><br>
</b></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d /home/lfpm1993/Desktop/<wbr>openembe=
dded/build/tmp-glibc/<wbr>work/aarch64-oe-linux/glibc/2.<wbr>26-r0/image/li=
b/systemd/system</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 0644 /home/lfpm1993/Desktop/<wbr>ope=
nembedded/build/tmp-glibc/<wbr>work/aarch64-oe-linux/glibc/2.<wbr>26-r0/git=
/nscd/nscd.service /home/lfpm1993/Desktop/<wbr>openembedded/build/tmp-glibc=
/<wbr>work/aarch64-oe-linux/glibc/2.<wbr>26-r0/image/lib/systemd/<wbr>syste=
m/</b></span></div>
<p></p>
<p></p>
<div><b><br>
</b></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if ${@bb.utils.contains(&#39;DISTRO_<wbr>FEATUR=
ES&#39;, &#39;systemd&#39;, &#39;true&#39;, &#39;false&#39;, d)}; then</b><=
/span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 install -d /home/lfpm1993/Desktop/<wbr>openembedded/build/tmp-gl=
ibc/<wbr>work/aarch64-oe-linux/glibc/2.<wbr>26-r0/image/etc/tmpfiles.d</b><=
/span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 echo &quot;d /run/nscd 755 root root -&quot; \</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; /hom=
e/lfpm1993/Desktop/<wbr>openembedded/build/tmp-glibc/<wbr>work/aarch64-oe-l=
inux/glibc/2.<wbr>26-r0/image/etc/tmpfiles.d/<wbr>nscd.conf</b></span></div=
>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 else</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 install -d /home/lfpm1993/Desktop/<wbr>openembedded/build/tmp-gl=
ibc/<wbr>work/aarch64-oe-linux/glibc/2.<wbr>26-r0/image/etc/default/<wbr>vo=
latiles</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 echo &quot;d root root 0755 /var/run/nscd none&quot; \</b></span=
></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; /hom=
e/lfpm1993/Desktop/<wbr>openembedded/build/tmp-glibc/<wbr>work/aarch64-oe-l=
inux/glibc/2.<wbr>26-r0/image/etc/default/<wbr>volatiles/98_nscd</b></span>=
</div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 fi</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ &quot;/lib&quot; !=3D &quot;/lib&quot; ] ;=
 then</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 # The aarch64 ABI says the dynamic linker -must- be /lib/ld-linu=
x-aarch64[_be].so.<wbr>1</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 install -d /home/lfpm1993/Desktop/<wbr>openembedded/build/tmp-gl=
ibc/<wbr>work/aarch64-oe-linux/glibc/2.<wbr>26-r0/image/lib</b></span></div=
>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 if [ -e /home/lfpm1993/Desktop/<wbr>openembedded/build/tmp-glibc=
/<wbr>work/aarch64-oe-linux/glibc/2.<wbr>26-r0/image/lib/ld-linux-<wbr>aarc=
h64.so.1 ]; then</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ln -s ${=
@base_path_relative(&#39;/lib&#39;, &#39;/lib&#39;)}/ld-linux-aarch64.so.1 =
\</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/lfpm1993/Desktop/<wbr=
>openembedded/build/tmp-glibc/<wbr>work/aarch64-oe-linux/glibc/2.<wbr>26-r0=
/image/lib/ld-linux-<wbr>aarch64.so.1</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 elif [ -e /home/lfpm1993/Desktop/<wbr>openembedded/build/tmp-gli=
bc/<wbr>work/aarch64-oe-linux/glibc/2.<wbr>26-r0/image/lib/ld-linux-<wbr>aa=
rch64_be.so.1 ]; then</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ln -s ${@=
base_path_relative(&#39;/lib&#39;, &#39;/lib&#39;)}/ld-linux-aarch64_be.<wb=
r>so.1 \</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/lfpm1993/Desktop/<wbr=
>openembedded/build/tmp-glibc/<wbr>work/aarch64-oe-linux/glibc/2.<wbr>26-r0=
/image/lib/ld-linux-<wbr>aarch64_be.so.1</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 fi</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 fi</b></span></div>
<p></p>
<p></p>
<div><span style=3D"color:rgb(75,165,36)"><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 do_install_armm</b></span><b><span style=3D"col=
or:rgb(75,165,36)">ultilib</span></b></div>
<p></p>
<p></p>
<div><b><span style=3D"color:rgb(75,165,36)">which triggered exception Name=
Error: name &#39;base_path_relative&#39; is not defined</span></b></div>
<p></p>
</blockquote>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font-s=
ize:16px">
</p>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font=
-size:16px">
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font=
-size:16px">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font=
-size:16px">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font=
-size:16px">
The only thing I changed from the original files was that I added=C2=A0<spa=
n style=3D"color:rgb(0,111,201)"><b><span style=3D"color:rgb(255,0,0)">&quo=
t;DISTRO_FEATURES_append =3D &quot; virtualization&quot;</span></b></span>&=
quot; to the /Desktop/openembedded/meta-<wbr>virtualization/layers.conf.=C2=
=A0</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font=
-size:16px">
Executing uname -a gives:</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font=
-size:16px">
Linux lfpm1993-virtual-machine 4.13.0-39-generic #44~16.04.1-Ubuntu SMP Thu=
 Apr 5 16:43:10 UTC 2018 x86_64 x86_64 x86_64=C2=A0</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font=
-size:16px">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font=
-size:16px">
<span style=3D"font-size:12pt">So, my question is how do I solve those warn=
ings and errors?=C2=A0</span><br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font=
-size:16px">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font=
-size:16px">
Thanks for helping me,</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;font=
-size:16px">
Luis Martins</div>
<div><br>
</div>
<br>
<p></p>
</div>
</div>

<br>-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--000000000000aa3af6056b97f57f--

--000000000000aa3af8056b97f580
Content-Type: image/png; name="Outlook-Inline ima.png"
Content-Disposition: inline; filename="Outlook-Inline ima.png"
Content-Transfer-Encoding: base64
Content-ID: <f2fd8f4d-8646-4a77-8910-1e17a08d76ba>
X-Attachment-Id: 1e5d5e41cedc8be4_0.0.2

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

--000000000000aa3af8056b97f580
Content-Type: image/png; name="Outlook-Inline ima.png"
Content-Disposition: inline; filename="Outlook-Inline ima.png"
Content-Transfer-Encoding: base64
Content-ID: <baff0da2-52a1-46e2-891a-9f7a8975beb4>
X-Attachment-Id: 1e5d5e41cedc8be4_0.0.1

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
SUVORK5CYII=

--000000000000aa3af8056b97f580--
