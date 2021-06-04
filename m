Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.4652.1622785304398935410
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Jun 2021 22:41:45 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=Jj9fqbJK;
 spf=fail (domain: windriver.com, ip: 198.145.29.25, mailfrom: prvs=1789c2f2c2=zhantao.tang@windriver.com)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 934C938C0879
	for <yocto@yoctoproject.org>; Fri,  4 Jun 2021 05:41:43 +0000 (UTC)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 1545fg04027156;
	Thu, 3 Jun 2021 22:41:42 -0700
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2174.outbound.protection.outlook.com [104.47.57.174])
	by mx0a-0064b401.pphosted.com with ESMTP id 38ya82g4gt-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 03 Jun 2021 22:41:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=giSh3XcF0Fqfio5xohZ5iWvo19Y9flT8jS2HIlAzYiBNVgWaXlyYSkAs/rKTTQnGXKd9wqGM/jFECDDFEfw5cGG6jq009OA9xQM/3xE9grdtyIwXMaIfknRtihJ7sXAOylRCPalCOZUNEXkP/llhSAHex8N2EY5aBTQFLO9ld6K3AQq+fU0MKWpORGNKn5tg/gK1Up21RXm0MpxjJ4YYWSDVN86EM94rzM7pCLIJyja1u9WWpX4q0jU3iRGkOdcAyu+S462lABiFDyJKYzuGKjQeOYZ1gjHRlXrhPwjl0kauYGllbemOAxm9ONSOFvWu4tLCHwOeT7flGHGk9Pcbww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FrxEbVxYKCPyFSZCkV8TmY4taUc+216CDoK0iF1/zZM=;
 b=co5pnLWIv0qYvoUnwDVVAQcZgTO+GanPDUht8ymHYobtyE+vRv8wrrGZAdgUMj3RbXjAdyDt32lxdl967aQY6SqyWH6b6CS31zWuoEQbllsf/cPa0/KeSfVRXv5A7q+GPob3OJwD63Xci/DSHfd9s+g6T9ArhS5TaYiwbq2GpqbtYannVd6d9EAbEPrnLGwahfGuYkoKdlyscve27ioQ0L32pTx4CHFplHWcZJNGL5tmOEDHaqfORJ+Ecg9i0/9zsCESsm4NwV6PdkhCwapAK4jD0Z4zq8e/fnGSczUccGHpRqnbTtfYOzv8tS93/LNzOHJ2MJ0TFMi03gwUnRiQ9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FrxEbVxYKCPyFSZCkV8TmY4taUc+216CDoK0iF1/zZM=;
 b=Jj9fqbJK4GJ8qwICnrhRx5QBpTBElrka1AMMhSdAxDZpVuchKe6NVCAyC538EThJhMZd04G1KJvnou9t5UpyOrI40+cmn5nC2n5Ktnq7ROEXgXoJhMt0fbrmrkrVC83yXS2BhLiy2aHoLGJxsrnhMFi6O1iLfbDeQ9JqcTJ61ME=
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=windriver.com;
Received: from PH0PR11MB5077.namprd11.prod.outlook.com (2603:10b6:510:3b::17)
 by PH0PR11MB5160.namprd11.prod.outlook.com (2603:10b6:510:3e::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.20; Fri, 4 Jun
 2021 05:41:40 +0000
Received: from PH0PR11MB5077.namprd11.prod.outlook.com
 ([fe80::dcbd:3d93:856a:bf2d]) by PH0PR11MB5077.namprd11.prod.outlook.com
 ([fe80::dcbd:3d93:856a:bf2d%5]) with mapi id 15.20.4195.023; Fri, 4 Jun 2021
 05:41:40 +0000
From: "Zhantao Tang" <zhantao.tang@windriver.com>
To: bruce.ashfield@gmail.com
Cc: yocto@yoctoproject.org
Subject: [PATCH] drivers: dspi: fsl: fix dspi transfer hang issue
Date: Fri,  4 Jun 2021 13:41:22 +0800
Message-Id: <20210604054122.2732003-2-zhantao.tang@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210604054122.2732003-1-zhantao.tang@windriver.com>
References: <20210604054122.2732003-1-zhantao.tang@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK0PR01CA0059.apcprd01.prod.exchangelabs.com
 (2603:1096:203:a6::23) To PH0PR11MB5077.namprd11.prod.outlook.com
 (2603:10b6:510:3b::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp7.wrs.com (60.247.85.82) by HK0PR01CA0059.apcprd01.prod.exchangelabs.com (2603:1096:203:a6::23) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.15 via Frontend Transport; Fri, 4 Jun 2021 05:41:39 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 031523fc-0569-4b16-58f3-08d9271b6d50
X-MS-TrafficTypeDiagnostic: PH0PR11MB5160:
X-Microsoft-Antispam-PRVS: 
	<PH0PR11MB5160ED7E6768BA236CFC8B4E8E3B9@PH0PR11MB5160.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ihUEVKmfXzeO/nq24rqYVeHS7AA7Fz5niAvc4aM3kW2fHE7z3wHsKZTp2NpSAWXsa2HxkMhjmPFwybEsjGFiH407zLJUWzcuP1PQw+TH8Cy74nE/aDhtEBpGuozV4DLqJ/w11pTwgFP7raBwwJimoPsqi2lobH4GOv1b8591qUXW9WRS88AO4fqkv7zOK+WHnWOVyiMcQn4/ouDFH8fXA3/I4PihUk4FQVDBe2twVibHRRN0fklHwxjWeAicX8Ga+lwkKpJifXRPuZ3nND3nAalA3ysf94yhlWtu5t193Dr3mxjta16G5gc78xowxCmww8cojxZL9IZdzsLJVMXj6A/6nj+mK20v4rw7Tcr+HPQErem7gYWbolHikJNZxm2ktseqeZWd+61rFMXMgncUobmINnN1U5OV2cJh+xoxgzJVu0KNuCg5MkXu4DteteaYTdQfcNoB89PtBhjgHc8zO9V9kLVUSq2o8WHBUfqJtwvYTt+8Lb/O75EQQnnx+H/qSmngjXmHA64NJXNTfCLQTFPvKNQ+vQqBGIyVw0lO91kvpxIFvaLfTZ0J5PIIn82tqPHSzqr8n2khIRRnyb4IpWn/UqwlunI4w1RcA7ybfpnFJQnSuew8r40GyAinTXr+9a+iOAyQv8TwU0ZSZlDsyZKaA2L5Hwk3pV2nQ+aZkz8=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR11MB5077.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(136003)(346002)(366004)(376002)(39850400004)(38350700002)(6512007)(1076003)(478600001)(38100700002)(5660300002)(36756003)(52116002)(6666004)(2906002)(8936002)(6486002)(6916009)(8676002)(26005)(956004)(4326008)(2616005)(86362001)(316002)(44832011)(66476007)(66556008)(16526019)(186003)(6506007)(66946007)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?Cep3EBKx+N+aqky6jqDjhbrCVwLfcQ7Im9FLWYBdNpL3dluuq/vNO3gJ+c1W?=
 =?us-ascii?Q?x9DcoL2QOs13/SrSP3DutyrpAdjJLV3p/7dZi+hnDFeBndbhi/9y0i0F7XnZ?=
 =?us-ascii?Q?+HmGFj8Z8mIXwPDdDUsF9Y95fxGelse9O1v8augzYRwPdfFCG21NRW+9iT8J?=
 =?us-ascii?Q?QTJqgzVWkaEhCA+IvmAXiWqxDV/aUtaQtbNtuz9iu/xCWmJaw8Xdi9CWGGh6?=
 =?us-ascii?Q?54qiEfa15a5s1j2jdLq1EXGJU39LTKAcjdSljJobTUjxaDzTtrpSHlWwz9JY?=
 =?us-ascii?Q?w0NfUtZKaasNjJ4zVt386zC0JbIgfEL3eO4l73gbCzftSx7+CCj5NegdC5Xk?=
 =?us-ascii?Q?T/D8VOyNP4THw7gVAMgVuRsJyKWsNo6mM7LK5baRtmIh+quKREfwaeVoTPpn?=
 =?us-ascii?Q?dPSzabBc6RUegOKUcfD4g4Eq9hspWCGtY/PX+nrV0jbmMy99vCA2ULcNovBK?=
 =?us-ascii?Q?Fo3Uqa9p8tnsyXYAaE6Km1jA9PLvAEj5CNGV7EzIiBv/tOq/PyKexyQsO/D0?=
 =?us-ascii?Q?p+KMluXQsN7RPNnsNCNaY6glcOs6S0PVpUAFbhDIHySmH/TrDxo4o2IwyK4V?=
 =?us-ascii?Q?hOZSV2vobCLpL2YXFs7pNhm+D893Ec+VJJn2PdbY0MOapqTD8ZWws9JeqzVC?=
 =?us-ascii?Q?T5oSIP+XxTSboZtelUrEUjn90CAGrpgjp7nyJw5tb3WJTLStOUyWWlf32P5j?=
 =?us-ascii?Q?AJqA/GJPBDEE4sG4gW0QQld60ZZ+gOjwGa6qlIkQacCdT7DkR8mvdebvd5v0?=
 =?us-ascii?Q?6P5WNO+gLIS/pruPGNiKTncrt8JVgZjBGSrLMQ6MaWr1NiS96niOLs1BBrdy?=
 =?us-ascii?Q?slDN37qmgnZm0OyM1rR1TW2lsQ2G++5MB1BvGxFzzByN6UOFzhrKXUm3aDfB?=
 =?us-ascii?Q?GvgzhgJDmEq8VsiAdB0RmAEXdlJ01o0COl3BxU8EstYAcroXorOjxM4YsAwq?=
 =?us-ascii?Q?JDEaWMrFGHFmlp2n6BZc5t5qP99xqkAWaAjhiXLqzUaayv5Hfno7spVTc/TO?=
 =?us-ascii?Q?7v7oAH3rP2m171A5BKfO1oTl0npj0nd8bHctU4dr/R7uuXMvpOG6As4x4kaN?=
 =?us-ascii?Q?SzzwYYkT8sZWPGi/n60dmSTu2YEV3D8Qteq6x/SI7m0lcKeLjVlPgQLvpHl/?=
 =?us-ascii?Q?NmdXp7vm/Wr8JKnA4djoCXLT8V+7/Os+Abp0/mBZ/W3uynzN+PpTFb0c8G3M?=
 =?us-ascii?Q?7NgCOaoLRpCaSQITq5wVcb3bEWWRvDMoxXde4I12k3580jCZZEcag/60C+9e?=
 =?us-ascii?Q?elO90duvrq/5iTDu+zpi0yUdkQECwagSuAgPPESaoR9EcZtnF6UvyVIIypXN?=
 =?us-ascii?Q?Ic6aaUtBIEmivGO9zLP6F/2I?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 031523fc-0569-4b16-58f3-08d9271b6d50
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5077.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2021 05:41:40.2671
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GD7ce9UCJ4tls5gbHd3cM4Jza5Rf6RAKmLRb9maG/qtB41T1LiwoUPfywzy/RY8VRsHwWOYk+m4h0xCcHeu07DlpMUjkd134EEdoN4PGJWI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5160
X-Proofpoint-ORIG-GUID: NEwDXzKfqWM_AP5_MTdL_-XSf-Nz9GbQ
X-Proofpoint-GUID: NEwDXzKfqWM_AP5_MTdL_-XSf-Nz9GbQ
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-06-04_01:2021-06-04,2021-06-04 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 priorityscore=1501 clxscore=1015 impostorscore=0 mlxlogscore=999
 phishscore=0 malwarescore=0 lowpriorityscore=0 bulkscore=0 spamscore=0
 suspectscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2106040043
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On NXP S32G RDB2, there is an sja1110 switch, which can be accessed
using dspi interface, but if users use the following commands to test
the switch, the board will hang there.

	$ echo 30 > /sys/class/gpio/export
	$ echo out > /sys/class/gpio/gpio30/direction
	$ echo 0 > /sys/class/gpio/gpio30/value
	$ echo -n -e '\x02\x00\x00\x00\x00\x00\x00\x00' | spi-pipe -d /dev/spide=
v5.1 -b 4 | hexdump -C

The reason is that, the dspi driver wrongly sets the HALT flag in
the register, and the while loop will run forever, so the board hang
there. This patch is to fix this issue.

Signed-off-by: Zhantao Tang <zhantao.tang@windriver.com>
---
 drivers/spi/spi-fsl-dspi.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/spi/spi-fsl-dspi.c b/drivers/spi/spi-fsl-dspi.c
index 063cf4a60ed3..c20cce466bf7 100644
--- a/drivers/spi/spi-fsl-dspi.c
+++ b/drivers/spi/spi-fsl-dspi.c
@@ -965,10 +965,8 @@ static int dspi_transfer_one_message(struct spi_cont=
roller *ctlr,
 		dspi->progress =3D 0;
=20
 		regmap_update_bits(dspi->regmap, SPI_MCR,
-				SPI_MCR_HALT, SPI_MCR_HALT);
-		while (regmap_read(dspi->regmap, SPI_SR, &val) >=3D 0 &&
-				val & SPI_SR_TXRXS)
-			;
+				   SPI_MCR_CLR_TXF | SPI_MCR_CLR_RXF,
+				   SPI_MCR_CLR_TXF | SPI_MCR_CLR_RXF);
=20
 		spi_take_timestamp_pre(dspi->ctlr, dspi->cur_transfer,
 				       dspi->progress, !dspi->irq);
@@ -987,10 +985,6 @@ static int dspi_transfer_one_message(struct spi_cont=
roller *ctlr,
 				} while (status =3D=3D -EINPROGRESS);
 			}
 		}
-		regmap_update_bits(dspi->regmap, SPI_MCR,
-				SPI_MCR_CLR_TXF | SPI_MCR_CLR_RXF |
-				SPI_MCR_HALT,
-				SPI_MCR_CLR_TXF | SPI_MCR_CLR_RXF);
 		if (status)
 			break;
=20
--=20
2.25.1

