Return-Path: <urs.fassler@bbv.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0B9CE0097C; Mon,  1 Oct 2018 14:15:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [104.47.1.85 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 29924 seconds by postgrey-1.32 at yocto-www;
	Mon, 01 Oct 2018 14:15:25 PDT
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
	(mail-ve1eur01on0085.outbound.protection.outlook.com [104.47.1.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84BA5E0090C
	for <yocto@yoctoproject.org>; Mon,  1 Oct 2018 14:15:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=bbvSoftwareServices.onmicrosoft.com; s=selector1-bbv-ch;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=HB6I5doGZcur7SQRnIdiWoEWEy8YFSnzhHCIIRYBoIM=;
	b=H4ppbSOX5GjZ/iiQ1KqQuvtEtwtC6i08y9/Q9hJpwLHLPh57LPmiHUOp6k2ii6clHoHSLK8SLGHPwCQe5yh3UoprfctTvb6F8T/U8D3Lj+rpKJE0vZjEW3moPyX5N9ycgqDe9b7dRGiDQer0p1x53Vu4Zsir16qnW1CYCWfZP78=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=urs.fassler@bbv.ch; 
Received: from ofone.bbv.intern (213.160.33.170) by
	DB7PR03MB3836.eurprd03.prod.outlook.com (2603:10a6:5:30::22) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1185.23; Mon, 1 Oct 2018 12:42:36 +0000
From: =?UTF-8?q?Urs=20F=C3=A4ssler?= <urs.fassler@bbv.ch>
To: yocto@yoctoproject.org
Date: Mon,  1 Oct 2018 14:42:09 +0200
Message-Id: <20181001124209.12503-1-urs.fassler@bbv.ch>
X-Mailer: git-send-email 2.19.0
MIME-Version: 1.0
X-Originating-IP: [213.160.33.170]
X-ClientProxiedBy: AM6PR0102CA0016.eurprd01.prod.exchangelabs.com
	(2603:10a6:209:14::29) To DB7PR03MB3836.eurprd03.prod.outlook.com
	(2603:10a6:5:30::22)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5232901a-4bdd-4a5c-848e-08d6279b5d9a
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989299)(4534165)(4627221)(201703031133081)(201702281549075)(8990200)(5600074)(711020)(2017052603328)(7153060)(7193020);
	SRVR:DB7PR03MB3836; 
X-Microsoft-Exchange-Diagnostics: 1; DB7PR03MB3836;
	3:5Kdn9fFd6x4dcIINgj6AwQWUPc+v7KSs1Ashjdgxu7hOfVbYH/EsGfE9ZrYmHO9r5L7sGvX3D6xQpuBu38uHN/Qz4Eu+V5/av5LcCHOdL8qB0RDcYE/g+mFgb0J4KuYPDpEmuP51Tq8PJ6MXGl3wW0aCgDmyHnieh7xDnRzR26ieSAMq2ldLDjE+mhtVz7COgvwXalwCtkKbHE22A0rti7le5loRO+UPXbV7APYD36E08dnJ+/vBOYz94cXrkraT;
	25:OLgrZ62JdwK4P5Z+1jqe4RtSbKYO6qTs11UXGO8dWI4FIq2xKwF7QQ7pi8j159whs50t5tdPbP9bvfXrR7Pgad4UPpuvxG2Pw3gkVoXKB6kCcpXAMhtA+4IOQNzO138XFHD0rBdOmwMhUs/++R5bpdnf6NLj3P3urpDoGcAk548sE4AGYmO123sgI0OiRrvyyLlOt02pSacn/EliFeUinWgPIKpvCKPAlZR/0oOFODCl+zF8YisKphYFXewoJ9aV7UR9AfTP5ihMdfSqDNnsYKOCOCpFY0iqfVpKJHWQyL1aY+Zk13JsFFMUA8NyHk+oZmKYUkxCNdtNQaxGdpZJjg==;
	31:Fn66z5KGUvmMX0tyifPJ6nkPySLTrq6ehX/YGd6hcXm4nOyWwn0VgBLZfkFgrd4FYEsqRrXIYBIq16IMyqqJHJJbCBgILsFCeTNmn2XDtuRTwl7abjvyuWKVy7izomQMTRFI1tamQ6nS/exAhGcCtumfeLi/sCm+LKFOW+AdZ+HdUdWWGuZBcALUPAryXfdU278a8pVUSv3j8LtWSo8DO+2ovFcoLcHf/DQMHK//ofI=
X-MS-TrafficTypeDiagnostic: DB7PR03MB3836:
X-Microsoft-Antispam-PRVS: <DB7PR03MB383663CEC056E0EE3262E1778FEF0@DB7PR03MB3836.eurprd03.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(181554191321653)(126837547833334)(33711482430040); 
X-MS-Exchange-SenderADCheck: 1
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(8121501046)(5005006)(3002001)(3231355)(944501410)(52105095)(10201501046)(93006095)(93001095)(149066)(150057)(6041310)(20161123560045)(20161123564045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123558120)(20161123562045)(201708071742011)(7699051);
	SRVR:DB7PR03MB3836; BCL:0; PCL:0; RULEID:; SRVR:DB7PR03MB3836; 
X-Microsoft-Exchange-Diagnostics: 1; DB7PR03MB3836;
	4:hCPQNIf+Fr2tZc8GuvI5QVIirvmst8qMmz7kjHUaPY+ff2lEbq32c67EVpsFF8Y8ug71T9bFx7rjet2v1Q5Th01btUh4JMAJn/I1aQUfzJQwySiDtlYxue7wE44nMiuQ9ynYNJHETTVzilOPxLiyzY1Dlx7JSBHg8KCkCoMIfEX3EAiv/WqXHbSGupis8dv4t7MwJ0C1c5Z0iXLeIaz2ArUD2LDXECy7lXnS1wd4p/YGpIsf8NA3QOgL/JpexJIfqwu/ELE0IJqIasSGYnuJ/hfiOaqost4MHhVxP+SFbRcb3HE6k/PgCZymFTGMe+7xlQ/3cq34Yw/mrU9k1vgPe+UvRjt1peJzk77zdPh4plQPI5m4A9SWTu+N0qa5lx7L
X-Forefront-PRVS: 0812095267
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009020)(39840400004)(366004)(136003)(396003)(346002)(376002)(189003)(199004)(8936002)(6116002)(25786009)(3846002)(1076002)(39060400002)(4326008)(26005)(1857600001)(186003)(16526019)(6486002)(6506007)(2616005)(956004)(316002)(486006)(476003)(50466002)(50226002)(23676004)(105586002)(52116002)(36756003)(2361001)(33896004)(97736004)(2351001)(6916009)(68736007)(54906003)(34290500001)(5660300001)(106356001)(386003)(6666003)(66066001)(6512007)(53936002)(2870700001)(8676002)(305945005)(7736002)(81156014)(81166006)(47776003)(74482002)(2906002)(478600001)(86362001)(14444005);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR03MB3836; H:ofone.bbv.intern;
	FPR:; SPF:None; LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: bbv.ch does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtEQjdQUjAzTUIzODM2OzIzOkxja1pMVDBtaXQrbEhHOWhqTzZIQXRoWUo4?=
	=?utf-8?B?UTliRXppNjA1NXptZFpuSkRjcVdvTEp5TmJBL2RBeFNpN3NFQXBKWEZuUTVX?=
	=?utf-8?B?UzZPZTFHdVpwSXdjbmlIMHZPcmRtVmR6ajhxVjJpVkN2aGVkcHBIMFlhS2c4?=
	=?utf-8?B?OWNkSjRlVmtMQVlKUFNaajk5NHZmQmhCMmhLMWZGakJMV0hDMFh1TGt2QTFu?=
	=?utf-8?B?UUFScVR6UWEzS2pRM1ZteTM3UXFScFZ6VWNMQmVwRlVEMUsxUVNqNHhtbXJ0?=
	=?utf-8?B?VzROeUZUV2hZaFZCOEJuMjJOUDMweXlzN2FXc2NyUjY4Z01DOFdnZDNBYmVY?=
	=?utf-8?B?Y2tqTER0TFExZ3dWUkI4Z2lLY0oweDdKUGNISTVkbzljdlRDMG1xTXIxRFo5?=
	=?utf-8?B?TjZxRFU2cHFjdzJyZWpBYnRlK3hkTWtVY0JwbklsdWo5ajNBZVBSWERPa2pM?=
	=?utf-8?B?NXpjeVYrYVArK0tyU25QZmlTcHkwaWt4SkthZjk5U0x3dUNST2xpK2pWTkRS?=
	=?utf-8?B?L244NEIwK24xbXRMZUdad1FBUWkyNlJWUWxDcjNUdVEvVzBneEtIMXRFek5V?=
	=?utf-8?B?Z2l6a3hrN3pRSmxmeUZFYTNOMS9iTWlVRk0yUjZlUlM5c0gzR083T053eGsx?=
	=?utf-8?B?SWsvbnVsaXl2dFZTQmRvWWFaakFqcWtLVzZmMUIwQ3VFNGNqYlZYMHpRcEIz?=
	=?utf-8?B?SXpPaVVGamFyUmVqZG5QS1o0M2w3MEtkekhjSklUQzQzeXQvMXZEU1FVR2Zs?=
	=?utf-8?B?Ui9OL3cvMDZaSkR2cXNsSFFDN2NYbjhCRzlqTjVkWERnN1lVZ1lrZ3VmUEEy?=
	=?utf-8?B?c041VDZmVDIveVZqdVNFZ3phVlErM1d3NnFoL1d6TUt2NkIzOXdmb1NzMktJ?=
	=?utf-8?B?UjhDdmFzazNaankvZG1SWUFoZVJKblp0QXp2SXFEZGcwdnNBdU1RZzRVMjVx?=
	=?utf-8?B?bDZhQlc4dWtuMXVJa0ErWHhVMTBnNWRhTjMyVXcySmxzOXdNRUhKZVQ1U1NW?=
	=?utf-8?B?MzdUcEV1RVo3MEtvR3hhdjhOcW94T0crWU4zSEVzZzMwL3IxOFcrQ0VIT3ZL?=
	=?utf-8?B?UmkzNHZNNVZKUG8rNVdjS1pQWFVzWTdaL1EvM2VoWkw3d0FObzQxUnpteGlV?=
	=?utf-8?B?WjBEbStBSVlCT3k1SGdCaW03NW9BSzcybTVCeVNUS3ZNbzNVdXBkQmtxcFNE?=
	=?utf-8?B?dHpNYitaWGs2TXJBd2ZPWjREbVg3OXgvNDg5cCtpYnlYS3lRWkFRTmJzSXR4?=
	=?utf-8?B?Z0VmZzBIdUJIRlV1MEc0dUNyVTNZSjBkdUUzektvOGt0WUFYbE52NmZDOWNp?=
	=?utf-8?B?ekNwVkNRcmg3Zm0wSkpicjZmeHJMODFKQ2ZmV1ZPUEVzeG12c0drWisrbjJM?=
	=?utf-8?B?eDdCVmR6Y0xBSnRtcDdXSE91WS9zdWYwclRzSk1PVy9sbUcvdWZiL1pUNGtz?=
	=?utf-8?B?WDFZQ1FHakpDd2swam1wd2RYTWVqYndFWUVuQzh0b3BzU3RlSGtYanpCR3kw?=
	=?utf-8?B?TFEydWh3Z2VKNURTZlV2ZjdxU095RStLbi9TUmZ0a3QrNkFUR3FUUTBxTWNn?=
	=?utf-8?B?Ny92OFh0NEVzOGRjZGwrUG1xV2ZxckNTbG1jd29uT2VNU3YwSWEzZSt3cTl6?=
	=?utf-8?B?d0F3NTBNZmlvWXNYVzJpK0Z2dElScVdkcUZwL0RKQW5GZEh5UHRGYTR4T2J1?=
	=?utf-8?B?T1RNNndXZytXTlNhOTZ6K0o3M213VklVcnFTM01Dc2lzMjArelR5dTJvWTJQ?=
	=?utf-8?Q?7NTU0XSHdWtrnnpf1zH/xipNr8/kjcr9N9rww=3D?=
X-Microsoft-Antispam-Message-Info: gQPGx2o7Uy+i4ODy0sfQxgyshmurTUHZRyPGErME9NoDkEv/TY9kgsloHRylAa/Bkg5gIgpY4Dpat3EpCJGByyfKNzRx+j7UVewd9pn/kiiCOOSnD51vlWhCQi70l8cBnAK3OsLsKUA2f/sv9fIkQSwe2/tOWIfOezO0VXhtRgh4GJUhjdjmrVz26rXl0gDLTPEYMOOSnZUGSXRUsW4rtHnLAqotXBLZJBa8/Dc9FBgbprp9eBcj+FqdK9SSS65x7y7jLAMOhFR2PJ2MbeqH5c3I3wvpSxCT6iSKC7vIaIOFNta/mDiZP0SfW7ncz07RXVdWDBoAScukwzSToaSNe1KchG5YBDdBa/dlk3d3R4A=
X-Microsoft-Exchange-Diagnostics: 1; DB7PR03MB3836;
	6:0W2OkF8u3wJPSoC7ZmjsuFTG5MeOkVkmqB3onXrQXDw4A/L/TQtc9bEvbXuXrmVZq9HxkcpY5Az/voUBjjtBZdNiX1vramOGfBJfG8/s+5jSLH8GERWI3KegsNMdCr0b2spi9+jFEgOUK3451kaJDSMxplTE9BQNQorlgs9AV/WSa5h0sgxsOLgbey/s6rw5D0o4ywmE2ydwjlraaHEh9vL2gxEdNY0d7dSSinlIru5k2+bVe83urX9360FMY4GUGz/HbDgrr9Ja0quQytyCwx5uAkp3A09Ghqo4W2eUfnDVupTqqqE3yARUZ//nyIwEEA9llibEKeTu3t9iadx9mNUoZPHzq0syFh5y4GeKCR+XOjNpI0zSlwEWgI0QRtXbVoDTAgsptEbhptxtucz+fIng8Gvl+ZjnQpB29fCzLzv4JyZmtMd9yr6MQppqzgWWQ/O9pq6rOslzTey2C+sHTA==;
	5:cCRh0FDtvWZVoDiijYReKw18+cYZr8TtTz10t8tN9OuxDzjHG+324xJBbNY1fgMHIZ0iKITsmLmxvussGrfck+1SaQ8AftF6g0PHZmbkRgKEkInMNdtN3jKjrhpql/tXStWLQmCeEQfJZXl8ni0hs6nHXQCeGVi3FfCIIrbMVi4=;
	7:ojIPhGqedNeskW/9Gql01VVE0lOCod7xl81VuCuJIuLLNcbApCBbJHSrkPOMoqZbpffIU/Xz9fynpPFLL1LkGO+F04ZfJxTTNvCgw0kTHXVqZVvveRnypNVHP66+EbYYxfIThE00jEG87gxmNz5FDtuMDXMhcGI19YARTS56ma8QYY1Ihwfi1z+/5WOH4J6kQuGtSH3NYPnTlwasrt0t6cfLKhiYqbxiSaURvxYww9GR9gXxDUTOyN9vzDND20iJ
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: bbv.ch
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2018 12:42:36.1294 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5232901a-4bdd-4a5c-848e-08d6279b5d9a
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 279985bd-2077-4d9d-9797-42238cfc06e2
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR03MB3836
Subject: [yocto-docs][PATCH] kernel-dev: document the change detection of kernel feature files
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
X-List-Received-Date: Mon, 01 Oct 2018 21:15:27 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Recommend to add recipe-space features to SRC_URI so that changes to them
are detected automatically.

Signed-off-by: Urs Fässler <urs.fassler@bbv.ch>
Signed-off-by: Pascal Bach <pascal.bach@siemens.com>
---
 documentation/kernel-dev/kernel-dev-common.xml | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/documentation/kernel-dev/kernel-dev-common.xml b/documentation/kernel-dev/kernel-dev-common.xml
index 83b02b1c1..6289ce8d4 100644
--- a/documentation/kernel-dev/kernel-dev-common.xml
+++ b/documentation/kernel-dev/kernel-dev-common.xml
@@ -2623,6 +2623,9 @@
             <filename>.scc</filename> file in the
             <filename>SRC_URI</filename> statement to reference multiple kernel
             features.
+            Since BitBake only detects changes on files listed in
+            <filename>SRC_URI</filename>, it is best to add all
+            <filename>.cfg</filename> to <filename>SRC_URI</filename>.
         </para>
 
         <para>
@@ -2674,10 +2677,10 @@
                     </para></listitem>
                 <listitem><para>
                     <emphasis>Add the Feature File to <filename>SRC_URI</filename>:</emphasis>
-                    Add the <filename>.scc</filename> file to the
+                    Add the <filename>.cfg</filename> and <filename>.scc</filename> file to the
                     recipe's <filename>SRC_URI</filename> statement:
                     <literallayout class='monospaced'>
-     SRC_URI_append = " file://test.scc"
+     SRC_URI_append = " file://test.cfg file://test.scc"
                     </literallayout>
                     The leading space before the path is important as the
                     path is appended to the existing path.
-- 
2.19.0


