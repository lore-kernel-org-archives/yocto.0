Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id C200F4C800A1
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 12:30:35 -0500 (CDT)
Received: from [128.224.252.2] (helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1QhPkB-0007MR-2c
	for yocto@yoctoproject.org; Thu, 14 Jul 2011 13:30:35 -0400
Date: Thu, 14 Jul 2011 13:30:26 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1107141327350.9115@localhost6.localdomain6>
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
Subject: [PATCH] DOCS: Fix some syntax errors in "opkg-cl" cmds in ADT manual.
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
X-List-Received-Date: Thu, 14 Jul 2011 17:30:35 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1631725556-1310664635=:9115"

--8323328-1631725556-1310664635=:9115
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE


Fix some obvious typoes in a couple "opkg-cl" commands in the ADT
manual, packages chapter.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  i'm *hoping* i'm reading this correctly.  and i'll try to bundle
fixes into larger single patch submissions as long as they're
logically related.

diff --git a/documentation/adt-manual/adt-package.xml b/documentation/adt-m=
anual/adt-package.xml
index 9f982d1..fd52747 100644
--- a/documentation/adt-manual/adt-package.xml
+++ b/documentation/adt-manual/adt-package.xml
@@ -70,8 +70,8 @@
         The following command forms should now work:
         <literallayout class=3D'monospaced'>
      $ opkg-cl =E2=80=93f &lt;conf_file&gt; -o &lt;sysroot-dir&gt; update
-     $ opkg-cl =E2=80=93f &lt;cconf_file&gt;> -o &lt;sysroot-dir&gt; --for=
ce-overwrite install libglade
-     $ opkg-cl =E2=80=93f &lt;cconf_file&gt; -o &lt;sysroot-dir&gt; --forc=
e-overwrite install libglade-dbg
+     $ opkg-cl =E2=80=93f &lt;conf_file&gt; -o &lt;sysroot-dir&gt; --force=
-overwrite install libglade
+     $ opkg-cl =E2=80=93f &lt;conf_file&gt; -o &lt;sysroot-dir&gt; --force=
-overwrite install libglade-dbg
      $ opkg-cl =E2=80=93f &lt;conf_file&gt; -o &lt;sysroot-dir&gt; --force=
-overwrite install libglade-dev
         </literallayout>
     </para>

--=20

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

--8323328-1631725556-1310664635=:9115--
