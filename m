Return-Path: <joerg.sommer@navimatix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0EA62C3DA4A
	for <webhook@archiver.kernel.org>; Tue, 20 Aug 2024 05:20:58 +0000 (UTC)
Received: from DB3PR0202CU003.outbound.protection.outlook.com (DB3PR0202CU003.outbound.protection.outlook.com [52.101.65.107])
 by mx.groups.io with SMTP id smtpd.web10.11797.1724131252531348636
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Aug 2024 22:20:53 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@navimatix.de header.s=selector1 header.b=nXFZRsmb;
 spf=pass (domain: navimatix.de, ip: 52.101.65.107, mailfrom: joerg.sommer@navimatix.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vvCjM4Fu+7l1rrAxUBRdLkPhOlTgPkhOK02sGSX/0snmpVJjb82bv7wURUMHNPIcleYKDTF/U8okcTfj4kC+nPPEJd+t+1Zew1Dd81wiT6D0/8tZ6L9f4RFP0X/fHRtiHGIbxWeBC9IFn5JwpTSfzj9skYYWFDn5QLKtbkn3KMJWDlgBS/eaUUJow6EzEN69dwcP5g7e7lYURH0WdDC3PKpx1b1t+gOxf5vfkKMbABSlF33toAWI+ivEjfXf0G+3OQ3QEguOlBj8sC5QVy0FRrIJaHpA1XzgHtVHeuqO8kP22gPVQn0B/ZHCui+ExfJ1MkEaa7ndN87F+Pa9TZ0jRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IhUTK87Qwn6RZxYjaUiaOp9PqTnKuWkCXgE32g+ghCE=;
 b=dntKGcsFjuZO2R90oBKa5csZYQGHSliKWW33SjCKfiNtJFfPZ6rKxT1mC7uaoRn6/SDUOL/sjLBRhJt5kFJa1EcaBc75/Lndd5Icl1uAsHWWb8CvSn3kT9oFNWPGUbMHVqcdhZ6BYpTjkLSAq6rc4ar+E4DJEGu6WG7kY9j7Q43LHz8gy+u2KBOYgeVKr77Dcq2V9R3BcW2meQzRCDzgsWXzzJOVaUNS3Hzaja5VG/wmEXYA1Y9FfPqHkbUbWzBz3FmQcRlu8S0bB/KgpfeDyx0Q/KIhZktj7PFM7yDvxfAk54Qiq7horkg5hF9rRXL9lxv1h5ZoSx0SoTEvucGz0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=navimatix.de; dmarc=pass action=none header.from=navimatix.de;
 dkim=pass header.d=navimatix.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=navimatix.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IhUTK87Qwn6RZxYjaUiaOp9PqTnKuWkCXgE32g+ghCE=;
 b=nXFZRsmbHpJyAppAinFogAoP+i5Lzy8o7Uhm8uhYg2pQJHj1gQzer/6ogycRatSBHcUq0/Mwi6FOcAU9D4RE8VspU3Z3PDMrjvVJj94S+yMnhqpkpiRcmN4BfSKfmEq8sK5C+fsuuHSfmOWd9jiwMc1zdO7vVPiS6p51dtXmMZ8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=navimatix.de;
Received: from DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:2d4::5) by PA4PR01MB10208.eurprd01.prod.exchangelabs.com
 (2603:10a6:102:266::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Tue, 20 Aug
 2024 05:20:48 +0000
Received: from DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 ([fe80::d520:1b9e:a30e:69a7]) by DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 ([fe80::d520:1b9e:a30e:69a7%4]) with mapi id 15.20.7897.014; Tue, 20 Aug 2024
 05:20:48 +0000
Date: Tue, 20 Aug 2024 07:20:46 +0200
From: =?utf-8?B?SsO2cmc=?= Sommer <joerg.sommer@navimatix.de>
To: yocto@lists.yoctoproject.org, joerg.sommer@navimatix.de
CC: =?utf-8?B?SsO2cmc=?= Sommer <joerg.sommer@navimatix.de>
Subject: [ptest-runner][PATCH] ptest_list_remove: Fix pointer adjustment of
 prev and next
Message-ID: <a6577fc4899e28c7a78d7f913d42783f0dd508ea.1724131245.git.joerg.sommer@navimatix.de>
X-Mailer: git-send-email 2.34.1
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: BE1P281CA0444.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:81::29) To DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:2d4::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR01MB8293:EE_|PA4PR01MB10208:EE_
X-MS-Office365-Filtering-Correlation-Id: dae73bbb-956c-4f71-2a33-08dcc0d7d969
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?TLdMs5ai806V82i9vp3zUZVrYUagL+TOyXfLeYHIham0ChfG2omm9RDm3L5W?=
 =?us-ascii?Q?imE76pgajn5utkpdrGVpbuwuWRvvfURDDhoAuV61NRvYzpgCPC5NWkTd3FxI?=
 =?us-ascii?Q?TNAJtvezPR1mpCBSK9y+aRB7mbTAPAFJqt/JaxSsrM5B3n92Wp7aZ7FxbSNB?=
 =?us-ascii?Q?zZkH8ymmOcopLEQm1ebWGP9LtoDuvu9f9yJLFQgVmCHB8N4S6IVQU+hOlDmD?=
 =?us-ascii?Q?VxpdWU35HB/zz4HXkibtqmOBxeaZmuysEAAczqAAUjMkU5awUXdI1taDyxkS?=
 =?us-ascii?Q?qeV0YrTnxmvqTinuVLaeZbrWd+C1xk3d/sCE5G7Q9IaE01jLefUA+2GepAT4?=
 =?us-ascii?Q?o9OiRezfLkdT7togK+l9i24dRypkxnLj9AZlOypo6I9ICN/RvwznFfyhfLqA?=
 =?us-ascii?Q?giSvM27b/VFAz/n1ruyG2FKfgaJ1K+4dERFUSoDVGGejJxcRzsJlAsItxC+3?=
 =?us-ascii?Q?W3B4m/ioKEe/sd1SgxCSURbRozWVyXw2rqAwJnHpKC7h3wDYEOC46ZE5OkGV?=
 =?us-ascii?Q?v8uNaKQKptbVdR540ycaT/JfxkTYHDqZyn09CXi9ji/IELcZgmnGuWZfEDWW?=
 =?us-ascii?Q?ttcmxf/QdK+xu+djoJ6sOh7lAzfNV/G2a7WgcODOcDWrruF2mQ5PdInabNnu?=
 =?us-ascii?Q?yN/Gor2kmbEMaWWQowy2AMmf2qHODrq8hovsR5TI15aYV4c9OHgO724GX5Ey?=
 =?us-ascii?Q?qdNniA+C4KiIt1aXKHU5tu4DkUeZvhDvLWStKiERVD0nqldvDTk2Y0Unh7IN?=
 =?us-ascii?Q?vJ5Oo+2NvR+vv2VcH4+Z3k5nsKZKb3fUb5SquRBRrDHBq8IjQXHdLc9DTXAK?=
 =?us-ascii?Q?xj4nP57Vz56tvCy9WafTFs+tTfv1z0DSMWCDj4uLlWP+Qf2qNm/uT3MzTzgZ?=
 =?us-ascii?Q?wVWt98NnooQX28vkByuxyRx42FzbF8hOLDm7dBmCQTpr/98WRRtr/jt2rzkt?=
 =?us-ascii?Q?NQrgTNYDpyrdr0GYsq8/pz8pCoeFcTZsqa6WtX4OldvSd2+zPzdTu9VvgcnR?=
 =?us-ascii?Q?WUh6YRRwK8mLsFbahbkdttdBpNXxfKaCS3JAfFE0eG+GpRI5nuvGnfxa6bCL?=
 =?us-ascii?Q?EzBVe5tFB2JsbT4pWpMWOYxnEwW4eXoaypsryBaaX3YQnN5t8Wzf4AK0xYZf?=
 =?us-ascii?Q?Jl113EQof34RuSzldwoclRZc6W1HPOSkPUehzfLTP+SqxLtdDPZ7jGB35SWc?=
 =?us-ascii?Q?riq4X8BRa80oN2JLpV17WtS1/uxjtNXAIN+1tDqqrZLOePgYzWyTkTVHqQAH?=
 =?us-ascii?Q?KjLr9mCv9p4fBT8ED5Fnnv8goyYhASdfJcMzo6KedlxtTrh23U11Gmr1r21q?=
 =?us-ascii?Q?wEyc0/0ZgRwdgbP0TrLoul84qP3qP+hbXZvTjlkfub2hug=3D=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR01MB8293.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?5hpQTOEbmHcgW9hjrj5xp1gPkqxCSKBy6yY2BWKMhAjnruQPrCQA5Q9dVf3B?=
 =?us-ascii?Q?lf0HyCgiYs9mp79xsxYCR8C60XxtIp/6ypZ2d6UhhvyThvl/wl2Wtnyk4EGF?=
 =?us-ascii?Q?tPiCcxG8z0KguV0uZ3nY5XxuhAuKLZgczyvn7TgKcnT9aEBXXTY4CzbhnNQf?=
 =?us-ascii?Q?RmM/XgMn4fMidiFegcsrM/uiiYhvqmd6syH/JU2BZux/ZKsSSiGi3j1P7gLj?=
 =?us-ascii?Q?CFFaXcQOU0wtk5xKCPpWKNjkFRTtE3h3Y2MuQ+oQE4y/v7h8/syav0FdxPyH?=
 =?us-ascii?Q?3/5cJUJylrlHTqpwVm/2AzN84C80VCDSp3asMOCMwlDOaP5RNb+9519L/Iiy?=
 =?us-ascii?Q?ZLYoBnKhBSVP5UJ9ZaD+ioA3MPiWC2q/saZqvc6u39HAard5NVOmM5WC7LbO?=
 =?us-ascii?Q?xfN9zE1hiHHkGH+Nu7MeZrXSzT7lguv/5npJVmti5PcM8J9lr2K9BUlr0zjM?=
 =?us-ascii?Q?B/9Hb9v00kcLWzOmsc6NlD1NzTKLd8GM9FClnvjd2i7eN21uAXhYZp57hGVu?=
 =?us-ascii?Q?uHK2GYnXXr+oRP46Dt45QolzmFpDYsexjRlapaUukmqNkH+67OXWg6Y8XFNb?=
 =?us-ascii?Q?82rwn8Wd6ISbDSK3EcYt2RbNC1exf56VagprcVj6VpY5Lo9Ae1nJ/FgJT/re?=
 =?us-ascii?Q?/h/D72yKw8nswx/5kMI9avHzCyuWa1p6IEEF52N7/QF2tEIhnQBkiXOg5P0B?=
 =?us-ascii?Q?Jk4aqM6wH7RTqqmbindTJQ0hZN8GnFJ94lRJy9FvVV2oFg6fyiZcPI5STIdC?=
 =?us-ascii?Q?1+UEkN9l8Ml1s/ZJGQ3JuMJGxlSRTBhjskl76d/dHjD6/bayfqWK43bnuDFY?=
 =?us-ascii?Q?tBA0rokVrOLSE5XbrtGxWLo8XtIOswHCHDxVjUhC9U4grOdAbM0a6gQHJP1L?=
 =?us-ascii?Q?tNXZ5eftA9QW/CHpKFxW78/ISDTx4Zh6kbLE4Q/7aYSMcZ1SFf6068vnbsMx?=
 =?us-ascii?Q?Tbm2OH5U6SVKYkXO06jp4YaQAaKwyw3pTEhfmfX3KpeAGeFxf3dhQDLYm43Y?=
 =?us-ascii?Q?TP60RfsGmeGJw/RVfiA7WNoctnYbBi0Ktt1ZjoBiw+05bwfANHShwqcGf3DY?=
 =?us-ascii?Q?YQq4aMZZ94DeiMKDt7P5t4MmPKukU7hP3MVoU0TMTOW1jtxtNTjLvXJZ9JIx?=
 =?us-ascii?Q?tIZzASsDuqwM/Znr+bPjuJJePtK7AieHv94SwH43dhi5QOPJUuwbyAWkjKcX?=
 =?us-ascii?Q?7Nwx/jwmNEIcQSQQDGowsmuPB7n6FPgKcDUEBZ03qlSKQAB3CejfZopRGYiB?=
 =?us-ascii?Q?SuabuMrsZ/FjgLQ0IaAhTKxJhDIklcttNvTiWE8w2wOnVMEGaOb/G0UioKvP?=
 =?us-ascii?Q?f9NC2v4fuQXQ2LruRKleNV+EPCxDPHxNLbnrimr/iUq55DAqnJbifgqjMb5v?=
 =?us-ascii?Q?mpCtqtOH1uvt1wkT6yOlgpC/FoRo/Zv8SOZAfexPd23DAhEWPtCOXcGcBIt1?=
 =?us-ascii?Q?pu5W3eQP+kJD0XRriofWnh++AOgzOpAcg69AvWRCwcllTMwgHc6v54r+HSS5?=
 =?us-ascii?Q?RHf5vQkzr2hZJIy4CsGPPwfwvhwmVb5T9EPNMJnVF/RHcQv+w6FOiezPEmpM?=
 =?us-ascii?Q?ydOp0Pw+RYu7xqsDef8WEyzS9TC090kHv5owy2dDmsw4O5eaJV7/+fLsvHiW?=
 =?us-ascii?Q?tw=3D=3D?=
X-OriginatorOrg: navimatix.de
X-MS-Exchange-CrossTenant-Network-Message-Id: dae73bbb-956c-4f71-2a33-08dcc0d7d969
X-MS-Exchange-CrossTenant-AuthSource: DU2PR01MB8293.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Aug 2024 05:20:47.9984
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: c87b4f54-b992-4813-8f3f-4a876324197f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wodS0T6V/2FrBjQLTndxzcW9cCwnOPlJLH7GZI+ehg9oVPoLP9K1ugV8tVnWaXkYlBF4+wKKbRK43m6WsCs3cnwxH5pBssEMRvw+CSQmWCI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR01MB10208
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Aug 2024 05:20:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63723

From: J=F6rg Sommer <joerg.sommer@navimatix.de>

The back pointer of the next list element was not updated. This lead to
SEGV under some circumstances.

Signed-off-by: J=F6rg Sommer <joerg.sommer@navimatix.de>
---
 ptest_list.c       |  5 +++-
 tests/ptest_list.c | 64 ++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 68 insertions(+), 1 deletion(-)

diff --git a/ptest_list.c b/ptest_list.c
index 917ef4f..c221ebf 100644
--- a/ptest_list.c
+++ b/ptest_list.c
@@ -206,7 +206,10 @@ ptest_list_remove(struct ptest_list *head, char *ptest=
, int free)
 		q =3D p->prev;
 		r =3D p->next;
=20
-		q->next =3D r;
+		if (q !=3D NULL)
+			q->next =3D r;
+		if (r !=3D NULL)
+			r->prev =3D q;
=20
 		if (free) {
 			ptest_list_free(p);
diff --git a/tests/ptest_list.c b/tests/ptest_list.c
index 081f027..c3aa107 100644
--- a/tests/ptest_list.c
+++ b/tests/ptest_list.c
@@ -145,6 +145,67 @@ START_TEST(test_remove)
 }
 END_TEST
=20
+START_TEST(test_remove_first)
+{
+	struct ptest_list *head =3D ptest_list_alloc();
+	struct ptest_list *p;
+
+	ptest_list_add(head, strdup("a"), NULL);
+	ptest_list_add(head, strdup("b"), NULL);
+	ptest_list_add(head, strdup("c"), NULL);
+
+	p =3D ptest_list_remove(head, "a", 0);
+	ck_assert_ptr_nonnull(p);
+	ck_assert_str_eq(p->ptest, "a");
+	ptest_list_free(p);
+
+	ck_assert_ptr_null(ptest_list_search(head, "a"));
+	ck_assert_ptr_nonnull(ptest_list_search(head, "b"));
+	ck_assert_ptr_nonnull(ptest_list_search(head, "c"));
+	ck_assert_int_eq(ptest_list_length(head), 2);
+
+	ptest_list_free_all(head);
+}
+END_TEST
+
+START_TEST(test_remove_last)
+{
+	struct ptest_list *head =3D ptest_list_alloc();
+	struct ptest_list *p;
+
+	ptest_list_add(head, strdup("a"), NULL);
+	ptest_list_add(head, strdup("b"), NULL);
+	ptest_list_add(head, strdup("c"), NULL);
+
+	p =3D ptest_list_remove(head, "c", 0);
+	ck_assert_ptr_nonnull(p);
+	ck_assert_str_eq(p->ptest, "c");
+	ptest_list_free(p);
+
+	ck_assert_ptr_nonnull(ptest_list_search(head, "a"));
+	ck_assert_ptr_nonnull(ptest_list_search(head, "b"));
+	ck_assert_ptr_null(ptest_list_search(head, "c"));
+	ck_assert_int_eq(ptest_list_length(head), 2);
+
+	ptest_list_free_all(head);
+}
+END_TEST
+
+START_TEST(test_remove_all)
+{
+	struct ptest_list *head =3D ptest_list_alloc();
+
+	ptest_list_add(head, strdup("a"), NULL);
+	ptest_list_add(head, strdup("b"), NULL);
+
+	ck_assert_ptr_null(ptest_list_remove(head, "a", 1));
+	ck_assert_ptr_null(ptest_list_remove(head, "b", 1));
+	ck_assert_int_eq(ptest_list_length(head), 0);
+
+	ptest_list_free_all(head);
+}
+END_TEST
+
 Suite *
 ptest_list_suite()
 {
@@ -160,6 +221,9 @@ ptest_list_suite()
 	tcase_add_test(tc_core, test_length);
 	tcase_add_test(tc_core, test_search);
 	tcase_add_test(tc_core, test_remove);
+	tcase_add_test(tc_core, test_remove_first);
+	tcase_add_test(tc_core, test_remove_last);
+	tcase_add_test(tc_core, test_remove_all);
=20
 	suite_add_tcase(s, tc_core);
=20
--=20
2.34.1


