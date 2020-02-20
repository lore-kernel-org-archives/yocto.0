Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web11.3167.1582190755925338937
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Feb 2020 01:25:56 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 01K9PIdf002617
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Thu, 20 Feb 2020 01:25:28 -0800
Received: from [128.224.162.174] (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Thu, 20 Feb
 2020 01:25:07 -0800
Subject: Re: [yocto] [meta-openssl102-fips][PATCH] openssh: refresh patches to 8.2p1
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <yocto@lists.yoctoproject.org>, <mark.hatle@kernel.crashing.org>
References: <15F511CD9414D2D3.4432@lists.yoctoproject.org>
Message-ID: <175383f8-a1d3-5076-1ec7-cd9463fbf659@windriver.com>
Date: Thu, 20 Feb 2020 17:25:04 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <15F511CD9414D2D3.4432@lists.yoctoproject.org>
X-Originating-IP: [128.224.162.174]
Content-Type: multipart/alternative;
	boundary="------------81A62EB30B129063983A73A6"
Content-Language: en-US

--------------81A62EB30B129063983A73A6
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

Please ignore this. I have sent V2 with clean commit message.


//Yi

On 2/20/20 5:19 PM, Yi Zhao wrote:
> Issue: LINCD-1151
>
> Refresh patches to openssh-8.2p1.
> Reference:
> http://pkgs.fedoraproject.org/cgit/rpms/openssh.git/plain/openssh-7.7p1-fips.patch
> (commit 51f5c1c99f1d20e48328edde666061d0ce0da83b)
>
> (LOCAL REV: NOT UPSTREAM) -- send to meta-openssl102-fips on 20200220
>
> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> ---
>   .../0001-conditional-enable-fips-mode.patch   |  54 ++--
>   ...ps.patch => 0001-openssh-8.2p1-fips.patch} | 300 ++++++++----------
>   .../openssh/openssh-6.6p1-ctr-cavstest.patch  |  35 +-
>   .../openssh/openssh-6.7p1-kdf-cavs.patch      |  35 +-
>   recipes-connectivity/openssh/openssh_fips.inc |   2 +-
>   5 files changed, 202 insertions(+), 224 deletions(-)
>   rename recipes-connectivity/openssh/openssh/{0001-openssh-8.0p1-fips.patch => 0001-openssh-8.2p1-fips.patch} (57%)
>
> diff --git a/recipes-connectivity/openssh/openssh/0001-conditional-enable-fips-mode.patch b/recipes-connectivity/openssh/openssh/0001-conditional-enable-fips-mode.patch
> index a0f496a..942fda6 100644
> --- a/recipes-connectivity/openssh/openssh/0001-conditional-enable-fips-mode.patch
> +++ b/recipes-connectivity/openssh/openssh/0001-conditional-enable-fips-mode.patch
> @@ -1,4 +1,4 @@
> -From 60204df9d1f54f581f9ddc5443228550cadd4b4b Mon Sep 17 00:00:00 2001
> +From ef6490841a73b4f71ca35e09328c6a8b0ad9dba9 Mon Sep 17 00:00:00 2001
>   From: Hongxu Jia <hongxu.jia@windriver.com>
>   Date: Sat, 21 Dec 2019 13:03:23 +0800
>   Subject: [PATCH] conditional enable fips mode
> @@ -56,10 +56,10 @@ index 359204f..346255a 100644
>    	log_init(__progname, log_level, log_facility, log_stderr);
>    
>   diff --git a/sftp.c b/sftp.c
> -index b66037f..ca263ac 100644
> +index ff14d3c..a633200 100644
>   --- a/sftp.c
>   +++ b/sftp.c
> -@@ -2387,6 +2387,7 @@ main(int argc, char **argv)
> +@@ -2390,6 +2390,7 @@ main(int argc, char **argv)
>    	size_t num_requests = DEFAULT_NUM_REQUESTS;
>    	long long limit_kbps = 0;
>    
> @@ -68,10 +68,10 @@ index b66037f..ca263ac 100644
>    	sanitise_stdfd();
>    	msetlocale();
>   diff --git a/ssh-add.c b/ssh-add.c
> -index ebfb8a3..b7d59bc 100644
> +index 8057eb1..19f3da2 100644
>   --- a/ssh-add.c
>   +++ b/ssh-add.c
> -@@ -577,6 +577,7 @@ main(int argc, char **argv)
> +@@ -628,6 +628,7 @@ main(int argc, char **argv)
>    	SyslogFacility log_facility = SYSLOG_FACILITY_AUTH;
>    	LogLevel log_level = SYSLOG_LEVEL_INFO;
>    
> @@ -80,10 +80,10 @@ index ebfb8a3..b7d59bc 100644
>    	sanitise_stdfd();
>    
>   diff --git a/ssh-agent.c b/ssh-agent.c
> -index 9c6680a..d701479 100644
> +index 7eb6f0d..1409044 100644
>   --- a/ssh-agent.c
>   +++ b/ssh-agent.c
> -@@ -1104,6 +1104,7 @@ main(int ac, char **av)
> +@@ -1196,6 +1196,7 @@ main(int ac, char **av)
>    	size_t npfd = 0;
>    	u_int maxfds;
>    
> @@ -92,10 +92,10 @@ index 9c6680a..d701479 100644
>    	sanitise_stdfd();
>    
>   diff --git a/ssh-keygen.c b/ssh-keygen.c
> -index cb4982d..84dd269 100644
> +index feafe73..9b832f6 100644
>   --- a/ssh-keygen.c
>   +++ b/ssh-keygen.c
> -@@ -2800,6 +2800,7 @@ main(int argc, char **argv)
> +@@ -3140,6 +3140,7 @@ main(int argc, char **argv)
>    	extern int optind;
>    	extern char *optarg;
>    
> @@ -104,10 +104,10 @@ index cb4982d..84dd269 100644
>    	sanitise_stdfd();
>    
>   diff --git a/ssh-keyscan.c b/ssh-keyscan.c
> -index 5de0508..0644261 100644
> +index a5e6440..e56a9d1 100644
>   --- a/ssh-keyscan.c
>   +++ b/ssh-keyscan.c
> -@@ -663,6 +663,7 @@ main(int argc, char **argv)
> +@@ -675,6 +675,7 @@ main(int argc, char **argv)
>    	extern int optind;
>    	extern char *optarg;
>    
> @@ -116,7 +116,7 @@ index 5de0508..0644261 100644
>    	seed_rng();
>    	TAILQ_INIT(&tq);
>   diff --git a/ssh-keysign.c b/ssh-keysign.c
> -index 6cfd5b4..23cf403 100644
> +index 3e3ea3e..4804c42 100644
>   --- a/ssh-keysign.c
>   +++ b/ssh-keysign.c
>   @@ -173,6 +173,7 @@ main(int argc, char **argv)
> @@ -128,10 +128,10 @@ index 6cfd5b4..23cf403 100644
>    		fatal("%s: pledge: %s", __progname, strerror(errno));
>    
>   diff --git a/ssh-pkcs11-helper.c b/ssh-pkcs11-helper.c
> -index 3bcc244..6a78a1a 100644
> +index 17220d6..1af0c2e 100644
>   --- a/ssh-pkcs11-helper.c
>   +++ b/ssh-pkcs11-helper.c
> -@@ -325,6 +325,7 @@ main(int argc, char **argv)
> +@@ -332,6 +332,7 @@ main(int argc, char **argv)
>    	extern char *__progname;
>    	struct pollfd pfd[2];
>    
> @@ -140,22 +140,22 @@ index 3bcc244..6a78a1a 100644
>    	seed_rng();
>    	TAILQ_INIT(&pkcs11_keylist);
>   diff --git a/ssh.c b/ssh.c
> -index 0724df4..9178673 100644
> +index 49331fc..06836dd 100644
>   --- a/ssh.c
>   +++ b/ssh.c
> -@@ -598,6 +598,7 @@ main(int ac, char **av)
> - 	struct ssh_digest_ctx *md;
> +@@ -606,6 +606,7 @@ main(int ac, char **av)
>    	u_char conn_hash[SSH_DIGEST_MAX_LENGTH];
> + 	size_t n, len;
>    
>   +	ssh_enable_fips_mode();
>    	/* Ensure that fds 0, 1 and 2 are open or directed to /dev/null */
>    	sanitise_stdfd();
>    
>   diff --git a/sshd.c b/sshd.c
> -index 2bf8939..c75e34a 100644
> +index b86d682..304bf01 100644
>   --- a/sshd.c
>   +++ b/sshd.c
> -@@ -1443,6 +1443,7 @@ main(int ac, char **av)
> +@@ -1514,6 +1514,7 @@ main(int ac, char **av)
>    	Authctxt *authctxt;
>    	struct connection_info *connection_info = NULL;
>    
> @@ -164,7 +164,7 @@ index 2bf8939..c75e34a 100644
>    	(void)set_auth_parameters(ac, av);
>    #endif
>   diff --git a/xmalloc.c b/xmalloc.c
> -index 9cd0127..e2f8145 100644
> +index b48d33b..456a063 100644
>   --- a/xmalloc.c
>   +++ b/xmalloc.c
>   @@ -23,6 +23,10 @@
> @@ -178,9 +178,9 @@ index 9cd0127..e2f8145 100644
>    #include "xmalloc.h"
>    #include "log.h"
>    
> -@@ -110,3 +114,19 @@ xasprintf(char **ret, const char *fmt, ...)
> -
> - 	return (i);
> +@@ -117,3 +121,19 @@ xasprintf(char **ret, const char *fmt, ...)
> + 	va_end(ap);
> + 	return i;
>    }
>   +
>   +void
> @@ -199,13 +199,13 @@ index 9cd0127..e2f8145 100644
>   +    }
>   +}
>   diff --git a/xmalloc.h b/xmalloc.h
> -index 1d5f62d..d71b8a8 100644
> +index abaf7ad..b3b1c8c 100644
>   --- a/xmalloc.h
>   +++ b/xmalloc.h
> -@@ -24,3 +24,4 @@ char	*xstrdup(const char *);
> - int	 xasprintf(char **, const char *, ...)
> -                 __attribute__((__format__ (printf, 2, 3)))
> +@@ -26,3 +26,4 @@ int	 xasprintf(char **, const char *, ...)
>                    __attribute__((__nonnull__ (2)));
> + int	 xvasprintf(char **, const char *, va_list)
> + 		__attribute__((__nonnull__ (2)));
>   +void	ssh_enable_fips_mode(void);
>   --
>   2.7.4
> diff --git a/recipes-connectivity/openssh/openssh/0001-openssh-8.0p1-fips.patch b/recipes-connectivity/openssh/openssh/0001-openssh-8.2p1-fips.patch
> similarity index 57%
> rename from recipes-connectivity/openssh/openssh/0001-openssh-8.0p1-fips.patch
> rename to recipes-connectivity/openssh/openssh/0001-openssh-8.2p1-fips.patch
> index 0e35e31..c1de130 100644
> --- a/recipes-connectivity/openssh/openssh/0001-openssh-8.0p1-fips.patch
> +++ b/recipes-connectivity/openssh/openssh/0001-openssh-8.2p1-fips.patch
> @@ -1,7 +1,7 @@
> -From 511f5dfb3e22d30a7d573313fa88a063f1d49753 Mon Sep 17 00:00:00 2001
> +From c51dd44e1c594ddeb3a27ae5d9be2899e4bf2ac6 Mon Sep 17 00:00:00 2001
>   From: Hongxu Jia <hongxu.jia@windriver.com>
>   Date: Sat, 21 Dec 2019 11:45:38 +0800
> -Subject: [PATCH] openssh 8.0p1 fips
> +Subject: [PATCH] openssh 8.2p1 fips
>   
>   Port openssh-7.7p1-fips.patch from Fedora
>   https://src.fedoraproject.org/rpms/openssh.git
> @@ -10,30 +10,33 @@ https://src.fedoraproject.org/rpms/openssh.git
>   Upstream-Status: Inappropriate [oe specific]
>   
>   Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
> +
> +Rebase to 8.2p1
> +Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>   ---
>    Makefile.in              | 14 +++++++-------
>    cipher-ctr.c             |  3 ++-
> - clientloop.c             |  3 ++-
> + clientloop.c             |  2 +-
>    dh.c                     | 40 ++++++++++++++++++++++++++++++++++++++++
>    dh.h                     |  1 +
>    kex.c                    |  5 ++++-
>    kexgexc.c                |  5 +++++
> - myproposal.h             | 40 ++++++++++++++++++++++++++++++++++++++++
> - readconf.c               | 17 +++++++++--------
> + myproposal.h             | 35 +++++++++++++++++++++++++++++++++++
> + readconf.c               | 15 ++++++++++-----
>    sandbox-seccomp-filter.c |  3 +++
> - servconf.c               | 19 ++++++++++---------
> - ssh-keygen.c             | 17 ++++++++++++++++-
> + servconf.c               | 15 ++++++++++-----
> + ssh-keygen.c             | 16 +++++++++++++++-
>    ssh.c                    | 16 ++++++++++++++++
> - sshconnect2.c            | 11 ++++++++---
> + sshconnect2.c            |  8 ++++++--
>    sshd.c                   | 19 +++++++++++++++++++
>    sshkey.c                 |  4 ++++
> - 16 files changed, 186 insertions(+), 31 deletions(-)
> + 16 files changed, 178 insertions(+), 23 deletions(-)
>   
>   diff --git a/Makefile.in b/Makefile.in
> -index adb1977..37aec69 100644
> +index e754947..57f94f4 100644
>   --- a/Makefile.in
>   +++ b/Makefile.in
> -@@ -175,31 +175,31 @@ libssh.a: $(LIBSSH_OBJS)
> +@@ -206,25 +206,25 @@ libssh.a: $(LIBSSH_OBJS)
>    	$(RANLIB) $@
>    
>    ssh$(EXEEXT): $(LIBCOMPAT) libssh.a $(SSHOBJS)
> @@ -44,34 +47,36 @@ index adb1977..37aec69 100644
>   -	$(LD) -o $@ $(SSHDOBJS) $(LDFLAGS) -lssh -lopenbsd-compat $(SSHDLIBS) $(LIBS) $(GSSLIBS) $(K5LIBS)
>   +	$(LD) -o $@ $(SSHDOBJS) $(LDFLAGS) -lssh -lopenbsd-compat -lfipscheck $(SSHDLIBS) $(LIBS) $(GSSLIBS) $(K5LIBS)
>    
> - scp$(EXEEXT): $(LIBCOMPAT) libssh.a scp.o progressmeter.o
> - 	$(LD) -o $@ scp.o progressmeter.o $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS)
> + scp$(EXEEXT): $(LIBCOMPAT) libssh.a $(SCP_OBJS)
> + 	$(LD) -o $@ $(SCP_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS)
>    
> - ssh-add$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-add.o
> --	$(LD) -o $@ ssh-add.o $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS)
> -+	$(LD) -o $@ ssh-add.o $(LDFLAGS) -lssh -lopenbsd-compat -lfipscheck $(LIBS)
> + ssh-add$(EXEEXT): $(LIBCOMPAT) libssh.a $(SSHADD_OBJS)
> +-	$(LD) -o $@ $(SSHADD_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS)
> ++	$(LD) -o $@ $(SSHADD_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat -lfipscheck $(LIBS)
>    
> - ssh-agent$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-agent.o ssh-pkcs11-client.o
> --	$(LD) -o $@ ssh-agent.o ssh-pkcs11-client.o $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS)
> -+	$(LD) -o $@ ssh-agent.o ssh-pkcs11-client.o $(LDFLAGS) -lssh -lopenbsd-compat -lfipscheck $(LIBS)
> + ssh-agent$(EXEEXT): $(LIBCOMPAT) libssh.a $(SSHAGENT_OBJS)
> +-	$(LD) -o $@ $(SSHAGENT_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS)
> ++	$(LD) -o $@ $(SSHAGENT_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat -lfipscheck $(LIBS)
>    
> - ssh-keygen$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-keygen.o sshsig.o
> --	$(LD) -o $@ ssh-keygen.o sshsig.o $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS)
> -+	$(LD) -o $@ ssh-keygen.o sshsig.o $(LDFLAGS) -lssh -lopenbsd-compat -lfipscheck $(LIBS)
> + ssh-keygen$(EXEEXT): $(LIBCOMPAT) libssh.a $(SSHKEYGEN_OBJS)
> +-	$(LD) -o $@ $(SSHKEYGEN_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS)
> ++	$(LD) -o $@ $(SSHKEYGEN_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat -lfipscheck $(LIBS)
>    
> - ssh-keysign$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-keysign.o readconf.o uidswap.o compat.o
> --	$(LD) -o $@ ssh-keysign.o readconf.o uidswap.o $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS)
> -+	$(LD) -o $@ ssh-keysign.o readconf.o uidswap.o $(LDFLAGS) -lssh -lopenbsd-compat -lfipscheck $(LIBS)
> + ssh-keysign$(EXEEXT): $(LIBCOMPAT) libssh.a $(SSHKEYSIGN_OBJS)
> +-	$(LD) -o $@ $(SSHKEYSIGN_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS)
> ++	$(LD) -o $@ $(SSHKEYSIGN_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat -lfipscheck $(LIBS)
>    
> - ssh-pkcs11-helper$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-pkcs11-helper.o ssh-pkcs11.o
> - 	$(LD) -o $@ ssh-pkcs11-helper.o ssh-pkcs11.o $(LDFLAGS) -lssh -lopenbsd-compat -lssh -lopenbsd-compat $(LIBS)
> + ssh-pkcs11-helper$(EXEEXT): $(LIBCOMPAT) libssh.a $(P11HELPER_OBJS)
> + 	$(LD) -o $@ $(P11HELPER_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat -lssh -lopenbsd-compat $(LIBS)
> +@@ -233,7 +233,7 @@ ssh-sk-helper$(EXEEXT): $(LIBCOMPAT) libssh.a $(SKHELPER_OBJS)
> + 	$(LD) -o $@ $(SKHELPER_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat -lssh -lopenbsd-compat $(LIBS) $(LIBFIDO2)
>    
> - ssh-keyscan$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-keyscan.o
> --	$(LD) -o $@ ssh-keyscan.o $(LDFLAGS) -lssh -lopenbsd-compat -lssh $(LIBS)
> -+	$(LD) -o $@ ssh-keyscan.o $(LDFLAGS) -lssh -lopenbsd-compat -lfipscheck -lssh $(LIBS)
> + ssh-keyscan$(EXEEXT): $(LIBCOMPAT) libssh.a $(SSHKEYSCAN_OBJS)
> +-	$(LD) -o $@ $(SSHKEYSCAN_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat -lssh $(LIBS)
> ++	$(LD) -o $@ $(SSHKEYSCAN_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat -lssh -lfipscheck $(LIBS)
>    
> - sftp-server$(EXEEXT): $(LIBCOMPAT) libssh.a sftp.o sftp-common.o sftp-server.o sftp-realpath.o sftp-server-main.o
> - 	$(LD) -o $@ sftp-server.o sftp-common.o sftp-realpath.o sftp-server-main.o $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS)
> + sftp-server$(EXEEXT): $(LIBCOMPAT) libssh.a $(SFTPSERVER_OBJS)
> + 	$(LD) -o $@ $(SFTPSERVER_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS)
>   diff --git a/cipher-ctr.c b/cipher-ctr.c
>   index 32771f2..74fac3b 100644
>   --- a/cipher-ctr.c
> @@ -87,16 +92,15 @@ index 32771f2..74fac3b 100644
>    	return (&aes_ctr);
>    }
>   diff --git a/clientloop.c b/clientloop.c
> -index b5a1f70..0b675fe 100644
> +index ebd0dbc..b3e0c19 100644
>   --- a/clientloop.c
>   +++ b/clientloop.c
> -@@ -2035,7 +2035,8 @@ key_accepted_by_hostkeyalgs(const struct sshkey *key)
> +@@ -2083,7 +2083,7 @@ static int
> + key_accepted_by_hostkeyalgs(const struct sshkey *key)
>    {
>    	const char *ktype = sshkey_ssh_name(key);
> - 	const char *hostkeyalgs = options.hostkeyalgorithms != NULL ?
> --	    options.hostkeyalgorithms : KEX_DEFAULT_PK_ALG;
> -+	    options.hostkeyalgorithms : (FIPS_mode() ?
> -+	    KEX_FIPS_PK_ALG : KEX_DEFAULT_PK_ALG);
> +-	const char *hostkeyalgs = options.hostkeyalgorithms;
> ++	const char *hostkeyalgs = (FIPS_mode() ? KEX_FIPS_PK_ALG : options.hostkeyalgorithms);
>    
>    	if (key == NULL || key->type == KEY_UNSPEC)
>    		return 0;
> @@ -169,10 +173,10 @@ index 5d6df62..54c7aa2 100644
>    u_int	 dh_estimate(int);
>    
>   diff --git a/kex.c b/kex.c
> -index 49d7015..f1f982d 100644
> +index ce85f04..9cc14de 100644
>   --- a/kex.c
>   +++ b/kex.c
> -@@ -161,7 +161,10 @@ kex_names_valid(const char *names)
> +@@ -163,7 +163,10 @@ kex_names_valid(const char *names)
>    	for ((p = strsep(&cp, ",")); p && *p != '\0';
>    	    (p = strsep(&cp, ","))) {
>    		if (kex_alg_by_name(p) == NULL) {
> @@ -185,7 +189,7 @@ index 49d7015..f1f982d 100644
>    			return 0;
>    		}
>   diff --git a/kexgexc.c b/kexgexc.c
> -index 1c65b8a..b6b25bf 100644
> +index 323a659..812112d 100644
>   --- a/kexgexc.c
>   +++ b/kexgexc.c
>   @@ -28,6 +28,7 @@
> @@ -208,97 +212,86 @@ index 1c65b8a..b6b25bf 100644
>    
>    	/* generate and send 'e', client DH public key */
>   diff --git a/myproposal.h b/myproposal.h
> -index 34bd10c..a3ae74b 100644
> +index 5312e60..d0accae 100644
>   --- a/myproposal.h
>   +++ b/myproposal.h
> -@@ -111,6 +111,14 @@
> +@@ -57,6 +57,20 @@
>    	"rsa-sha2-256," \
>    	"ssh-rsa"
>    
>   +#define	KEX_FIPS_PK_ALG	\
> -+	HOSTKEY_ECDSA_CERT_METHODS \
> ++	"ecdsa-sha2-nistp256-cert-v01@openssh.com," \
> ++	"ecdsa-sha2-nistp384-cert-v01@openssh.com," \
> ++	"ecdsa-sha2-nistp521-cert-v01@openssh.com," \
> ++	"rsa-sha2-512-cert-v01@openssh.com," \
> ++	"rsa-sha2-256-cert-v01@openssh.com," \
>   +	"ssh-rsa-cert-v01@openssh.com," \
> -+	HOSTKEY_ECDSA_METHODS \
> ++	"ecdsa-sha2-nistp256," \
> ++	"ecdsa-sha2-nistp384," \
> ++	"ecdsa-sha2-nistp521," \
>   +	"rsa-sha2-512," \
>   +	"rsa-sha2-256," \
>   +	"ssh-rsa"
>   +
> - /* the actual algorithms */
> -
> - #define KEX_SERVER_ENCRYPT \
> -@@ -134,6 +142,38 @@
> + #define	KEX_SERVER_ENCRYPT \
> + 	"chacha20-poly1305@openssh.com," \
> + 	"aes128-ctr,aes192-ctr,aes256-ctr," \
> +@@ -78,6 +92,27 @@
>    
>    #define KEX_CLIENT_MAC KEX_SERVER_MAC
>    
>   +#define	KEX_FIPS_ENCRYPT \
>   +	"aes128-ctr,aes192-ctr,aes256-ctr," \
>   +	"aes128-cbc,3des-cbc," \
> -+	"aes192-cbc,aes256-cbc,rijndael-cbc@lysator.liu.se" \
> -+	AESGCM_CIPHER_MODES
> -+#ifdef HAVE_EVP_SHA256
> -+# define KEX_DEFAULT_KEX_FIPS		\
> -+	KEX_ECDH_METHODS \
> -+	KEX_SHA2_METHODS \
> ++	"aes192-cbc,aes256-cbc,rijndael-cbc@lysator.liu.se," \
> ++	"aes128-gcm@openssh.com,aes256-gcm@openssh.com"
> ++#define KEX_DEFAULT_KEX_FIPS		\
> ++	"ecdh-sha2-nistp256," \
> ++	"ecdh-sha2-nistp384," \
> ++	"ecdh-sha2-nistp521," \
> ++	"diffie-hellman-group-exchange-sha256," \
> ++	"diffie-hellman-group16-sha512," \
> ++	"diffie-hellman-group18-sha512," \
>   +	"diffie-hellman-group14-sha256"
> -+# define KEX_FIPS_MAC \
> ++#define KEX_FIPS_MAC \
>   +	"hmac-sha1," \
>   +	"hmac-sha2-256," \
>   +	"hmac-sha2-512," \
>   +	"hmac-sha1-etm@openssh.com," \
>   +	"hmac-sha2-256-etm@openssh.com," \
>   +	"hmac-sha2-512-etm@openssh.com"
> -+#else
> -+# ifdef OPENSSL_HAS_NISTP521
> -+#  define KEX_DEFAULT_KEX_FIPS		\
> -+	"ecdh-sha2-nistp256," \
> -+	"ecdh-sha2-nistp384," \
> -+	"ecdh-sha2-nistp521"
> -+# else
> -+#  define KEX_DEFAULT_KEX_FIPS		\
> -+	"ecdh-sha2-nistp256," \
> -+	"ecdh-sha2-nistp384"
> -+# endif
> -+#define        KEX_FIPS_MAC \
> -+       "hmac-sha1"
> -+#endif
>   +
>    /* Not a KEX value, but here so all the algorithm defaults are together */
>    #define	SSH_ALLOWED_CA_SIGALGS	\
> - 	HOSTKEY_ECDSA_METHODS \
> + 	"ecdsa-sha2-nistp256," \
>   diff --git a/readconf.c b/readconf.c
> -index f78b4d6..2f56ed2 100644
> +index f3cac6b..26b9a59 100644
>   --- a/readconf.c
>   +++ b/readconf.c
> -@@ -2125,18 +2125,19 @@ fill_default_options(Options * options)
> - 	all_kex = kex_alg_list(',');
> +@@ -2187,11 +2187,16 @@ fill_default_options(Options * options)
>    	all_key = sshkey_alg_list(0, 0, 1, ',');
>    	all_sig = sshkey_alg_list(0, 1, 1, ',');
> --#define ASSEMBLE(what, defaults, all) \
> -+#define ASSEMBLE(what, defaults, fips_defaults, all) \
> + 	/* remove unsupported algos from default lists */
> +-	def_cipher = match_filter_whitelist(KEX_CLIENT_ENCRYPT, all_cipher);
> +-	def_mac = match_filter_whitelist(KEX_CLIENT_MAC, all_mac);
> +-	def_kex = match_filter_whitelist(KEX_CLIENT_KEX, all_kex);
> +-	def_key = match_filter_whitelist(KEX_DEFAULT_PK_ALG, all_key);
> +-	def_sig = match_filter_whitelist(SSH_ALLOWED_CA_SIGALGS, all_sig);
> ++	def_cipher = match_filter_whitelist((FIPS_mode() ?
> ++	    KEX_FIPS_ENCRYPT : KEX_CLIENT_ENCRYPT), all_cipher);
> ++	def_mac = match_filter_whitelist((FIPS_mode() ?
> ++	    KEX_FIPS_MAC : KEX_CLIENT_MAC), all_mac);
> ++	def_kex = match_filter_whitelist((FIPS_mode() ?
> ++	    KEX_DEFAULT_KEX_FIPS : KEX_CLIENT_KEX), all_kex);
> ++	def_key = match_filter_whitelist((FIPS_mode() ?
> ++	    KEX_FIPS_PK_ALG : KEX_DEFAULT_PK_ALG), all_key);
> ++	def_sig = match_filter_whitelist((FIPS_mode() ?
> ++	    KEX_FIPS_PK_ALG : SSH_ALLOWED_CA_SIGALGS), all_sig);
> + #define ASSEMBLE(what, defaults, all) \
>    	do { \
>    		if ((r = kex_assemble_names(&options->what, \
> --		    defaults, all)) != 0) \
> -+		    (FIPS_mode() ? fips_defaults : defaults), \
> -+		    all)) != 0) \
> - 			fatal("%s: %s: %s", __func__, #what, ssh_err(r)); \
> - 	} while (0)
> --	ASSEMBLE(ciphers, KEX_CLIENT_ENCRYPT, all_cipher);
> --	ASSEMBLE(macs, KEX_CLIENT_MAC, all_mac);
> --	ASSEMBLE(kex_algorithms, KEX_CLIENT_KEX, all_kex);
> --	ASSEMBLE(hostbased_key_types, KEX_DEFAULT_PK_ALG, all_key);
> --	ASSEMBLE(pubkey_key_types, KEX_DEFAULT_PK_ALG, all_key);
> --	ASSEMBLE(ca_sign_algorithms, SSH_ALLOWED_CA_SIGALGS, all_sig);
> -+	ASSEMBLE(ciphers, KEX_CLIENT_ENCRYPT, KEX_FIPS_ENCRYPT, all_cipher);
> -+	ASSEMBLE(macs, KEX_CLIENT_MAC, KEX_FIPS_MAC, all_mac);
> -+	ASSEMBLE(kex_algorithms, KEX_CLIENT_KEX, KEX_DEFAULT_KEX_FIPS, all_kex);
> -+	ASSEMBLE(hostbased_key_types, KEX_DEFAULT_PK_ALG, KEX_FIPS_PK_ALG, all_key);
> -+	ASSEMBLE(pubkey_key_types, KEX_DEFAULT_PK_ALG, KEX_FIPS_PK_ALG, all_key);
> -+	ASSEMBLE(ca_sign_algorithms, SSH_ALLOWED_CA_SIGALGS, KEX_FIPS_PK_ALG, all_sig);
> - #undef ASSEMBLE
> - 	free(all_cipher);
> - 	free(all_mac);
>   diff --git a/sandbox-seccomp-filter.c b/sandbox-seccomp-filter.c
> -index b5cda70..f0607a3 100644
> +index f80981f..00702a7 100644
>   --- a/sandbox-seccomp-filter.c
>   +++ b/sandbox-seccomp-filter.c
>   @@ -156,6 +156,9 @@ static const struct sock_filter preauth_insns[] = {
> @@ -312,43 +305,36 @@ index b5cda70..f0607a3 100644
>    	SC_DENY(__NR_openat, EACCES),
>    #endif
>   diff --git a/servconf.c b/servconf.c
> -index e76f9c3..591d437 100644
> +index 70f5f73..815beaf 100644
>   --- a/servconf.c
>   +++ b/servconf.c
> -@@ -200,18 +200,19 @@ assemble_algorithms(ServerOptions *o)
> - 	all_kex = kex_alg_list(',');
> +@@ -212,11 +212,16 @@ assemble_algorithms(ServerOptions *o)
>    	all_key = sshkey_alg_list(0, 0, 1, ',');
>    	all_sig = sshkey_alg_list(0, 1, 1, ',');
> --#define ASSEMBLE(what, defaults, all) \
> -+#define ASSEMBLE(what, defaults, fips_defaults, all) \
> + 	/* remove unsupported algos from default lists */
> +-	def_cipher = match_filter_whitelist(KEX_SERVER_ENCRYPT, all_cipher);
> +-	def_mac = match_filter_whitelist(KEX_SERVER_MAC, all_mac);
> +-	def_kex = match_filter_whitelist(KEX_SERVER_KEX, all_kex);
> +-	def_key = match_filter_whitelist(KEX_DEFAULT_PK_ALG, all_key);
> +-	def_sig = match_filter_whitelist(SSH_ALLOWED_CA_SIGALGS, all_sig);
> ++	def_cipher = match_filter_whitelist((FIPS_mode() ?
> ++	    KEX_FIPS_ENCRYPT : KEX_SERVER_ENCRYPT), all_cipher);
> ++	def_mac = match_filter_whitelist((FIPS_mode() ?
> ++	    KEX_FIPS_MAC : KEX_SERVER_MAC), all_mac);
> ++	def_kex = match_filter_whitelist((FIPS_mode() ?
> ++	    KEX_DEFAULT_KEX_FIPS : KEX_SERVER_KEX), all_kex);
> ++	def_key = match_filter_whitelist((FIPS_mode() ?
> ++	    KEX_FIPS_PK_ALG : KEX_DEFAULT_PK_ALG), all_key);
> ++	def_sig = match_filter_whitelist((FIPS_mode() ?
> ++	    KEX_FIPS_PK_ALG : SSH_ALLOWED_CA_SIGALGS), all_sig);
> + #define ASSEMBLE(what, defaults, all) \
>    	do { \
> --		if ((r = kex_assemble_names(&o->what, defaults, all)) != 0) \
> -+		if ((r = kex_assemble_names(&o->what, (FIPS_mode() \
> -+		    ? fips_defaults : defaults), all)) != 0) \
> - 			fatal("%s: %s: %s", __func__, #what, ssh_err(r)); \
> - 	} while (0)
> --	ASSEMBLE(ciphers, KEX_SERVER_ENCRYPT, all_cipher);
> --	ASSEMBLE(macs, KEX_SERVER_MAC, all_mac);
> --	ASSEMBLE(kex_algorithms, KEX_SERVER_KEX, all_kex);
> --	ASSEMBLE(hostkeyalgorithms, KEX_DEFAULT_PK_ALG, all_key);
> --	ASSEMBLE(hostbased_key_types, KEX_DEFAULT_PK_ALG, all_key);
> --	ASSEMBLE(pubkey_key_types, KEX_DEFAULT_PK_ALG, all_key);
> --	ASSEMBLE(ca_sign_algorithms, SSH_ALLOWED_CA_SIGALGS, all_sig);
> -+	ASSEMBLE(ciphers, KEX_SERVER_ENCRYPT, KEX_FIPS_ENCRYPT, all_cipher);
> -+	ASSEMBLE(macs, KEX_SERVER_MAC, KEX_FIPS_MAC, all_mac);
> -+	ASSEMBLE(kex_algorithms, KEX_SERVER_KEX, KEX_DEFAULT_KEX_FIPS, all_kex);
> -+	ASSEMBLE(hostkeyalgorithms, KEX_DEFAULT_PK_ALG, KEX_FIPS_PK_ALG, all_key);
> -+	ASSEMBLE(hostbased_key_types, KEX_DEFAULT_PK_ALG, KEX_FIPS_PK_ALG, all_key);
> -+	ASSEMBLE(pubkey_key_types, KEX_DEFAULT_PK_ALG, KEX_FIPS_PK_ALG, all_key);
> -+	ASSEMBLE(ca_sign_algorithms, SSH_ALLOWED_CA_SIGALGS, KEX_FIPS_PK_ALG, all_sig);
> - #undef ASSEMBLE
> - 	free(all_cipher);
> - 	free(all_mac);
> + 		if ((r = kex_assemble_names(&o->what, defaults, all)) != 0) \
>   diff --git a/ssh-keygen.c b/ssh-keygen.c
> -index 8c829ca..cb4982d 100644
> +index 0d6ed1f..feafe73 100644
>   --- a/ssh-keygen.c
>   +++ b/ssh-keygen.c
> -@@ -201,6 +201,12 @@ type_bits_valid(int type, const char *name, u_int32_t *bitsp)
> +@@ -204,6 +204,12 @@ type_bits_valid(int type, const char *name, u_int32_t *bitsp)
>    #endif
>    	}
>    #ifdef WITH_OPENSSL
> @@ -361,17 +347,16 @@ index 8c829ca..cb4982d 100644
>    	switch (type) {
>    	case KEY_DSA:
>    		if (*bitsp != 1024)
> -@@ -1061,9 +1067,18 @@ do_gen_all_hostkeys(struct passwd *pw)
> +@@ -1088,9 +1094,17 @@ do_gen_all_hostkeys(struct passwd *pw)
>    			first = 1;
>    			printf("%s: generating new host keys: ", __progname);
>    		}
> -+
>   +		type = sshkey_type_from_name(key_types[i].key_type);
>   +
>   +		/* Skip the keys that are not supported in FIPS mode */
>   +		if (FIPS_mode() && (type == KEY_DSA || type == KEY_ED25519)) {
>   +			logit("Skipping %s key in FIPS mode",
> -+				key_types[i].key_type_display);
> ++			    key_types[i].key_type_display);
>   +			goto next;
>   +		}
>   +
> @@ -382,10 +367,10 @@ index 8c829ca..cb4982d 100644
>    			error("Could not save your public key in %s: %s",
>    			    prv_tmp, strerror(errno));
>   diff --git a/ssh.c b/ssh.c
> -index ee51823..0724df4 100644
> +index 15aee56..49331fc 100644
>   --- a/ssh.c
>   +++ b/ssh.c
> -@@ -76,6 +76,8 @@
> +@@ -77,6 +77,8 @@
>    #include <openssl/evp.h>
>    #include <openssl/err.h>
>    #endif
> @@ -394,7 +379,7 @@ index ee51823..0724df4 100644
>    #include "openbsd-compat/openssl-compat.h"
>    #include "openbsd-compat/sys-queue.h"
>    
> -@@ -600,6 +602,16 @@ main(int ac, char **av)
> +@@ -608,6 +610,16 @@ main(int ac, char **av)
>    	sanitise_stdfd();
>    
>    	__progname = ssh_get_progname(av[0]);
> @@ -411,7 +396,7 @@ index ee51823..0724df4 100644
>    
>    #ifndef HAVE_SETPROCTITLE
>    	/* Prepare for later setproctitle emulation */
> -@@ -614,6 +626,10 @@ main(int ac, char **av)
> +@@ -622,6 +634,10 @@ main(int ac, char **av)
>    
>    	seed_rng();
>    
> @@ -423,7 +408,7 @@ index ee51823..0724df4 100644
>    	 * Discard other fds that are hanging around. These can cause problem
>    	 * with backgrounded ssh processes started by ControlPersist.
>   diff --git a/sshconnect2.c b/sshconnect2.c
> -index 87fa70a..a42aacb 100644
> +index af00fb3..639fc51 100644
>   --- a/sshconnect2.c
>   +++ b/sshconnect2.c
>   @@ -44,6 +44,8 @@
> @@ -435,37 +420,28 @@ index 87fa70a..a42aacb 100644
>    #include "openbsd-compat/sys-queue.h"
>    
>    #include "xmalloc.h"
> -@@ -117,7 +119,8 @@ order_hostkeyalgs(char *host, struct sockaddr *hostaddr, u_short port)
> +@@ -119,7 +121,8 @@ order_hostkeyalgs(char *host, struct sockaddr *hostaddr, u_short port)
>    	for (i = 0; i < options.num_system_hostfiles; i++)
>    		load_hostkeys(hostkeys, hostname, options.system_hostfiles[i]);
>    
> --	oavail = avail = xstrdup(KEX_DEFAULT_PK_ALG);
> +-	oavail = avail = xstrdup(options.hostkeyalgorithms);
>   +	oavail = avail = xstrdup((FIPS_mode()
> -+	    ? KEX_FIPS_PK_ALG : KEX_DEFAULT_PK_ALG));
> ++	    ? KEX_FIPS_PK_ALG : options.hostkeyalgorithms));
>    	maxlen = strlen(avail) + 1;
>    	first = xmalloc(maxlen);
>    	last = xmalloc(maxlen);
> -@@ -179,14 +182,16 @@ ssh_kex2(struct ssh *ssh, char *host, struct sockaddr *hostaddr, u_short port)
> - 	if (options.hostkeyalgorithms != NULL) {
> - 		all_key = sshkey_alg_list(0, 0, 1, ',');
> - 		if (kex_assemble_names(&options.hostkeyalgorithms,
> --		    KEX_DEFAULT_PK_ALG, all_key) != 0)
> -+		    (FIPS_mode() ? KEX_FIPS_PK_ALG : KEX_DEFAULT_PK_ALG),
> -+		    all_key) != 0)
> - 			fatal("%s: kex_assemble_namelist", __func__);
> - 		free(all_key);
> - 		myproposal[PROPOSAL_SERVER_HOST_KEY_ALGS] =
> - 		    compat_pkalg_proposal(options.hostkeyalgorithms);
> - 	} else {
> - 		/* Enforce default */
> --		options.hostkeyalgorithms = xstrdup(KEX_DEFAULT_PK_ALG);
> -+		options.hostkeyalgorithms = xstrdup((FIPS_mode()
> -+		    ? KEX_FIPS_PK_ALG : KEX_DEFAULT_PK_ALG));
> - 		/* Prefer algorithms that we already have keys for */
> - 		myproposal[PROPOSAL_SERVER_HOST_KEY_ALGS] =
> - 		    compat_pkalg_proposal(
> +@@ -179,7 +182,8 @@ ssh_kex2(struct ssh *ssh, char *host, struct sockaddr *hostaddr, u_short port)
> + 	/* Expand or fill in HostkeyAlgorithms */
> + 	all_key = sshkey_alg_list(0, 0, 1, ',');
> + 	if (kex_assemble_names(&options.hostkeyalgorithms,
> +-	    kex_default_pk_alg(), all_key) != 0)
> ++	    (FIPS_mode() ? KEX_FIPS_PK_ALG : kex_default_pk_alg()),
> ++	    all_key) != 0)
> + 		fatal("%s: kex_assemble_namelist", __func__);
> + 	free(all_key);
> +
>   diff --git a/sshd.c b/sshd.c
> -index f8dee0f..2bf8939 100644
> +index 5b9a0b5..b86d682 100644
>   --- a/sshd.c
>   +++ b/sshd.c
>   @@ -66,6 +66,7 @@
> @@ -485,7 +461,7 @@ index f8dee0f..2bf8939 100644
>    #include "openbsd-compat/openssl-compat.h"
>    #endif
>    
> -@@ -1445,6 +1448,18 @@ main(int ac, char **av)
> +@@ -1516,6 +1519,18 @@ main(int ac, char **av)
>    #endif
>    	__progname = ssh_get_progname(av[0]);
>    
> @@ -504,7 +480,7 @@ index f8dee0f..2bf8939 100644
>    	/* Save argv. Duplicate so setproctitle emulation doesn't clobber it */
>    	saved_argc = ac;
>    	rexec_argc = ac;
> -@@ -1910,6 +1925,10 @@ main(int ac, char **av)
> +@@ -1990,6 +2005,10 @@ main(int ac, char **av)
>    	/* Reinitialize the log (because of the fork above). */
>    	log_init(__progname, options.log_level, options.log_facility, log_stderr);
>    
> @@ -516,7 +492,7 @@ index f8dee0f..2bf8939 100644
>    	   unmounted if desired. */
>    	if (chdir("/") == -1)
>   diff --git a/sshkey.c b/sshkey.c
> -index ef90563..1b1ba01 100644
> +index 57995ee..3fa4274 100644
>   --- a/sshkey.c
>   +++ b/sshkey.c
>   @@ -34,6 +34,7 @@
> @@ -532,10 +508,10 @@ index ef90563..1b1ba01 100644
>    #include "sshkey.h"
>    #include "match.h"
>   +#include "log.h"
> + #include "ssh-sk.h"
>    
>    #ifdef WITH_XMSS
> - #include "sshkey-xmss.h"
> -@@ -1491,6 +1493,8 @@ rsa_generate_private_key(u_int bits, RSA **rsap)
> +@@ -1597,6 +1599,8 @@ rsa_generate_private_key(u_int bits, RSA **rsap)
>    	}
>    	if (!BN_set_word(f4, RSA_F4) ||
>    	    !RSA_generate_key_ex(private, bits, f4, NULL)) {
> diff --git a/recipes-connectivity/openssh/openssh/openssh-6.6p1-ctr-cavstest.patch b/recipes-connectivity/openssh/openssh/openssh-6.6p1-ctr-cavstest.patch
> index 8b74451..c7635b2 100644
> --- a/recipes-connectivity/openssh/openssh/openssh-6.6p1-ctr-cavstest.patch
> +++ b/recipes-connectivity/openssh/openssh/openssh-6.6p1-ctr-cavstest.patch
> @@ -1,4 +1,4 @@
> -From 6d65893a85bddfc543ce894ee4940bd0d5ab368e Mon Sep 17 00:00:00 2001
> +From bf3211bbff5cb9e1ef588f74844b04e09a9ad2b6 Mon Sep 17 00:00:00 2001
>   From: Hongxu Jia <hongxu.jia@windriver.com>
>   Date: Sat, 21 Dec 2019 13:05:19 +0800
>   Subject: [PATCH] add CAVS test driver for the aes-ctr ciphers
> @@ -18,6 +18,7 @@ Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
>   
>   Upstream-Status: Inappropriate [oe specific]
>   Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
> +Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>   ---
>    Makefile.in    |   7 +-
>    ctr-cavstest.c | 215 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
> @@ -25,7 +26,7 @@ Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
>    create mode 100644 ctr-cavstest.c
>   
>   diff --git a/Makefile.in b/Makefile.in
> -index 37aec69..1d6e298 100644
> +index 57f94f4..0accd89 100644
>   --- a/Makefile.in
>   +++ b/Makefile.in
>   @@ -23,6 +23,7 @@ SSH_PROGRAM=@bindir@/ssh
> @@ -34,35 +35,35 @@ index 37aec69..1d6e298 100644
>    SSH_KEYSIGN=$(libexecdir)/ssh-keysign
>   +CTR_CAVSTEST=$(libexecdir)/ctr-cavstest
>    SSH_PKCS11_HELPER=$(libexecdir)/ssh-pkcs11-helper
> + SSH_SK_HELPER=$(libexecdir)/ssh-sk-helper
>    PRIVSEP_PATH=@PRIVSEP_PATH@
> - SSH_PRIVSEP_USER=@SSH_PRIVSEP_USER@
> -@@ -60,7 +61,7 @@ EXEEXT=@EXEEXT@
> - MANFMT=@MANFMT@
> - MKDIR_P=@MKDIR_P@
> +@@ -68,7 +69,7 @@ MKDIR_P=@MKDIR_P@
>    
> --TARGETS=ssh$(EXEEXT) sshd$(EXEEXT) ssh-add$(EXEEXT) ssh-keygen$(EXEEXT) ssh-keyscan${EXEEXT} ssh-keysign${EXEEXT} ssh-pkcs11-helper$(EXEEXT) ssh-agent$(EXEEXT) scp$(EXEEXT) sftp-server$(EXEEXT) sftp$(EXEEXT)
> -+TARGETS=ssh$(EXEEXT) sshd$(EXEEXT) ssh-add$(EXEEXT) ssh-keygen$(EXEEXT) ssh-keyscan${EXEEXT} ssh-keysign${EXEEXT} ssh-pkcs11-helper$(EXEEXT) ssh-agent$(EXEEXT) scp$(EXEEXT) sftp-server$(EXEEXT) sftp$(EXEEXT) ctr-cavstest$(EXEEXT)
> + .SUFFIXES: .lo
> +
> +-TARGETS=ssh$(EXEEXT) sshd$(EXEEXT) ssh-add$(EXEEXT) ssh-keygen$(EXEEXT) ssh-keyscan${EXEEXT} ssh-keysign${EXEEXT} ssh-pkcs11-helper$(EXEEXT) ssh-agent$(EXEEXT) scp$(EXEEXT) sftp-server$(EXEEXT) sftp$(EXEEXT) ssh-sk-helper$(EXEEXT)
> ++TARGETS=ssh$(EXEEXT) sshd$(EXEEXT) ssh-add$(EXEEXT) ssh-keygen$(EXEEXT) ssh-keyscan${EXEEXT} ssh-keysign${EXEEXT} ssh-pkcs11-helper$(EXEEXT) ssh-agent$(EXEEXT) scp$(EXEEXT) sftp-server$(EXEEXT) sftp$(EXEEXT) ssh-sk-helper$(EXEEXT) ctr-cavstest$(EXEEXT)
>    
>    XMSS_OBJS=\
>    	ssh-xmss.o \
> -@@ -198,6 +199,9 @@ ssh-keysign$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-keysign.o readconf.o uidswap.o c
> - ssh-pkcs11-helper$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-pkcs11-helper.o ssh-pkcs11.o
> - 	$(LD) -o $@ ssh-pkcs11-helper.o ssh-pkcs11.o $(LDFLAGS) -lssh -lopenbsd-compat -lssh -lopenbsd-compat $(LIBS)
> +@@ -232,6 +233,9 @@ ssh-pkcs11-helper$(EXEEXT): $(LIBCOMPAT) libssh.a $(P11HELPER_OBJS)
> + ssh-sk-helper$(EXEEXT): $(LIBCOMPAT) libssh.a $(SKHELPER_OBJS)
> + 	$(LD) -o $@ $(SKHELPER_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat -lssh -lopenbsd-compat $(LIBS) $(LIBFIDO2)
>    
>   +ctr-cavstest$(EXEEXT): $(LIBCOMPAT) libssh.a ctr-cavstest.o
>   +	$(LD) -o $@ ctr-cavstest.o $(LDFLAGS) -lssh -lopenbsd-compat -lssh -lfipscheck $(LIBS)
>   +
> - ssh-keyscan$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-keyscan.o
> - 	$(LD) -o $@ ssh-keyscan.o $(LDFLAGS) -lssh -lopenbsd-compat -lfipscheck -lssh $(LIBS)
> + ssh-keyscan$(EXEEXT): $(LIBCOMPAT) libssh.a $(SSHKEYSCAN_OBJS)
> + 	$(LD) -o $@ $(SSHKEYSCAN_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat -lssh -lfipscheck $(LIBS)
>    
> -@@ -348,6 +352,7 @@ install-files:
> - 	$(INSTALL) -m 0755 $(STRIP_OPT) ssh-keyscan$(EXEEXT) $(DESTDIR)$(bindir)/ssh-keyscan$(EXEEXT)
> - 	$(INSTALL) -m 0755 $(STRIP_OPT) sshd$(EXEEXT) $(DESTDIR)$(sbindir)/sshd$(EXEEXT)
> +@@ -389,6 +393,7 @@ install-files:
>    	$(INSTALL) -m 4711 $(STRIP_OPT) ssh-keysign$(EXEEXT) $(DESTDIR)$(SSH_KEYSIGN)$(EXEEXT)
> -+	$(INSTALL) -m 0755 $(STRIP_OPT) ctr-cavstest$(EXEEXT) $(DESTDIR)$(libexecdir)/ctr-cavstest$(EXEEXT)
>    	$(INSTALL) -m 0755 $(STRIP_OPT) ssh-pkcs11-helper$(EXEEXT) $(DESTDIR)$(SSH_PKCS11_HELPER)$(EXEEXT)
> + 	$(INSTALL) -m 0755 $(STRIP_OPT) ssh-sk-helper$(EXEEXT) $(DESTDIR)$(SSH_SK_HELPER)$(EXEEXT)
> ++	$(INSTALL) -m 0755 $(STRIP_OPT) ctr-cavstest$(EXEEXT) $(DESTDIR)$(libexecdir)/ctr-cavstest$(EXEEXT)
>    	$(INSTALL) -m 0755 $(STRIP_OPT) sftp$(EXEEXT) $(DESTDIR)$(bindir)/sftp$(EXEEXT)
>    	$(INSTALL) -m 0755 $(STRIP_OPT) sftp-server$(EXEEXT) $(DESTDIR)$(SFTP_SERVER)$(EXEEXT)
> + 	$(INSTALL) -m 644 ssh.1.out $(DESTDIR)$(mandir)/$(mansubdir)1/ssh.1
>   diff --git a/ctr-cavstest.c b/ctr-cavstest.c
>   new file mode 100644
>   index 0000000..0d4776b
> diff --git a/recipes-connectivity/openssh/openssh/openssh-6.7p1-kdf-cavs.patch b/recipes-connectivity/openssh/openssh/openssh-6.7p1-kdf-cavs.patch
> index 0cbccd7..4a0ae2c 100644
> --- a/recipes-connectivity/openssh/openssh/openssh-6.7p1-kdf-cavs.patch
> +++ b/recipes-connectivity/openssh/openssh/openssh-6.7p1-kdf-cavs.patch
> @@ -1,4 +1,4 @@
> -From 6b6e0f7d4a517378a8d53b84fbef2cfc78c42f46 Mon Sep 17 00:00:00 2001
> +From a2c2c21275ea701c2f0ae54bf5945c92860e9208 Mon Sep 17 00:00:00 2001
>   From: Hongxu Jia <hongxu.jia@windriver.com>
>   Date: Sat, 21 Dec 2019 13:08:52 +0800
>   Subject: [PATCH] add KDF CAVS test driver
> @@ -19,6 +19,7 @@ Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
>   Upstream-Status: Inappropriate [oe specific]
>   
>   Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
> +Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>   ---
>    Makefile.in        |   8 +-
>    ssh-cavs.c         | 387 +++++++++++++++++++++++++++++++++++++++++++++++++++++
> @@ -28,7 +29,7 @@ Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
>    create mode 100644 ssh-cavs_driver.pl
>   
>   diff --git a/Makefile.in b/Makefile.in
> -index 1d6e298..be28411 100644
> +index 0accd89..5789323 100644
>   --- a/Makefile.in
>   +++ b/Makefile.in
>   @@ -24,6 +24,7 @@ ASKPASS_PROGRAM=$(libexecdir)/ssh-askpass
> @@ -37,36 +38,36 @@ index 1d6e298..be28411 100644
>    CTR_CAVSTEST=$(libexecdir)/ctr-cavstest
>   +SSH_CAVS=$(libexecdir)/ssh-cavs
>    SSH_PKCS11_HELPER=$(libexecdir)/ssh-pkcs11-helper
> + SSH_SK_HELPER=$(libexecdir)/ssh-sk-helper
>    PRIVSEP_PATH=@PRIVSEP_PATH@
> - SSH_PRIVSEP_USER=@SSH_PRIVSEP_USER@
> -@@ -61,7 +62,7 @@ EXEEXT=@EXEEXT@
> - MANFMT=@MANFMT@
> - MKDIR_P=@MKDIR_P@
> +@@ -69,7 +70,7 @@ MKDIR_P=@MKDIR_P@
>    
> --TARGETS=ssh$(EXEEXT) sshd$(EXEEXT) ssh-add$(EXEEXT) ssh-keygen$(EXEEXT) ssh-keyscan${EXEEXT} ssh-keysign${EXEEXT} ssh-pkcs11-helper$(EXEEXT) ssh-agent$(EXEEXT) scp$(EXEEXT) sftp-server$(EXEEXT) sftp$(EXEEXT) ctr-cavstest$(EXEEXT)
> -+TARGETS=ssh$(EXEEXT) sshd$(EXEEXT) ssh-add$(EXEEXT) ssh-keygen$(EXEEXT) ssh-keyscan${EXEEXT} ssh-keysign${EXEEXT} ssh-pkcs11-helper$(EXEEXT) ssh-agent$(EXEEXT) scp$(EXEEXT) sftp-server$(EXEEXT) sftp$(EXEEXT) ctr-cavstest$(EXEEXT) ssh-cavs$(EXEEXT)
> + .SUFFIXES: .lo
> +
> +-TARGETS=ssh$(EXEEXT) sshd$(EXEEXT) ssh-add$(EXEEXT) ssh-keygen$(EXEEXT) ssh-keyscan${EXEEXT} ssh-keysign${EXEEXT} ssh-pkcs11-helper$(EXEEXT) ssh-agent$(EXEEXT) scp$(EXEEXT) sftp-server$(EXEEXT) sftp$(EXEEXT) ssh-sk-helper$(EXEEXT) ctr-cavstest$(EXEEXT)
> ++TARGETS=ssh$(EXEEXT) sshd$(EXEEXT) ssh-add$(EXEEXT) ssh-keygen$(EXEEXT) ssh-keyscan${EXEEXT} ssh-keysign${EXEEXT} ssh-pkcs11-helper$(EXEEXT) ssh-agent$(EXEEXT) scp$(EXEEXT) sftp-server$(EXEEXT) sftp$(EXEEXT) ssh-sk-helper$(EXEEXT) ctr-cavstest$(EXEEXT) ssh-cavs$(EXEEXT)
>    
>    XMSS_OBJS=\
>    	ssh-xmss.o \
> -@@ -202,6 +203,9 @@ ssh-pkcs11-helper$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-pkcs11-helper.o ssh-pkcs11
> +@@ -236,6 +237,9 @@ ssh-sk-helper$(EXEEXT): $(LIBCOMPAT) libssh.a $(SKHELPER_OBJS)
>    ctr-cavstest$(EXEEXT): $(LIBCOMPAT) libssh.a ctr-cavstest.o
>    	$(LD) -o $@ ctr-cavstest.o $(LDFLAGS) -lssh -lopenbsd-compat -lssh -lfipscheck $(LIBS)
>    
> -+ssh-cavs$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-cavs.o
> -+	$(LD) -o $@ ssh-cavs.o $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS)
> ++ssh-cavs$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-cavs.o $(SKOBJS)
> ++	$(LD) -o $@ ssh-cavs.o $(SKOBJS) $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS)
>   +
> - ssh-keyscan$(EXEEXT): $(LIBCOMPAT) libssh.a ssh-keyscan.o
> - 	$(LD) -o $@ ssh-keyscan.o $(LDFLAGS) -lssh -lopenbsd-compat -lfipscheck -lssh $(LIBS)
> + ssh-keyscan$(EXEEXT): $(LIBCOMPAT) libssh.a $(SSHKEYSCAN_OBJS)
> + 	$(LD) -o $@ $(SSHKEYSCAN_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat -lssh -lfipscheck $(LIBS)
>    
> -@@ -353,6 +357,8 @@ install-files:
> - 	$(INSTALL) -m 0755 $(STRIP_OPT) sshd$(EXEEXT) $(DESTDIR)$(sbindir)/sshd$(EXEEXT)
> - 	$(INSTALL) -m 4711 $(STRIP_OPT) ssh-keysign$(EXEEXT) $(DESTDIR)$(SSH_KEYSIGN)$(EXEEXT)
> +@@ -394,6 +398,8 @@ install-files:
> + 	$(INSTALL) -m 0755 $(STRIP_OPT) ssh-pkcs11-helper$(EXEEXT) $(DESTDIR)$(SSH_PKCS11_HELPER)$(EXEEXT)
> + 	$(INSTALL) -m 0755 $(STRIP_OPT) ssh-sk-helper$(EXEEXT) $(DESTDIR)$(SSH_SK_HELPER)$(EXEEXT)
>    	$(INSTALL) -m 0755 $(STRIP_OPT) ctr-cavstest$(EXEEXT) $(DESTDIR)$(libexecdir)/ctr-cavstest$(EXEEXT)
>   +	$(INSTALL) -m 0755 $(STRIP_OPT) ssh-cavs$(EXEEXT) $(DESTDIR)$(libexecdir)/ssh-cavs$(EXEEXT)
>   +	$(INSTALL) -m 0755 $(STRIP_OPT) ssh-cavs_driver.pl $(DESTDIR)$(libexecdir)/ssh-cavs_driver.pl
> - 	$(INSTALL) -m 0755 $(STRIP_OPT) ssh-pkcs11-helper$(EXEEXT) $(DESTDIR)$(SSH_PKCS11_HELPER)$(EXEEXT)
>    	$(INSTALL) -m 0755 $(STRIP_OPT) sftp$(EXEEXT) $(DESTDIR)$(bindir)/sftp$(EXEEXT)
>    	$(INSTALL) -m 0755 $(STRIP_OPT) sftp-server$(EXEEXT) $(DESTDIR)$(SFTP_SERVER)$(EXEEXT)
> + 	$(INSTALL) -m 644 ssh.1.out $(DESTDIR)$(mandir)/$(mansubdir)1/ssh.1
>   diff --git a/ssh-cavs.c b/ssh-cavs.c
>   new file mode 100644
>   index 0000000..b74ae7f
> diff --git a/recipes-connectivity/openssh/openssh_fips.inc b/recipes-connectivity/openssh/openssh_fips.inc
> index 0eafb98..c74532f 100644
> --- a/recipes-connectivity/openssh/openssh_fips.inc
> +++ b/recipes-connectivity/openssh/openssh_fips.inc
> @@ -6,7 +6,7 @@ DEPENDS += " \
>   RRECOMMENDS_${PN}-sshd_remove = "rng-tools"
>   
>   SRC_URI += " \
> -    file://0001-openssh-8.0p1-fips.patch \
> +    file://0001-openssh-8.2p1-fips.patch \
>       file://0001-conditional-enable-fips-mode.patch \
>       file://openssh-6.6p1-ctr-cavstest.patch \
>       file://openssh-6.7p1-kdf-cavs.patch \
>
> 

--------------81A62EB30B129063983A73A6
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+CiAgPGhlYWQ+CiAgICA8bWV0YSBodHRwLWVxdWl2PSJDb250ZW50LVR5cGUiIGNvbnRl
bnQ9InRleHQvaHRtbDsgY2hhcnNldD1VVEYtOCI+CiAgPC9oZWFkPgogIDxib2R5PgogICAgPHA+
UGxlYXNlIGlnbm9yZSB0aGlzLiBJIGhhdmUgc2VudCBWMiB3aXRoIGNsZWFuIGNvbW1pdCBtZXNz
YWdlLjwvcD4KICAgIDxwPjxicj4KICAgIDwvcD4KICAgIDxwPi8vWWk8YnI+CiAgICA8L3A+CiAg
ICA8ZGl2IGNsYXNzPSJtb3otY2l0ZS1wcmVmaXgiPk9uIDIvMjAvMjAgNToxOSBQTSwgWWkgWmhh
byB3cm90ZTo8YnI+CiAgICA8L2Rpdj4KICAgIDxibG9ja3F1b3RlIHR5cGU9ImNpdGUiCiAgICAg
IGNpdGU9Im1pZDoxNUY1MTFDRDk0MTREMkQzLjQ0MzJAbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyI+
CiAgICAgIDxwcmUgY2xhc3M9Im1vei1xdW90ZS1wcmUiIHdyYXA9IiI+SXNzdWU6IExJTkNELTEx
NTEKClJlZnJlc2ggcGF0Y2hlcyB0byBvcGVuc3NoLTguMnAxLgpSZWZlcmVuY2U6CjxhIGNsYXNz
PSJtb3otdHh0LWxpbmstZnJlZXRleHQiIGhyZWY9Imh0dHA6Ly9wa2dzLmZlZG9yYXByb2plY3Qu
b3JnL2NnaXQvcnBtcy9vcGVuc3NoLmdpdC9wbGFpbi9vcGVuc3NoLTcuN3AxLWZpcHMucGF0Y2gi
Pmh0dHA6Ly9wa2dzLmZlZG9yYXByb2plY3Qub3JnL2NnaXQvcnBtcy9vcGVuc3NoLmdpdC9wbGFp
bi9vcGVuc3NoLTcuN3AxLWZpcHMucGF0Y2g8L2E+Cihjb21taXQgNTFmNWMxYzk5ZjFkMjBlNDgz
MjhlZGRlNjY2MDYxZDBjZTBkYTgzYikKCihMT0NBTCBSRVY6IE5PVCBVUFNUUkVBTSkgLS0gc2Vu
ZCB0byBtZXRhLW9wZW5zc2wxMDItZmlwcyBvbiAyMDIwMDIyMAoKU2lnbmVkLW9mZi1ieTogWWkg
WmhhbyA8YSBjbGFzcz0ibW96LXR4dC1saW5rLXJmYzIzOTZFIiBocmVmPSJtYWlsdG86eWkuemhh
b0B3aW5kcml2ZXIuY29tIj4mbHQ7eWkuemhhb0B3aW5kcml2ZXIuY29tJmd0OzwvYT4KLS0tCiAu
Li4vMDAwMS1jb25kaXRpb25hbC1lbmFibGUtZmlwcy1tb2RlLnBhdGNoICAgfCAgNTQgKystLQog
Li4ucHMucGF0Y2ggPSZndDsgMDAwMS1vcGVuc3NoLTguMnAxLWZpcHMucGF0Y2h9IHwgMzAwICsr
KysrKysrLS0tLS0tLS0tLQogLi4uL29wZW5zc2gvb3BlbnNzaC02LjZwMS1jdHItY2F2c3Rlc3Qu
cGF0Y2ggIHwgIDM1ICstCiAuLi4vb3BlbnNzaC9vcGVuc3NoLTYuN3AxLWtkZi1jYXZzLnBhdGNo
ICAgICAgfCAgMzUgKy0KIHJlY2lwZXMtY29ubmVjdGl2aXR5L29wZW5zc2gvb3BlbnNzaF9maXBz
LmluYyB8ICAgMiArLQogNSBmaWxlcyBjaGFuZ2VkLCAyMDIgaW5zZXJ0aW9ucygrKSwgMjI0IGRl
bGV0aW9ucygtKQogcmVuYW1lIHJlY2lwZXMtY29ubmVjdGl2aXR5L29wZW5zc2gvb3BlbnNzaC97
MDAwMS1vcGVuc3NoLTguMHAxLWZpcHMucGF0Y2ggPSZndDsgMDAwMS1vcGVuc3NoLTguMnAxLWZp
cHMucGF0Y2h9ICg1NyUpCgpkaWZmIC0tZ2l0IGEvcmVjaXBlcy1jb25uZWN0aXZpdHkvb3BlbnNz
aC9vcGVuc3NoLzAwMDEtY29uZGl0aW9uYWwtZW5hYmxlLWZpcHMtbW9kZS5wYXRjaCBiL3JlY2lw
ZXMtY29ubmVjdGl2aXR5L29wZW5zc2gvb3BlbnNzaC8wMDAxLWNvbmRpdGlvbmFsLWVuYWJsZS1m
aXBzLW1vZGUucGF0Y2gKaW5kZXggYTBmNDk2YS4uOTQyZmRhNiAxMDA2NDQKLS0tIGEvcmVjaXBl
cy1jb25uZWN0aXZpdHkvb3BlbnNzaC9vcGVuc3NoLzAwMDEtY29uZGl0aW9uYWwtZW5hYmxlLWZp
cHMtbW9kZS5wYXRjaAorKysgYi9yZWNpcGVzLWNvbm5lY3Rpdml0eS9vcGVuc3NoL29wZW5zc2gv
MDAwMS1jb25kaXRpb25hbC1lbmFibGUtZmlwcy1tb2RlLnBhdGNoCkBAIC0xLDQgKzEsNCBAQAot
RnJvbSA2MDIwNGRmOWQxZjU0ZjU4MWY5ZGRjNTQ0MzIyODU1MGNhZGQ0YjRiIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQorRnJvbSBlZjY0OTA4NDFhNzNiNGY3MWNhMzVlMDkzMjhjNmE4YjBhZDlk
YmE5IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQogRnJvbTogSG9uZ3h1IEppYSA8YSBjbGFzcz0i
bW96LXR4dC1saW5rLXJmYzIzOTZFIiBocmVmPSJtYWlsdG86aG9uZ3h1LmppYUB3aW5kcml2ZXIu
Y29tIj4mbHQ7aG9uZ3h1LmppYUB3aW5kcml2ZXIuY29tJmd0OzwvYT4KIERhdGU6IFNhdCwgMjEg
RGVjIDIwMTkgMTM6MDM6MjMgKzA4MDAKIFN1YmplY3Q6IFtQQVRDSF0gY29uZGl0aW9uYWwgZW5h
YmxlIGZpcHMgbW9kZQpAQCAtNTYsMTAgKzU2LDEwIEBAIGluZGV4IDM1OTIwNGYuLjM0NjI1NWEg
MTAwNjQ0CiAgCWxvZ19pbml0KF9fcHJvZ25hbWUsIGxvZ19sZXZlbCwgbG9nX2ZhY2lsaXR5LCBs
b2dfc3RkZXJyKTsKICAKIGRpZmYgLS1naXQgYS9zZnRwLmMgYi9zZnRwLmMKLWluZGV4IGI2NjAz
N2YuLmNhMjYzYWMgMTAwNjQ0CitpbmRleCBmZjE0ZDNjLi5hNjMzMjAwIDEwMDY0NAogLS0tIGEv
c2Z0cC5jCiArKysgYi9zZnRwLmMKLUBAIC0yMzg3LDYgKzIzODcsNyBAQCBtYWluKGludCBhcmdj
LCBjaGFyICoqYXJndikKK0BAIC0yMzkwLDYgKzIzOTAsNyBAQCBtYWluKGludCBhcmdjLCBjaGFy
ICoqYXJndikKICAJc2l6ZV90IG51bV9yZXF1ZXN0cyA9IERFRkFVTFRfTlVNX1JFUVVFU1RTOwog
IAlsb25nIGxvbmcgbGltaXRfa2JwcyA9IDA7CiAgCkBAIC02OCwxMCArNjgsMTAgQEAgaW5kZXgg
YjY2MDM3Zi4uY2EyNjNhYyAxMDA2NDQKICAJc2FuaXRpc2Vfc3RkZmQoKTsKICAJbXNldGxvY2Fs
ZSgpOwogZGlmZiAtLWdpdCBhL3NzaC1hZGQuYyBiL3NzaC1hZGQuYwotaW5kZXggZWJmYjhhMy4u
YjdkNTliYyAxMDA2NDQKK2luZGV4IDgwNTdlYjEuLjE5ZjNkYTIgMTAwNjQ0CiAtLS0gYS9zc2gt
YWRkLmMKICsrKyBiL3NzaC1hZGQuYwotQEAgLTU3Nyw2ICs1NzcsNyBAQCBtYWluKGludCBhcmdj
LCBjaGFyICoqYXJndikKK0BAIC02MjgsNiArNjI4LDcgQEAgbWFpbihpbnQgYXJnYywgY2hhciAq
KmFyZ3YpCiAgCVN5c2xvZ0ZhY2lsaXR5IGxvZ19mYWNpbGl0eSA9IFNZU0xPR19GQUNJTElUWV9B
VVRIOwogIAlMb2dMZXZlbCBsb2dfbGV2ZWwgPSBTWVNMT0dfTEVWRUxfSU5GTzsKICAKQEAgLTgw
LDEwICs4MCwxMCBAQCBpbmRleCBlYmZiOGEzLi5iN2Q1OWJjIDEwMDY0NAogIAlzYW5pdGlzZV9z
dGRmZCgpOwogIAogZGlmZiAtLWdpdCBhL3NzaC1hZ2VudC5jIGIvc3NoLWFnZW50LmMKLWluZGV4
IDljNjY4MGEuLmQ3MDE0NzkgMTAwNjQ0CitpbmRleCA3ZWI2ZjBkLi4xNDA5MDQ0IDEwMDY0NAog
LS0tIGEvc3NoLWFnZW50LmMKICsrKyBiL3NzaC1hZ2VudC5jCi1AQCAtMTEwNCw2ICsxMTA0LDcg
QEAgbWFpbihpbnQgYWMsIGNoYXIgKiphdikKK0BAIC0xMTk2LDYgKzExOTYsNyBAQCBtYWluKGlu
dCBhYywgY2hhciAqKmF2KQogIAlzaXplX3QgbnBmZCA9IDA7CiAgCXVfaW50IG1heGZkczsKICAK
QEAgLTkyLDEwICs5MiwxMCBAQCBpbmRleCA5YzY2ODBhLi5kNzAxNDc5IDEwMDY0NAogIAlzYW5p
dGlzZV9zdGRmZCgpOwogIAogZGlmZiAtLWdpdCBhL3NzaC1rZXlnZW4uYyBiL3NzaC1rZXlnZW4u
YwotaW5kZXggY2I0OTgyZC4uODRkZDI2OSAxMDA2NDQKK2luZGV4IGZlYWZlNzMuLjliODMyZjYg
MTAwNjQ0CiAtLS0gYS9zc2gta2V5Z2VuLmMKICsrKyBiL3NzaC1rZXlnZW4uYwotQEAgLTI4MDAs
NiArMjgwMCw3IEBAIG1haW4oaW50IGFyZ2MsIGNoYXIgKiphcmd2KQorQEAgLTMxNDAsNiArMzE0
MCw3IEBAIG1haW4oaW50IGFyZ2MsIGNoYXIgKiphcmd2KQogIAlleHRlcm4gaW50IG9wdGluZDsK
ICAJZXh0ZXJuIGNoYXIgKm9wdGFyZzsKICAKQEAgLTEwNCwxMCArMTA0LDEwIEBAIGluZGV4IGNi
NDk4MmQuLjg0ZGQyNjkgMTAwNjQ0CiAgCXNhbml0aXNlX3N0ZGZkKCk7CiAgCiBkaWZmIC0tZ2l0
IGEvc3NoLWtleXNjYW4uYyBiL3NzaC1rZXlzY2FuLmMKLWluZGV4IDVkZTA1MDguLjA2NDQyNjEg
MTAwNjQ0CitpbmRleCBhNWU2NDQwLi5lNTZhOWQxIDEwMDY0NAogLS0tIGEvc3NoLWtleXNjYW4u
YwogKysrIGIvc3NoLWtleXNjYW4uYwotQEAgLTY2Myw2ICs2NjMsNyBAQCBtYWluKGludCBhcmdj
LCBjaGFyICoqYXJndikKK0BAIC02NzUsNiArNjc1LDcgQEAgbWFpbihpbnQgYXJnYywgY2hhciAq
KmFyZ3YpCiAgCWV4dGVybiBpbnQgb3B0aW5kOwogIAlleHRlcm4gY2hhciAqb3B0YXJnOwogIApA
QCAtMTE2LDcgKzExNiw3IEBAIGluZGV4IDVkZTA1MDguLjA2NDQyNjEgMTAwNjQ0CiAgCXNlZWRf
cm5nKCk7CiAgCVRBSUxRX0lOSVQoJmFtcDt0cSk7CiBkaWZmIC0tZ2l0IGEvc3NoLWtleXNpZ24u
YyBiL3NzaC1rZXlzaWduLmMKLWluZGV4IDZjZmQ1YjQuLjIzY2Y0MDMgMTAwNjQ0CitpbmRleCAz
ZTNlYTNlLi40ODA0YzQyIDEwMDY0NAogLS0tIGEvc3NoLWtleXNpZ24uYwogKysrIGIvc3NoLWtl
eXNpZ24uYwogQEAgLTE3Myw2ICsxNzMsNyBAQCBtYWluKGludCBhcmdjLCBjaGFyICoqYXJndikK
QEAgLTEyOCwxMCArMTI4LDEwIEBAIGluZGV4IDZjZmQ1YjQuLjIzY2Y0MDMgMTAwNjQ0CiAgCQlm
YXRhbCgiJXM6IHBsZWRnZTogJXM8YSBjbGFzcz0ibW96LXR4dC1saW5rLXJmYzIzOTZFIiBocmVm
PSJtYWlsdG86LF9fcHJvZ25hbWUsc3RyZXJyb3IoZXJybm8pKTtkaWZmLS1naXRhL3NzaC1wa2Nz
MTEtaGVscGVyLmNiL3NzaC1wa2NzMTEtaGVscGVyLmMtaW5kZXgzYmNjMjQ0Li42YTc4YTFhMTAw
NjQ0K2luZGV4MTcyMjBkNi4uMWFmMGMyZTEwMDY0NC0tLWEvc3NoLXBrY3MxMS1oZWxwZXIuYysr
K2Ivc3NoLXBrY3MxMS1oZWxwZXIuYy1AQC0zMjUsNiszMjUsN0BAbWFpbihpbnRhcmdjLGNoYXIq
KmFyZ3YpK0BALTMzMiw2KzMzMiw3QEBtYWluKGludGFyZ2MsY2hhcioqYXJndilleHRlcm5jaGFy
Kl9fcHJvZ25hbWU7c3RydWN0cG9sbGZkcGZkWzJdO0BALTE0MCwyMisxNDAsMjJAQGluZGV4M2Jj
YzI0NC4uNmE3OGExYTEwMDY0NHNlZWRfcm5nKCk7VEFJTFFfSU5JVCgmYW1wO3BrY3MxMV9rZXls
aXN0KTtkaWZmLS1naXRhL3NzaC5jYi9zc2guYy1pbmRleDA3MjRkZjQuLjkxNzg2NzMxMDA2NDQr
aW5kZXg0OTMzMWZjLi4wNjgzNmRkMTAwNjQ0LS0tYS9zc2guYysrK2Ivc3NoLmMtQEAtNTk4LDYr
NTk4LDdAQG1haW4oaW50YWMsY2hhcioqYXYpLXN0cnVjdHNzaF9kaWdlc3RfY3R4Km1kOytAQC02
MDYsNis2MDYsN0BAbWFpbihpbnRhYyxjaGFyKiphdil1X2NoYXJjb25uX2hhc2hbU1NIX0RJR0VT
VF9NQVhfTEVOR1RIXTsrc2l6ZV90bixsZW47K3NzaF9lbmFibGVfZmlwc19tb2RlKCk7LypFbnN1
cmV0aGF0ZmRzMCwxYW5kMmFyZW9wZW5vcmRpcmVjdGVkdG8vZGV2L251bGwqL3Nhbml0aXNlX3N0
ZGZkKCk7ZGlmZi0tZ2l0YS9zc2hkLmNiL3NzaGQuYy1pbmRleDJiZjg5MzkuLmM3NWUzNGExMDA2
NDQraW5kZXhiODZkNjgyLi4zMDRiZjAxMTAwNjQ0LS0tYS9zc2hkLmMrKytiL3NzaGQuYy1AQC0x
NDQzLDYrMTQ0Myw3QEBtYWluKGludGFjLGNoYXIqKmF2KStAQC0xNTE0LDYrMTUxNCw3QEBtYWlu
KGludGFjLGNoYXIqKmF2KUF1dGhjdHh0KmF1dGhjdHh0O3N0cnVjdGNvbm5lY3Rpb25faW5mbypj
b25uZWN0aW9uX2luZm89TlVMTDtAQC0xNjQsNysxNjQsN0BAaW5kZXgyYmY4OTM5Li5jNzVlMzRh
MTAwNjQ0KHZvaWQpc2V0X2F1dGhfcGFyYW1ldGVycyhhYyxhdik7I2VuZGlmZGlmZi0tZ2l0YS94
bWFsbG9jLmNiL3htYWxsb2MuYy1pbmRleDljZDAxMjcuLmUyZjgxNDUxMDA2NDQraW5kZXhiNDhk
MzNiLi40NTZhMDYzMTAwNjQ0LS0tYS94bWFsbG9jLmMrKytiL3htYWxsb2MuY0BALTIzLDYrMjMs
MTBAQEBALTE3OCw5KzE3OCw5QEBpbmRleDljZDAxMjcuLmUyZjgxNDUxMDA2NDQjaW5jbHVkZSI+
IiwgX19wcm9nbmFtZSwgc3RyZXJyb3IoZXJybm8pKTsKICAKIGRpZmYgLS1naXQgYS9zc2gtcGtj
czExLWhlbHBlci5jIGIvc3NoLXBrY3MxMS1oZWxwZXIuYwotaW5kZXggM2JjYzI0NC4uNmE3OGEx
YSAxMDA2NDQKK2luZGV4IDE3MjIwZDYuLjFhZjBjMmUgMTAwNjQ0CiAtLS0gYS9zc2gtcGtjczEx
LWhlbHBlci5jCiArKysgYi9zc2gtcGtjczExLWhlbHBlci5jCi1AQCAtMzI1LDYgKzMyNSw3IEBA
IG1haW4oaW50IGFyZ2MsIGNoYXIgKiphcmd2KQorQEAgLTMzMiw2ICszMzIsNyBAQCBtYWluKGlu
dCBhcmdjLCBjaGFyICoqYXJndikKICAJZXh0ZXJuIGNoYXIgKl9fcHJvZ25hbWU7CiAgCXN0cnVj
dCBwb2xsZmQgcGZkWzJdOwogIApAQCAtMTQwLDIyICsxNDAsMjIgQEAgaW5kZXggM2JjYzI0NC4u
NmE3OGExYSAxMDA2NDQKICAJc2VlZF9ybmcoKTsKICAJVEFJTFFfSU5JVCgmYW1wO3BrY3MxMV9r
ZXlsaXN0KTsKIGRpZmYgLS1naXQgYS9zc2guYyBiL3NzaC5jCi1pbmRleCAwNzI0ZGY0Li45MTc4
NjczIDEwMDY0NAoraW5kZXggNDkzMzFmYy4uMDY4MzZkZCAxMDA2NDQKIC0tLSBhL3NzaC5jCiAr
KysgYi9zc2guYwotQEAgLTU5OCw2ICs1OTgsNyBAQCBtYWluKGludCBhYywgY2hhciAqKmF2KQot
IAlzdHJ1Y3Qgc3NoX2RpZ2VzdF9jdHggKm1kOworQEAgLTYwNiw2ICs2MDYsNyBAQCBtYWluKGlu
dCBhYywgY2hhciAqKmF2KQogIAl1X2NoYXIgY29ubl9oYXNoW1NTSF9ESUdFU1RfTUFYX0xFTkdU
SF07CisgCXNpemVfdCBuLCBsZW47CiAgCiArCXNzaF9lbmFibGVfZmlwc19tb2RlKCk7CiAgCS8q
IEVuc3VyZSB0aGF0IGZkcyAwLCAxIGFuZCAyIGFyZSBvcGVuIG9yIGRpcmVjdGVkIHRvIC9kZXYv
bnVsbCAqLwogIAlzYW5pdGlzZV9zdGRmZCgpOwogIAogZGlmZiAtLWdpdCBhL3NzaGQuYyBiL3Nz
aGQuYwotaW5kZXggMmJmODkzOS4uYzc1ZTM0YSAxMDA2NDQKK2luZGV4IGI4NmQ2ODIuLjMwNGJm
MDEgMTAwNjQ0CiAtLS0gYS9zc2hkLmMKICsrKyBiL3NzaGQuYwotQEAgLTE0NDMsNiArMTQ0Myw3
IEBAIG1haW4oaW50IGFjLCBjaGFyICoqYXYpCitAQCAtMTUxNCw2ICsxNTE0LDcgQEAgbWFpbihp
bnQgYWMsIGNoYXIgKiphdikKICAJQXV0aGN0eHQgKmF1dGhjdHh0OwogIAlzdHJ1Y3QgY29ubmVj
dGlvbl9pbmZvICpjb25uZWN0aW9uX2luZm8gPSBOVUxMOwogIApAQCAtMTY0LDcgKzE2NCw3IEBA
IGluZGV4IDJiZjg5MzkuLmM3NWUzNGEgMTAwNjQ0CiAgCSh2b2lkKXNldF9hdXRoX3BhcmFtZXRl
cnMoYWMsIGF2KTsKICAjZW5kaWYKIGRpZmYgLS1naXQgYS94bWFsbG9jLmMgYi94bWFsbG9jLmMK
LWluZGV4IDljZDAxMjcuLmUyZjgxNDUgMTAwNjQ0CitpbmRleCBiNDhkMzNiLi40NTZhMDYzIDEw
MDY0NAogLS0tIGEveG1hbGxvYy5jCiArKysgYi94bWFsbG9jLmMKIEBAIC0yMyw2ICsyMywxMCBA
QApAQCAtMTc4LDkgKzE3OCw5IEBAIGluZGV4IDljZDAxMjcuLmUyZjgxNDUgMTAwNjQ0CiAgI2lu
Y2x1ZGUgIjwvYT54bWFsbG9jLmgiCiAgI2luY2x1ZGUgImxvZy5oIgogIAotQEAgLTExMCwzICsx
MTQsMTkgQEAgeGFzcHJpbnRmKGNoYXIgKipyZXQsIGNvbnN0IGNoYXIgKmZtdCwgLi4uKQotIAot
IAlyZXR1cm4gKGkpOworQEAgLTExNywzICsxMjEsMTkgQEAgeGFzcHJpbnRmKGNoYXIgKipyZXQs
IGNvbnN0IGNoYXIgKmZtdCwgLi4uKQorIAl2YV9lbmQoYXApOworIAlyZXR1cm4gaTsKICB9CiAr
CiArdm9pZApAQCAtMTk5LDEzICsxOTksMTMgQEAgaW5kZXggOWNkMDEyNy4uZTJmODE0NSAxMDA2
NDQKICsgICAgfQogK30KIGRpZmYgLS1naXQgYS94bWFsbG9jLmggYi94bWFsbG9jLmgKLWluZGV4
IDFkNWY2MmQuLmQ3MWI4YTggMTAwNjQ0CitpbmRleCBhYmFmN2FkLi5iM2IxYzhjIDEwMDY0NAog
LS0tIGEveG1hbGxvYy5oCiArKysgYi94bWFsbG9jLmgKLUBAIC0yNCwzICsyNCw0IEBAIGNoYXIJ
KnhzdHJkdXAoY29uc3QgY2hhciAqKTsKLSBpbnQJIHhhc3ByaW50ZihjaGFyICoqLCBjb25zdCBj
aGFyICosIC4uLikKLSAgICAgICAgICAgICAgICAgX19hdHRyaWJ1dGVfXygoX19mb3JtYXRfXyAo
cHJpbnRmLCAyLCAzKSkpCitAQCAtMjYsMyArMjYsNCBAQCBpbnQJIHhhc3ByaW50ZihjaGFyICoq
LCBjb25zdCBjaGFyICosIC4uLikKICAgICAgICAgICAgICAgICAgX19hdHRyaWJ1dGVfXygoX19u
b25udWxsX18gKDIpKSk7CisgaW50CSB4dmFzcHJpbnRmKGNoYXIgKiosIGNvbnN0IGNoYXIgKiwg
dmFfbGlzdCkKKyAJCV9fYXR0cmlidXRlX18oKF9fbm9ubnVsbF9fICgyKSkpOwogK3ZvaWQJc3No
X2VuYWJsZV9maXBzX21vZGUodm9pZCk7CiAtLSAKIDIuNy40CmRpZmYgLS1naXQgYS9yZWNpcGVz
LWNvbm5lY3Rpdml0eS9vcGVuc3NoL29wZW5zc2gvMDAwMS1vcGVuc3NoLTguMHAxLWZpcHMucGF0
Y2ggYi9yZWNpcGVzLWNvbm5lY3Rpdml0eS9vcGVuc3NoL29wZW5zc2gvMDAwMS1vcGVuc3NoLTgu
MnAxLWZpcHMucGF0Y2gKc2ltaWxhcml0eSBpbmRleCA1NyUKcmVuYW1lIGZyb20gcmVjaXBlcy1j
b25uZWN0aXZpdHkvb3BlbnNzaC9vcGVuc3NoLzAwMDEtb3BlbnNzaC04LjBwMS1maXBzLnBhdGNo
CnJlbmFtZSB0byByZWNpcGVzLWNvbm5lY3Rpdml0eS9vcGVuc3NoL29wZW5zc2gvMDAwMS1vcGVu
c3NoLTguMnAxLWZpcHMucGF0Y2gKaW5kZXggMGUzNWUzMS4uYzFkZTEzMCAxMDA2NDQKLS0tIGEv
cmVjaXBlcy1jb25uZWN0aXZpdHkvb3BlbnNzaC9vcGVuc3NoLzAwMDEtb3BlbnNzaC04LjBwMS1m
aXBzLnBhdGNoCisrKyBiL3JlY2lwZXMtY29ubmVjdGl2aXR5L29wZW5zc2gvb3BlbnNzaC8wMDAx
LW9wZW5zc2gtOC4ycDEtZmlwcy5wYXRjaApAQCAtMSw3ICsxLDcgQEAKLUZyb20gNTExZjVkZmIz
ZTIyZDMwYTdkNTczMzEzZmE4OGEwNjNmMWQ0OTc1MyBNb24gU2VwIDE3IDAwOjAwOjAwIDIwMDEK
K0Zyb20gYzUxZGQ0NGUxYzU5NGRkZWIzYTI3YWU1ZDliZTI4OTllNGJmMmFjNiBNb24gU2VwIDE3
IDAwOjAwOjAwIDIwMDEKIEZyb206IEhvbmd4dSBKaWEgPGEgY2xhc3M9Im1vei10eHQtbGluay1y
ZmMyMzk2RSIgaHJlZj0ibWFpbHRvOmhvbmd4dS5qaWFAd2luZHJpdmVyLmNvbSI+Jmx0O2hvbmd4
dS5qaWFAd2luZHJpdmVyLmNvbSZndDs8L2E+CiBEYXRlOiBTYXQsIDIxIERlYyAyMDE5IDExOjQ1
OjM4ICswODAwCi1TdWJqZWN0OiBbUEFUQ0hdIG9wZW5zc2ggOC4wcDEgZmlwcworU3ViamVjdDog
W1BBVENIXSBvcGVuc3NoIDguMnAxIGZpcHMKIAogUG9ydCBvcGVuc3NoLTcuN3AxLWZpcHMucGF0
Y2ggZnJvbSBGZWRvcmEKIDxhIGNsYXNzPSJtb3otdHh0LWxpbmstZnJlZXRleHQiIGhyZWY9Imh0
dHBzOi8vc3JjLmZlZG9yYXByb2plY3Qub3JnL3JwbXMvb3BlbnNzaC5naXQiPmh0dHBzOi8vc3Jj
LmZlZG9yYXByb2plY3Qub3JnL3JwbXMvb3BlbnNzaC5naXQ8L2E+CkBAIC0xMCwzMCArMTAsMzMg
QEAgPGEgY2xhc3M9Im1vei10eHQtbGluay1mcmVldGV4dCIgaHJlZj0iaHR0cHM6Ly9zcmMuZmVk
b3JhcHJvamVjdC5vcmcvcnBtcy9vcGVuc3NoLmdpdCI+aHR0cHM6Ly9zcmMuZmVkb3JhcHJvamVj
dC5vcmcvcnBtcy9vcGVuc3NoLmdpdDwvYT4KIFVwc3RyZWFtLVN0YXR1czogSW5hcHByb3ByaWF0
ZSBbb2Ugc3BlY2lmaWNdCiAKIFNpZ25lZC1vZmYtYnk6IEhvbmd4dSBKaWEgPGEgY2xhc3M9Im1v
ei10eHQtbGluay1yZmMyMzk2RSIgaHJlZj0ibWFpbHRvOmhvbmd4dS5qaWFAd2luZHJpdmVyLmNv
bSI+Jmx0O2hvbmd4dS5qaWFAd2luZHJpdmVyLmNvbSZndDs8L2E+CisKK1JlYmFzZSB0byA4LjJw
MQorU2lnbmVkLW9mZi1ieTogWWkgWmhhbyA8YSBjbGFzcz0ibW96LXR4dC1saW5rLXJmYzIzOTZF
IiBocmVmPSJtYWlsdG86eWkuemhhb0B3aW5kcml2ZXIuY29tIj4mbHQ7eWkuemhhb0B3aW5kcml2
ZXIuY29tJmd0OzwvYT4KIC0tLQogIE1ha2VmaWxlLmluICAgICAgICAgICAgICB8IDE0ICsrKysr
KystLS0tLS0tCiAgY2lwaGVyLWN0ci5jICAgICAgICAgICAgIHwgIDMgKystCi0gY2xpZW50bG9v
cC5jICAgICAgICAgICAgIHwgIDMgKystCisgY2xpZW50bG9vcC5jICAgICAgICAgICAgIHwgIDIg
Ky0KICBkaC5jICAgICAgICAgICAgICAgICAgICAgfCA0MCArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrCiAgZGguaCAgICAgICAgICAgICAgICAgICAgIHwgIDEgKwogIGtl
eC5jICAgICAgICAgICAgICAgICAgICB8ICA1ICsrKystCiAga2V4Z2V4Yy5jICAgICAgICAgICAg
ICAgIHwgIDUgKysrKysKLSBteXByb3Bvc2FsLmggICAgICAgICAgICAgfCA0MCArKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCi0gcmVhZGNvbmYuYyAgICAgICAgICAgICAg
IHwgMTcgKysrKysrKysrLS0tLS0tLS0KKyBteXByb3Bvc2FsLmggICAgICAgICAgICAgfCAzNSAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKworIHJlYWRjb25mLmMgICAgICAgICAg
ICAgICB8IDE1ICsrKysrKysrKystLS0tLQogIHNhbmRib3gtc2VjY29tcC1maWx0ZXIuYyB8ICAz
ICsrKwotIHNlcnZjb25mLmMgICAgICAgICAgICAgICB8IDE5ICsrKysrKysrKystLS0tLS0tLS0K
LSBzc2gta2V5Z2VuLmMgICAgICAgICAgICAgfCAxNyArKysrKysrKysrKysrKysrLQorIHNlcnZj
b25mLmMgICAgICAgICAgICAgICB8IDE1ICsrKysrKysrKystLS0tLQorIHNzaC1rZXlnZW4uYyAg
ICAgICAgICAgICB8IDE2ICsrKysrKysrKysrKysrKy0KICBzc2guYyAgICAgICAgICAgICAgICAg
ICAgfCAxNiArKysrKysrKysrKysrKysrCi0gc3NoY29ubmVjdDIuYyAgICAgICAgICAgIHwgMTEg
KysrKysrKystLS0KKyBzc2hjb25uZWN0Mi5jICAgICAgICAgICAgfCAgOCArKysrKystLQogIHNz
aGQuYyAgICAgICAgICAgICAgICAgICB8IDE5ICsrKysrKysrKysrKysrKysrKysKICBzc2hrZXku
YyAgICAgICAgICAgICAgICAgfCAgNCArKysrCi0gMTYgZmlsZXMgY2hhbmdlZCwgMTg2IGluc2Vy
dGlvbnMoKyksIDMxIGRlbGV0aW9ucygtKQorIDE2IGZpbGVzIGNoYW5nZWQsIDE3OCBpbnNlcnRp
b25zKCspLCAyMyBkZWxldGlvbnMoLSkKIAogZGlmZiAtLWdpdCBhL01ha2VmaWxlLmluIGIvTWFr
ZWZpbGUuaW4KLWluZGV4IGFkYjE5NzcuLjM3YWVjNjkgMTAwNjQ0CitpbmRleCBlNzU0OTQ3Li41
N2Y5NGY0IDEwMDY0NAogLS0tIGEvTWFrZWZpbGUuaW4KICsrKyBiL01ha2VmaWxlLmluCi1AQCAt
MTc1LDMxICsxNzUsMzEgQEAgbGlic3NoLmE6ICQoTElCU1NIX09CSlMpCitAQCAtMjA2LDI1ICsy
MDYsMjUgQEAgbGlic3NoLmE6ICQoTElCU1NIX09CSlMpCiAgCSQoUkFOTElCKSAkQAogIAogIHNz
aCQoRVhFRVhUKTogJChMSUJDT01QQVQpIGxpYnNzaC5hICQoU1NIT0JKUykKQEAgLTQ0LDM0ICs0
NywzNiBAQCBpbmRleCBhZGIxOTc3Li4zN2FlYzY5IDEwMDY0NAogLQkkKExEKSAtbyAkQCAkKFNT
SERPQkpTKSAkKExERkxBR1MpIC1sc3NoIC1sb3BlbmJzZC1jb21wYXQgJChTU0hETElCUykgJChM
SUJTKSAkKEdTU0xJQlMpICQoSzVMSUJTKQogKwkkKExEKSAtbyAkQCAkKFNTSERPQkpTKSAkKExE
RkxBR1MpIC1sc3NoIC1sb3BlbmJzZC1jb21wYXQgLWxmaXBzY2hlY2sgJChTU0hETElCUykgJChM
SUJTKSAkKEdTU0xJQlMpICQoSzVMSUJTKQogIAotIHNjcCQoRVhFRVhUKTogJChMSUJDT01QQVQp
IGxpYnNzaC5hIHNjcC5vIHByb2dyZXNzbWV0ZXIubwotIAkkKExEKSAtbyAkQCBzY3AubyBwcm9n
cmVzc21ldGVyLm8gJChMREZMQUdTKSAtbHNzaCAtbG9wZW5ic2QtY29tcGF0ICQoTElCUykKKyBz
Y3AkKEVYRUVYVCk6ICQoTElCQ09NUEFUKSBsaWJzc2guYSAkKFNDUF9PQkpTKQorIAkkKExEKSAt
byAkQCAkKFNDUF9PQkpTKSAkKExERkxBR1MpIC1sc3NoIC1sb3BlbmJzZC1jb21wYXQgJChMSUJT
KQogIAotIHNzaC1hZGQkKEVYRUVYVCk6ICQoTElCQ09NUEFUKSBsaWJzc2guYSBzc2gtYWRkLm8K
LS0JJChMRCkgLW8gJEAgc3NoLWFkZC5vICQoTERGTEFHUykgLWxzc2ggLWxvcGVuYnNkLWNvbXBh
dCAkKExJQlMpCi0rCSQoTEQpIC1vICRAIHNzaC1hZGQubyAkKExERkxBR1MpIC1sc3NoIC1sb3Bl
bmJzZC1jb21wYXQgLWxmaXBzY2hlY2sgJChMSUJTKQorIHNzaC1hZGQkKEVYRUVYVCk6ICQoTElC
Q09NUEFUKSBsaWJzc2guYSAkKFNTSEFERF9PQkpTKQorLQkkKExEKSAtbyAkQCAkKFNTSEFERF9P
QkpTKSAkKExERkxBR1MpIC1sc3NoIC1sb3BlbmJzZC1jb21wYXQgJChMSUJTKQorKwkkKExEKSAt
byAkQCAkKFNTSEFERF9PQkpTKSAkKExERkxBR1MpIC1sc3NoIC1sb3BlbmJzZC1jb21wYXQgLWxm
aXBzY2hlY2sgJChMSUJTKQogIAotIHNzaC1hZ2VudCQoRVhFRVhUKTogJChMSUJDT01QQVQpIGxp
YnNzaC5hIHNzaC1hZ2VudC5vIHNzaC1wa2NzMTEtY2xpZW50Lm8KLS0JJChMRCkgLW8gJEAgc3No
LWFnZW50Lm8gc3NoLXBrY3MxMS1jbGllbnQubyAkKExERkxBR1MpIC1sc3NoIC1sb3BlbmJzZC1j
b21wYXQgJChMSUJTKQotKwkkKExEKSAtbyAkQCBzc2gtYWdlbnQubyBzc2gtcGtjczExLWNsaWVu
dC5vICQoTERGTEFHUykgLWxzc2ggLWxvcGVuYnNkLWNvbXBhdCAtbGZpcHNjaGVjayAkKExJQlMp
Cisgc3NoLWFnZW50JChFWEVFWFQpOiAkKExJQkNPTVBBVCkgbGlic3NoLmEgJChTU0hBR0VOVF9P
QkpTKQorLQkkKExEKSAtbyAkQCAkKFNTSEFHRU5UX09CSlMpICQoTERGTEFHUykgLWxzc2ggLWxv
cGVuYnNkLWNvbXBhdCAkKExJQlMpCisrCSQoTEQpIC1vICRAICQoU1NIQUdFTlRfT0JKUykgJChM
REZMQUdTKSAtbHNzaCAtbG9wZW5ic2QtY29tcGF0IC1sZmlwc2NoZWNrICQoTElCUykKICAKLSBz
c2gta2V5Z2VuJChFWEVFWFQpOiAkKExJQkNPTVBBVCkgbGlic3NoLmEgc3NoLWtleWdlbi5vIHNz
aHNpZy5vCi0tCSQoTEQpIC1vICRAIHNzaC1rZXlnZW4ubyBzc2hzaWcubyAkKExERkxBR1MpIC1s
c3NoIC1sb3BlbmJzZC1jb21wYXQgJChMSUJTKQotKwkkKExEKSAtbyAkQCBzc2gta2V5Z2VuLm8g
c3Noc2lnLm8gJChMREZMQUdTKSAtbHNzaCAtbG9wZW5ic2QtY29tcGF0IC1sZmlwc2NoZWNrICQo
TElCUykKKyBzc2gta2V5Z2VuJChFWEVFWFQpOiAkKExJQkNPTVBBVCkgbGlic3NoLmEgJChTU0hL
RVlHRU5fT0JKUykKKy0JJChMRCkgLW8gJEAgJChTU0hLRVlHRU5fT0JKUykgJChMREZMQUdTKSAt
bHNzaCAtbG9wZW5ic2QtY29tcGF0ICQoTElCUykKKysJJChMRCkgLW8gJEAgJChTU0hLRVlHRU5f
T0JKUykgJChMREZMQUdTKSAtbHNzaCAtbG9wZW5ic2QtY29tcGF0IC1sZmlwc2NoZWNrICQoTElC
UykKICAKLSBzc2gta2V5c2lnbiQoRVhFRVhUKTogJChMSUJDT01QQVQpIGxpYnNzaC5hIHNzaC1r
ZXlzaWduLm8gcmVhZGNvbmYubyB1aWRzd2FwLm8gY29tcGF0Lm8KLS0JJChMRCkgLW8gJEAgc3No
LWtleXNpZ24ubyByZWFkY29uZi5vIHVpZHN3YXAubyAkKExERkxBR1MpIC1sc3NoIC1sb3BlbmJz
ZC1jb21wYXQgJChMSUJTKQotKwkkKExEKSAtbyAkQCBzc2gta2V5c2lnbi5vIHJlYWRjb25mLm8g
dWlkc3dhcC5vICQoTERGTEFHUykgLWxzc2ggLWxvcGVuYnNkLWNvbXBhdCAtbGZpcHNjaGVjayAk
KExJQlMpCisgc3NoLWtleXNpZ24kKEVYRUVYVCk6ICQoTElCQ09NUEFUKSBsaWJzc2guYSAkKFNT
SEtFWVNJR05fT0JKUykKKy0JJChMRCkgLW8gJEAgJChTU0hLRVlTSUdOX09CSlMpICQoTERGTEFH
UykgLWxzc2ggLWxvcGVuYnNkLWNvbXBhdCAkKExJQlMpCisrCSQoTEQpIC1vICRAICQoU1NIS0VZ
U0lHTl9PQkpTKSAkKExERkxBR1MpIC1sc3NoIC1sb3BlbmJzZC1jb21wYXQgLWxmaXBzY2hlY2sg
JChMSUJTKQogIAotIHNzaC1wa2NzMTEtaGVscGVyJChFWEVFWFQpOiAkKExJQkNPTVBBVCkgbGli
c3NoLmEgc3NoLXBrY3MxMS1oZWxwZXIubyBzc2gtcGtjczExLm8KLSAJJChMRCkgLW8gJEAgc3No
LXBrY3MxMS1oZWxwZXIubyBzc2gtcGtjczExLm8gJChMREZMQUdTKSAtbHNzaCAtbG9wZW5ic2Qt
Y29tcGF0IC1sc3NoIC1sb3BlbmJzZC1jb21wYXQgJChMSUJTKQorIHNzaC1wa2NzMTEtaGVscGVy
JChFWEVFWFQpOiAkKExJQkNPTVBBVCkgbGlic3NoLmEgJChQMTFIRUxQRVJfT0JKUykKKyAJJChM
RCkgLW8gJEAgJChQMTFIRUxQRVJfT0JKUykgJChMREZMQUdTKSAtbHNzaCAtbG9wZW5ic2QtY29t
cGF0IC1sc3NoIC1sb3BlbmJzZC1jb21wYXQgJChMSUJTKQorQEAgLTIzMyw3ICsyMzMsNyBAQCBz
c2gtc2staGVscGVyJChFWEVFWFQpOiAkKExJQkNPTVBBVCkgbGlic3NoLmEgJChTS0hFTFBFUl9P
QkpTKQorIAkkKExEKSAtbyAkQCAkKFNLSEVMUEVSX09CSlMpICQoTERGTEFHUykgLWxzc2ggLWxv
cGVuYnNkLWNvbXBhdCAtbHNzaCAtbG9wZW5ic2QtY29tcGF0ICQoTElCUykgJChMSUJGSURPMikK
ICAKLSBzc2gta2V5c2NhbiQoRVhFRVhUKTogJChMSUJDT01QQVQpIGxpYnNzaC5hIHNzaC1rZXlz
Y2FuLm8KLS0JJChMRCkgLW8gJEAgc3NoLWtleXNjYW4ubyAkKExERkxBR1MpIC1sc3NoIC1sb3Bl
bmJzZC1jb21wYXQgLWxzc2ggJChMSUJTKQotKwkkKExEKSAtbyAkQCBzc2gta2V5c2Nhbi5vICQo
TERGTEFHUykgLWxzc2ggLWxvcGVuYnNkLWNvbXBhdCAtbGZpcHNjaGVjayAtbHNzaCAkKExJQlMp
Cisgc3NoLWtleXNjYW4kKEVYRUVYVCk6ICQoTElCQ09NUEFUKSBsaWJzc2guYSAkKFNTSEtFWVND
QU5fT0JKUykKKy0JJChMRCkgLW8gJEAgJChTU0hLRVlTQ0FOX09CSlMpICQoTERGTEFHUykgLWxz
c2ggLWxvcGVuYnNkLWNvbXBhdCAtbHNzaCAkKExJQlMpCisrCSQoTEQpIC1vICRAICQoU1NIS0VZ
U0NBTl9PQkpTKSAkKExERkxBR1MpIC1sc3NoIC1sb3BlbmJzZC1jb21wYXQgLWxzc2ggLWxmaXBz
Y2hlY2sgJChMSUJTKQogIAotIHNmdHAtc2VydmVyJChFWEVFWFQpOiAkKExJQkNPTVBBVCkgbGli
c3NoLmEgc2Z0cC5vIHNmdHAtY29tbW9uLm8gc2Z0cC1zZXJ2ZXIubyBzZnRwLXJlYWxwYXRoLm8g
c2Z0cC1zZXJ2ZXItbWFpbi5vCi0gCSQoTEQpIC1vICRAIHNmdHAtc2VydmVyLm8gc2Z0cC1jb21t
b24ubyBzZnRwLXJlYWxwYXRoLm8gc2Z0cC1zZXJ2ZXItbWFpbi5vICQoTERGTEFHUykgLWxzc2gg
LWxvcGVuYnNkLWNvbXBhdCAkKExJQlMpCisgc2Z0cC1zZXJ2ZXIkKEVYRUVYVCk6ICQoTElCQ09N
UEFUKSBsaWJzc2guYSAkKFNGVFBTRVJWRVJfT0JKUykKKyAJJChMRCkgLW8gJEAgJChTRlRQU0VS
VkVSX09CSlMpICQoTERGTEFHUykgLWxzc2ggLWxvcGVuYnNkLWNvbXBhdCAkKExJQlMpCiBkaWZm
IC0tZ2l0IGEvY2lwaGVyLWN0ci5jIGIvY2lwaGVyLWN0ci5jCiBpbmRleCAzMjc3MWYyLi43NGZh
YzNiIDEwMDY0NAogLS0tIGEvY2lwaGVyLWN0ci5jCkBAIC04NywxNiArOTIsMTUgQEAgaW5kZXgg
MzI3NzFmMi4uNzRmYWMzYiAxMDA2NDQKICAJcmV0dXJuICgmYW1wO2Flc19jdHIpOwogIH0KIGRp
ZmYgLS1naXQgYS9jbGllbnRsb29wLmMgYi9jbGllbnRsb29wLmMKLWluZGV4IGI1YTFmNzAuLjBi
Njc1ZmUgMTAwNjQ0CitpbmRleCBlYmQwZGJjLi5iM2UwYzE5IDEwMDY0NAogLS0tIGEvY2xpZW50
bG9vcC5jCiArKysgYi9jbGllbnRsb29wLmMKLUBAIC0yMDM1LDcgKzIwMzUsOCBAQCBrZXlfYWNj
ZXB0ZWRfYnlfaG9zdGtleWFsZ3MoY29uc3Qgc3RydWN0IHNzaGtleSAqa2V5KQorQEAgLTIwODMs
NyArMjA4Myw3IEBAIHN0YXRpYyBpbnQKKyBrZXlfYWNjZXB0ZWRfYnlfaG9zdGtleWFsZ3MoY29u
c3Qgc3RydWN0IHNzaGtleSAqa2V5KQogIHsKICAJY29uc3QgY2hhciAqa3R5cGUgPSBzc2hrZXlf
c3NoX25hbWUoa2V5KTsKLSAJY29uc3QgY2hhciAqaG9zdGtleWFsZ3MgPSBvcHRpb25zLmhvc3Rr
ZXlhbGdvcml0aG1zICE9IE5VTEwgPwotLQkgICAgb3B0aW9ucy5ob3N0a2V5YWxnb3JpdGhtcyA6
IEtFWF9ERUZBVUxUX1BLX0FMRzsKLSsJICAgIG9wdGlvbnMuaG9zdGtleWFsZ29yaXRobXMgOiAo
RklQU19tb2RlKCkgPwotKwkgICAgS0VYX0ZJUFNfUEtfQUxHIDogS0VYX0RFRkFVTFRfUEtfQUxH
KTsKKy0JY29uc3QgY2hhciAqaG9zdGtleWFsZ3MgPSBvcHRpb25zLmhvc3RrZXlhbGdvcml0aG1z
OworKwljb25zdCBjaGFyICpob3N0a2V5YWxncyA9IChGSVBTX21vZGUoKSA/IEtFWF9GSVBTX1BL
X0FMRyA6IG9wdGlvbnMuaG9zdGtleWFsZ29yaXRobXMpOwogIAogIAlpZiAoa2V5ID09IE5VTEwg
fHwga2V5LSZndDt0eXBlID09IEtFWV9VTlNQRUMpCiAgCQlyZXR1cm4gMDsKQEAgLTE2OSwxMCAr
MTczLDEwIEBAIGluZGV4IDVkNmRmNjIuLjU0YzdhYTIgMTAwNjQ0CiAgdV9pbnQJIGRoX2VzdGlt
YXRlKGludCk7CiAgCiBkaWZmIC0tZ2l0IGEva2V4LmMgYi9rZXguYwotaW5kZXggNDlkNzAxNS4u
ZjFmOTgyZCAxMDA2NDQKK2luZGV4IGNlODVmMDQuLjljYzE0ZGUgMTAwNjQ0CiAtLS0gYS9rZXgu
YwogKysrIGIva2V4LmMKLUBAIC0xNjEsNyArMTYxLDEwIEBAIGtleF9uYW1lc192YWxpZChjb25z
dCBjaGFyICpuYW1lcykKK0BAIC0xNjMsNyArMTYzLDEwIEBAIGtleF9uYW1lc192YWxpZChjb25z
dCBjaGFyICpuYW1lcykKICAJZm9yICgocCA9IHN0cnNlcCgmYW1wO2NwLCAiLCIpKTsgcCAmYW1w
OyZhbXA7ICpwICE9ICdcMCc7CiAgCSAgICAocCA9IHN0cnNlcCgmYW1wO2NwLCAiLCIpKSkgewog
IAkJaWYgKGtleF9hbGdfYnlfbmFtZShwKSA9PSBOVUxMKSB7CkBAIC0xODUsNyArMTg5LDcgQEAg
aW5kZXggNDlkNzAxNS4uZjFmOTgyZCAxMDA2NDQKICAJCQlyZXR1cm4gMDsKICAJCX0KIGRpZmYg
LS1naXQgYS9rZXhnZXhjLmMgYi9rZXhnZXhjLmMKLWluZGV4IDFjNjViOGEuLmI2YjI1YmYgMTAw
NjQ0CitpbmRleCAzMjNhNjU5Li44MTIxMTJkIDEwMDY0NAogLS0tIGEva2V4Z2V4Yy5jCiArKysg
Yi9rZXhnZXhjLmMKIEBAIC0yOCw2ICsyOCw3IEBACkBAIC0yMDgsOTcgKzIxMiw4NiBAQCBpbmRl
eCAxYzY1YjhhLi5iNmIyNWJmIDEwMDY0NAogIAogIAkvKiBnZW5lcmF0ZSBhbmQgc2VuZCAnZScs
IGNsaWVudCBESCBwdWJsaWMga2V5ICovCiBkaWZmIC0tZ2l0IGEvbXlwcm9wb3NhbC5oIGIvbXlw
cm9wb3NhbC5oCi1pbmRleCAzNGJkMTBjLi5hM2FlNzRiIDEwMDY0NAoraW5kZXggNTMxMmU2MC4u
ZDBhY2NhZSAxMDA2NDQKIC0tLSBhL215cHJvcG9zYWwuaAogKysrIGIvbXlwcm9wb3NhbC5oCi1A
QCAtMTExLDYgKzExMSwxNCBAQAorQEAgLTU3LDYgKzU3LDIwIEBACiAgCSJyc2Etc2hhMi0yNTYs
IiBcCiAgCSJzc2gtcnNhIgogIAogKyNkZWZpbmUJS0VYX0ZJUFNfUEtfQUxHCVwKLSsJSE9TVEtF
WV9FQ0RTQV9DRVJUX01FVEhPRFMgXAorKwk8YSBjbGFzcz0ibW96LXR4dC1saW5rLXJmYzIzOTZF
IiBocmVmPSJtYWlsdG86ZWNkc2Etc2hhMi1uaXN0cDI1Ni1jZXJ0LXYwMUBvcGVuc3NoLmNvbSwi
PiJlY2RzYS1zaGEyLW5pc3RwMjU2LWNlcnQtdjAxQG9wZW5zc2guY29tLCI8L2E+IFwKKysJPGEg
Y2xhc3M9Im1vei10eHQtbGluay1yZmMyMzk2RSIgaHJlZj0ibWFpbHRvOmVjZHNhLXNoYTItbmlz
dHAzODQtY2VydC12MDFAb3BlbnNzaC5jb20sIj4iZWNkc2Etc2hhMi1uaXN0cDM4NC1jZXJ0LXYw
MUBvcGVuc3NoLmNvbSwiPC9hPiBcCisrCTxhIGNsYXNzPSJtb3otdHh0LWxpbmstcmZjMjM5NkUi
IGhyZWY9Im1haWx0bzplY2RzYS1zaGEyLW5pc3RwNTIxLWNlcnQtdjAxQG9wZW5zc2guY29tLCI+
ImVjZHNhLXNoYTItbmlzdHA1MjEtY2VydC12MDFAb3BlbnNzaC5jb20sIjwvYT4gXAorKwk8YSBj
bGFzcz0ibW96LXR4dC1saW5rLXJmYzIzOTZFIiBocmVmPSJtYWlsdG86cnNhLXNoYTItNTEyLWNl
cnQtdjAxQG9wZW5zc2guY29tLCI+InJzYS1zaGEyLTUxMi1jZXJ0LXYwMUBvcGVuc3NoLmNvbSwi
PC9hPiBcCisrCTxhIGNsYXNzPSJtb3otdHh0LWxpbmstcmZjMjM5NkUiIGhyZWY9Im1haWx0bzpy
c2Etc2hhMi0yNTYtY2VydC12MDFAb3BlbnNzaC5jb20sIj4icnNhLXNoYTItMjU2LWNlcnQtdjAx
QG9wZW5zc2guY29tLCI8L2E+IFwKICsJPGEgY2xhc3M9Im1vei10eHQtbGluay1yZmMyMzk2RSIg
aHJlZj0ibWFpbHRvOnNzaC1yc2EtY2VydC12MDFAb3BlbnNzaC5jb20sIj4ic3NoLXJzYS1jZXJ0
LXYwMUBvcGVuc3NoLmNvbSwiPC9hPiBcCi0rCUhPU1RLRVlfRUNEU0FfTUVUSE9EUyBcCisrCSJl
Y2RzYS1zaGEyLW5pc3RwMjU2LCIgXAorKwkiZWNkc2Etc2hhMi1uaXN0cDM4NCwiIFwKKysJImVj
ZHNhLXNoYTItbmlzdHA1MjEsIiBcCiArCSJyc2Etc2hhMi01MTIsIiBcCiArCSJyc2Etc2hhMi0y
NTYsIiBcCiArCSJzc2gtcnNhIgogKwotIC8qIHRoZSBhY3R1YWwgYWxnb3JpdGhtcyAqLwotIAot
ICNkZWZpbmUgS0VYX1NFUlZFUl9FTkNSWVBUIFwKLUBAIC0xMzQsNiArMTQyLDM4IEBACisgI2Rl
ZmluZQlLRVhfU0VSVkVSX0VOQ1JZUFQgXAorIAk8YSBjbGFzcz0ibW96LXR4dC1saW5rLXJmYzIz
OTZFIiBocmVmPSJtYWlsdG86Y2hhY2hhMjAtcG9seTEzMDVAb3BlbnNzaC5jb20sIj4iY2hhY2hh
MjAtcG9seTEzMDVAb3BlbnNzaC5jb20sIjwvYT4gXAorIAkiYWVzMTI4LWN0cixhZXMxOTItY3Ry
LGFlczI1Ni1jdHIsIiBcCitAQCAtNzgsNiArOTIsMjcgQEAKICAKICAjZGVmaW5lIEtFWF9DTElF
TlRfTUFDIEtFWF9TRVJWRVJfTUFDCiAgCiArI2RlZmluZQlLRVhfRklQU19FTkNSWVBUIFwKICsJ
ImFlczEyOC1jdHIsYWVzMTkyLWN0cixhZXMyNTYtY3RyLCIgXAogKwkiYWVzMTI4LWNiYywzZGVz
LWNiYywiIFwKLSsJPGEgY2xhc3M9Im1vei10eHQtbGluay1yZmMyMzk2RSIgaHJlZj0ibWFpbHRv
OmFlczE5Mi1jYmMsYWVzMjU2LWNiYyxyaWpuZGFlbC1jYmNAbHlzYXRvci5saXUuc2UiPiJhZXMx
OTItY2JjLGFlczI1Ni1jYmMscmlqbmRhZWwtY2JjQGx5c2F0b3IubGl1LnNlIjwvYT4gXAotKwlB
RVNHQ01fQ0lQSEVSX01PREVTCi0rI2lmZGVmIEhBVkVfRVZQX1NIQTI1NgotKyMgZGVmaW5lIEtF
WF9ERUZBVUxUX0tFWF9GSVBTCQlcCi0rCUtFWF9FQ0RIX01FVEhPRFMgXAotKwlLRVhfU0hBMl9N
RVRIT0RTIFwKKysJPGEgY2xhc3M9Im1vei10eHQtbGluay1yZmMyMzk2RSIgaHJlZj0ibWFpbHRv
OmFlczE5Mi1jYmMsYWVzMjU2LWNiYyxyaWpuZGFlbC1jYmNAbHlzYXRvci5saXUuc2UsIj4iYWVz
MTkyLWNiYyxhZXMyNTYtY2JjLHJpam5kYWVsLWNiY0BseXNhdG9yLmxpdS5zZSwiPC9hPiBcCisr
CTxhIGNsYXNzPSJtb3otdHh0LWxpbmstcmZjMjM5NkUiIGhyZWY9Im1haWx0bzphZXMxMjgtZ2Nt
QG9wZW5zc2guY29tLGFlczI1Ni1nY21Ab3BlbnNzaC5jb20iPiJhZXMxMjgtZ2NtQG9wZW5zc2gu
Y29tLGFlczI1Ni1nY21Ab3BlbnNzaC5jb20iPC9hPgorKyNkZWZpbmUgS0VYX0RFRkFVTFRfS0VY
X0ZJUFMJCVwKKysJImVjZGgtc2hhMi1uaXN0cDI1NiwiIFwKKysJImVjZGgtc2hhMi1uaXN0cDM4
NCwiIFwKKysJImVjZGgtc2hhMi1uaXN0cDUyMSwiIFwKKysJImRpZmZpZS1oZWxsbWFuLWdyb3Vw
LWV4Y2hhbmdlLXNoYTI1NiwiIFwKKysJImRpZmZpZS1oZWxsbWFuLWdyb3VwMTYtc2hhNTEyLCIg
XAorKwkiZGlmZmllLWhlbGxtYW4tZ3JvdXAxOC1zaGE1MTIsIiBcCiArCSJkaWZmaWUtaGVsbG1h
bi1ncm91cDE0LXNoYTI1NiIKLSsjIGRlZmluZSBLRVhfRklQU19NQUMgXAorKyNkZWZpbmUgS0VY
X0ZJUFNfTUFDIFwKICsJImhtYWMtc2hhMSwiIFwKICsJImhtYWMtc2hhMi0yNTYsIiBcCiArCSJo
bWFjLXNoYTItNTEyLCIgXAogKwk8YSBjbGFzcz0ibW96LXR4dC1saW5rLXJmYzIzOTZFIiBocmVm
PSJtYWlsdG86aG1hYy1zaGExLWV0bUBvcGVuc3NoLmNvbSwiPiJobWFjLXNoYTEtZXRtQG9wZW5z
c2guY29tLCI8L2E+IFwKICsJPGEgY2xhc3M9Im1vei10eHQtbGluay1yZmMyMzk2RSIgaHJlZj0i
bWFpbHRvOmhtYWMtc2hhMi0yNTYtZXRtQG9wZW5zc2guY29tLCI+ImhtYWMtc2hhMi0yNTYtZXRt
QG9wZW5zc2guY29tLCI8L2E+IFwKICsJPGEgY2xhc3M9Im1vei10eHQtbGluay1yZmMyMzk2RSIg
aHJlZj0ibWFpbHRvOmhtYWMtc2hhMi01MTItZXRtQG9wZW5zc2guY29tIj4iaG1hYy1zaGEyLTUx
Mi1ldG1Ab3BlbnNzaC5jb20iPC9hPgotKyNlbHNlCi0rIyBpZmRlZiBPUEVOU1NMX0hBU19OSVNU
UDUyMQotKyMgIGRlZmluZSBLRVhfREVGQVVMVF9LRVhfRklQUwkJXAotKwkiZWNkaC1zaGEyLW5p
c3RwMjU2LCIgXAotKwkiZWNkaC1zaGEyLW5pc3RwMzg0LCIgXAotKwkiZWNkaC1zaGEyLW5pc3Rw
NTIxIgotKyMgZWxzZQotKyMgIGRlZmluZSBLRVhfREVGQVVMVF9LRVhfRklQUwkJXAotKwkiZWNk
aC1zaGEyLW5pc3RwMjU2LCIgXAotKwkiZWNkaC1zaGEyLW5pc3RwMzg0IgotKyMgZW5kaWYKLSsj
ZGVmaW5lICAgICAgICBLRVhfRklQU19NQUMgXAotKyAgICAgICAiaG1hYy1zaGExIgotKyNlbmRp
ZgogKwogIC8qIE5vdCBhIEtFWCB2YWx1ZSwgYnV0IGhlcmUgc28gYWxsIHRoZSBhbGdvcml0aG0g
ZGVmYXVsdHMgYXJlIHRvZ2V0aGVyICovCiAgI2RlZmluZQlTU0hfQUxMT1dFRF9DQV9TSUdBTEdT
CVwKLSAJSE9TVEtFWV9FQ0RTQV9NRVRIT0RTIFwKKyAJImVjZHNhLXNoYTItbmlzdHAyNTYsIiBc
CiBkaWZmIC0tZ2l0IGEvcmVhZGNvbmYuYyBiL3JlYWRjb25mLmMKLWluZGV4IGY3OGI0ZDYuLjJm
NTZlZDIgMTAwNjQ0CitpbmRleCBmM2NhYzZiLi4yNmI5YTU5IDEwMDY0NAogLS0tIGEvcmVhZGNv
bmYuYwogKysrIGIvcmVhZGNvbmYuYwotQEAgLTIxMjUsMTggKzIxMjUsMTkgQEAgZmlsbF9kZWZh
dWx0X29wdGlvbnMoT3B0aW9ucyAqIG9wdGlvbnMpCi0gCWFsbF9rZXggPSBrZXhfYWxnX2xpc3Qo
JywnKTsKK0BAIC0yMTg3LDExICsyMTg3LDE2IEBAIGZpbGxfZGVmYXVsdF9vcHRpb25zKE9wdGlv
bnMgKiBvcHRpb25zKQogIAlhbGxfa2V5ID0gc3Noa2V5X2FsZ19saXN0KDAsIDAsIDEsICcsJyk7
CiAgCWFsbF9zaWcgPSBzc2hrZXlfYWxnX2xpc3QoMCwgMSwgMSwgJywnKTsKLS0jZGVmaW5lIEFT
U0VNQkxFKHdoYXQsIGRlZmF1bHRzLCBhbGwpIFwKLSsjZGVmaW5lIEFTU0VNQkxFKHdoYXQsIGRl
ZmF1bHRzLCBmaXBzX2RlZmF1bHRzLCBhbGwpIFwKKyAJLyogcmVtb3ZlIHVuc3VwcG9ydGVkIGFs
Z29zIGZyb20gZGVmYXVsdCBsaXN0cyAqLworLQlkZWZfY2lwaGVyID0gbWF0Y2hfZmlsdGVyX3do
aXRlbGlzdChLRVhfQ0xJRU5UX0VOQ1JZUFQsIGFsbF9jaXBoZXIpOworLQlkZWZfbWFjID0gbWF0
Y2hfZmlsdGVyX3doaXRlbGlzdChLRVhfQ0xJRU5UX01BQywgYWxsX21hYyk7CistCWRlZl9rZXgg
PSBtYXRjaF9maWx0ZXJfd2hpdGVsaXN0KEtFWF9DTElFTlRfS0VYLCBhbGxfa2V4KTsKKy0JZGVm
X2tleSA9IG1hdGNoX2ZpbHRlcl93aGl0ZWxpc3QoS0VYX0RFRkFVTFRfUEtfQUxHLCBhbGxfa2V5
KTsKKy0JZGVmX3NpZyA9IG1hdGNoX2ZpbHRlcl93aGl0ZWxpc3QoU1NIX0FMTE9XRURfQ0FfU0lH
QUxHUywgYWxsX3NpZyk7CisrCWRlZl9jaXBoZXIgPSBtYXRjaF9maWx0ZXJfd2hpdGVsaXN0KChG
SVBTX21vZGUoKSA/CisrCSAgICBLRVhfRklQU19FTkNSWVBUIDogS0VYX0NMSUVOVF9FTkNSWVBU
KSwgYWxsX2NpcGhlcik7CisrCWRlZl9tYWMgPSBtYXRjaF9maWx0ZXJfd2hpdGVsaXN0KChGSVBT
X21vZGUoKSA/CisrCSAgICBLRVhfRklQU19NQUMgOiBLRVhfQ0xJRU5UX01BQyksIGFsbF9tYWMp
OworKwlkZWZfa2V4ID0gbWF0Y2hfZmlsdGVyX3doaXRlbGlzdCgoRklQU19tb2RlKCkgPworKwkg
ICAgS0VYX0RFRkFVTFRfS0VYX0ZJUFMgOiBLRVhfQ0xJRU5UX0tFWCksIGFsbF9rZXgpOworKwlk
ZWZfa2V5ID0gbWF0Y2hfZmlsdGVyX3doaXRlbGlzdCgoRklQU19tb2RlKCkgPworKwkgICAgS0VY
X0ZJUFNfUEtfQUxHIDogS0VYX0RFRkFVTFRfUEtfQUxHKSwgYWxsX2tleSk7CisrCWRlZl9zaWcg
PSBtYXRjaF9maWx0ZXJfd2hpdGVsaXN0KChGSVBTX21vZGUoKSA/CisrCSAgICBLRVhfRklQU19Q
S19BTEcgOiBTU0hfQUxMT1dFRF9DQV9TSUdBTEdTKSwgYWxsX3NpZyk7CisgI2RlZmluZSBBU1NF
TUJMRSh3aGF0LCBkZWZhdWx0cywgYWxsKSBcCiAgCWRvIHsgXAogIAkJaWYgKChyID0ga2V4X2Fz
c2VtYmxlX25hbWVzKCZhbXA7b3B0aW9ucy0mZ3Q7d2hhdCwgXAotLQkJICAgIGRlZmF1bHRzLCBh
bGwpKSAhPSAwKSBcCi0rCQkgICAgKEZJUFNfbW9kZSgpID8gZmlwc19kZWZhdWx0cyA6IGRlZmF1
bHRzKSwgXAotKwkJICAgIGFsbCkpICE9IDApIFwKLSAJCQlmYXRhbCgiJXM6ICVzOiAlcyIsIF9f
ZnVuY19fLCAjd2hhdCwgc3NoX2VycihyKSk7IFwKLSAJfSB3aGlsZSAoMCkKLS0JQVNTRU1CTEUo
Y2lwaGVycywgS0VYX0NMSUVOVF9FTkNSWVBULCBhbGxfY2lwaGVyKTsKLS0JQVNTRU1CTEUobWFj
cywgS0VYX0NMSUVOVF9NQUMsIGFsbF9tYWMpOwotLQlBU1NFTUJMRShrZXhfYWxnb3JpdGhtcywg
S0VYX0NMSUVOVF9LRVgsIGFsbF9rZXgpOwotLQlBU1NFTUJMRShob3N0YmFzZWRfa2V5X3R5cGVz
LCBLRVhfREVGQVVMVF9QS19BTEcsIGFsbF9rZXkpOwotLQlBU1NFTUJMRShwdWJrZXlfa2V5X3R5
cGVzLCBLRVhfREVGQVVMVF9QS19BTEcsIGFsbF9rZXkpOwotLQlBU1NFTUJMRShjYV9zaWduX2Fs
Z29yaXRobXMsIFNTSF9BTExPV0VEX0NBX1NJR0FMR1MsIGFsbF9zaWcpOwotKwlBU1NFTUJMRShj
aXBoZXJzLCBLRVhfQ0xJRU5UX0VOQ1JZUFQsIEtFWF9GSVBTX0VOQ1JZUFQsIGFsbF9jaXBoZXIp
OwotKwlBU1NFTUJMRShtYWNzLCBLRVhfQ0xJRU5UX01BQywgS0VYX0ZJUFNfTUFDLCBhbGxfbWFj
KTsKLSsJQVNTRU1CTEUoa2V4X2FsZ29yaXRobXMsIEtFWF9DTElFTlRfS0VYLCBLRVhfREVGQVVM
VF9LRVhfRklQUywgYWxsX2tleCk7Ci0rCUFTU0VNQkxFKGhvc3RiYXNlZF9rZXlfdHlwZXMsIEtF
WF9ERUZBVUxUX1BLX0FMRywgS0VYX0ZJUFNfUEtfQUxHLCBhbGxfa2V5KTsKLSsJQVNTRU1CTEUo
cHVia2V5X2tleV90eXBlcywgS0VYX0RFRkFVTFRfUEtfQUxHLCBLRVhfRklQU19QS19BTEcsIGFs
bF9rZXkpOwotKwlBU1NFTUJMRShjYV9zaWduX2FsZ29yaXRobXMsIFNTSF9BTExPV0VEX0NBX1NJ
R0FMR1MsIEtFWF9GSVBTX1BLX0FMRywgYWxsX3NpZyk7Ci0gI3VuZGVmIEFTU0VNQkxFCi0gCWZy
ZWUoYWxsX2NpcGhlcik7Ci0gCWZyZWUoYWxsX21hYyk7CiBkaWZmIC0tZ2l0IGEvc2FuZGJveC1z
ZWNjb21wLWZpbHRlci5jIGIvc2FuZGJveC1zZWNjb21wLWZpbHRlci5jCi1pbmRleCBiNWNkYTcw
Li5mMDYwN2EzIDEwMDY0NAoraW5kZXggZjgwOTgxZi4uMDA3MDJhNyAxMDA2NDQKIC0tLSBhL3Nh
bmRib3gtc2VjY29tcC1maWx0ZXIuYwogKysrIGIvc2FuZGJveC1zZWNjb21wLWZpbHRlci5jCiBA
QCAtMTU2LDYgKzE1Niw5IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgc29ja19maWx0ZXIgcHJlYXV0
aF9pbnNuc1tdID0gewpAQCAtMzEyLDQzICszMDUsMzYgQEAgaW5kZXggYjVjZGE3MC4uZjA2MDdh
MyAxMDA2NDQKICAJU0NfREVOWShfX05SX29wZW5hdCwgRUFDQ0VTKSwKICAjZW5kaWYKIGRpZmYg
LS1naXQgYS9zZXJ2Y29uZi5jIGIvc2VydmNvbmYuYwotaW5kZXggZTc2ZjljMy4uNTkxZDQzNyAx
MDA2NDQKK2luZGV4IDcwZjVmNzMuLjgxNWJlYWYgMTAwNjQ0CiAtLS0gYS9zZXJ2Y29uZi5jCiAr
KysgYi9zZXJ2Y29uZi5jCi1AQCAtMjAwLDE4ICsyMDAsMTkgQEAgYXNzZW1ibGVfYWxnb3JpdGht
cyhTZXJ2ZXJPcHRpb25zICpvKQotIAlhbGxfa2V4ID0ga2V4X2FsZ19saXN0KCcsJyk7CitAQCAt
MjEyLDExICsyMTIsMTYgQEAgYXNzZW1ibGVfYWxnb3JpdGhtcyhTZXJ2ZXJPcHRpb25zICpvKQog
IAlhbGxfa2V5ID0gc3Noa2V5X2FsZ19saXN0KDAsIDAsIDEsICcsJyk7CiAgCWFsbF9zaWcgPSBz
c2hrZXlfYWxnX2xpc3QoMCwgMSwgMSwgJywnKTsKLS0jZGVmaW5lIEFTU0VNQkxFKHdoYXQsIGRl
ZmF1bHRzLCBhbGwpIFwKLSsjZGVmaW5lIEFTU0VNQkxFKHdoYXQsIGRlZmF1bHRzLCBmaXBzX2Rl
ZmF1bHRzLCBhbGwpIFwKKyAJLyogcmVtb3ZlIHVuc3VwcG9ydGVkIGFsZ29zIGZyb20gZGVmYXVs
dCBsaXN0cyAqLworLQlkZWZfY2lwaGVyID0gbWF0Y2hfZmlsdGVyX3doaXRlbGlzdChLRVhfU0VS
VkVSX0VOQ1JZUFQsIGFsbF9jaXBoZXIpOworLQlkZWZfbWFjID0gbWF0Y2hfZmlsdGVyX3doaXRl
bGlzdChLRVhfU0VSVkVSX01BQywgYWxsX21hYyk7CistCWRlZl9rZXggPSBtYXRjaF9maWx0ZXJf
d2hpdGVsaXN0KEtFWF9TRVJWRVJfS0VYLCBhbGxfa2V4KTsKKy0JZGVmX2tleSA9IG1hdGNoX2Zp
bHRlcl93aGl0ZWxpc3QoS0VYX0RFRkFVTFRfUEtfQUxHLCBhbGxfa2V5KTsKKy0JZGVmX3NpZyA9
IG1hdGNoX2ZpbHRlcl93aGl0ZWxpc3QoU1NIX0FMTE9XRURfQ0FfU0lHQUxHUywgYWxsX3NpZyk7
CisrCWRlZl9jaXBoZXIgPSBtYXRjaF9maWx0ZXJfd2hpdGVsaXN0KChGSVBTX21vZGUoKSA/Cisr
CSAgICBLRVhfRklQU19FTkNSWVBUIDogS0VYX1NFUlZFUl9FTkNSWVBUKSwgYWxsX2NpcGhlcik7
CisrCWRlZl9tYWMgPSBtYXRjaF9maWx0ZXJfd2hpdGVsaXN0KChGSVBTX21vZGUoKSA/CisrCSAg
ICBLRVhfRklQU19NQUMgOiBLRVhfU0VSVkVSX01BQyksIGFsbF9tYWMpOworKwlkZWZfa2V4ID0g
bWF0Y2hfZmlsdGVyX3doaXRlbGlzdCgoRklQU19tb2RlKCkgPworKwkgICAgS0VYX0RFRkFVTFRf
S0VYX0ZJUFMgOiBLRVhfU0VSVkVSX0tFWCksIGFsbF9rZXgpOworKwlkZWZfa2V5ID0gbWF0Y2hf
ZmlsdGVyX3doaXRlbGlzdCgoRklQU19tb2RlKCkgPworKwkgICAgS0VYX0ZJUFNfUEtfQUxHIDog
S0VYX0RFRkFVTFRfUEtfQUxHKSwgYWxsX2tleSk7CisrCWRlZl9zaWcgPSBtYXRjaF9maWx0ZXJf
d2hpdGVsaXN0KChGSVBTX21vZGUoKSA/CisrCSAgICBLRVhfRklQU19QS19BTEcgOiBTU0hfQUxM
T1dFRF9DQV9TSUdBTEdTKSwgYWxsX3NpZyk7CisgI2RlZmluZSBBU1NFTUJMRSh3aGF0LCBkZWZh
dWx0cywgYWxsKSBcCiAgCWRvIHsgXAotLQkJaWYgKChyID0ga2V4X2Fzc2VtYmxlX25hbWVzKCZh
bXA7by0mZ3Q7d2hhdCwgZGVmYXVsdHMsIGFsbCkpICE9IDApIFwKLSsJCWlmICgociA9IGtleF9h
c3NlbWJsZV9uYW1lcygmYW1wO28tJmd0O3doYXQsIChGSVBTX21vZGUoKSBcCi0rCQkgICAgPyBm
aXBzX2RlZmF1bHRzIDogZGVmYXVsdHMpLCBhbGwpKSAhPSAwKSBcCi0gCQkJZmF0YWwoIiVzOiAl
czogJXMiLCBfX2Z1bmNfXywgI3doYXQsIHNzaF9lcnIocikpOyBcCi0gCX0gd2hpbGUgKDApCi0t
CUFTU0VNQkxFKGNpcGhlcnMsIEtFWF9TRVJWRVJfRU5DUllQVCwgYWxsX2NpcGhlcik7Ci0tCUFT
U0VNQkxFKG1hY3MsIEtFWF9TRVJWRVJfTUFDLCBhbGxfbWFjKTsKLS0JQVNTRU1CTEUoa2V4X2Fs
Z29yaXRobXMsIEtFWF9TRVJWRVJfS0VYLCBhbGxfa2V4KTsKLS0JQVNTRU1CTEUoaG9zdGtleWFs
Z29yaXRobXMsIEtFWF9ERUZBVUxUX1BLX0FMRywgYWxsX2tleSk7Ci0tCUFTU0VNQkxFKGhvc3Ri
YXNlZF9rZXlfdHlwZXMsIEtFWF9ERUZBVUxUX1BLX0FMRywgYWxsX2tleSk7Ci0tCUFTU0VNQkxF
KHB1YmtleV9rZXlfdHlwZXMsIEtFWF9ERUZBVUxUX1BLX0FMRywgYWxsX2tleSk7Ci0tCUFTU0VN
QkxFKGNhX3NpZ25fYWxnb3JpdGhtcywgU1NIX0FMTE9XRURfQ0FfU0lHQUxHUywgYWxsX3NpZyk7
Ci0rCUFTU0VNQkxFKGNpcGhlcnMsIEtFWF9TRVJWRVJfRU5DUllQVCwgS0VYX0ZJUFNfRU5DUllQ
VCwgYWxsX2NpcGhlcik7Ci0rCUFTU0VNQkxFKG1hY3MsIEtFWF9TRVJWRVJfTUFDLCBLRVhfRklQ
U19NQUMsIGFsbF9tYWMpOwotKwlBU1NFTUJMRShrZXhfYWxnb3JpdGhtcywgS0VYX1NFUlZFUl9L
RVgsIEtFWF9ERUZBVUxUX0tFWF9GSVBTLCBhbGxfa2V4KTsKLSsJQVNTRU1CTEUoaG9zdGtleWFs
Z29yaXRobXMsIEtFWF9ERUZBVUxUX1BLX0FMRywgS0VYX0ZJUFNfUEtfQUxHLCBhbGxfa2V5KTsK
LSsJQVNTRU1CTEUoaG9zdGJhc2VkX2tleV90eXBlcywgS0VYX0RFRkFVTFRfUEtfQUxHLCBLRVhf
RklQU19QS19BTEcsIGFsbF9rZXkpOwotKwlBU1NFTUJMRShwdWJrZXlfa2V5X3R5cGVzLCBLRVhf
REVGQVVMVF9QS19BTEcsIEtFWF9GSVBTX1BLX0FMRywgYWxsX2tleSk7Ci0rCUFTU0VNQkxFKGNh
X3NpZ25fYWxnb3JpdGhtcywgU1NIX0FMTE9XRURfQ0FfU0lHQUxHUywgS0VYX0ZJUFNfUEtfQUxH
LCBhbGxfc2lnKTsKLSAjdW5kZWYgQVNTRU1CTEUKLSAJZnJlZShhbGxfY2lwaGVyKTsKLSAJZnJl
ZShhbGxfbWFjKTsKKyAJCWlmICgociA9IGtleF9hc3NlbWJsZV9uYW1lcygmYW1wO28tJmd0O3do
YXQsIGRlZmF1bHRzLCBhbGwpKSAhPSAwKSBcCiBkaWZmIC0tZ2l0IGEvc3NoLWtleWdlbi5jIGIv
c3NoLWtleWdlbi5jCi1pbmRleCA4YzgyOWNhLi5jYjQ5ODJkIDEwMDY0NAoraW5kZXggMGQ2ZWQx
Zi4uZmVhZmU3MyAxMDA2NDQKIC0tLSBhL3NzaC1rZXlnZW4uYwogKysrIGIvc3NoLWtleWdlbi5j
Ci1AQCAtMjAxLDYgKzIwMSwxMiBAQCB0eXBlX2JpdHNfdmFsaWQoaW50IHR5cGUsIGNvbnN0IGNo
YXIgKm5hbWUsIHVfaW50MzJfdCAqYml0c3ApCitAQCAtMjA0LDYgKzIwNCwxMiBAQCB0eXBlX2Jp
dHNfdmFsaWQoaW50IHR5cGUsIGNvbnN0IGNoYXIgKm5hbWUsIHVfaW50MzJfdCAqYml0c3ApCiAg
I2VuZGlmCiAgCX0KICAjaWZkZWYgV0lUSF9PUEVOU1NMCkBAIC0zNjEsMTcgKzM0NywxNiBAQCBp
bmRleCA4YzgyOWNhLi5jYjQ5ODJkIDEwMDY0NAogIAlzd2l0Y2ggKHR5cGUpIHsKICAJY2FzZSBL
RVlfRFNBOgogIAkJaWYgKCpiaXRzcCAhPSAxMDI0KQotQEAgLTEwNjEsOSArMTA2NywxOCBAQCBk
b19nZW5fYWxsX2hvc3RrZXlzKHN0cnVjdCBwYXNzd2QgKnB3KQorQEAgLTEwODgsOSArMTA5NCwx
NyBAQCBkb19nZW5fYWxsX2hvc3RrZXlzKHN0cnVjdCBwYXNzd2QgKnB3KQogIAkJCWZpcnN0ID0g
MTsKICAJCQlwcmludGYoIiVzOiBnZW5lcmF0aW5nIG5ldyBob3N0IGtleXM6ICIsIF9fcHJvZ25h
bWUpOwogIAkJfQotKwogKwkJdHlwZSA9IHNzaGtleV90eXBlX2Zyb21fbmFtZShrZXlfdHlwZXNb
aV0ua2V5X3R5cGUpOwogKwogKwkJLyogU2tpcCB0aGUga2V5cyB0aGF0IGFyZSBub3Qgc3VwcG9y
dGVkIGluIEZJUFMgbW9kZSAqLwogKwkJaWYgKEZJUFNfbW9kZSgpICZhbXA7JmFtcDsgKHR5cGUg
PT0gS0VZX0RTQSB8fCB0eXBlID09IEtFWV9FRDI1NTE5KSkgewogKwkJCWxvZ2l0KCJTa2lwcGlu
ZyAlcyBrZXkgaW4gRklQUyBtb2RlIiwKLSsJCQkJa2V5X3R5cGVzW2ldLmtleV90eXBlX2Rpc3Bs
YXkpOworKwkJCSAgICBrZXlfdHlwZXNbaV0ua2V5X3R5cGVfZGlzcGxheSk7CiArCQkJZ290byBu
ZXh0OwogKwkJfQogKwpAQCAtMzgyLDEwICszNjcsMTAgQEAgaW5kZXggOGM4MjljYS4uY2I0OTgy
ZCAxMDA2NDQKICAJCQllcnJvcigiQ291bGQgbm90IHNhdmUgeW91ciBwdWJsaWMga2V5IGluICVz
OiAlcyIsCiAgCQkJICAgIHBydl90bXAsIHN0cmVycm9yKGVycm5vKSk7CiBkaWZmIC0tZ2l0IGEv
c3NoLmMgYi9zc2guYwotaW5kZXggZWU1MTgyMy4uMDcyNGRmNCAxMDA2NDQKK2luZGV4IDE1YWVl
NTYuLjQ5MzMxZmMgMTAwNjQ0CiAtLS0gYS9zc2guYwogKysrIGIvc3NoLmMKLUBAIC03Niw2ICs3
Niw4IEBACitAQCAtNzcsNiArNzcsOCBAQAogICNpbmNsdWRlICZsdDtvcGVuc3NsL2V2cC5oJmd0
OwogICNpbmNsdWRlICZsdDtvcGVuc3NsL2Vyci5oJmd0OwogICNlbmRpZgpAQCAtMzk0LDcgKzM3
OSw3IEBAIGluZGV4IGVlNTE4MjMuLjA3MjRkZjQgMTAwNjQ0CiAgI2luY2x1ZGUgIm9wZW5ic2Qt
Y29tcGF0L29wZW5zc2wtY29tcGF0LmgiCiAgI2luY2x1ZGUgIm9wZW5ic2QtY29tcGF0L3N5cy1x
dWV1ZS5oIgogIAotQEAgLTYwMCw2ICs2MDIsMTYgQEAgbWFpbihpbnQgYWMsIGNoYXIgKiphdikK
K0BAIC02MDgsNiArNjEwLDE2IEBAIG1haW4oaW50IGFjLCBjaGFyICoqYXYpCiAgCXNhbml0aXNl
X3N0ZGZkKCk7CiAgCiAgCV9fcHJvZ25hbWUgPSBzc2hfZ2V0X3Byb2duYW1lKGF2WzBdKTsKQEAg
LTQxMSw3ICszOTYsNyBAQCBpbmRleCBlZTUxODIzLi4wNzI0ZGY0IDEwMDY0NAogIAogICNpZm5k
ZWYgSEFWRV9TRVRQUk9DVElUTEUKICAJLyogUHJlcGFyZSBmb3IgbGF0ZXIgc2V0cHJvY3RpdGxl
IGVtdWxhdGlvbiAqLwotQEAgLTYxNCw2ICs2MjYsMTAgQEAgbWFpbihpbnQgYWMsIGNoYXIgKiph
dikKK0BAIC02MjIsNiArNjM0LDEwIEBAIG1haW4oaW50IGFjLCBjaGFyICoqYXYpCiAgCiAgCXNl
ZWRfcm5nKCk7CiAgCkBAIC00MjMsNyArNDA4LDcgQEAgaW5kZXggZWU1MTgyMy4uMDcyNGRmNCAx
MDA2NDQKICAJICogRGlzY2FyZCBvdGhlciBmZHMgdGhhdCBhcmUgaGFuZ2luZyBhcm91bmQuIFRo
ZXNlIGNhbiBjYXVzZSBwcm9ibGVtCiAgCSAqIHdpdGggYmFja2dyb3VuZGVkIHNzaCBwcm9jZXNz
ZXMgc3RhcnRlZCBieSBDb250cm9sUGVyc2lzdC4KIGRpZmYgLS1naXQgYS9zc2hjb25uZWN0Mi5j
IGIvc3NoY29ubmVjdDIuYwotaW5kZXggODdmYTcwYS4uYTQyYWFjYiAxMDA2NDQKK2luZGV4IGFm
MDBmYjMuLjYzOWZjNTEgMTAwNjQ0CiAtLS0gYS9zc2hjb25uZWN0Mi5jCiArKysgYi9zc2hjb25u
ZWN0Mi5jCiBAQCAtNDQsNiArNDQsOCBAQApAQCAtNDM1LDM3ICs0MjAsMjggQEAgaW5kZXggODdm
YTcwYS4uYTQyYWFjYiAxMDA2NDQKICAjaW5jbHVkZSAib3BlbmJzZC1jb21wYXQvc3lzLXF1ZXVl
LmgiCiAgCiAgI2luY2x1ZGUgInhtYWxsb2MuaCIKLUBAIC0xMTcsNyArMTE5LDggQEAgb3JkZXJf
aG9zdGtleWFsZ3MoY2hhciAqaG9zdCwgc3RydWN0IHNvY2thZGRyICpob3N0YWRkciwgdV9zaG9y
dCBwb3J0KQorQEAgLTExOSw3ICsxMjEsOCBAQCBvcmRlcl9ob3N0a2V5YWxncyhjaGFyICpob3N0
LCBzdHJ1Y3Qgc29ja2FkZHIgKmhvc3RhZGRyLCB1X3Nob3J0IHBvcnQpCiAgCWZvciAoaSA9IDA7
IGkgJmx0OyBvcHRpb25zLm51bV9zeXN0ZW1faG9zdGZpbGVzOyBpKyspCiAgCQlsb2FkX2hvc3Rr
ZXlzKGhvc3RrZXlzLCBob3N0bmFtZSwgb3B0aW9ucy5zeXN0ZW1faG9zdGZpbGVzW2ldKTsKICAK
LS0Jb2F2YWlsID0gYXZhaWwgPSB4c3RyZHVwKEtFWF9ERUZBVUxUX1BLX0FMRyk7CistCW9hdmFp
bCA9IGF2YWlsID0geHN0cmR1cChvcHRpb25zLmhvc3RrZXlhbGdvcml0aG1zKTsKICsJb2F2YWls
ID0gYXZhaWwgPSB4c3RyZHVwKChGSVBTX21vZGUoKQotKwkgICAgPyBLRVhfRklQU19QS19BTEcg
OiBLRVhfREVGQVVMVF9QS19BTEcpKTsKKysJICAgID8gS0VYX0ZJUFNfUEtfQUxHIDogb3B0aW9u
cy5ob3N0a2V5YWxnb3JpdGhtcykpOwogIAltYXhsZW4gPSBzdHJsZW4oYXZhaWwpICsgMTsKICAJ
Zmlyc3QgPSB4bWFsbG9jKG1heGxlbik7CiAgCWxhc3QgPSB4bWFsbG9jKG1heGxlbik7Ci1AQCAt
MTc5LDE0ICsxODIsMTYgQEAgc3NoX2tleDIoc3RydWN0IHNzaCAqc3NoLCBjaGFyICpob3N0LCBz
dHJ1Y3Qgc29ja2FkZHIgKmhvc3RhZGRyLCB1X3Nob3J0IHBvcnQpCi0gCWlmIChvcHRpb25zLmhv
c3RrZXlhbGdvcml0aG1zICE9IE5VTEwpIHsKLSAJCWFsbF9rZXkgPSBzc2hrZXlfYWxnX2xpc3Qo
MCwgMCwgMSwgJywnKTsKLSAJCWlmIChrZXhfYXNzZW1ibGVfbmFtZXMoJmFtcDtvcHRpb25zLmhv
c3RrZXlhbGdvcml0aG1zLAotLQkJICAgIEtFWF9ERUZBVUxUX1BLX0FMRywgYWxsX2tleSkgIT0g
MCkKLSsJCSAgICAoRklQU19tb2RlKCkgPyBLRVhfRklQU19QS19BTEcgOiBLRVhfREVGQVVMVF9Q
S19BTEcpLAotKwkJICAgIGFsbF9rZXkpICE9IDApCi0gCQkJZmF0YWwoIiVzOiBrZXhfYXNzZW1i
bGVfbmFtZWxpc3QiLCBfX2Z1bmNfXyk7Ci0gCQlmcmVlKGFsbF9rZXkpOwotIAkJbXlwcm9wb3Nh
bFtQUk9QT1NBTF9TRVJWRVJfSE9TVF9LRVlfQUxHU10gPQotIAkJICAgIGNvbXBhdF9wa2FsZ19w
cm9wb3NhbChvcHRpb25zLmhvc3RrZXlhbGdvcml0aG1zKTsKLSAJfSBlbHNlIHsKLSAJCS8qIEVu
Zm9yY2UgZGVmYXVsdCAqLwotLQkJb3B0aW9ucy5ob3N0a2V5YWxnb3JpdGhtcyA9IHhzdHJkdXAo
S0VYX0RFRkFVTFRfUEtfQUxHKTsKLSsJCW9wdGlvbnMuaG9zdGtleWFsZ29yaXRobXMgPSB4c3Ry
ZHVwKChGSVBTX21vZGUoKQotKwkJICAgID8gS0VYX0ZJUFNfUEtfQUxHIDogS0VYX0RFRkFVTFRf
UEtfQUxHKSk7Ci0gCQkvKiBQcmVmZXIgYWxnb3JpdGhtcyB0aGF0IHdlIGFscmVhZHkgaGF2ZSBr
ZXlzIGZvciAqLwotIAkJbXlwcm9wb3NhbFtQUk9QT1NBTF9TRVJWRVJfSE9TVF9LRVlfQUxHU10g
PQotIAkJICAgIGNvbXBhdF9wa2FsZ19wcm9wb3NhbCgKK0BAIC0xNzksNyArMTgyLDggQEAgc3No
X2tleDIoc3RydWN0IHNzaCAqc3NoLCBjaGFyICpob3N0LCBzdHJ1Y3Qgc29ja2FkZHIgKmhvc3Rh
ZGRyLCB1X3Nob3J0IHBvcnQpCisgCS8qIEV4cGFuZCBvciBmaWxsIGluIEhvc3RrZXlBbGdvcml0
aG1zICovCisgCWFsbF9rZXkgPSBzc2hrZXlfYWxnX2xpc3QoMCwgMCwgMSwgJywnKTsKKyAJaWYg
KGtleF9hc3NlbWJsZV9uYW1lcygmYW1wO29wdGlvbnMuaG9zdGtleWFsZ29yaXRobXMsCistCSAg
ICBrZXhfZGVmYXVsdF9wa19hbGcoKSwgYWxsX2tleSkgIT0gMCkKKysJICAgIChGSVBTX21vZGUo
KSA/IEtFWF9GSVBTX1BLX0FMRyA6IGtleF9kZWZhdWx0X3BrX2FsZygpKSwKKysJICAgIGFsbF9r
ZXkpICE9IDApCisgCQlmYXRhbCgiJXM6IGtleF9hc3NlbWJsZV9uYW1lbGlzdCIsIF9fZnVuY19f
KTsKKyAJZnJlZShhbGxfa2V5KTsKKyAKIGRpZmYgLS1naXQgYS9zc2hkLmMgYi9zc2hkLmMKLWlu
ZGV4IGY4ZGVlMGYuLjJiZjg5MzkgMTAwNjQ0CitpbmRleCA1YjlhMGI1Li5iODZkNjgyIDEwMDY0
NAogLS0tIGEvc3NoZC5jCiArKysgYi9zc2hkLmMKIEBAIC02Niw2ICs2Niw3IEBACkBAIC00ODUs
NyArNDYxLDcgQEAgaW5kZXggZjhkZWUwZi4uMmJmODkzOSAxMDA2NDQKICAjaW5jbHVkZSAib3Bl
bmJzZC1jb21wYXQvb3BlbnNzbC1jb21wYXQuaCIKICAjZW5kaWYKICAKLUBAIC0xNDQ1LDYgKzE0
NDgsMTggQEAgbWFpbihpbnQgYWMsIGNoYXIgKiphdikKK0BAIC0xNTE2LDYgKzE1MTksMTggQEAg
bWFpbihpbnQgYWMsIGNoYXIgKiphdikKICAjZW5kaWYKICAJX19wcm9nbmFtZSA9IHNzaF9nZXRf
cHJvZ25hbWUoYXZbMF0pOwogIApAQCAtNTA0LDcgKzQ4MCw3IEBAIGluZGV4IGY4ZGVlMGYuLjJi
Zjg5MzkgMTAwNjQ0CiAgCS8qIFNhdmUgYXJndi4gRHVwbGljYXRlIHNvIHNldHByb2N0aXRsZSBl
bXVsYXRpb24gZG9lc24ndCBjbG9iYmVyIGl0ICovCiAgCXNhdmVkX2FyZ2MgPSBhYzsKICAJcmV4
ZWNfYXJnYyA9IGFjOwotQEAgLTE5MTAsNiArMTkyNSwxMCBAQCBtYWluKGludCBhYywgY2hhciAq
KmF2KQorQEAgLTE5OTAsNiArMjAwNSwxMCBAQCBtYWluKGludCBhYywgY2hhciAqKmF2KQogIAkv
KiBSZWluaXRpYWxpemUgdGhlIGxvZyAoYmVjYXVzZSBvZiB0aGUgZm9yayBhYm92ZSkuICovCiAg
CWxvZ19pbml0KF9fcHJvZ25hbWUsIG9wdGlvbnMubG9nX2xldmVsLCBvcHRpb25zLmxvZ19mYWNp
bGl0eSwgbG9nX3N0ZGVycik7CiAgCkBAIC01MTYsNyArNDkyLDcgQEAgaW5kZXggZjhkZWUwZi4u
MmJmODkzOSAxMDA2NDQKICAJICAgdW5tb3VudGVkIGlmIGRlc2lyZWQuICovCiAgCWlmIChjaGRp
cigiLyIpID09IC0xKQogZGlmZiAtLWdpdCBhL3NzaGtleS5jIGIvc3Noa2V5LmMKLWluZGV4IGVm
OTA1NjMuLjFiMWJhMDEgMTAwNjQ0CitpbmRleCA1Nzk5NWVlLi4zZmE0Mjc0IDEwMDY0NAogLS0t
IGEvc3Noa2V5LmMKICsrKyBiL3NzaGtleS5jCiBAQCAtMzQsNiArMzQsNyBAQApAQCAtNTMyLDEw
ICs1MDgsMTAgQEAgaW5kZXggZWY5MDU2My4uMWIxYmEwMSAxMDA2NDQKICAjaW5jbHVkZSAic3No
a2V5LmgiCiAgI2luY2x1ZGUgIm1hdGNoLmgiCiArI2luY2x1ZGUgImxvZy5oIgorICNpbmNsdWRl
ICJzc2gtc2suaCIKICAKICAjaWZkZWYgV0lUSF9YTVNTCi0gI2luY2x1ZGUgInNzaGtleS14bXNz
LmgiCi1AQCAtMTQ5MSw2ICsxNDkzLDggQEAgcnNhX2dlbmVyYXRlX3ByaXZhdGVfa2V5KHVfaW50
IGJpdHMsIFJTQSAqKnJzYXApCitAQCAtMTU5Nyw2ICsxNTk5LDggQEAgcnNhX2dlbmVyYXRlX3By
aXZhdGVfa2V5KHVfaW50IGJpdHMsIFJTQSAqKnJzYXApCiAgCX0KICAJaWYgKCFCTl9zZXRfd29y
ZChmNCwgUlNBX0Y0KSB8fAogIAkgICAgIVJTQV9nZW5lcmF0ZV9rZXlfZXgocHJpdmF0ZSwgYml0
cywgZjQsIE5VTEwpKSB7CmRpZmYgLS1naXQgYS9yZWNpcGVzLWNvbm5lY3Rpdml0eS9vcGVuc3No
L29wZW5zc2gvb3BlbnNzaC02LjZwMS1jdHItY2F2c3Rlc3QucGF0Y2ggYi9yZWNpcGVzLWNvbm5l
Y3Rpdml0eS9vcGVuc3NoL29wZW5zc2gvb3BlbnNzaC02LjZwMS1jdHItY2F2c3Rlc3QucGF0Y2gK
aW5kZXggOGI3NDQ1MS4uYzc2MzViMiAxMDA2NDQKLS0tIGEvcmVjaXBlcy1jb25uZWN0aXZpdHkv
b3BlbnNzaC9vcGVuc3NoL29wZW5zc2gtNi42cDEtY3RyLWNhdnN0ZXN0LnBhdGNoCisrKyBiL3Jl
Y2lwZXMtY29ubmVjdGl2aXR5L29wZW5zc2gvb3BlbnNzaC9vcGVuc3NoLTYuNnAxLWN0ci1jYXZz
dGVzdC5wYXRjaApAQCAtMSw0ICsxLDQgQEAKLUZyb20gNmQ2NTg5M2E4NWJkZGZjNTQzY2U4OTRl
ZTQ5NDBiZDBkNWFiMzY4ZSBNb24gU2VwIDE3IDAwOjAwOjAwIDIwMDEKK0Zyb20gYmYzMjExYmJm
ZjVjYjllMWVmNTg4Zjc0ODQ0YjA0ZTA5YTlhZDJiNiBNb24gU2VwIDE3IDAwOjAwOjAwIDIwMDEK
IEZyb206IEhvbmd4dSBKaWEgPGEgY2xhc3M9Im1vei10eHQtbGluay1yZmMyMzk2RSIgaHJlZj0i
bWFpbHRvOmhvbmd4dS5qaWFAd2luZHJpdmVyLmNvbSI+Jmx0O2hvbmd4dS5qaWFAd2luZHJpdmVy
LmNvbSZndDs8L2E+CiBEYXRlOiBTYXQsIDIxIERlYyAyMDE5IDEzOjA1OjE5ICswODAwCiBTdWJq
ZWN0OiBbUEFUQ0hdIGFkZCBDQVZTIHRlc3QgZHJpdmVyIGZvciB0aGUgYWVzLWN0ciBjaXBoZXJz
CkBAIC0xOCw2ICsxOCw3IEBAIFNpZ25lZC1vZmYtYnk6IE1hcmsgSGF0bGUgPGEgY2xhc3M9Im1v
ei10eHQtbGluay1yZmMyMzk2RSIgaHJlZj0ibWFpbHRvOm1hcmsuaGF0bGVAd2luZHJpdmVyLmNv
bSI+Jmx0O21hcmsuaGF0bGVAd2luZHJpdmVyLmNvbSZndDs8L2E+CiAKIFVwc3RyZWFtLVN0YXR1
czogSW5hcHByb3ByaWF0ZSBbb2Ugc3BlY2lmaWNdCiBTaWduZWQtb2ZmLWJ5OiBIb25neHUgSmlh
IDxhIGNsYXNzPSJtb3otdHh0LWxpbmstcmZjMjM5NkUiIGhyZWY9Im1haWx0bzpob25neHUuamlh
QHdpbmRyaXZlci5jb20iPiZsdDtob25neHUuamlhQHdpbmRyaXZlci5jb20mZ3Q7PC9hPgorU2ln
bmVkLW9mZi1ieTogWWkgWmhhbyA8YSBjbGFzcz0ibW96LXR4dC1saW5rLXJmYzIzOTZFIiBocmVm
PSJtYWlsdG86eWkuemhhb0B3aW5kcml2ZXIuY29tIj4mbHQ7eWkuemhhb0B3aW5kcml2ZXIuY29t
Jmd0OzwvYT4KIC0tLQogIE1ha2VmaWxlLmluICAgIHwgICA3ICstCiAgY3RyLWNhdnN0ZXN0LmMg
fCAyMTUgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrCkBAIC0yNSw3ICsyNiw3IEBAIFNpZ25lZC1vZmYtYnk6IEhvbmd4dSBKaWEgPGEgY2xh
c3M9Im1vei10eHQtbGluay1yZmMyMzk2RSIgaHJlZj0ibWFpbHRvOmhvbmd4dS5qaWFAd2luZHJp
dmVyLmNvbSI+Jmx0O2hvbmd4dS5qaWFAd2luZHJpdmVyLmNvbSZndDs8L2E+CiAgY3JlYXRlIG1v
ZGUgMTAwNjQ0IGN0ci1jYXZzdGVzdC5jCiAKIGRpZmYgLS1naXQgYS9NYWtlZmlsZS5pbiBiL01h
a2VmaWxlLmluCi1pbmRleCAzN2FlYzY5Li4xZDZlMjk4IDEwMDY0NAoraW5kZXggNTdmOTRmNC4u
MGFjY2Q4OSAxMDA2NDQKIC0tLSBhL01ha2VmaWxlLmluCiArKysgYi9NYWtlZmlsZS5pbgogQEAg
LTIzLDYgKzIzLDcgQEAgU1NIX1BST0dSQU09QGJpbmRpckAvc3NoCkBAIC0zNCwzNSArMzUsMzUg
QEAgaW5kZXggMzdhZWM2OS4uMWQ2ZTI5OCAxMDA2NDQKICBTU0hfS0VZU0lHTj0kKGxpYmV4ZWNk
aXIpL3NzaC1rZXlzaWduCiArQ1RSX0NBVlNURVNUPSQobGliZXhlY2RpcikvY3RyLWNhdnN0ZXN0
CiAgU1NIX1BLQ1MxMV9IRUxQRVI9JChsaWJleGVjZGlyKS9zc2gtcGtjczExLWhlbHBlcgorIFNT
SF9TS19IRUxQRVI9JChsaWJleGVjZGlyKS9zc2gtc2staGVscGVyCiAgUFJJVlNFUF9QQVRIPUBQ
UklWU0VQX1BBVEhACi0gU1NIX1BSSVZTRVBfVVNFUj1AU1NIX1BSSVZTRVBfVVNFUkAKLUBAIC02
MCw3ICs2MSw3IEBAIEVYRUVYVD1ARVhFRVhUQAotIE1BTkZNVD1ATUFORk1UQAotIE1LRElSX1A9
QE1LRElSX1BACitAQCAtNjgsNyArNjksNyBAQCBNS0RJUl9QPUBNS0RJUl9QQAogIAotLVRBUkdF
VFM9c3NoJChFWEVFWFQpIHNzaGQkKEVYRUVYVCkgc3NoLWFkZCQoRVhFRVhUKSBzc2gta2V5Z2Vu
JChFWEVFWFQpIHNzaC1rZXlzY2FuJHtFWEVFWFR9IHNzaC1rZXlzaWduJHtFWEVFWFR9IHNzaC1w
a2NzMTEtaGVscGVyJChFWEVFWFQpIHNzaC1hZ2VudCQoRVhFRVhUKSBzY3AkKEVYRUVYVCkgc2Z0
cC1zZXJ2ZXIkKEVYRUVYVCkgc2Z0cCQoRVhFRVhUKQotK1RBUkdFVFM9c3NoJChFWEVFWFQpIHNz
aGQkKEVYRUVYVCkgc3NoLWFkZCQoRVhFRVhUKSBzc2gta2V5Z2VuJChFWEVFWFQpIHNzaC1rZXlz
Y2FuJHtFWEVFWFR9IHNzaC1rZXlzaWduJHtFWEVFWFR9IHNzaC1wa2NzMTEtaGVscGVyJChFWEVF
WFQpIHNzaC1hZ2VudCQoRVhFRVhUKSBzY3AkKEVYRUVYVCkgc2Z0cC1zZXJ2ZXIkKEVYRUVYVCkg
c2Z0cCQoRVhFRVhUKSBjdHItY2F2c3Rlc3QkKEVYRUVYVCkKKyAuU1VGRklYRVM6IC5sbworIAor
LVRBUkdFVFM9c3NoJChFWEVFWFQpIHNzaGQkKEVYRUVYVCkgc3NoLWFkZCQoRVhFRVhUKSBzc2gt
a2V5Z2VuJChFWEVFWFQpIHNzaC1rZXlzY2FuJHtFWEVFWFR9IHNzaC1rZXlzaWduJHtFWEVFWFR9
IHNzaC1wa2NzMTEtaGVscGVyJChFWEVFWFQpIHNzaC1hZ2VudCQoRVhFRVhUKSBzY3AkKEVYRUVY
VCkgc2Z0cC1zZXJ2ZXIkKEVYRUVYVCkgc2Z0cCQoRVhFRVhUKSBzc2gtc2staGVscGVyJChFWEVF
WFQpCisrVEFSR0VUUz1zc2gkKEVYRUVYVCkgc3NoZCQoRVhFRVhUKSBzc2gtYWRkJChFWEVFWFQp
IHNzaC1rZXlnZW4kKEVYRUVYVCkgc3NoLWtleXNjYW4ke0VYRUVYVH0gc3NoLWtleXNpZ24ke0VY
RUVYVH0gc3NoLXBrY3MxMS1oZWxwZXIkKEVYRUVYVCkgc3NoLWFnZW50JChFWEVFWFQpIHNjcCQo
RVhFRVhUKSBzZnRwLXNlcnZlciQoRVhFRVhUKSBzZnRwJChFWEVFWFQpIHNzaC1zay1oZWxwZXIk
KEVYRUVYVCkgY3RyLWNhdnN0ZXN0JChFWEVFWFQpCiAgCiAgWE1TU19PQkpTPVwKICAJc3NoLXht
c3MubyBcCi1AQCAtMTk4LDYgKzE5OSw5IEBAIHNzaC1rZXlzaWduJChFWEVFWFQpOiAkKExJQkNP
TVBBVCkgbGlic3NoLmEgc3NoLWtleXNpZ24ubyByZWFkY29uZi5vIHVpZHN3YXAubyBjCi0gc3No
LXBrY3MxMS1oZWxwZXIkKEVYRUVYVCk6ICQoTElCQ09NUEFUKSBsaWJzc2guYSBzc2gtcGtjczEx
LWhlbHBlci5vIHNzaC1wa2NzMTEubwotIAkkKExEKSAtbyAkQCBzc2gtcGtjczExLWhlbHBlci5v
IHNzaC1wa2NzMTEubyAkKExERkxBR1MpIC1sc3NoIC1sb3BlbmJzZC1jb21wYXQgLWxzc2ggLWxv
cGVuYnNkLWNvbXBhdCAkKExJQlMpCitAQCAtMjMyLDYgKzIzMyw5IEBAIHNzaC1wa2NzMTEtaGVs
cGVyJChFWEVFWFQpOiAkKExJQkNPTVBBVCkgbGlic3NoLmEgJChQMTFIRUxQRVJfT0JKUykKKyBz
c2gtc2staGVscGVyJChFWEVFWFQpOiAkKExJQkNPTVBBVCkgbGlic3NoLmEgJChTS0hFTFBFUl9P
QkpTKQorIAkkKExEKSAtbyAkQCAkKFNLSEVMUEVSX09CSlMpICQoTERGTEFHUykgLWxzc2ggLWxv
cGVuYnNkLWNvbXBhdCAtbHNzaCAtbG9wZW5ic2QtY29tcGF0ICQoTElCUykgJChMSUJGSURPMikK
ICAKICtjdHItY2F2c3Rlc3QkKEVYRUVYVCk6ICQoTElCQ09NUEFUKSBsaWJzc2guYSBjdHItY2F2
c3Rlc3QubwogKwkkKExEKSAtbyAkQCBjdHItY2F2c3Rlc3QubyAkKExERkxBR1MpIC1sc3NoIC1s
b3BlbmJzZC1jb21wYXQgLWxzc2ggLWxmaXBzY2hlY2sgJChMSUJTKQogKwotIHNzaC1rZXlzY2Fu
JChFWEVFWFQpOiAkKExJQkNPTVBBVCkgbGlic3NoLmEgc3NoLWtleXNjYW4ubwotIAkkKExEKSAt
byAkQCBzc2gta2V5c2Nhbi5vICQoTERGTEFHUykgLWxzc2ggLWxvcGVuYnNkLWNvbXBhdCAtbGZp
cHNjaGVjayAtbHNzaCAkKExJQlMpCisgc3NoLWtleXNjYW4kKEVYRUVYVCk6ICQoTElCQ09NUEFU
KSBsaWJzc2guYSAkKFNTSEtFWVNDQU5fT0JKUykKKyAJJChMRCkgLW8gJEAgJChTU0hLRVlTQ0FO
X09CSlMpICQoTERGTEFHUykgLWxzc2ggLWxvcGVuYnNkLWNvbXBhdCAtbHNzaCAtbGZpcHNjaGVj
ayAkKExJQlMpCiAgCi1AQCAtMzQ4LDYgKzM1Miw3IEBAIGluc3RhbGwtZmlsZXM6Ci0gCSQoSU5T
VEFMTCkgLW0gMDc1NSAkKFNUUklQX09QVCkgc3NoLWtleXNjYW4kKEVYRUVYVCkgJChERVNURElS
KSQoYmluZGlyKS9zc2gta2V5c2NhbiQoRVhFRVhUKQotIAkkKElOU1RBTEwpIC1tIDA3NTUgJChT
VFJJUF9PUFQpIHNzaGQkKEVYRUVYVCkgJChERVNURElSKSQoc2JpbmRpcikvc3NoZCQoRVhFRVhU
KQorQEAgLTM4OSw2ICszOTMsNyBAQCBpbnN0YWxsLWZpbGVzOgogIAkkKElOU1RBTEwpIC1tIDQ3
MTEgJChTVFJJUF9PUFQpIHNzaC1rZXlzaWduJChFWEVFWFQpICQoREVTVERJUikkKFNTSF9LRVlT
SUdOKSQoRVhFRVhUKQotKwkkKElOU1RBTEwpIC1tIDA3NTUgJChTVFJJUF9PUFQpIGN0ci1jYXZz
dGVzdCQoRVhFRVhUKSAkKERFU1RESVIpJChsaWJleGVjZGlyKS9jdHItY2F2c3Rlc3QkKEVYRUVY
VCkKICAJJChJTlNUQUxMKSAtbSAwNzU1ICQoU1RSSVBfT1BUKSBzc2gtcGtjczExLWhlbHBlciQo
RVhFRVhUKSAkKERFU1RESVIpJChTU0hfUEtDUzExX0hFTFBFUikkKEVYRUVYVCkKKyAJJChJTlNU
QUxMKSAtbSAwNzU1ICQoU1RSSVBfT1BUKSBzc2gtc2staGVscGVyJChFWEVFWFQpICQoREVTVERJ
UikkKFNTSF9TS19IRUxQRVIpJChFWEVFWFQpCisrCSQoSU5TVEFMTCkgLW0gMDc1NSAkKFNUUklQ
X09QVCkgY3RyLWNhdnN0ZXN0JChFWEVFWFQpICQoREVTVERJUikkKGxpYmV4ZWNkaXIpL2N0ci1j
YXZzdGVzdCQoRVhFRVhUKQogIAkkKElOU1RBTEwpIC1tIDA3NTUgJChTVFJJUF9PUFQpIHNmdHAk
KEVYRUVYVCkgJChERVNURElSKSQoYmluZGlyKS9zZnRwJChFWEVFWFQpCiAgCSQoSU5TVEFMTCkg
LW0gMDc1NSAkKFNUUklQX09QVCkgc2Z0cC1zZXJ2ZXIkKEVYRUVYVCkgJChERVNURElSKSQoU0ZU
UF9TRVJWRVIpJChFWEVFWFQpCisgCSQoSU5TVEFMTCkgLW0gNjQ0IHNzaC4xLm91dCAkKERFU1RE
SVIpJChtYW5kaXIpLyQobWFuc3ViZGlyKTEvc3NoLjEKIGRpZmYgLS1naXQgYS9jdHItY2F2c3Rl
c3QuYyBiL2N0ci1jYXZzdGVzdC5jCiBuZXcgZmlsZSBtb2RlIDEwMDY0NAogaW5kZXggMDAwMDAw
MC4uMGQ0Nzc2YgpkaWZmIC0tZ2l0IGEvcmVjaXBlcy1jb25uZWN0aXZpdHkvb3BlbnNzaC9vcGVu
c3NoL29wZW5zc2gtNi43cDEta2RmLWNhdnMucGF0Y2ggYi9yZWNpcGVzLWNvbm5lY3Rpdml0eS9v
cGVuc3NoL29wZW5zc2gvb3BlbnNzaC02LjdwMS1rZGYtY2F2cy5wYXRjaAppbmRleCAwY2JjY2Q3
Li40YTBhZTJjIDEwMDY0NAotLS0gYS9yZWNpcGVzLWNvbm5lY3Rpdml0eS9vcGVuc3NoL29wZW5z
c2gvb3BlbnNzaC02LjdwMS1rZGYtY2F2cy5wYXRjaAorKysgYi9yZWNpcGVzLWNvbm5lY3Rpdml0
eS9vcGVuc3NoL29wZW5zc2gvb3BlbnNzaC02LjdwMS1rZGYtY2F2cy5wYXRjaApAQCAtMSw0ICsx
LDQgQEAKLUZyb20gNmI2ZTBmN2Q0YTUxNzM3OGE4ZDUzYjg0ZmJlZjJjZmM3OGM0MmY0NiBNb24g
U2VwIDE3IDAwOjAwOjAwIDIwMDEKK0Zyb20gYTJjMmMyMTI3NWVhNzAxYzJmMGFlNTRiZjU5NDVj
OTI4NjBlOTIwOCBNb24gU2VwIDE3IDAwOjAwOjAwIDIwMDEKIEZyb206IEhvbmd4dSBKaWEgPGEg
Y2xhc3M9Im1vei10eHQtbGluay1yZmMyMzk2RSIgaHJlZj0ibWFpbHRvOmhvbmd4dS5qaWFAd2lu
ZHJpdmVyLmNvbSI+Jmx0O2hvbmd4dS5qaWFAd2luZHJpdmVyLmNvbSZndDs8L2E+CiBEYXRlOiBT
YXQsIDIxIERlYyAyMDE5IDEzOjA4OjUyICswODAwCiBTdWJqZWN0OiBbUEFUQ0hdIGFkZCBLREYg
Q0FWUyB0ZXN0IGRyaXZlcgpAQCAtMTksNiArMTksNyBAQCBTaWduZWQtb2ZmLWJ5OiBNYXJrIEhh
dGxlIDxhIGNsYXNzPSJtb3otdHh0LWxpbmstcmZjMjM5NkUiIGhyZWY9Im1haWx0bzptYXJrLmhh
dGxlQHdpbmRyaXZlci5jb20iPiZsdDttYXJrLmhhdGxlQHdpbmRyaXZlci5jb20mZ3Q7PC9hPgog
VXBzdHJlYW0tU3RhdHVzOiBJbmFwcHJvcHJpYXRlIFtvZSBzcGVjaWZpY10KIAogU2lnbmVkLW9m
Zi1ieTogSG9uZ3h1IEppYSA8YSBjbGFzcz0ibW96LXR4dC1saW5rLXJmYzIzOTZFIiBocmVmPSJt
YWlsdG86aG9uZ3h1LmppYUB3aW5kcml2ZXIuY29tIj4mbHQ7aG9uZ3h1LmppYUB3aW5kcml2ZXIu
Y29tJmd0OzwvYT4KK1NpZ25lZC1vZmYtYnk6IFlpIFpoYW8gPGEgY2xhc3M9Im1vei10eHQtbGlu
ay1yZmMyMzk2RSIgaHJlZj0ibWFpbHRvOnlpLnpoYW9Ad2luZHJpdmVyLmNvbSI+Jmx0O3lpLnpo
YW9Ad2luZHJpdmVyLmNvbSZndDs8L2E+CiAtLS0KICBNYWtlZmlsZS5pbiAgICAgICAgfCAgIDgg
Ky0KICBzc2gtY2F2cy5jICAgICAgICAgfCAzODcgKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysKQEAgLTI4LDcgKzI5LDcgQEAgU2lnbmVkLW9mZi1i
eTogSG9uZ3h1IEppYSA8YSBjbGFzcz0ibW96LXR4dC1saW5rLXJmYzIzOTZFIiBocmVmPSJtYWls
dG86aG9uZ3h1LmppYUB3aW5kcml2ZXIuY29tIj4mbHQ7aG9uZ3h1LmppYUB3aW5kcml2ZXIuY29t
Jmd0OzwvYT4KICBjcmVhdGUgbW9kZSAxMDA2NDQgc3NoLWNhdnNfZHJpdmVyLnBsCiAKIGRpZmYg
LS1naXQgYS9NYWtlZmlsZS5pbiBiL01ha2VmaWxlLmluCi1pbmRleCAxZDZlMjk4Li5iZTI4NDEx
IDEwMDY0NAoraW5kZXggMGFjY2Q4OS4uNTc4OTMyMyAxMDA2NDQKIC0tLSBhL01ha2VmaWxlLmlu
CiArKysgYi9NYWtlZmlsZS5pbgogQEAgLTI0LDYgKzI0LDcgQEAgQVNLUEFTU19QUk9HUkFNPSQo
bGliZXhlY2Rpcikvc3NoLWFza3Bhc3MKQEAgLTM3LDM2ICszOCwzNiBAQCBpbmRleCAxZDZlMjk4
Li5iZTI4NDExIDEwMDY0NAogIENUUl9DQVZTVEVTVD0kKGxpYmV4ZWNkaXIpL2N0ci1jYXZzdGVz
dAogK1NTSF9DQVZTPSQobGliZXhlY2Rpcikvc3NoLWNhdnMKICBTU0hfUEtDUzExX0hFTFBFUj0k
KGxpYmV4ZWNkaXIpL3NzaC1wa2NzMTEtaGVscGVyCisgU1NIX1NLX0hFTFBFUj0kKGxpYmV4ZWNk
aXIpL3NzaC1zay1oZWxwZXIKICBQUklWU0VQX1BBVEg9QFBSSVZTRVBfUEFUSEAKLSBTU0hfUFJJ
VlNFUF9VU0VSPUBTU0hfUFJJVlNFUF9VU0VSQAotQEAgLTYxLDcgKzYyLDcgQEAgRVhFRVhUPUBF
WEVFWFRACi0gTUFORk1UPUBNQU5GTVRACi0gTUtESVJfUD1ATUtESVJfUEAKK0BAIC02OSw3ICs3
MCw3IEBAIE1LRElSX1A9QE1LRElSX1BACiAgCi0tVEFSR0VUUz1zc2gkKEVYRUVYVCkgc3NoZCQo
RVhFRVhUKSBzc2gtYWRkJChFWEVFWFQpIHNzaC1rZXlnZW4kKEVYRUVYVCkgc3NoLWtleXNjYW4k
e0VYRUVYVH0gc3NoLWtleXNpZ24ke0VYRUVYVH0gc3NoLXBrY3MxMS1oZWxwZXIkKEVYRUVYVCkg
c3NoLWFnZW50JChFWEVFWFQpIHNjcCQoRVhFRVhUKSBzZnRwLXNlcnZlciQoRVhFRVhUKSBzZnRw
JChFWEVFWFQpIGN0ci1jYXZzdGVzdCQoRVhFRVhUKQotK1RBUkdFVFM9c3NoJChFWEVFWFQpIHNz
aGQkKEVYRUVYVCkgc3NoLWFkZCQoRVhFRVhUKSBzc2gta2V5Z2VuJChFWEVFWFQpIHNzaC1rZXlz
Y2FuJHtFWEVFWFR9IHNzaC1rZXlzaWduJHtFWEVFWFR9IHNzaC1wa2NzMTEtaGVscGVyJChFWEVF
WFQpIHNzaC1hZ2VudCQoRVhFRVhUKSBzY3AkKEVYRUVYVCkgc2Z0cC1zZXJ2ZXIkKEVYRUVYVCkg
c2Z0cCQoRVhFRVhUKSBjdHItY2F2c3Rlc3QkKEVYRUVYVCkgc3NoLWNhdnMkKEVYRUVYVCkKKyAu
U1VGRklYRVM6IC5sbworIAorLVRBUkdFVFM9c3NoJChFWEVFWFQpIHNzaGQkKEVYRUVYVCkgc3No
LWFkZCQoRVhFRVhUKSBzc2gta2V5Z2VuJChFWEVFWFQpIHNzaC1rZXlzY2FuJHtFWEVFWFR9IHNz
aC1rZXlzaWduJHtFWEVFWFR9IHNzaC1wa2NzMTEtaGVscGVyJChFWEVFWFQpIHNzaC1hZ2VudCQo
RVhFRVhUKSBzY3AkKEVYRUVYVCkgc2Z0cC1zZXJ2ZXIkKEVYRUVYVCkgc2Z0cCQoRVhFRVhUKSBz
c2gtc2staGVscGVyJChFWEVFWFQpIGN0ci1jYXZzdGVzdCQoRVhFRVhUKQorK1RBUkdFVFM9c3No
JChFWEVFWFQpIHNzaGQkKEVYRUVYVCkgc3NoLWFkZCQoRVhFRVhUKSBzc2gta2V5Z2VuJChFWEVF
WFQpIHNzaC1rZXlzY2FuJHtFWEVFWFR9IHNzaC1rZXlzaWduJHtFWEVFWFR9IHNzaC1wa2NzMTEt
aGVscGVyJChFWEVFWFQpIHNzaC1hZ2VudCQoRVhFRVhUKSBzY3AkKEVYRUVYVCkgc2Z0cC1zZXJ2
ZXIkKEVYRUVYVCkgc2Z0cCQoRVhFRVhUKSBzc2gtc2staGVscGVyJChFWEVFWFQpIGN0ci1jYXZz
dGVzdCQoRVhFRVhUKSBzc2gtY2F2cyQoRVhFRVhUKQogIAogIFhNU1NfT0JKUz1cCiAgCXNzaC14
bXNzLm8gXAotQEAgLTIwMiw2ICsyMDMsOSBAQCBzc2gtcGtjczExLWhlbHBlciQoRVhFRVhUKTog
JChMSUJDT01QQVQpIGxpYnNzaC5hIHNzaC1wa2NzMTEtaGVscGVyLm8gc3NoLXBrY3MxMQorQEAg
LTIzNiw2ICsyMzcsOSBAQCBzc2gtc2staGVscGVyJChFWEVFWFQpOiAkKExJQkNPTVBBVCkgbGli
c3NoLmEgJChTS0hFTFBFUl9PQkpTKQogIGN0ci1jYXZzdGVzdCQoRVhFRVhUKTogJChMSUJDT01Q
QVQpIGxpYnNzaC5hIGN0ci1jYXZzdGVzdC5vCiAgCSQoTEQpIC1vICRAIGN0ci1jYXZzdGVzdC5v
ICQoTERGTEFHUykgLWxzc2ggLWxvcGVuYnNkLWNvbXBhdCAtbHNzaCAtbGZpcHNjaGVjayAkKExJ
QlMpCiAgCi0rc3NoLWNhdnMkKEVYRUVYVCk6ICQoTElCQ09NUEFUKSBsaWJzc2guYSBzc2gtY2F2
cy5vCi0rCSQoTEQpIC1vICRAIHNzaC1jYXZzLm8gJChMREZMQUdTKSAtbHNzaCAtbG9wZW5ic2Qt
Y29tcGF0ICQoTElCUykKKytzc2gtY2F2cyQoRVhFRVhUKTogJChMSUJDT01QQVQpIGxpYnNzaC5h
IHNzaC1jYXZzLm8gJChTS09CSlMpCisrCSQoTEQpIC1vICRAIHNzaC1jYXZzLm8gJChTS09CSlMp
ICQoTERGTEFHUykgLWxzc2ggLWxvcGVuYnNkLWNvbXBhdCAkKExJQlMpCiArCi0gc3NoLWtleXNj
YW4kKEVYRUVYVCk6ICQoTElCQ09NUEFUKSBsaWJzc2guYSBzc2gta2V5c2Nhbi5vCi0gCSQoTEQp
IC1vICRAIHNzaC1rZXlzY2FuLm8gJChMREZMQUdTKSAtbHNzaCAtbG9wZW5ic2QtY29tcGF0IC1s
Zmlwc2NoZWNrIC1sc3NoICQoTElCUykKKyBzc2gta2V5c2NhbiQoRVhFRVhUKTogJChMSUJDT01Q
QVQpIGxpYnNzaC5hICQoU1NIS0VZU0NBTl9PQkpTKQorIAkkKExEKSAtbyAkQCAkKFNTSEtFWVND
QU5fT0JKUykgJChMREZMQUdTKSAtbHNzaCAtbG9wZW5ic2QtY29tcGF0IC1sc3NoIC1sZmlwc2No
ZWNrICQoTElCUykKICAKLUBAIC0zNTMsNiArMzU3LDggQEAgaW5zdGFsbC1maWxlczoKLSAJJChJ
TlNUQUxMKSAtbSAwNzU1ICQoU1RSSVBfT1BUKSBzc2hkJChFWEVFWFQpICQoREVTVERJUikkKHNi
aW5kaXIpL3NzaGQkKEVYRUVYVCkKLSAJJChJTlNUQUxMKSAtbSA0NzExICQoU1RSSVBfT1BUKSBz
c2gta2V5c2lnbiQoRVhFRVhUKSAkKERFU1RESVIpJChTU0hfS0VZU0lHTikkKEVYRUVYVCkKK0BA
IC0zOTQsNiArMzk4LDggQEAgaW5zdGFsbC1maWxlczoKKyAJJChJTlNUQUxMKSAtbSAwNzU1ICQo
U1RSSVBfT1BUKSBzc2gtcGtjczExLWhlbHBlciQoRVhFRVhUKSAkKERFU1RESVIpJChTU0hfUEtD
UzExX0hFTFBFUikkKEVYRUVYVCkKKyAJJChJTlNUQUxMKSAtbSAwNzU1ICQoU1RSSVBfT1BUKSBz
c2gtc2staGVscGVyJChFWEVFWFQpICQoREVTVERJUikkKFNTSF9TS19IRUxQRVIpJChFWEVFWFQp
CiAgCSQoSU5TVEFMTCkgLW0gMDc1NSAkKFNUUklQX09QVCkgY3RyLWNhdnN0ZXN0JChFWEVFWFQp
ICQoREVTVERJUikkKGxpYmV4ZWNkaXIpL2N0ci1jYXZzdGVzdCQoRVhFRVhUKQogKwkkKElOU1RB
TEwpIC1tIDA3NTUgJChTVFJJUF9PUFQpIHNzaC1jYXZzJChFWEVFWFQpICQoREVTVERJUikkKGxp
YmV4ZWNkaXIpL3NzaC1jYXZzJChFWEVFWFQpCiArCSQoSU5TVEFMTCkgLW0gMDc1NSAkKFNUUklQ
X09QVCkgc3NoLWNhdnNfZHJpdmVyLnBsICQoREVTVERJUikkKGxpYmV4ZWNkaXIpL3NzaC1jYXZz
X2RyaXZlci5wbAotIAkkKElOU1RBTEwpIC1tIDA3NTUgJChTVFJJUF9PUFQpIHNzaC1wa2NzMTEt
aGVscGVyJChFWEVFWFQpICQoREVTVERJUikkKFNTSF9QS0NTMTFfSEVMUEVSKSQoRVhFRVhUKQog
IAkkKElOU1RBTEwpIC1tIDA3NTUgJChTVFJJUF9PUFQpIHNmdHAkKEVYRUVYVCkgJChERVNURElS
KSQoYmluZGlyKS9zZnRwJChFWEVFWFQpCiAgCSQoSU5TVEFMTCkgLW0gMDc1NSAkKFNUUklQX09Q
VCkgc2Z0cC1zZXJ2ZXIkKEVYRUVYVCkgJChERVNURElSKSQoU0ZUUF9TRVJWRVIpJChFWEVFWFQp
CisgCSQoSU5TVEFMTCkgLW0gNjQ0IHNzaC4xLm91dCAkKERFU1RESVIpJChtYW5kaXIpLyQobWFu
c3ViZGlyKTEvc3NoLjEKIGRpZmYgLS1naXQgYS9zc2gtY2F2cy5jIGIvc3NoLWNhdnMuYwogbmV3
IGZpbGUgbW9kZSAxMDA2NDQKIGluZGV4IDAwMDAwMDAuLmI3NGFlN2YKZGlmZiAtLWdpdCBhL3Jl
Y2lwZXMtY29ubmVjdGl2aXR5L29wZW5zc2gvb3BlbnNzaF9maXBzLmluYyBiL3JlY2lwZXMtY29u
bmVjdGl2aXR5L29wZW5zc2gvb3BlbnNzaF9maXBzLmluYwppbmRleCAwZWFmYjk4Li5jNzQ1MzJm
IDEwMDY0NAotLS0gYS9yZWNpcGVzLWNvbm5lY3Rpdml0eS9vcGVuc3NoL29wZW5zc2hfZmlwcy5p
bmMKKysrIGIvcmVjaXBlcy1jb25uZWN0aXZpdHkvb3BlbnNzaC9vcGVuc3NoX2ZpcHMuaW5jCkBA
IC02LDcgKzYsNyBAQCBERVBFTkRTICs9ICIgXAogUlJFQ09NTUVORFNfJHtQTn0tc3NoZF9yZW1v
dmUgPSAicm5nLXRvb2xzIgogCiBTUkNfVVJJICs9ICIgXAotICAgIDxhIGNsYXNzPSJtb3otdHh0
LWxpbmstZnJlZXRleHQiIGhyZWY9ImZpbGU6Ly8wMDAxLW9wZW5zc2gtOC4wcDEtZmlwcy5wYXRj
aCI+ZmlsZTovLzAwMDEtb3BlbnNzaC04LjBwMS1maXBzLnBhdGNoPC9hPiBcCisgICAgPGEgY2xh
c3M9Im1vei10eHQtbGluay1mcmVldGV4dCIgaHJlZj0iZmlsZTovLzAwMDEtb3BlbnNzaC04LjJw
MS1maXBzLnBhdGNoIj5maWxlOi8vMDAwMS1vcGVuc3NoLTguMnAxLWZpcHMucGF0Y2g8L2E+IFwK
ICAgICA8YSBjbGFzcz0ibW96LXR4dC1saW5rLWZyZWV0ZXh0IiBocmVmPSJmaWxlOi8vMDAwMS1j
b25kaXRpb25hbC1lbmFibGUtZmlwcy1tb2RlLnBhdGNoIj5maWxlOi8vMDAwMS1jb25kaXRpb25h
bC1lbmFibGUtZmlwcy1tb2RlLnBhdGNoPC9hPiBcCiAgICAgPGEgY2xhc3M9Im1vei10eHQtbGlu
ay1mcmVldGV4dCIgaHJlZj0iZmlsZTovL29wZW5zc2gtNi42cDEtY3RyLWNhdnN0ZXN0LnBhdGNo
Ij5maWxlOi8vb3BlbnNzaC02LjZwMS1jdHItY2F2c3Rlc3QucGF0Y2g8L2E+IFwKICAgICA8YSBj
bGFzcz0ibW96LXR4dC1saW5rLWZyZWV0ZXh0IiBocmVmPSJmaWxlOi8vb3BlbnNzaC02LjdwMS1r
ZGYtY2F2cy5wYXRjaCI+ZmlsZTovL29wZW5zc2gtNi43cDEta2RmLWNhdnMucGF0Y2g8L2E+IFwK
PC9wcmU+CiAgICAgIDxicj4KICAgICAgPGZpZWxkc2V0IGNsYXNzPSJtaW1lQXR0YWNobWVudEhl
YWRlciI+PC9maWVsZHNldD4KICAgICAgPHByZSBjbGFzcz0ibW96LXF1b3RlLXByZSIgd3JhcD0i
Ij4KPC9wcmU+CiAgICA8L2Jsb2NrcXVvdGU+CiAgPC9ib2R5Pgo8L2h0bWw+Cg==

--------------81A62EB30B129063983A73A6--
