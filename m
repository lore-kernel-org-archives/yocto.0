Received: from IND01-MA1-obe.outbound.protection.outlook.com (IND01-MA1-obe.outbound.protection.outlook.com [40.107.138.79])
 by mx.groups.io with SMTP id smtpd.web09.6861.1614330015402441568
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Feb 2021 01:00:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kpit.com header.s=selector1 header.b=fm2dKM9l;
 spf=pass (domain: kpit.com, ip: 40.107.138.79, mailfrom: purushottam.choudhary@kpit.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PyW+0eRK4nYeVxqms3mT5/DBSlDO6xu/BPsaemPwFRcxoCcW7xEZEPP9jw3DqqzG2ApWx0GCTazmlazsh7jyUWmMMPwCUwCnIMGwfxHruEK7z9f5ru1e3eTkXciNsIsxxLBxIlCj29hB+1G7387PPC5L4bMVrddVI1Lq1KUuM+F8pKeJXvM6+5UkRYs4wN1fcB/r65bWeCMwXSqCAPsw9E/r2IQVLeEUPWAoLDsjJev6A2o7dc4+9h0aPMGOcEhQ0PeNCjVjcvx/XzfnVFcGt8H7IOhHKVfLA+UjOXd1DyFXCQYT7T736kJIOa8dH0GIItGIzkBZOa2u5651dme8qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V/ZGhX7rxfWRbt5DLLxI8xQlADNgKlnLyiYeBTF9FDY=;
 b=NhA0oZDP+MSXvdsouo6q+Bp2Sf7W8Q0RCSlapG0MWcXufdoQxkYgz72pUYsUWBbwi23rjhf9RGGz7+LM6nlKs6NyZZfB7iO6t6v6+QMJvc2WiGy0G6p3RRDR5+0oFUXGUAdnOv/EhjuNqdHR+Wkcr9vY6WgpE9xWKoUr4R2x933kFoPEK9Nu5yooemK+ewY1WXCuNVS2swpGz3z1Eh3QOKiOxEjCY3otemClDjRDPnuLCvPGSiBalIEs211oXMohcFm8B2T0lVAFbecPK/Cttb/X14ERf0OibRabdSkEP6K3m8kFYncuLINBKvZX4Hjg/5P2KukOSODW0K3XjdpYJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kpit.com; dmarc=pass action=none header.from=kpit.com;
 dkim=pass header.d=kpit.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kpit.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V/ZGhX7rxfWRbt5DLLxI8xQlADNgKlnLyiYeBTF9FDY=;
 b=fm2dKM9lYrlJjgoppiZKwepcta+kyNWNPwS4ptpxqfHJMjAJrD+SZJkCw2EicbahYlurjsJCxflfMcFvAdi250kukCHy4uCm5aRL/zcK905RVLTfnMMeHoedg6uZgYJi+NWRSjwP2jLFCA8N7Rn3x8Mi3sG+ePBQgpFvDiBOMAM=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=kpit.com;
Received: from PNZPR01MB4224.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:1c::9)
 by PNZPR01MB4765.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:2e::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.28; Fri, 26 Feb
 2021 08:59:59 +0000
Received: from PNZPR01MB4224.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::f0db:6436:b4a0:7db7]) by PNZPR01MB4224.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::f0db:6436:b4a0:7db7%4]) with mapi id 15.20.3890.020; Fri, 26 Feb 2021
 08:59:59 +0000
From: "Purushottam choudhary" <purushottam.choudhary@kpit.com>
To: yocto@lists.yoctoproject.org
Cc: nisha.parrakat@kpit.com
Subject: [meta-selinux][PATCH] openssh: don't overwrite sshd_config unconditionally
Date: Fri, 26 Feb 2021 14:29:51 +0530
Message-Id: <1614329991-11002-1-git-send-email-purushottam.choudhary@kpit.com>
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [2405:201:a410:a809:1deb:a63b:63d3:cf4f]
X-ClientProxiedBy: PN1PR0101CA0027.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c00:c::13) To PNZPR01MB4224.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:1c::9)
Return-Path: purushottam.choudhary@kpit.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (2405:201:a410:a809:1deb:a63b:63d3:cf4f) by PN1PR0101CA0027.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c00:c::13) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.3890.19 via Frontend Transport; Fri, 26 Feb 2021 08:59:58 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 4b36d8d1-a665-4319-7c2e-08d8da34e4c3
X-MS-TrafficTypeDiagnostic: PNZPR01MB4765:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<PNZPR01MB4765289ED6EDC858E5BAB70C909D9@PNZPR01MB4765.INDPRD01.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	6UJSya5FWzx58NxnSOz7e4MfJ0QXFxOu5/Yq87IEKl0Qnl4BT9943zfejUsMuh+so2xSjGI5p06KpQIBQY7cU2b1hjar/jW7aEIWoQSn9WDrn0xVb3wMGbkSmQ9jHHAEwaSOFJg5xPD7fut4WHnNRm9iYfJn6xkA6WEluPddSKshiS+jmqk3NtCon53/edJ0cH+vSLCmFwRyMZQFAv6sirvn+xS/QEGU3jY1mj0PneyIaYOXMUtlVUfh+Ff5XAo02WIM1Z2d1vRkYO2sfLxz368zIsMrf0yNdbuysdZxKsmOcH4G6um1rOP58v1TCeYcHN6rp/fvj8EgFI+fvRtmaiUCqn0JmDaEOW+gS7b8ndq8LyV+vjHxh3RsqIcA9/TEJ0MkMwACKRtvgFiOfHYzczzg3O1N+6roqWogwshQaiSrZZ5ZvIGj03uAnEDH6M7/8D4ITlWjd1Ft6SlTcARnlnFdcC2Z5e4d+HRqlsdaNhNcUxuZtG2cjQAUNEp4ZZCPNf/LD2q9gBN4j++0vB4q9uuG15gwwSadxEP+otgBYzoN6dZLEFJ+9g/vIGewh7Ol6OQadonvYXsza/YjTPxo6g==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PNZPR01MB4224.INDPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(346002)(376002)(136003)(366004)(396003)(39850400004)(86362001)(44832011)(16526019)(69590400012)(6506007)(8676002)(186003)(107886003)(4326008)(5660300002)(83380400001)(66574015)(36756003)(6916009)(66556008)(8936002)(6486002)(66946007)(2616005)(478600001)(52116002)(66476007)(6512007)(2906002)(6666004)(316002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?mxvvPTJJiOUON3tfOy7eBcWoMdrwk4JPcieK4gnTZF0Iws6fxCPhpO46oaRT?=
 =?us-ascii?Q?YQiO4kOym+LnR1bAJ3MTNOS3UiCIrihcwZBBoLe8EbEvtFDrscqn57OfFCfw?=
 =?us-ascii?Q?HPBXX1EV73utary1xQs4rxy5KLAEqh9OQCkIABkORcpl21X/BxZcF3k3R9Iv?=
 =?us-ascii?Q?qGUb75tUMWiu4tiOgBLzvmJzWaFF/MvK/9f8hf5KeJkpBtw5WQ58COiUYh2G?=
 =?us-ascii?Q?wz8vQqZQK2uk0Xw94w1YuS/7IiqKsZsZPGA72E8j2oH8/t0+dZYK0SBJk2wf?=
 =?us-ascii?Q?GOwFrNngoNITtNC9gyvRIE2UAARnUhEf1wo0xF0aOgo8Or1Zpt4YIvF3jQeZ?=
 =?us-ascii?Q?dsVST2s1CCdSQ8K64jmzYMY1dxMLDUdG3kOW4eO8Ae7pAAhRfyfiUz10RPI+?=
 =?us-ascii?Q?GFfgeGSja5oZpbTuqjx/0Vn/QZl726q16Tv3feGHGEp/agHDL7ydrlkzDNZb?=
 =?us-ascii?Q?lOwI6amaGqBIYJmDhdcEZM1gXzQ7xrWy19DpQ/rSPG0fn3AI5GMJG9oCiVrR?=
 =?us-ascii?Q?eeurBtm7LP6qc/ijwlXug2dMwdqY/u2QwR0Vr0OI7UD8ooic2Rm7/eGuule6?=
 =?us-ascii?Q?NWLp+5ELmXom/HdijnunfIL9VZy7MAl0SUdloDv+6hCeUrIQfDDC3aGECpjh?=
 =?us-ascii?Q?OSg1jADJU9idWroXjmKsZYbJCJstZyr0Ll8JdxeVBB3/xjqbqQdRedYI8Mdn?=
 =?us-ascii?Q?xM712NH9SDMWVeVDddQ6udTDzUL3FmOMBZ69M98M12I2LRYMCyHr8mk9lb8T?=
 =?us-ascii?Q?wG//1qEq8xwXfxbdcgYC0tfJdn4FG2n4OOktggAzSqmL65tCbBxjCmRQxYK8?=
 =?us-ascii?Q?bGO+8sC51ecgHKFiPNjBfMgNuAyfs5JM7GbbF+KgUy/bZ0p8Lkt9MU1qGKsx?=
 =?us-ascii?Q?8IQkAjl8A4ag0js0F4nnqR5iuVTGQVdMgVLrQVHdWDPXoq3OIc9UBX3R4cIZ?=
 =?us-ascii?Q?71HdedPyaJJ4n4TKqv8wYrxc9OYzuYb3Yjlp2ygNDU8vxcs90u1O60tPcYyv?=
 =?us-ascii?Q?KcOXkWoaO5zn9HQOhz1z/Fk5V2yKoG6CPedyN5QFo4XHE1d364ohDxmB6y7P?=
 =?us-ascii?Q?01f/9YrU9ZwRL6TirNww4g85y8ibfbr0GFgSVnymFmbOIN63qgxTNt6mtNih?=
 =?us-ascii?Q?hIMoIpZ9/THuYgry4vSTYrMjdwyVb1db6L8YnH3K/MryPJjI99eReOmiFmDn?=
 =?us-ascii?Q?O9Lx8TGNvMeVuzAyhdbDErMplrk382X5uWUtcC/J/7OXYz1d0JlNQ2h28khH?=
 =?us-ascii?Q?x9lWHQRn2vHCApXNJLvOYTN2JAyEDu/ssDl4+3HPs01Z3ZNiW+0VdxhJo+wo?=
 =?us-ascii?Q?JPY52iITg+SUg7Uc7OCbTvnJHcyilZ5IksSbpi74/enqYCTUpxWK71/v/7G0?=
 =?us-ascii?Q?RGeXM0RQjZXu/8sZYIU2/STveYPm?=
X-OriginatorOrg: kpit.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b36d8d1-a665-4319-7c2e-08d8da34e4c3
X-MS-Exchange-CrossTenant-AuthSource: PNZPR01MB4224.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2021 08:59:58.6027
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jDFp05hIkaYjmxRmpF2vQRL26JjYClHPC7lzV3WXTPQ9NJEDjWZgPaLX/KjvPWPhbkHKnvco8YfQ/5t/MHx0/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PNZPR01MB4765
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

The current implementation was overwriting the sshd_config and sshd
assuming PAM is needed by default.

openssh should use the default sshd_config packaged with the component
if no distro specific needs are present and not overwrite the full
sshd_config file.

1. If PAM is enabled as a distro then enable the UsePAM option in sshd_conf=
ig.
2. Moved the file sshd to pam directory so that when pam is enabled,
   then replace the default from poky by installing the same.

Signed-off-by: Purushottam Choudhary <purushottam.choudhary@kpit.com>
---
 recipes-connectivity/openssh/files/{ =3D> pam}/sshd |   0
 recipes-connectivity/openssh/files/sshd_config    | 118 ------------------=
----
 recipes-connectivity/openssh/openssh_%.bbappend   |  14 +++
 3 files changed, 14 insertions(+), 118 deletions(-)
 rename recipes-connectivity/openssh/files/{ =3D> pam}/sshd (100%)
 delete mode 100644 recipes-connectivity/openssh/files/sshd_config

diff --git a/recipes-connectivity/openssh/files/sshd b/recipes-connectivity=
/openssh/files/pam/sshd
similarity index 100%
rename from recipes-connectivity/openssh/files/sshd
rename to recipes-connectivity/openssh/files/pam/sshd
diff --git a/recipes-connectivity/openssh/files/sshd_config b/recipes-conne=
ctivity/openssh/files/sshd_config
deleted file mode 100644
index 1c33ad0..0000000
--- a/recipes-connectivity/openssh/files/sshd_config
+++ /dev/null
@@ -1,118 +0,0 @@
-#      $OpenBSD: sshd_config,v 1.102 2018/02/16 02:32:40 djm Exp $
-
-# This is the sshd server system-wide configuration file.  See
-# sshd_config(5) for more information.
-
-# This sshd was compiled with PATH=3D/usr/bin:/bin:/usr/sbin:/sbin
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
-# The default is to check both .ssh/authorized_keys and .ssh/authorized_ke=
ys2
-# but this is overridden so installations will only check .ssh/authorized_=
keys
-#AuthorizedKeysFile    .ssh/authorized_keys
-
-#AuthorizedPrincipalsFile none
-
-#AuthorizedKeysCommand none
-#AuthorizedKeysCommandUser nobody
-
-# For this to work you will also need host keys in /etc/ssh/ssh_known_host=
s
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
-Subsystem      sftp    /usr/libexec/sftp-server
-
-# Example of overriding settings on a per-user basis
-#Match User anoncvs
-#      X11Forwarding no
-#      AllowTcpForwarding no
-#      PermitTTY no
-#      ForceCommand cvs server
diff --git a/recipes-connectivity/openssh/openssh_%.bbappend b/recipes-conn=
ectivity/openssh/openssh_%.bbappend
index 7719d3b..b541c3e 100644
--- a/recipes-connectivity/openssh/openssh_%.bbappend
+++ b/recipes-connectivity/openssh/openssh_%.bbappend
@@ -1 +1,15 @@
 require ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', '${BPN}_selinux=
.inc', '', d)}
+
+# if pam feature is enabled in the distro then take sshd from the pam dire=
ctory.
+FILESEXTRAPATHS_prepend :=3D "${@bb.utils.contains('DISTRO_FEATURES', 'pam=
', '${THISDIR}/files/pam:', ' ', d)}"
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
2.7.4

This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print, retain copy, disseminate, distribute, o=
r use this message or any part thereof. If you receive this message in erro=
r, please notify the sender immediately and delete all copies of this messa=
ge. KPIT Technologies Ltd. does not accept any liability for virus infected=
 mails.
