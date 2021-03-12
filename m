Received: from IND01-MA1-obe.outbound.protection.outlook.com (IND01-MA1-obe.outbound.protection.outlook.com [40.107.138.57])
 by mx.groups.io with SMTP id smtpd.web11.7226.1615550742962835890
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Mar 2021 04:05:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kpit.com header.s=selector1 header.b=Y+1U/9DE;
 spf=pass (domain: kpit.com, ip: 40.107.138.57, mailfrom: purushottam.choudhary@kpit.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lJ3n0ckU2ZxCXxQnBFALGMz9l0mTtreJuRJEnctocTT8knqkaWbN8k+XytQmlzjxogU1azUjaTEUd8rBIBREUP08D88JSpd7mOPS5SSikYFGkENGobL6Ml8uz/wlANg1Nr7UuTB8Be+NZqscIVl39KUiKXm9th2NYSLKgAsvNgo95wTn9HGZq9xyTzIyEQW0XwMwwK6QX98Tw2ivTE4V8LzGZfzCq0pm6bw6Ge3dKXqdB6clgHB/1HFi+yIo9mRi7ZCqdP5qoDy7rsWYLHdWC/4ld8dlPS5SxaWKdnvAFydHJTcQWeYC2tZnmJ8ViugRldg8wMoLA2sOe3NT6z5Q9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TvBW0dWQbadQINTEqgGdgmR9uWohzjI6kn1dpVN68Ts=;
 b=ify6K6/aev0BORdfp1lazd/uHue0F3TeCH1AkoiN2L7xHnEE3xRK4DE4PYBfQKcen41jtJW9oL53zElANlW2v8Gy100c6AGwQXgkPmAAbZyb6LMSXRs+n93HlnDoVO55+4IDmnKffEs4cuFF/nvDASBYhCDqAJrTHDu5IO2e6QBiyFcR9lGcHwpcg1331uDi10iBum7J6OQRx/c0iYkrsRIpCHLZx2X0ikjl/Gt5n1cUeCj1vPYJAuHOAHF8feg0ijPWEs8LgO/CB0XDakthEn2/JhyOFyCQIVN1MTYbBl+NkBZIYWzPiZkVBJtlTCY4PbjQXJsHbZ+meHjCLkw+hA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kpit.com; dmarc=pass action=none header.from=kpit.com;
 dkim=pass header.d=kpit.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kpit.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TvBW0dWQbadQINTEqgGdgmR9uWohzjI6kn1dpVN68Ts=;
 b=Y+1U/9DELQdGGjF4KKFnMBuv7oCs9kpjdTbsSRImslWePZSz2SMHjakU0G9SyeOZJPtAuzvHwO/6+LwZ74+WUl3GDepC3aQYS/Hpqsr4amqKdQ0zJc1JhWoG0f7ugiJKAIl/NPNghKXwNzURoJ3DQcrJDysb/LjJi5wnRuOiIFw=
Received: from PNZPR01MB4224.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:1c::9)
 by PN1PR0101MB1645.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c00:1c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.27; Fri, 12 Mar
 2021 12:05:32 +0000
Received: from PNZPR01MB4224.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::f0db:6436:b4a0:7db7]) by PNZPR01MB4224.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::f0db:6436:b4a0:7db7%4]) with mapi id 15.20.3912.030; Fri, 12 Mar 2021
 12:05:32 +0000
From: "Purushottam choudhary" <purushottam.choudhary@kpit.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: Nisha Parrakat <Nisha.Parrakat@kpit.com>
Subject: Re: [meta-selinux][PATCH] openssh: don't overwrite sshd_config unconditionally
Thread-Topic: [meta-selinux][PATCH] openssh: don't overwrite sshd_config
 unconditionally
Thread-Index: AQHXDB3CBcbUnpC0dEqVeCyubbdiN6qAV7j+
Date: Fri, 12 Mar 2021 12:05:32 +0000
Message-ID: 
 <PNZPR01MB42242C1C0A30C4160B329C6D906F9@PNZPR01MB4224.INDPRD01.PROD.OUTLOOK.COM>
References: <1614329991-11002-1-git-send-email-purushottam.choudhary@kpit.com>
In-Reply-To: 
 <1614329991-11002-1-git-send-email-purushottam.choudhary@kpit.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=kpit.com;
x-originating-ip: [2405:201:a410:a032:e04e:cc03:ff6f:88e7]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 4a6815f1-e290-4d67-df84-08d8e54f2300
x-ms-traffictypediagnostic: PN1PR0101MB1645:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: 
 <PN1PR0101MB1645004F917103597F80EC37906F9@PN1PR0101MB1645.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 WNo5qxh765rwsKg9SVwH2kZbSw1MokCfKxKV8Mn+a1h0wrCSHWYYcC62s3weh2aR9sYEZS7NJTacJw2QAO+57D7gvCClLff5+NEUuF7kazKQGCdVJWSmzl+ymnxdAyy/hUURD68AzfqaV6ApGIWWciNd1MBi9N0vH7JreyvXGcDdv0nn864R/RMvDYdvCte2EByiOCGhl3Q0qe8CfQ5bL8nWQwhElv7NqnyJAEIfitiRpuR0FndEiAKOlVr2r5ebPHv5RCAgzBt7PNiyWTu+SCKN5TfO6/GGHT7iD+DT87S5MuofmFYk1XtC105kvFMyc2E8yHyTOIlA09sBXqmfTW848RBFI80w4tiVDPQqQOzv4drArOsJKeig6Di+HmxwfwCbFVJPlg71cHCJeFVHpcrz5g2L62JKvfsnhOiGDlfN+ayVqnfxgvao6pR/7KtUDeXK2GqSoQKADUjuNfZA9j0T5kgrX5LIpiEWfYcKqC1oUsb5bHu33/sykjrhDF5bbriFXf9o5MQZtIXoTdpQTg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PNZPR01MB4224.INDPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(346002)(376002)(366004)(136003)(396003)(186003)(19627405001)(4326008)(8676002)(52536014)(107886003)(478600001)(91956017)(9686003)(66476007)(66556008)(66574015)(76116006)(64756008)(33656002)(66446008)(83380400001)(6916009)(53546011)(66946007)(8936002)(86362001)(7696005)(5660300002)(2906002)(316002)(6506007)(55016002)(71200400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?iso-8859-1?Q?UG+vBaNevxLLHqiHaDkfyJewR3UOhfVY8+eAy8TZor+dK+L22R6VFBEsFE?=
 =?iso-8859-1?Q?a7QWSDQTgYjDpKNeK9HoVD48B+KcA22JU6alJIDaO7Gq6R0vVuOgc2XwVL?=
 =?iso-8859-1?Q?Hpn3YZXweO4miM7wg1Jn12PV7xN5SilpDeuGfQrGAlAqsrJyrDE7TiA//3?=
 =?iso-8859-1?Q?b/L3SQ8iqtcBOX83aMybGw0/29uOPMLX4VgPR0TFOGjrk3j19qn9wbqqgZ?=
 =?iso-8859-1?Q?TzSMgz1V0cbHWt8jCEx84fOoQSV8fDx5NX6p6GHz5YeERi6k7Y0fihGUQc?=
 =?iso-8859-1?Q?0ptiLLW2L3Eo2CHJn6wjO7XAQSb/sX0N3e6+p3a9rwdSNDfF1c90RvSPKH?=
 =?iso-8859-1?Q?rVFdNs+4htdc0wHB131SIbbXnoh+puvE9P2pl/2TE+NZkzWfh2ZE222TR9?=
 =?iso-8859-1?Q?XlcnIEdCSHLkyzh5Lb/sl5EMee3MqSAizNDv+JFg/nIP6jQ2TbZ9iTPmUD?=
 =?iso-8859-1?Q?VIDKynVhvTRUpRj1cc/CngYpKU2C6xy9Q24MIIwXGtYX0r2IgvI5uGEpe5?=
 =?iso-8859-1?Q?i+yTUkk7cj8IqNOyPcmcSY+dnNxnr9kSssh59eEM2aYcpo3GydC4mSu9gT?=
 =?iso-8859-1?Q?krQoXOAjY1doqSLjFGIQi5QBsRx1gcR+IaCsvdHprDMDhJGcvhHyGAdbUf?=
 =?iso-8859-1?Q?5pJXKJnCwu4wOT1c0BdhUQ6NUNIjdbzMU+qesHKlAuDpJpdqbcNB1EY+CV?=
 =?iso-8859-1?Q?nUjMZDqFRoEUVllTq8xgvuP62PDLbnAozqnFw8eIe9IC2ieiHuFMjJWOUH?=
 =?iso-8859-1?Q?jGab/IEWzWVQr8Qwdl6fe94uzJ3/thBW/zr1jTW4pmGvMGEj6BJEYRzsPO?=
 =?iso-8859-1?Q?HmH5unx/M9V99If1oUkxbc1iwjOPPyCQJG3+HS6I8yAeCxVWSTEbiNA+i5?=
 =?iso-8859-1?Q?jpboh+xblFsLpDf1u0BSifmchxRqsmOpcWqLxO1YigZV9pvL4qlcI5w6jj?=
 =?iso-8859-1?Q?ZXE0RR+BHlJTfULom4DiaN6HoZTNzKfhSUghA0O5NnX+qujz8YtY51pGqM?=
 =?iso-8859-1?Q?SQrK53qdASun6mcA0xdBzSFXhQnxoUjjvv67L/3B1YN2j3FgAMAX6a56wP?=
 =?iso-8859-1?Q?1/6c7NfFxIyTU9Hp5Ey9Exw/41D+1+doCnkwUT49Pc1e/DQJ7F68331Cx3?=
 =?iso-8859-1?Q?CnAUi2XE37SQAxFJwSUQXEJgXWxYw6GQL2RDtGXcXZQ8Cb02tCo22/ty+F?=
 =?iso-8859-1?Q?xikqvuM73LFl6O8cqfNn6v//DvmNKxWGxVYzV3NearCBwqtdh6RAsHBT7T?=
 =?iso-8859-1?Q?BXdpIfQqWtkFgjjgOOB8eEOU3S38bmp3DuEonJRvBPDdM1BmqZSN9yR27j?=
 =?iso-8859-1?Q?ARGBItbCI3CaCvDYAFeLRv6EtcBpomxMKHnCTl3XgjRz5IDgGSektnwyY+?=
 =?iso-8859-1?Q?e2rDQy1QkH05OSXO1W/ATYXkiAIzXkPxiTuCN3Se0SgjIzrsHH4tyCx1kH?=
 =?iso-8859-1?Q?UBjLPo9mSyaKIZH7?=
MIME-Version: 1.0
X-OriginatorOrg: kpit.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PNZPR01MB4224.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a6815f1-e290-4d67-df84-08d8e54f2300
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2021 12:05:32.1389
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JHSLgmPu1E8iAPUqnL9wb+7A8c65Cyz7sw2cwAgtmWxL44Q1DnGXFwdyISFIFy7/VyUkjPd1v2RcuFch/6iyBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN1PR0101MB1645
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PNZPR01MB42242C1C0A30C4160B329C6D906F9PNZPR01MB4224INDP_"

--_000_PNZPR01MB42242C1C0A30C4160B329C6D906F9PNZPR01MB4224INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

Please let me know if there any update on this change
& the tentative week when this change is going to merge in the code.

Thanks & Regards,
Purushottam

________________________________
From: Purushottam Choudhary <purushottam.choudhary@kpit.com>
Sent: Friday, February 26, 2021 2:29 PM
To: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Cc: Nisha Parrakat <Nisha.Parrakat@kpit.com>
Subject: [meta-selinux][PATCH] openssh: don't overwrite sshd_config uncondi=
tionally

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

--_000_PNZPR01MB42242C1C0A30C4160B329C6D906F9PNZPR01MB4224INDP_
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
<div style=3D"box-sizing:border-box;font-family:&quot;Segoe UI&quot;, syste=
m-ui, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, sans-serif=
;font-size:14px;orphans:2;widows:2">
<span>Hi,<br>
<br>
</span>
<div></div>
<div class=3D"copy-paste-block"><span>Please let me know if there any updat=
e on this change
<br>
</span></div>
<span class=3D"copy-paste-block"><span>&amp; the tentative week when this c=
hange is going to merge in the code.</span></span></div>
<br>
</div>
<div>
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
<b>Sent:</b> Friday, February 26, 2021 2:29 PM<br>
<b>To:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Cc:</b> Nisha Parrakat &lt;Nisha.Parrakat@kpit.com&gt;<br>
<b>Subject:</b> [meta-selinux][PATCH] openssh: don't overwrite sshd_config =
unconditionally</font>
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

--_000_PNZPR01MB42242C1C0A30C4160B329C6D906F9PNZPR01MB4224INDP_--
