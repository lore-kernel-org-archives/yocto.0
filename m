Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87D00E00655
	for <yocto@yoctoproject.org>; Tue, 25 Dec 2012 06:23:21 -0800 (PST)
Received: from wnpgmb0903w-ds01-73-59.dynamic.mtsallstream.net
	([207.161.73.59]:53839 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1TnVPc-0001ul-2m
	for yocto@yoctoproject.org; Tue, 25 Dec 2012 09:23:20 -0500
Date: Tue, 25 Dec 2012 08:23:16 -0600 (CST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1212250821190.9921@oneiric>
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
Subject: [PATCH] Documentation: Fix some URLs in ch 1 of dev manual
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
X-List-Received-Date: Tue, 25 Dec 2012 14:23:21 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  in addition to this, there is a reference to OpenedHand in that list
of URLs, but the o-hand.com URL doesn't work anymore.  someone else
can decide if that item should be removed entirely, or just have the
link removed.

diff --git a/documentation/dev-manual/dev-manual-intro.xml b/documentation/dev-manual/dev-manual-intro.xml
index d7b589f..1a83961 100644
--- a/documentation/dev-manual/dev-manual-intro.xml
+++ b/documentation/dev-manual/dev-manual-intro.xml
@@ -119,15 +119,15 @@
                     Release Notes</ulink>:</emphasis> Features, updates and known issues for the current
                     release of the Yocto Project.</para></listitem>
                 <listitem><para><emphasis>
-                    <ulink url='&YOCTO_HOME_URL;/projects/hob'>
+                    <ulink url='&YOCTO_HOME_URL;/tools-resources/projects/hob'>
                     Hob</ulink>:</emphasis> A graphical user interface for BitBake.
                     Hob's primary goal is to enable a user to perform common tasks more easily.</para></listitem>
                 <listitem><para><emphasis>
-                    <ulink url='&YOCTO_HOME_URL;/documentation/build-appliance'>
+                    <ulink url='&YOCTO_HOME_URL;/download/build-appliance-0'>
                     Build Appliance</ulink>:</emphasis> A bootable custom embedded Linux image you can
                     either build using a non-Linux development system (VMware applications) or download
                     from the Yocto Project website.
-                    See the <ulink url='&YOCTO_HOME_URL;/documentation/build-appliance'>Build Appliance</ulink>
+                    See the <ulink url='&YOCTO_HOME_URL;/documentation/build-appliance-manual'>Build Appliance</ulink>
                     page for more information.</para></listitem>
                 <listitem><para><emphasis>
                     <ulink url='&YOCTO_BUGZILLA_URL;'>Bugzilla</ulink>:</emphasis>

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

