Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.41])
 by mx.groups.io with SMTP id smtpd.web11.23775.1628520017326154593
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Aug 2021 07:40:18 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@methodpark.de header.s=selector1 header.b=E6wZhH0R;
 spf=pass (domain: methodpark.de, ip: 40.107.8.41, mailfrom: daniel.danner@methodpark.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KqJK/9hKfkg1IM/XwToboOEr4FUjipRK+ZcbCdgZV9w+mEA4ix1eswfZrx4KvWEttq270xShetuJb3W5Y/Na3JsC0jtH8Q9gVK+JJ2qBBKwBrT6SDRlINbEP71qivo1ZFbmRBdr+91zGqwaNMmdguT+OUyWAUe9mn+y9FqguaWhw4JfrF28Kwn/uWAk+l4btrxYhS72gh45LCEZSC37xMtgckRoiPiN3w4blCjO7GyzxkFv6BN7aws5oehZvIOCWa9XSFaEmgLziXfbxiWhLYfLfJKQEvHprHDZFx2a54zODSTLgVgJ61xLge5Ath5WWPJ0Wt0gfOOB/v9gsMdgNYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/xKEQwM4LkDBZClteG35VnO8tP6FoCdVqNE3Onvja88=;
 b=Ik9RhDd2KtP6HvKbZwyPBbhNmqGt3tuM4LRYLBXlIsf7G0FM+GIzdo2NCl3eBO5h2Goc8EDcpaesA9jGCenr8MruW3GU0nbXXuN6o0Xqu/Il5bize1OvkJ3TqYfmoOTK8fXvMShrLCacI03yB/RDnU57L7zW3nIH44p8L9TiZg2i7O4IQTWVsEFlgq8+g8cCSk9tKIUWf+FefD8qIMkXKjB9TWpgQf7f7DzHidhT0EHNDVPeRZifpPH2IaZHucQmSG+02t1DSLZonXJg4ZFUa+N0HieetluEH0NSjCEoNrRvWe1WwgYE2tQxphW+JHg8tHOuga/gb6WF8uiRGXUOXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=methodpark.de; dmarc=pass action=none
 header.from=methodpark.de; dkim=pass header.d=methodpark.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=methodpark.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/xKEQwM4LkDBZClteG35VnO8tP6FoCdVqNE3Onvja88=;
 b=E6wZhH0R6g408PZYfcs7nyWg7lfJBoUPdNMSXQmZU34D1Xjl8d4q9vzPrKgAWPlH6rx5EjNFLGsC4/edFzfsVb4+iPqRB3MNz8Y0xuC+lW1AGCL1Z/zhe6jRFI3EFJfDleePu7r5qVz5gkWbq4vC1oqpLpLUCd2mGpIeAXBAwWs=
Received: from PAXPR08MB6654.eurprd08.prod.outlook.com (2603:10a6:102:15e::19)
 by PR3PR08MB5849.eurprd08.prod.outlook.com (2603:10a6:102:84::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.21; Mon, 9 Aug
 2021 14:40:15 +0000
Received: from PAXPR08MB6654.eurprd08.prod.outlook.com
 ([fe80::c1a8:643a:8413:3b20]) by PAXPR08MB6654.eurprd08.prod.outlook.com
 ([fe80::c1a8:643a:8413:3b20%3]) with mapi id 15.20.4394.023; Mon, 9 Aug 2021
 14:40:15 +0000
From: "Daniel Danner" <daniel.danner@methodpark.de>
To: yocto@lists.yoctoproject.org
CC: Daniel Danner <Daniel.Danner@methodpark.de>
Subject: [meta-selinux][dunfell][PATCH] libselinux: Backport class cache flushing patch from 3.1
Date: Mon,  9 Aug 2021 16:40:00 +0200
Message-ID: <20210809144000.32946-1-Daniel.Danner@methodpark.de>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: PR3PR09CA0001.eurprd09.prod.outlook.com
 (2603:10a6:102:b7::6) To PAXPR08MB6654.eurprd08.prod.outlook.com
 (2603:10a6:102:15e::19)
Return-Path: Daniel.Danner@methodpark.de
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dldr.bmwgroup.net (46.244.184.1) by PR3PR09CA0001.eurprd09.prod.outlook.com (2603:10a6:102:b7::6) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.17 via Frontend Transport; Mon, 9 Aug 2021 14:40:14 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 738e91aa-b55e-4cdd-fb94-08d95b4399aa
X-MS-TrafficTypeDiagnostic: PR3PR08MB5849:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<PR3PR08MB5849F86FB863367B578F4043F5F69@PR3PR08MB5849.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	6wVW05V1tgnoFMmEjYftyptoffrxA1X8V4MbKZKQHULf8nsKGWz0pQIg8S++kNFQFHBgwHXHuD22u6zO8PAVBQmne3SoHVJpmZ9PpkOhPreBHJwexQYOC78SADpWYMAH8rcij6eAdZ9oYBsQuALuyJT3/Qiz/iP94QFYgQxeTpZu0bowv4CzRpEvH92ZW223VergVcdnjYS9/t6ixhOJJLW/9o+rSRqEpWnCg9J/Y0O/GpSyUgWPJSV8Trm3kL38q3i/Ne9b1oGjQdOG0CvIM7KDek18z5QjkPnVSQOvkKcsgkv3Lp81Y13m8jJCQOr9CX9rXpNoQ4CnkaeL09YtQRmVeBjbLlw6lVDtbWUzzrwTBylsdEkigcNqjr+We3/k90zVPaVeStflFNMFJK91bx0y5kq4usUe9WmS70sTx9ofWGioUl8TwSYU03T23ke4y7Dtvbz92JpQzLXYSvdk7zjMYyPxKMvckUWfG2Xms38Mw4puVYqky4azvwk/DcKjFAzpbpJxCfSKosubx2k/w2DqThOaaXUVmqE+vFjBqNeUNRBJ4pjBz2RdmX/OIvfyPtPFMBAC+8whXlgfYh0vuYY0K20xcarKg3oPNRDfFi/7h46kjeQiK5MB+tZ2qhtgk9KDtL293rM0ElVFPycM93AYAr21gSoo8LbuXix0mb5digG6KFx4pHLn3gF4vaRuNdGkEcTLJyjTKZxJ6LKFgg1W70ZuRPlWbShUz7223+WX9EJ1lZb78OoBpBHqVo+JZE9Sg53mh2rhBeTOrb8X54WrBNIxgo3M4KorC62a2PE=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR08MB6654.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(346002)(136003)(396003)(376002)(39830400003)(83380400001)(66946007)(186003)(38350700002)(38100700002)(66556008)(86362001)(2616005)(316002)(5660300002)(6512007)(956004)(66476007)(1076003)(36756003)(6486002)(4326008)(8936002)(6666004)(6506007)(8676002)(107886003)(52116002)(26005)(478600001)(6916009)(2906002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?rWAY436C+EOSQJ6eF31xXSKxa+NLa0cw8H/A2G0c1piYr8dLvDQkb595waFz?=
 =?us-ascii?Q?xKmEY+COqf1Js53Dn4QR8Hs6Utq4ju3TkpbCn7hwA0bd/fNSw9V3a4otpC0l?=
 =?us-ascii?Q?AI37RrIAaxvCzgZjNPVHIg/cfG2i9Emso74txmnplSXukOey1Jf16rcOcHey?=
 =?us-ascii?Q?LoyhvvOc3+1LdMoZX7ZvJtWc3rE03CpJmm6X0hRfl1myPypEoXkuZvQ4A+wi?=
 =?us-ascii?Q?ZqYRxhYXFyXnKUdxuS7KRKUPDMEHVungElvcybTEPVsi7Lbs2la9Eb0KBMUr?=
 =?us-ascii?Q?4j7t5kvm50fvBOT7N472QoHUPFDcsSopC6IulXosurudptqsR+wbIN7SgdnV?=
 =?us-ascii?Q?IfhU5FJcWm9xzeFwtmyQp3zU/YzzasQIRWbJKbGZG2rxaM96YZtz69BUT/65?=
 =?us-ascii?Q?izHwG0YDDT4vWSbrnGrwJiZLuO7XFm1niDrpZOb62vB5o+Ms9/EqXxuLLOqz?=
 =?us-ascii?Q?ClovtZgV1z3Hr4y0Fvcn8jXRWnu3K5mSP4oMgO38Noz2QSeEfsbvU3Fl+ni+?=
 =?us-ascii?Q?DHIfK4io7KT9C07toTV/1Twoto4w1W29NcsmMinh6lCKiN5ClSfABeqK/T5J?=
 =?us-ascii?Q?ZdW4ZKAuZoJ7fM4md+fZGTRq3+ksQHwA1gK8FRg6iAEu7NAcGBVRg9JjZDCK?=
 =?us-ascii?Q?Cq8nEeik18jfF2SnKMgvQwtcsXuuPkCw3go+UC8wT/Ng/nd9NfyUWZPT5aKs?=
 =?us-ascii?Q?g/HGA1nU5qsiJFneTFAFR4xK+l4zwfMjaGuxdensnVtAF3kCcOvEAZ/wEeSZ?=
 =?us-ascii?Q?WlY/gUPsE1ieSLnfGOnfuvWdTKTWXz3FvtZtjBI0eDfliRMTHXUrCoMpJqsQ?=
 =?us-ascii?Q?nIIBJ86OiudZ9Cbs8N9MeEBXIMuImHb5iTZOA5iTfmpNS4x9dFEObq7U9gDw?=
 =?us-ascii?Q?rUCfdAcXQpehOwy1jicbelPaczryo+OfK2/w1eX70HS3BtTg5Mqrl/kSNJcD?=
 =?us-ascii?Q?CtLT+eXVYkIXCIAoJVXcMzK24jwuBGMK36NoA9dC5/pox9+RzBy5vSz6OH44?=
 =?us-ascii?Q?jDR1U3ewVpIKuKr1DggbGfemx86805ebbY3fvs+59GaaYaiBr/j1FEuKTH4p?=
 =?us-ascii?Q?6L8ADN4oJeEzkh760LaDzSjAplH7e8q3BtO4uurZY+CV6WfHguk7KzVz7Oxe?=
 =?us-ascii?Q?jM7ONUgpQn9A/jBTgZF7CTLN36eu8f5OjbPwoW9gaDDL0uaGJ5C0OvS+/zp2?=
 =?us-ascii?Q?KbC8afeLjZAEfad0SYx9lydE/gD0C2bmFZjLRJ/53t/Yue9UK8dKdBOivHpz?=
 =?us-ascii?Q?xYqugaZUVSgmcFQidThLLWG6qY5Lp16+wopVkwAvCNRGc/64CVSL37RMobAZ?=
 =?us-ascii?Q?9m/IDrCp81vMRPMhMXyIvHAn?=
X-OriginatorOrg: methodpark.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 738e91aa-b55e-4cdd-fb94-08d95b4399aa
X-MS-Exchange-CrossTenant-AuthSource: PAXPR08MB6654.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Aug 2021 14:40:15.0035
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: eb611ac0-eafe-4516-ac14-6de964173ebb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RGLQnLZP6Z4uRhp/oMkdoUHD/QBwNy3sxYMO1ia2AI1yCGtQoa89j4H4qdxzRjBAHnFSQWXKRk1qHwJTlseXt7tpbVlJ5J4hejBEGApjKuQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR08MB5849
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

This fixes a bug in libselinux that gets triggered by loading another
policy at runtime. Before this patch, the userspace class cache was not
flushed when a new policy was loaded. This led to SELinux-aware
processes performing invalid lookups if their lifecycle overlapped with
a policy load. Specifically, lookups performed by dbus-daemon would
yield invalid results due to using outdated class IDs in their query.
---
 ...t-flush_class_cache-call-it-on-polic.patch | 126 ++++++++++++++++++
 recipes-security/selinux/libselinux_3.0.bb    |   1 +
 2 files changed, 127 insertions(+)
 create mode 100644 recipes-security/selinux/libselinux/0001-libselinux-exp=
ort-flush_class_cache-call-it-on-polic.patch

diff --git recipes-security/selinux/libselinux/0001-libselinux-export-flush=
_class_cache-call-it-on-polic.patch recipes-security/selinux/libselinux/000=
1-libselinux-export-flush_class_cache-call-it-on-polic.patch
new file mode 100644
index 0000000..dd79f64
--- /dev/null
+++ recipes-security/selinux/libselinux/0001-libselinux-export-flush_class_=
cache-call-it-on-polic.patch
@@ -0,0 +1,126 @@
+From 7bece3768b8ce63d79ef59bab83517b4e950f8fb Mon Sep 17 00:00:00 2001
+From: Stephen Smalley <sds@tycho.nsa.gov>
+Date: Tue, 21 Jan 2020 11:18:22 -0500
+Subject: [PATCH] libselinux: export flush_class_cache(), call it on policy=
load
+
+Rename flush_class_cache() to selinux_flush_class_cache(), export it
+for direct use by userspace policy enforcers, and call it on all policy
+load notifications rather than only when using selinux_check_access().
+This ensures that policy reloads that change a userspace class or
+permission value will be reflected by subsequent string_to_security_class(=
)
+or string_to_av_perm() calls.
+
+Signed-off-by: Stephen Smalley <sds@tycho.nsa.gov>
+---
+ libselinux/include/selinux/selinux.h |  3 +++
+ libselinux/src/avc_internal.c        |  2 ++
+ libselinux/src/checkAccess.c         | 13 -------------
+ libselinux/src/selinux_internal.h    |  3 +--
+ libselinux/src/stringrep.c           |  4 +++-
+ 5 files changed, 9 insertions(+), 16 deletions(-)
+
+Upstream-Status: Backport [https://github.com/SELinuxProject/selinux/commi=
t/7bece3768b8ce63d79ef59bab83517b4e950f8fb]
+
+diff --git libselinux/include/selinux/selinux.h libselinux/include/selinux=
/selinux.h
+index fe46e681..7922d96b 100644
+--- libselinux/include/selinux/selinux.h
++++ libselinux/include/selinux/selinux.h
+@@ -418,6 +418,9 @@ extern int security_av_string(security_class_t tclass,
+ /* Display an access vector in a string representation. */
+ extern void print_access_vector(security_class_t tclass, access_vector_t =
av);
+=20
++/* Flush the SELinux class cache, e.g. upon a policy reload. */
++extern void selinux_flush_class_cache(void);
++
+ /* Set the function used by matchpathcon_init when displaying
+    errors about the file_contexts configuration.  If not set,
+    then this defaults to fprintf(stderr, fmt, ...). */
+diff --git libselinux/src/avc_internal.c libselinux/src/avc_internal.c
+index 49cecc96..568a3d92 100644
+--- libselinux/src/avc_internal.c
++++ libselinux/src/avc_internal.c
+@@ -23,6 +23,7 @@
+ #include "callbacks.h"
+ #include "selinux_netlink.h"
+ #include "avc_internal.h"
++#include "selinux_internal.h"
+=20
+ #ifndef NETLINK_SELINUX
+ #define NETLINK_SELINUX 7
+@@ -207,6 +208,7 @@ static int avc_netlink_process(void *buf)
+ 				avc_prefix, rc, errno);
+ 			return rc;
+ 		}
++		selinux_flush_class_cache();
+ 		rc =3D selinux_netlink_policyload(msg->seqno);
+ 		if (rc < 0)
+ 			return rc;
+diff --git libselinux/src/checkAccess.c libselinux/src/checkAccess.c
+index 16bfcfb6..7227ffe5 100644
+--- libselinux/src/checkAccess.c
++++ libselinux/src/checkAccess.c
+@@ -10,25 +10,12 @@
+ static pthread_once_t once =3D PTHREAD_ONCE_INIT;
+ static int selinux_enabled;
+=20
+-static int avc_reset_callback(uint32_t event __attribute__((unused)),
+-		      security_id_t ssid __attribute__((unused)),
+-		      security_id_t tsid __attribute__((unused)),
+-		      security_class_t tclass __attribute__((unused)),
+-		      access_vector_t perms __attribute__((unused)),
+-		      access_vector_t *out_retained __attribute__((unused)))
+-{
+-	flush_class_cache();
+-	return 0;
+-}
+-
+ static void avc_init_once(void)
+ {
+ 	selinux_enabled =3D is_selinux_enabled();
+ 	if (selinux_enabled =3D=3D 1) {
+ 		if (avc_open(NULL, 0))
+ 			return;
+-		avc_add_callback(avc_reset_callback, AVC_CALLBACK_RESET,
+-				 0, 0, 0, 0);
+ 	}
+ }
+=20
+diff --git libselinux/src/selinux_internal.h libselinux/src/selinux_intern=
al.h
+index 8b4bed2f..61b78aaa 100644
+--- libselinux/src/selinux_internal.h
++++ libselinux/src/selinux_internal.h
+@@ -107,8 +107,7 @@ hidden_proto(selinux_trans_to_raw_context);
+ hidden_proto(security_get_initial_context);
+ hidden_proto(security_get_initial_context_raw);
+ hidden_proto(selinux_reset_config);
+-
+-hidden void flush_class_cache(void);
++hidden_proto(selinux_flush_class_cache);
+=20
+ extern int require_seusers hidden;
+ extern int selinux_page_size hidden;
+diff --git libselinux/src/stringrep.c libselinux/src/stringrep.c
+index 4db95398..29757b75 100644
+--- libselinux/src/stringrep.c
++++ libselinux/src/stringrep.c
+@@ -158,7 +158,7 @@ err1:
+ 	return NULL;
+ }
+=20
+-hidden void flush_class_cache(void)
++void selinux_flush_class_cache(void)
+ {
+ 	struct discover_class_node *cur =3D discover_class_cache, *prev =3D NULL=
;
+ 	size_t i;
+@@ -180,6 +180,8 @@ hidden void flush_class_cache(void)
+ 	discover_class_cache =3D NULL;
+ }
+=20
++hidden_def(selinux_flush_class_cache)
++
+ security_class_t string_to_security_class(const char *s)
+ {
+ 	struct discover_class_node *node;
+--=20
+2.25.1
+
diff --git recipes-security/selinux/libselinux_3.0.bb recipes-security/seli=
nux/libselinux_3.0.bb
index 05d2346..17a25a9 100644
--- recipes-security/selinux/libselinux_3.0.bb
+++ recipes-security/selinux/libselinux_3.0.bb
@@ -12,4 +12,5 @@ SRC_URI +=3D "\
         file://libselinux-make-SOCK_CLOEXEC-optional.patch \
         file://libselinux-define-FD_CLOEXEC-as-necessary.patch \
         file://0001-Fix-building-against-musl-and-uClibc-libc-libraries.pa=
tch \
+        file://0001-libselinux-export-flush_class_cache-call-it-on-polic.p=
atch \
         "
--=20
2.25.1

