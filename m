Received: from IND01-BO1-obe.outbound.protection.outlook.com (IND01-BO1-obe.outbound.protection.outlook.com [40.107.139.44])
 by mx.groups.io with SMTP id smtpd.web08.6013.1615887216953026411
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Mar 2021 02:33:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kpit.com header.s=selector1 header.b=SrxLRnXe;
 spf=pass (domain: kpit.com, ip: 40.107.139.44, mailfrom: purushottam.choudhary@kpit.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cTrTdtreHDQM7oOf7wMq2UFhDxdNZWCvC3M0F3jxcMB1Q2mgjzDKKBzAEgFpRbCpmc9a05h+ITDSuKlSAW2M0Fouq2f5QyeTnH4WohuXmdVVmJ0479dhvnpno3MW47GJK4+1b7J5z8DGK14fQLThRWFK1WrW4VMeK/sGf1CRMIy0pwDZ6CRbKK2jsX85S2DMx6m+ItBrRbvZ+YTbxl9YzY8FoED0/0a+h1ehdv21iyRUhfN3m3Sq9GFbgyM/jEbamz8s+uQ+0AMrm3RcD73v/vc6HN8Olv+qIVIXwX5s/J4ikB64LjE1uMo5k0aAWBK1KwknylgJ4padYUxNItQv2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V/ZGhX7rxfWRbt5DLLxI8xQlADNgKlnLyiYeBTF9FDY=;
 b=hEtfj0qpPul/zmucsKUdOWRi/efEY0LE58VGClK4GY+5OGqxRkBLhh40rgegy32SBi8jEzhpi42vBQUodD6uB7um56z+dYxYVGD72pDCLaj5SS0USJLHHgYovd86CaSamMdeTiLMK5fYqADJFzxGw0lfbigkL9l01NeO8WJYnZA1dnSJ0s6sklDqKVYPds9og2gdoJQ190YVcvrya44BIDBQPBeTJXgvj7O+2XOW2m2LDSyUZ75e63JSVEjOvbpA2odf2Z9zitKOC8wo6Nhb68WEIbly0IdPuQAgDihDgOw0nQSYdnHhWFVopYja/AUhmrs23gLa/t6fRshfb8Jpug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kpit.com; dmarc=pass action=none header.from=kpit.com;
 dkim=pass header.d=kpit.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kpit.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V/ZGhX7rxfWRbt5DLLxI8xQlADNgKlnLyiYeBTF9FDY=;
 b=SrxLRnXeLrutYGP35iW2WXaHcqOJE8/9HTiU9fksEznSNYV7aOFo57/M5SH0ZmSqEwU7MYauKok+aYQV/e4x9n+DOXuDoduClyxQVooRE3Yi4Brfhz3DdsdUnKvUYmVaXYRaYjhfdVMyLZ3MX83BOv3KYUGRK40puVYQfpTun8U=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=kpit.com;
Received: from PNZPR01MB4224.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:1c::9)
 by PN2PR01MB5000.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:5d::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.31; Tue, 16 Mar
 2021 09:33:25 +0000
Received: from PNZPR01MB4224.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::f0db:6436:b4a0:7db7]) by PNZPR01MB4224.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::f0db:6436:b4a0:7db7%4]) with mapi id 15.20.3933.032; Tue, 16 Mar 2021
 09:33:25 +0000
From: "Purushottam choudhary" <purushottam.choudhary@kpit.com>
To: yocto@lists.yoctoproject.org
Cc: nisha.parrakat@kpit.com
Subject: [yocto][meta-selinux][PATCH] openssh: don't overwrite sshd_config unconditionally
Date: Tue, 16 Mar 2021 15:03:11 +0530
Message-Id: <1615887191-18397-1-git-send-email-purushottam.choudhary@kpit.com>
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [2405:201:a410:a032:e04e:cc03:ff6f:88e7]
X-ClientProxiedBy: PN0PR01CA0036.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:4e::11) To PNZPR01MB4224.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:1c::9)
Return-Path: purushottam.choudhary@kpit.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (2405:201:a410:a032:e04e:cc03:ff6f:88e7) by PN0PR01CA0036.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:4e::11) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.3933.32 via Frontend Transport; Tue, 16 Mar 2021 09:33:24 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: cf61ba70-a1fc-4671-ba91-08d8e85e8c46
X-MS-TrafficTypeDiagnostic: PN2PR01MB5000:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<PN2PR01MB5000BB495371C6686D5E49A3906B9@PN2PR01MB5000.INDPRD01.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Udwl4r8f4uZx6YBCvWO1+scKjieqwTYm+3HCz+MUC5tRTLiaTiLZBRZSZ3n7tzCf8BlACdui4lM6ILv4aLd/tIfNk7Bzz59zIoMzFuUZwZ5b8lb03RJYR1dCGfDZDWfgZki4aID72udNgvTLHw14DfX07Dq9+gNTtmNPvjD4pfCFgiFw1QQ2HZheqO8SOOL0ChGF7ihbUE5t9GZoAHj9s4iszRiqLGvJgKGa3dc5s+1rXFCl7p6lHv7dllZLnTXfDeoLJryeY28TrN0JxrxeWIEVY28TLLUnZSLbJk/CTaWFMi8VZ+K5duTb8SHF86vEYIqAVeOy0mOW9Az4/N7hDzBLKUrwXjt+CVvEGP/0h1Qg1u2vn1sgLEv3RWU86HLy1vVT6Pluv7o8bKcn3trPwC84zMPpaGUAzIP2cgOCFu7wLmLuINRg4dGc8qtq7Xi4cojePccSyoQbCmb8OWxNjZlda+wRzArZUeBemTqJSKspOXDUtAPA/J5lAbl4A5Lj2T25/n2u71cu5iFoZCmDaneew8A89i7kVtdE6qv1gpoupq9zr3Gi2Ju+3C1uxiGGYf6OBE1eBqLoEQyJoiaTls0K/DdPPhs3I/fvY5mfT7lYhdW1LERy5B+vIYqddv7x
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PNZPR01MB4224.INDPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(396003)(366004)(346002)(376002)(39850400004)(136003)(6512007)(107886003)(2616005)(6506007)(186003)(8676002)(69590400012)(6666004)(36756003)(44832011)(2906002)(6486002)(16526019)(52116002)(478600001)(86362001)(66574015)(4326008)(8936002)(5660300002)(316002)(66946007)(66476007)(66556008)(83380400001)(6916009);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?cv8SeIJyPS6EzdwMaWd8A85S7AGCa4KGX4hV8lYA3V0IMiyRLsr5WK2t670K?=
 =?us-ascii?Q?mQN8ThRCR3TbzJ1TNQkEDapnvpu14eCV8KbttpXgllZceAfi1GE+Fz/a3ppo?=
 =?us-ascii?Q?caux0vw1IrV1MFYIGdp/vm0VFlbZ/u+qAuhscNtHPol8tTsiuy5pmjMCInel?=
 =?us-ascii?Q?K9/0BJ3I8izy+IqGBAwGfwnO4+ncXwpdEUjejpVUYxRw3nAZJjRfTsAmFEBm?=
 =?us-ascii?Q?pjXPU80ypnFCFCAm4hNXLJYwPLXzCn/0ZE2HXC5tc429aUKvtkLxbeYBZgPY?=
 =?us-ascii?Q?QxA8BbWu84gI6GTTzIU8wJ+IRmUgCjPOyaxREnbc7TIBXgL+dPgo6P//w243?=
 =?us-ascii?Q?kZ75N1j8MG0YTXH7RkqRo32K0lqehnHzgSTGyHtl6X0cppZnZ2/dRfR/Pu1Q?=
 =?us-ascii?Q?eRYiQ6PkkI39VWiLXI+2N2H7Em1+zHlcDU3DmqV2SQRwQ8ulIH7jR1CnGdBo?=
 =?us-ascii?Q?3x2e8HgNkx1VeARPiOHqy++CTMac2Opo+6axd5XsT1HgEHnSeJOiSiJXc+6k?=
 =?us-ascii?Q?klIL5NApTyfsThx43fJSVgDfUNQvQKCQ77yND18fcBHll7kEfG9IYyKLkIRR?=
 =?us-ascii?Q?ZNSLfihwG1DNPedanky08mtm7e8Tup9hfHw2wUORl/iv4XvxHUAfHbzE0u7x?=
 =?us-ascii?Q?4slrawvyFL2/yC9xB+xAAd7Q8G2zNpArWAj5/5dKhbee3sW7SkqnrlK++d3i?=
 =?us-ascii?Q?dSUSBoZPnX4H/UxKc21Qg6XMFqgsqvnvjSHKaTlqi7Unas0oYNbMnq9GUdAz?=
 =?us-ascii?Q?i/OJTyXhcDwnsSofaqga8GlxW2eWG/W15b3155dj29DYEZxF0G/Ykq9lxbX8?=
 =?us-ascii?Q?jOGvIsV239aRaobS9RTDTSDeCB3pLdxE4XEvyaykmMzmnRzeOMOiA4o0sZZm?=
 =?us-ascii?Q?+Prllg8lHaexj74ELm0GN7oHyJhwR43+e8lMT/oko2jsBqwVUMdjF9pZN7kF?=
 =?us-ascii?Q?VxlTfXrmd2P2lhjJo90f3HFLvyAD5e05GzcJRRp1UqwNGfztKd/mHUNb64fF?=
 =?us-ascii?Q?zPO2Ifnfp1zz5OJ32sf9h9Sy9k2SRABpW+KUPaBYqbtvHrgmVw/LjlzEiyiL?=
 =?us-ascii?Q?mGTZQWojZCkIbWe5el8CZQdHIypZJuHYy4HuY8l/EcJyZe3MxFbvOvTcxc0e?=
 =?us-ascii?Q?5K7hYpUNPK6Wfwl+jYBD9rM3DZKAdGTNGfUtLXMY2IQb5y0t8kQ+J1b1ldmR?=
 =?us-ascii?Q?bO/xu6qLuzNNZ6nT0NORaEH19AY/69OgFbiFulK7n74tin3yZ5OURg5M0pk3?=
 =?us-ascii?Q?SUW2+qwLFc+AerKVtJfAHcGQy5/FqKlZ9c9+X7UhKfhmcBuxrGqv0i7OOhRu?=
 =?us-ascii?Q?gwMSWZpb/HKbWlNHW6TpXRedESmOICKNuzp/19TUy1f5GJ659XbjlbqNvd+7?=
 =?us-ascii?Q?3IN1cpUJKV6BsMNqngGzje4QtNUU?=
X-OriginatorOrg: kpit.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf61ba70-a1fc-4671-ba91-08d8e85e8c46
X-MS-Exchange-CrossTenant-AuthSource: PNZPR01MB4224.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2021 09:33:25.3802
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z//sZU43l7SB8pBSRis9RbU9XchirWAkIJnYvQF8r+vtTqNe9uGfCvxDrrLoJJs2jAbl7RBCwdjLd5POmIFvkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN2PR01MB5000
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
