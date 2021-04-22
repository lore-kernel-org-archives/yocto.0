Received: from NAM02-DM3-obe.outbound.protection.outlook.com (NAM02-DM3-obe.outbound.protection.outlook.com [40.107.95.60])
 by mx.groups.io with SMTP id smtpd.web08.8835.1619074588530535537
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Apr 2021 23:56:28 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=aG+z725z;
 spf=pass (domain: windriver.com, ip: 40.107.95.60, mailfrom: yi.zhao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ndqymbPjIyb1xyfAmF/71e1WgJc2O1ao54HzewzLF9Cq/qUz6XDd7TqcW7xFUK01KWfFDbmG46a+PWklkNkPpFq/fF7MvEw5FMGSNEEKC3ZZJk1d+dUB5waIfcJ1lDHCw4H70H0Q5rsvqlcuWdbzkj7J4+IRIfNM3LyKiTg81//dRJyzdYYHZwZN63dqvtFHMEtmICg7wWl3PX8+eKHhzV4dI1FZha2IOwlo3JKrIe/YBr9m5jWH625dZpA45EtVag+2YwV1ihL4bsEF+AAZmGwOdUBy4cp2WxnCogmhEGVfx0rVKR9TnJtVhf/h+E8ayRezsRKMImsYue6UXxMsdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XFhU+b5cggfG4N5KWK9YZlxbXhQd1x/sAWUAysRAWtM=;
 b=WXll6NYESYVyU1MSnHePCOPIo9slkmEafjlb3Fw9yphJIIOdxd6NoZtYm4Bd/eTjUF2cB/I+dlU6qV4tAttiejr2QsNCYsNLcE0/LnTml/DMywuEf7sZ20eZV1Cf2RjCuaGyMQXFpbtaYkK587CbkFNM8NTPj5xfETrSLH5tHAfiY29tFL1bv/qJ++ZIQcAmlK9wvcWor6eMfuMUq8c4dOOgkQZWj+kyDRujq3ACIhxmS6zEnG/aLocN29eGfrRA3BujtvdDQUoB9GYeyAfHSlroUQ3JC7j9WFEym4MtIHGbUCl3v1eB/ic2RchB8MnzgVrrI2mzrDp1s/i4MPOyLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XFhU+b5cggfG4N5KWK9YZlxbXhQd1x/sAWUAysRAWtM=;
 b=aG+z725zpxZqkE3QJOLfPRai11aG4HAc7gmRJPu4urwI091vLQIMB8cU9IThyd3jv/hey05/wfNMgajh8a0NBwuEUIH8qarM/8Ox2mnGwrmY+VJl3M/s8OtJb1Km4+ldUGSxp+cFwdZLV+CU5/yqCPNxJG0uo+OPz8vTjbgBrLY=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1789.namprd11.prod.outlook.com (2603:10b6:300:108::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16; Thu, 22 Apr
 2021 06:56:27 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::55fe:763e:6961:7bbf]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::55fe:763e:6961:7bbf%4]) with mapi id 15.20.4065.021; Thu, 22 Apr 2021
 06:56:27 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org,
	jason.wessel@windriver.com,
	mark.hatle@kernel.crashing.org
Subject: [meta-openssl102-fips][PATCH 3/6] openssh: fix the double free error for ssh-cavs
Date: Thu, 22 Apr 2021 14:56:06 +0800
Message-ID: <20210422065609.143415-4-yi.zhao@windriver.com>
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
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by BY3PR10CA0023.namprd10.prod.outlook.com (2603:10b6:a03:255::28) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.22 via Frontend Transport; Thu, 22 Apr 2021 06:56:25 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9dcfa2d2-431f-4a89-39b9-08d9055bbfb3
X-MS-TrafficTypeDiagnostic: MWHPR11MB1789:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB1789C6B698A6A09D6084E5FDF9469@MWHPR11MB1789.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:72;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	pW8DnQqV1xhM+F2qGgqg0UE5dYnwLsms0eqVkThthbUtlkVHGdhcAgV4UXtscGLgTxTCh8eKu5OG4hoztgcO1rvSLpAFLP8etb16O7ebLtSeyf/ounWK643iwhzQcxdysV602A4qCg9iL+S6haS90xR3/z1L3aoXD4ApTb4P9b4G2ohHLc6UegIKCKwwlX/dBU4DzmtcyO3h8RR9PsGy+JOdqcUZDS7QbclOlZFLzeYsC6+cfIgc3S6H3BQ9KlWJ08bMnFy/oW4D8R1p0eXQMRTA5zCmNwdFpznZBIJjalfLzdhYlVqDqMOhEqztS3m1w5LQyQ8LjQS2rw0N3EffsRF2CSuh72q+Lawvf6P6hrOuoAbYLGIiIcgBBj3DWmFntnvxwbXZiRnyAog5DsgnVVP2qbx5sCtbbJlznAuQLkRj/dDnVFgxo4onxp8IRQEjvJRgwHVKXnBdtFcUtBdb+v4RC23bJBUO2YZJJzAQWBUpuoD/1OaO9wWZAmtGGrrAWmImor5QXzI0iSqYgrQAOHmrGnEjYJf1DKa8BxHOOGfdA8aDwgHxlRSeZPDKwPEhmGFwxjszytinvX2HD87UBWDVmodClgk17fB5GWac7rKm4N5JGD3QVY0ldyeq3uMG73c3ACxHfX3tfYukPlFk6lGD1xwTPJ7rOf6X5MA4SnjBdBUao4mCcEt9GSl0BnU7avWkRlvsUXq93VTOEYKjL3yeAT//KXOcXN71JW+YA6c=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(136003)(366004)(39850400004)(346002)(376002)(86362001)(26005)(38100700002)(6512007)(66556008)(5660300002)(2906002)(66476007)(186003)(6666004)(38350700002)(83380400001)(316002)(52116002)(956004)(966005)(36756003)(6506007)(8676002)(478600001)(66946007)(2616005)(8936002)(44832011)(16526019)(1076003)(6486002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?PD99IkY9MiDKJPKHbckM8QQrhiY7c8O/EwqqkKkbmF7a8ejnbhh5v/HopdIw?=
 =?us-ascii?Q?b0B4orfWnjJRJqRmQg/oiRcN+237y3bbdbVfC+zxlmHEh1ywktUm5OgX7IEb?=
 =?us-ascii?Q?3FnVKTnnWc432A/tqYvb9MVKurRGzKGBqgUbRNyw5PmcDynA5+91Ga17Mr1p?=
 =?us-ascii?Q?770G/RGVNdL3z0lZpY2PsOpxKcxb3pcVoNh9qa+MmBxJqLtnMFxNk8MG6x7J?=
 =?us-ascii?Q?LKzFFFyz1/v5R+gpsBY293++OWb0WYvMvHSH4GLqFh39VbImIkh+SgvmHnDf?=
 =?us-ascii?Q?EL5OHzXeXxNZ4wOhyBcNf5UNqrK4QT14ix5hWHMCYopWSmwcHZS0vVew5bE5?=
 =?us-ascii?Q?lJ1FvMUquXI7MGM1F+MV9AUTPQXZa8cA/UIZTTH5frnzc2fTGKvnFtUiwhul?=
 =?us-ascii?Q?Catd9EG2jGrsgFbR70UtsFumKMZ5evUFXTBwMF/C8B4SNoHDGj67JqQUcfkd?=
 =?us-ascii?Q?2/p/tO4+0GtywqFCGOvd8mIsVA3Sts+npm/pZkR4GE7uONuTS+SFSKf+VWq0?=
 =?us-ascii?Q?UrXfDZvTRkeBGrV7/VqBV7cS5upaEXTQUI1JEUTWwHLM+acvadceaLrqVEGM?=
 =?us-ascii?Q?Tvbo9h2EQIavA/aOHH/b8EGaZQR7mQUUc00c4zZW0dO+i8f51LjQz+vjDxRq?=
 =?us-ascii?Q?ymLq6rnYEZWHFYv6aZ6+NdixvUNS8Z//tyDCrvL4fZwchiue44KoUuoKUc65?=
 =?us-ascii?Q?6Lj+SZ2W1OIgQsr7gFgAnvttIhx1B92eTRTpVmlAjjMo/k0JROEgYkEFRnAi?=
 =?us-ascii?Q?p9e3HownV2a1TQHR53aeuV3LwmyOebcQ2yzwcvQ7VAsQsHC5FQD1NUqvUt2L?=
 =?us-ascii?Q?RKhwB5cc2zj1gb0JtSe0g/nCVqTg/+xaSu0qaEERhALF/llR3qLtB++aJJuW?=
 =?us-ascii?Q?5NNp7EiPEacKX+uOkeJr6O3z2SbOlPsPQJ1uXtHlzEwc3u2oILgaN0+stxJ7?=
 =?us-ascii?Q?dP8dhaE1TAZCjoUAC7HX+mG1rMPGiyfFBoBKjqVQXknZ3jNM3IjlE2YSh0Zd?=
 =?us-ascii?Q?U+XbQaxP/z4yNT3gb51GvhIrkR1hUe1w3F4Mc9UbWqQcEv6NDyVc6Q1BVz2C?=
 =?us-ascii?Q?Kz7b3eI51bpUlog3OrjsSMXeSKyT1MvPkqcGuLfle8TepsqHnFLaYQSaJb7v?=
 =?us-ascii?Q?cnxNZcT2R+1845/Wt5B5FyvldazJuGs+lzyNTFJu+PL4RASrJNvFUO0wMmSL?=
 =?us-ascii?Q?vw0rB5fyajO94QnM89t+JJFkVu+Mw0GOyCqWP2A+nd7QciwVnhMh/DigkNgz?=
 =?us-ascii?Q?H5NW33x+FWb/1uLmDn1vqwuBD7qZD5utUY7dleRN958zkqhUmcDM9FvMIjq/?=
 =?us-ascii?Q?2pH9mi9bYs0D0lQ+ovl+wUFz?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9dcfa2d2-431f-4a89-39b9-08d9055bbfb3
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2021 06:56:27.2195
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Blvl6y7tPgaKNZOUUhzPkvAzLudFjMA+exdFYT9xU6Lggl7B8/8r513TlWQzdg+29+Y6koC6cgoRHiWYpfLpUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1789
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

There is a 'double free or corruption' error when running ssh-cavs:
$ /usr/libexec/ssh-cavs -K
0055d50f2d163cc07cd8a93cc7c3430c30ce786b572c01ad29fec7597000cf8618d664e2ec3=
dcbc8bb7a1a7eb7ef67f61cdaf291625da879186ac0a5cb27af571b59612d6a6e0627344d84=
6271959fda61c78354aa498773d59762f8ca2d0215ec590d8633de921f920d41e47b3de6ab9=
a3d0869e1c826d0e4adebf8e3fb646a15dea20a410b44e969f4b791ed6a67f13f1b74234004=
d5fa5e87eff7abc32d49bbdf44d7b0107e8f10609233b7e2b7eff74a4daf25641de7553975d=
ac6ac1e5117df6f6dbaa1c263d23a6c3e5a3d7d49ae8a828c1e333ac3f85fbbf57b5c1a45be=
45e43a7be1a4707eac779b8285522d1f531fe23f890fd38a004339932b93eda4
-H d3ab91a850febb417a25d892ec48ed5952c7a5de -s d3ab91a850febb417a25d892ec48=
ed5952c7a5de -i 8 -e 24 -m 20
Initial IV (client to server) =3D 4bb320d1679dfd3a
Initial IV (server to client) =3D 43dea6fdf263a308
Encryption key (client to server) =3D 13048cc600b9d3cf9095aa6cf8e2ff9cf1c54=
ca0520c89ed
Encryption key (server to client) =3D 1e483c5134e901aa11fc4e0a524e7ec7b7555=
6148a222bb0
Integrity key (client to server) =3D ecef63a092b0dcc585bdc757e01b2740af57d6=
40
Integrity key (server to client) =3D 7424b05f3c44a72b4ebd281fb71f9cbe7b64d4=
79
double free or corruption (out)
Aborted

Since openssh 8.x, the ssh->kex has been allocated when struct ssh is
initialized in function ssh_alloc_session_state()[1] and will be freed
in function ssh_packet_close()[2]. We don't need to make the ssh->kex to
point a extra kex struct which will cause the memory corruption and
memory leak.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...1-ssh-cavs-fix-the-double-free-error.patch | 161 ++++++++++++++++++
 recipes-connectivity/openssh/openssh_fips.inc |   1 +
 2 files changed, 162 insertions(+)
 create mode 100644 recipes-connectivity/openssh/openssh/0001-ssh-cavs-fix-=
the-double-free-error.patch

diff --git a/recipes-connectivity/openssh/openssh/0001-ssh-cavs-fix-the-dou=
ble-free-error.patch b/recipes-connectivity/openssh/openssh/0001-ssh-cavs-f=
ix-the-double-free-error.patch
new file mode 100644
index 0000000..7d7fc14
--- /dev/null
+++ b/recipes-connectivity/openssh/openssh/0001-ssh-cavs-fix-the-double-fre=
e-error.patch
@@ -0,0 +1,161 @@
+From b6202d402a27467a8a4bacaca4064ee731a03fa7 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Sun, 17 Jan 2021 11:17:53 +0800
+Subject: [PATCH] ssh-cavs: fix the double free error
+
+There is a 'double free or corruption' error when running ssh-cavs:
+$ /usr/libexec/ssh-cavs -K
+0055d50f2d163cc07cd8a93cc7c3430c30ce786b572c01ad29fec7597000cf8618d664e2ec=
3dcbc8bb7a1a7eb7ef67f61cdaf291625da879186ac0a5cb27af571b59612d6a6e0627344d8=
46271959fda61c78354aa498773d59762f8ca2d0215ec590d8633de921f920d41e47b3de6ab=
9a3d0869e1c826d0e4adebf8e3fb646a15dea20a410b44e969f4b791ed6a67f13f1b7423400=
4d5fa5e87eff7abc32d49bbdf44d7b0107e8f10609233b7e2b7eff74a4daf25641de7553975=
dac6ac1e5117df6f6dbaa1c263d23a6c3e5a3d7d49ae8a828c1e333ac3f85fbbf57b5c1a45b=
e45e43a7be1a4707eac779b8285522d1f531fe23f890fd38a004339932b93eda4
+-H d3ab91a850febb417a25d892ec48ed5952c7a5de -s d3ab91a850febb417a25d892ec4=
8ed5952c7a5de -i 8 -e 24 -m 20
+Initial IV (client to server) =3D 4bb320d1679dfd3a
+Initial IV (server to client) =3D 43dea6fdf263a308
+Encryption key (client to server) =3D 13048cc600b9d3cf9095aa6cf8e2ff9cf1c5=
4ca0520c89ed
+Encryption key (server to client) =3D 1e483c5134e901aa11fc4e0a524e7ec7b755=
56148a222bb0
+Integrity key (client to server) =3D ecef63a092b0dcc585bdc757e01b2740af57d=
640
+Integrity key (server to client) =3D 7424b05f3c44a72b4ebd281fb71f9cbe7b64d=
479
+double free or corruption (out)
+Aborted
+
+Since openssh 8.x, the ssh->kex has been allocated when struct ssh is
+initialized in function ssh_alloc_session_state()[1] and will be freed
+in function ssh_packet_close()[2]. We don't need to make the ssh->kex to
+point a extra kex struct which will cause the memory corruption and
+memory leak.
+
+[1] https://github.com/openssh/openssh-portable/commit/0a843d9a0e805f14653=
a555f5c7a8ba99d62c12d
+[2] https://github.com/openssh/openssh-portable/commit/55ef3e9cbd5b336bd0f=
89205716924886fcf86de
+
+Upstream-Status: Pending
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ ssh-cavs.c | 60 ++++++++++++++++++++++++------------------------------
+ 1 file changed, 27 insertions(+), 33 deletions(-)
+
+diff --git a/ssh-cavs.c b/ssh-cavs.c
+index b74ae7f..641a453 100644
+--- a/ssh-cavs.c
++++ b/ssh-cavs.c
+@@ -164,7 +164,6 @@ struct kdf_cavs {
+ static int sshkdf_cavs(struct kdf_cavs *test)
+ {
+ 	int ret =3D 0;
+-	struct kex kex;
+ 	struct sshbuf *Kb =3D NULL;
+ 	BIGNUM *Kbn =3D NULL;
+ 	int mode =3D 0;
+@@ -175,8 +174,6 @@ static int sshkdf_cavs(struct kdf_cavs *test)
+ #define HEXOUTLEN 500
+ 	char hex[HEXOUTLEN];
+=20
+-	memset(&kex, 0, sizeof(struct kex));
+-
+ 	Kbn =3D BN_new();
+ 	BN_bin2bn(test->K, test->Klen, Kbn);
+ 	if (!Kbn) {
+@@ -192,24 +189,29 @@ static int sshkdf_cavs(struct kdf_cavs *test)
+ 	}
+ 	sshbuf_put_bignum2(Kb, Kbn);
+=20
+-	kex.session_id =3D test->session_id;
+-	kex.session_id_len =3D test->session_id_len;
++	if ((ssh =3D ssh_packet_set_connection(NULL, -1, -1)) =3D=3D NULL){
++		printf("Allocation error\n");
++		goto out;
++	}
++
++	ssh->kex->session_id =3D test->session_id;
++	ssh->kex->session_id_len =3D test->session_id_len;
+=20
+ 	/* setup kex */
+=20
+ 	/* select the right hash based on struct ssh_digest digests */
+ 	switch (test->ik_len) {
+ 		case 20:
+-			kex.hash_alg =3D SSH_DIGEST_SHA1;
++			ssh->kex->hash_alg =3D SSH_DIGEST_SHA1;
+ 			break;
+ 		case 32:
+-			kex.hash_alg =3D SSH_DIGEST_SHA256;
++			ssh->kex->hash_alg =3D SSH_DIGEST_SHA256;
+ 			break;
+ 		case 48:
+-			kex.hash_alg =3D SSH_DIGEST_SHA384;
++			ssh->kex->hash_alg =3D SSH_DIGEST_SHA384;
+ 			break;
+ 		case 64:
+-			kex.hash_alg =3D SSH_DIGEST_SHA512;
++			ssh->kex->hash_alg =3D SSH_DIGEST_SHA512;
+ 			break;
+ 		default:
+ 			printf("Wrong hash type %u\n", test->ik_len);
+@@ -219,41 +221,35 @@ static int sshkdf_cavs(struct kdf_cavs *test)
+=20
+ 	/* implement choose_enc */
+ 	for (mode =3D 0; mode < 2; mode++) {
+-		kex.newkeys[mode] =3D calloc(1, sizeof(struct newkeys));
+-		if (!kex.newkeys[mode]) {
++		ssh->kex->newkeys[mode] =3D calloc(1, sizeof(struct newkeys));
++		if (!ssh->kex->newkeys[mode]) {
+ 			printf("allocation of newkeys failed\n");
+ 			ret =3D 1;
+ 			goto out;
+ 		}
+-		kex.newkeys[mode]->enc.iv_len =3D test->iv_len;
+-		kex.newkeys[mode]->enc.key_len =3D test->ek_len;
+-		kex.newkeys[mode]->enc.block_size =3D (test->iv_len =3D=3D 64) ? 8 : 16=
;
+-		kex.newkeys[mode]->mac.key_len =3D test->ik_len;
++		ssh->kex->newkeys[mode]->enc.iv_len =3D test->iv_len;
++		ssh->kex->newkeys[mode]->enc.key_len =3D test->ek_len;
++		ssh->kex->newkeys[mode]->enc.block_size =3D (test->iv_len =3D=3D 64) ? =
8 : 16;
++		ssh->kex->newkeys[mode]->mac.key_len =3D test->ik_len;
+ 	}
+=20
+ 	/* implement kex_choose_conf */
+-	kex.we_need =3D kex.newkeys[0]->enc.key_len;
+-	if (kex.we_need < kex.newkeys[0]->enc.block_size)
+-		kex.we_need =3D kex.newkeys[0]->enc.block_size;
+-	if (kex.we_need < kex.newkeys[0]->enc.iv_len)
+-		kex.we_need =3D kex.newkeys[0]->enc.iv_len;
+-	if (kex.we_need < kex.newkeys[0]->mac.key_len)
+-		kex.we_need =3D kex.newkeys[0]->mac.key_len;
++	ssh->kex->we_need =3D ssh->kex->newkeys[0]->enc.key_len;
++	if (ssh->kex->we_need < ssh->kex->newkeys[0]->enc.block_size)
++		ssh->kex->we_need =3D ssh->kex->newkeys[0]->enc.block_size;
++	if (ssh->kex->we_need < ssh->kex->newkeys[0]->enc.iv_len)
++		ssh->kex->we_need =3D ssh->kex->newkeys[0]->enc.iv_len;
++	if (ssh->kex->we_need < ssh->kex->newkeys[0]->mac.key_len)
++		ssh->kex->we_need =3D ssh->kex->newkeys[0]->mac.key_len;
+=20
+ 	/* MODE_OUT (1) -> server to client
+ 	 * MODE_IN (0) -> client to server */
+-	kex.server =3D 1;
++	ssh->kex->server =3D 1;
+=20
+-	/* do it */
+-	if ((ssh =3D ssh_packet_set_connection(NULL, -1, -1)) =3D=3D NULL){
+-		printf("Allocation error\n");
+-		goto out;
+-	}
+-	ssh->kex =3D &kex;
+ 	kex_derive_keys(ssh, test->H, test->Hlen, Kb);
+=20
+-	ctoskeys =3D kex.newkeys[0];
+-	stockeys =3D kex.newkeys[1];
++	ctoskeys =3D ssh->kex->newkeys[0];
++	stockeys =3D ssh->kex->newkeys[1];
+=20
+ 	/* get data */
+ 	memset(hex, 0, HEXOUTLEN);
+@@ -376,8 +372,6 @@ int main(int argc, char *argv[])
+ 	ret =3D sshkdf_cavs(&test);
+=20
+ out:
+-	if (test.session_id)
+-		free(test.session_id);
+ 	if (test.K)
+ 		free(test.K);
+ 	if (test.H)
+--=20
+2.17.1
+
diff --git a/recipes-connectivity/openssh/openssh_fips.inc b/recipes-connec=
tivity/openssh/openssh_fips.inc
index 4fdb2aa..961f2d5 100644
--- a/recipes-connectivity/openssh/openssh_fips.inc
+++ b/recipes-connectivity/openssh/openssh_fips.inc
@@ -10,6 +10,7 @@ SRC_URI +=3D " \
     file://0001-conditional-enable-fips-mode.patch \
     file://openssh-6.6p1-ctr-cavstest.patch \
     file://openssh-6.7p1-kdf-cavs.patch \
+    file://0001-ssh-cavs-fix-the-double-free-error.patch \
 "
=20
 do_install_append() {
--=20
2.25.1

