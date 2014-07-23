Return-Path: <jdelapena@lexmark.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43C3EE00576; Wed, 23 Jul 2014 00:07:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.18.3.36 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from exprod8og118.obsmtp.com (exprod8og118.obsmtp.com [64.18.3.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54527E00524
	for <yocto@yoctoproject.org>; Wed, 23 Jul 2014 00:07:50 -0700 (PDT)
Received: from mail-la0-f47.google.com ([209.85.215.47]) (using TLSv1) by
	exprod8ob118.postini.com ([64.18.7.12]) with SMTP
	ID DSNKU89fRYxSiFmQNTqAyJ7ZYlzkD8qNErHl@postini.com;
	Wed, 23 Jul 2014 00:07:53 PDT
Received: by mail-la0-f47.google.com with SMTP id mc6so570565lab.6
	for <yocto@yoctoproject.org>; Wed, 23 Jul 2014 00:07:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=EeGhFkbjxgCQqvxKR6nI98S3ctJCt6S2Gz8t1BoQxuU=;
	b=P2wqGSlYDniuivafez8GKi0lbgcHj1EFbJJmC3Q2R5lmzlkRK1wJFTLgx2odfMScek
	MRs9f3w+Kqx2z/70XgKv5PQIbrsFTm7YaXRNg05OQPBOfk0ts61hMkDVCaWFYWJ48VI6
	bLD63pyPnuJKgETjWV3mp1X6ALhBneDSG9NfuEiTwZc92DuniHyqEjcWYamumjaHPopB
	6Kflnt1OlRhcRa8GCXY47Q35Eo77NDMh7Bk+yCv59lzhcoFGvqOheYmqVL9b8cRl59nJ
	rQ8ITMyEPjw8krzytCIzOIEQB13z8m+9DBY0wQ0n/9BniO3ZYIJYPUbx0eeWOWRhkjyp
	b8hA==
X-Gm-Message-State: ALoCoQmdbHNhvBB06qwcHbuj3YDYgEljRdPHivYluHkMsejjOtlZYeAxgWs3m9nxQk6mDogWSl3EqeEtAHy/ldeGt/ZVOpM0D6xhmiwoCx9o0VJy5+q6Dq1DZGagU8V/ADtQMmPdORQU
X-Received: by 10.152.22.4 with SMTP id z4mr40462814lae.2.1406099268204;
	Wed, 23 Jul 2014 00:07:48 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.152.22.4 with SMTP id z4mr40462804lae.2.1406099268104; Wed,
	23 Jul 2014 00:07:48 -0700 (PDT)
Received: by 10.152.36.37 with HTTP; Wed, 23 Jul 2014 00:07:48 -0700 (PDT)
In-Reply-To: <loom.20140723T084046-919@post.gmane.org>
References: <loom.20140723T084046-919@post.gmane.org>
Date: Wed, 23 Jul 2014 15:07:48 +0800
Message-ID: <CAJrRHk48sbbRH6rNsj4mmjywn2CVU0-Vt9_s0ihJTLkGnaJJ5A@mail.gmail.com>
From: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
To: Anoop <babu.anoop@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Bitbake Error - rmp-native task failure
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
X-List-Received-Date: Wed, 23 Jul 2014 07:07:57 -0000
Content-Type: multipart/alternative; boundary=089e0158b8e26509a304fed6ffd3

--089e0158b8e26509a304fed6ffd3
Content-Type: text/plain; charset=UTF-8

Good day Anoop,

Error is from do_patch task for rpm-native unit:
patch: **** Can't create file /tmp/tmpT3pUSD/poMZnbmM : No such file or
directory

Please verify in your recipe all the SRC_URIs (patches) to be applied.
Could be that your SRCREV and patches are in conflict. The odd thing is why
the patch -p0 is not specifying a patch file.

To sum it up, please check the rpm-native recipe.

Thanks,
Joseph


On Wed, Jul 23, 2014 at 2:51 PM, Anoop <babu.anoop@gmail.com> wrote:

>
> I gave bitbake for imx6qsabreauto
>
> command used
> bitbake -v tizen-common-core-image-minimal-dev
>
>
> below is the error section from the log
> + patch -p0
>
> patch: **** Can't create file /tmp/tmpT3pUSD/poMZnbmM : No such file or
> directory
>
> + bb_exit_handler
> + ret=2
> + echo WARNING: exit code 2 from a shell command.
> WARNING: exit code 2 from a shell command.
> + exit 2
>
> ERROR: Function failed: do_prep (log file is located at
> /home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-
> r0/temp/log.do_patch.32228)
> /usr/bin/install -c -m 644 ./Lib/test/test_bool.py
> /home/sfm/yocto_temp/build/tmp/sysroots/i686-linux/usr/lib/python2.7/test
>
> ERROR: Logfile of failure stored in:
> /home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-
> r0/temp/log.do_patch.32228
> NOTE: recipe rpm-native-git-r0: task do_patch: Failed
> ERROR: Task 85 (virtual:native:/home/sfm/yocto_temp/meta-tizen/recipes-
> tizen/rpm/rpm_git.bb, do_patch) failed with exit code '1'
>
> Error log from patch file
> +
> chmod
>  -Rf
>  a+rX,u+w,g-w,o-w
>  /home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-r0/git
>
>
> + cp /home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-
> r0/git/packaging/rpm.manifest .
>
> + rm -rf sqlite
>
> + tar xjf /home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-
> r0/git/packaging/db-4.8.30.tar.bz2
>
> + ln -s db-4.8.30 db
>
> + chmod -R u+w db/LICENSE db/README db/btree db/build_brew db/build_s60
> db/build_unix db/build_vxworks db/build_wince db/build_windows db/clib
> db/common db/crypto db/csharp db/cxx db/db db/db185 db/db_archive
> db/db_checkpoint db/db_deadlock db/db_dump db/db_dump185 db/db_hotbackup
> db/db_load db/db_printlog db/db_recover db/db_sql db/db_stat db/db_upgrade
> db/db_verify db/dbinc db/dbinc_auto db/dbm db/dbreg db/dist db/docs
> db/docs_src db/env db/examples_c db/examples_csharp db/examples_cxx
> db/examples_java db/examples_stl db/fileops db/hash db/hmac db/hsearch
> db/java db/libdb_csharp db/libdb_java db/lock db/log db/mod_db4 db/mp
> db/mutex db/os db/os_brew db/os_qnx db/os_s60 db/os_vxworks db/os_windows
> db/perl db/php_db4 db/qam db/rep db/repmgr db/sequence db/stl db/tcl
> db/test
> db/test_micro db/test_stl db/txn
>
> + rm -f rpmdb/db.h
>
> + patch -p0
>
> patch: **** Can't create file /tmp/tmpT3pUSD/poMZnbmM : No such file or
> directory
>
> + bb_exit_handler
> + ret=2
> + echo WARNING: exit code 2 from a shell command.
> WARNING: exit code 2 from a shell command.
> + exit 2
>
> + cd /home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-r0/git
> + do_prep
> + cd /home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-r0/git
> + chmod -Rf a+rX,u+w,g-w,o-w /home/sfm/yocto_temp/build/tmp/work/i686-
> linux/rpm-native/git-r0/git
> + cp /home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-
> r0/git/packaging/rpm.manifest .
> + rm -rf sqlite
> + tar xjf /home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-
> r0/git/packaging/db-4.8.30.tar.bz2
> + ln -s db-4.8.30 db
> + chmod -R u+w db/LICENSE db/README db/btree db/build_brew db/build_s60
> db/build_unix db/build_vxworks db/build_wince db/build_windows db/clib
> db/common db/crypto db/csharp db/cxx db/db db/db185 db/db_archive
> db/db_checkpoint db/db_deadlock db/db_dump db/db_dump185 db/db_hotbackup
> db/db_load db/db_printlog db/db_recover db/db_sql db/db_stat db/db_upgrade
> db/db_verify db/dbinc db/dbinc_auto db/dbm db/dbreg db/dist db/docs
> db/docs_src db/env db/examples_c db/examples_csharp db/examples_cxx
> db/examples_java db/examples_stl db/fileops db/hash db/hmac db/hsearch
> db/java db/libdb_csharp db/libdb_java db/lock db/log db/mod_db4 db/mp
> db/mutex db/os db/os_brew db/os_qnx db/os_s60 db/os_vxworks db/os_windows
> db/perl db/php_db4 db/qam db/rep db/repmgr db/sequence db/stl db/tcl
> db/test
> db/test_micro db/test_stl db/txn
> + rm -f rpmdb/db.h
> + patch -p0
> patch: **** Can't create file /tmp/tmpT3pUSD/poMZnbmM : No such file or
> directory
> + bb_exit_handler
> + ret=2
> + echo WARNING: exit code 2 from a shell command.
> WARNING: exit code 2 from a shell command.
> + exit 2
> DEBUG: Python function do_patch finished
> ERROR: Function failed: do_prep (log file is located at
> /home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-
> r0/temp/log.do_patch.32228)
>
> can any one help on how to resolve this error
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e0158b8e26509a304fed6ffd3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-family:arial,sans-serif;font-size=
:13px">Good day Anoop,</span></div><span style=3D"font-family:arial,sans-se=
rif;font-size:13px"><div><span style=3D"font-family:arial,sans-serif;font-s=
ize:13px"><br>
</span></div><div><span style=3D"font-family:arial,sans-serif;font-size:13p=
x">Error is from do_patch task for=C2=A0</span>rpm-native unit:</div></span=
><span style=3D"font-family:arial,sans-serif;font-size:13px">patch: **** Ca=
n&#39;t create file /tmp/tmpT3pUSD/poMZnbmM : No such file or</span><br sty=
le=3D"font-family:arial,sans-serif;font-size:13px">
<span style=3D"font-family:arial,sans-serif;font-size:13px">directory</span=
><br><div><span style=3D"font-family:arial,sans-serif;font-size:13px"><br><=
/span></div><div><span style=3D"font-family:arial,sans-serif;font-size:13px=
">Please verify in your recipe all the SRC_URIs (patches) to be applied. Co=
uld be that your SRCREV and patches are in conflict. The odd thing is why t=
he patch -p0 is not specifying a patch file.=C2=A0</span></div>
<div><span style=3D"font-family:arial,sans-serif;font-size:13px"><br></span=
></div><div><font face=3D"arial, sans-serif">To sum it up, please check the=
 rpm-native recipe.</font></div><div><span style=3D"font-family:arial,sans-=
serif;font-size:13px"><br>
</span></div><div><span style=3D"font-family:arial,sans-serif;font-size:13p=
x">Thanks,</span></div><div><span style=3D"font-family:arial,sans-serif;fon=
t-size:13px">Joseph</span></div></div><div class=3D"gmail_extra"><br><br><d=
iv class=3D"gmail_quote">
On Wed, Jul 23, 2014 at 2:51 PM, Anoop <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:babu.anoop@gmail.com" target=3D"_blank">babu.anoop@gmail.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex">
<br>
I gave bitbake for imx6qsabreauto<br>
<br>
command used<br>
bitbake -v tizen-common-core-image-minimal-dev<br>
<br>
<br>
below is the error section from the log<br>
+ patch -p0<br>
<br>
patch: **** Can&#39;t create file /tmp/tmpT3pUSD/poMZnbmM : No such file or=
<br>
directory<br>
<br>
+ bb_exit_handler<br>
+ ret=3D2<br>
+ echo WARNING: exit code 2 from a shell command.<br>
WARNING: exit code 2 from a shell command.<br>
+ exit 2<br>
<br>
ERROR: Function failed: do_prep (log file is located at<br>
/home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-<br>
r0/temp/log.do_patch.32228)<br>
/usr/bin/install -c -m 644 ./Lib/test/test_bool.py<br>
/home/sfm/yocto_temp/build/tmp/sysroots/i686-linux/usr/lib/python2.7/test<b=
r>
<br>
ERROR: Logfile of failure stored in:<br>
/home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-<br>
r0/temp/log.do_patch.32228<br>
NOTE: recipe rpm-native-git-r0: task do_patch: Failed<br>
ERROR: Task 85 (virtual:native:/home/sfm/yocto_temp/meta-tizen/recipes-<br>
tizen/rpm/<a href=3D"http://rpm_git.bb" target=3D"_blank">rpm_git.bb</a>, d=
o_patch) failed with exit code &#39;1&#39;<br>
<br>
Error log from patch file<br>
+<br>
chmod<br>
=C2=A0-Rf<br>
=C2=A0a+rX,u+w,g-w,o-w<br>
=C2=A0/home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-r0/git<=
br>
<br>
<br>
+ cp /home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-<br>
r0/git/packaging/rpm.manifest .<br>
<br>
+ rm -rf sqlite<br>
<br>
+ tar xjf /home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-<br=
>
r0/git/packaging/db-4.8.30.tar.bz2<br>
<br>
+ ln -s db-4.8.30 db<br>
<br>
+ chmod -R u+w db/LICENSE db/README db/btree db/build_brew db/build_s60<br>
db/build_unix db/build_vxworks db/build_wince db/build_windows db/clib<br>
db/common db/crypto db/csharp db/cxx db/db db/db185 db/db_archive<br>
db/db_checkpoint db/db_deadlock db/db_dump db/db_dump185 db/db_hotbackup<br=
>
db/db_load db/db_printlog db/db_recover db/db_sql db/db_stat db/db_upgrade<=
br>
db/db_verify db/dbinc db/dbinc_auto db/dbm db/dbreg db/dist db/docs<br>
db/docs_src db/env db/examples_c db/examples_csharp db/examples_cxx<br>
db/examples_java db/examples_stl db/fileops db/hash db/hmac db/hsearch<br>
db/java db/libdb_csharp db/libdb_java db/lock db/log db/mod_db4 db/mp<br>
db/mutex db/os db/os_brew db/os_qnx db/os_s60 db/os_vxworks db/os_windows<b=
r>
db/perl db/php_db4 db/qam db/rep db/repmgr db/sequence db/stl db/tcl db/tes=
t<br>
db/test_micro db/test_stl db/txn<br>
<br>
+ rm -f rpmdb/db.h<br>
<br>
+ patch -p0<br>
<br>
patch: **** Can&#39;t create file /tmp/tmpT3pUSD/poMZnbmM : No such file or=
<br>
directory<br>
<br>
+ bb_exit_handler<br>
+ ret=3D2<br>
+ echo WARNING: exit code 2 from a shell command.<br>
WARNING: exit code 2 from a shell command.<br>
+ exit 2<br>
<br>
+ cd /home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-r0/git<b=
r>
+ do_prep<br>
+ cd /home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-r0/git<b=
r>
+ chmod -Rf a+rX,u+w,g-w,o-w /home/sfm/yocto_temp/build/tmp/work/i686-<br>
linux/rpm-native/git-r0/git<br>
+ cp /home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-<br>
r0/git/packaging/rpm.manifest .<br>
+ rm -rf sqlite<br>
+ tar xjf /home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-<br=
>
r0/git/packaging/db-4.8.30.tar.bz2<br>
+ ln -s db-4.8.30 db<br>
+ chmod -R u+w db/LICENSE db/README db/btree db/build_brew db/build_s60<br>
db/build_unix db/build_vxworks db/build_wince db/build_windows db/clib<br>
db/common db/crypto db/csharp db/cxx db/db db/db185 db/db_archive<br>
db/db_checkpoint db/db_deadlock db/db_dump db/db_dump185 db/db_hotbackup<br=
>
db/db_load db/db_printlog db/db_recover db/db_sql db/db_stat db/db_upgrade<=
br>
db/db_verify db/dbinc db/dbinc_auto db/dbm db/dbreg db/dist db/docs<br>
db/docs_src db/env db/examples_c db/examples_csharp db/examples_cxx<br>
db/examples_java db/examples_stl db/fileops db/hash db/hmac db/hsearch<br>
db/java db/libdb_csharp db/libdb_java db/lock db/log db/mod_db4 db/mp<br>
db/mutex db/os db/os_brew db/os_qnx db/os_s60 db/os_vxworks db/os_windows<b=
r>
db/perl db/php_db4 db/qam db/rep db/repmgr db/sequence db/stl db/tcl db/tes=
t<br>
db/test_micro db/test_stl db/txn<br>
+ rm -f rpmdb/db.h<br>
+ patch -p0<br>
patch: **** Can&#39;t create file /tmp/tmpT3pUSD/poMZnbmM : No such file or=
<br>
directory<br>
+ bb_exit_handler<br>
+ ret=3D2<br>
+ echo WARNING: exit code 2 from a shell command.<br>
WARNING: exit code 2 from a shell command.<br>
+ exit 2<br>
DEBUG: Python function do_patch finished<br>
ERROR: Function failed: do_prep (log file is located at<br>
/home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-<br>
r0/temp/log.do_patch.32228)<br>
<br>
can any one help on how to resolve this error<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--089e0158b8e26509a304fed6ffd3--
