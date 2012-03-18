Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94B54E00747
	for <yocto@yoctoproject.org>; Sun, 18 Mar 2012 09:39:49 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1S9J93-0001H2-2o
	for yocto@yoctoproject.org; Sun, 18 Mar 2012 12:39:49 -0400
Date: Sun, 18 Mar 2012 12:39:40 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1203181238200.18602@oneiric>
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
Subject: [PATCH] Documentation: Fix a couple simple errors in QS XML.
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
X-List-Received-Date: Sun, 18 Mar 2012 16:39:49 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


* One obvious typo.
* The clone directory will be named "poky", not "git".

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml b/documentation/yocto-project-qs/yocto-project-qs.xml
index 785707f..f2ba859 100644
--- a/documentation/yocto-project-qs/yocto-project-qs.xml
+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
@@ -716,7 +716,7 @@
                 <listitem><para><emphasis>Git Repository:</emphasis>
                     Use if you want to work with cutting edge development content:
                     <literallayout class='monospaced'>
-     $ git clone &YOCTO_GIT_URL;.poky.git
+     $ git clone &YOCTO_GIT_URL;/poky.git
                     </literallayout></para></listitem>
             </itemizedlist>
             The remainder of the section assumes the Git repository method.
@@ -742,7 +742,7 @@
             <ulink url='&YOCTO_DOCS_DEV_URL;#yocto-project-build-directory'>Yocto Project Build Directory</ulink>
             name:
             <literallayout class='monospaced'>
-     $ source git/oe-init-build-env mybuilds
+     $ source poky/oe-init-build-env mybuilds
             </literallayout>
             At this point, the <filename>mybuilds</filename> directory has been created for you
             and it is now your current working directory.


rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

