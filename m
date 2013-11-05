Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D1C8E01716
	for <yocto@yoctoproject.org>; Tue,  5 Nov 2013 10:21:11 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 05 Nov 2013 10:20:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="385023232"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
	by azsmga001.ch.intel.com with ESMTP; 05 Nov 2013 10:20:23 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.126]) by
	ORSMSX108.amr.corp.intel.com ([169.254.4.149]) with mapi id
	14.03.0123.003; Tue, 5 Nov 2013 10:20:22 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [PATCH] Documentation: Pedantic tweaks to ref manual,
	usingpoky.xml
Thread-Index: AQHO2goGoHzA/vjIHkK8WplNh1bf1JoW8yxA
Date: Tue, 5 Nov 2013 18:20:21 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F44686@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1311050430460.9448@oneiric>
In-Reply-To: <alpine.DEB.2.02.1311050430460.9448@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [PATCH] Documentation: Pedantic tweaks to ref manual, usingpoky.xml
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
X-List-Received-Date: Tue, 05 Nov 2013 18:21:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Robert,=20

Patch applied... thanks.

Scott

>-----Original Message-----
>From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
>Sent: Tuesday, November 05, 2013 1:32 AM
>To: Yocto discussion list
>Cc: Rifenbark, Scott M
>Subject: [PATCH] Documentation: Pedantic tweaks to ref manual,
>usingpoky.xml
>
>
>Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
>
>---
>
>diff --git a/documentation/ref-manual/usingpoky.xml b/documentation/ref-
>manual/usingpoky.xml
>index b00e7bc..1edc9ea 100644
>--- a/documentation/ref-manual/usingpoky.xml
>+++ b/documentation/ref-manual/usingpoky.xml
>@@ -40,7 +40,7 @@
>         </para>
>
>         <para>
>-            The <filename>build_dir</filename> is optional and specifies =
the
>directory the
>+            The <filename>build_dir</filename> argument is optional and
>+ specifies the directory the
>             OpenEmbedded build system uses for the build -
>             the <ulink url=3D'&YOCTO_DOCS_DEV_URL;#build-directory'>Build
>Directory</ulink>.
>             If you do not specify a Build Directory, it defaults to a dir=
ectory @@ -
>72,7 +72,7 @@
>
>         <note>
>             Building an image without GNU General Public License Version =
3
>(GPLv3) components
>-            is only supported for minimal and base images.
>+            is supported for only minimal and base images.
>             See the "<link linkend=3D'ref-images'>Images</link>" chapter =
for more
>information.
>         </note>
>     </section>
>@@ -158,7 +158,7 @@
>             <filename>package_write</filename>, and
><filename>build</filename>.
>             The default task is <filename>build</filename> and any tasks =
on which
>it depends
>             build first.
>-            Some tasks exist, such as <filename>devshell</filename>, that=
 are not
>part of the
>+            Some tasks, such as <filename>devshell</filename>, are not
>+ part of the
>             default build chain.
>             If you wish to run a task that is not part of the default bui=
ld chain, you
>can use the
>             <filename>-c</filename> option in BitBake.
>@@ -479,11 +479,11 @@
>             from your <filename>conf/local.conf</filename> file.
>             However, you should realize that enabling and disabling
>             build history in this manner can change the
>-            <filename>do_package</filename> task checksums, which if you
>+            <filename>do_package</filename> task checksums which, if
>+ you
>             are using the OEBasicHash signature generator (the default
>             for many current distro configurations including
>             <filename>DISTRO =3D "poky"</filename> and
>-            <filename>DISTRO =3D ""</filename>) and will result in the pa=
ckaging
>+            <filename>DISTRO =3D ""</filename>) will result in the
>+ packaging
>             tasks being re-run during the subsequent build.
>         </para>
>
>
>rday
>--
>
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
>
>Twitter:                                       http://twitter.com/rpjday
>LinkedIn:                               http://ca.linkedin.com/in/rpjday
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

