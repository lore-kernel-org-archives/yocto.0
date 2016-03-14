Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3E35E00CB2; Mon, 14 Mar 2016 04:02:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 9B1F2E00A9C
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 04:02:09 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.266.1;
	Mon, 14 Mar 2016 12:02:07 +0100
Received: by sestofb10.enea.se (Postfix, from userid 4451)	id 342A028BA23;
	Mon, 14 Mar 2016 12:02:07 +0100 (CET)
From: Adrian Dudau <adrian.dudau@enea.com>
To: <yocto@yoctoproject.org>
Date: Mon, 14 Mar 2016 12:02:07 +0100
Message-ID: <1457953327-29473-1-git-send-email-adrian.dudau@enea.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Received-SPF: None (SESTOEX03.enea.se: adrian.dudau@enea.com does not
	designate permitted sender hosts)
Subject: [meta-selinux][PATCH] net-tools: Rebase netstat-selinux-support.patch
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
X-List-Received-Date: Mon, 14 Mar 2016 11:02:12 -0000
Content-Type: text/plain

Signed-off-by: Adrian Dudau <adrian.dudau@enea.com>
---
 .../net-tools/netstat-selinux-support.patch        | 55 +++++++++++-----------
 1 file changed, 28 insertions(+), 27 deletions(-)

diff --git a/recipes-extended/net-tools/net-tools/netstat-selinux-support.patch b/recipes-extended/net-tools/net-tools/netstat-selinux-support.patch
index 2a97216..f089041 100644
--- a/recipes-extended/net-tools/net-tools/netstat-selinux-support.patch
+++ b/recipes-extended/net-tools/net-tools/netstat-selinux-support.patch
@@ -5,13 +5,14 @@ Subject: [PATCH] net-tools: netstat add SELinux support.
 Upstream-Status: Inappropriate [configuration]
 
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+Signed-off-by: Adrian Dudau <adrian.dudau@enea.com>
 ---
- Makefile  |    9 +++++++-
- netstat.c |   69 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++--
+ Makefile  |  9 ++++++++-
+ netstat.c | 69 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++---
  2 files changed, 74 insertions(+), 4 deletions(-)
 
 diff --git a/Makefile b/Makefile
-index 8fcc55c..dca8fbc 100644
+index 8fcc55c..0b5c395 100644
 --- a/Makefile
 +++ b/Makefile
 @@ -116,6 +116,13 @@ NET_LIB = $(NET_LIB_PATH)/lib$(NET_LIB_NAME).a
@@ -38,12 +39,12 @@ index 8fcc55c..dca8fbc 100644
  iptunnel:	$(NET_LIB) iptunnel.o
  		$(CC) $(LDFLAGS) -o iptunnel iptunnel.o $(NLIB) $(RESLIB)
 diff --git a/netstat.c b/netstat.c
-index c3a7bb1..71be41f 100644
+index fc10414..a773e81 100644
 --- a/netstat.c
 +++ b/netstat.c
-@@ -86,6 +86,12 @@
- #include <net/if.h>
- #include <dirent.h>
+@@ -90,6 +90,12 @@
+ #include <sys/types.h>
+ #include <asm-generic/param.h>
  
 +#if HAVE_SELINUX
 +#include <selinux/selinux.h>
@@ -54,7 +55,7 @@ index c3a7bb1..71be41f 100644
  #include "net-support.h"
  #include "pathnames.h"
  #include "version.h"
-@@ -97,6 +103,7 @@
+@@ -101,6 +107,7 @@
  #include "proc.h"
  
  #define PROGNAME_WIDTH 20
@@ -62,7 +63,7 @@ index c3a7bb1..71be41f 100644
  
  #if !defined(s6_addr32) && defined(in6a_words)
  #define s6_addr32 in6a_words	/* libinet6			*/
-@@ -153,6 +160,7 @@ int flag_wide= 0;
+@@ -180,6 +187,7 @@ int flag_wide= 0;
  int flag_prg = 0;
  int flag_arg = 0;
  int flag_ver = 0;
@@ -70,7 +71,7 @@ index c3a7bb1..71be41f 100644
  
  FILE *procinfo;
  
-@@ -216,12 +224,17 @@ FILE *procinfo;
+@@ -243,12 +251,17 @@ FILE *procinfo;
  #define PROGNAME_WIDTH1(s) PROGNAME_WIDTH2(s)
  #define PROGNAME_WIDTH2(s) #s
  
@@ -88,7 +89,7 @@ index c3a7bb1..71be41f 100644
  } *prg_hash[PRG_HASH_SIZE];
  
  static char prg_cache_loaded = 0;
-@@ -229,9 +242,12 @@ static char prg_cache_loaded = 0;
+@@ -256,9 +269,12 @@ static char prg_cache_loaded = 0;
  #define PRG_HASHIT(x) ((x) % PRG_HASH_SIZE)
  
  #define PROGNAME_BANNER "PID/Program name"
@@ -101,7 +102,7 @@ index c3a7bb1..71be41f 100644
  #define PRG_LOCAL_ADDRESS "local_address"
  #define PRG_INODE	 "inode"
  #define PRG_SOCKET_PFX    "socket:["
-@@ -253,7 +269,7 @@ static char prg_cache_loaded = 0;
+@@ -280,7 +296,7 @@ static char prg_cache_loaded = 0;
  /* NOT working as of glibc-2.0.7: */
  #undef  DIRENT_HAVE_D_TYPE_WORKS
  
@@ -110,7 +111,7 @@ index c3a7bb1..71be41f 100644
  {
      unsigned hi = PRG_HASHIT(inode);
      struct prg_node **pnp,*pn;
-@@ -274,6 +290,14 @@ static void prg_cache_add(unsigned long inode, char *name)
+@@ -301,6 +317,14 @@ static void prg_cache_add(unsigned long inode, char *name)
      if (strlen(name)>sizeof(pn->name)-1) 
  	name[sizeof(pn->name)-1]='\0';
      strcpy(pn->name,name);
@@ -125,7 +126,7 @@ index c3a7bb1..71be41f 100644
  }
  
  static const char *prg_cache_get(unsigned long inode)
-@@ -286,6 +310,16 @@ static const char *prg_cache_get(unsigned long inode)
+@@ -313,6 +337,16 @@ static const char *prg_cache_get(unsigned long inode)
      return("-");
  }
  
@@ -142,7 +143,7 @@ index c3a7bb1..71be41f 100644
  static void prg_cache_clear(void)
  {
      struct prg_node **pnp,*pn;
-@@ -357,6 +391,7 @@ static void prg_cache_load(void)
+@@ -384,6 +418,7 @@ static void prg_cache_load(void)
      const char *cs,*cmdlp;
      DIR *dirproc=NULL,*dirfd=NULL;
      struct dirent *direproc,*direfd;
@@ -150,7 +151,7 @@ index c3a7bb1..71be41f 100644
  
      if (prg_cache_loaded || !flag_prg) return;
      prg_cache_loaded=1;
-@@ -426,7 +461,15 @@ static void prg_cache_load(void)
+@@ -453,7 +488,15 @@ static void prg_cache_load(void)
  	    }
  
  	    snprintf(finbuf, sizeof(finbuf), "%s/%s", direproc->d_name, cmdlp);
@@ -167,7 +168,7 @@ index c3a7bb1..71be41f 100644
  	}
  	closedir(dirfd); 
  	dirfd = NULL;
-@@ -546,6 +589,8 @@ static void finish_this_one(int uid, unsigned long inode, const char *timers)
+@@ -573,6 +616,8 @@ static void finish_this_one(int uid, unsigned long inode, const char *timers)
      }
      if (flag_prg)
  	printf(" %-16s",prg_cache_get(inode));
@@ -176,7 +177,7 @@ index c3a7bb1..71be41f 100644
      if (flag_opt)
  	printf(" %s", timers);
      putchar('\n');
-@@ -1238,6 +1283,8 @@ static void unix_do_one(int nr, const char *line)
+@@ -1566,6 +1611,8 @@ static void unix_do_one(int nr, const char *line)
  	printf("-        ");
      if (flag_prg)
  	printf("%-" PROGNAME_WIDTHs "s",(has & HAS_INODE?prg_cache_get(inode):"-"));
@@ -185,7 +186,7 @@ index c3a7bb1..71be41f 100644
      puts(path);
  }
  
-@@ -1256,6 +1303,7 @@ static int unix_info(void)
+@@ -1584,6 +1631,7 @@ static int unix_info(void)
  
      printf(_("\nProto RefCnt Flags       Type       State         I-Node  "));
      print_progname_banner();
@@ -193,15 +194,15 @@ index c3a7bb1..71be41f 100644
      printf(_(" Path\n"));	/* xxx */
  
      {
-@@ -1546,6 +1594,7 @@ static void usage(void)
+@@ -1874,6 +1922,7 @@ static void usage(void)
      fprintf(stderr, _("        -o, --timers             display timers\n"));
      fprintf(stderr, _("        -F, --fib                display Forwarding Information Base (default)\n"));
      fprintf(stderr, _("        -C, --cache              display routing cache instead of FIB\n\n"));
 +    fprintf(stderr, _("        -Z, --context            display SELinux security context for sockets\n\n"));
  
-     fprintf(stderr, _("  <Socket>={-t|--tcp} {-u|--udp} {-w|--raw} {-x|--unix} --ax25 --ipx --netrom\n"));
+     fprintf(stderr, _("  <Socket>={-t|--tcp} {-u|--udp} {-S|--sctp} {-w|--raw} {-x|--unix} --ax25 --ipx --netrom\n"));
      fprintf(stderr, _("  <AF>=Use '-6|-4' or '-A <af>' or '--<af>'; default: %s\n"), DFLT_AF);
-@@ -1591,6 +1640,7 @@ int main
+@@ -1920,6 +1969,7 @@ int main
  	{"cache", 0, 0, 'C'},
  	{"fib", 0, 0, 'F'},
  	{"groups", 0, 0, 'g'},
@@ -209,16 +210,16 @@ index c3a7bb1..71be41f 100644
  	{NULL, 0, 0, 0}
      };
  
-@@ -1602,7 +1652,7 @@ int main
+@@ -1931,7 +1981,7 @@ int main
      getroute_init();		/* Set up AF routing support */
  
      afname[0] = '\0';
--    while ((i = getopt_long(argc, argv, "MCFA:acdegphinNorstuWVv?wxl64", longopts, &lop)) != EOF)
-+    while ((i = getopt_long(argc, argv, "MCFA:acdegphinNorstuWVv?wxlZ64", longopts, &lop)) != EOF)
+-    while ((i = getopt_long(argc, argv, "MCFA:acdegphinNorstuSWVv?wxl64", longopts, &lop)) != EOF)
++    while ((i = getopt_long(argc, argv, "MCFA:acdegphinNorstuSWVv?wxlZ64", longopts, &lop)) != EOF)
  	switch (i) {
  	case -1:
  	    break;
-@@ -1705,6 +1755,19 @@ int main
+@@ -2036,6 +2086,19 @@ int main
  	    if (aftrans_opt("unix"))
  		exit(1);
  	    break;
@@ -239,5 +240,5 @@ index c3a7bb1..71be41f 100644
  	case 'h':
  	    usage();
 -- 
-1.7.5.4
+1.9.1
 
-- 
1.9.1


