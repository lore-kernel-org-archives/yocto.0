Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0791CE00C91; Thu, 17 Jan 2019 16:23:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2C31E00C91
	for <yocto@yoctoproject.org>; Thu, 17 Jan 2019 16:23:53 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x0I0NqH2000027
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 17 Jan 2019 16:23:52 -0800 (PST)
Received: from localhost (128.224.163.192) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Thu, 17 Jan 2019 16:23:51 -0800
From: Yi Zhao <yi.zhao@windriver.com>
To: <joe_macdonald@mentor.com>, <flihp@twobit.us>, <yocto@yoctoproject.org>
Date: Fri, 18 Jan 2019 08:23:45 +0800
Message-ID: <1547771025-8037-2-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1547771025-8037-1-git-send-email-yi.zhao@windriver.com>
References: <1547771025-8037-1-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.192]
Subject: [meta-selinux][PATCH 2/2] openssh: update sshd_config
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
X-List-Received-Date: Fri, 18 Jan 2019 00:23:55 -0000
Content-Type: text/plain

Update sshd_config based on openssh 7.9p1. Drop the deprecated option
UsePrivilegeSeparation

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-connectivity/openssh/files/sshd_config | 53 +++++++++++++-------------
 1 file changed, 26 insertions(+), 27 deletions(-)

diff --git a/recipes-connectivity/openssh/files/sshd_config b/recipes-connectivity/openssh/files/sshd_config
index 2110463..1c33ad0 100644
--- a/recipes-connectivity/openssh/files/sshd_config
+++ b/recipes-connectivity/openssh/files/sshd_config
@@ -1,4 +1,4 @@
-#	$OpenBSD: sshd_config,v 1.80 2008/07/02 02:24:18 djm Exp $
+#	$OpenBSD: sshd_config,v 1.102 2018/02/16 02:32:40 djm Exp $
 
 # This is the sshd server system-wide configuration file.  See
 # sshd_config(5) for more information.
@@ -7,7 +7,7 @@
 
 # The strategy used for options in the default sshd_config shipped with
 # OpenSSH is to specify options with their default value where
-# possible, but leave them commented.  Uncommented options change a
+# possible, but leave them commented.  Uncommented options override the
 # default value.
 
 #Port 22
@@ -15,44 +15,40 @@
 #ListenAddress 0.0.0.0
 #ListenAddress ::
 
-# Disable legacy (protocol version 1) support in the server for new
-# installations. In future the default will change to require explicit
-# activation of protocol 1
-Protocol 2
-
-# HostKey for protocol version 1
-#HostKey /etc/ssh/ssh_host_key
-# HostKeys for protocol version 2
 #HostKey /etc/ssh/ssh_host_rsa_key
-#HostKey /etc/ssh/ssh_host_dsa_key
+#HostKey /etc/ssh/ssh_host_ecdsa_key
+#HostKey /etc/ssh/ssh_host_ed25519_key
 
-# Lifetime and size of ephemeral version 1 server key
-#KeyRegenerationInterval 1h
-#ServerKeyBits 1024
+# Ciphers and keying
+#RekeyLimit default none
 
 # Logging
-# obsoletes QuietMode and FascistLogging
 #SyslogFacility AUTH
 #LogLevel INFO
 
 # Authentication:
 
 #LoginGraceTime 2m
-#PermitRootLogin yes
+#PermitRootLogin prohibit-password
 #StrictModes yes
 #MaxAuthTries 6
 #MaxSessions 10
 
-#RSAAuthentication yes
 #PubkeyAuthentication yes
+
+# The default is to check both .ssh/authorized_keys and .ssh/authorized_keys2
+# but this is overridden so installations will only check .ssh/authorized_keys
 #AuthorizedKeysFile	.ssh/authorized_keys
 
+#AuthorizedPrincipalsFile none
+
+#AuthorizedKeysCommand none
+#AuthorizedKeysCommandUser nobody
+
 # For this to work you will also need host keys in /etc/ssh/ssh_known_hosts
-#RhostsRSAAuthentication no
-# similar for protocol version 2
 #HostbasedAuthentication no
 # Change to yes if you don't trust ~/.ssh/known_hosts for
-# RhostsRSAAuthentication and HostbasedAuthentication
+# HostbasedAuthentication
 #IgnoreUserKnownHosts no
 # Don't read the user's ~/.rhosts and ~/.shosts files
 #IgnoreRhosts yes
@@ -61,7 +57,8 @@ Protocol 2
 #PasswordAuthentication yes
 #PermitEmptyPasswords no
 
-# Change to no to disable s/key passwords
+# Change to yes to enable challenge-response passwords (beware issues with
+# some PAM modules and threads)
 ChallengeResponseAuthentication no
 
 # Kerberos options
@@ -74,8 +71,8 @@ ChallengeResponseAuthentication no
 #GSSAPIAuthentication no
 #GSSAPICleanupCredentials yes
 
-# Set this to 'yes' to enable PAM authentication, account processing, 
-# and session processing. If this is enabled, PAM authentication will 
+# Set this to 'yes' to enable PAM authentication, account processing,
+# and session processing. If this is enabled, PAM authentication will
 # be allowed through the ChallengeResponseAuthentication and
 # PasswordAuthentication.  Depending on your PAM configuration,
 # PAM authentication via ChallengeResponseAuthentication may bypass
@@ -83,7 +80,7 @@ ChallengeResponseAuthentication no
 # If you just want the PAM account and session checks to run without
 # PAM authentication, then enable this but set PasswordAuthentication
 # and ChallengeResponseAuthentication to 'no'.
-UsePAM yes 
+UsePAM yes
 
 #AllowAgentForwarding yes
 #AllowTcpForwarding yes
@@ -91,20 +88,21 @@ UsePAM yes
 #X11Forwarding no
 #X11DisplayOffset 10
 #X11UseLocalhost yes
+#PermitTTY yes
 #PrintMotd yes
 #PrintLastLog yes
 #TCPKeepAlive yes
 #UseLogin no
-UsePrivilegeSeparation yes
 #PermitUserEnvironment no
 Compression no
 ClientAliveInterval 15
 ClientAliveCountMax 4
-#UseDNS yes
+#UseDNS no
 #PidFile /var/run/sshd.pid
-#MaxStartups 10
+#MaxStartups 10:30:100
 #PermitTunnel no
 #ChrootDirectory none
+#VersionAddendum none
 
 # no default banner path
 #Banner none
@@ -116,4 +114,5 @@ Subsystem	sftp	/usr/libexec/sftp-server
 #Match User anoncvs
 #	X11Forwarding no
 #	AllowTcpForwarding no
+#	PermitTTY no
 #	ForceCommand cvs server
-- 
2.7.4


