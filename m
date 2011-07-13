Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0F4654C80BEE
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2011 06:34:27 -0500 (CDT)
Received: from [128.224.252.2] (helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1Qgxhy-0002gC-16
	for yocto@yoctoproject.org; Wed, 13 Jul 2011 07:34:26 -0400
Date: Wed, 13 Jul 2011 07:34:20 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1107130732430.29281@localhost6.localdomain6>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: [PATCH] DOC: Fix a couple simple typoes in the ADT documentation.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 13 Jul 2011 11:34:27 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1233921095-1310556866=:29281"

--8323328-1233921095-1310556866=:29281
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

--=20

diff --git a/documentation/adt-manual/adt-package.xml b/documentation/adt-m=
anual/adt-package.xml
index 9f982d1..1e9539f 100644
--- a/documentation/adt-manual/adt-package.xml
+++ b/documentation/adt-manual/adt-package.xml
@@ -24,7 +24,7 @@
             information about OPKG.</para></listitem>
         <listitem><para><emphasis>RPM</emphasis> =E2=80=93 A more widely k=
nown PMS intended for GNU/Linux
             distributions.
-            This PMS works with files packaged in an <filename>.rms</filen=
ame> format.
+            This PMS works with files packaged in an <filename>.rpm</filen=
ame> format.
             The Yocto Project currently installs through this PMS by defau=
lt.
             See <ulink url=3D'http://en.wikipedia.org/wiki/RPM_Package_Man=
ager'></ulink>
             for more information about RPM.</para></listitem>
diff --git a/documentation/adt-manual/adt-prepare.xml b/documentation/adt-m=
anual/adt-prepare.xml
index 7fbc876..2ccae5b 100644
--- a/documentation/adt-manual/adt-prepare.xml
+++ b/documentation/adt-manual/adt-prepare.xml
@@ -13,7 +13,7 @@

 <para>
     This section describes how to be sure you meet these requirements.
-    Througout this section two important terms are used:
+    Throughout this section two important terms are used:
     <itemizedlist>
         <listitem><para><emphasis>Yocto Project Source Tree:</emphasis>
         This term refers to the directory structure created as a result of=
 downloading

rday

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

--8323328-1233921095-1310556866=:29281--
