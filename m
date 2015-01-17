Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3D96E00948; Fri, 16 Jan 2015 16:05:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33CDAE002F9
	for <yocto@yoctoproject.org>; Fri, 16 Jan 2015 16:05:02 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 16 Jan 2015 16:05:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,413,1418112000"; d="scan'208";a="663208330"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by fmsmga002.fm.intel.com with ESMTP; 16 Jan 2015 16:05:00 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.192]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.239]) with mapi id
	14.03.0195.001; Fri, 16 Jan 2015 16:04:59 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Pascal Bach <pascal.bach@siemens.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [yocto-docs][PATCH 2/2] dev-manual: Add section about
	/dev	population
Thread-Index: AQHQKoqtLm9QkZvLRku/KVMMKSynbZzDfQog
Date: Sat, 17 Jan 2015 00:04:59 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237988E9CA05@ORSMSX101.amr.corp.intel.com>
References: <1420642704-1482-1-git-send-email-pascal.bach@siemens.com>
	<1420642704-1482-2-git-send-email-pascal.bach@siemens.com>
In-Reply-To: <1420642704-1482-2-git-send-email-pascal.bach@siemens.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
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
X-List-Received-Date: Sat, 17 Jan 2015 00:05:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Pascal,=20

I have applied this patch with some editing.  Also, applied the patch that =
added the USE_DEVFS variable to the ref-manual.

Thanks,
Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Pascal Bach
>Sent: Wednesday, January 07, 2015 6:58 AM
>To: yocto@yoctoproject.org
>Subject: [yocto] [yocto-docs][PATCH 2/2] dev-manual: Add section about
>/dev population
>
>Signed-off-by: Pascal Bach <pascal.bach@siemens.com>
>---
> .../dev-manual/dev-manual-common-tasks.xml         |  104
>++++++++++++++++++++
> 1 file changed, 104 insertions(+)
>
>diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml
>b/documentation/dev-manual/dev-manual-common-tasks.xml
>index 17d725b..9072586 100644
>--- a/documentation/dev-manual/dev-manual-common-tasks.xml
>+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
>@@ -7582,6 +7582,110 @@ Gateways via their Web
>Interfaces</ulink>"</emphasis>
>         </section>
>     </section>
>
>+    <section id=3D"selecting-dev-manager">
>+        <title>Selecting a Device Manager</title>
>+
>+        <para>
>+            Yocto provides multiple ways to manage <filename>/dev</filena=
me>
>+            <itemizedlist>
>+                <listitem><para>
>+                <emphasis>Persistent and pre populated
><filename>/dev</filename>:</emphasis>
>+                in this case the <filename>/dev</filename> directory is p=
ersistent
>+                and the required device nodes are created at build time.
>+                </para></listitem>
>+
>+                <listitem><para>
>+                <emphasis>Use <filename>devtmps</filename> with a device
>manager:</emphasis>
>+                in this case the <filename>/dev</filename> directory is p=
rovided
>+                by the kernel as an in memory file system and is automati=
cally
>+                populated by the kernel at runtime. Additional configurat=
ion of
>+                device nodes is done in user space by a device manager li=
ke
>+                <filename>udev</filename> or <filename>busybox-
>mdev</filename>.
>+                </para></listitem>
>+            </itemizedlist>
>+        </para>
>+
>+        <section id=3D"static-dev-management">
>+            <title>Use Persistent and pre-populated
><filename>/dev</filename></title>
>+
>+            <para>
>+                To use the static method for device population the variab=
le
>+                <ulink url=3D'&YOCTO_DOCS_REF_URL;#var-
>USE_DEVFS'><filename>USE_DEVFS</filename></ulink>
>+                needs to be set to 0.
>+
>+                <literallayout class=3D'monospaced'>
>+     USE_DEVFS =3D "0"
>+                </literallayout>
>+            </para>
>+
>+            <para>
>+                The content of the resulting <filename>/dev</filename> di=
rectory
>+                is defined in a Device Table file. The device table to us=
e is defined by
>the variable
>+                <ulink url=3D'&YOCTO_DOCS_REF_URL;#var-
>IMAGE_DEVICE_TABLES'><filename>IMAGE_DEVICE_TABLES</filename></ul
>ink> and should be set
>+                in the <ulink url=3D'&YOCTO_DOCS_REF_URL;#var-
>MACHINE'><filename>MACHINE</filename></ulink>,
>+                <ulink url=3D'&YOCTO_DOCS_REF_URL;#var-
>DISTRO'><filename>DISTRO</filename></ulink>
>+                or <filename>local.conf</filename> configuration file.
>+            </para>
>+
>+            <para>
>+                If nothing is defined the default <filename>device_table-
>minimal.txt</filename> is used.
>+            </para>
>+
>+            <para>
>+                The population is handled by the <filename>makedevs</file=
name>
>utility
>+                during image creation.
>+
>+                <literallayout class=3D'monospaced'>
>+     IMAGE_DEVICE_TABLES =3D "device_table-mymachine.txt"
>+                </literallayout>
>+
>+            </para>
>+        </section>
>+
>+        <section id=3D"devtmps-dev-management">
>+            <title>Use <filename>devtmpfs</filename> and a device
>manager</title>
>+
>+            <para>
>+                To use the dynamic method for device population the varia=
ble
>+                <ulink url=3D'&YOCTO_DOCS_REF_URL;#var-
>USE_DEVFS'><filename>USE_DEVFS</filename></ulink>
>+                needs to be set to 1. This is the default.
>+
>+                <literallayout class=3D'monospaced'>
>+     USE_DEVFS =3D "1"
>+                </literallayout>
>+
>+                This way the resulting <filename>/dev</filename> is popul=
ated by
>the kernel
>+                using <filename>devtmpfs</filename>. Make sure the
>corresponding
>+                kernel configuration variable
><filename>CONFIG_DEVTMPFS</filename> is set
>+                when building a linux kernel.
>+
>+            </para>
>+            <para>
>+                All devices created by <filename>devtmpfs</filename> will=
 be
>+                owned by <filename>root</filename> and have permissions
><filename>0600</filename>.
>+
>+                To have more control over the device nodes a device manag=
er like
>+                <filename>udev</filename> or <filename>busybox-
>mdev</filename>
>+                can be used.
>+
>+                The device manager to use is defined by the variable
>+                <filename>VIRTUAL-RUNTIME_dev_manager</filename> and
>should be set
>+                in the <ulink url=3D'&YOCTO_DOCS_REF_URL;#var-
>MACHINE'><filename>MACHINE</filename></ulink>,
>+                <ulink url=3D'&YOCTO_DOCS_REF_URL;#var-
>DISTRO'><filename>DISTRO</filename></ulink>
>+                or <filename>local.conf</filename> configuration file.
>+
>+                <literallayout class=3D'monospaced'>
>+
>+     VIRTUAL-RUNTIME_dev_manager =3D "udev"
>+
>+     # Some alternative values
>+     # VIRTUAL-RUNTIME_dev_manager =3D "busybox-mdev"
>+     # VIRTUAL-RUNTIME_dev_manager =3D "systemd"
>+                </literallayout>
>+            </para>
>+        </section>
>+    </section>
>+
>     <section id=3D"platdev-appdev-srcrev">
>         <title>Using an External SCM</title>
>
>--
>1.7.10.4
>
>--
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

