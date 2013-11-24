Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BD79E00748
	for <yocto@yoctoproject.org>; Sun, 24 Nov 2013 03:19:01 -0800 (PST)
Received: from [173.34.6.101] (port=47574 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VkXiO-0007tz-4n
	for yocto@yoctoproject.org; Sun, 24 Nov 2013 06:19:00 -0500
Date: Sun, 24 Nov 2013 06:18:55 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1311240615540.543@oneiric>
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
Subject: [PATCH] Documentation: dev manual, add a reference to poky-bleeding distro
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
X-List-Received-Date: Sun, 24 Nov 2013 11:19:02 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


As an actual example of using AUTOREV, refer the reader to the
Yocto-supplied poky-bleeding distribution.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index 6b60445..fba2484 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -4405,6 +4405,36 @@
             is the name of the recipe for which you want to enable automatic source
             revision updating.
         </para>
+
+        <para>
+            In fact, the Yocto Project provides a distribution named
+            <filename>poky-bleeding</filename>, whose configuration file contains
+            the line:
+            <literallayout class='monospaced'>
+     require conf/distro/include/poky-floating-revisions.inc
+            </literallayout>
+            which pulls in the listed include file that contains numerous lines of
+            exactly that form:
+            <literallayout class='monospaced'>
+     SRCREV_pn-gconf-dbus ?= "${AUTOREV}"
+     SRCREV_pn-matchbox-common ?= "${AUTOREV}"
+     SRCREV_pn-matchbox-config-gtk ?= "${AUTOREV}"
+     SRCREV_pn-matchbox-desktop ?= "${AUTOREV}"
+     SRCREV_pn-matchbox-keyboard ?= "${AUTOREV}"
+     SRCREV_pn-matchbox-panel ?= "${AUTOREV}"
+     SRCREV_pn-matchbox-panel-2 ?= "${AUTOREV}"
+     SRCREV_pn-matchbox-themes-extra ?= "${AUTOREV}"
+     SRCREV_pn-matchbox-terminal ?= "${AUTOREV}"
+     SRCREV_pn-matchbox-wm ?= "${AUTOREV}"
+     SRCREV_pn-matchbox-wm-2 ?= "${AUTOREV}"
+     SRCREV_pn-settings-daemon ?= "${AUTOREV}"
+     SRCREV_pn-screenshot ?= "${AUTOREV}"
+     SRCREV_pn-libfakekey ?= "${AUTOREV}"
+     SRCREV_pn-oprofileui ?= "${AUTOREV}"
+            </literallayout>
+            and so on, allowing the developer to experiment with building a distribution that
+            tracks the latest development source for numerous packages.
+            </para>
     </section>

     <section id='creating-a-read-only-root-filesystem'>

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

