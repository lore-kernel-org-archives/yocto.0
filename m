Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.18627.1621827645675668082
 for <yocto@lists.yoctoproject.org>;
 Sun, 23 May 2021 20:40:46 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=WSR9UsZv;
 spf=fail (domain: windriver.com, ip: 198.145.29.25, mailfrom: prvs=0778862490=yi.zhao@windriver.com)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
	by mail.yoctoproject.org (Postfix) with ESMTPS id E63D738C0533
	for <yocto@yoctoproject.org>; Mon, 24 May 2021 03:40:44 +0000 (UTC)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 14O3eiY9020913
	for <yocto@yoctoproject.org>; Sun, 23 May 2021 20:40:44 -0700
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2107.outbound.protection.outlook.com [104.47.58.107])
	by mx0a-0064b401.pphosted.com with ESMTP id 38qrtb0991-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Sun, 23 May 2021 20:40:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mT4kX8QO+CpE7YFM80Y6H3gM5lna/t26/LfOyEfA+wlcY0oZ4v0MTmZb4A2y3Rz/LZEGNUgGm448WzOmcXw4tz4YwV1ruWjTmnOa9Tr93Cliue+qtWyvMvfWyV/c7mIqVeiRxyp578fFIDDAV/6BSSQi5THsWg9eg4wcrnBQiYZiufKEtG4DzBuvcEN7gndMKPkstYY6vlnilBM6HDgyLoP7Vhk/JQeI2PzK4Aeeq+Yb+VtI+CbwUHwNPAIFd+sVanQ3cTPkh5Ir/+LlFnfo6QQWVLb/oV5zjWKRhR5w4nydPxjuxDTSC0INAqzjE4RXGGTXx+NEbmg1uVkX7rulsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PLMceoGfDF4qS403XloBbakR3D1TXTChixcOeEglcDw=;
 b=QI/ioXI4yz6T0nNphUM/geMdWNBAmMimqYGSTRc+VZyl/qR7U0zjPnMjabHrvcXth94T5JKTibow+82ir/6gFA2ZaOs1/jLNzbx2qXZ0l+bKbhEw4TttDHLiGzIh6+DWaSK+wtJgS1RwsaBp8QjeqNR+r6DWhNPrL5fotyTr5Ceo+MHRHcB387Zi8bB3f6R1DuV/ojcL5aU0mRaBi4AfYDjlTsF9a1howHyLgwhCfFbEJz3JBC3ZUowG2gqZtozccDNoLGyRmB7ngEJbk7ndiQblRmTLPiKbRP39shcmceCzv/A/Qp39bZZINE5n54q8jFVSDrDOT1ulVj6SYTHCtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PLMceoGfDF4qS403XloBbakR3D1TXTChixcOeEglcDw=;
 b=WSR9UsZv7hcTUG2NDPq+4EESvxmqMKUICGzBYT5uMc4qhichtj1QaZ7yluadQLKdg9qu+Um7nDlYf1n4DorLTJ0DQp8ujCd2EZLqKGRydNK3exySB9q2ZR4pv2ZSPN4GDGGi9FCi/Na2gRCuKxvdct9CgB6J/9ASmTcqA2OMrOI=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MW3PR11MB4683.namprd11.prod.outlook.com (2603:10b6:303:5c::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.23; Mon, 24 May
 2021 03:40:40 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::55fe:763e:6961:7bbf]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::55fe:763e:6961:7bbf%4]) with mapi id 15.20.4150.027; Mon, 24 May 2021
 03:40:40 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@yoctoproject.org
Subject: [meta-security][PATCH] libgssglue: update SRC_URI
Date: Mon, 24 May 2021 11:40:30 +0800
Message-Id: <20210524034030.155169-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: SJ0PR13CA0053.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::28) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by SJ0PR13CA0053.namprd13.prod.outlook.com (2603:10b6:a03:2c2::28) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.11 via Frontend Transport; Mon, 24 May 2021 03:40:39 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: accad335-6384-4056-717d-08d91e65b37a
X-MS-TrafficTypeDiagnostic: MW3PR11MB4683:
X-Microsoft-Antispam-PRVS: 
	<MW3PR11MB4683F845CAA5BD2833ED62EAF9269@MW3PR11MB4683.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	wOSR3nUrisWB3TKVpebBbqZir4PqeyDs/DNsxFiS5/ORTPBgrlzIO+jOI1TnVNuJRgMRZM9gNqMsNzJ/22f0E6wxV1fEJhIVUlaHn4mHUeVmt4WjjwDMZqbc+QL3rBA4Tw6YZwyjJNLMxqE3QkCxGUZXB2YM400T5RqOlCVfudHYEkoII8hEe5A9ytFlIfAlKQ9l6sLpJ4qdB6L7lWEwjRwO+e0kg7hj6r6TvPhImyC5I31L3ZZUvGbIfsZrEKgmZWjKaR+6oQIJp/G7uFRpMbZESOVO/tgZslAziuUlaUcbdbrc/9rUPHNVXMYnyZQC/En+U5/fh9IxISkt1mwK6a1hx/agtB8SRvUd1A5qx8Bnhi0/ucTsL4jXtjTvbW+sN1EMQN48GGHn/BchbWjNMgMMe9UmtWDUSgjpeoOOrg76nuevEgaweuqmC9EkoEBlmcbaC83G1T77jVYnok99i//96oB7kCMhE7QQPS6eU05RXpssKsux3/fPbgvy3Jwf4rEplub4l8n711wVrH9skIC98+FgO9/+lbVewypQ2/CToDuUD+VIlfBSEH9smL7r38RwiVlxC1qfht6GY/0S8IINbjuH9fxz9XU2H5KGNXkm6GDrh67E1vyg/SHRb76Bt/YUqEu+9qrYkM4ASMSZXoJnka4qWIzsSMDFDao+fDVZcph/rSAzJu+QXvKMR1sAgB0Z54fSojOxNxDTNRvqVTM+8jpq5VKjju64/WYJ+hk7nK1NBl2ZWPR5RzAYDASkO4SBN+S6FMH47bLR/hOf5Q==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(346002)(136003)(39840400004)(396003)(376002)(26005)(16526019)(186003)(478600001)(6506007)(6916009)(83380400001)(38350700002)(38100700002)(52116002)(15650500001)(6666004)(66556008)(1076003)(2616005)(8676002)(956004)(316002)(5660300002)(6486002)(44832011)(6512007)(2906002)(66946007)(8936002)(86362001)(36756003)(66476007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?NcErIJuOM736somA8ODSUbwuH8vBcTXkXFu90M1C9BzQwrP+3uizPxODrYOu?=
 =?us-ascii?Q?tp90UzfBM+sGFhFHQE9DxCs7lvzwF+ACTpwJP4jQ/JHVpPsOoPTvCo7reqGD?=
 =?us-ascii?Q?lYul6dleMrYgqN13UIKG/wkZonoTX5TWaX1Z+uIg3vz9YN9Eu2CIcFnIh/yK?=
 =?us-ascii?Q?MiBPlwEGDJpggaYyVWhyCdZLnaV+BaQZRzG/fWVFp8xLjAWOMqGuTPvQJ7eL?=
 =?us-ascii?Q?LOVdmgPC98cmQRXQyZCeK6RAy9RzwwuA+vXoZp84yrHllXlQ8d+daguj9MVT?=
 =?us-ascii?Q?4DNiIylOgjM43QowiDpqSX2HXqaJgvA2DWSkw8S1Ye03S7kvGobqJHHRX56R?=
 =?us-ascii?Q?vS7c4d1T6PJcPEk0TGutcsMG5lMMm08OMBwOebKai4b+9oGnwxz1zEsF52wC?=
 =?us-ascii?Q?ZTbTbZFRrT7sJUyUDXXGqamBNjCo/2VbChLyb+tssHTenUO3Bps8rIJJ5JtC?=
 =?us-ascii?Q?TujujocpAWMTVnlH2KNnptpfsC7bVDuyQC+qwOQtZc00UII6UaheO1ZiZ6he?=
 =?us-ascii?Q?7PR52etBiq54NGpNnVORvWqBczaY92TU/ACgrz6XVq4K5ffxsFknYUH/enBX?=
 =?us-ascii?Q?OYIcK3+in1e3G+aZWyZKGNuywz2kycjiflJ9YVVDeg9PnIKpVSP+4z4oFOs/?=
 =?us-ascii?Q?fAzLoauMxH5QOYQM8HEr+OzoDQACaQYBxFFGriEof/5Bl7y512k0LDrz0mK6?=
 =?us-ascii?Q?AVqxbqI+p9XhWDiVD9pRKYW0PHsFzWx+4TIiuSVWV4hWtIjUWOJB+pv+2duC?=
 =?us-ascii?Q?aKu+6ZDe8tdIB7uJBhXWfN49vMoFN21mXbQucUHyBRw6McitJwlOoTEZFDZx?=
 =?us-ascii?Q?kUWrMz1cZXGD7PHiX6kgqfXEHLLIOq1vY1a5h2lFLG0uaNcXg3YxlO0kRH3W?=
 =?us-ascii?Q?R366EGROYUfQ/wHcDkJtYZa14FR9lowN25Ad7TxI2heb4gXJlwKVQ+zI1n09?=
 =?us-ascii?Q?KvJBaWnnjYtz+NLqmfRV0guWRc6eBGQbbE7urslbT0eKvX1CyIIr/zUAdwp0?=
 =?us-ascii?Q?XiTMAJUglG0A1SsnG0Ku63cba0gJkXdRfOO+Ntvp8yxZ96GhjjD55Wub319P?=
 =?us-ascii?Q?/tFMob3yH0g5c5+vTr56c/+zX6Y2IFPPmD3ZMEs2gV0xuLG4sbpK3EUTCVDC?=
 =?us-ascii?Q?Zyr7bXzJnUS1aIMb6CxDaNJN0bT6fDrr0ZvLqcBUTh646zuP+gaPdX2WPB4m?=
 =?us-ascii?Q?OSWP1qqheJi1cEjpBe1nYhQL0vm8Bb9C0VleUM2VFE2in2J1YROWm6+PFXpA?=
 =?us-ascii?Q?STPZPB9sAKK90FfjBWAXHF7VI0Q04FfGQ126pzSFkruUqa002BSN11Ii+DGs?=
 =?us-ascii?Q?FBvVzaJnnPIrMGLU+Cp2Gtrc?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: accad335-6384-4056-717d-08d91e65b37a
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 May 2021 03:40:40.3930
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lgrvCHIFo5+YK6a1Fbqpb6CB8+1w1XDzpNg0oUoY1iPs4Tmod3SMlvSmbbK+mle6t1VveqAGuI+KZH9bXVuEjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4683
X-Proofpoint-GUID: 9uANqB7X6PsXQ83CLydgUbI9aBC_Gz1W
X-Proofpoint-ORIG-GUID: 9uANqB7X6PsXQ83CLydgUbI9aBC_Gz1W
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-05-24_02:2021-05-20,2021-05-24 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011
 priorityscore=1501 lowpriorityscore=0 spamscore=0 phishscore=0
 suspectscore=0 mlxlogscore=893 impostorscore=0 adultscore=0 malwarescore=0
 bulkscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2105240024
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Update SRC_URI to use Debian mirror because the original site is
unaccessible.

Fixes do_fetch error:
ERROR: libgssglue-0.4-r0 do_fetch: Fetcher failure for URL:
'http://www.citi.umich.edu/projects/nfsv4/linux/libgssglue/libgssglue-0.4=
.tar.gz'.
Unable to fetch URL from any source.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/libgssglue/libgssglue_0.4.bb | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-security/libgssglue/libgssglue_0.4.bb b/recipes-secu=
rity/libgssglue/libgssglue_0.4.bb
index f7859a7..88c58ed 100644
--- a/recipes-security/libgssglue/libgssglue_0.4.bb
+++ b/recipes-security/libgssglue/libgssglue_0.4.bb
@@ -21,7 +21,7 @@ LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D56871e72a5c4=
75289c0d5e4ba3f2ee3a \
                     file://src/oid_ops.c;beginline=3D378;endline=3D398;m=
d5=3De02c165cb8383e950214baca2fbd664b \
 "
=20
-SRC_URI =3D "http://www.citi.umich.edu/projects/nfsv4/linux/${BPN}/${BP}=
.tar.gz \
+SRC_URI =3D "${DEBIAN_MIRROR}/main/libg/${BPN}/${BPN}_${PV}.orig.tar.bz2=
 \
            file://libgssglue-canon-name.patch  \
            file://libgssglue-gss-inq-cred.patch  \
            file://libgssglue-mglueP.patch \
@@ -29,8 +29,8 @@ SRC_URI =3D "http://www.citi.umich.edu/projects/nfsv4/l=
inux/${BPN}/${BP}.tar.gz \
            file://libgssglue-fix-CVE-2011-2709.patch \
 "
=20
-SRC_URI[md5sum] =3D "088797f3180702fa54e786496b32e750"
-SRC_URI[sha256sum] =3D "3f791a75502ba723e5e85e41e5e0c711bb89e2716b7c0ec6=
e74bd1df6739043a"
+SRC_URI[md5sum] =3D "5ce81940965fa68c7635c42dcafcddfe"
+SRC_URI[sha256sum] =3D "bb47b2de78409f461811d0db8595c66e6631a9879c3621a3=
5e4434b104ee52f5"
=20
 # gssglue can use krb5, spkm3... as gssapi library, configurable
 RRECOMMENDS_${PN} +=3D "krb5"
--=20
2.25.1

