Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 214E9E0174E
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2013 01:42:12 -0800 (PST)
Received: from [173.34.6.101] (port=54322 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Vdzco-0005B3-61; Wed, 06 Nov 2013 04:42:10 -0500
Date: Wed, 6 Nov 2013 04:42:03 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1311060441050.20296@oneiric>
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
Subject: [PATCH] Documentation: Couple innocuous tweaks to ref manual migration chapter.
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
X-List-Received-Date: Wed, 06 Nov 2013 09:42:13 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/ref-manual/migration.xml b/documentation/ref-manual/migration.xml
index bb62039..a3a3e88 100644
--- a/documentation/ref-manual/migration.xml
+++ b/documentation/ref-manual/migration.xml
@@ -34,7 +34,7 @@
             <para>
                 The shared state cache (sstate-cache), as pointed to by
                 <link linkend='var-SSTATE_DIR'><filename>SSTATE_DIR</filename></link>, by default
-                now has two-character subdirectories to prevent issues rising
+                now has two-character subdirectories to prevent issues arising
                 from too many files in the same directory.
                 Also, native sstate-cache packages will go into a subdirectory named using
                 the distro ID string.
@@ -755,7 +755,7 @@
                     <ulink url='&YOCTO_DOCS_DEV_URL;#build-directory'>Build Directory</ulink>
                     rather than
                     <link linkend='var-TMPDIR'><filename>TMPDIR</filename></link>.
-                    Doing so makes it a easier to delete
+                    Doing so makes it easier to delete
                     <filename>TMPDIR</filename> and preserve the build history.
                     Additionally, data for produced SDKs is now split by
                     <link linkend='var-IMAGE_NAME'><filename>IMAGE_NAME</filename></link>.

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

