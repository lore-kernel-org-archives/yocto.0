Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.4646.1581590557562869941
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Feb 2020 02:42:37 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6573E01600; Thu, 13 Feb 2020 02:42:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4460E0159B
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2020 02:42:34 -0800 (PST)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:50184 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.92)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1j2Bx3-002aKz-Sh
	for yocto@yoctoproject.org; Thu, 13 Feb 2020 05:42:34 -0500
Date: Thu, 13 Feb 2020 05:42:31 -0500 (EST)
From: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: [PATCH] dev-manual: chs 1,2; rewording, cleanup
Message-ID: <alpine.LFD.2.21.2002130540450.2560558@localhost.localdomain>
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-0.2
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel7.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel7.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel7.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: text/plain; charset=US-ASCII

Also removal of way too much unnecessary capitalization.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/dev-manual/dev-manual-intro.xml b/documentation/dev-manual/dev-manual-intro.xml
index 3a34094b8..5e231c6ac 100644
--- a/documentation/dev-manual/dev-manual-intro.xml
+++ b/documentation/dev-manual/dev-manual-intro.xml
@@ -22,22 +22,22 @@
             This manual provides the following:
             <itemizedlist>
                 <listitem><para>
-                    Procedures that help you get going with the Yocto Project.
-                    For example, procedures that show you how to set up
+                    Procedures that help you get going with the Yocto Project;
+                    for example, procedures that show you how to set up
                     a build host and work with the Yocto Project
                     source repositories.
                     </para></listitem>
                 <listitem><para>
                     Procedures that show you how to submit changes to the
-                    Yocto Project.
-                    Changes can be improvements, new features, or bug
+                    Yocto Project;
+                    such changes can be improvements, new features, or bug
                     fixes.
                     </para></listitem>
                 <listitem><para>
                     Procedures related to "everyday" tasks you perform while
                     developing images and applications using the Yocto
-                    Project.
-                    For example, procedures to create a layer, customize an
+                    Project;
+                    for example, procedures to create a layer, customize an
                     image, write a new recipe, and so forth.
                     </para></listitem>
             </itemizedlist>
@@ -47,26 +47,26 @@
             This manual does not provide the following:
             <itemizedlist>
                 <listitem><para>
-                    Redundant Step-by-step Instructions:
-                    For example, the
+                    Redundant step-by-step instructions:
+                    The
                     <ulink url='&YOCTO_DOCS_SDK_URL;'>Yocto Project Application Development and the Extensible Software Development Kit (eSDK)</ulink>
-                    manual contains detailed instructions on how to install an
+                    manual already contains detailed instructions on how to install an
                     SDK, which is used to develop applications for target
                     hardware.
                     </para></listitem>
                 <listitem><para>
-                    Reference or Conceptual Material:
+                    Reference or conceptual material:
                     This type of material resides in an appropriate reference
                     manual.
                     For example, system variables are documented in the
                     <ulink url='&YOCTO_DOCS_REF_URL;'>Yocto Project Reference Manual</ulink>.
                     </para></listitem>
                 <listitem><para>
-                    Detailed Public Information Not Specific to the
+                    Detailed public information not specific to the
                     Yocto Project:
-                    For example, exhaustive information on how to use the
+                    As an example, exhaustive information on how to use the
                     Source Control Manager Git is better covered with Internet
-                    searches and official Git Documentation than through the
+                    searches and official Git documentation than through the
                     Yocto Project documentation.
                     </para></listitem>
             </itemizedlist>
diff --git a/documentation/dev-manual/dev-manual-start.xml b/documentation/dev-manual/dev-manual-start.xml
index 59ffa49bb..340cefd37 100644
--- a/documentation/dev-manual/dev-manual-start.xml
+++ b/documentation/dev-manual/dev-manual-start.xml
@@ -24,8 +24,8 @@
         Project in a team development environment, or how to scale it for a
         large team of developers.
         You can adapt the Yocto Project to many different use cases and
-        scenarios.
-        However, this flexibility could cause difficulties if you are trying
+        scenarios;
+        however, this flexibility could cause difficulties if you are trying
         to create a working setup that scales across a large team.
     </para>

@@ -117,7 +117,7 @@
                 Of the SCMs BitBake supports, the Yocto Project team strongly
                 recommends using
                 <ulink url='&YOCTO_DOCS_OM_URL;#git'>Git</ulink>.
-                Git is a distributed system that is easy to backup,
+                Git is a distributed version control system that is easy to backup,
                 allows you to work remotely, and then connects back to the
                 infrastructure.
                 <note>
@@ -168,8 +168,8 @@
                 <itemizedlist>
                     <listitem><para>
                         Use a pre-built toolchain that contains the software
-                        stack itself.
-                        Then, develop the application code on top of the
+                        stack itself,
+                        and develop the application code on top of the
                         stack.
                         This method works well for small numbers of relatively
                         isolated applications.
@@ -302,7 +302,7 @@
                 <para>As with any development environment, it is important
                 to document the policy used as well as any main project
                 guidelines so they are understood by everyone.
-                It is also a good idea to have well structured
+                It is also a good idea to have well-structured
                 commit messages, which are usually a part of a project's
                 guidelines.
                 Good commit messages are essential when looking back in time and

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                         http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================
