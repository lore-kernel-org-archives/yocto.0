Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D581E00404; Mon,  2 Mar 2015 08:31:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F1ACE003A8
	for <yocto@yoctoproject.org>; Mon,  2 Mar 2015 08:31:10 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP; 02 Mar 2015 08:31:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,676,1418112000"; d="scan'208";a="534905958"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by orsmga003.jf.intel.com with ESMTP; 02 Mar 2015 08:31:13 -0800
Received: from orsmsx116.amr.corp.intel.com (10.22.240.14) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Mon, 2 Mar 2015 08:31:09 -0800
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.137]) by
	ORSMSX116.amr.corp.intel.com ([169.254.9.108]) with mapi id
	14.03.0195.001; Mon, 2 Mar 2015 08:31:09 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] Documentation: Clarify a couple minor things
	in kernel manual, ch 2.
Thread-Index: AQHQVNoFSuPI8jMepEi6kiZdYoEGQJ0JYsVw
Date: Mon, 2 Mar 2015 16:31:08 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237988EB7B11@ORSMSX106.amr.corp.intel.com>
References: <alpine.LFD.2.11.1503020612060.26859@localhost>
In-Reply-To: <alpine.LFD.2.11.1503020612060.26859@localhost>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [PATCH] Documentation: Clarify a couple minor things in kernel manual, ch 2.
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
X-List-Received-Date: Mon, 02 Mar 2015 16:31:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Applied... thanks Robert.

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
>Sent: Monday, March 02, 2015 3:13 AM
>To: Yocto discussion list
>Subject: [yocto] [PATCH] Documentation: Clarify a couple minor things in
>kernel manual, ch 2.
>
>Replace "files" with "${PN}" and reword discussion of defconfig file.
>
>Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
>
>---
>
>diff --git a/documentation/kernel-dev/kernel-dev-common.xml
>b/documentation/kernel-dev/kernel-dev-common.xml
>index 56fa17d..7840c0e 100644
>--- a/documentation/kernel-dev/kernel-dev-common.xml
>+++ b/documentation/kernel-dev/kernel-dev-common.xml
>@@ -156,23 +156,25 @@
>             <title>Changing the Configuration</title>
>
>             <para>
>-                You can make wholesale or incremental changes to the Linu=
x
>-                kernel <filename>.config</filename> file by including a
>-                <filename>defconfig</filename> and by specifying
>+                You can make wholesale or incremental changes to the fina=
l
>+                <filename>.config</filename> file used for the eventual
>+                Linux kernel configuration by including a
>+                <filename>defconfig</filename> file and by specifying
>                 configuration fragments in the
>-                <ulink url=3D'&YOCTO_DOCS_REF_URL;#var-
>SRC_URI'><filename>SRC_URI</filename></ulink>.
>+                <ulink url=3D'&YOCTO_DOCS_REF_URL;#var-
>SRC_URI'><filename>SRC_URI</filename></ulink>
>+                to be applied to that file.
>             </para>
>
>             <para>
>-                If you have a final Linux kernel <filename>.config</filen=
ame>
>-                file you want to use, copy it to a directory named
>-                <filename>files</filename>, which must be in
>-                your layer's <filename>recipes-kernel/linux</filename>
>-                directory, and name the file "defconfig".
>-                Then, add the following lines to your linux-yocto
>+                If you have a complete, working Linux kernel
><filename>.config</filename>
>+                file you want to use for the configuration, as before, co=
py that file
>+                to the appropriate <filename>${PN}</filename> directory i=
n your
>+                layer's <filename>recipes-kernel/linux</filename> directo=
ry,
>+                and rename the copied file to "defconfig".
>+                Then, add the following lines to the linux-yocto
>                 <filename>.bbappend</filename> file in your layer:
>                 <literallayout class=3D'monospaced'>
>-     FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
>+     FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>      SRC_URI +=3D "file://defconfig"
>                 </literallayout>
>                 The <filename>SRC_URI</filename> tells the build system h=
ow to
>@@ -181,7 +183,7 @@
>                 extends the
>                 <ulink url=3D'&YOCTO_DOCS_REF_URL;#var-
>FILESPATH'><filename>FILESPATH</filename></ulink>
>                 variable (search directories) to include the
>-                <filename>files</filename> directory you created for the
>+                <filename>${PN}</filename> directory you created to
>+ hold the
>                 configuration changes.
>             </para>
>
>
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
>--
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

