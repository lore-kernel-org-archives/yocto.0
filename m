Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 562C2E002AB
	for <yocto@yoctoproject.org>; Tue, 25 Dec 2012 11:40:39 -0800 (PST)
Received: from wnpgmb0903w-ds01-73-59.dynamic.mtsallstream.net
	([207.161.73.59]:54409 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1TnaMg-0003D7-Gj; Tue, 25 Dec 2012 14:40:38 -0500
Date: Tue, 25 Dec 2012 13:40:35 -0600 (CST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1212251339360.5117@oneiric>
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
Subject: [PATCH] Documentation: Minor tweaks in Chapter 2 of Dev Manual.
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
X-List-Received-Date: Tue, 25 Dec 2012 19:40:39 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/dev-manual/dev-manual-start.xml b/documentation/dev-manual/dev-manual-start.xml
index 299a02d..b9401e9 100644
--- a/documentation/dev-manual/dev-manual-start.xml
+++ b/documentation/dev-manual/dev-manual-start.xml
@@ -53,7 +53,7 @@
             <listitem><para><emphasis>Host System:</emphasis>  You should have a reasonably current
                 Linux-based host system.
                 You will have the best results with a recent release of Fedora,
-                OpenSUSE, Ubuntu, or CentOS as these releases are frequently tested against the Yocto Project
+                OpenSUSE, Debian, Ubuntu, or CentOS as these releases are frequently tested against the Yocto Project
                 and officially supported.
                 For a list of the distributions under validation and their status, see the
                 "<ulink url='&YOCTO_DOCS_REF_URL;#detailed-supported-distros'>Supported Linux Distributions</ulink>" section
@@ -70,7 +70,7 @@
                 for the supported distributions.</para></listitem>
             <listitem id='local-yp-release'><para><emphasis>Yocto Project Release:</emphasis>
                 You need a release of the Yocto Project.
-                You set up a with local <link linkend='source-directory'>Source Directory</link>
+                You set that up with a local <link linkend='source-directory'>Source Directory</link>
                 one of two ways depending on whether you
                 are going to contribute back into the Yocto Project or not.
                 <note>

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

