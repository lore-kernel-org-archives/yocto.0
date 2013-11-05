Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2958E01757
	for <yocto@yoctoproject.org>; Tue,  5 Nov 2013 00:00:59 -0800 (PST)
Received: from [173.34.6.101] (port=58463 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VdbZJ-0004Xd-Kb; Tue, 05 Nov 2013 03:00:57 -0500
Date: Tue, 5 Nov 2013 03:00:52 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1311050258400.29057@oneiric>
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
Subject: [PATCH] Documentation: Small number of minor fixes to Ch 1, ref manual
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
X-List-Received-Date: Tue, 05 Nov 2013 08:01:11 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


 * couple grammar/typo fixes
 * "OpenSUSE" -> "openSUSE"

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/ref-manual/introduction.xml b/documentation/ref-manual/introduction.xml
index 3977d73..023e863 100644
--- a/documentation/ref-manual/introduction.xml
+++ b/documentation/ref-manual/introduction.xml
@@ -124,7 +124,7 @@
                     Refer to
                     <ulink url='&OE_HOME_URL;/index.php?title=OEandYourDistro'>OE and Your Distro</ulink> and
                     <ulink url='&OE_HOME_URL;/index.php?title=Required_software'>Required Software</ulink>
-                    for information for information about dependencies and
+                    for information about dependencies and
                     requirements.
                     If you encounter problems, please go to
                     <ulink url='&YOCTO_BUGZILLA_URL;'>Yocto Project Bugzilla</ulink>
@@ -251,11 +251,11 @@
         </section>

         <section id='opensuse-packages'>
-            <title>OpenSUSE Packages</title>
+            <title>openSUSE Packages</title>

             <para>
                 The following list shows the required packages by function
-                given a supported OpenSUSE Linux distribution:
+                given a supported openSUSE Linux distribution:
                 <itemizedlist>
                     <listitem><para><emphasis>Essentials:</emphasis>
                         Packages needed to build an image for a headless
@@ -346,8 +346,8 @@
             you can resolve this by either downloading a pre-built tarball
             containing these tools, or building such a tarball on another
             system.
-            Regardless of the method, once you have the tarball you simply
-            install it somewhere on you system, such as a directory in your
+            Regardless of the method, once you have the tarball, you simply
+            install it somewhere on your system, such as a directory in your
             home directory, and then source the environment script provided,
             which adds the tools into <filename>PATH</filename> and sets
             any other environment variables required to run the tools.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

