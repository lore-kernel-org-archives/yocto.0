Return-Path: <ranjitsinhrathod1991@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EC84C433EF
	for <webhook@archiver.kernel.org>; Wed, 16 Mar 2022 12:10:10 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com
 [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web11.24251.1647432599071289745
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Mar 2022 05:10:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=DNExWMMt;
 spf=permerror,
 err=parse error for token &{10 18 _netblocks.google.com}: temporary DNS error
 (domain: gmail.com, ip: 209.85.216.44,
 mailfrom: ranjitsinhrathod1991@gmail.com)
Received: by mail-pj1-f44.google.com with SMTP id
 rm8-20020a17090b3ec800b001c55791fdb1so2214564pjb.1
        for <yocto@lists.yoctoproject.org>;
 Wed, 16 Mar 2022 05:09:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id;
        bh=sHMPumzpKvpoeECGbn3hDku10N5gemO7BE8ILgJ//2k=;
        b=DNExWMMt1XkBRYmAyNkIB1xipnUSr8GBUKhAM8QTeto96/yp2CmCbp0ELLrvAeW/kX
         w+197KJjsC/dQqW2rjV2rjCV8xv+ETFfg+XwJhybu8Xawv+Q6XN7TTaiCldh2dcF4GLt
         i06rmkA9BMf2vekTUwDTNL5MJhk8WWjzpCL2X/nevUFGRlAkarYY0v2mYPvAPyVwOI16
         f0XHngrinYa1eLkfx1D2Pa3/S6UMMd2WixofL8qixNEgD9zGU2PXOXt8QkqTUaU2PYkp
         a04r8SjPdnLVutcq5PGp+Et/1awERgjZ2ZnN8dKOYfQL2fXVXz9HBRbG83CbVhUM7svI
         +jUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=sHMPumzpKvpoeECGbn3hDku10N5gemO7BE8ILgJ//2k=;
        b=YX0b1RIn6EmFeWP1QQKr0u9I6GGb01icHjjohzFVQSC1nnsrIqPoPl+cifE65ILxlN
         SwUFIOJlvkjHNRYLXlzShYaHj6LgKogzLw9iL4s9OB0Egv69Vh2CznADpbjslWR56XxA
         e/tRa60Cyjj/2+aSExjxiZIjVU+rTK00LzKZuaj7wPHtluiJ3GDA+dfB+4sc9AeiX4Aj
         5rLpfM5oir9e08GId7ZoevZOkITm/rKpTLnvbfOwjSy/Up+t+TAH70faZgsSQSP3LGl3
         Bq3xMw5JMY9lvwQyjCXwB3FAEAXFj4/MufsQYS44fb69SSWFbXmR9Vwwq8Mglq9Od4Jg
         v9ew==
X-Gm-Message-State: AOAM530XSwasr5osQ0fYbZ0UEiXD1egEQ1DNDvKdCaA+L6rbVR9SlvWq
	dun3oKwGnb0ekAFk9t0pCc6AasKRUKw=
X-Google-Smtp-Source: 
 ABdhPJzMpLg7d0E2LuJ3KrjsspipF3X6zCaK+TEWu3vqaVTXF/1zb7zLsYPHwftPwtbwtb8tnsIXJQ==
X-Received: by 2002:a17:903:24f:b0:153:32c0:7d6f with SMTP id
 j15-20020a170903024f00b0015332c07d6fmr26151301plh.36.1647432598082;
        Wed, 16 Mar 2022 05:09:58 -0700 (PDT)
Received: from localhost.localdomain ([103.238.104.227])
        by smtp.gmail.com with ESMTPSA id
 s6-20020a056a0008c600b004f667b8a6b6sm3241139pfu.193.2022.03.16.05.09.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Mar 2022 05:09:57 -0700 (PDT)
From: Ranjitsinh Rathod <ranjitsinhrathod1991@gmail.com>
To: yocto@lists.yoctoproject.org,
	joe@deserted.net,
	ranjitsinh.rathod@kpit.com
Cc: nisha.m.parrakat@bmw.de,
	Nisha Parrakat <Nisha.Parrakat@kpit.com>
Subject: [meta-selinux][dunfell][PATCH] openssh: don't overwrite sshd_config
 unconditionally
Date: Wed, 16 Mar 2022 17:39:40 +0530
Message-Id: <20220316120940.7349-1-ranjitsinhrathod1991@gmail.com>
X-Mailer: git-send-email 2.17.1
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Mar 2022 12:10:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56468

From: Nisha Parrakat <Nisha.Parrakat@kpit.com>

The current implementation was overwriting the sshd_config and sshd
assuming PAM is needed by default

openssh should use the default sshd_config packaged with the component
if no distro specific needs are present and not overwrite the full
sshd_config file

1. If PAM is enabled as a distro then enable the UsePAM option in sshd_config
2. Moved the file sshd to pam directory so that when pam is enabled,
   then replace the default from poky by installing the same

Signed-off-by: Ranjitsinh Rathod <ranjitsinh.rathod@kpit.com>
Signed-off-by: Ranjitsinh Rathod <ranjitsinhrathod1991@gmail.com>
---
 .../openssh/files/{ => pam}/sshd              |   0
 .../openssh/files/sshd_config                 | 118 ------------------
 .../openssh/openssh_%.bbappend                |  14 +++
 3 files changed, 14 insertions(+), 118 deletions(-)
 rename recipes-connectivity/openssh/files/{ => pam}/sshd (100%)
 delete mode 100644 recipes-connectivity/openssh/files/sshd_config

diff --git a/recipes-connectivity/openssh/files/sshd b/recipes-connectivity/openssh/files/pam/sshd
similarity index 100%
rename from recipes-connectivity/openssh/files/sshd
rename to recipes-connectivity/openssh/files/pam/sshd
diff --git a/recipes-connectivity/openssh/files/sshd_config b/recipes-connectivity/openssh/files/sshd_config
deleted file mode 100644
index 1c33ad0..0000000
--- a/recipes-connectivity/openssh/files/sshd_config
+++ /dev/null
@@ -1,118 +0,0 @@
-#	$OpenBSD: sshd_config,v 1.102 2018/02/16 02:32:40 djm Exp $
-
-# This is the sshd server system-wide configuration file.  See
-# sshd_config(5) for more information.
-
-# This sshd was compiled with PATH=/usr/bin:/bin:/usr/sbin:/sbin
-
-# The strategy used for options in the default sshd_config shipped with
-# OpenSSH is to specify options with their default value where
-# possible, but leave them commented.  Uncommented options override the
-# default value.
-
-#Port 22
-#AddressFamily any
-#ListenAddress 0.0.0.0
-#ListenAddress ::
-
-#HostKey /etc/ssh/ssh_host_rsa_key
-#HostKey /etc/ssh/ssh_host_ecdsa_key
-#HostKey /etc/ssh/ssh_host_ed25519_key
-
-# Ciphers and keying
-#RekeyLimit default none
-
-# Logging
-#SyslogFacility AUTH
-#LogLevel INFO
-
-# Authentication:
-
-#LoginGraceTime 2m
-#PermitRootLogin prohibit-password
-#StrictModes yes
-#MaxAuthTries 6
-#MaxSessions 10
-
-#PubkeyAuthentication yes
-
-# The default is to check both .ssh/authorized_keys and .ssh/authorized_keys2
-# but this is overridden so installations will only check .ssh/authorized_keys
-#AuthorizedKeysFile	.ssh/authorized_keys
-
-#AuthorizedPrincipalsFile none
-
-#AuthorizedKeysCommand none
-#AuthorizedKeysCommandUser nobody
-
-# For this to work you will also need host keys in /etc/ssh/ssh_known_hosts
-#HostbasedAuthentication no
-# Change to yes if you don't trust ~/.ssh/known_hosts for
-# HostbasedAuthentication
-#IgnoreUserKnownHosts no
-# Don't read the user's ~/.rhosts and ~/.shosts files
-#IgnoreRhosts yes
-
-# To disable tunneled clear text passwords, change to no here!
-#PasswordAuthentication yes
-#PermitEmptyPasswords no
-
-# Change to yes to enable challenge-response passwords (beware issues with
-# some PAM modules and threads)
-ChallengeResponseAuthentication no
-
-# Kerberos options
-#KerberosAuthentication no
-#KerberosOrLocalPasswd yes
-#KerberosTicketCleanup yes
-#KerberosGetAFSToken no
-
-# GSSAPI options
-#GSSAPIAuthentication no
-#GSSAPICleanupCredentials yes
-
-# Set this to 'yes' to enable PAM authentication, account processing,
-# and session processing. If this is enabled, PAM authentication will
-# be allowed through the ChallengeResponseAuthentication and
-# PasswordAuthentication.  Depending on your PAM configuration,
-# PAM authentication via ChallengeResponseAuthentication may bypass
-# the setting of "PermitRootLogin without-password".
-# If you just want the PAM account and session checks to run without
-# PAM authentication, then enable this but set PasswordAuthentication
-# and ChallengeResponseAuthentication to 'no'.
-UsePAM yes
-
-#AllowAgentForwarding yes
-#AllowTcpForwarding yes
-#GatewayPorts no
-#X11Forwarding no
-#X11DisplayOffset 10
-#X11UseLocalhost yes
-#PermitTTY yes
-#PrintMotd yes
-#PrintLastLog yes
-#TCPKeepAlive yes
-#UseLogin no
-#PermitUserEnvironment no
-Compression no
-ClientAliveInterval 15
-ClientAliveCountMax 4
-#UseDNS no
-#PidFile /var/run/sshd.pid
-#MaxStartups 10:30:100
-#PermitTunnel no
-#ChrootDirectory none
-#VersionAddendum none
-
-# no default banner path
-#Banner none
-
-# override default of no subsystems
-Subsystem	sftp	/usr/libexec/sftp-server
-
-# Example of overriding settings on a per-user basis
-#Match User anoncvs
-#	X11Forwarding no
-#	AllowTcpForwarding no
-#	PermitTTY no
-#	ForceCommand cvs server
diff --git a/recipes-connectivity/openssh/openssh_%.bbappend b/recipes-connectivity/openssh/openssh_%.bbappend
index 7719d3b..99c51bf 100644
--- a/recipes-connectivity/openssh/openssh_%.bbappend
+++ b/recipes-connectivity/openssh/openssh_%.bbappend
@@ -1 +1,15 @@
 require ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', '${BPN}_selinux.inc', '', d)}
+
+# if pam feature is enabled in the distro then take sshd from the pam directory.
+FILESEXTRAPATHS_prepend := "${@bb.utils.contains('DISTRO_FEATURES', 'pam', '${THISDIR}/files/pam:', '', d)}"
+
+do_install_append(){
+
+    if [ "${@bb.utils.filter('DISTRO_FEATURES', 'pam', d)}" ]; then
+        # Make sure UsePAM entry is in the sshd_config file.
+        # If entry not present then append it.
+        grep -q 'UsePAM' "${D}/etc/ssh/sshd_config" && \
+        sed -i 's/.*UsePAM.*/UsePAM yes/' "${D}/etc/ssh/sshd_config" || \
+        echo 'UsePAM yes' >> "${D}/etc/ssh/sshd_config"
+    fi
+}
-- 
2.17.1


