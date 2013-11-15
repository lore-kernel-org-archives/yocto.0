Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1E6CE0160B
	for <yocto@yoctoproject.org>; Fri, 15 Nov 2013 11:36:33 -0800 (PST)
Received: from [173.34.6.101] (port=49709 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VhPBv-0006by-E4; Fri, 15 Nov 2013 14:36:31 -0500
Date: Fri, 15 Nov 2013 14:36:22 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1311151433300.3146@oneiric>
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
Subject: [PATCH] Documentation: Remove apparently non-existent DISTRO_FEATURES from ref manual.
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
X-List-Received-Date: Fri, 15 Nov 2013 19:36:33 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


The following can apparently be removed from the list of valid
DISTRO_FEATURES values as they appear not to exist:

* ext2
* irda
* keyboard
* sdk-pms

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  if anyone has contradictory info on any of the above, let me know;
otherwise, these entries appear to be removable.

diff --git a/documentation/ref-manual/ref-features.xml b/documentation/ref-manual/ref-features.xml
index dedcf67..3ee0aaf 100644
--- a/documentation/ref-manual/ref-features.xml
+++ b/documentation/ref-manual/ref-features.xml
@@ -67,19 +67,10 @@
                     bluetooth support (integrated BT only).</para></listitem>
                 <listitem><para><emphasis>cramfs:</emphasis> Include CramFS
                     support.</para></listitem>
-                <listitem><para><emphasis>ext2:</emphasis> Include tools for
-                    supporting for devices with internal HDD/Microdrive for
-                    storing files (instead of Flash only devices).
-                    </para></listitem>
                 <listitem><para><emphasis>ipsec:</emphasis> Include IPSec
                     support.</para></listitem>
                 <listitem><para><emphasis>ipv6:</emphasis> Include IPv6 support.
                     </para></listitem>
-                <listitem><para><emphasis>irda:</emphasis> Include Irda support.
-                    </para></listitem>
-                <listitem><para><emphasis>keyboard:</emphasis> Include keyboard
-                    support (e.g. keymaps will be loaded during boot).
-                    </para></listitem>
                 <listitem><para><emphasis>nfs:</emphasis> Include NFS client
                     support (for mounting NFS exports on device).
                     </para></listitem>
@@ -115,12 +106,6 @@
                     supports it.</para></listitem>
                 <listitem><para><emphasis>wifi:</emphasis> Include WiFi support
                     (integrated only).</para></listitem>
-                <listitem><para><emphasis>sdk-pms:</emphasis> Include Package
-                    Management Tools in the
-                    <filename>nativesdk</filename> toolchain tarball.
-                    Including these tools allows for easy sandbox use when
-                    creating the root filesystem while using the SDK tarball.
-                    </para></listitem>
             </itemizedlist>
         </para>
     </section>

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

