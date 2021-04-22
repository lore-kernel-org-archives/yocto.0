Received: from NAM02-DM3-obe.outbound.protection.outlook.com (NAM02-DM3-obe.outbound.protection.outlook.com [40.107.95.43])
 by mx.groups.io with SMTP id smtpd.web09.8749.1619074591369741719
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Apr 2021 23:56:31 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=nGVdLIYm;
 spf=pass (domain: windriver.com, ip: 40.107.95.43, mailfrom: yi.zhao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FckqlznlTwwnxDO6aaxwayJLJa9XotxWc+rVlMCGEy7BTyK38qZkz9Uctt/6DuodZS2SIRhp/5UNuakKhSf3gTr6zVv+GjOAQvOR17AL8xpw9fnH+JxiFCx7eR0nydNG61zAOVO24dDizUkt9Rbivi6Z8tNy1M8Kmt6qYQ94+FY8wKlyc6JtsT5MMQ1+UVkRZcpV7oX+FSvtkPK6egQw0lVnazHJgZu32/vwrNJrKIXdCSINE5l55XsX1TJRLNDtcM3EEE19+ckTlAS8Nx9DBkqUVhradOZ77dL/PLj1PzrcWhcoQFAB8r7ylZmEqCb7zy1kxJ2kh5qQHswJaswONA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZsNgTBOofceTey+62MoBVvm82nUR5HfQosUN0VD85ac=;
 b=fHlHgk2t/tFXhX83R43d6xyOWG1CxBZ+n8Ef0EYNHCCmNBlDxxaFoMo5nMyiWFIgrrK+RtDMpZI3YolSeLK0ou8KQUtKRQ095sMS9PeFhHPMosvWCqQr0Cb2V8QZDjLLvltMoJKfRrIACaQxpsByHZhcnuK8mkGPRPqAOXK0mOuRPIXJl+YRc1emYjrxlSX4ukliRI3ZGUcpZsIGMGYBVCeoh0ZUBTTzrZbHxDhnmk85CZCBgOtYvHosRy8WIRlGK8xk02hWKxGbDY3FUpZxqCvLn+q7T5qR2vc0pmRuCN3L8hcfX59Xi+qPUAbO7WHVK5wpE0w1s6EpvpXenzPCxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZsNgTBOofceTey+62MoBVvm82nUR5HfQosUN0VD85ac=;
 b=nGVdLIYmdgtA38AuPDv8E+l5Oc+jD97m6rv4kTkcK//dXJCBslcGjXSCd/CeJrHFkK8ZOgOVzqmLA8lwXL4I0fv78K5N3cL7ChwnaMw1cP0QTpI5UJeMWbIv/vMmu68HEy0euq/u82U4SNS4mEloQIRzcST55SevRIBT2Yu+58U=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1789.namprd11.prod.outlook.com (2603:10b6:300:108::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16; Thu, 22 Apr
 2021 06:56:30 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::55fe:763e:6961:7bbf]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::55fe:763e:6961:7bbf%4]) with mapi id 15.20.4065.021; Thu, 22 Apr 2021
 06:56:30 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org,
	jason.wessel@windriver.com,
	mark.hatle@kernel.crashing.org
Subject: [meta-openssl102-fips][PATCH 4/6] openssh: refresh patches to 8.5p1
Date: Thu, 22 Apr 2021 14:56:07 +0800
Message-ID: <20210422065609.143415-5-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210422065609.143415-1-yi.zhao@windriver.com>
References: <20210422065609.143415-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: BY3PR10CA0023.namprd10.prod.outlook.com
 (2603:10b6:a03:255::28) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
Return-Path: yi.zhao@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by BY3PR10CA0023.namprd10.prod.outlook.com (2603:10b6:a03:255::28) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.22 via Frontend Transport; Thu, 22 Apr 2021 06:56:27 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fb603088-050d-4d94-95a7-08d9055bc0f0
X-MS-TrafficTypeDiagnostic: MWHPR11MB1789:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB1789080583841054E6BED669F9469@MWHPR11MB1789.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2887;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ahIWkjJ+PXGMWSpJE0tB4ew7I17+SwVsA2UG4OQmCzltwThiFLqYjxHhLVjWwnzs7Rdjlb5pf3wlpCf8/CBSf5IOtmZY5e60rbtvTVqHOl17bTI9M73fp7hE1cNUph3qig33+fTZB0m+BPGVV6A5pcy+xIrF7kXWG0CFkyGzxEXPRvB30B8X80f2cw4EWlXLnlCD2eRQRPJmM1SO1fN40y5BqrkxfeFqvlH+3/EQC+pOw9arBwe/T8pxtdKN4o07rQekpgFJ8LohdYvQSfaouVopejsmvrnTIERKbF/PUxazA9EyHG4jPOe3yS8Yb0+7rd64EaS5oxBvnIDfLO1NY3W/C2LfggoFwrqOWJ1j/Rc+fMa2w6sciMAyokiQjJYq9SLXeDTX+l0ueW8DTefx/UIPWsfc3IzgK/H9omrGYKQqpA/NlDQCkh8m4t8SxQCtMzvstSJkmJSWuGxY9j1ISijIvrMJcTuCFjTWc0EwgrC9EDsawt5WPuoTXfD9ujnXoS/h6Rxjrx7oc5VbEgroXQzTw8JKvajokCtuWylC+3zPFDIQk3snTEDhMwmC3QpiyK20m9H5GgkhLHqwugfq+gVFHXKbL6dieat1hR+4mKgzw/d0tlicIrdXs7cGiK/U2lIfuWBk99GYsWyTK9Wb8zCfdkAmQZ8MHHjYMCAeUQo=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(136003)(366004)(39850400004)(346002)(376002)(86362001)(26005)(38100700002)(6512007)(66556008)(5660300002)(2906002)(66476007)(186003)(6666004)(38350700002)(83380400001)(316002)(52116002)(956004)(36756003)(6506007)(53546011)(8676002)(30864003)(478600001)(66946007)(2616005)(8936002)(44832011)(16526019)(1076003)(6486002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?e5mc1JejHKnbz5fei7FaIaa+lPfqyz3AbsYGF/R8iP6qSMRsBe6NgIBB28Eo?=
 =?us-ascii?Q?wLtRP4xS5NbvGrXUOR89Z0ZYWAhQqwKr4Tl7v/5lMa2xas3GBMzEaGdE0oRH?=
 =?us-ascii?Q?H52/s0q/32uCUBsBHsEGmqqKoqE4fIehTt4uLZpLFU9B8ykqYHvmZi4adcmi?=
 =?us-ascii?Q?H9GjmPPIxUTDZX6QLHJ/+w+lP9BgdT4YpKLugnMd0ZMyP0BrbK7Smzo211o0?=
 =?us-ascii?Q?itbo10tpnfchp/Vck7kHeW91pHE33awn0ANmWxmPtaAmbyhwyaEIYl0gxFkP?=
 =?us-ascii?Q?E6vg8iA1BVYgQplL7ldImFEEPakVwomKJR6mOQOsT3SnTT+RxdXrko4Ot/5x?=
 =?us-ascii?Q?hiXuf9xgfjpk7zPgGevfPyWdDpGL3SWaAc+DgnU9Q2noh+ADGzbHDdBOd0Jl?=
 =?us-ascii?Q?OvK+Sgh6Tvs50ojbYZrtkUTo5z7z1OsaP8phZwc6nvVKd93oA8tTLlN5bAOF?=
 =?us-ascii?Q?fJTTUXugLJ9T2/nYVbs6DK9xc58WPKxnMf7TkoXBvRFhMWhEK/VbE6j2JTkk?=
 =?us-ascii?Q?cgJaGgJtQVCRfPoQz2CD4bW+jOxgSXvjWdc6B+TjMQNpQCVbao5OT9o8bdaP?=
 =?us-ascii?Q?AFXXsfP+iquiseCEdHTEED8yYoqTp+Ij2tn/xyY4rryNMEI5OucUlWde+3Ee?=
 =?us-ascii?Q?3ESVs9dKHwHwWZcao7Ny6eUNJxaWAdDkxUorUSV1fAyanhg077A8uGnne4MW?=
 =?us-ascii?Q?b32AaD28UOkPYeIwRQz2SJFoymdbR74JeS3ruvH8/73kg4WwqlTaLBIQGpIR?=
 =?us-ascii?Q?2Q8KngwX/xdbJXJNu5SD/dlHDyEBepkaajUrCbTGaJxbyFsgI/1jDEBmbLs4?=
 =?us-ascii?Q?8mXX2+snt7wnnRV/UaO1S7JTii3XT266cGK17XtJTARo8FeTl1OF0o98ckl/?=
 =?us-ascii?Q?wHSBx0jruNEji3vQPaDLzw9JKX1I+jRjQ03VZZaBQearErR4qv/ghXp+jvv8?=
 =?us-ascii?Q?SbHGpExHcginbW2sZ/ixzmMYJ9XPFUzu69DlYk8Ly6aoutHWgqKBbqszJ19h?=
 =?us-ascii?Q?NzP4Zl5D6ChglNKOpp96j19wKb0koOYEinPbg1BqFqIv1yZVqgQqgjZAXcid?=
 =?us-ascii?Q?9fNNRV7QJrpunDhrdNkpxbFPCDlNx3aUpAHJtbVIne4SC/MhmbFB2Hv2Jg0o?=
 =?us-ascii?Q?zPmyBlY53X+zAxCK2DddzrxZAW4IR9ukw91+HHFchT4HzCQhj4y20g7f0puj?=
 =?us-ascii?Q?2vi6Dk3By0K+r4PPGlH1t1kfLw429VdO97D3ke3JHPIktm2d4OkGUT62JNyR?=
 =?us-ascii?Q?mBxlA2a+4GM6kOW+uIsqtCsgCLma0MY5m9hh+p2zft1cubp3CX16mve62Zbc?=
 =?us-ascii?Q?WeJShc1Ac6X5cpXwnQUSKetc?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb603088-050d-4d94-95a7-08d9055bc0f0
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2021 06:56:30.1207
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hbl4TPN4xj7/WalF1O02YHGBGtsoGclgMXiaRJbLO//FbCuvza9uzA4En6MzFtSWoAXO0yNY/f0qI/4yeP21bQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1789
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 .../0001-conditional-enable-fips-mode.patch   | 40 ++++++++--------
 .../openssh/0001-openssh-8.4p1-fips.patch     | 48 +++++++++----------
 2 files changed, 44 insertions(+), 44 deletions(-)

diff --git a/recipes-connectivity/openssh/openssh/0001-conditional-enable-f=
ips-mode.patch b/recipes-connectivity/openssh/openssh/0001-conditional-enab=
le-fips-mode.patch
index 17c5967..9fd19c0 100644
--- a/recipes-connectivity/openssh/openssh/0001-conditional-enable-fips-mod=
e.patch
+++ b/recipes-connectivity/openssh/openssh/0001-conditional-enable-fips-mod=
e.patch
@@ -1,4 +1,4 @@
-From 571b24129e3c3a84e38a59a32aa61fa40e04e1e2 Mon Sep 17 00:00:00 2001
+From 48888de317391522186c6ae24a8d6d7d7add2673 Mon Sep 17 00:00:00 2001
 From: Hongxu Jia <hongxu.jia@windriver.com>
 Date: Sat, 21 Dec 2019 13:03:23 +0800
 Subject: [PATCH] conditional enable fips mode
@@ -44,10 +44,10 @@ index 06566d3..a10566d 100644
  	sanitise_stdfd();
 =20
 diff --git a/sftp-server.c b/sftp-server.c
-index 55386fa..8c1634e 100644
+index 7300900..42da9d7 100644
 --- a/sftp-server.c
 +++ b/sftp-server.c
-@@ -1577,6 +1577,7 @@ sftp_server_main(int argc, char **argv, struct passw=
d *user_pw)
+@@ -1616,6 +1616,7 @@ sftp_server_main(int argc, char **argv, struct passw=
d *user_pw)
  	extern char *optarg;
  	extern char *__progname;
 =20
@@ -56,10 +56,10 @@ index 55386fa..8c1634e 100644
  	log_init(__progname, log_level, log_facility, log_stderr);
 =20
 diff --git a/sftp.c b/sftp.c
-index c88c861..171bc56 100644
+index fb3c08d..85b9b67 100644
 --- a/sftp.c
 +++ b/sftp.c
-@@ -2390,6 +2390,7 @@ main(int argc, char **argv)
+@@ -2345,6 +2345,7 @@ main(int argc, char **argv)
  	size_t num_requests =3D DEFAULT_NUM_REQUESTS;
  	long long limit_kbps =3D 0;
 =20
@@ -68,10 +68,10 @@ index c88c861..171bc56 100644
  	sanitise_stdfd();
  	msetlocale();
 diff --git a/ssh-add.c b/ssh-add.c
-index 936dc21..b7ac2d2 100644
+index 7edb9f9..c75f85b 100644
 --- a/ssh-add.c
 +++ b/ssh-add.c
-@@ -671,6 +671,7 @@ main(int argc, char **argv)
+@@ -667,6 +667,7 @@ main(int argc, char **argv)
  	SyslogFacility log_facility =3D SYSLOG_FACILITY_AUTH;
  	LogLevel log_level =3D SYSLOG_LEVEL_INFO;
 =20
@@ -80,10 +80,10 @@ index 936dc21..b7ac2d2 100644
  	sanitise_stdfd();
 =20
 diff --git a/ssh-agent.c b/ssh-agent.c
-index e1fd1f3..da49b57 100644
+index 58fe6dd..9018a7c 100644
 --- a/ssh-agent.c
 +++ b/ssh-agent.c
-@@ -1289,6 +1289,7 @@ main(int ac, char **av)
+@@ -1388,6 +1388,7 @@ main(int ac, char **av)
  	size_t npfd =3D 0;
  	u_int maxfds;
 =20
@@ -92,10 +92,10 @@ index e1fd1f3..da49b57 100644
  	sanitise_stdfd();
 =20
 diff --git a/ssh-keygen.c b/ssh-keygen.c
-index cb8e569..67c7d62 100644
+index 6451584..246caa1 100644
 --- a/ssh-keygen.c
 +++ b/ssh-keygen.c
-@@ -3184,6 +3184,7 @@ main(int argc, char **argv)
+@@ -3153,6 +3153,7 @@ main(int argc, char **argv)
  	extern int optind;
  	extern char *optarg;
 =20
@@ -104,7 +104,7 @@ index cb8e569..67c7d62 100644
  	sanitise_stdfd();
 =20
 diff --git a/ssh-keyscan.c b/ssh-keyscan.c
-index ca19042..c667f2c 100644
+index 7abbcbf..b604bfd 100644
 --- a/ssh-keyscan.c
 +++ b/ssh-keyscan.c
 @@ -667,6 +667,7 @@ main(int argc, char **argv)
@@ -116,7 +116,7 @@ index ca19042..c667f2c 100644
  	seed_rng();
  	TAILQ_INIT(&tq);
 diff --git a/ssh-keysign.c b/ssh-keysign.c
-index 7991e0f..26a3bab 100644
+index 907162d..294148a 100644
 --- a/ssh-keysign.c
 +++ b/ssh-keysign.c
 @@ -173,6 +173,7 @@ main(int argc, char **argv)
@@ -128,10 +128,10 @@ index 7991e0f..26a3bab 100644
  		fatal("%s: pledge: %s", __progname, strerror(errno));
 =20
 diff --git a/ssh-pkcs11-helper.c b/ssh-pkcs11-helper.c
-index d73e835..e508684 100644
+index a9a6fe3..3c76f70 100644
 --- a/ssh-pkcs11-helper.c
 +++ b/ssh-pkcs11-helper.c
-@@ -332,6 +332,7 @@ main(int argc, char **argv)
+@@ -326,6 +326,7 @@ main(int argc, char **argv)
  	extern char *__progname;
  	struct pollfd pfd[2];
 =20
@@ -140,22 +140,22 @@ index d73e835..e508684 100644
  	seed_rng();
  	TAILQ_INIT(&pkcs11_keylist);
 diff --git a/ssh.c b/ssh.c
-index aabd5d3..81393f1 100644
+index 729d87a..ab78b53 100644
 --- a/ssh.c
 +++ b/ssh.c
-@@ -660,6 +660,7 @@ main(int ac, char **av)
- 	size_t n, len;
+@@ -650,6 +650,7 @@ main(int ac, char **av)
  	u_int j;
+ 	struct ssh_conn_info *cinfo =3D NULL;
 =20
 +	ssh_enable_fips_mode();
  	/* Ensure that fds 0, 1 and 2 are open or directed to /dev/null */
  	sanitise_stdfd();
 =20
 diff --git a/sshd.c b/sshd.c
-index 1f1fcc2..0f68419 100644
+index fee4703..07faf7b 100644
 --- a/sshd.c
 +++ b/sshd.c
-@@ -1553,6 +1553,7 @@ main(int ac, char **av)
+@@ -1534,6 +1534,7 @@ main(int ac, char **av)
  	Authctxt *authctxt;
  	struct connection_info *connection_info =3D NULL;
 =20
diff --git a/recipes-connectivity/openssh/openssh/0001-openssh-8.4p1-fips.p=
atch b/recipes-connectivity/openssh/openssh/0001-openssh-8.4p1-fips.patch
index 48c18b4..10687ff 100644
--- a/recipes-connectivity/openssh/openssh/0001-openssh-8.4p1-fips.patch
+++ b/recipes-connectivity/openssh/openssh/0001-openssh-8.4p1-fips.patch
@@ -1,4 +1,4 @@
-From 059b61a58b27c40fbb78b3930cdcf110ff717340 Mon Sep 17 00:00:00 2001
+From 0452f9dc4acf90b8d7ac6ddf6ebbe455d202ce54 Mon Sep 17 00:00:00 2001
 From: Hongxu Jia <hongxu.jia@windriver.com>
 Date: Sat, 21 Dec 2019 11:45:38 +0800
 Subject: [PATCH] openssh 8.4p1 fips
@@ -38,7 +38,7 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  14 files changed, 171 insertions(+), 20 deletions(-)
=20
 diff --git a/Makefile.in b/Makefile.in
-index acfb919..5b2c397 100644
+index e3cd296..bf53fb0 100644
 --- a/Makefile.in
 +++ b/Makefile.in
 @@ -204,25 +204,25 @@ libssh.a: $(LIBSSH_OBJS)
@@ -97,7 +97,7 @@ index 32771f2..74fac3b 100644
  	return (&aes_ctr);
  }
 diff --git a/dh.c b/dh.c
-index 7cb135d..306f1bc 100644
+index b5bb35e..676f893 100644
 --- a/dh.c
 +++ b/dh.c
 @@ -152,6 +152,12 @@ choose_dh(int min, int wantbits, int max)
@@ -165,10 +165,10 @@ index 5d6df62..54c7aa2 100644
  u_int	 dh_estimate(int);
 =20
 diff --git a/kex.c b/kex.c
-index aecb939..3d5d3b0 100644
+index 30425ab..1250f42 100644
 --- a/kex.c
 +++ b/kex.c
-@@ -163,7 +163,10 @@ kex_names_valid(const char *names)
+@@ -165,7 +165,10 @@ kex_names_valid(const char *names)
  	for ((p =3D strsep(&cp, ",")); p && *p !=3D '\0';
  	    (p =3D strsep(&cp, ","))) {
  		if (kex_alg_by_name(p) =3D=3D NULL) {
@@ -181,7 +181,7 @@ index aecb939..3d5d3b0 100644
  			return 0;
  		}
 diff --git a/kexgexc.c b/kexgexc.c
-index 323a659..812112d 100644
+index 4a2e741..2535732 100644
 --- a/kexgexc.c
 +++ b/kexgexc.c
 @@ -28,6 +28,7 @@
@@ -192,7 +192,7 @@ index 323a659..812112d 100644
  #include <sys/types.h>
 =20
  #include <openssl/dh.h>
-@@ -113,6 +114,10 @@ input_kex_dh_gex_group(int type, u_int32_t seq, struc=
t ssh *ssh)
+@@ -115,6 +116,10 @@ input_kex_dh_gex_group(int type, u_int32_t seq, struc=
t ssh *ssh)
  		r =3D SSH_ERR_ALLOC_FAIL;
  		goto out;
  	}
@@ -204,7 +204,7 @@ index 323a659..812112d 100644
 =20
  	/* generate and send 'e', client DH public key */
 diff --git a/myproposal.h b/myproposal.h
-index 5312e60..d0accae 100644
+index f03b7df..57b8779 100644
 --- a/myproposal.h
 +++ b/myproposal.h
 @@ -57,6 +57,20 @@
@@ -255,12 +255,12 @@ index 5312e60..d0accae 100644
 +
  /* Not a KEX value, but here so all the algorithm defaults are together *=
/
  #define	SSH_ALLOWED_CA_SIGALGS	\
- 	"ecdsa-sha2-nistp256," \
+ 	"ssh-ed25519," \
 diff --git a/readconf.c b/readconf.c
-index 554efd7..16eda65 100644
+index 724974b..870a654 100644
 --- a/readconf.c
 +++ b/readconf.c
-@@ -2255,11 +2255,16 @@ fill_default_options(Options * options)
+@@ -2475,11 +2475,16 @@ fill_default_options(Options * options)
  	all_key =3D sshkey_alg_list(0, 0, 1, ',');
  	all_sig =3D sshkey_alg_list(0, 1, 1, ',');
  	/* remove unsupported algos from default lists */
@@ -283,7 +283,7 @@ index 554efd7..16eda65 100644
  	do { \
  		if ((r =3D kex_assemble_names(&options->what, \
 diff --git a/sandbox-seccomp-filter.c b/sandbox-seccomp-filter.c
-index e0768c0..8971bba 100644
+index d8dc712..c6e62e4 100644
 --- a/sandbox-seccomp-filter.c
 +++ b/sandbox-seccomp-filter.c
 @@ -157,6 +157,9 @@ static const struct sock_filter preauth_insns[] =3D {
@@ -297,10 +297,10 @@ index e0768c0..8971bba 100644
  	SC_DENY(__NR_openat, EACCES),
  #endif
 diff --git a/servconf.c b/servconf.c
-index f08e374..dbcee84 100644
+index 9695583..98f6303 100644
 --- a/servconf.c
 +++ b/servconf.c
-@@ -213,11 +213,16 @@ assemble_algorithms(ServerOptions *o)
+@@ -218,11 +218,16 @@ assemble_algorithms(ServerOptions *o)
  	all_key =3D sshkey_alg_list(0, 0, 1, ',');
  	all_sig =3D sshkey_alg_list(0, 1, 1, ',');
  	/* remove unsupported algos from default lists */
@@ -323,10 +323,10 @@ index f08e374..dbcee84 100644
  	do { \
  		if ((r =3D kex_assemble_names(&o->what, defaults, all)) !=3D 0) \
 diff --git a/ssh-keygen.c b/ssh-keygen.c
-index a12b79a..cb8e569 100644
+index cfb5f11..6451584 100644
 --- a/ssh-keygen.c
 +++ b/ssh-keygen.c
-@@ -204,6 +204,12 @@ type_bits_valid(int type, const char *name, u_int32_t=
 *bitsp)
+@@ -205,6 +205,12 @@ type_bits_valid(int type, const char *name, u_int32_t=
 *bitsp)
  #endif
  	}
  #ifdef WITH_OPENSSL
@@ -339,7 +339,7 @@ index a12b79a..cb8e569 100644
  	switch (type) {
  	case KEY_DSA:
  		if (*bitsp !=3D 1024)
-@@ -1094,9 +1100,17 @@ do_gen_all_hostkeys(struct passwd *pw)
+@@ -1095,9 +1101,17 @@ do_gen_all_hostkeys(struct passwd *pw)
  			first =3D 1;
  			printf("%s: generating new host keys: ", __progname);
  		}
@@ -359,7 +359,7 @@ index a12b79a..cb8e569 100644
  			error("Could not save your private key in %s: %s",
  			    prv_tmp, strerror(errno));
 diff --git a/ssh.c b/ssh.c
-index f34ca0d..aabd5d3 100644
+index 53330da..729d87a 100644
 --- a/ssh.c
 +++ b/ssh.c
 @@ -77,6 +77,8 @@
@@ -371,7 +371,7 @@ index f34ca0d..aabd5d3 100644
  #include "openbsd-compat/openssl-compat.h"
  #include "openbsd-compat/sys-queue.h"
 =20
-@@ -662,6 +664,16 @@ main(int ac, char **av)
+@@ -652,6 +654,16 @@ main(int ac, char **av)
  	sanitise_stdfd();
 =20
  	__progname =3D ssh_get_progname(av[0]);
@@ -388,7 +388,7 @@ index f34ca0d..aabd5d3 100644
 =20
  #ifndef HAVE_SETPROCTITLE
  	/* Prepare for later setproctitle emulation */
-@@ -1500,6 +1512,10 @@ main(int ac, char **av)
+@@ -1506,6 +1518,10 @@ main(int ac, char **av)
  		exit(0);
  	}
 =20
@@ -400,7 +400,7 @@ index f34ca0d..aabd5d3 100644
  	if (options.sk_provider !=3D NULL && *options.sk_provider =3D=3D '$' &&
  	    strlen(options.sk_provider) > 1) {
 diff --git a/sshd.c b/sshd.c
-index 5af7986..1f1fcc2 100644
+index eff4778..fee4703 100644
 --- a/sshd.c
 +++ b/sshd.c
 @@ -66,6 +66,7 @@
@@ -420,7 +420,7 @@ index 5af7986..1f1fcc2 100644
  #include "openbsd-compat/openssl-compat.h"
  #endif
 =20
-@@ -1555,6 +1558,18 @@ main(int ac, char **av)
+@@ -1536,6 +1539,18 @@ main(int ac, char **av)
  #endif
  	__progname =3D ssh_get_progname(av[0]);
 =20
@@ -439,7 +439,7 @@ index 5af7986..1f1fcc2 100644
  	/* Save argv. Duplicate so setproctitle emulation doesn't clobber it */
  	saved_argc =3D ac;
  	rexec_argc =3D ac;
-@@ -2039,6 +2054,10 @@ main(int ac, char **av)
+@@ -2017,6 +2032,10 @@ main(int ac, char **av)
  	/* Reinitialize the log (because of the fork above). */
  	log_init(__progname, options.log_level, options.log_facility, log_stderr=
);
 =20
@@ -451,7 +451,7 @@ index 5af7986..1f1fcc2 100644
  	   unmounted if desired. */
  	if (chdir("/") =3D=3D -1)
 diff --git a/sshkey.c b/sshkey.c
-index ac451f1..4f72eab 100644
+index b25c59a..8fcfe22 100644
 --- a/sshkey.c
 +++ b/sshkey.c
 @@ -34,6 +34,7 @@
--=20
2.25.1

