Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web12.5413.1579572017448000068
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jan 2020 18:00:18 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 00L20FZa003296
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Mon, 20 Jan 2020 18:00:15 -0800 (PST)
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Mon, 20 Jan
 2020 18:00:14 -0800
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <yocto@lists.yoctoproject.org>, <mark.hatle@kernel.crashing.org>
Subject: [meta-openssl102-fips][PATCH 1/3] openssh bbappend: refresh local patches to 8.1p1
Date: Tue, 21 Jan 2020 10:00:09 +0800
Message-ID: <20200121020011.29224-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

From: Hongxu Jia <hongxu.jia@windriver.com>

Since upstream oe-core upgraded openssh to 8.1p1,
refresh local patches of fips

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 .../0001-conditional-enable-fips-mode.patch   |  26 +++--
 .../openssh/0001-openssh-8.0p1-fips.patch     | 100 +++++++++++-------
 .../openssh/openssh-6.6p1-ctr-cavstest.patch  |  14 +--
 .../openssh/openssh-6.7p1-kdf-cavs.patch      |  15 +--
 4 files changed, 91 insertions(+), 64 deletions(-)

diff --git a/recipes-connectivity/openssh/openssh/0001-conditional-enable-fips-mode.patch b/recipes-connectivity/openssh/openssh/0001-conditional-enable-fips-mode.patch
index b47e184..705d4be 100644
--- a/recipes-connectivity/openssh/openssh/0001-conditional-enable-fips-mode.patch
+++ b/recipes-connectivity/openssh/openssh/0001-conditional-enable-fips-mode.patch
@@ -1,6 +1,6 @@
-From ea3e5eceab28ad2c00d438efbcea2be37a1b2969 Mon Sep 17 00:00:00 2001
+From fac114e44c00382af087fec04cd4c2fbd144d759 Mon Sep 17 00:00:00 2001
 From: Hongxu Jia <hongxu.jia@windriver.com>
-Date: Sun, 22 Sep 2019 14:31:51 +0800
+Date: Sat, 21 Dec 2019 13:03:23 +0800
 Subject: [PATCH] conditional enable fips mode
 
 Insert ssh_enable_fips_mode to ssh_malloc_init where each main app will invoke,
@@ -14,10 +14,10 @@ Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
  1 file changed, 24 insertions(+)
 
 diff --git a/xmalloc.c b/xmalloc.c
-index 5cc0310..0218ccd 100644
+index 9cd0127..75d5018 100644
 --- a/xmalloc.c
 +++ b/xmalloc.c
-@@ -23,12 +23,20 @@
+@@ -23,6 +23,10 @@
  #include <stdlib.h>
  #include <string.h>
  
@@ -28,17 +28,23 @@ index 5cc0310..0218ccd 100644
  #include "xmalloc.h"
  #include "log.h"
  
+@@ -30,11 +34,15 @@
+ char *malloc_options = "S";
+ #endif /* __OpenBSD__ */
+ 
 +void ssh_enable_fips_mode(void);
 +
- void
- ssh_malloc_init(void)
+ void *
+ xmalloc(size_t size)
  {
+ 	void *ptr;
+ 
 +	ssh_enable_fips_mode();
 +
- #if defined(__OpenBSD__)
- 	extern char *malloc_options;
- 
-@@ -116,3 +124,19 @@ xasprintf(char **ret, const char *fmt, ...)
+ 	if (size == 0)
+ 		fatal("xmalloc: zero size");
+ 	ptr = malloc(size);
+@@ -110,3 +118,19 @@ xasprintf(char **ret, const char *fmt, ...)
  
  	return (i);
  }
diff --git a/recipes-connectivity/openssh/openssh/0001-openssh-8.0p1-fips.patch b/recipes-connectivity/openssh/openssh/0001-openssh-8.0p1-fips.patch
index a4b5836..0e35e31 100644
--- a/recipes-connectivity/openssh/openssh/0001-openssh-8.0p1-fips.patch
+++ b/recipes-connectivity/openssh/openssh/0001-openssh-8.0p1-fips.patch
@@ -1,6 +1,6 @@
-From 255e5dcdec36df7222f69b253dfc05be63927ed2 Mon Sep 17 00:00:00 2001
+From 511f5dfb3e22d30a7d573313fa88a063f1d49753 Mon Sep 17 00:00:00 2001
 From: Hongxu Jia <hongxu.jia@windriver.com>
-Date: Fri, 20 Sep 2019 17:59:00 +0800
+Date: Sat, 21 Dec 2019 11:45:38 +0800
 Subject: [PATCH] openssh 8.0p1 fips
 
 Port openssh-7.7p1-fips.patch from Fedora
@@ -22,18 +22,18 @@ Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
  readconf.c               | 17 +++++++++--------
  sandbox-seccomp-filter.c |  3 +++
  servconf.c               | 19 ++++++++++---------
- ssh-keygen.c             |  6 ++++++
+ ssh-keygen.c             | 17 ++++++++++++++++-
  ssh.c                    | 16 ++++++++++++++++
  sshconnect2.c            | 11 ++++++++---
  sshd.c                   | 19 +++++++++++++++++++
  sshkey.c                 |  4 ++++
- 16 files changed, 176 insertions(+), 30 deletions(-)
+ 16 files changed, 186 insertions(+), 31 deletions(-)
 
 diff --git a/Makefile.in b/Makefile.in
-index 6f001bb..ddd1804 100644
+index adb1977..37aec69 100644
 --- a/Makefile.in
 +++ b/Makefile.in
-@@ -170,31 +170,31 @@ libssh.a: $(LIBSSH_OBJS)
+@@ -175,31 +175,31 @@ libssh.a: $(LIBSSH_OBJS)
  	$(RANLIB) $@
  
  ssh$(EXEEXT): $(LIBCOMPAT) libssh.a $(SSHOBJS)
@@ -55,9 +55,9 @@ index 6f001bb..ddd1804 100644
 -	$(LD) -o $@ ssh-agent.o ssh-pkcs11-client.o $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS)
 +	$(LD) -o $@ ssh-agent.o ssh-pkcs11-client.o $(LDFLAGS) -lssh -lopenbsd-compat -lfipscheck $(LIBS)
  
- ssh-keygen$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-keygen.o
--	$(LD) -o $@ ssh-keygen.o $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS)
-+	$(LD) -o $@ ssh-keygen.o $(LDFLAGS) -lssh -lopenbsd-compat -lfipscheck $(LIBS)
+ ssh-keygen$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-keygen.o sshsig.o
+-	$(LD) -o $@ ssh-keygen.o sshsig.o $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS)
++	$(LD) -o $@ ssh-keygen.o sshsig.o $(LDFLAGS) -lssh -lopenbsd-compat -lfipscheck $(LIBS)
  
  ssh-keysign$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-keysign.o readconf.o uidswap.o compat.o
 -	$(LD) -o $@ ssh-keysign.o readconf.o uidswap.o $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS)
@@ -68,10 +68,10 @@ index 6f001bb..ddd1804 100644
  
  ssh-keyscan$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-keyscan.o
 -	$(LD) -o $@ ssh-keyscan.o $(LDFLAGS) -lssh -lopenbsd-compat -lssh $(LIBS)
-+	$(LD) -o $@ ssh-keyscan.o $(LDFLAGS) -lssh -lopenbsd-compat -lssh -lfipscheck $(LIBS)
++	$(LD) -o $@ ssh-keyscan.o $(LDFLAGS) -lssh -lopenbsd-compat -lfipscheck -lssh $(LIBS)
  
- sftp-server$(EXEEXT): $(LIBCOMPAT) libssh.a sftp.o sftp-common.o sftp-server.o sftp-server-main.o
- 	$(LD) -o $@ sftp-server.o sftp-common.o sftp-server-main.o $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS)
+ sftp-server$(EXEEXT): $(LIBCOMPAT) libssh.a sftp.o sftp-common.o sftp-server.o sftp-realpath.o sftp-server-main.o
+ 	$(LD) -o $@ sftp-server.o sftp-common.o sftp-realpath.o sftp-server-main.o $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS)
 diff --git a/cipher-ctr.c b/cipher-ctr.c
 index 32771f2..74fac3b 100644
 --- a/cipher-ctr.c
@@ -87,10 +87,10 @@ index 32771f2..74fac3b 100644
  	return (&aes_ctr);
  }
 diff --git a/clientloop.c b/clientloop.c
-index 086c0df..0b308d4 100644
+index b5a1f70..0b675fe 100644
 --- a/clientloop.c
 +++ b/clientloop.c
-@@ -2036,7 +2036,8 @@ key_accepted_by_hostkeyalgs(const struct sshkey *key)
+@@ -2035,7 +2035,8 @@ key_accepted_by_hostkeyalgs(const struct sshkey *key)
  {
  	const char *ktype = sshkey_ssh_name(key);
  	const char *hostkeyalgs = options.hostkeyalgorithms != NULL ?
@@ -101,7 +101,7 @@ index 086c0df..0b308d4 100644
  	if (key == NULL || key->type == KEY_UNSPEC)
  		return 0;
 diff --git a/dh.c b/dh.c
-index a98d39e..92e800a 100644
+index 7cb135d..306f1bc 100644
 --- a/dh.c
 +++ b/dh.c
 @@ -152,6 +152,12 @@ choose_dh(int min, int wantbits, int max)
@@ -157,10 +157,10 @@ index a98d39e..92e800a 100644
 +
  #endif /* WITH_OPENSSL */
 diff --git a/dh.h b/dh.h
-index adb643a..5d1cad5 100644
+index 5d6df62..54c7aa2 100644
 --- a/dh.h
 +++ b/dh.h
-@@ -43,6 +43,7 @@ DH	*dh_new_group_fallback(int);
+@@ -45,6 +45,7 @@ DH	*dh_new_group_fallback(int);
  
  int	 dh_gen_key(DH *, int);
  int	 dh_pub_is_valid(const DH *, const BIGNUM *);
@@ -169,7 +169,7 @@ index adb643a..5d1cad5 100644
  u_int	 dh_estimate(int);
  
 diff --git a/kex.c b/kex.c
-index 34808b5..b356a26 100644
+index 49d7015..f1f982d 100644
 --- a/kex.c
 +++ b/kex.c
 @@ -161,7 +161,10 @@ kex_names_valid(const char *names)
@@ -208,7 +208,7 @@ index 1c65b8a..b6b25bf 100644
  
  	/* generate and send 'e', client DH public key */
 diff --git a/myproposal.h b/myproposal.h
-index f167298..812d9a2 100644
+index 34bd10c..a3ae74b 100644
 --- a/myproposal.h
 +++ b/myproposal.h
 @@ -111,6 +111,14 @@
@@ -264,12 +264,12 @@ index f167298..812d9a2 100644
 +
  /* Not a KEX value, but here so all the algorithm defaults are together */
  #define	SSH_ALLOWED_CA_SIGALGS	\
- 	"ecdsa-sha2-nistp256," \
+ 	HOSTKEY_ECDSA_METHODS \
 diff --git a/readconf.c b/readconf.c
-index ec497e7..1f1a16d 100644
+index f78b4d6..2f56ed2 100644
 --- a/readconf.c
 +++ b/readconf.c
-@@ -2116,18 +2116,19 @@ fill_default_options(Options * options)
+@@ -2125,18 +2125,19 @@ fill_default_options(Options * options)
  	all_kex = kex_alg_list(',');
  	all_key = sshkey_alg_list(0, 0, 1, ',');
  	all_sig = sshkey_alg_list(0, 1, 1, ',');
@@ -298,10 +298,10 @@ index ec497e7..1f1a16d 100644
  	free(all_cipher);
  	free(all_mac);
 diff --git a/sandbox-seccomp-filter.c b/sandbox-seccomp-filter.c
-index 5edbc69..3c40136 100644
+index b5cda70..f0607a3 100644
 --- a/sandbox-seccomp-filter.c
 +++ b/sandbox-seccomp-filter.c
-@@ -137,6 +137,9 @@ static const struct sock_filter preauth_insns[] = {
+@@ -156,6 +156,9 @@ static const struct sock_filter preauth_insns[] = {
  #ifdef __NR_open
  	SC_DENY(__NR_open, EACCES),
  #endif
@@ -312,7 +312,7 @@ index 5edbc69..3c40136 100644
  	SC_DENY(__NR_openat, EACCES),
  #endif
 diff --git a/servconf.c b/servconf.c
-index ffac5d2..7ad0e4e 100644
+index e76f9c3..591d437 100644
 --- a/servconf.c
 +++ b/servconf.c
 @@ -200,18 +200,19 @@ assemble_algorithms(ServerOptions *o)
@@ -345,13 +345,13 @@ index ffac5d2..7ad0e4e 100644
  	free(all_cipher);
  	free(all_mac);
 diff --git a/ssh-keygen.c b/ssh-keygen.c
-index 3898b28..f3f4975 100644
+index 8c829ca..cb4982d 100644
 --- a/ssh-keygen.c
 +++ b/ssh-keygen.c
-@@ -199,6 +199,12 @@ type_bits_valid(int type, const char *name, u_int32_t *bitsp)
- 	    OPENSSL_DSA_MAX_MODULUS_BITS : OPENSSL_RSA_MAX_MODULUS_BITS;
- 	if (*bitsp > maxbits)
- 		fatal("key bits exceeds maximum %d", maxbits);
+@@ -201,6 +201,12 @@ type_bits_valid(int type, const char *name, u_int32_t *bitsp)
+ #endif
+ 	}
+ #ifdef WITH_OPENSSL
 +	if (FIPS_mode()) {
 +		if (type == KEY_DSA)
 +			fatal("DSA keys are not allowed in FIPS mode");
@@ -361,8 +361,28 @@ index 3898b28..f3f4975 100644
  	switch (type) {
  	case KEY_DSA:
  		if (*bitsp != 1024)
+@@ -1061,9 +1067,18 @@ do_gen_all_hostkeys(struct passwd *pw)
+ 			first = 1;
+ 			printf("%s: generating new host keys: ", __progname);
+ 		}
++
++		type = sshkey_type_from_name(key_types[i].key_type);
++
++		/* Skip the keys that are not supported in FIPS mode */
++		if (FIPS_mode() && (type == KEY_DSA || type == KEY_ED25519)) {
++			logit("Skipping %s key in FIPS mode",
++				key_types[i].key_type_display);
++			goto next;
++		}
++
+ 		printf("%s ", key_types[i].key_type_display);
+ 		fflush(stdout);
+-		type = sshkey_type_from_name(key_types[i].key_type);
+ 		if ((fd = mkstemp(prv_tmp)) == -1) {
+ 			error("Could not save your public key in %s: %s",
+ 			    prv_tmp, strerror(errno));
 diff --git a/ssh.c b/ssh.c
-index 91e7c35..1cf14f6 100644
+index ee51823..0724df4 100644
 --- a/ssh.c
 +++ b/ssh.c
 @@ -76,6 +76,8 @@
@@ -403,7 +423,7 @@ index 91e7c35..1cf14f6 100644
  	 * Discard other fds that are hanging around. These can cause problem
  	 * with backgrounded ssh processes started by ControlPersist.
 diff --git a/sshconnect2.c b/sshconnect2.c
-index dffee90..28b2554 100644
+index 87fa70a..a42aacb 100644
 --- a/sshconnect2.c
 +++ b/sshconnect2.c
 @@ -44,6 +44,8 @@
@@ -445,7 +465,7 @@ index dffee90..28b2554 100644
  		myproposal[PROPOSAL_SERVER_HOST_KEY_ALGS] =
  		    compat_pkalg_proposal(
 diff --git a/sshd.c b/sshd.c
-index a3c1975..bf25d76 100644
+index f8dee0f..2bf8939 100644
 --- a/sshd.c
 +++ b/sshd.c
 @@ -66,6 +66,7 @@
@@ -465,7 +485,7 @@ index a3c1975..bf25d76 100644
  #include "openbsd-compat/openssl-compat.h"
  #endif
  
-@@ -1447,6 +1450,18 @@ main(int ac, char **av)
+@@ -1445,6 +1448,18 @@ main(int ac, char **av)
  #endif
  	__progname = ssh_get_progname(av[0]);
  
@@ -484,7 +504,7 @@ index a3c1975..bf25d76 100644
  	/* Save argv. Duplicate so setproctitle emulation doesn't clobber it */
  	saved_argc = ac;
  	rexec_argc = ac;
-@@ -1905,6 +1920,10 @@ main(int ac, char **av)
+@@ -1910,6 +1925,10 @@ main(int ac, char **av)
  	/* Reinitialize the log (because of the fork above). */
  	log_init(__progname, options.log_level, options.log_facility, log_stderr);
  
@@ -496,7 +516,7 @@ index a3c1975..bf25d76 100644
  	   unmounted if desired. */
  	if (chdir("/") == -1)
 diff --git a/sshkey.c b/sshkey.c
-index ad19577..18906cb 100644
+index ef90563..1b1ba01 100644
 --- a/sshkey.c
 +++ b/sshkey.c
 @@ -34,6 +34,7 @@
@@ -508,14 +528,14 @@ index ad19577..18906cb 100644
  
  #include "crypto_api.h"
 @@ -57,6 +58,7 @@
+ #define SSHKEY_INTERNAL
  #include "sshkey.h"
- #include "sshkey-xmss.h"
  #include "match.h"
 +#include "log.h"
  
- #include "xmss_fast.h"
- 
-@@ -1481,6 +1483,8 @@ rsa_generate_private_key(u_int bits, RSA **rsap)
+ #ifdef WITH_XMSS
+ #include "sshkey-xmss.h"
+@@ -1491,6 +1493,8 @@ rsa_generate_private_key(u_int bits, RSA **rsap)
  	}
  	if (!BN_set_word(f4, RSA_F4) ||
  	    !RSA_generate_key_ex(private, bits, f4, NULL)) {
diff --git a/recipes-connectivity/openssh/openssh/openssh-6.6p1-ctr-cavstest.patch b/recipes-connectivity/openssh/openssh/openssh-6.6p1-ctr-cavstest.patch
index 29371f8..8b74451 100644
--- a/recipes-connectivity/openssh/openssh/openssh-6.6p1-ctr-cavstest.patch
+++ b/recipes-connectivity/openssh/openssh/openssh-6.6p1-ctr-cavstest.patch
@@ -1,7 +1,7 @@
-From a94a3d95439018dc7d276ec72de91af369ea413e Mon Sep 17 00:00:00 2001
+From 6d65893a85bddfc543ce894ee4940bd0d5ab368e Mon Sep 17 00:00:00 2001
 From: Hongxu Jia <hongxu.jia@windriver.com>
-Date: Sun, 22 Sep 2019 21:32:18 +0800
-Subject: [PATCH 1/2] add CAVS test driver for the aes-ctr ciphers
+Date: Sat, 21 Dec 2019 13:05:19 +0800
+Subject: [PATCH] add CAVS test driver for the aes-ctr ciphers
 
 Original submission to Fedora, see:
    https://lists.fedoraproject.org/pipermail/scm-commits/2012-January/715044.html
@@ -25,7 +25,7 @@ Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
  create mode 100644 ctr-cavstest.c
 
 diff --git a/Makefile.in b/Makefile.in
-index ddd1804..cb34681 100644
+index 37aec69..1d6e298 100644
 --- a/Makefile.in
 +++ b/Makefile.in
 @@ -23,6 +23,7 @@ SSH_PROGRAM=@bindir@/ssh
@@ -45,7 +45,7 @@ index ddd1804..cb34681 100644
  
  XMSS_OBJS=\
  	ssh-xmss.o \
-@@ -193,6 +194,9 @@ ssh-keysign$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-keysign.o readconf.o uidswap.o c
+@@ -198,6 +199,9 @@ ssh-keysign$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-keysign.o readconf.o uidswap.o c
  ssh-pkcs11-helper$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-pkcs11-helper.o ssh-pkcs11.o
  	$(LD) -o $@ ssh-pkcs11-helper.o ssh-pkcs11.o $(LDFLAGS) -lssh -lopenbsd-compat -lssh -lopenbsd-compat $(LIBS)
  
@@ -53,9 +53,9 @@ index ddd1804..cb34681 100644
 +	$(LD) -o $@ ctr-cavstest.o $(LDFLAGS) -lssh -lopenbsd-compat -lssh -lfipscheck $(LIBS)
 +
  ssh-keyscan$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-keyscan.o
- 	$(LD) -o $@ ssh-keyscan.o $(LDFLAGS) -lssh -lopenbsd-compat -lssh -lfipscheck $(LIBS)
+ 	$(LD) -o $@ ssh-keyscan.o $(LDFLAGS) -lssh -lopenbsd-compat -lfipscheck -lssh $(LIBS)
  
-@@ -343,6 +347,7 @@ install-files:
+@@ -348,6 +352,7 @@ install-files:
  	$(INSTALL) -m 0755 $(STRIP_OPT) ssh-keyscan$(EXEEXT) $(DESTDIR)$(bindir)/ssh-keyscan$(EXEEXT)
  	$(INSTALL) -m 0755 $(STRIP_OPT) sshd$(EXEEXT) $(DESTDIR)$(sbindir)/sshd$(EXEEXT)
  	$(INSTALL) -m 4711 $(STRIP_OPT) ssh-keysign$(EXEEXT) $(DESTDIR)$(SSH_KEYSIGN)$(EXEEXT)
diff --git a/recipes-connectivity/openssh/openssh/openssh-6.7p1-kdf-cavs.patch b/recipes-connectivity/openssh/openssh/openssh-6.7p1-kdf-cavs.patch
index 7ac881f..0cbccd7 100644
--- a/recipes-connectivity/openssh/openssh/openssh-6.7p1-kdf-cavs.patch
+++ b/recipes-connectivity/openssh/openssh/openssh-6.7p1-kdf-cavs.patch
@@ -1,7 +1,7 @@
-From 210d15fd146ff7037f03fff5e0ba6fcf0bfde683 Mon Sep 17 00:00:00 2001
+From 6b6e0f7d4a517378a8d53b84fbef2cfc78c42f46 Mon Sep 17 00:00:00 2001
 From: Hongxu Jia <hongxu.jia@windriver.com>
-Date: Sun, 22 Sep 2019 21:40:51 +0800
-Subject: [PATCH 2/2] add KDF CAVS test driver
+Date: Sat, 21 Dec 2019 13:08:52 +0800
+Subject: [PATCH] add KDF CAVS test driver
 
 Original submission to Fedora, see:
    https://lists.fedoraproject.org/pipermail/scm-commits/Week-of-Mon-20150216/1514788.html
@@ -17,6 +17,7 @@ This is the makefile.in change for the normal configuration.
 Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
 
 Upstream-Status: Inappropriate [oe specific]
+
 Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
 ---
  Makefile.in        |   8 +-
@@ -27,7 +28,7 @@ Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
  create mode 100644 ssh-cavs_driver.pl
 
 diff --git a/Makefile.in b/Makefile.in
-index cb34681..368097e 100644
+index 1d6e298..be28411 100644
 --- a/Makefile.in
 +++ b/Makefile.in
 @@ -24,6 +24,7 @@ ASKPASS_PROGRAM=$(libexecdir)/ssh-askpass
@@ -47,7 +48,7 @@ index cb34681..368097e 100644
  
  XMSS_OBJS=\
  	ssh-xmss.o \
-@@ -197,6 +198,9 @@ ssh-pkcs11-helper$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-pkcs11-helper.o ssh-pkcs11
+@@ -202,6 +203,9 @@ ssh-pkcs11-helper$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-pkcs11-helper.o ssh-pkcs11
  ctr-cavstest$(EXEEXT): $(LIBCOMPAT) libssh.a ctr-cavstest.o
  	$(LD) -o $@ ctr-cavstest.o $(LDFLAGS) -lssh -lopenbsd-compat -lssh -lfipscheck $(LIBS)
  
@@ -55,9 +56,9 @@ index cb34681..368097e 100644
 +	$(LD) -o $@ ssh-cavs.o $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS)
 +
  ssh-keyscan$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-keyscan.o
- 	$(LD) -o $@ ssh-keyscan.o $(LDFLAGS) -lssh -lopenbsd-compat -lssh -lfipscheck $(LIBS)
+ 	$(LD) -o $@ ssh-keyscan.o $(LDFLAGS) -lssh -lopenbsd-compat -lfipscheck -lssh $(LIBS)
  
-@@ -348,6 +352,8 @@ install-files:
+@@ -353,6 +357,8 @@ install-files:
  	$(INSTALL) -m 0755 $(STRIP_OPT) sshd$(EXEEXT) $(DESTDIR)$(sbindir)/sshd$(EXEEXT)
  	$(INSTALL) -m 4711 $(STRIP_OPT) ssh-keysign$(EXEEXT) $(DESTDIR)$(SSH_KEYSIGN)$(EXEEXT)
  	$(INSTALL) -m 0755 $(STRIP_OPT) ctr-cavstest$(EXEEXT) $(DESTDIR)$(libexecdir)/ctr-cavstest$(EXEEXT)
-- 
2.17.1

