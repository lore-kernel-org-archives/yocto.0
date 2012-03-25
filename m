Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4607E01386
	for <yocto@yoctoproject.org>; Sun, 25 Mar 2012 04:02:08 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1SBlD6-0005k9-3X
	for yocto@yoctoproject.org; Sun, 25 Mar 2012 07:02:08 -0400
Date: Sun, 25 Mar 2012 07:01:57 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1203250700370.524@oneiric>
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
Subject: [PATCH] Documentation: "STAMPS" variable should be "STAMP"
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
X-List-Received-Date: Sun, 25 Mar 2012 11:02:09 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  pretty sure that variable should be "STAMP", no?

diff --git a/documentation/poky-ref-manual/ref-bitbake.xml b/documentation/poky-ref-manual/ref-bitbake.xml
index fa8c624..064a06d 100644
--- a/documentation/poky-ref-manual/ref-bitbake.xml
+++ b/documentation/poky-ref-manual/ref-bitbake.xml
@@ -215,9 +215,9 @@

         <para>
             As each task completes, a timestamp is written to the directory specified by the
-            <filename><link linkend='var-STAMPS'>STAMPS</link></filename> variable (usually
+            <filename><link linkend='var-STAMP'>STAMP</link></filename> variable (usually
             <filename>build/tmp/stamps/*/</filename>).
-            On subsequent runs, BitBake looks at the <filename>STAMPS</filename> directory and does not rerun
+            On subsequent runs, BitBake looks at the <filename>STAMP</filename> directory and does not rerun
             tasks that are already completed unless a timestamp is found to be invalid.
             Currently, invalid timestamps are only considered on a per
             <filename>.bb</filename> file basis.
diff --git a/documentation/poky-ref-manual/ref-variables.xml b/documentation/poky-ref-manual/ref-variables.xml
index f345a9e..1025856 100644
--- a/documentation/poky-ref-manual/ref-variables.xml
+++ b/documentation/poky-ref-manual/ref-variables.xml
@@ -1740,7 +1740,7 @@ FILESPATH = "${@base_set_filespath([ "${FILE_DIRNAME}/${PF}", \
             </glossdef>
         </glossentry>

-        <glossentry id='var-STAMPS'><glossterm>STAMPS</glossterm>
+        <glossentry id='var-STAMP'><glossterm>STAMP</glossterm>
             <glossdef>
                 <para>
                     The directory (usually <filename>TMPDIR/stamps</filename>) with timestamps of

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

