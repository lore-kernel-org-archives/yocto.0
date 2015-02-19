Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FB94E00546; Thu, 19 Feb 2015 02:11:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4A3DE00345
	for <yocto@yoctoproject.org>; Thu, 19 Feb 2015 02:11:53 -0800 (PST)
Received: from [99.240.204.5] (port=56124 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1YOO5F-0005Ig-6f
	for yocto@yoctoproject.org; Thu, 19 Feb 2015 05:11:49 -0500
Date: Thu, 19 Feb 2015 05:11:49 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1502190508290.29947@localhost>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
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
Subject: "cross-localedef-native" build error (with gcc-5.0.0)
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
X-List-Received-Date: Thu, 19 Feb 2015 10:11:56 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  didn't see any mention of this in YP's bugzilla:

gcc  -o localedef charmap.o charmap-dir.o ld-address.o ld-collate.o ld-ctype.o ld-identification.o ld-measurement.o ld-messages.o ld-monetary.o ld-name.o ld-numeric.o ld-paper.o ld-telephone.o ld-time.o linereader.o localedef.o locarchive.o locfile.o repertoire.o simple-hash.o xmalloc.o xstrdup.o argp-ba.o argp-eexst.o argp-fmtstream.o argp-help.o argp-parse.o argp-pv.o argp-xinl.o error.o getopt.o getopt1.o md5.o obstack.o asprintf.o getdelim.o localedef_extra.o obstack_printf.o vasprintf.o
argp-help.o: In function `argp_fmtstream_write':
argp-help.c:(.text+0x1da0): multiple definition of `argp_fmtstream_write'
argp-fmtstream.o:argp-fmtstream.c:(.text+0x7a0): first defined here
argp-help.o: In function `argp_fmtstream_puts':
argp-help.c:(.text+0x1df0): multiple definition of `argp_fmtstream_puts'
argp-fmtstream.o:argp-fmtstream.c:(.text+0x860): first defined here
argp-help.o: In function `argp_fmtstream_putc':
argp-help.c:(.text+0x1e60): multiple definition of `argp_fmtstream_putc'
argp-fmtstream.o:argp-fmtstream.c:(.text+0x800): first defined here
argp-help.o: In function `argp_fmtstream_set_lmargin':
argp-help.c:(.text+0x1eb0): multiple definition of `argp_fmtstream_set_lmargin'
argp-fmtstream.o:argp-fmtstream.c:(.text+0x5e0): first defined here
argp-help.o: In function `argp_fmtstream_set_rmargin':
argp-help.c:(.text+0x1ee0): multiple definition of `argp_fmtstream_set_rmargin'
argp-fmtstream.o:argp-fmtstream.c:(.text+0x610): first defined here
argp-help.o: In function `argp_fmtstream_set_wmargin':
argp-help.c:(.text+0x1f10): multiple definition of `argp_fmtstream_set_wmargin'
argp-fmtstream.o:argp-fmtstream.c:(.text+0x640): first defined here
argp-help.o: In function `argp_fmtstream_point':
argp-help.c:(.text+0x1f40): multiple definition of `argp_fmtstream_point'
argp-fmtstream.o:argp-fmtstream.c:(.text+0x670): first defined here
collect2: error: ld returned 1 exit status
Makefile:59: recipe for target 'localedef' failed
make: *** [localedef] Error 1
ERROR: oe_runmake failed
WARNING: /home/rpjday/oe/builds/vtss/minimal/tmp/work/x86_64-linux/cross-localedef-native/2.20-r0/temp/run.do_compile.27985:1 exit 1 from
  exit 1
ERROR: Function failed: do_compile (log file is located at /home/rpjday/oe/builds/vtss/minimal/tmp/work/x86_64-linux/cross-localedef-native/2.20-r0/temp/log.do_compile.27985)

  is this a known issue?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

