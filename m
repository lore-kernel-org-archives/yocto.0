Return-Path: <joseph_myers@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C051E00791; Wed, 14 Sep 2016 16:51:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	URIBL_RED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	*  0.0 URIBL_RED Contains an URL listed in the URIBL redlist
	*      [URIs: codesourcery.com]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1708 seconds by postgrey-1.32 at yocto-www;
	Wed, 14 Sep 2016 16:51:50 PDT
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59B10E00756
	for <yocto@yoctoproject.org>; Wed, 14 Sep 2016 16:51:50 -0700 (PDT)
Received: from nat-ies.mentorg.com ([192.94.31.2]
	helo=svr-ies-mbx-01.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1bkJWS-0006dD-VA from joseph_myers@mentor.com ;
	Wed, 14 Sep 2016 16:23:21 -0700
Received: from digraph.polyomino.org.uk (137.202.0.87) by
	svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1) with Microsoft SMTP
	Server (TLS) id 15.0.1210.3; Thu, 15 Sep 2016 00:23:17 +0100
Received: from jsm28 (helo=localhost)
	by digraph.polyomino.org.uk with local-esmtp (Exim 4.86_2)
	(envelope-from <joseph@codesourcery.com>)
	id 1bkJWL-0007o2-ET; Wed, 14 Sep 2016 23:23:13 +0000
Date: Wed, 14 Sep 2016 23:23:13 +0000
From: Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To: <mark.hatle@windriver.com>
Message-ID: <alpine.DEB.2.20.1609142321590.14953@digraph.polyomino.org.uk>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
X-Originating-IP: [137.202.0.87]
X-ClientProxiedBy: svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1) To
	svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1)
X-Mailman-Approved-At: Thu, 15 Sep 2016 07:44:34 -0700
Cc: yocto@yoctoproject.org
Subject: [prelink-cross] Support x32 libx32 directory
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
X-List-Received-Date: Wed, 14 Sep 2016 23:51:54 -0000
Content-Type: text/plain; charset="US-ASCII"

Cross-prelink's prelink-rtld is missing suport for the /libx32
directory used with the x86_64 x32 ABI.  This patch adds such support.

2016-09-14  Joseph Myers  <joseph@codesourcery.com>

	* src/rtld/rtld.c (load_ld_so_conf): Add argument use_x32.
	(main): Update call to load_ld_so_conf.

diff --git a/src/rtld/rtld.c b/src/rtld/rtld.c
index 8d7d760..2d72083 100644
--- a/src/rtld/rtld.c
+++ b/src/rtld/rtld.c
@@ -409,7 +409,7 @@ free_path (struct search_path *path)
 }
 
 void
-load_ld_so_conf (int use_64bit, int use_mipsn32)
+load_ld_so_conf (int use_64bit, int use_mipsn32, int use_x32)
 {
   int fd;
   FILE *conf;
@@ -435,6 +435,14 @@ load_ld_so_conf (int use_64bit, int use_mipsn32)
       add_dir (&ld_dirs, "/usr/lib32/tls", strlen ("/usr/lib32/tls"));
       add_dir (&ld_dirs, "/usr/lib32", strlen ("/usr/lib32"));
     }
+  else if (use_x32)
+    {
+      dst_LIB = "libx32";
+      add_dir (&ld_dirs, "/libx32/tls", strlen ("/libx32/tls"));
+      add_dir (&ld_dirs, "/libx32", strlen ("/libx32"));
+      add_dir (&ld_dirs, "/usr/libx32/tls", strlen ("/usr/libx32/tls"));
+      add_dir (&ld_dirs, "/usr/libx32", strlen ("/usr/libx32"));
+    }
   else
     {
       dst_LIB = "lib";
@@ -1195,7 +1203,8 @@ main(int argc, char **argv)
 	}
 
       load_ld_so_conf (gelf_getclass (dso->elf) == ELFCLASS64, 
-		( dso->ehdr.e_machine == EM_MIPS) && ( dso->ehdr.e_flags & EF_MIPS_ABI2 ) );
+		( dso->ehdr.e_machine == EM_MIPS) && ( dso->ehdr.e_flags & EF_MIPS_ABI2 ),
+		dso->ehdr.e_machine == EM_X86_64 && gelf_getclass (dso->elf) == ELFCLASS32);
 
       if (multiple)
 	printf ("%s:\n", argv[remaining]);

-- 
Joseph S. Myers
joseph@codesourcery.com

