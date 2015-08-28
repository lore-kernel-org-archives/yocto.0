Return-Path: <yoctolist@wadefalk.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9EAC9E00C6B; Fri, 28 Aug 2015 08:35:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	XPRIO autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [81.236.60.204 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000] *  1.0 XPRIO Has X-Priority header
X-Greylist: delayed 127 seconds by postgrey-1.32 at yocto-www;
	Fri, 28 Aug 2015 08:35:37 PDT
Received: from v-smtpgw1.han.skanova.net (v-smtpgw1.han.skanova.net
	[81.236.60.204])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3CFEE00A3C
	for <yocto@yoctoproject.org>; Fri, 28 Aug 2015 08:35:37 -0700 (PDT)
Received: from serverjudas.localdomain ([81.225.137.249]) by cmsmtp with SMTP
	id VLegZ48SUFhmqVLegZ2iAj; Fri, 28 Aug 2015 17:33:27 +0200
Received: by serverjudas.localdomain (Postfix, from userid 65534)
	id 5196818041A; Fri, 28 Aug 2015 17:33:06 +0200 (CEST)
Received: from wadefalk.se (localhost.localdomain [127.0.0.1])
	(Authenticated sender: yoctolist@wadefalk.se)
	by serverjudas.localdomain (Postfix) with ESMTPA id 18D69180418
	for <yocto@yoctoproject.org>; Fri, 28 Aug 2015 17:32:57 +0200 (CEST)
Received: from 46.59.120.190 (proxying for unknown)
	(SquirrelMail authenticated user yoctolist@wadefalk.se)
	by wadefalk.se with HTTP; Fri, 28 Aug 2015 17:33:03 +0200
Message-ID: <14e7bf51c4542c3fd89b378dae079b90.squirrel@wadefalk.se>
Date: Fri, 28 Aug 2015 17:33:03 +0200
From: yoctolist@wadefalk.se
To: yocto@yoctoproject.org
User-Agent: SquirrelMail/1.4.21
MIME-Version: 1.0
X-Priority: 3 (Normal)
Importance: Normal
X-CMAE-Envelope: MS4wfH2Bbo1tULV60WgYi3L0sPzjOM3fggKcefnV0d8C+UkoupDBmEIoZ3/z+Qehh1t+sq4L5mwXiw7+mXpYgU3wmCfPVefhLT77OWsv4gMkraQOHRV/RfdxXxpsjZymYfCGE/6SePcVE2uCGhlv6Ybz+SF6z0NskM+rrMsAQk16La4gZVHWKwL1/i7G0onjASjOrA==
Subject: Failing building meta-toolchain-qt (fido, ubuntu 14.04), compiling gstreamer
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
X-List-Received-Date: Fri, 28 Aug 2015 15:35:39 -0000
Content-Type: text/plain;charset=utf-8
Content-Transfer-Encoding: 8bit

This build problem is really weird.
It's quite a clean build and yet still it fails on gstreamer_0.10.36-r2

Any clues? Do I need some patch? There is a done file in downloads that
probably is related:

/opt/rpiyocto/downloads/gstreamer-change-priv_gst_parse_yylex-arguments.patch.done

and in gstreamer folder:

drwxr-xr-x  7 jenkins yocto 4,0K aug 28 16:31 .
drwxr-xr-x  3 jenkins yocto 4,0K aug 28 16:29 ..
-rw-r--r--  1 jenkins yocto 1,2K aug 28 16:29
0001-baseparse-Fix-self-comparison-always-evaluates-to-tr.patch
drwxr-xr-x 13 jenkins yocto 4,0K aug 28 16:31 build
-rw-r--r--  1 jenkins yocto  692 aug 28 16:29 check_fix.patch
-rw-r--r--  1 jenkins yocto   33 aug 28 16:31 configure.sstate
-rw-r--r--  1 jenkins yocto  652 aug 28 16:29 gst-inspect-check-error.patch
drwxr-xr-x 17 jenkins yocto 4,0K aug 28 16:30 gstreamer-0.10.36
-rw-r--r--  1 jenkins yocto 1004 aug 28 16:29
gstreamer-change-priv_gst_parse_yylex-arguments.patch
drwxr-xr-x  3 jenkins yocto 4,0K aug 28 16:29 license-destdir
drwxr-xr-x  2 jenkins yocto 4,0K aug 28 16:29 sstate-install-populate_lic
drwxr-xr-x  2 jenkins yocto 4,0K aug 28 16:31 temp


Something about the build error:

| lex.priv_gst_parse_yy.c:1009:5: warning: redundant redeclaration of
'priv_gst_parse_yyget_column' [-Wredundant-decls]
|
|      ^
| lex.priv_gst_parse_yy.c:4:19: note: previous declaration of
'priv_gst_parse_yyget_column' was here
|  static inline int priv_gst_parse_yyget_column  (void * yyscanner);
|                    ^
| lex.priv_gst_parse_yy.c:1011:6: warning: redundant redeclaration of
'priv_gst_parse_yyset_column' [-Wredundant-decls]
|
|       ^
| lex.priv_gst_parse_yy.c:5:20: note: previous declaration of
'priv_gst_parse_yyset_column' was here
|  static inline void priv_gst_parse_yyset_column (int  column_no , void *
yyscanner);
|


...



| grammar.tab.c: In function 'priv_gst_parse_yyparse':
| grammar.tab.c:67:25: error: too many arguments to function
'priv_gst_parse_yylex'
|  #define yylex           priv_gst_parse_yylex
|                          ^
| grammar.tab.c:1299:16: note: in expansion of macro 'yylex'
|
|                 ^
| grammar.tab.c:1978:16: note: in expansion of macro 'YYLEX'
|    if (yychar == YYEMPTY)
|                 ^
|
/var/lib/jenkins/workspace/build-yocto/rpi-build/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/gstreamer/0.10.36-r2/gstreamer-0.10.36/gst/parse/grammar.y:39:5:
note: declared here
|  int priv_gst_parse_yylex (yyscan_t yyscanner);
|      ^
| make[4]: *** [libgstparse_la-grammar.tab.lo] Error 1




