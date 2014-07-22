Return-Path: <Maciej_Rozycki@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68C6CE00572; Tue, 22 Jul 2014 07:51:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73DDBE00524
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 07:51:06 -0700 (PDT)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1X9bPF-0003gs-LN from Maciej_Rozycki@mentor.com ;
	Tue, 22 Jul 2014 07:51:05 -0700
Received: from SVR-IES-FEM-03.mgc.mentorg.com ([137.202.0.108]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Tue, 22 Jul 2014 07:51:05 -0700
Received: from localhost (137.202.0.76) by SVR-IES-FEM-03.mgc.mentorg.com
	(137.202.0.108) with Microsoft SMTP Server (TLS) id 14.2.247.3;
	Tue, 22 Jul 2014 15:51:03 +0100
Date: Tue, 22 Jul 2014 15:50:59 +0100
From: "Maciej W. Rozycki" <macro@codesourcery.com>
To: <mark.hatle@windriver.com>
Message-ID: <alpine.DEB.1.10.1407221529230.16254@tp.orcam.me.uk>
User-Agent: Alpine 1.10 (DEB 962 2008-03-14)
MIME-Version: 1.0
X-OriginalArrivalTime: 22 Jul 2014 14:51:05.0498 (UTC)
	FILETIME=[5D4FCFA0:01CFA5BC]
X-Mailman-Approved-At: Tue, 22 Jul 2014 08:40:23 -0700
Cc: yocto@yoctoproject.org
Subject: [prelink-cross][PATCH] Always create a conflict for R_ARM_TLS_DESC relocs
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
X-List-Received-Date: Tue, 22 Jul 2014 14:51:12 -0000
Content-Type: text/plain; charset="US-ASCII"

Hi,

 This is a bit obscure.  In my testing, for the purpose of upstreaming, of 
the glibc change to support ARM TLS descriptors in prelinked binaries (cf 
upstream BZ #17078, https://sourceware.org/bugzilla/show_bug.cgi?id=17078) 
I have come across a problem where all programs prelinked against glibc 
binaries using ARM TLS descriptors themselves segfaulted in the normal 
exit path, where libc.so's own TLS destructors are called.  I have tracked 
it down to the GOT entry (pointed to by the DT_TLSDESC_GOT dynamic tag) 
meant to point to the lazy TLS descriptor resolver (pointed to by the 
DT_TLSDESC_PLT dynamic tag) being left uninitialised and therefore NULL.  
An attempt to call that resolver caused therefore a segfault.

 The cause of this lack of initialisation turned out to be an omission in 
the original fix (dated 2011-04-13 in ChangeLog.cross), that didn't ensure 
that a conflict entry is created even for these R_ARM_TLS_DESC relocations 
that refer to a local symbol.  Somehow it didn't trigger in testing back 
when implemented, perhaps glibc didn't require or access the missing entry 
in code handling TLS destructors then.  Such an entry is needed, because 
for prelinked binaries the DT_TLSDESC_GOT GOT entry is only initialised by 
the dynamic linker when a conflict is resolved.  The change below enforces 
this conflict entry creation.

 This fix removes 33 failures in prelink testing with glibc built using 
ARM TLS descriptors, that is with the `-mtls-dialect=gnu2' GCC option in 
effect (that is not the default unless explicitly requested at GCC build 
time):

FAIL -> PASS: default/prelink.sum:cxx1.sh
FAIL -> PASS: default/prelink.sum:cxx2.sh
FAIL -> PASS: default/prelink.sum:cxx3.sh
FAIL -> PASS: default/prelink.sum:layout1.sh
FAIL -> PASS: default/prelink.sum:layout2.sh
FAIL -> PASS: default/prelink.sum:reloc1.sh
FAIL -> PASS: default/prelink.sum:reloc10.sh
FAIL -> PASS: default/prelink.sum:reloc11.sh
FAIL -> PASS: default/prelink.sum:reloc2.sh
FAIL -> PASS: default/prelink.sum:reloc3.sh
FAIL -> PASS: default/prelink.sum:reloc4.sh
FAIL -> PASS: default/prelink.sum:reloc5.sh
FAIL -> PASS: default/prelink.sum:reloc6.sh
FAIL -> PASS: default/prelink.sum:reloc7.sh
FAIL -> PASS: default/prelink.sum:reloc8.sh
FAIL -> PASS: default/prelink.sum:reloc9.sh
FAIL -> PASS: default/prelink.sum:shuffle1.sh
FAIL -> PASS: default/prelink.sum:shuffle2.sh
FAIL -> PASS: default/prelink.sum:shuffle3.sh
FAIL -> PASS: default/prelink.sum:shuffle4.sh
FAIL -> PASS: default/prelink.sum:shuffle5.sh
FAIL -> PASS: default/prelink.sum:shuffle6.sh
FAIL -> PASS: default/prelink.sum:shuffle7.sh
FAIL -> PASS: default/prelink.sum:shuffle8.sh
FAIL -> PASS: default/prelink.sum:shuffle9.sh
FAIL -> PASS: default/prelink.sum:tls1.sh
FAIL -> PASS: default/prelink.sum:tls2.sh
FAIL -> PASS: default/prelink.sum:tls3.sh
FAIL -> PASS: default/prelink.sum:tls4.sh
FAIL -> PASS: default/prelink.sum:tls5.sh
FAIL -> PASS: default/prelink.sum:tls6.sh
FAIL -> PASS: default/prelink.sum:tls7.sh
FAIL -> PASS: default/prelink.sum:undo1.sh

 Please apply.

2014-07-22  Maciej W. Rozycki  <macro@codesourcery.com>

	* src/arch-arm.c (arm_prelink_conflict_rel): Always create a 
	conflict for R_ARM_TLS_DESC relocs.
	(arm_prelink_conflict_rela): Likewise.

  Maciej

prelink-arm-tlsdesc-conflict-always.diff
Index: trunk/src/arch-arm.c
===================================================================
--- trunk.orig/src/arch-arm.c	2014-07-17 23:26:08.000000000 +0100
+++ trunk/src/arch-arm.c	2014-07-18 04:18:53.790564615 +0100
@@ -416,7 +416,9 @@ arm_prelink_conflict_rel (DSO *dso, stru
 	case R_ARM_TLS_DTPMOD32:
 	case R_ARM_TLS_TPOFF32:
 	  break;
-
+	/* Likewise TLS_DESC.  */
+	case R_ARM_TLS_DESC:
+	  break;
 	default:
 	  return 0;
 	}
@@ -526,7 +528,9 @@ arm_prelink_conflict_rela (DSO *dso, str
 	case R_ARM_TLS_DTPMOD32:
 	case R_ARM_TLS_TPOFF32:
 	  break;
-
+	/* Likewise TLS_DESC.  */
+	case R_ARM_TLS_DESC:
+	  break;
 	default:
 	  return 0;
 	}

