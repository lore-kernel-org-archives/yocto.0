Received: from IND01-MA1-obe.outbound.protection.outlook.com (IND01-MA1-obe.outbound.protection.outlook.com [40.107.138.70])
 by mx.groups.io with SMTP id smtpd.web08.3443.1618468901126610806
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Apr 2021 23:41:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kpit.com header.s=selector1 header.b=m7kFZ6Ia;
 spf=pass (domain: kpit.com, ip: 40.107.138.70, mailfrom: purushottam.choudhary@kpit.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MwcVqzTdtMd2HZYsJpg4McGg8vGtnGJrDjZNh11N4SC0m4F6DsYLxhNtHQ7XbGZCHf76iimu9YhXeTtnWgRWQppLNS8VIokbSaHAES9fsdf0zKTf6IjVdNcENt/u8fdSVFrsDjk3M7MkCw+Vo0MAashEYcZZGWeivs5kU9AXoa66b9URK+kAoHmXlOXAVMOtMfSaI7HR4XCMfTE8cIwcQ+8XNCz0NwvUSs4J9cThGyRZMF/5Ncz2fOLVS+15zLe1V3fI3vyCBbj2Xbi4UakdXltTx5DN9fVc85iZfEff0qmnc4HbDW8xxVGbAgf5GQXtndhtRGHgwwR1k0aNbNGNhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JNAw/+e8KSP3KzDYImMvPpSoDRxi8yUQZC0cn0Bc/b0=;
 b=LGON00NOtS0JzoXyK8M6bnMpQ30/x3hPiXjj4GNDP3Tmlu1YxE6I8C++HVk12weVHJhlc72QjTUJ1eXs8BMGXbGpeGXCpYHsqqq8r+8sZhQXL3hgGj5IrSCxOY4hFjEq8cJ2qtu8qJaeikoCkFUSKZ4Ydk2BVd/AGyh1B0c3VcOLY30FvNXrVR5IC71roE1go8mPVBa6qc9e8mGxTSPejHGPIEVIMc5aR2ODfCjCwRTdRa/Qhd6OpAMh08Hx528kqlC4+jYyLS13P+IFC6bmyBhaSxm5PqprkGhxxmv5Oo5Yiofla9Z8dR18E1CDIf5gBUydiiczyJBE5uNTll2bMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kpit.com; dmarc=pass action=none header.from=kpit.com;
 dkim=pass header.d=kpit.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kpit.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JNAw/+e8KSP3KzDYImMvPpSoDRxi8yUQZC0cn0Bc/b0=;
 b=m7kFZ6IaICDpP5leF8SLNjKYW3CbNNh26/FMIhamE/ndDS+12KQKKAV3etz/2isQbQDlKO+lLDSJtEKpp6WAYdLK7b2ygVOj/ROnJ0DhQlJSvGY31CxTmJVosKtTh0Tc3wQEerjKwCKw40pxVTBB2ig9xYCa9p6RKDR9414wvc0=
Received: from PNZPR01MB4224.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:1c::9)
 by PNZPR01MB4845.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:31::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16; Thu, 15 Apr
 2021 06:41:32 +0000
Received: from PNZPR01MB4224.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::ec0c:730d:7fe9:9cd6]) by PNZPR01MB4224.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::ec0c:730d:7fe9:9cd6%7]) with mapi id 15.20.4042.016; Thu, 15 Apr 2021
 06:41:31 +0000
From: "Purushottam choudhary" <purushottam.choudhary@kpit.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, Joe
 MacDonald <joe@deserted.net>
CC: Nisha Parrakat <Nisha.Parrakat@kpit.com>
Subject: Re: [yocto][meta-selinux][PATCH] openssh: don't overwrite sshd_config unconditionally
Thread-Topic: [yocto][meta-selinux][PATCH] openssh: don't overwrite
 sshd_config unconditionally
Thread-Index: AQHXGkdps/IdF+f6fEmkk4Jfa5J/Cqq1TuWQ
Date: Thu, 15 Apr 2021 06:41:31 +0000
Message-ID: 
 <PNZPR01MB4224C79C0B030215B176AA2B904D9@PNZPR01MB4224.INDPRD01.PROD.OUTLOOK.COM>
References: <1615887191-18397-1-git-send-email-purushottam.choudhary@kpit.com>
In-Reply-To: 
 <1615887191-18397-1-git-send-email-purushottam.choudhary@kpit.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=kpit.com;
x-originating-ip: [2405:201:a410:a032:fc71:f52:9976:6609]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 072648db-bb83-4812-f0df-08d8ffd981a5
x-ms-traffictypediagnostic: PNZPR01MB4845:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: 
 <PNZPR01MB484556BA4121BF1857BE3216904D9@PNZPR01MB4845.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 H4Syr/jC6vHy1yblK4mxACRYn3JUg1f+YdEWgZVKUd0NemOoBnnGK3l3GpU2cywTLIcfxMwNhxUWj6HgnrnHwYJnP8p2ipokqa/lgiFVoEfkf3JJbEJDX/Y1eP3a2Ukatzgny33og8IQisIDhWNxE2MV8x5s/uOtZAH34o47G69DkWIDp6Fc4LHy7ywvJDHdvme0H9cp8SU+iV9G28ZJKm8cO6FFPe2jg6qbYeEab1W9o2J1IZfJNi1xFXLFHkmrrUKZu6caM1+XJvokI7MYJsli/UWlsKCkK9sU/pxigrvXhqZYankPwKv0M1lF07r4GlWR9WcgOdUpVwomWrjqsFubimRBc3MsNJeSfdfEZxv3WpOlVbN8TP5ZzaPDQwcx45PsTRS+BCIUw7Sa7Mol/FDN3SuzH6dttXUUCQ+JsMuOq7Ihbi+gcOhwJftBp5A2ZTPiJ/5xCZuihADIEFcFmmkDJ3WPEd9BSW7hqGeMmADVohOIVMgTMuYQuoUj2h5nsbMdl4xxjaY1GiWNKV4daxkZPT+v/HI7JL5adyBaJIaWPwgoxCOeBvY2Kwqkh2PPl5fv0RNhMLVBEsyL6FX5rGXcI4OQBHEdeuAzcFnmY/Y=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PNZPR01MB4224.INDPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(366004)(136003)(376002)(39860400002)(66446008)(66476007)(76116006)(66556008)(66946007)(5660300002)(478600001)(19627405001)(316002)(71200400001)(64756008)(86362001)(52536014)(6506007)(7696005)(110136005)(53546011)(83380400001)(4326008)(9686003)(8936002)(8676002)(107886003)(55016002)(186003)(122000001)(2906002)(33656002)(38100700002)(66574015);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?iso-8859-1?Q?ONQMxbAtChuvyfUm491zM78HvlgrTYGOlhNsytw1pHbLDd4VGRIYL0bTV2?=
 =?iso-8859-1?Q?BCRS/VOz79lXGLlB0Pj6NRLUM5n9l8abds++Y5bWS/vOW6YuySM/K0/jx1?=
 =?iso-8859-1?Q?ldpPkfWkzq2kmOybUaJ58WqWdIwLoM8C7N8rmX492ydzlBwzrhSo7+YsOx?=
 =?iso-8859-1?Q?r5+3xgtLNhJppO//92zkw4WCi1xjN4e3oCb4Nl2Gz9E2eGbFS1Agly9y/p?=
 =?iso-8859-1?Q?RLci4RCsHkBwKQf+meTtGBp1zr9i/NuciuQM7q0PJT4BIF60zJloBGlzL+?=
 =?iso-8859-1?Q?eVQFye29VM1mQ/BVaVYIunJbSh8WX2P6mxdJP7tLCKg6z1opjul067wjkO?=
 =?iso-8859-1?Q?idJVdh7id9YbFqjIBZiGW+Qk1GrovZeHbsFCWQ/pWeC/QMo24K5sbqnPR0?=
 =?iso-8859-1?Q?gKFLAWPUAoGL0WfrZwQKYho9ElCLx50jIQ4F/IUE/jueOQbzo9GDXyfynR?=
 =?iso-8859-1?Q?3UrtnYkH1CYNlpAALmxc3Tx8bmW1+7GiSvQwLk63LqJcUJXa5n1BXjYEff?=
 =?iso-8859-1?Q?qPK/zPcsDmtkMhqx+OHTK0TbfmQHMUJwTxh25FmiwOEGE7KP9BJn9Kj4Rz?=
 =?iso-8859-1?Q?V5Yl5oy1oH/Rif/hBfPTEh0xDvNLQoALLr085DZOkGKLPrF5Tb4ZbtpUUV?=
 =?iso-8859-1?Q?aDt0Xx+duQn69V3aIis1LFp/nT4/mrfNB2Lf7stlfomMupwgvlYkvU3ql8?=
 =?iso-8859-1?Q?9Q7FuCdnTv4pE8wOMMZmtTh0hsRGSh2VUQrz+gBYTqzqojcV+CwclmjYvo?=
 =?iso-8859-1?Q?+0VVayOiFWc/xLtfPR//mupAl73GFLRvF8QsfDgKWHl1SRODAZgtdDeteJ?=
 =?iso-8859-1?Q?UDEsGgqloGHwlc2sXbWPA+vrRxqMYQGOjRx8Qmjx2qFKDbQQuHNy+GInZX?=
 =?iso-8859-1?Q?L149xIXhILI2J+j1At4zTmK5SYTZLtQ1SdH3BsuV8jyDeTw1X97skteeeK?=
 =?iso-8859-1?Q?nTZwNCbVpRG2q4c4xGCyg35Q9Uw6Hti9paXb0WBtxsa/pYhuWoHFDJ4OKF?=
 =?iso-8859-1?Q?RFLsPDpaeS9p002zSH4zSw5VbHSo5qA6pScVcBc6cLNZopyycy9ylQICX9?=
 =?iso-8859-1?Q?UHFkk7FMOujzkfAF+7TyyK7F4+YP7MVy/lz/mSEE76oe4+g1HjWAw8py3t?=
 =?iso-8859-1?Q?XXUhtdEB2MAmm7gtPM3+VXdcS36DoljlK8bcT6gpFF/BPSq4yp+3mQgkBZ?=
 =?iso-8859-1?Q?/T2Sl9DCqL208jzJo/BGPjsQ6D0WxcR6+mpS00WYLX3PjeqMaH3pClZSqv?=
 =?iso-8859-1?Q?kS8Vqk4vFPHbt/FYc/cT0Nqmspk0alr9Z5y+5PRcqI5X1E5fXfNtDoDNnv?=
 =?iso-8859-1?Q?hFcErtKfM293enM6aUyBgS1wtj40/u3sCe70rRoHp9JzspA8BmWXVbBkPQ?=
 =?iso-8859-1?Q?dDYM3QzkLSGL4YyOgtYI/XtUuzGOTr8uReW07hYcwiuRJveq97niU=3D?=
MIME-Version: 1.0
X-OriginatorOrg: kpit.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PNZPR01MB4224.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 072648db-bb83-4812-f0df-08d8ffd981a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Apr 2021 06:41:31.6178
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wqA1Yc1YlUC8uvw5vrnQ+L73saXdGiDG4mpRXa7bADz6cRDmWTYOBYmpuFSBy10vcO+YgtcCver1yD+e86YJOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PNZPR01MB4845
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PNZPR01MB4224C79C0B030215B176AA2B904D9PNZPR01MB4224INDP_"

--_000_PNZPR01MB4224C79C0B030215B176AA2B904D9PNZPR01MB4224INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

Could you please let me know if there is any update on this change?

Thanks & Regards,
Purushottam

________________________________
From: Purushottam Choudhary <purushottam.choudhary@kpit.com>
Sent: Tuesday, March 16, 2021 3:03 PM
To: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Cc: Nisha Parrakat <Nisha.Parrakat@kpit.com>
Subject: [yocto][meta-selinux][PATCH] openssh: don't overwrite sshd_config =
unconditionally

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

--_000_PNZPR01MB4224C79C0B030215B176AA2B904D9PNZPR01MB4224INDP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hi,<br>
<br>
Could you please let me know if there is any update on this change?<br>
</div>
<div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div>
<div name=3D"divtagdefaultwrapper" style=3D"font-family:Calibri,Arial,Helve=
tica,sans-serif; font-size:; margin:0">
<div>Thanks &amp; Regards,</div>
<div>Purushottam<br>
</div>
</div>
</div>
</div>
</div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Purushottam Choudha=
ry &lt;purushottam.choudhary@kpit.com&gt;<br>
<b>Sent:</b> Tuesday, March 16, 2021 3:03 PM<br>
<b>To:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Cc:</b> Nisha Parrakat &lt;Nisha.Parrakat@kpit.com&gt;<br>
<b>Subject:</b> [yocto][meta-selinux][PATCH] openssh: don't overwrite sshd_=
config unconditionally</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">The current implementation was overwriting the ssh=
d_config and sshd<br>
assuming PAM is needed by default.<br>
<br>
openssh should use the default sshd_config packaged with the component<br>
if no distro specific needs are present and not overwrite the full<br>
sshd_config file.<br>
<br>
1. If PAM is enabled as a distro then enable the UsePAM option in sshd_conf=
ig.<br>
2. Moved the file sshd to pam directory so that when pam is enabled,<br>
&nbsp;&nbsp; then replace the default from poky by installing the same.<br>
<br>
Signed-off-by: Purushottam Choudhary &lt;purushottam.choudhary@kpit.com&gt;=
<br>
---<br>
&nbsp;recipes-connectivity/openssh/files/{ =3D&gt; pam}/sshd |&nbsp;&nbsp; =
0<br>
&nbsp;recipes-connectivity/openssh/files/sshd_config&nbsp;&nbsp;&nbsp; | 11=
8 ----------------------<br>
&nbsp;recipes-connectivity/openssh/openssh_%.bbappend&nbsp;&nbsp; |&nbsp; 1=
4 +++<br>
&nbsp;3 files changed, 14 insertions(+), 118 deletions(-)<br>
&nbsp;rename recipes-connectivity/openssh/files/{ =3D&gt; pam}/sshd (100%)<=
br>
&nbsp;delete mode 100644 recipes-connectivity/openssh/files/sshd_config<br>
<br>
diff --git a/recipes-connectivity/openssh/files/sshd b/recipes-connectivity=
/openssh/files/pam/sshd<br>
similarity index 100%<br>
rename from recipes-connectivity/openssh/files/sshd<br>
rename to recipes-connectivity/openssh/files/pam/sshd<br>
diff --git a/recipes-connectivity/openssh/files/sshd_config b/recipes-conne=
ctivity/openssh/files/sshd_config<br>
deleted file mode 100644<br>
index 1c33ad0..0000000<br>
--- a/recipes-connectivity/openssh/files/sshd_config<br>
+++ /dev/null<br>
@@ -1,118 +0,0 @@<br>
-#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $OpenBSD: sshd_config,v 1.102 2018/02/16 0=
2:32:40 djm Exp $<br>
-<br>
-# This is the sshd server system-wide configuration file.&nbsp; See<br>
-# sshd_config(5) for more information.<br>
-<br>
-# This sshd was compiled with PATH=3D/usr/bin:/bin:/usr/sbin:/sbin<br>
-<br>
-# The strategy used for options in the default sshd_config shipped with<br=
>
-# OpenSSH is to specify options with their default value where<br>
-# possible, but leave them commented.&nbsp; Uncommented options override t=
he<br>
-# default value.<br>
-<br>
-#Port 22<br>
-#AddressFamily any<br>
-#ListenAddress 0.0.0.0<br>
-#ListenAddress ::<br>
-<br>
-#HostKey /etc/ssh/ssh_host_rsa_key<br>
-#HostKey /etc/ssh/ssh_host_ecdsa_key<br>
-#HostKey /etc/ssh/ssh_host_ed25519_key<br>
-<br>
-# Ciphers and keying<br>
-#RekeyLimit default none<br>
-<br>
-# Logging<br>
-#SyslogFacility AUTH<br>
-#LogLevel INFO<br>
-<br>
-# Authentication:<br>
-<br>
-#LoginGraceTime 2m<br>
-#PermitRootLogin prohibit-password<br>
-#StrictModes yes<br>
-#MaxAuthTries 6<br>
-#MaxSessions 10<br>
-<br>
-#PubkeyAuthentication yes<br>
-<br>
-# The default is to check both .ssh/authorized_keys and .ssh/authorized_ke=
ys2<br>
-# but this is overridden so installations will only check .ssh/authorized_=
keys<br>
-#AuthorizedKeysFile&nbsp;&nbsp;&nbsp; .ssh/authorized_keys<br>
-<br>
-#AuthorizedPrincipalsFile none<br>
-<br>
-#AuthorizedKeysCommand none<br>
-#AuthorizedKeysCommandUser nobody<br>
-<br>
-# For this to work you will also need host keys in /etc/ssh/ssh_known_host=
s<br>
-#HostbasedAuthentication no<br>
-# Change to yes if you don't trust ~/.ssh/known_hosts for<br>
-# HostbasedAuthentication<br>
-#IgnoreUserKnownHosts no<br>
-# Don't read the user's ~/.rhosts and ~/.shosts files<br>
-#IgnoreRhosts yes<br>
-<br>
-# To disable tunneled clear text passwords, change to no here!<br>
-#PasswordAuthentication yes<br>
-#PermitEmptyPasswords no<br>
-<br>
-# Change to yes to enable challenge-response passwords (beware issues with=
<br>
-# some PAM modules and threads)<br>
-ChallengeResponseAuthentication no<br>
-<br>
-# Kerberos options<br>
-#KerberosAuthentication no<br>
-#KerberosOrLocalPasswd yes<br>
-#KerberosTicketCleanup yes<br>
-#KerberosGetAFSToken no<br>
-<br>
-# GSSAPI options<br>
-#GSSAPIAuthentication no<br>
-#GSSAPICleanupCredentials yes<br>
-<br>
-# Set this to 'yes' to enable PAM authentication, account processing,<br>
-# and session processing. If this is enabled, PAM authentication will<br>
-# be allowed through the ChallengeResponseAuthentication and<br>
-# PasswordAuthentication.&nbsp; Depending on your PAM configuration,<br>
-# PAM authentication via ChallengeResponseAuthentication may bypass<br>
-# the setting of &quot;PermitRootLogin without-password&quot;.<br>
-# If you just want the PAM account and session checks to run without<br>
-# PAM authentication, then enable this but set PasswordAuthentication<br>
-# and ChallengeResponseAuthentication to 'no'.<br>
-UsePAM yes<br>
-<br>
-#AllowAgentForwarding yes<br>
-#AllowTcpForwarding yes<br>
-#GatewayPorts no<br>
-#X11Forwarding no<br>
-#X11DisplayOffset 10<br>
-#X11UseLocalhost yes<br>
-#PermitTTY yes<br>
-#PrintMotd yes<br>
-#PrintLastLog yes<br>
-#TCPKeepAlive yes<br>
-#UseLogin no<br>
-#PermitUserEnvironment no<br>
-Compression no<br>
-ClientAliveInterval 15<br>
-ClientAliveCountMax 4<br>
-#UseDNS no<br>
-#PidFile /var/run/sshd.pid<br>
-#MaxStartups 10:30:100<br>
-#PermitTunnel no<br>
-#ChrootDirectory none<br>
-#VersionAddendum none<br>
-<br>
-# no default banner path<br>
-#Banner none<br>
-<br>
-# override default of no subsystems<br>
-Subsystem&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sftp&nbsp;&nbsp;&nbsp; /usr/libexe=
c/sftp-server<br>
-<br>
-# Example of overriding settings on a per-user basis<br>
-#Match User anoncvs<br>
-#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; X11Forwarding no<br>
-#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AllowTcpForwarding no<br>
-#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PermitTTY no<br>
-#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ForceCommand cvs server<br>
diff --git a/recipes-connectivity/openssh/openssh_%.bbappend b/recipes-conn=
ectivity/openssh/openssh_%.bbappend<br>
index 7719d3b..b541c3e 100644<br>
--- a/recipes-connectivity/openssh/openssh_%.bbappend<br>
+++ b/recipes-connectivity/openssh/openssh_%.bbappend<br>
@@ -1 +1,15 @@<br>
&nbsp;require ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', '${BPN}_se=
linux.inc', '', d)}<br>
+<br>
+# if pam feature is enabled in the distro then take sshd from the pam dire=
ctory.<br>
+FILESEXTRAPATHS_prepend :=3D &quot;${@bb.utils.contains('DISTRO_FEATURES',=
 'pam', '${THISDIR}/files/pam:', ' ', d)}&quot;<br>
+<br>
+do_install_append(){<br>
+<br>
+&nbsp;&nbsp;&nbsp; if [ &quot;${@bb.utils.filter('DISTRO_FEATURES', 'pam',=
 d)}&quot; ]; then<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Make sure UsePAM entry is in =
the sshd_config file.<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # If entry not present then app=
end it.<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; grep -q 'UsePAM' &quot;${D}/etc=
/ssh/sshd_config&quot; &amp;&amp; \<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sed -i 's/.*UsePAM.*/UsePAM yes=
/' &quot;${D}/etc/ssh/sshd_config&quot; || \<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo 'UsePAM yes' &gt;&gt; &quo=
t;${D}/etc/ssh/sshd_config&quot;<br>
+&nbsp;&nbsp;&nbsp; fi<br>
+}<br>
-- <br>
2.7.4<br>
<br>
</div>
</span></font></div>
This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print,
 retain copy, disseminate, distribute, or use this message or any part ther=
eof. If you receive this message in error, please notify the sender immedia=
tely and delete all copies of this message. KPIT Technologies Ltd. does not=
 accept any liability for virus
 infected mails.
</body>
</html>

--_000_PNZPR01MB4224C79C0B030215B176AA2B904D9PNZPR01MB4224INDP_--
