Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6846DE0070C
	for <yocto@yoctoproject.org>; Sat, 30 Jun 2012 05:03:08 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63]:34746 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1SkwOJ-00083g-I4
	for yocto@yoctoproject.org; Sat, 30 Jun 2012 08:03:07 -0400
Date: Sat, 30 Jun 2012 08:03:03 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1206300802010.16555@oneiric>
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
Subject: [PATCH] Poky ref manual, fix obvious errors in INC_PR example.
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
X-List-Received-Date: Sat, 30 Jun 2012 12:03:08 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/poky-ref-manual/ref-variables.xml b/documentation/poky-ref-manual/ref-variables.xml
index c815d3c..5810066 100644
--- a/documentation/poky-ref-manual/ref-variables.xml
+++ b/documentation/poky-ref-manual/ref-variables.xml
@@ -957,10 +957,10 @@ FILESPATH = "${@base_set_filespath([ "${FILE_DIRNAME}/${PF}", \
                     Once defined, you can use the variable to set the <filename>PR</filename> value:
                 </para>
                 <literallayout class='monospaced'>
- recipes-graphics/xorg-font/font-util_1.1.1.bb:PR - "$(INC_PR).1"
- recipes-graphics/xorg-font/xorg-font-common.inc:INC_PR - "r1"
- recipes-graphics/xorg-font/encondings_1.0.3.bb:PR - "$(INC_PR).1"
- recipes-graphics/xorg-font/fiont-alias_1.0.2.bb:PR - "$(INC_PR).0"
+recipes-graphics/xorg-font/encodings_1.0.4.bb:PR = "${INC_PR}.1"
+recipes-graphics/xorg-font/font-util_1.3.0.bb:PR = "${INC_PR}.0"
+recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
+recipes-graphics/xorg-font/xorg-font-common.inc:INC_PR = "r2"
                 </literallayout>
             </glossdef>
         </glossentry>

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

