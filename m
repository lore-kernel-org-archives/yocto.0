Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web12.3289.1582190418009830709
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Feb 2020 01:20:18 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 01K9JcFv002507
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Thu, 20 Feb 2020 01:19:49 -0800
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Thu, 20 Feb
 2020 01:19:27 -0800
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <yocto@lists.yoctoproject.org>, <mark.hatle@kernel.crashing.org>
Subject: [meta-openssl102-fips][PATCH] openssh: refresh patches to 8.2p1
Date: Thu, 20 Feb 2020 17:19:25 +0800
Message-ID: <20200220091925.11715-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

Issue: LINCD-1151

Refresh patches to openssh-8.2p1.
Reference:
http://pkgs.fedoraproject.org/cgit/rpms/openssh.git/plain/openssh-7.7p1-fips.patch
(commit 51f5c1c99f1d20e48328edde666061d0ce0da83b)

(LOCAL REV: NOT UPSTREAM) -- send to meta-openssl102-fips on 20200220

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../0001-conditional-enable-fips-mode.patch   |  54 ++--
 ...ps.patch => 0001-openssh-8.2p1-fips.patch} | 300 ++++++++----------
 .../openssh/openssh-6.6p1-ctr-cavstest.patch  |  35 +-
 .../openssh/openssh-6.7p1-kdf-cavs.patch      |  35 +-
 recipes-connectivity/openssh/openssh_fips.inc |   2 +-
 5 files changed, 202 insertions(+), 224 deletions(-)
 rename recipes-connectivity/openssh/openssh/{0001-openssh-8.0p1-fips.patch => 0001-openssh-8.2p1-fips.patch} (57%)

diff --git a/recipes-connectivity/openssh/openssh/0001-conditional-enable-fips-mode.patch b/recipes-connectivity/openssh/openssh/0001-conditional-enable-fips-mode.patch
index a0f496a..942fda6 100644
--- a/recipes-connectivity/openssh/openssh/0001-conditional-enable-fips-mode.patch
+++ b/recipes-connectivity/openssh/openssh/0001-conditional-enable-fips-mode.patch
@@ -1,4 +1,4 @@
-From 60204df9d1f54f581f9ddc5443228550cadd4b4b Mon Sep 17 00:00:00 2001
+From ef6490841a73b4f71ca35e09328c6a8b0ad9dba9 Mon Sep 17 00:00:00 2001
 From: Hongxu Jia <hongxu.jia@windriver.com>
 Date: Sat, 21 Dec 2019 13:03:23 +0800
 Subject: [PATCH] conditional enable fips mode
@@ -56,10 +56,10 @@ index 359204f..346255a 100644
  	log_init(__progname, log_level, log_facility, log_stderr);
  
 diff --git a/sftp.c b/sftp.c
-index b66037f..ca263ac 100644
+index ff14d3c..a633200 100644
 --- a/sftp.c
 +++ b/sftp.c
-@@ -2387,6 +2387,7 @@ main(int argc, char **argv)
+@@ -2390,6 +2390,7 @@ main(int argc, char **argv)
  	size_t num_requests = DEFAULT_NUM_REQUESTS;
  	long long limit_kbps = 0;
  
@@ -68,10 +68,10 @@ index b66037f..ca263ac 100644
  	sanitise_stdfd();
  	msetlocale();
 diff --git a/ssh-add.c b/ssh-add.c
-index ebfb8a3..b7d59bc 100644
+index 8057eb1..19f3da2 100644
 --- a/ssh-add.c
 +++ b/ssh-add.c
-@@ -577,6 +577,7 @@ main(int argc, char **argv)
+@@ -628,6 +628,7 @@ main(int argc, char **argv)
  	SyslogFacility log_facility = SYSLOG_FACILITY_AUTH;
  	LogLevel log_level = SYSLOG_LEVEL_INFO;
  
@@ -80,10 +80,10 @@ index ebfb8a3..b7d59bc 100644
  	sanitise_stdfd();
  
 diff --git a/ssh-agent.c b/ssh-agent.c
-index 9c6680a..d701479 100644
+index 7eb6f0d..1409044 100644
 --- a/ssh-agent.c
 +++ b/ssh-agent.c
-@@ -1104,6 +1104,7 @@ main(int ac, char **av)
+@@ -1196,6 +1196,7 @@ main(int ac, char **av)
  	size_t npfd = 0;
  	u_int maxfds;
  
@@ -92,10 +92,10 @@ index 9c6680a..d701479 100644
  	sanitise_stdfd();
  
 diff --git a/ssh-keygen.c b/ssh-keygen.c
-index cb4982d..84dd269 100644
+index feafe73..9b832f6 100644
 --- a/ssh-keygen.c
 +++ b/ssh-keygen.c
-@@ -2800,6 +2800,7 @@ main(int argc, char **argv)
+@@ -3140,6 +3140,7 @@ main(int argc, char **argv)
  	extern int optind;
  	extern char *optarg;
  
@@ -104,10 +104,10 @@ index cb4982d..84dd269 100644
  	sanitise_stdfd();
  
 diff --git a/ssh-keyscan.c b/ssh-keyscan.c
-index 5de0508..0644261 100644
+index a5e6440..e56a9d1 100644
 --- a/ssh-keyscan.c
 +++ b/ssh-keyscan.c
-@@ -663,6 +663,7 @@ main(int argc, char **argv)
+@@ -675,6 +675,7 @@ main(int argc, char **argv)
  	extern int optind;
  	extern char *optarg;
  
@@ -116,7 +116,7 @@ index 5de0508..0644261 100644
  	seed_rng();
  	TAILQ_INIT(&tq);
 diff --git a/ssh-keysign.c b/ssh-keysign.c
-index 6cfd5b4..23cf403 100644
+index 3e3ea3e..4804c42 100644
 --- a/ssh-keysign.c
 +++ b/ssh-keysign.c
 @@ -173,6 +173,7 @@ main(int argc, char **argv)
@@ -128,10 +128,10 @@ index 6cfd5b4..23cf403 100644
  		fatal("%s: pledge: %s", __progname, strerror(errno));
  
 diff --git a/ssh-pkcs11-helper.c b/ssh-pkcs11-helper.c
-index 3bcc244..6a78a1a 100644
+index 17220d6..1af0c2e 100644
 --- a/ssh-pkcs11-helper.c
 +++ b/ssh-pkcs11-helper.c
-@@ -325,6 +325,7 @@ main(int argc, char **argv)
+@@ -332,6 +332,7 @@ main(int argc, char **argv)
  	extern char *__progname;
  	struct pollfd pfd[2];
  
@@ -140,22 +140,22 @@ index 3bcc244..6a78a1a 100644
  	seed_rng();
  	TAILQ_INIT(&pkcs11_keylist);
 diff --git a/ssh.c b/ssh.c
-index 0724df4..9178673 100644
+index 49331fc..06836dd 100644
 --- a/ssh.c
 +++ b/ssh.c
-@@ -598,6 +598,7 @@ main(int ac, char **av)
- 	struct ssh_digest_ctx *md;
+@@ -606,6 +606,7 @@ main(int ac, char **av)
  	u_char conn_hash[SSH_DIGEST_MAX_LENGTH];
+ 	size_t n, len;
  
 +	ssh_enable_fips_mode();
  	/* Ensure that fds 0, 1 and 2 are open or directed to /dev/null */
  	sanitise_stdfd();
  
 diff --git a/sshd.c b/sshd.c
-index 2bf8939..c75e34a 100644
+index b86d682..304bf01 100644
 --- a/sshd.c
 +++ b/sshd.c
-@@ -1443,6 +1443,7 @@ main(int ac, char **av)
+@@ -1514,6 +1514,7 @@ main(int ac, char **av)
  	Authctxt *authctxt;
  	struct connection_info *connection_info = NULL;
  
@@ -164,7 +164,7 @@ index 2bf8939..c75e34a 100644
  	(void)set_auth_parameters(ac, av);
  #endif
 diff --git a/xmalloc.c b/xmalloc.c
-index 9cd0127..e2f8145 100644
+index b48d33b..456a063 100644
 --- a/xmalloc.c
 +++ b/xmalloc.c
 @@ -23,6 +23,10 @@
@@ -178,9 +178,9 @@ index 9cd0127..e2f8145 100644
  #include "xmalloc.h"
  #include "log.h"
  
-@@ -110,3 +114,19 @@ xasprintf(char **ret, const char *fmt, ...)
- 
- 	return (i);
+@@ -117,3 +121,19 @@ xasprintf(char **ret, const char *fmt, ...)
+ 	va_end(ap);
+ 	return i;
  }
 +
 +void
@@ -199,13 +199,13 @@ index 9cd0127..e2f8145 100644
 +    }
 +}
 diff --git a/xmalloc.h b/xmalloc.h
-index 1d5f62d..d71b8a8 100644
+index abaf7ad..b3b1c8c 100644
 --- a/xmalloc.h
 +++ b/xmalloc.h
-@@ -24,3 +24,4 @@ char	*xstrdup(const char *);
- int	 xasprintf(char **, const char *, ...)
-                 __attribute__((__format__ (printf, 2, 3)))
+@@ -26,3 +26,4 @@ int	 xasprintf(char **, const char *, ...)
                  __attribute__((__nonnull__ (2)));
+ int	 xvasprintf(char **, const char *, va_list)
+ 		__attribute__((__nonnull__ (2)));
 +void	ssh_enable_fips_mode(void);
 -- 
 2.7.4
diff --git a/recipes-connectivity/openssh/openssh/0001-openssh-8.0p1-fips.patch b/recipes-connectivity/openssh/openssh/0001-openssh-8.2p1-fips.patch
similarity index 57%
rename from recipes-connectivity/openssh/openssh/0001-openssh-8.0p1-fips.patch
rename to recipes-connectivity/openssh/openssh/0001-openssh-8.2p1-fips.patch
index 0e35e31..c1de130 100644
--- a/recipes-connectivity/openssh/openssh/0001-openssh-8.0p1-fips.patch
+++ b/recipes-connectivity/openssh/openssh/0001-openssh-8.2p1-fips.patch
@@ -1,7 +1,7 @@
-From 511f5dfb3e22d30a7d573313fa88a063f1d49753 Mon Sep 17 00:00:00 2001
+From c51dd44e1c594ddeb3a27ae5d9be2899e4bf2ac6 Mon Sep 17 00:00:00 2001
 From: Hongxu Jia <hongxu.jia@windriver.com>
 Date: Sat, 21 Dec 2019 11:45:38 +0800
-Subject: [PATCH] openssh 8.0p1 fips
+Subject: [PATCH] openssh 8.2p1 fips
 
 Port openssh-7.7p1-fips.patch from Fedora
 https://src.fedoraproject.org/rpms/openssh.git
@@ -10,30 +10,33 @@ https://src.fedoraproject.org/rpms/openssh.git
 Upstream-Status: Inappropriate [oe specific]
 
 Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
+
+Rebase to 8.2p1
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
  Makefile.in              | 14 +++++++-------
  cipher-ctr.c             |  3 ++-
- clientloop.c             |  3 ++-
+ clientloop.c             |  2 +-
  dh.c                     | 40 ++++++++++++++++++++++++++++++++++++++++
  dh.h                     |  1 +
  kex.c                    |  5 ++++-
  kexgexc.c                |  5 +++++
- myproposal.h             | 40 ++++++++++++++++++++++++++++++++++++++++
- readconf.c               | 17 +++++++++--------
+ myproposal.h             | 35 +++++++++++++++++++++++++++++++++++
+ readconf.c               | 15 ++++++++++-----
  sandbox-seccomp-filter.c |  3 +++
- servconf.c               | 19 ++++++++++---------
- ssh-keygen.c             | 17 ++++++++++++++++-
+ servconf.c               | 15 ++++++++++-----
+ ssh-keygen.c             | 16 +++++++++++++++-
  ssh.c                    | 16 ++++++++++++++++
- sshconnect2.c            | 11 ++++++++---
+ sshconnect2.c            |  8 ++++++--
  sshd.c                   | 19 +++++++++++++++++++
  sshkey.c                 |  4 ++++
- 16 files changed, 186 insertions(+), 31 deletions(-)
+ 16 files changed, 178 insertions(+), 23 deletions(-)
 
 diff --git a/Makefile.in b/Makefile.in
-index adb1977..37aec69 100644
+index e754947..57f94f4 100644
 --- a/Makefile.in
 +++ b/Makefile.in
-@@ -175,31 +175,31 @@ libssh.a: $(LIBSSH_OBJS)
+@@ -206,25 +206,25 @@ libssh.a: $(LIBSSH_OBJS)
  	$(RANLIB) $@
  
  ssh$(EXEEXT): $(LIBCOMPAT) libssh.a $(SSHOBJS)
@@ -44,34 +47,36 @@ index adb1977..37aec69 100644
 -	$(LD) -o $@ $(SSHDOBJS) $(LDFLAGS) -lssh -lopenbsd-compat $(SSHDLIBS) $(LIBS) $(GSSLIBS) $(K5LIBS)
 +	$(LD) -o $@ $(SSHDOBJS) $(LDFLAGS) -lssh -lopenbsd-compat -lfipscheck $(SSHDLIBS) $(LIBS) $(GSSLIBS) $(K5LIBS)
  
- scp$(EXEEXT): $(LIBCOMPAT) libssh.a scp.o progressmeter.o
- 	$(LD) -o $@ scp.o progressmeter.o $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS)
+ scp$(EXEEXT): $(LIBCOMPAT) libssh.a $(SCP_OBJS)
+ 	$(LD) -o $@ $(SCP_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS)
  
- ssh-add$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-add.o
--	$(LD) -o $@ ssh-add.o $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS)
-+	$(LD) -o $@ ssh-add.o $(LDFLAGS) -lssh -lopenbsd-compat -lfipscheck $(LIBS)
+ ssh-add$(EXEEXT): $(LIBCOMPAT) libssh.a $(SSHADD_OBJS)
+-	$(LD) -o $@ $(SSHADD_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS)
++	$(LD) -o $@ $(SSHADD_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat -lfipscheck $(LIBS)
  
- ssh-agent$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-agent.o ssh-pkcs11-client.o
--	$(LD) -o $@ ssh-agent.o ssh-pkcs11-client.o $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS)
-+	$(LD) -o $@ ssh-agent.o ssh-pkcs11-client.o $(LDFLAGS) -lssh -lopenbsd-compat -lfipscheck $(LIBS)
+ ssh-agent$(EXEEXT): $(LIBCOMPAT) libssh.a $(SSHAGENT_OBJS)
+-	$(LD) -o $@ $(SSHAGENT_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS)
++	$(LD) -o $@ $(SSHAGENT_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat -lfipscheck $(LIBS)
  
- ssh-keygen$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-keygen.o sshsig.o
--	$(LD) -o $@ ssh-keygen.o sshsig.o $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS)
-+	$(LD) -o $@ ssh-keygen.o sshsig.o $(LDFLAGS) -lssh -lopenbsd-compat -lfipscheck $(LIBS)
+ ssh-keygen$(EXEEXT): $(LIBCOMPAT) libssh.a $(SSHKEYGEN_OBJS)
+-	$(LD) -o $@ $(SSHKEYGEN_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS)
++	$(LD) -o $@ $(SSHKEYGEN_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat -lfipscheck $(LIBS)
  
- ssh-keysign$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-keysign.o readconf.o uidswap.o compat.o
--	$(LD) -o $@ ssh-keysign.o readconf.o uidswap.o $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS)
-+	$(LD) -o $@ ssh-keysign.o readconf.o uidswap.o $(LDFLAGS) -lssh -lopenbsd-compat -lfipscheck $(LIBS)
+ ssh-keysign$(EXEEXT): $(LIBCOMPAT) libssh.a $(SSHKEYSIGN_OBJS)
+-	$(LD) -o $@ $(SSHKEYSIGN_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS)
++	$(LD) -o $@ $(SSHKEYSIGN_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat -lfipscheck $(LIBS)
  
- ssh-pkcs11-helper$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-pkcs11-helper.o ssh-pkcs11.o
- 	$(LD) -o $@ ssh-pkcs11-helper.o ssh-pkcs11.o $(LDFLAGS) -lssh -lopenbsd-compat -lssh -lopenbsd-compat $(LIBS)
+ ssh-pkcs11-helper$(EXEEXT): $(LIBCOMPAT) libssh.a $(P11HELPER_OBJS)
+ 	$(LD) -o $@ $(P11HELPER_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat -lssh -lopenbsd-compat $(LIBS)
+@@ -233,7 +233,7 @@ ssh-sk-helper$(EXEEXT): $(LIBCOMPAT) libssh.a $(SKHELPER_OBJS)
+ 	$(LD) -o $@ $(SKHELPER_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat -lssh -lopenbsd-compat $(LIBS) $(LIBFIDO2)
  
- ssh-keyscan$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-keyscan.o
--	$(LD) -o $@ ssh-keyscan.o $(LDFLAGS) -lssh -lopenbsd-compat -lssh $(LIBS)
-+	$(LD) -o $@ ssh-keyscan.o $(LDFLAGS) -lssh -lopenbsd-compat -lfipscheck -lssh $(LIBS)
+ ssh-keyscan$(EXEEXT): $(LIBCOMPAT) libssh.a $(SSHKEYSCAN_OBJS)
+-	$(LD) -o $@ $(SSHKEYSCAN_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat -lssh $(LIBS)
++	$(LD) -o $@ $(SSHKEYSCAN_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat -lssh -lfipscheck $(LIBS)
  
- sftp-server$(EXEEXT): $(LIBCOMPAT) libssh.a sftp.o sftp-common.o sftp-server.o sftp-realpath.o sftp-server-main.o
- 	$(LD) -o $@ sftp-server.o sftp-common.o sftp-realpath.o sftp-server-main.o $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS)
+ sftp-server$(EXEEXT): $(LIBCOMPAT) libssh.a $(SFTPSERVER_OBJS)
+ 	$(LD) -o $@ $(SFTPSERVER_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS)
 diff --git a/cipher-ctr.c b/cipher-ctr.c
 index 32771f2..74fac3b 100644
 --- a/cipher-ctr.c
@@ -87,16 +92,15 @@ index 32771f2..74fac3b 100644
  	return (&aes_ctr);
  }
 diff --git a/clientloop.c b/clientloop.c
-index b5a1f70..0b675fe 100644
+index ebd0dbc..b3e0c19 100644
 --- a/clientloop.c
 +++ b/clientloop.c
-@@ -2035,7 +2035,8 @@ key_accepted_by_hostkeyalgs(const struct sshkey *key)
+@@ -2083,7 +2083,7 @@ static int
+ key_accepted_by_hostkeyalgs(const struct sshkey *key)
  {
  	const char *ktype = sshkey_ssh_name(key);
- 	const char *hostkeyalgs = options.hostkeyalgorithms != NULL ?
--	    options.hostkeyalgorithms : KEX_DEFAULT_PK_ALG;
-+	    options.hostkeyalgorithms : (FIPS_mode() ?
-+	    KEX_FIPS_PK_ALG : KEX_DEFAULT_PK_ALG);
+-	const char *hostkeyalgs = options.hostkeyalgorithms;
++	const char *hostkeyalgs = (FIPS_mode() ? KEX_FIPS_PK_ALG : options.hostkeyalgorithms);
  
  	if (key == NULL || key->type == KEY_UNSPEC)
  		return 0;
@@ -169,10 +173,10 @@ index 5d6df62..54c7aa2 100644
  u_int	 dh_estimate(int);
  
 diff --git a/kex.c b/kex.c
-index 49d7015..f1f982d 100644
+index ce85f04..9cc14de 100644
 --- a/kex.c
 +++ b/kex.c
-@@ -161,7 +161,10 @@ kex_names_valid(const char *names)
+@@ -163,7 +163,10 @@ kex_names_valid(const char *names)
  	for ((p = strsep(&cp, ",")); p && *p != '\0';
  	    (p = strsep(&cp, ","))) {
  		if (kex_alg_by_name(p) == NULL) {
@@ -185,7 +189,7 @@ index 49d7015..f1f982d 100644
  			return 0;
  		}
 diff --git a/kexgexc.c b/kexgexc.c
-index 1c65b8a..b6b25bf 100644
+index 323a659..812112d 100644
 --- a/kexgexc.c
 +++ b/kexgexc.c
 @@ -28,6 +28,7 @@
@@ -208,97 +212,86 @@ index 1c65b8a..b6b25bf 100644
  
  	/* generate and send 'e', client DH public key */
 diff --git a/myproposal.h b/myproposal.h
-index 34bd10c..a3ae74b 100644
+index 5312e60..d0accae 100644
 --- a/myproposal.h
 +++ b/myproposal.h
-@@ -111,6 +111,14 @@
+@@ -57,6 +57,20 @@
  	"rsa-sha2-256," \
  	"ssh-rsa"
  
 +#define	KEX_FIPS_PK_ALG	\
-+	HOSTKEY_ECDSA_CERT_METHODS \
++	"ecdsa-sha2-nistp256-cert-v01@openssh.com," \
++	"ecdsa-sha2-nistp384-cert-v01@openssh.com," \
++	"ecdsa-sha2-nistp521-cert-v01@openssh.com," \
++	"rsa-sha2-512-cert-v01@openssh.com," \
++	"rsa-sha2-256-cert-v01@openssh.com," \
 +	"ssh-rsa-cert-v01@openssh.com," \
-+	HOSTKEY_ECDSA_METHODS \
++	"ecdsa-sha2-nistp256," \
++	"ecdsa-sha2-nistp384," \
++	"ecdsa-sha2-nistp521," \
 +	"rsa-sha2-512," \
 +	"rsa-sha2-256," \
 +	"ssh-rsa"
 +
- /* the actual algorithms */
- 
- #define KEX_SERVER_ENCRYPT \
-@@ -134,6 +142,38 @@
+ #define	KEX_SERVER_ENCRYPT \
+ 	"chacha20-poly1305@openssh.com," \
+ 	"aes128-ctr,aes192-ctr,aes256-ctr," \
+@@ -78,6 +92,27 @@
  
  #define KEX_CLIENT_MAC KEX_SERVER_MAC
  
 +#define	KEX_FIPS_ENCRYPT \
 +	"aes128-ctr,aes192-ctr,aes256-ctr," \
 +	"aes128-cbc,3des-cbc," \
-+	"aes192-cbc,aes256-cbc,rijndael-cbc@lysator.liu.se" \
-+	AESGCM_CIPHER_MODES
-+#ifdef HAVE_EVP_SHA256
-+# define KEX_DEFAULT_KEX_FIPS		\
-+	KEX_ECDH_METHODS \
-+	KEX_SHA2_METHODS \
++	"aes192-cbc,aes256-cbc,rijndael-cbc@lysator.liu.se," \
++	"aes128-gcm@openssh.com,aes256-gcm@openssh.com"
++#define KEX_DEFAULT_KEX_FIPS		\
++	"ecdh-sha2-nistp256," \
++	"ecdh-sha2-nistp384," \
++	"ecdh-sha2-nistp521," \
++	"diffie-hellman-group-exchange-sha256," \
++	"diffie-hellman-group16-sha512," \
++	"diffie-hellman-group18-sha512," \
 +	"diffie-hellman-group14-sha256"
-+# define KEX_FIPS_MAC \
++#define KEX_FIPS_MAC \
 +	"hmac-sha1," \
 +	"hmac-sha2-256," \
 +	"hmac-sha2-512," \
 +	"hmac-sha1-etm@openssh.com," \
 +	"hmac-sha2-256-etm@openssh.com," \
 +	"hmac-sha2-512-etm@openssh.com"
-+#else
-+# ifdef OPENSSL_HAS_NISTP521
-+#  define KEX_DEFAULT_KEX_FIPS		\
-+	"ecdh-sha2-nistp256," \
-+	"ecdh-sha2-nistp384," \
-+	"ecdh-sha2-nistp521"
-+# else
-+#  define KEX_DEFAULT_KEX_FIPS		\
-+	"ecdh-sha2-nistp256," \
-+	"ecdh-sha2-nistp384"
-+# endif
-+#define        KEX_FIPS_MAC \
-+       "hmac-sha1"
-+#endif
 +
  /* Not a KEX value, but here so all the algorithm defaults are together */
  #define	SSH_ALLOWED_CA_SIGALGS	\
- 	HOSTKEY_ECDSA_METHODS \
+ 	"ecdsa-sha2-nistp256," \
 diff --git a/readconf.c b/readconf.c
-index f78b4d6..2f56ed2 100644
+index f3cac6b..26b9a59 100644
 --- a/readconf.c
 +++ b/readconf.c
-@@ -2125,18 +2125,19 @@ fill_default_options(Options * options)
- 	all_kex = kex_alg_list(',');
+@@ -2187,11 +2187,16 @@ fill_default_options(Options * options)
  	all_key = sshkey_alg_list(0, 0, 1, ',');
  	all_sig = sshkey_alg_list(0, 1, 1, ',');
--#define ASSEMBLE(what, defaults, all) \
-+#define ASSEMBLE(what, defaults, fips_defaults, all) \
+ 	/* remove unsupported algos from default lists */
+-	def_cipher = match_filter_whitelist(KEX_CLIENT_ENCRYPT, all_cipher);
+-	def_mac = match_filter_whitelist(KEX_CLIENT_MAC, all_mac);
+-	def_kex = match_filter_whitelist(KEX_CLIENT_KEX, all_kex);
+-	def_key = match_filter_whitelist(KEX_DEFAULT_PK_ALG, all_key);
+-	def_sig = match_filter_whitelist(SSH_ALLOWED_CA_SIGALGS, all_sig);
++	def_cipher = match_filter_whitelist((FIPS_mode() ?
++	    KEX_FIPS_ENCRYPT : KEX_CLIENT_ENCRYPT), all_cipher);
++	def_mac = match_filter_whitelist((FIPS_mode() ?
++	    KEX_FIPS_MAC : KEX_CLIENT_MAC), all_mac);
++	def_kex = match_filter_whitelist((FIPS_mode() ?
++	    KEX_DEFAULT_KEX_FIPS : KEX_CLIENT_KEX), all_kex);
++	def_key = match_filter_whitelist((FIPS_mode() ?
++	    KEX_FIPS_PK_ALG : KEX_DEFAULT_PK_ALG), all_key);
++	def_sig = match_filter_whitelist((FIPS_mode() ?
++	    KEX_FIPS_PK_ALG : SSH_ALLOWED_CA_SIGALGS), all_sig);
+ #define ASSEMBLE(what, defaults, all) \
  	do { \
  		if ((r = kex_assemble_names(&options->what, \
--		    defaults, all)) != 0) \
-+		    (FIPS_mode() ? fips_defaults : defaults), \
-+		    all)) != 0) \
- 			fatal("%s: %s: %s", __func__, #what, ssh_err(r)); \
- 	} while (0)
--	ASSEMBLE(ciphers, KEX_CLIENT_ENCRYPT, all_cipher);
--	ASSEMBLE(macs, KEX_CLIENT_MAC, all_mac);
--	ASSEMBLE(kex_algorithms, KEX_CLIENT_KEX, all_kex);
--	ASSEMBLE(hostbased_key_types, KEX_DEFAULT_PK_ALG, all_key);
--	ASSEMBLE(pubkey_key_types, KEX_DEFAULT_PK_ALG, all_key);
--	ASSEMBLE(ca_sign_algorithms, SSH_ALLOWED_CA_SIGALGS, all_sig);
-+	ASSEMBLE(ciphers, KEX_CLIENT_ENCRYPT, KEX_FIPS_ENCRYPT, all_cipher);
-+	ASSEMBLE(macs, KEX_CLIENT_MAC, KEX_FIPS_MAC, all_mac);
-+	ASSEMBLE(kex_algorithms, KEX_CLIENT_KEX, KEX_DEFAULT_KEX_FIPS, all_kex);
-+	ASSEMBLE(hostbased_key_types, KEX_DEFAULT_PK_ALG, KEX_FIPS_PK_ALG, all_key);
-+	ASSEMBLE(pubkey_key_types, KEX_DEFAULT_PK_ALG, KEX_FIPS_PK_ALG, all_key);
-+	ASSEMBLE(ca_sign_algorithms, SSH_ALLOWED_CA_SIGALGS, KEX_FIPS_PK_ALG, all_sig);
- #undef ASSEMBLE
- 	free(all_cipher);
- 	free(all_mac);
 diff --git a/sandbox-seccomp-filter.c b/sandbox-seccomp-filter.c
-index b5cda70..f0607a3 100644
+index f80981f..00702a7 100644
 --- a/sandbox-seccomp-filter.c
 +++ b/sandbox-seccomp-filter.c
 @@ -156,6 +156,9 @@ static const struct sock_filter preauth_insns[] = {
@@ -312,43 +305,36 @@ index b5cda70..f0607a3 100644
  	SC_DENY(__NR_openat, EACCES),
  #endif
 diff --git a/servconf.c b/servconf.c
-index e76f9c3..591d437 100644
+index 70f5f73..815beaf 100644
 --- a/servconf.c
 +++ b/servconf.c
-@@ -200,18 +200,19 @@ assemble_algorithms(ServerOptions *o)
- 	all_kex = kex_alg_list(',');
+@@ -212,11 +212,16 @@ assemble_algorithms(ServerOptions *o)
  	all_key = sshkey_alg_list(0, 0, 1, ',');
  	all_sig = sshkey_alg_list(0, 1, 1, ',');
--#define ASSEMBLE(what, defaults, all) \
-+#define ASSEMBLE(what, defaults, fips_defaults, all) \
+ 	/* remove unsupported algos from default lists */
+-	def_cipher = match_filter_whitelist(KEX_SERVER_ENCRYPT, all_cipher);
+-	def_mac = match_filter_whitelist(KEX_SERVER_MAC, all_mac);
+-	def_kex = match_filter_whitelist(KEX_SERVER_KEX, all_kex);
+-	def_key = match_filter_whitelist(KEX_DEFAULT_PK_ALG, all_key);
+-	def_sig = match_filter_whitelist(SSH_ALLOWED_CA_SIGALGS, all_sig);
++	def_cipher = match_filter_whitelist((FIPS_mode() ?
++	    KEX_FIPS_ENCRYPT : KEX_SERVER_ENCRYPT), all_cipher);
++	def_mac = match_filter_whitelist((FIPS_mode() ?
++	    KEX_FIPS_MAC : KEX_SERVER_MAC), all_mac);
++	def_kex = match_filter_whitelist((FIPS_mode() ?
++	    KEX_DEFAULT_KEX_FIPS : KEX_SERVER_KEX), all_kex);
++	def_key = match_filter_whitelist((FIPS_mode() ?
++	    KEX_FIPS_PK_ALG : KEX_DEFAULT_PK_ALG), all_key);
++	def_sig = match_filter_whitelist((FIPS_mode() ?
++	    KEX_FIPS_PK_ALG : SSH_ALLOWED_CA_SIGALGS), all_sig);
+ #define ASSEMBLE(what, defaults, all) \
  	do { \
--		if ((r = kex_assemble_names(&o->what, defaults, all)) != 0) \
-+		if ((r = kex_assemble_names(&o->what, (FIPS_mode() \
-+		    ? fips_defaults : defaults), all)) != 0) \
- 			fatal("%s: %s: %s", __func__, #what, ssh_err(r)); \
- 	} while (0)
--	ASSEMBLE(ciphers, KEX_SERVER_ENCRYPT, all_cipher);
--	ASSEMBLE(macs, KEX_SERVER_MAC, all_mac);
--	ASSEMBLE(kex_algorithms, KEX_SERVER_KEX, all_kex);
--	ASSEMBLE(hostkeyalgorithms, KEX_DEFAULT_PK_ALG, all_key);
--	ASSEMBLE(hostbased_key_types, KEX_DEFAULT_PK_ALG, all_key);
--	ASSEMBLE(pubkey_key_types, KEX_DEFAULT_PK_ALG, all_key);
--	ASSEMBLE(ca_sign_algorithms, SSH_ALLOWED_CA_SIGALGS, all_sig);
-+	ASSEMBLE(ciphers, KEX_SERVER_ENCRYPT, KEX_FIPS_ENCRYPT, all_cipher);
-+	ASSEMBLE(macs, KEX_SERVER_MAC, KEX_FIPS_MAC, all_mac);
-+	ASSEMBLE(kex_algorithms, KEX_SERVER_KEX, KEX_DEFAULT_KEX_FIPS, all_kex);
-+	ASSEMBLE(hostkeyalgorithms, KEX_DEFAULT_PK_ALG, KEX_FIPS_PK_ALG, all_key);
-+	ASSEMBLE(hostbased_key_types, KEX_DEFAULT_PK_ALG, KEX_FIPS_PK_ALG, all_key);
-+	ASSEMBLE(pubkey_key_types, KEX_DEFAULT_PK_ALG, KEX_FIPS_PK_ALG, all_key);
-+	ASSEMBLE(ca_sign_algorithms, SSH_ALLOWED_CA_SIGALGS, KEX_FIPS_PK_ALG, all_sig);
- #undef ASSEMBLE
- 	free(all_cipher);
- 	free(all_mac);
+ 		if ((r = kex_assemble_names(&o->what, defaults, all)) != 0) \
 diff --git a/ssh-keygen.c b/ssh-keygen.c
-index 8c829ca..cb4982d 100644
+index 0d6ed1f..feafe73 100644
 --- a/ssh-keygen.c
 +++ b/ssh-keygen.c
-@@ -201,6 +201,12 @@ type_bits_valid(int type, const char *name, u_int32_t *bitsp)
+@@ -204,6 +204,12 @@ type_bits_valid(int type, const char *name, u_int32_t *bitsp)
  #endif
  	}
  #ifdef WITH_OPENSSL
@@ -361,17 +347,16 @@ index 8c829ca..cb4982d 100644
  	switch (type) {
  	case KEY_DSA:
  		if (*bitsp != 1024)
-@@ -1061,9 +1067,18 @@ do_gen_all_hostkeys(struct passwd *pw)
+@@ -1088,9 +1094,17 @@ do_gen_all_hostkeys(struct passwd *pw)
  			first = 1;
  			printf("%s: generating new host keys: ", __progname);
  		}
-+
 +		type = sshkey_type_from_name(key_types[i].key_type);
 +
 +		/* Skip the keys that are not supported in FIPS mode */
 +		if (FIPS_mode() && (type == KEY_DSA || type == KEY_ED25519)) {
 +			logit("Skipping %s key in FIPS mode",
-+				key_types[i].key_type_display);
++			    key_types[i].key_type_display);
 +			goto next;
 +		}
 +
@@ -382,10 +367,10 @@ index 8c829ca..cb4982d 100644
  			error("Could not save your public key in %s: %s",
  			    prv_tmp, strerror(errno));
 diff --git a/ssh.c b/ssh.c
-index ee51823..0724df4 100644
+index 15aee56..49331fc 100644
 --- a/ssh.c
 +++ b/ssh.c
-@@ -76,6 +76,8 @@
+@@ -77,6 +77,8 @@
  #include <openssl/evp.h>
  #include <openssl/err.h>
  #endif
@@ -394,7 +379,7 @@ index ee51823..0724df4 100644
  #include "openbsd-compat/openssl-compat.h"
  #include "openbsd-compat/sys-queue.h"
  
-@@ -600,6 +602,16 @@ main(int ac, char **av)
+@@ -608,6 +610,16 @@ main(int ac, char **av)
  	sanitise_stdfd();
  
  	__progname = ssh_get_progname(av[0]);
@@ -411,7 +396,7 @@ index ee51823..0724df4 100644
  
  #ifndef HAVE_SETPROCTITLE
  	/* Prepare for later setproctitle emulation */
-@@ -614,6 +626,10 @@ main(int ac, char **av)
+@@ -622,6 +634,10 @@ main(int ac, char **av)
  
  	seed_rng();
  
@@ -423,7 +408,7 @@ index ee51823..0724df4 100644
  	 * Discard other fds that are hanging around. These can cause problem
  	 * with backgrounded ssh processes started by ControlPersist.
 diff --git a/sshconnect2.c b/sshconnect2.c
-index 87fa70a..a42aacb 100644
+index af00fb3..639fc51 100644
 --- a/sshconnect2.c
 +++ b/sshconnect2.c
 @@ -44,6 +44,8 @@
@@ -435,37 +420,28 @@ index 87fa70a..a42aacb 100644
  #include "openbsd-compat/sys-queue.h"
  
  #include "xmalloc.h"
-@@ -117,7 +119,8 @@ order_hostkeyalgs(char *host, struct sockaddr *hostaddr, u_short port)
+@@ -119,7 +121,8 @@ order_hostkeyalgs(char *host, struct sockaddr *hostaddr, u_short port)
  	for (i = 0; i < options.num_system_hostfiles; i++)
  		load_hostkeys(hostkeys, hostname, options.system_hostfiles[i]);
  
--	oavail = avail = xstrdup(KEX_DEFAULT_PK_ALG);
+-	oavail = avail = xstrdup(options.hostkeyalgorithms);
 +	oavail = avail = xstrdup((FIPS_mode()
-+	    ? KEX_FIPS_PK_ALG : KEX_DEFAULT_PK_ALG));
++	    ? KEX_FIPS_PK_ALG : options.hostkeyalgorithms));
  	maxlen = strlen(avail) + 1;
  	first = xmalloc(maxlen);
  	last = xmalloc(maxlen);
-@@ -179,14 +182,16 @@ ssh_kex2(struct ssh *ssh, char *host, struct sockaddr *hostaddr, u_short port)
- 	if (options.hostkeyalgorithms != NULL) {
- 		all_key = sshkey_alg_list(0, 0, 1, ',');
- 		if (kex_assemble_names(&options.hostkeyalgorithms,
--		    KEX_DEFAULT_PK_ALG, all_key) != 0)
-+		    (FIPS_mode() ? KEX_FIPS_PK_ALG : KEX_DEFAULT_PK_ALG),
-+		    all_key) != 0)
- 			fatal("%s: kex_assemble_namelist", __func__);
- 		free(all_key);
- 		myproposal[PROPOSAL_SERVER_HOST_KEY_ALGS] =
- 		    compat_pkalg_proposal(options.hostkeyalgorithms);
- 	} else {
- 		/* Enforce default */
--		options.hostkeyalgorithms = xstrdup(KEX_DEFAULT_PK_ALG);
-+		options.hostkeyalgorithms = xstrdup((FIPS_mode()
-+		    ? KEX_FIPS_PK_ALG : KEX_DEFAULT_PK_ALG));
- 		/* Prefer algorithms that we already have keys for */
- 		myproposal[PROPOSAL_SERVER_HOST_KEY_ALGS] =
- 		    compat_pkalg_proposal(
+@@ -179,7 +182,8 @@ ssh_kex2(struct ssh *ssh, char *host, struct sockaddr *hostaddr, u_short port)
+ 	/* Expand or fill in HostkeyAlgorithms */
+ 	all_key = sshkey_alg_list(0, 0, 1, ',');
+ 	if (kex_assemble_names(&options.hostkeyalgorithms,
+-	    kex_default_pk_alg(), all_key) != 0)
++	    (FIPS_mode() ? KEX_FIPS_PK_ALG : kex_default_pk_alg()),
++	    all_key) != 0)
+ 		fatal("%s: kex_assemble_namelist", __func__);
+ 	free(all_key);
+ 
 diff --git a/sshd.c b/sshd.c
-index f8dee0f..2bf8939 100644
+index 5b9a0b5..b86d682 100644
 --- a/sshd.c
 +++ b/sshd.c
 @@ -66,6 +66,7 @@
@@ -485,7 +461,7 @@ index f8dee0f..2bf8939 100644
  #include "openbsd-compat/openssl-compat.h"
  #endif
  
-@@ -1445,6 +1448,18 @@ main(int ac, char **av)
+@@ -1516,6 +1519,18 @@ main(int ac, char **av)
  #endif
  	__progname = ssh_get_progname(av[0]);
  
@@ -504,7 +480,7 @@ index f8dee0f..2bf8939 100644
  	/* Save argv. Duplicate so setproctitle emulation doesn't clobber it */
  	saved_argc = ac;
  	rexec_argc = ac;
-@@ -1910,6 +1925,10 @@ main(int ac, char **av)
+@@ -1990,6 +2005,10 @@ main(int ac, char **av)
  	/* Reinitialize the log (because of the fork above). */
  	log_init(__progname, options.log_level, options.log_facility, log_stderr);
  
@@ -516,7 +492,7 @@ index f8dee0f..2bf8939 100644
  	   unmounted if desired. */
  	if (chdir("/") == -1)
 diff --git a/sshkey.c b/sshkey.c
-index ef90563..1b1ba01 100644
+index 57995ee..3fa4274 100644
 --- a/sshkey.c
 +++ b/sshkey.c
 @@ -34,6 +34,7 @@
@@ -532,10 +508,10 @@ index ef90563..1b1ba01 100644
  #include "sshkey.h"
  #include "match.h"
 +#include "log.h"
+ #include "ssh-sk.h"
  
  #ifdef WITH_XMSS
- #include "sshkey-xmss.h"
-@@ -1491,6 +1493,8 @@ rsa_generate_private_key(u_int bits, RSA **rsap)
+@@ -1597,6 +1599,8 @@ rsa_generate_private_key(u_int bits, RSA **rsap)
  	}
  	if (!BN_set_word(f4, RSA_F4) ||
  	    !RSA_generate_key_ex(private, bits, f4, NULL)) {
diff --git a/recipes-connectivity/openssh/openssh/openssh-6.6p1-ctr-cavstest.patch b/recipes-connectivity/openssh/openssh/openssh-6.6p1-ctr-cavstest.patch
index 8b74451..c7635b2 100644
--- a/recipes-connectivity/openssh/openssh/openssh-6.6p1-ctr-cavstest.patch
+++ b/recipes-connectivity/openssh/openssh/openssh-6.6p1-ctr-cavstest.patch
@@ -1,4 +1,4 @@
-From 6d65893a85bddfc543ce894ee4940bd0d5ab368e Mon Sep 17 00:00:00 2001
+From bf3211bbff5cb9e1ef588f74844b04e09a9ad2b6 Mon Sep 17 00:00:00 2001
 From: Hongxu Jia <hongxu.jia@windriver.com>
 Date: Sat, 21 Dec 2019 13:05:19 +0800
 Subject: [PATCH] add CAVS test driver for the aes-ctr ciphers
@@ -18,6 +18,7 @@ Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
 
 Upstream-Status: Inappropriate [oe specific]
 Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
  Makefile.in    |   7 +-
  ctr-cavstest.c | 215 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
@@ -25,7 +26,7 @@ Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
  create mode 100644 ctr-cavstest.c
 
 diff --git a/Makefile.in b/Makefile.in
-index 37aec69..1d6e298 100644
+index 57f94f4..0accd89 100644
 --- a/Makefile.in
 +++ b/Makefile.in
 @@ -23,6 +23,7 @@ SSH_PROGRAM=@bindir@/ssh
@@ -34,35 +35,35 @@ index 37aec69..1d6e298 100644
  SSH_KEYSIGN=$(libexecdir)/ssh-keysign
 +CTR_CAVSTEST=$(libexecdir)/ctr-cavstest
  SSH_PKCS11_HELPER=$(libexecdir)/ssh-pkcs11-helper
+ SSH_SK_HELPER=$(libexecdir)/ssh-sk-helper
  PRIVSEP_PATH=@PRIVSEP_PATH@
- SSH_PRIVSEP_USER=@SSH_PRIVSEP_USER@
-@@ -60,7 +61,7 @@ EXEEXT=@EXEEXT@
- MANFMT=@MANFMT@
- MKDIR_P=@MKDIR_P@
+@@ -68,7 +69,7 @@ MKDIR_P=@MKDIR_P@
  
--TARGETS=ssh$(EXEEXT) sshd$(EXEEXT) ssh-add$(EXEEXT) ssh-keygen$(EXEEXT) ssh-keyscan${EXEEXT} ssh-keysign${EXEEXT} ssh-pkcs11-helper$(EXEEXT) ssh-agent$(EXEEXT) scp$(EXEEXT) sftp-server$(EXEEXT) sftp$(EXEEXT)
-+TARGETS=ssh$(EXEEXT) sshd$(EXEEXT) ssh-add$(EXEEXT) ssh-keygen$(EXEEXT) ssh-keyscan${EXEEXT} ssh-keysign${EXEEXT} ssh-pkcs11-helper$(EXEEXT) ssh-agent$(EXEEXT) scp$(EXEEXT) sftp-server$(EXEEXT) sftp$(EXEEXT) ctr-cavstest$(EXEEXT)
+ .SUFFIXES: .lo
+ 
+-TARGETS=ssh$(EXEEXT) sshd$(EXEEXT) ssh-add$(EXEEXT) ssh-keygen$(EXEEXT) ssh-keyscan${EXEEXT} ssh-keysign${EXEEXT} ssh-pkcs11-helper$(EXEEXT) ssh-agent$(EXEEXT) scp$(EXEEXT) sftp-server$(EXEEXT) sftp$(EXEEXT) ssh-sk-helper$(EXEEXT)
++TARGETS=ssh$(EXEEXT) sshd$(EXEEXT) ssh-add$(EXEEXT) ssh-keygen$(EXEEXT) ssh-keyscan${EXEEXT} ssh-keysign${EXEEXT} ssh-pkcs11-helper$(EXEEXT) ssh-agent$(EXEEXT) scp$(EXEEXT) sftp-server$(EXEEXT) sftp$(EXEEXT) ssh-sk-helper$(EXEEXT) ctr-cavstest$(EXEEXT)
  
  XMSS_OBJS=\
  	ssh-xmss.o \
-@@ -198,6 +199,9 @@ ssh-keysign$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-keysign.o readconf.o uidswap.o c
- ssh-pkcs11-helper$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-pkcs11-helper.o ssh-pkcs11.o
- 	$(LD) -o $@ ssh-pkcs11-helper.o ssh-pkcs11.o $(LDFLAGS) -lssh -lopenbsd-compat -lssh -lopenbsd-compat $(LIBS)
+@@ -232,6 +233,9 @@ ssh-pkcs11-helper$(EXEEXT): $(LIBCOMPAT) libssh.a $(P11HELPER_OBJS)
+ ssh-sk-helper$(EXEEXT): $(LIBCOMPAT) libssh.a $(SKHELPER_OBJS)
+ 	$(LD) -o $@ $(SKHELPER_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat -lssh -lopenbsd-compat $(LIBS) $(LIBFIDO2)
  
 +ctr-cavstest$(EXEEXT): $(LIBCOMPAT) libssh.a ctr-cavstest.o
 +	$(LD) -o $@ ctr-cavstest.o $(LDFLAGS) -lssh -lopenbsd-compat -lssh -lfipscheck $(LIBS)
 +
- ssh-keyscan$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-keyscan.o
- 	$(LD) -o $@ ssh-keyscan.o $(LDFLAGS) -lssh -lopenbsd-compat -lfipscheck -lssh $(LIBS)
+ ssh-keyscan$(EXEEXT): $(LIBCOMPAT) libssh.a $(SSHKEYSCAN_OBJS)
+ 	$(LD) -o $@ $(SSHKEYSCAN_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat -lssh -lfipscheck $(LIBS)
  
-@@ -348,6 +352,7 @@ install-files:
- 	$(INSTALL) -m 0755 $(STRIP_OPT) ssh-keyscan$(EXEEXT) $(DESTDIR)$(bindir)/ssh-keyscan$(EXEEXT)
- 	$(INSTALL) -m 0755 $(STRIP_OPT) sshd$(EXEEXT) $(DESTDIR)$(sbindir)/sshd$(EXEEXT)
+@@ -389,6 +393,7 @@ install-files:
  	$(INSTALL) -m 4711 $(STRIP_OPT) ssh-keysign$(EXEEXT) $(DESTDIR)$(SSH_KEYSIGN)$(EXEEXT)
-+	$(INSTALL) -m 0755 $(STRIP_OPT) ctr-cavstest$(EXEEXT) $(DESTDIR)$(libexecdir)/ctr-cavstest$(EXEEXT)
  	$(INSTALL) -m 0755 $(STRIP_OPT) ssh-pkcs11-helper$(EXEEXT) $(DESTDIR)$(SSH_PKCS11_HELPER)$(EXEEXT)
+ 	$(INSTALL) -m 0755 $(STRIP_OPT) ssh-sk-helper$(EXEEXT) $(DESTDIR)$(SSH_SK_HELPER)$(EXEEXT)
++	$(INSTALL) -m 0755 $(STRIP_OPT) ctr-cavstest$(EXEEXT) $(DESTDIR)$(libexecdir)/ctr-cavstest$(EXEEXT)
  	$(INSTALL) -m 0755 $(STRIP_OPT) sftp$(EXEEXT) $(DESTDIR)$(bindir)/sftp$(EXEEXT)
  	$(INSTALL) -m 0755 $(STRIP_OPT) sftp-server$(EXEEXT) $(DESTDIR)$(SFTP_SERVER)$(EXEEXT)
+ 	$(INSTALL) -m 644 ssh.1.out $(DESTDIR)$(mandir)/$(mansubdir)1/ssh.1
 diff --git a/ctr-cavstest.c b/ctr-cavstest.c
 new file mode 100644
 index 0000000..0d4776b
diff --git a/recipes-connectivity/openssh/openssh/openssh-6.7p1-kdf-cavs.patch b/recipes-connectivity/openssh/openssh/openssh-6.7p1-kdf-cavs.patch
index 0cbccd7..4a0ae2c 100644
--- a/recipes-connectivity/openssh/openssh/openssh-6.7p1-kdf-cavs.patch
+++ b/recipes-connectivity/openssh/openssh/openssh-6.7p1-kdf-cavs.patch
@@ -1,4 +1,4 @@
-From 6b6e0f7d4a517378a8d53b84fbef2cfc78c42f46 Mon Sep 17 00:00:00 2001
+From a2c2c21275ea701c2f0ae54bf5945c92860e9208 Mon Sep 17 00:00:00 2001
 From: Hongxu Jia <hongxu.jia@windriver.com>
 Date: Sat, 21 Dec 2019 13:08:52 +0800
 Subject: [PATCH] add KDF CAVS test driver
@@ -19,6 +19,7 @@ Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
 Upstream-Status: Inappropriate [oe specific]
 
 Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
  Makefile.in        |   8 +-
  ssh-cavs.c         | 387 +++++++++++++++++++++++++++++++++++++++++++++++++++++
@@ -28,7 +29,7 @@ Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
  create mode 100644 ssh-cavs_driver.pl
 
 diff --git a/Makefile.in b/Makefile.in
-index 1d6e298..be28411 100644
+index 0accd89..5789323 100644
 --- a/Makefile.in
 +++ b/Makefile.in
 @@ -24,6 +24,7 @@ ASKPASS_PROGRAM=$(libexecdir)/ssh-askpass
@@ -37,36 +38,36 @@ index 1d6e298..be28411 100644
  CTR_CAVSTEST=$(libexecdir)/ctr-cavstest
 +SSH_CAVS=$(libexecdir)/ssh-cavs
  SSH_PKCS11_HELPER=$(libexecdir)/ssh-pkcs11-helper
+ SSH_SK_HELPER=$(libexecdir)/ssh-sk-helper
  PRIVSEP_PATH=@PRIVSEP_PATH@
- SSH_PRIVSEP_USER=@SSH_PRIVSEP_USER@
-@@ -61,7 +62,7 @@ EXEEXT=@EXEEXT@
- MANFMT=@MANFMT@
- MKDIR_P=@MKDIR_P@
+@@ -69,7 +70,7 @@ MKDIR_P=@MKDIR_P@
  
--TARGETS=ssh$(EXEEXT) sshd$(EXEEXT) ssh-add$(EXEEXT) ssh-keygen$(EXEEXT) ssh-keyscan${EXEEXT} ssh-keysign${EXEEXT} ssh-pkcs11-helper$(EXEEXT) ssh-agent$(EXEEXT) scp$(EXEEXT) sftp-server$(EXEEXT) sftp$(EXEEXT) ctr-cavstest$(EXEEXT)
-+TARGETS=ssh$(EXEEXT) sshd$(EXEEXT) ssh-add$(EXEEXT) ssh-keygen$(EXEEXT) ssh-keyscan${EXEEXT} ssh-keysign${EXEEXT} ssh-pkcs11-helper$(EXEEXT) ssh-agent$(EXEEXT) scp$(EXEEXT) sftp-server$(EXEEXT) sftp$(EXEEXT) ctr-cavstest$(EXEEXT) ssh-cavs$(EXEEXT)
+ .SUFFIXES: .lo
+ 
+-TARGETS=ssh$(EXEEXT) sshd$(EXEEXT) ssh-add$(EXEEXT) ssh-keygen$(EXEEXT) ssh-keyscan${EXEEXT} ssh-keysign${EXEEXT} ssh-pkcs11-helper$(EXEEXT) ssh-agent$(EXEEXT) scp$(EXEEXT) sftp-server$(EXEEXT) sftp$(EXEEXT) ssh-sk-helper$(EXEEXT) ctr-cavstest$(EXEEXT)
++TARGETS=ssh$(EXEEXT) sshd$(EXEEXT) ssh-add$(EXEEXT) ssh-keygen$(EXEEXT) ssh-keyscan${EXEEXT} ssh-keysign${EXEEXT} ssh-pkcs11-helper$(EXEEXT) ssh-agent$(EXEEXT) scp$(EXEEXT) sftp-server$(EXEEXT) sftp$(EXEEXT) ssh-sk-helper$(EXEEXT) ctr-cavstest$(EXEEXT) ssh-cavs$(EXEEXT)
  
  XMSS_OBJS=\
  	ssh-xmss.o \
-@@ -202,6 +203,9 @@ ssh-pkcs11-helper$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-pkcs11-helper.o ssh-pkcs11
+@@ -236,6 +237,9 @@ ssh-sk-helper$(EXEEXT): $(LIBCOMPAT) libssh.a $(SKHELPER_OBJS)
  ctr-cavstest$(EXEEXT): $(LIBCOMPAT) libssh.a ctr-cavstest.o
  	$(LD) -o $@ ctr-cavstest.o $(LDFLAGS) -lssh -lopenbsd-compat -lssh -lfipscheck $(LIBS)
  
-+ssh-cavs$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-cavs.o
-+	$(LD) -o $@ ssh-cavs.o $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS)
++ssh-cavs$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-cavs.o $(SKOBJS)
++	$(LD) -o $@ ssh-cavs.o $(SKOBJS) $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS)
 +
- ssh-keyscan$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-keyscan.o
- 	$(LD) -o $@ ssh-keyscan.o $(LDFLAGS) -lssh -lopenbsd-compat -lfipscheck -lssh $(LIBS)
+ ssh-keyscan$(EXEEXT): $(LIBCOMPAT) libssh.a $(SSHKEYSCAN_OBJS)
+ 	$(LD) -o $@ $(SSHKEYSCAN_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat -lssh -lfipscheck $(LIBS)
  
-@@ -353,6 +357,8 @@ install-files:
- 	$(INSTALL) -m 0755 $(STRIP_OPT) sshd$(EXEEXT) $(DESTDIR)$(sbindir)/sshd$(EXEEXT)
- 	$(INSTALL) -m 4711 $(STRIP_OPT) ssh-keysign$(EXEEXT) $(DESTDIR)$(SSH_KEYSIGN)$(EXEEXT)
+@@ -394,6 +398,8 @@ install-files:
+ 	$(INSTALL) -m 0755 $(STRIP_OPT) ssh-pkcs11-helper$(EXEEXT) $(DESTDIR)$(SSH_PKCS11_HELPER)$(EXEEXT)
+ 	$(INSTALL) -m 0755 $(STRIP_OPT) ssh-sk-helper$(EXEEXT) $(DESTDIR)$(SSH_SK_HELPER)$(EXEEXT)
  	$(INSTALL) -m 0755 $(STRIP_OPT) ctr-cavstest$(EXEEXT) $(DESTDIR)$(libexecdir)/ctr-cavstest$(EXEEXT)
 +	$(INSTALL) -m 0755 $(STRIP_OPT) ssh-cavs$(EXEEXT) $(DESTDIR)$(libexecdir)/ssh-cavs$(EXEEXT)
 +	$(INSTALL) -m 0755 $(STRIP_OPT) ssh-cavs_driver.pl $(DESTDIR)$(libexecdir)/ssh-cavs_driver.pl
- 	$(INSTALL) -m 0755 $(STRIP_OPT) ssh-pkcs11-helper$(EXEEXT) $(DESTDIR)$(SSH_PKCS11_HELPER)$(EXEEXT)
  	$(INSTALL) -m 0755 $(STRIP_OPT) sftp$(EXEEXT) $(DESTDIR)$(bindir)/sftp$(EXEEXT)
  	$(INSTALL) -m 0755 $(STRIP_OPT) sftp-server$(EXEEXT) $(DESTDIR)$(SFTP_SERVER)$(EXEEXT)
+ 	$(INSTALL) -m 644 ssh.1.out $(DESTDIR)$(mandir)/$(mansubdir)1/ssh.1
 diff --git a/ssh-cavs.c b/ssh-cavs.c
 new file mode 100644
 index 0000000..b74ae7f
diff --git a/recipes-connectivity/openssh/openssh_fips.inc b/recipes-connectivity/openssh/openssh_fips.inc
index 0eafb98..c74532f 100644
--- a/recipes-connectivity/openssh/openssh_fips.inc
+++ b/recipes-connectivity/openssh/openssh_fips.inc
@@ -6,7 +6,7 @@ DEPENDS += " \
 RRECOMMENDS_${PN}-sshd_remove = "rng-tools"
 
 SRC_URI += " \
-    file://0001-openssh-8.0p1-fips.patch \
+    file://0001-openssh-8.2p1-fips.patch \
     file://0001-conditional-enable-fips-mode.patch \
     file://openssh-6.6p1-ctr-cavstest.patch \
     file://openssh-6.7p1-kdf-cavs.patch \
-- 
2.17.1

