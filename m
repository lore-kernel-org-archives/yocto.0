Return-Path: <Nishina.Pervin@nestgroup.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBB26E00BAA; Tue, 10 Apr 2018 00:03:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.101.113 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 958 seconds by postgrey-1.32 at yocto-www;
	Tue, 10 Apr 2018 00:03:07 PDT
Received: from IND01-BO1-obe.outbound.protection.outlook.com
	(mail-bo1ind01on0113.outbound.protection.outlook.com
	[104.47.101.113])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B026BE009E2
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2018 00:03:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=NESTGROUP.onmicrosoft.com; s=selector1-nestgroup-net;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=wrEJ6IvX9EDzKtmt3SS3UXRWe6btiQMJGEYUDiGCfiA=;
	b=sIsP//oDR5j7MBEjsPrCxb4O4AaYk4U6yTgQqsfXFqzvtKKszmJfcNV2akeZb6LyrUp3HjHPfl7tMiV1eXoMEmxhK4mTRxvwaou0Z7GF1R5pECk7TN67bX3PYQzZG2W/btInm5hfvfHPPaFsPWl7DD79sQ0bwC7AiTF2zvoD5Ug=
Received: from MA1PR01CA0082.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00::22) by
	MA1PR0101MB1463.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:28::12) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.653.12;
	Tue, 10 Apr 2018 06:47:06 +0000
Received: from BO1IND01FT010.eop-IND01.prod.protection.outlook.com
	(2a01:111:f400:7ea5::207) by MA1PR01CA0082.outlook.office365.com
	(2603:1096:a00::22) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.675.9 via
	Frontend Transport; Tue, 10 Apr 2018 06:47:06 +0000
Authentication-Results: spf=fail (sender IP is 220.227.133.133)
	smtp.mailfrom=nestgroup.net; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=nestgroup.net;
Received-SPF: Fail (protection.outlook.com: domain of nestgroup.net does not
	designate 220.227.133.133 as permitted sender)
	receiver=protection.outlook.com; client-ip=220.227.133.133;
	helo=mxchn-out1.nestgroup.net;
Received: from mxchn-out1.nestgroup.net (220.227.133.133) by
	BO1IND01FT010.mail.protection.outlook.com (10.152.202.124) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.653.8 via
	Frontend Transport; Tue, 10 Apr 2018 06:47:06 +0000
Received: from [10.4.0.132] (port=34813 helo=webmail.nestgroup.net)
	by mxchn-out1.nestgroup.net with esmtps (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.82_1-5b7a7c0-XX)
	(envelope-from <Nishina.Pervin@nestgroup.net>) id 1f5n3V-0006sR-2c
	for yocto@yoctoproject.org; Tue, 10 Apr 2018 12:17:01 +0530
Received: from MBCHN01.chn.nestgroup.net ([169.254.2.109]) by
	CHNCAHT1.chn.nestgroup.net ([10.4.0.134]) with mapi id 14.03.0319.002;
	Tue, 10 Apr 2018 12:17:01 +0530
From: "Nishina A. Pervin" <Nishina.Pervin@nestgroup.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to update OpenCV to 3.3 in Krogoth branch of Yocto in i.MX6 
Thread-Index: AdPQlxMIyintq2GiRi6v0vFfYMPbVg==
Date: Tue, 10 Apr 2018 06:47:00 +0000
Message-ID: <E3DACD6AA0B26143AF16244886B5278E1FE91C49@MBCHN01.chn.nestgroup.net>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.18.0.177]
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:220.227.133.133; IPV:CAL; CTRY:IN; EFV:NLI;
	SFV:NSPM;
	SFS:(10019020)(39380400002)(39850400004)(396003)(346002)(376002)(2980300002)(1110001)(1109001)(339900001)(36304003)(189003)(199004)(6306002)(6916009)(356003)(1730700003)(2920100001)(8676002)(246002)(6116002)(54896002)(77096007)(2900100001)(5890100001)(5660300001)(9326002)(5640700003)(55846006)(72206003)(8936002)(14454004)(476003)(71366001)(336012)(426003)(10710500007)(33656002)(7696005)(478600001)(84326002)(85426001)(486006)(790700001)(3846002)(86362001)(26005)(16586007)(2906002)(55016002)(15650500001)(2420400007)(105606002)(2501003)(26826003)(316002)(260700001)(186003)(7596002)(59450400001)(7736002)(4743002)(102836004)(2351001)(7636002)(126002)(106466001)(7110500001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:MA1PR0101MB1463;
	H:mxchn-out1.nestgroup.net; FPR:; SPF:Fail; LANG:en;
	PTR:mxchn-out1.nestgroup.net; MX:1; A:1; 
X-Microsoft-Exchange-Diagnostics: 1; BO1IND01FT010;
	1:hff7I0+8fCI9p6/K6dq3+Do5AI910X/ShWhgDU5N0654/lawk33WCuTApkGbP7kjn2M/ZNVyndS1N7lAzP9KOo2BEMaHyZiZWuKeS5WRzBrRsmFp/0ZFVmKiH0yKW/y4
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 61a9733f-3365-4099-7216-08d59eaedff5
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(5600026)(4604075)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);
	SRVR:MA1PR0101MB1463; 
X-Microsoft-Exchange-Diagnostics: 1; MA1PR0101MB1463;
	3:cTy8X/6Ce5xigz2lwk00PE7CJYOa+bOTx7v8aWiYYfxpF+r6fr+8tvPwI/FMirBamdWQlYzbYoHt/TPXRHaxdUXPY24SN87R00com0DSTNrUCjkim39gABmL2ToVa6KZs/+soOIrChOJe43bfuRy9V5nanenaCSRwQh1ucCAlNUMo3o0HUszyKnmkHn3CEA4jZQwlFCwkKlwumNHHdZpimx2lRkfC13sIL2xwVMj+Ei4V7UqYjKbZX1Bl9pvxffCg7vfqJRZbsVOP7E+stED3cB+ohf7ddgZDQKFebtVsn9ZS6ilwbNN/CFViDeZqh1iW+sBu8oa0sLBT3GEfx5pb0R4sz8QH+4Lat3X7TRxFoc=;
	25:UApDKhV4/g65BTIuhIyrlSGI6/n9fP/AWMV7W+JVoDmwN8Hw9jTyyhpGupB/FvnFKXOdpSdfY7tDcY00CHbjXj1GbQNpGwEkPO12FO9vuJAB5Q4eBo4DLUp+s3o7fGHr/hiNeJeexTPy0zgjZFTlMygRbvUg8kB8BEaMLSX+DLncitG7sQnvV9ybPB38fwVKwRTrKD5SrAUoYCDJ5oVtQOA+z14wOMwFy3YBHOoi5m9UHqsPkAt/7vO2rI2S2SBC11sMKatP/XOmvVQen0l2P4/whnHBsdPoeTdVd1BWU02Bqs6MqP/PU6VCbD+iaafvGrPAlrYg24a2kILtKLoxLw==
X-MS-TrafficTypeDiagnostic: MA1PR0101MB1463:
X-Microsoft-Exchange-Diagnostics: 1; MA1PR0101MB1463;
	31:B4kBI1/VrsYCrJ3jZmjA9xVLHZk7z1d0gOs/eVOhXYQEH9o7l1ScqV0RKMpnpUs3vKiQuXgoWD4mKA8vlpxzJL5jCAFQYnrJ2XVJI2H+z3plWq6WMFXzvkJJuZdckMScGXaruTdV75loQV+aY+7EOHaPcHAiqLAiuUvIEhqiLQ9lqbXpeIj8xbT7lc4mHEUVDKa88uNnlXdxEh3BWC4BO1Lyqqnk6WrtC63phSZWMec=;
	20:t6nr6ayBB0qnoYuk0k8BR6pjMT/f7+BnfqTqKpNULH0lTrOnzAwkuljeuY3XHQCoUT+NxBNBLHXCDL8AlQ4kMlLqhBnOdhmnWUVFZGwFBKW2b50rM00hy8XlN5gZ0tWQwvrxlURfBZTTg9c98YO18ytcxnyYLQRHYavwF+El39TI88+FvL4qPvW2xj6pm1ncTSlqX9UoAFzJfl30gLU5o9SjEeutHIT69B300qTgsB7eTcoPC+sSo/kYFBhbKeL8YUN27qNSWbXc/sxXZtaQgUNeSLzVIvKpgu1yP2c7dnGLHv/0bzhsr1NYYw8Qy/JifvblBPDdbOiAUFAFH+/GDwgnnnImMzve30QE9E1nGSVm5NyzrGxsG1mVTvWZgaTKyI4B1Ushex5iZlSx9Z/pPAGN75I9JNs93K8hRP8gJYinOeSLcallel+00gsnQRhzXlyFEx3OILTjJuYltCO6UmHySmaAoanTiuSH+jsUwU4a4Z8aNSBzoLW4iDAOV8ap
X-Microsoft-Antispam-PRVS: <MA1PR0101MB1463FF156986A72509CA1EA49ABE0@MA1PR0101MB1463.INDPRD01.PROD.OUTLOOK.COM>
X-Exchange-Antispam-Report-Test: UriScan:(28532068793085)(21748063052155);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(10201501046)(3231221)(944501327)(52105095)(93006095)(93001095)(3002001)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123564045)(20161123562045)(20161123558120)(20161123560045)(6072148)(201708071742011);
	SRVR:MA1PR0101MB1463; BCL:0; PCL:0; RULEID:;
	SRVR:MA1PR0101MB1463; 
X-Microsoft-Exchange-Diagnostics: 1; MA1PR0101MB1463;
	4:9ucMHrwWLsu81ceyn7HaR1Ffqk3UpNkqw0IlylZigsb3YMQny1a33SDb9f8TyJyZDg1p1yN5DPv0OSKpTGQ1eU2aykHE8s7dettCyghpuee1oYrSFjI8ffXVdsSQslUgh7aFYHw2tE5bjkcIOsJGTATwJkDMcC8dUdIPsv+HtxGxRcDSHoib5NlexSkL68/s3hBo2PA0CWaB/4Y4CocMYnS9IcJgfVvWzDIs9dqDxAYHn49IWucNTRzO+jGRXqvGU4LppKYp4C8NF04id+gS2ICA4nfOEgVMty3csv6trAup1BLx48H/+5owtFoR5qISLklslRTuUPLVvzO3D7loyXkpuo5qtx1UYnG2DJxFG+g=
X-Forefront-PRVS: 0638FD5066
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; MA1PR0101MB1463;
	23:clC/4N9RVk4GdTZx7oy+muZogucOKqVnK/J5hix?=
	=?us-ascii?Q?h6eZHG2tSHhXqJLKpiNjwe9BteGaJuV1BnTXi6AOQvRfKuZ3dJVvzJ2X/TMF?=
	=?us-ascii?Q?/7ryv27YJUjnvXzXwq4wNRNMWpe3S3C8npTVk11J6Q8skErqMDnBrRuMt+5e?=
	=?us-ascii?Q?KKRvZKsAy0RNhM51O/r9ZOeGpHACwZPlL57m7iJkOmaE9G/TLxfSF/49qCxE?=
	=?us-ascii?Q?Xno8Xo2Lsde+rtWr3/xX0SEKI1GGGAYs0d4JxrbJvjNL3k9gxDCdugUHp6U6?=
	=?us-ascii?Q?mlH8/IHBCXdY6Ix7/GxVTpIaAGT0PbYsW0tOlF+R0322IWidT11L0P5iMVFe?=
	=?us-ascii?Q?QQh6Tbyp+JeOpHZO7sNS942DYcG6CdVZCZqWyit+DVvSHs6XGITiCDNnqkUC?=
	=?us-ascii?Q?WCtbKyr5r9GppjDK9tFIS8mNemCMqY77a5Y3YPCV4GzuWKOScUKTQRtIhuaZ?=
	=?us-ascii?Q?RcQ1KJkFnI8NkMh/pskWCpgg4gQU2pJ57axeoluQLLSTOxZRC8BwTCWzCB1z?=
	=?us-ascii?Q?bfqCrWfHFSoz09azcbsbk0x17LTeK0zKYH6lqxz43GhoRI8ErPm05ivna5EG?=
	=?us-ascii?Q?nsPZv5y1c77lzUuKLDbFwkGv5wY4y/9we/xcJ0b2N7x7AFcFBPQmxPGIbYam?=
	=?us-ascii?Q?Ilm4g08mfI799aX7ZWXAX3PzcIzRuiwBmIH2qAgr4y1GfUUoDVkutos33qzi?=
	=?us-ascii?Q?LLEz7SV87WMo0Qzhh2hH5CYLbha8sUO3bhGb7O+EvhAk/kmNS8bqQ4swBtc6?=
	=?us-ascii?Q?2tJGz69y1G9djxJYtVsofFTbwnJ5E9WgK6OnhxvRnomaUThI0vrFfYq7s2W3?=
	=?us-ascii?Q?prL7WTw7ZfbpCCgA/J4gfhdmzuOgEDU1pM8Afzl9pdYQOZwAgCtN3g+g7S2N?=
	=?us-ascii?Q?poIOw2oseyLAn86ai5R5Lyed9NruVN38td9esgFCvaFd4tBIFTlcNgolJAIC?=
	=?us-ascii?Q?T+TvijvWKxdE2B/MJjyYP1y2aIVcr3CCD4kUa1be7sHvFVnVD+PjPmwZJiX/?=
	=?us-ascii?Q?VoirVavkYNx0jKy0YNdCRuU3LpWEfN2UXIjwe2AeWukHKRfMigKu/0n5ZZGB?=
	=?us-ascii?Q?dSo7Ge7it/1XYbeTtWwXBTaC1lOQHHRpMfb5ISBvhEIcjM/mTWjQ2KCvVvTt?=
	=?us-ascii?Q?oCLWlOu1g+gk9F/6P7jVTBqV9jGw+KT1wYZJMf4UKQSajttn1pJZ2Q7u8EKz?=
	=?us-ascii?Q?6gaNtsRZcaU6IG6DRQqY9T34ZoOXBEBySz/agWnT8EtDHK2XJS/q85izGC4a?=
	=?us-ascii?Q?y8J0WFL9uSHfColA7hmvF1Twkt2zCufKGPPKmgSd4uAT73BVmWJBXOWyMSF8?=
	=?us-ascii?Q?dkavyQG5xH/pXdiCKNzq6EMyNhTq+K4CMDqRwRXIINYJTGNo2j7AczB9Y+TS?=
	=?us-ascii?Q?Zalle27yTnZBIMIYRU3JvlGv8dU8XM1LC2mr61cpNqTK0u92uCsVJDCHyrAS?=
	=?us-ascii?Q?2nFVcYwLZapc/e3rMcIPrzCuMQl6jcgXGyfZi2XcHLgxS8158aO2qv8aKOE3?=
	=?us-ascii?Q?R96XTfxFkyW7d/HUxFou8gNzitZFEOB5ApYA=3D?=
X-Microsoft-Antispam-Message-Info: v6k8UMkz3Hs4E8sZpA9S5gS4XI5zGJTT97KfycOq6pJpcDuBvOJTiDw784WdGtVu9zhDZaQhvrqyz3fJ6kUZ33QcuomL76vU2yPGwwLeoMXgCuDyPw7neqGm2o7qq+oxz4glTNOTYOt6W/4FQQFuntzJr7+H04du3+vaBQozCK1w/+/qSCBW1Sr0fhsOhYyT
X-Microsoft-Exchange-Diagnostics: 1; MA1PR0101MB1463;
	6:Hr8AdVA1cbECnfd6hsN0bKlDr2w4l/kSeA/od2ltpgZWY2xoJXnJ40rRLJte6rPzvqKm/OOtNqb76gOhiBJ0ZwNUsDmxTB5AbD529CL9GtnZS4eVaRMN3wQotjC5FWGjGQMBFfK8nX3k60u9Z8KSs3vdSfW3WBumXxpG1GqrzPgwIWFIB+di5FPm9Vgsk9F9pTtZlbRFSJbpXXWmLy1RUgxiPOfzilCzSGcD4Wq67V12H4+DUwiXONB7Qy2CkJG7PHkTaEU19KxaOwiocHrHGJt7CgGNycvh1LbwRT5fnylCEqHx3LaJQELit78chXudDTMTwgiNBoVQbJaelCt66PlgJ6Cdb0wB26y2HbBjUfz/1ZL/erYIrUhOXVXQG+1b4GSMH23BoO49EZeuK3aayNyNF0wSP6x4pYYkycqIQtcX3efqYOt/mYrPawHO3EzdMbhRAJYMtyMVJrELPrNXlg==;
	5:/r5KkN+u/F5l+i7tGCEx9xrlgKPRxnnSDL+ao3ifWi2OJQW/66aVwmFJ4vfrnBnQkb1CYPy9AER9yKpc0Ya5JAU2SNMm+Hz4TrUikYNLBasQNiT0m4rZktnwFVcD56DzQh3qS9Ow17y0QbqTwu3UXS9wyX1RCg5oIfkbVQGTlCU=;
	24:8oTw3vkmtW17znowPxRV6LUCPGj7yfOcv+HLH0vsoU4jRYgC1+jRTfdSRi+mk+JswoyrmKpqwx8LBnOx/dliAfvDb1aM6UQZUSy191WdgYM=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; MA1PR0101MB1463;
	7:dIHTlwgbWzIr9Kpevadj9iVkvDmaK04CMzmQ98kwOGRQxFx07AWH57lds8VjLC7qqhNmOTbHHd4GLwxUlVpUyrl6of8htJOmby0q+lc6D/pyN20zM+ZfmGyS50TOls3vNVrhTTsoc0hOkG2FhxMl6v4C3bPS4PPJgbHhjkN+jRR8Cu61KhSfIkj082KBOTj2akLi7jwGFQuR4yvaRDZcxUOOS114VKSdMryd9h92ohV4aUVu1cd9jvKDafLJ9Z5d
X-OriginatorOrg: nestgroup.net
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2018 06:47:06.0133 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 61a9733f-3365-4099-7216-08d59eaedff5
X-MS-Exchange-CrossTenant-Id: 413238b0-a7ed-471d-b1a9-615aa47d504c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=413238b0-a7ed-471d-b1a9-615aa47d504c;
	Ip=[220.227.133.133]; Helo=[mxchn-out1.nestgroup.net]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR0101MB1463
Subject: How to update OpenCV to 3.3 in Krogoth branch of Yocto in i.MX6
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
X-List-Received-Date: Tue, 10 Apr 2018 07:03:09 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_E3DACD6AA0B26143AF16244886B5278E1FE91C49MBCHN01chnnestg_"

--_000_E3DACD6AA0B26143AF16244886B5278E1FE91C49MBCHN01chnnestg_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

How can we update OpenCV to 3.3 from 3.1 in Krogoth branch of Yocto for i.M=
X6 board

Regards,
Nishina
________________________________

Confidentiality Statement / Disclaimer : This message and any attachments i=
s intended for the sole use of the intended recipient. It may contain confi=
dential information. Any unauthorized use, dissemination or modification is=
 strictly prohibited. If you are not the intended recipient, please notify =
the sender immediately then delete it from all your systems, and do not cop=
y, use or print. Internet communications are not secure and it is the respo=
nsibility of the recipient to make sure that it is virus/malicious code exe=
mpt.

The company/sender cannot be responsible for any unauthorized alterations o=
r modifications made to the contents. If you require any form of confirmati=
on of the contents, please contact the company/sender. The company/sender i=
s not liable for any errors or omissions in the content of this message.

________________________________

--_000_E3DACD6AA0B26143AF16244886B5278E1FE91C49MBCHN01chnnestg_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">How can we update OpenCV to 3.3 from 3.1 in Krogoth =
branch of Yocto for i.MX6 board<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Nishina<o:p></o:p></p>
</div>
<style>P {margin:0cm;margin-bottom:.0001pt:}</style>
<hr>
<p><span style=3D"font-size:10pt;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot; "><b>Confidentiality Statement / Disclaimer</b> : This message a=
nd any attachments is intended for the sole use of the intended recipient. =
It may contain confidential information. Any unauthorized
 use, dissemination or modification is strictly prohibited. If you are not =
the intended recipient, please notify the sender immediately then delete it=
 from all your systems, and do not copy, use or print. Internet communicati=
ons are not secure and it is the
 responsibility of the recipient to make sure that it is virus/malicious co=
de exempt.
<br>
<br>
The company/sender cannot be responsible for any unauthorized alterations o=
r modifications made to the contents. If you require any form of confirmati=
on of the contents, please contact the company/sender. The company/sender i=
s not liable for any errors or omissions
 in the content of this message.</span> <br clear=3D"none">
</p>
<hr>
</body>
</html>

--_000_E3DACD6AA0B26143AF16244886B5278E1FE91C49MBCHN01chnnestg_--
