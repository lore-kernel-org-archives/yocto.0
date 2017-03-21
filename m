Return-Path: <zhenhua.luo@nxp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C4EFE007AA; Tue, 21 Mar 2017 02:38:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.40.74 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 7270 seconds by postgrey-1.32 at yocto-www;
	Tue, 21 Mar 2017 02:38:45 PDT
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
	(mail-co1nam03on0074.outbound.protection.outlook.com [104.47.40.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B361E00524
	for <yocto@yoctoproject.org>; Tue, 21 Mar 2017 02:38:45 -0700 (PDT)
Received: from DM2PR03CA0051.namprd03.prod.outlook.com (10.141.96.50) by
	MWHPR03MB2800.namprd03.prod.outlook.com (10.168.208.18) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.977.11; Tue, 21 Mar 2017 07:04:32 +0000
Received: from BN1BFFO11FD048.protection.gbl (2a01:111:f400:7c10::1:145) by
	DM2PR03CA0051.outlook.office365.com (2a01:111:e400:2428::50) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.977.11 via
	Frontend Transport; Tue, 21 Mar 2017 07:04:31 +0000
Authentication-Results: spf=fail (sender IP is 192.88.168.50)
	smtp.mailfrom=nxp.com; nxp.com; dkim=none (message not signed)
	header.d=none;nxp.com; dmarc=fail action=none header.from=nxp.com;
Received-SPF: Fail (protection.outlook.com: domain of nxp.com does not
	designate 192.88.168.50 as permitted sender)
	receiver=protection.outlook.com; 
	client-ip=192.88.168.50; helo=tx30smr01.am.freescale.net;
Received: from tx30smr01.am.freescale.net (192.88.168.50) by
	BN1BFFO11FD048.mail.protection.outlook.com (10.58.145.3) with Microsoft
	SMTP Server (version=TLS1_0,
	cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.1.977.7
	via Frontend Transport; Tue, 21 Mar 2017 07:04:31 +0000
Received: from sweet.ap.freescale.net (sweet.ap.freescale.net [10.193.20.96])
	by tx30smr01.am.freescale.net (8.14.3/8.14.0) with ESMTP id
	v2L74S5l001232; Tue, 21 Mar 2017 00:04:29 -0700
From: Zhenhua Luo <zhenhua.luo@nxp.com>
To: <yocto@yoctoproject.org>
Date: Tue, 21 Mar 2017 15:04:25 +0800
Message-ID: <20170321070425.15373-1-zhenhua.luo@nxp.com>
X-Mailer: git-send-email 2.9.3
X-EOPAttributedMessage: 0
X-Matching-Connectors: 131345534716396057;
	(91ab9b29-cfa4-454e-5278-08d120cd25b8); ()
X-Forefront-Antispam-Report: CIP:192.88.168.50; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(6009001)(336005)(39450400003)(39380400002)(39850400002)(39860400002)(39400400002)(39410400002)(39840400002)(2980300002)(1109001)(1110001)(339900001)(189002)(199003)(9170700003)(85426001)(110136004)(105606002)(8936002)(356003)(38730400002)(1076002)(48376002)(50466002)(104016004)(5003940100001)(189998001)(47776003)(33646002)(2906002)(5660300001)(106466001)(50986999)(8676002)(6666003)(4326008)(81166006)(50226002)(2351001)(77096006)(6916009)(8656002)(305945005)(86362001)(6306002)(1720100001)(36756003)(575784001)(53936002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR03MB2800;
	H:tx30smr01.am.freescale.net; FPR:; SPF:Fail; MLV:ovrnspm; MX:1;
	A:1; PTR:InfoDomainNonexistent; LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; BN1BFFO11FD048;
	1:/swUzBc258J1V+1Sxd8ez4As/kGDDRZo55fjWsbIkuRI8wIPRtywA2T5OtIcYpxZ2gvE9Gtv4sY9gMTrtpozLOxGbK1d6HyTFOzmYQRjUqWAO+BPaFSqY3hbksnve8lK0osko3pSFr24C2f6HvwHwrpyZhk7VoJERnKslT42XDXJ2H3cJFPLlnW3NV4qtn81cMg3d0wE17z0Y2KsSDrcKAmS9zmZpA4xHXXZob3G6M/xRgT9oBRQ6GzsbUk3cIMlSmYrZ06bGobdubENg/oSU0hQcHrMHIuKQuS2WMsW3dig9n9sJsFK+eVqq46x28l7ewlhYdN+R9U113m8Xjfek0cwL5ldYDWxfEqUCXxSQeBSr+6A634c5sZuxqDVm9lErhX4gBQoGdhJ4cBFM81I2c3r0SnC+ls9K+H7Ri1OJBxUDxU/Cjefp0g9tzrKmUjbBt2jePJwp8s/7cCUGB3y5S1HJs3sXRWvmiylATp6SDdEFpLuAmpHf/WmrGPB/YcPnROtjSx/n8QLgBY8C2fqdkQDjp0y9DtaZAc8mQ3vocbq/6fzaE2ea8POXECscrb+qndNVYd5mdRgmqLyt9pu7ECMmoXPSncy6mPG8DhBWNWmHX9TvLWsGxLDuGFI5ZEYqcxqP1NP3wRExs9N4EzspqRJDDEKackvMwapHwnj4qg2tiS+B3GvvzKwOdGmwAXHc3P9BFFTKTm53B869RC7Xw==
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: e7e27354-eace-425c-60bb-08d47028860f
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001);SRVR:MWHPR03MB2800;
X-Microsoft-Exchange-Diagnostics: 1; MWHPR03MB2800;
	3:G22N969Y0YtQs76gFGtfC9QaBsaUyPK/LzjfxZGJ4Uuvx7TUnWlCytPIbSznQ+EtWVU/g3yUkK2+45pQi7+4k7lItzCXXtBQ7ZL4K/+QH4InkDiQ4zfYCLdYceEvN87Y2bVgL/jtDlPnb6EwkcBEKZk5fMta+QkMjjCofiXTzHM5bk50brxRrtwLzjwj2e5BlJ83IVjsF+pzPmS/VWhjwkdLN04GK6NfBfOgCRGmiQkMWkdri5A9x4d3NVvCNU6wx/oW7TxgbmYx5XoRaJCk3yi0R6CPB6d+4sAWGSOHRiFPLronS63ZVTMDVe4hhx2pgMjiCoOZPjIHo+mZYCasSePYiOdl9r592MEOLqc7Sc+YWElIgThPu6qx0XDb9tJi;
	25:i4fsqAQygSWh5H0Vk+NNa2rGMAhgxgn4E+Lopas/zXQabhEdk72sjgVCwLpLIaRxbz6tBZxnjwi9HTDENjOgM2PB+/lFkeJbluazjtrbqvt/rlyIIQE7veibhOQbRzclLtamufZtzprKya8AqE+T4EPWrcqS+Ws1/88i8ONgDEE48/gFaIlOaZbgUfHgsAZHv2BhMljdeZylSCyduXiiFiYwHd+XeD/GkuYmnNpdJDm+cvw9ILq+M7EmJ3YFqo3BebXJ20ECUzbX7VFyj551cZ7XxtLKmMWYbgi2cbuRWbtH82zXADTx2Bf1WorcoJiSJbcTlHmGIYMdTrgDagMqgQ8NnUmy62iypdr8CzgLRA/+Owkqocqs0SDSXO1AnzhGQoekrcb1w9lzMgSKhoJ7fmpzG4d+sNs+SSoQKI2FkLU/udpGWtAchchNviU1Lasd4/bFgkS41PvfQmmGGp2vCQ==
X-Microsoft-Exchange-Diagnostics: 1; MWHPR03MB2800;
	31:VsrJkHQGk3U8AIXoTUVPz7HidxLCctijOcXeKycl+Yg0wKNwI0l8q+dxYOWWC13CbFR+tu8Dd4hJmOFLZ7kXjaE2iwCPQSglmsRJq6iQ4oDs6pw3rcQWZP/B5JJmfoTc/M54OS0oTokl+0QvK+fXhk/pHSm5FDzBTD5c9Q+7WTckuaMBWENrPUembIRgeA99O5g6re9HQKxMlDxdKIiO9DCcrTt4mE2TpYH/Yge9xdy/IoXq0usy7sLhUYv/E/S0
X-Microsoft-Antispam-PRVS: <MWHPR03MB2800375A5A365449375782A8EE3D0@MWHPR03MB2800.namprd03.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(250069074691196)(185117386973197);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6095060)(601004)(2401047)(13018025)(5005006)(13015025)(13017025)(8121501046)(13024025)(13023025)(10201501046)(3002001)(6055026)(6096035)(20161123561025)(20161123556025)(20161123565025)(20161123559025)(20161123563025);
	SRVR:MWHPR03MB2800; BCL:0; PCL:0; RULEID:(400006);
	SRVR:MWHPR03MB2800; 
X-Microsoft-Exchange-Diagnostics: 1; MWHPR03MB2800;
	4:mgm4C6J272Cg8N4e4G8N2OH3MfXF5tUikAo4QNICK5hH/0eLzd+Mr8Jrrcvt0YaQvaSuQfWVYL0yetcLTaO6L4PbSeJzhPtSF7QekTIpRIaxArxkpAWbDn3+XYGkDjtHsb8HrrYORWTN4uvy51JoffC1qtfuQRBxS5IFXnnD2U+MV6lVG7ogiRWASO/CRljkaenqoI6xdA/gY734P1OZ0nO/+q2njbKFAdqx9Uj02zjd7vvltcU1YxfGq7Yv0vCr7d8uQWHQFkSV+pKiaMGCAPG54QfwkAtWBttnE0tCX7YwITy0J/WWi5+wKlhpPtZzsWfBnRRq9PJzFRb1bl9JvdVQe/b3rQu3rqvSH/AxAvIlIQmPF33iBzBnVSrhOVLSYtoRXJsYeOHnLGEq8y/zRsJIp+y9bYZ61UXUsaYYtGFMqt+6HX0zASu/xev3Xozp/+qUn4aZEMD352Xm6XMRvnQQ3LPNGllp2C5oUbuA4HU3c22phRoKp2aIyF1Jh+GLvkpg1OFOHDvDPgiRJ8zfesGI0TuOeWvofekK02wRw1HHcneE6qhoWxbKL0XLz9fJJ33kv0fHh1gc9l8K9kS+qSAF+QT4/4hZr4X76R445gdGyE88/4/Pdj2tWW7RfnSwooxmFq588O20iIQeU/pEUGwkvy7u0wF3JtnK714MRawj1UiMF6giVBNtZ2fZgVckWBVd/Q6MZGLPllFJuQXcdyCxq1TFU1LyAUBWRbLpcbFk6LI1GNoMeMU5mjFABBvlYzitHcm21GzzuG8X9cR7Ww==
X-Forefront-PRVS: 02530BD3AA
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; MWHPR03MB2800;
	23:h8gp4ADev6bHnvH1TkbVGXI46KwXEBOzjVPmvtf8Q?=
	=?us-ascii?Q?inRAHcDjAAwKpByPFZcDcLEXbHQmToSzHtzeI/r7uEfpYLBex3N5UuPtaAo7?=
	=?us-ascii?Q?s+jDsCQJsnH743/nf4tM2hZ/Ky1EUSXn+LUc9OJsqdfelTh30oaEPIMwpRog?=
	=?us-ascii?Q?Zj9kNtQ7ciHiFo4odVBWQoPhz2oYbOIqFvT+iJllLAwVNqdzeqZseznjMru6?=
	=?us-ascii?Q?tiK0jzTYOHCswPWPK0mEsdhidOGY/V2ouG2/RL3DEF89CqJXZndFg2zSE9XV?=
	=?us-ascii?Q?bnVthlbS+tthhcQLrgO4dxbTHnppVm0+eFu118VMao0FrkV5BlZCAYePzVPg?=
	=?us-ascii?Q?gXSK2aLbsb/hsLwYvdy7bHoyO+ag5BdHTPkkcbUHCabYx3YMRUdnMw1bwz+4?=
	=?us-ascii?Q?r7kTeC6DfkEMTler4Ayk/ZD+kQ3r5uyeLH+JSoVGn+zEMVvv3wsdZhYJYvOq?=
	=?us-ascii?Q?jxheaUiCAwXE/Ezn0CRBUAGgHh8RwUFki3PzT5WO0LRFRS2IOmNiGBFyU8Uf?=
	=?us-ascii?Q?poAEPVesD2zH4O8HzzvLqMARyfPUJ9OaVOxT7yyCwHkgjqIj7vr1yAZj8XTQ?=
	=?us-ascii?Q?OBMi5fo7Nxu8q4Wrrt1Yk+BWXraX+m4IC1aHQUuisLQsGniCWw2zdSAH5j+J?=
	=?us-ascii?Q?LO5Pm8a0fCI+canFGZX0bl1O+yQtOJ1yZqXujZYLL3vScarOa7RVAVdutC3s?=
	=?us-ascii?Q?Zi/GHAMT8H72eqaHIHS+rf/Pm+3N8Vmz95ceDTECUannI79c4itiVg51J3GW?=
	=?us-ascii?Q?WrxMRulTCwXrj7ueA9zaMtaLf1dIZKRYydBU2lAxSO2c5EGR+TIQYm84YMav?=
	=?us-ascii?Q?4CmlfwvOc6lIMWRuO+rUP+oji7Pr8HyrcIjSWsGaH7LhzhSdGJKXGOQ67oZt?=
	=?us-ascii?Q?Q+hltFVy2phplO39IOjzN+RQmlvuqhnDtjfhtcDy/93E/TflaGhNRefMv9Xf?=
	=?us-ascii?Q?ZHHa3hyXJiCvokzTYDvChZUdTOx4rdW4/oMhXSfg48vPLLc6QqzndtIaB1Ib?=
	=?us-ascii?Q?ym59GIW39kfN2FRysz+dEJQVlUBZfUMtoqgSiI3VzUQ4X2OgnrAa9SJOPFqv?=
	=?us-ascii?Q?1xiDe8tGM6yFJCsJOXBexCP2JLSUa0qDbuuc7zlACshMrurRm4+cRFFUovuL?=
	=?us-ascii?Q?apBetRhMDvD0ASuGsHNdrialKCylq5wE9to321emjcyDGbB++sjgQfB6wdmw?=
	=?us-ascii?Q?+EZhzSnqf1T//rCpSR+Lxk8yQNlgvd0M3tAxw1StQ/TtSUQwaCDgImtxQ=3D?=
	=?us-ascii?Q?=3D?=
X-Microsoft-Exchange-Diagnostics: 1; MWHPR03MB2800;
	6:kYWLFKJaNl+iwXTV+3nbw59HZ5Uzl+KYdcWKcv0eVrd2jsIUvuYHHGii+jGoAMQrzzLiUGYF0cxpquHPhXpUE+E8uUGb6/kdA/05m5qyzR4eZ5zt/miRGl4YAG8e8BPKAezvKurx3d0vJ+FlliApZQ3gmJeG6uCVd9xHtmUjX0Z2Et7EHlqRi6VcmGj4raJB6d2DGu2AqkPeKSgWzCgw2dLdcsl2ff3oz2wb4+6tpd2p+TW722tJwoLIarXFwdalbONHRaswyjxaMqIjNR0WGrUvLCikZvk2BIG++GWXl3Hm5ki5i6f9WExotN2EFLEJVgMlX1Nb5TtTGXmPhM3M0R7nd15qiUWeBuM2Vq/NeCgLgVoGdRJRXAA3fL6KwYdUsp9iFs49dvqyp6jF6cjY7WrGyAPT8DXIlyRtPR31ylk=;
	5:W4eZuOITBDKPRd1nMitAvh/9OJQ7kmL/dR2DvZdZ3wnymitUna0ZDOz6ig5WkaOHN57BppDAL1smWIw/akMUvvFXhZDiSvcHeESl82XtJ0JnPcCMYf1Lp6Eeb/yD7nguAbUF/pdb4YK5aXNFOxcSy/f8FLd7HorikQnufNxwlqsZm48TprEMugu5ydYmdrkR;
	24:ps7COzrqjlwv117v+uAa6iHNcz/k3EondtCQ625u2vdZWAtPzNLMA7qU0tju3IoCuAnMIUPqkegqRxfMdBRMFu6AMsVlHqxsiKaQVV7x7dM=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; MWHPR03MB2800;
	7:I0sSAkRThcCUwIsKoBB3SPVCDxfJvohdwymLaWRxDh+9/Z02f6TO7H/Ctv2NQpyGkCwxCPFy8Q849N7oA4ZxYwM+H4QV7gRb6V9l+GLvqq92MEhOpBh3mex+68n3L5P9F/tgDJ3kr28EGiYRwsqd/Z2lNqNMXSfEtCpg+t/Kgt4Y9cHjbi5stj1AWzp2D+gDFU3lXY+PbZnprKXv9B8MrKAo5LY774tZcMYv/rxmIKD1TKXyNLH6aEKHD/XEhrxbfDDrta0mYTkLGrB9rhVB1JgAfOgAfts1OBxZNFxzXzo7LrjCRhmXSy4q3fdaScQ+cNJWX7iao/LvMwGeFgW6og==
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2017 07:04:31.4368 (UTC)
X-MS-Exchange-CrossTenant-Id: 5afe0b00-7697-4969-b663-5eab37d5f47e
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=5afe0b00-7697-4969-b663-5eab37d5f47e;
	Ip=[192.88.168.50]; Helo=[tx30smr01.am.freescale.net]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR03MB2800
Subject: [meta-java][PATCH] commons-collections3: upgrade from 3.2.1 to 3.2.2
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 21 Mar 2017 09:38:48 -0000
Content-Type: text/plain

Signed-off-by: Zhenhua Luo <zhenhua.luo@nxp.com>
---
 .../{commons-collections3_3.2.1.bb => commons-collections3_3.2.2.bb} | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)
 rename recipes-core/jakarta-commons/{commons-collections3_3.2.1.bb => commons-collections3_3.2.2.bb} (63%)

diff --git a/recipes-core/jakarta-commons/commons-collections3_3.2.1.bb b/recipes-core/jakarta-commons/commons-collections3_3.2.2.bb
similarity index 63%
rename from recipes-core/jakarta-commons/commons-collections3_3.2.1.bb
rename to recipes-core/jakarta-commons/commons-collections3_3.2.2.bb
index 852cac7..0a53d09 100644
--- a/recipes-core/jakarta-commons/commons-collections3_3.2.1.bb
+++ b/recipes-core/jakarta-commons/commons-collections3_3.2.2.bb
@@ -1,5 +1,6 @@
 require jakarta-commons.inc
 
+LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=3b83ef96387f14655fc854ddc3c6bd57"
 PR = "${INC_PR}.1"
 
 DESCRIPTION = "A set of abstract data type interfaces and implementations that offer a wealth of useful functionality and a solid foundation for extending that functionality"
@@ -9,5 +10,5 @@ SRC_URI = "http://www.apache.org/dist/commons/collections/source/commons-collect
 S = "${WORKDIR}/commons-collections-${PV}-src"
 
 
-SRC_URI[md5sum] = "031ce05872ddb0462f0dcce1e5babbe9"
-SRC_URI[sha256sum] = "9a4a800cb7ecdaf3b6f608cd608682b88b506f1b1c4b727d15471ae3329fc63d"
+SRC_URI[md5sum] = "776b51a51312c1854ad8f6d344a47cda"
+SRC_URI[sha256sum] = "070d94fe77969d8949bd129a618e6a7bee6b83b5b5db3ef3f983395a5428b914"
-- 
2.9.3


