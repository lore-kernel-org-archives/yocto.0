Return-Path: <ayana.vincent@nestgroup.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83E90E00E84; Mon, 18 Jun 2018 01:53:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=5.0 tests=BAYES_00,DEAR_SOMETHING,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.100.94 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  2.0 DEAR_SOMETHING BODY: Contains 'Dear (something)'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from IND01-MA1-obe.outbound.protection.outlook.com
	(mail-ma1ind01on0094.outbound.protection.outlook.com [104.47.100.94])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 390EFE007AD
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2018 01:53:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nestgroup.net;
	s=selector2;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=d3cb2IkNPsO6p8J8yajx4p/vko84f4XKU8oxHJriS9U=;
	b=JDaEuMdNZDdOrxeAmUizqDUygBenVD4/gKbEMBNazoJG6cJ9klTzZ3vJYT0Ab8rccSzGP9FBWx9NIWf4J3aQXWQ9PMcRVLQku6xm0AMYUCwwopzbHujeqKGM5cEXoV6e/LuX0Iw6GmzvnDFGDe/Z/G6836m0/hrKz/nq/n2XqeM=
Received: from MA1PR0101CA0059.INDPRD01.PROD.OUTLOOK.COM
	(2603:1096:a00:20::21) by MA1PR0101MB2024.INDPRD01.PROD.OUTLOOK.COM
	(2603:1096:a00:30::18) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.863.19;
	Mon, 18 Jun 2018 08:37:46 +0000
Received: from BO1IND01FT004.eop-IND01.prod.protection.outlook.com
	(2a01:111:f400:7ea5::205) by MA1PR0101CA0059.outlook.office365.com
	(2603:1096:a00:20::21) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.863.16 via
	Frontend Transport; Mon, 18 Jun 2018 08:37:46 +0000
Authentication-Results: spf=pass (sender IP is 220.227.133.133)
	smtp.mailfrom=nestgroup.net; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=pass action=none
	header.from=nestgroup.net;
Received-SPF: Pass (protection.outlook.com: domain of nestgroup.net designates
	220.227.133.133 as permitted sender)
	receiver=protection.outlook.com; 
	client-ip=220.227.133.133; helo=mxchn-out1.nestgroup.net;
Received: from mxchn-out1.nestgroup.net (220.227.133.133) by
	BO1IND01FT004.mail.protection.outlook.com (10.152.202.115) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.863.11 via
	Frontend Transport; Mon, 18 Jun 2018 08:37:46 +0000
Received: from [10.4.0.132] (port=44887 helo=webmail.nestgroup.net)
	by mxchn-out1.nestgroup.net with esmtps (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.82_1-5b7a7c0-XX)
	(envelope-from <ayana.vincent@nestgroup.net>) id 1fUpfT-0001m9-0H
	for yocto@yoctoproject.org; Mon, 18 Jun 2018 14:07:43 +0530
Received: from MBCHN01.chn.nestgroup.net ([169.254.2.109]) by
	CHNCAHT1.chn.nestgroup.net ([10.4.0.134]) with mapi id 14.03.0319.002;
	Mon, 18 Jun 2018 14:08:10 +0530
From: Ayana Vincent <ayana.vincent@nestgroup.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Build QT5 SDK statically for yocto krogoth for IMX6
Thread-Index: AdP39+2eVGBHgasFTMKsVhwRr1/EsAO57QLg
Date: Mon, 18 Jun 2018 08:38:10 +0000
Message-ID: <89DA79CB3177AB468D716C07B29FBB378204345A@MBCHN01.chn.nestgroup.net>
References: <89DA79CB3177AB468D716C07B29FBB378203E8D0@MBCHN01.chn.nestgroup.net>
In-Reply-To: <89DA79CB3177AB468D716C07B29FBB378203E8D0@MBCHN01.chn.nestgroup.net>
Accept-Language: en-IN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.18.2.42]
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:220.227.133.133; IPV:CAL; CTRY:IN; EFV:NLI;
	SFV:NSPM;
	SFS:(10019020)(39380400002)(39850400004)(376002)(396003)(346002)(2980300002)(438002)(189003)(199004)(7696005)(486006)(426003)(102836004)(44832011)(76176011)(446003)(11346002)(5640700003)(186003)(54896002)(6306002)(2920100001)(476003)(126002)(106466001)(55016002)(26005)(16586007)(2351001)(77096007)(2900100001)(316002)(336012)(413944005)(86362001)(106002)(33656002)(59450400001)(14454004)(246002)(356003)(6916009)(7736002)(71366001)(7636002)(26826003)(478600001)(2501003)(7596002)(260700001)(8676002)(5890100001)(8936002)(3846002)(1730700003)(2906002)(6116002)(55846006)(84326002)(5660300001)(790700001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:MA1PR0101MB2024;
	H:mxchn-out1.nestgroup.net; FPR:; SPF:Pass; LANG:en;
	PTR:mxchn-out1.nestgroup.net; MX:1; A:1; 
X-Microsoft-Exchange-Diagnostics: 1; BO1IND01FT004;
	1:FK1ADyWPA63B82scOeIbG81ACESGbHIfFbgg6bd+HOSfFcywQkk4Ybn7FvekTk1faZB3pCpnVBjpGyA2CtwSkHgdem2AHwCEn6pDrNRJYmC0d6bnxtKIxWGGa8UfeaHx
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1841787b-bbad-48c9-9e89-08d5d4f6c464
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(4534165)(4627221)(201703031133081)(201702281549075)(5600026)(711020)(4608076)(2017052603328)(7153060)(7193020);
	SRVR:MA1PR0101MB2024; 
X-Microsoft-Exchange-Diagnostics: 1; MA1PR0101MB2024;
	3:xy8YQVYPq9VzyY4cnTcFae0UBr86+ElP5S/2iJpjA2bxq+LCFI+7ty7E5LJqhOrukAwbGWmRGx0YEFjrmUFT7oSrM/tb1VJFW/0YcufT8IIwYtozwHDn7f39VcKY6MWGv4MeaktlwUWMiyQIzUQ7v6flpoy+a0hl6PpW2ihJGeTmved9iVZcDc8XtgzXSpTfKHMk/o9eov8nyIA+QGO1GG3CeOFa3DUB1O/TGBcxcePxcefG706K5KCR7xaQYqcjMbhu+6vS/GpsBbejU49stwBs9P0ktqv0/cQ7CdKXR832nVqBFQIZbVIx18w5QA2jPjiYw3fXH1sBWB8Qi4P5uBeQARc617TzBJiBDTQdIKo=;
	25:XowjNFtMmxeHchuYlK7vXJrAJ5iIKpd7W5UqqwBdbJPJFxDjDS9H42BH+Y+R9V5zC2K5yPwlyUCPVcGeVdY7Ee/oygfOI7yfiZgRfJUslvRhc7+sxh/nBZRyZdsdUXFi/zTt/OzrEf0ImyEgyY8Plj7pfjCwBJrRCrcIxHbQXyOELBbYvnJyj2nGkhRceb0ULYtOergkXnNZw1oye9LuuChPiXr53xlYOGsxvAtfFT7stSDsKlOtVploYQ4qCbUCMLGOMk7rpHQpU4yP/Pa/XDZxbCCYBJElNi+62DfDg9SRaHZIm5jsxdsRTFAHEVa7dE2VKBN54bMtnHT5WX+SGQ==
X-MS-TrafficTypeDiagnostic: MA1PR0101MB2024:
X-Microsoft-Exchange-Diagnostics: 1; MA1PR0101MB2024;
	31:2L38fnpM8f48j+14DPBTY3lxq7xZ1OziSaXNCo3g/017fb+Vf0yzX6C7j446aAjD0qu1WLgPQRwJvU6kM5DZDA9sJk1sBU27t/5NVAFKR1SGKRbf0B/IzVKpFoD/FdSLytseQIkkYghpce0xa02O78s4gBlhS7ivrfS5IHZXqW5sLKxaBrD1uuqnzv3Ik9EkvGuumjlyiJqZdxQduV/iGKAJsUvc+xMUexTWec6mvz8=;
	20:+X59PS2+8NABYBeoz00o3oApwdyXeG6xJWU0omNGIg9m0+HgBf3dkhSCx2wkdZs0fZhRpgBXGj/zGSQuHHKFBHQmbZhKl1bO+1hTlD1+gUmQRhMG/4eAf4DCTn6+2wtkgdiX1yix9eW6qM762Q8Jo+rEPk4XvutPYj5QqiNIJ9c47TiO6VmeyG65i3viLNBWbNUQMQnCf6xx1h9Pv1xFOAtdRhzSD4+BLgaJxATH8xPYrBjgCIA1IZ+LD/SRJM5mcL0WJvsQbJc1gniq8gY+66ATxP/MtiqG+8msLkZFSxfoh7bdYcAOutZwC/ioRT1pBYE8m7XQGZWEeMTe+WTFBOb5JQLm5hDwr3QbxZXynB7kEsYYbGtYRsOMfixzhmanmDhNO2IV5FtKHbaCWoKGrkKssMvvK+0gkG88NUbPe27LOBDcGsD/4yKrUuZgTre8y1gZQDCOisVMOxSHLxMimyaK8aSeWcwtdqZx8raKgke/R+dgfd0UHO4KBOxOzax6
X-Microsoft-Antispam-PRVS: <MA1PR0101MB2024B7BA88DE2ACB1DEF0474ED710@MA1PR0101MB2024.INDPRD01.PROD.OUTLOOK.COM>
X-Exchange-Antispam-Report-Test: UriScan:(28532068793085)(21748063052155);
X-MS-Exchange-SenderADCheck: 1
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(10201501046)(3002001)(93006095)(93004095)(3231254)(944501410)(52105095)(149027)(150027)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(20161123562045)(20161123558120)(20161123564045)(6072148)(201708071742011)(7699016);
	SRVR:MA1PR0101MB2024; BCL:0; PCL:0; RULEID:;
	SRVR:MA1PR0101MB2024; 
X-Microsoft-Exchange-Diagnostics: 1; MA1PR0101MB2024;
	4:m7d8ErYSbaaCzOGqumNtdIoxeqbJFAtCUrta6jdxEeNdWsbA32whxNEPbSKu1nrEqgHSCkzBqI3Suf7fKi6v1BWztDpSfCIWwXEw6WVfM2NMatfUaNtm8Chz0O4Ru4MAhR5GxABp+Q7DXdwL/mJ4F2mJIoCVyjAoMaw98LVNsyLMVube5Eb3CJDvK611aczOHuLreRp1zqGD2OHcumAWFIMToW/Lnc1vSpjjqUmzp7XuTbqCfLxpdk8BGs/nCSWaBJwUn1RIs4R9rOphuvaGy7SvIwzghnH0f/22Cyt/enVXoPNkH2rzAfF5gKpzbSPrAHAKQ0sBkbbESn+H9NZsoGVn62dzh78KMx2Ab8KWsU0=
X-Forefront-PRVS: 0707248B64
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; MA1PR0101MB2024;
	23:1YFXxJTND9SJB3WmUIgK1psYTYN2rdRUwmadp0U?=
	=?us-ascii?Q?+Sux0YQmTxK29RMGObyc7BKvlpcC2JAIj+UpxJunhkgNACtVy5uVcNCeEpnz?=
	=?us-ascii?Q?SEGAtWqVVkGt/zfln9IxGMRzZOo+20aIGEEILTNb518KMDckVJu+6az1ZTeW?=
	=?us-ascii?Q?JWK3W4EgEUY5ZGJxMkhJxWAmBysRDEcQEVYY6g/zc7olLSzChwBs9zvIyhba?=
	=?us-ascii?Q?xLY0sKjNff9nYmWzvNyXpK1e024nJacs1AiWyn7vbcgz2imLpJIw8yqHSgSt?=
	=?us-ascii?Q?QCv9HnXbcSX8AL16o8AN+JRWWQTlW4oEC/QcBQ70q1dIbSVrXrnUMmE9xrWO?=
	=?us-ascii?Q?babP8i68X6f8dt43N2YSvaPVwpEjKpUm+x55+TQ74TcUyfsbyBJmEKEsfZMI?=
	=?us-ascii?Q?13HiiBCju0D7WS5YGl87yTQH6oYkKryd5UXjgqmRu3xCKXC3g5NuCrVY6z2r?=
	=?us-ascii?Q?9JeEz6clBH4675a1J0eoZDnkKIqHo0bGLoySleVERKw5Dh+bDz6oDZz0e1kC?=
	=?us-ascii?Q?UtOgICBXcPv7OlZ14gj/3yTjBtcGo3sHAh0pOisUojEfHNXSlzBFrIAJO7b4?=
	=?us-ascii?Q?dBmVrFWL1Hphj0CDRw6gZGYqfETLnZC0eDi3H1W5KWFcTGrqAdryhRudw3Sp?=
	=?us-ascii?Q?UooEu9SjNDrprrpz+QSxuI8jmtSvQfgoxKPkloqNMiTCiQkzZS2j38+CqfjW?=
	=?us-ascii?Q?5Du9JGsTl4JudNOqhSlYwK6veTL1iPWWCrypOZ6qzAXeBc5ShM0SyR33jyQL?=
	=?us-ascii?Q?5/Vawqy3ekhd4VfyeJURDEt2sJx3cpfQ48oxSKapmzG8Adq1h2toxwNCjPHC?=
	=?us-ascii?Q?T4L7PBbxYRk4WOCOqGNKbo0huNnHlF9+JK93ANnP/IV9/QwMJySs55Ock16Y?=
	=?us-ascii?Q?H9nIvLqWgTHVslRfO0AY5Fx1CFVEYRU6hZ+97TQ98pmpGr/HBm2Sjoa/r7JP?=
	=?us-ascii?Q?OubdDZ0B+EbPGMnLHpRKtp67I/KjPD2Ei98wDsA7MNiMElmg3zi2J/g6vbfP?=
	=?us-ascii?Q?mX/QClkR9OqKPOBsZDlEj+IB0q1X1Le6El7PpECyXTIEuDt5x7t7qXO+2/u6?=
	=?us-ascii?Q?FQ1pUYVSFgEo8QaP2ylF42Ed3bJjFuzbd5hSU55w4kw+V8jgwQGUFFNUS8hE?=
	=?us-ascii?Q?9Frzvl3lXr6bNr84HVBj8XjdzD+jJeWtpAeQVJcFi/he0r+qPe45rNprDLIW?=
	=?us-ascii?Q?R+2B0geNXCZ8UzSNKCIZvJKqmmz25qoDCjoaU1vn6T3tp5OXk8jBqft2mqMI?=
	=?us-ascii?Q?Xd7yhKSrpg+/G/OUbHP+SfsVaOyMk4RLEqjuVnEPsTFiuilVIoUnw/q1HhWT?=
	=?us-ascii?Q?FyF3WOyRQHP8ImvT5Xyxi04zhDsWrNw3PFKpTShaAHRyHJU2j/2ZRe+t1Ygl?=
	=?us-ascii?Q?40BCpfw=3D=3D?=
X-Microsoft-Antispam-Message-Info: D/VaimNCOInrk4crGphaK1ASUVfLIzutxCsAR28y9QushWVBoUHic8HIlWevqaBEDb8C7suSIMIHnHkQFjnafUq0pHeXuGDhRu9M6W8Ny6s9S77f9s4MUV2zkqmU5N1nG0UW4QPljXVwaPC/tlSV6CUSCa0lB+mQc9ayxT4WyEXHOEumYE3/9Bc9hpbROmQ0fm1X7NxHcRAMK75NWd7yh4oDZpWiVWvJqKR7158n43kheH0atmRxQRiLI0D2Ov6nUCtymFAWVcmuRiXYm/wKShG5bUXHsI1QvxXqVODjXE0JJCr8FAmfw108u3LhOY4n
X-Microsoft-Exchange-Diagnostics: 1; MA1PR0101MB2024;
	6:S/FjVXI4c++84URhfIW5aMM+555SGdXUv7n/bqSdJCuqB5uM5g1yKd4cUssozNChDZ6DAHI4aExZmo4EiyrfruVWkiLO/2r6WrT8EIKRaOdv8BXWajLZuAqKaScQm30CDB9DbBYGacQikBDl2YtEe825MAtNemPKI29QwBEVJ8m4AzxYWpj9WNZvVvY+Wqyg6Y5XMr7E+gD81/JSGgbEoWu0hgvTO0TYVKXoJNzB2yNvnFYZYflkzlegZ3Sf/1VerJxCNeHyq12HTYT3cWrOKZ8YCrX3nlj9OqFP7tEaIGXU0L+pkjfNwqBE7MyOcvurhe1B7YPXVH0j9X1cI0FsG3v1mBdieBx6jdoiYDQGc8z4UN0rZ0VzTrQrp0uxzvTNikF/kCcqnhf6Y8xZurZzPXpZoK8pAln6yHf+5oGMCdRIfOF6Q7sukI/SgbhqKetiZnUeWCYnxhQacc5foBezUg==;
	5:fjTdjxMJx3wZpDf/rFa1fmPj7CT2hyncxeUy8HQeJPeEbIuLlbb/L3csVeqObRdP5e5Bt92/vRe+9O+fvQYL9ykroSGKcAt32yFb678xdxe2OT7L6vytJ2U1SP71TrF+P4vMjuYKmuyiu2dJesE5Fp7B5kqdD13wuG4iXQcmHE4=;
	24:dD8bFgHbhhpZ60HvtEPJETlQSRxd2Onkj6M1jCbcsIxiFtsnIkyJ7ptEa2a/p7D9cmEgCT7c1u7YVJ7aS4sYiB2wXgu/WpyyZv5cqh1xHQk=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; MA1PR0101MB2024;
	7:a5+is8aXd9N7aRXd9prOXUJKYRrRpB+spp72D9juEZ+RcjiWQMCW8MOtpjUnb32UpqR8B4SQwpzxtxR3o+jDXLMLET0LnCGaklPiQYwm4p0/nyAI3pfFWbC4CrnZFpBEOB/hoXbRwlhBJ3unN9HcKJY6FfTqB5chVcO5UbohwomdhmGxkvMI1kDC/bXmAaVpMOVSgSn5I2HysUaK7mKIVq2Lt4YY9Vhds4xCfT38k+EzbIWHPOhcva6w6VKPy+JX
X-OriginatorOrg: nestgroup.net
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2018 08:37:46.2577 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1841787b-bbad-48c9-9e89-08d5d4f6c464
X-MS-Exchange-CrossTenant-Id: 413238b0-a7ed-471d-b1a9-615aa47d504c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=413238b0-a7ed-471d-b1a9-615aa47d504c;
	Ip=[220.227.133.133]; Helo=[mxchn-out1.nestgroup.net]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR0101MB2024
Subject: Build QT5 SDK statically for yocto krogoth for IMX6
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
X-List-Received-Date: Mon, 18 Jun 2018 08:53:35 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_89DA79CB3177AB468D716C07B29FBB378204345AMBCHN01chnnestg_"

--_000_89DA79CB3177AB468D716C07B29FBB378204345AMBCHN01chnnestg_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Dear Sir,

I am using IMX6 sabre auto board and yocto build version is Krogoth.
I would like to link QT libraries statically.

1.       How can we build QT SDK statically in yocto build.

Regards,
Ayana Vincent

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

--_000_89DA79CB3177AB468D716C07B29FBB378204345AMBCHN01chnnestg_
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
p
	{mso-style-priority:99;
	margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:454762851;
	mso-list-type:hybrid;
	mso-list-template-ids:372281684 67698703 67698713 67698715 67698703 676987=
13 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Dear Sir,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am using IMX6 sabre auto board and yocto build ver=
sion is Krogoth.<o:p></o:p></p>
<p class=3D"MsoNormal">I would like to link QT libraries statically.<o:p></=
o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">1.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span><![endif]>How can we build QT SDK statically in yocto build.<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Ayana Vincent<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,&quot;serif&quot;"><o:p>&nbsp;</o:p></span></p>
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

--_000_89DA79CB3177AB468D716C07B29FBB378204345AMBCHN01chnnestg_--
