Return-Path: <pascal.bach@siemens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97BD2E00546; Mon, 19 Jan 2015 00:30:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.35.17.14 listed in list.dnswl.org]
Received: from david.siemens.de (david.siemens.de [192.35.17.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE8BFE002F9
	for <yocto@yoctoproject.org>; Mon, 19 Jan 2015 00:30:39 -0800 (PST)
Received: from mail1.sbs.de (localhost [127.0.0.1])
	by david.siemens.de (8.14.3/8.14.3) with ESMTP id t0J8UV7v013423;
	Mon, 19 Jan 2015 09:30:31 +0100
Received: from DEFTHW99ERLMSX.ww902.siemens.net
	(defthw99erlmsx.ww902.siemens.net [139.22.70.136])
	by mail1.sbs.de (8.14.3/8.14.3) with ESMTP id t0J8UVee007951
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 19 Jan 2015 09:30:31 +0100
Received: from DEFTHW99ER2MSX.ww902.siemens.net (139.22.70.75) by
	DEFTHW99ERLMSX.ww902.siemens.net (139.22.70.136) with Microsoft SMTP
	Server (TLS) id 14.3.224.2; Mon, 19 Jan 2015 09:30:30 +0100
Received: from DEFTHW99EH4MSX.ww902.siemens.net ([169.254.2.49]) by
	DEFTHW99ER2MSX.ww902.siemens.net ([139.22.70.75]) with mapi id
	14.03.0224.002; Mon, 19 Jan 2015 09:30:30 +0100
From: "Bach, Pascal" <pascal.bach@siemens.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [yocto-docs][PATCH 2/2] dev-manual: Add section about
	/dev	population
Thread-Index: AQHQMelB/qIjUkXyhE2Azq1PGBjqsZzHIBJQ
Date: Mon, 19 Jan 2015 08:30:29 +0000
Message-ID: <355BE46A91031048906B695426A8D8E616B32751@DEFTHW99EH4MSX.ww902.siemens.net>
References: <1420642704-1482-1-git-send-email-pascal.bach@siemens.com>
	<1420642704-1482-2-git-send-email-pascal.bach@siemens.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237988E9CA05@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237988E9CA05@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [139.22.70.51]
MIME-Version: 1.0
Subject: Re: [yocto-docs][PATCH 2/2] dev-manual: Add section about /dev	population
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
X-List-Received-Date: Mon, 19 Jan 2015 08:30:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Scott

Thanks. I had a look at the commits and it looks like commit 7c6c7ac573f92b=
fc844977e0d7a97ca4aac9bc70 also introduced a strange change on line 946 of =
dev-manual-common-tasks.xml.

See: https://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/commit/?id=3D7c6=
c7ac573f92bfc844977e0d7a97ca4aac9bc70

Pascal

> -----Original Message-----
> From: Rifenbark, Scott M [mailto:scott.m.rifenbark@intel.com]
> Sent: Samstag, 17. Januar 2015 01:05
> To: Bach, Pascal; yocto@yoctoproject.org
> Subject: RE: [yocto] [yocto-docs][PATCH 2/2] dev-manual: Add section
> about /dev population
>=20
> Pascal,
>=20
> I have applied this patch with some editing.  Also, applied the patch
> that added the USE_DEVFS variable to the ref-manual.
>=20
> Thanks,
> Scott
>=20
> >-----Original Message-----
> >From: yocto-bounces@yoctoproject.org [mailto:yocto-
> >bounces@yoctoproject.org] On Behalf Of Pascal Bach
> >Sent: Wednesday, January 07, 2015 6:58 AM
> >To: yocto@yoctoproject.org
> >Subject: [yocto] [yocto-docs][PATCH 2/2] dev-manual: Add section about
> >/dev population
> >
> >Signed-off-by: Pascal Bach <pascal.bach@siemens.com>
> >---
> > .../dev-manual/dev-manual-common-tasks.xml         |  104
> >++++++++++++++++++++
> > 1 file changed, 104 insertions(+)
> >
> >diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml
> >b/documentation/dev-manual/dev-manual-common-tasks.xml
> >index 17d725b..9072586 100644
> >--- a/documentation/dev-manual/dev-manual-common-tasks.xml
> >+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
> >@@ -7582,6 +7582,110 @@ Gateways via their Web
> >Interfaces</ulink>"</emphasis>
> >         </section>
> >     </section>
> >
> >+    <section id=3D"selecting-dev-manager">
> >+        <title>Selecting a Device Manager</title>
> >+
> >+        <para>
> >+            Yocto provides multiple ways to manage
> <filename>/dev</filename>
> >+            <itemizedlist>
> >+                <listitem><para>
> >+                <emphasis>Persistent and pre populated
> ><filename>/dev</filename>:</emphasis>
> >+                in this case the <filename>/dev</filename> directory
> is persistent
> >+                and the required device nodes are created at build
> time.
> >+                </para></listitem>
> >+
> >+                <listitem><para>
> >+                <emphasis>Use <filename>devtmps</filename> with a
> device
> >manager:</emphasis>
> >+                in this case the <filename>/dev</filename> directory
> is provided
> >+                by the kernel as an in memory file system and is
> automatically
> >+                populated by the kernel at runtime. Additional
> configuration of
> >+                device nodes is done in user space by a device manager
> like
> >+                <filename>udev</filename> or <filename>busybox-
> >mdev</filename>.
> >+                </para></listitem>
> >+            </itemizedlist>
> >+        </para>
> >+
> >+        <section id=3D"static-dev-management">
> >+            <title>Use Persistent and pre-populated
> ><filename>/dev</filename></title>
> >+
> >+            <para>
> >+                To use the static method for device population the
> variable
> >+                <ulink url=3D'&YOCTO_DOCS_REF_URL;#var-
> >USE_DEVFS'><filename>USE_DEVFS</filename></ulink>
> >+                needs to be set to 0.
> >+
> >+                <literallayout class=3D'monospaced'>
> >+     USE_DEVFS =3D "0"
> >+                </literallayout>
> >+            </para>
> >+
> >+            <para>
> >+                The content of the resulting <filename>/dev</filename>
> directory
> >+                is defined in a Device Table file. The device table to
> use is defined by
> >the variable
> >+                <ulink url=3D'&YOCTO_DOCS_REF_URL;#var-
> >IMAGE_DEVICE_TABLES'><filename>IMAGE_DEVICE_TABLES</filename></ul
> >ink> and should be set
> >+                in the <ulink url=3D'&YOCTO_DOCS_REF_URL;#var-
> >MACHINE'><filename>MACHINE</filename></ulink>,
> >+                <ulink url=3D'&YOCTO_DOCS_REF_URL;#var-
> >DISTRO'><filename>DISTRO</filename></ulink>
> >+                or <filename>local.conf</filename> configuration file.
> >+            </para>
> >+
> >+            <para>
> >+                If nothing is defined the default
> <filename>device_table-
> >minimal.txt</filename> is used.
> >+            </para>
> >+
> >+            <para>
> >+                The population is handled by the
> <filename>makedevs</filename>
> >utility
> >+                during image creation.
> >+
> >+                <literallayout class=3D'monospaced'>
> >+     IMAGE_DEVICE_TABLES =3D "device_table-mymachine.txt"
> >+                </literallayout>
> >+
> >+            </para>
> >+        </section>
> >+
> >+        <section id=3D"devtmps-dev-management">
> >+            <title>Use <filename>devtmpfs</filename> and a device
> >manager</title>
> >+
> >+            <para>
> >+                To use the dynamic method for device population the
> variable
> >+                <ulink url=3D'&YOCTO_DOCS_REF_URL;#var-
> >USE_DEVFS'><filename>USE_DEVFS</filename></ulink>
> >+                needs to be set to 1. This is the default.
> >+
> >+                <literallayout class=3D'monospaced'>
> >+     USE_DEVFS =3D "1"
> >+                </literallayout>
> >+
> >+                This way the resulting <filename>/dev</filename> is
> populated by
> >the kernel
> >+                using <filename>devtmpfs</filename>. Make sure the
> >corresponding
> >+                kernel configuration variable
> ><filename>CONFIG_DEVTMPFS</filename> is set
> >+                when building a linux kernel.
> >+
> >+            </para>
> >+            <para>
> >+                All devices created by <filename>devtmpfs</filename>
> will be
> >+                owned by <filename>root</filename> and have
> permissions
> ><filename>0600</filename>.
> >+
> >+                To have more control over the device nodes a device
> manager like
> >+                <filename>udev</filename> or <filename>busybox-
> >mdev</filename>
> >+                can be used.
> >+
> >+                The device manager to use is defined by the variable
> >+                <filename>VIRTUAL-RUNTIME_dev_manager</filename> and
> >should be set
> >+                in the <ulink url=3D'&YOCTO_DOCS_REF_URL;#var-
> >MACHINE'><filename>MACHINE</filename></ulink>,
> >+                <ulink url=3D'&YOCTO_DOCS_REF_URL;#var-
> >DISTRO'><filename>DISTRO</filename></ulink>
> >+                or <filename>local.conf</filename> configuration file.
> >+
> >+                <literallayout class=3D'monospaced'>
> >+
> >+     VIRTUAL-RUNTIME_dev_manager =3D "udev"
> >+
> >+     # Some alternative values
> >+     # VIRTUAL-RUNTIME_dev_manager =3D "busybox-mdev"
> >+     # VIRTUAL-RUNTIME_dev_manager =3D "systemd"
> >+                </literallayout>
> >+            </para>
> >+        </section>
> >+    </section>
> >+
> >     <section id=3D"platdev-appdev-srcrev">
> >         <title>Using an External SCM</title>
> >
> >--
> >1.7.10.4
> >
> >--
> >_______________________________________________
> >yocto mailing list
> >yocto@yoctoproject.org
> >https://lists.yoctoproject.org/listinfo/yocto

