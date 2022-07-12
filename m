Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7F78C43334
	for <webhook@archiver.kernel.org>; Tue, 12 Jul 2022 10:34:08 +0000 (UTC)
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 (EUR02-HE1-obe.outbound.protection.outlook.com [40.107.1.72])
 by mx.groups.io with SMTP id smtpd.web10.7500.1657622047231623277
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Jul 2022 03:34:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b=G4ocILV6;
 spf=pass (domain: arm.com, ip: 40.107.1.72, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=g5xLM7wzoNQjUBi3xzuKZfB5v3jtFUJ8ZXkyk6uy2bK8UWOYcMgl5XzGwcbz5WtpxzZZ2CgNHIqqwCnXKLX3E9nuOasXqBhLBrNP9YPoPgS5Y26MtG46MUNwAYvwCvi9CT0I+2CwWEFb5GoflgF/C5AAL3w5W5KZAmRyJQQu6K4+BtgaFC+0g3/Y/1MqTvh10C32awCi++E0URJCtn63Uk3Wo4FENGPszD5WAKUaHLlwkb/AcR9OMza+i3ScfwBxPNgkDdKjvlhBzUjw1ErE9bsT0VEdb7wY8qld4nWybwVjyV/NWfjY4vCB0Fl9CGJNeuPIc9EJfTNsg0y4pd9kEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YpAbtb3OEzLHfFlNBlA90uBYCwTEwiGdKHggVsX10Yk=;
 b=CFd0Gyl2j4SZFucIYaUrfeEDfZ02djpxzFqoQWw3ai9K4BCtLrwnNiF38secrLz7eKPNWD0cfhbLruAB6HOFBpR15NrttGidKVdIiNZf7sFr8hlUKErA6int9Z7Lrl0IAulucTuQE+ENaPPlbcp1he3z/XPZL+jeUclc2tqLVoEfoCB3n91ju8opkUE4+TZ8oZhv9U0E3SehCEThz9vu3cZbQNEW2ZKy3jhjg72NBM3EOJQmNTngGyzJyVbIlORMiL00fGO+Ug+0I3dc6ELBJoQlSpnIJf1x1wZVf6OIbBtpWqIF2BV0K5H1iWSLJo8p+uL+FKsVJ23I1I+nWMQU4w==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YpAbtb3OEzLHfFlNBlA90uBYCwTEwiGdKHggVsX10Yk=;
 b=G4ocILV6VmmLyO+nqw3QScXEX9S/BZFNa7Er9bTgmSm5T/LY9t0iIii7I8dl6+OtDLkZglrQ37s2WOE7Z2X3rb73Heaea/fiiqiL0pNNLWYZWPYVQ08TVUtOm22aHnlS6Psf0tkAF/pvjIg2pCoVgzka7ira0OEX0qt3Fs5KbdA=
Received: from DB8P191CA0025.EURP191.PROD.OUTLOOK.COM (2603:10a6:10:130::35)
 by AS8PR08MB6213.eurprd08.prod.outlook.com (2603:10a6:20b:23d::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.20; Tue, 12 Jul
 2022 10:34:03 +0000
Received: from DBAEUR03FT022.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:130:cafe::b) by DB8P191CA0025.outlook.office365.com
 (2603:10a6:10:130::35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.16 via Frontend
 Transport; Tue, 12 Jul 2022 10:34:03 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT022.mail.protection.outlook.com (100.127.142.217) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5417.15 via Frontend Transport; Tue, 12 Jul 2022 10:34:02 +0000
Received: ("Tessian outbound f9f15f9daab2:v122");
 Tue, 12 Jul 2022 10:34:02 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 21efba5c55e73322
X-CR-MTA-TID: 64aa7808
Received: from ff8a444629cf.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 81306EDC-4851-466E-B5F6-D4E3B431670D.1;
	Tue, 12 Jul 2022 10:33:55 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id
 ff8a444629cf.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 12 Jul 2022 10:33:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AALcYysz9yohYXLmKxsFvlddS5O5eabVruLMx55WxDaSNpuTjHzsrwKhrJLFYGhBSuxBWSXxsGB2LsrpGMA4uBJqJYmwe35CUocSI9axZzqgvYH7L1zruXIFm/U3R+SELF0tnL2To0Qjm4WFP5szUYUsIyVtEMH3fn1K0cKYULxwrZH06Q7xVX3uSWP7Q5kiEWunbwPHUm8jYG1PwzcBMgULCKgch6toGwQcFqqeJqrPvYnMLOskQcVgO2vS6KtH4O5aSPOT+qoUGkVmXkUZuTCqgdCrZ97cQonlmCFzxu/axQ/aDCWUJBFvYljYCTqQy4M3sMgmlbG5VyhaaOA7iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YpAbtb3OEzLHfFlNBlA90uBYCwTEwiGdKHggVsX10Yk=;
 b=IqaDcbGkl4PHHj2O2hS8MxvPezkW8f0tnl3/+LPvQ4lOdqUBi8BBszZsLdfJMiFxSqI7SFZSZsGNKxaiF0+PMJgeYK1m9jv+/ZMCBP6csD5sldUQ/9MuT6np1cHq7CIJ1M8dcyufhk2UeeZGY4CWxUaEeEGwsPV5wutDQ/67CrAU/ODZ+4EdkAVTPgOzfTo6WPnG/cCc1VV9oAbskzZ//92jCAwI09VL6kqjeULsB2bZHXKk0H8Zc9AlL7MAjnLNdN0ULh8nWFTC+l/HS/nuuY1n6n6RBC2OyKyHDf7BxHlY5I+QJW5zBxGRewoeqtFtmoz5biWQFSMHrmvmkWqXDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YpAbtb3OEzLHfFlNBlA90uBYCwTEwiGdKHggVsX10Yk=;
 b=G4ocILV6VmmLyO+nqw3QScXEX9S/BZFNa7Er9bTgmSm5T/LY9t0iIii7I8dl6+OtDLkZglrQ37s2WOE7Z2X3rb73Heaea/fiiqiL0pNNLWYZWPYVQ08TVUtOm22aHnlS6Psf0tkAF/pvjIg2pCoVgzka7ira0OEX0qt3Fs5KbdA=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DB6PR0801MB1829.eurprd08.prod.outlook.com (2603:10a6:4:39::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.20; Tue, 12 Jul
 2022 10:33:53 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::2c4a:b33:a761:a926]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::2c4a:b33:a761:a926%2]) with mapi id 15.20.5417.026; Tue, 12 Jul 2022
 10:33:53 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Sorry, a test
Thread-Topic: Sorry, a test
Thread-Index: AQHYldrPQYwK8N7eJkCAJMKb83UCrA==
Date: Tue, 12 Jul 2022 10:33:53 +0000
Message-ID: 
 <PA4PR08MB7411AE1815C0898E6E4CD46BE8869@PA4PR08MB7411.eurprd08.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-MS-Office365-Filtering-Correlation-Id: 200d8722-b36a-47eb-198e-08da63f20a17
x-ms-traffictypediagnostic: 
	DB6PR0801MB1829:EE_|DBAEUR03FT022:EE_|AS8PR08MB6213:EE_
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 AqyFkK9TMjm60YLvSWjJAqyZHsQoDJQ41rbGMW8i3b8qIiwq4P0v5GA/xulqqRiJdgvw+ItRpybTxmH2//V1Ypp9M9N9Ev4e5IFEqAth3vud1HzsRvW3ZDedkJyfImTuzp9/uAZgYkRIcGc0sq7C9OhOOnJQPlxrv2QcrwPxHqZLb5FgASwty06RqdySQijQ+roreCAqgCCePBoz6/3eCYx7lf3ZOy4TjxtlwRP4+7v+rJwf3vf53h3Vdl1uzbPXIbbZ5CrnQhX4zNqHJa9vQWKkZcgEJCJq4QwyTnu60e5v2Cyo3dNHYYTRS0vnbcgFR43MQ/CjOy6tbjoicdxjDsNg56iym+63KkU0pquMcNcJ1xO4/3YO6gtQn2EOiLX/AsQvh68NgiDMGpCNnFOLDWdQU+VzQsAsS4gqc7w7zK6fTPL3N7l/3Wube7/Zv3WAdvJt5VZnHke6zU2lRPHf2mRcxY4JWlPw9qsWIX+cOKCepu2rUhLUHPmAWY/7/MH0tbslw8I9oClBmgLvSNThXdJYXrNDQKo3Zf94EAwGWuD2xC8EC0LczEqImYxp9nqK3FpMqFOHEVNgvzW7wdQ33oMRDXgP6jtS0HQJfSjyQbqWPLhzmYvTv1viFHAKGmfo62gR1VJOL+cvwKqIcjzR91W1pmErQmtBUnMU6xgGfm2US0jgmUWJfsBQUHJOoFWIxkoLm/Mwi2qwYqWsP/iDQFF9WCweChTXSkalolX/5NMq5gEzKFTVd8J2XZ0OFqE4w0JbfAFxMeqczTW3lU1li+WHJDYIpjlQ9snk2OJI31J2Fqxi2nBcxkArx7/fa9IS
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(346002)(366004)(376002)(136003)(39860400002)(26005)(9686003)(122000001)(558084003)(478600001)(38070700005)(5660300002)(4270600006)(8936002)(86362001)(7696005)(6506007)(52536014)(186003)(41300700001)(33656002)(38100700002)(66556008)(6916009)(2906002)(66946007)(66446008)(8676002)(64756008)(55016003)(316002)(76116006)(66476007)(71200400001)(91956017);DIR:OUT;SFP:1101;
Content-Type: multipart/alternative;
	boundary="_000_PA4PR08MB7411AE1815C0898E6E4CD46BE8869PA4PR08MB7411eurp_"
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0801MB1829
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT022.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	0368b521-7915-4060-bbba-08da63f2043e
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Fdl1a8VqVGCyvp2GH7zJBR1EM/Ieq3g43tijukegDEMcSYNcbUfT9XBlT0exVF2IdMLlf5mL97ejCHOjjtwrkdkVMFQ0WhxrS+mmNbcQvLCBT+aiN45lmPkviYTVoqP5XUN8bpCemdMLyWNEyND4nDQfUQ+ude4oGhUQzVfB2mQATQXVB2NDxiiOA4B69v8eWg5wMhK4hcsRiv00ool9R2Hg1CcEQnIrIr8qPF6vrGFAW3oVI7At5EFKYmkKCnd4oOXRXMx5jx0lo2tWByvaFnPzV3gOD3fH1kMV4CYTEdocPl30/Ee7O5rBNLF2XV0eQ5LZ/4kDPZxN7MvLcCGEVr8c9F9tKrh6gmr9K93doukjdukl1dBFs0qnF87GkV5fJLOIEOWd7ThWpZUpX/vwR1TAGPHOnb2rDtSnomT/ANJ2dvLM3XiT3XfCPptwYO+Nmh1bLLGih24qimd7SI0Gtro+pZU+5z+NGm9lK/7bgmhmHGNkqB+g7xFKewEutu3THfI4mdL09Xn3hTAnMNkwxtkVp/O/1xrxaUgd80ATF9EzT0BonoxrKg88YIhLSoT/DskAbSyRdvYYzNI5rTmKuOsXKrHtokJwkEuC4FaSlh+zFieR4uOen7ZLnyavCEl+VLk3iMrKkcSesAoS3zd3fyTDspn1u19J+fDX41WCiPdrCOl/3ZuZ6wda+QZS/mhWf1HrO8UZH1PAJbrEaupPPPl2tMtl5qWFwyKeF+KxCpuCfrmgcLcxSF5EqSr6066vpqcD2R7EwapG0mfeqFmXWmz6on7WHnQHnLjO8/A74vjBl92+OyvFWkhOlJzT4XHN
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230016)(4636009)(346002)(136003)(376002)(396003)(39860400002)(40470700004)(46966006)(36840700001)(41300700001)(86362001)(7696005)(6506007)(8936002)(52536014)(9686003)(40460700003)(478600001)(2906002)(70206006)(82310400005)(26005)(33656002)(564344004)(36860700001)(47076005)(316002)(40480700001)(82740400003)(5660300002)(81166007)(8676002)(6916009)(336012)(186003)(356005)(70586007)(55016003);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2022 10:34:02.8711
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 200d8722-b36a-47eb-198e-08da63f20a17
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT022.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB6213
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Jul 2022 10:34:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57503

--_000_PA4PR08MB7411AE1815C0898E6E4CD46BE8869PA4PR08MB7411eurp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Apologies for the test spam.  Hopefully this doesn=92t have a legal disclai=
mer attached.

Ross

--_000_PA4PR08MB7411AE1815C0898E6E4CD46BE8869PA4PR08MB7411eurp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
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
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Apologies for the test spam.&nbsp; Hopefully this do=
esn=92t have a legal disclaimer attached.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Ross<o:p></o:p></p>
</div>
</body>
</html>

--_000_PA4PR08MB7411AE1815C0898E6E4CD46BE8869PA4PR08MB7411eurp_--

