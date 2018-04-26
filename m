Return-Path: <Nishina.Pervin@nestgroup.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06734E00BFB; Thu, 26 Apr 2018 00:31:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.100.136 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from IND01-MA1-obe.outbound.protection.outlook.com
	(mail-ma1ind01on0136.outbound.protection.outlook.com
	[104.47.100.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C00EBE00C50
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2018 00:30:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=NESTGROUP.onmicrosoft.com; s=selector1-nestgroup-net;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=C2f7CoaF8GopdB5NiWQVuia1Q7npJ+/j4xemuXZn2E8=;
	b=rWvjoRdl54j+i1JKfuDleD+XVcqpEG8PgS8yn0WS2+IhF7y/tM6UsUxQsfvpItr5BdYuemQeAAB3LuH3CheEymTVSwauqcHjcP3Gv6eERZAQ1NiWfvc9VYy7YCbk8yyE2y2LhDb5RM6nHzNHUrR04rty35ctXw+YtNjB1d09Tlo=
Received: from BM1PR01CA0073.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:1::13)
	by MA1PR0101MB2024.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:30::18)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.696.13;
	Thu, 26 Apr 2018 07:15:21 +0000
Received: from BO1IND01FT008.eop-IND01.prod.protection.outlook.com
	(2a01:111:f400:7ea5::209) by BM1PR01CA0073.outlook.office365.com
	(2603:1096:b00:1::13) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.696.13 via
	Frontend Transport; Thu, 26 Apr 2018 07:15:21 +0000
Authentication-Results: spf=fail (sender IP is 121.241.182.131)
	smtp.mailfrom=nestgroup.net; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=nestgroup.net;
Received-SPF: Fail (protection.outlook.com: domain of nestgroup.net does not
	designate 121.241.182.131 as permitted sender)
	receiver=protection.outlook.com; client-ip=121.241.182.131;
	helo=mx-03.nestgroup.net;
Received: from mx-03.nestgroup.net (121.241.182.131) by
	BO1IND01FT008.mail.protection.outlook.com (10.152.202.71) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.20.696.11 via Frontend Transport; Thu, 26 Apr 2018 07:15:20 +0000
Received: from [10.4.0.133] (port=53403 helo=webmail.nestgroup.net)
	by mx-03.nestgroup.net with esmtps
	(TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256) (Exim 4.82_1-5b7a7c0-XX)
	(envelope-from <Nishina.Pervin@nestgroup.net>) id 1fBb7d-00052E-0h
	for yocto@yoctoproject.org; Thu, 26 Apr 2018 12:45:17 +0530
Received: from MBCHN01.chn.nestgroup.net ([169.254.2.109]) by
	CHNFE2.chn.nestgroup.net ([::1]) with mapi id 14.03.0319.002;
	Thu, 26 Apr 2018 12:45:16 +0530
From: "Nishina A. Pervin" <Nishina.Pervin@nestgroup.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Weston Failure 
Thread-Index: AdPdLkwW4evcMSkGStyiFaEDr39KbQ==
Date: Thu, 26 Apr 2018 07:15:16 +0000
Message-ID: <E3DACD6AA0B26143AF16244886B5278E1FE92EB1@MBCHN01.chn.nestgroup.net>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.18.0.177]
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:121.241.182.131; IPV:CAL; SCL:-1; CTRY:IN;
	EFV:NLI; SFV:NSPM;
	SFS:(10019020)(39860400002)(346002)(39380400002)(376002)(396003)(2980300002)(1109001)(1110001)(339900001)(199004)(189003)(53474002)(377424004)(53386004)(336012)(966005)(6306002)(55016002)(54896002)(5640700003)(236005)(106002)(16586007)(102836004)(2920100001)(33656002)(316002)(71366001)(2900100001)(8936002)(59450400001)(7696005)(587094005)(7596002)(2501003)(5660300001)(7736002)(7636002)(85426001)(6116002)(7116003)(260700001)(5890100001)(790700001)(84326002)(106466001)(2351001)(2906002)(356003)(246002)(26826003)(3480700004)(6916009)(55846006)(9326002)(186003)(476003)(72206003)(8676002)(86362001)(478600001)(126002)(4743002)(1730700003)(486006)(606006)(26005)(3846002)(77096007)(426003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:MA1PR0101MB2024;
	H:mx-03.nestgroup.net; FPR:; SPF:Fail; LANG:en;
	PTR:mx-03.nestgroup.net; A:1; MX:1; 
X-Microsoft-Exchange-Diagnostics: 1; BO1IND01FT008;
	1:Qju1MzYIxqQwIthjuDRivRK4vUs+7r00iw05g/WxHfnwao5WN093SQjOliae2+GhKuu+s3/TgAy27bYWttYqq2bhJZ9gyVeQUSam/7iEwgds7I3Dq3qnsmrCndRc0WAZ
X-MS-PublicTrafficType: Email
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(5600026)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);
	SRVR:MA1PR0101MB2024; 
X-Microsoft-Exchange-Diagnostics: 1; MA1PR0101MB2024;
	3:WqYBJgaFYB0cfj/OoiHfkwk8Kw8pwsi+6nVWvx1E/+t22lwC3OoY862tDzpYYtuMnM+6QN0bTQGa3RxzQ+5zVMO4W+g5/W2TCsfuSz+eCG624AVZFV5n1mYLzBDjV/z35XI0SUUZl69SDavqJWumqwcLHx5dFCJDlfbJz8vy3CBi5Ka3nHeveyZdZS+RuCqEQ1O1G5GLe6RQSJE63GpZE6VXoj5x6xhYNofVozaXCdtxBsuZHtBHK9/m/YiS7u5M/7RCmac0b+S+YJ+zUT6qPA68IBzoHdkogMAS+L+FqFrfFdVxvRbuKzaGQCcyQuC7JLtm6zgldYe9+rqQKmDdN8psWVggYXxWd49q/jUqQRQ=;
	25:TaitpfCePXYjSnbbxIVqUOc3lplfZlB03Fy70/TrvtA0P1s1w/9pkj5ct0bJe6NiSVux88uVqn95ZfwVD+lWAiRucNtnUDOrpCqhHy5pWVVBQXPgtPqDsDFBJzl52zGfPJskLdpke8605PIbJTNnoeDwCUjoL7hz9pJinFpbB2N2HtrSw36MfdSN+lrMjzXT9nF/3TlDTPzhVkk3Vxmazjm8+tsyGOJLw1/rPxKUTHBuXF4oox8Fh/57fdNbTTXJ8xZwx0Zq/DU7jNsae+2m4DyCtTIUTYqNMLNzeLpETFwN1O9T4OzI8btX5/FdPpDU+qvodO7/F16aeq54ZkAIgw==
X-MS-TrafficTypeDiagnostic: MA1PR0101MB2024:
X-Microsoft-Exchange-Diagnostics: 1; MA1PR0101MB2024;
	31:Kcid/Htw7NdpqXCZel5OfltG9oDZr62ZlCNJNR0CJapVnv2DFbalxNblXJpzm+seK4G1fmCShwL9a6Cz4E8SbVWZXuZqvE5AJZo4uSChpiyvNEZIclYQQSWjDBIBDYX7FPEzaXT1rkXzT+dBYj78T0cf8xEBBUzNlmvfzsWEBK5LRlIAu3jPk0QGaLuOh7vx9IxxqCHKdoU/1czOguoMOudfpstnvh88QIONVRO26as=;
	20:Y7YhLUu207BEK+k9vVcHpYjZ6+KBJocyhMFXFOAAKGR+xouTA69lVR5WC0Hhw8r9yi6t8eBpQvnHyX/c/JFfaQBVzFBCcbdXEHuO6GNqKZCngKLLxPhBmtsXKP0DxPQ7d0Jsw/65ZaT+a+eFw4fpyOr6fsy2Si+SbW+ybAdAK9LIRUCOnSczzk+fa7hawGNAOoDSk7cXmzxIZQVcgS6vET9jK/zW824bbPeTQiaHLmyLyFfLtw5KIheCgwgSjXhs8u0CUPAGdtQKSJN8F3tqtnwDcdAVnP4gGXgiCNcGQ0N9INEkb1FCS+OX8gg1F09ayN7PyA+ktapgNPBskjXVtUL/aTCgwuzmJE4yL3OiGGOysk2AtVsVno5v4mUGrLIiSN5ilTtINbOuwP+BpIqNf5zadAPB6XZvMVdvp3x6CUzB/Pdq6Ww3vwo/t8Bg2UEI0pYMjAHBXFhqx8oslygTG/iWqjFdera/0shfTTL1Ryr2JcRDQtXN5jcWrdTW441t
X-Microsoft-Antispam-PRVS: <MA1PR0101MB2024B7C4D7E0934F01233AAD9A8E0@MA1PR0101MB2024.INDPRD01.PROD.OUTLOOK.COM>
X-Exchange-Antispam-Report-Test: UriScan:(28532068793085)(20558992708506)(21748063052155); 
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(3002001)(3231232)(944501410)(52105095)(93006095)(93001095)(10201501046)(6041310)(20161123564045)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123558120)(20161123562045)(6072148)(201708071742011);
	SRVR:MA1PR0101MB2024; BCL:0; PCL:0; RULEID:;
	SRVR:MA1PR0101MB2024; 
X-Microsoft-Exchange-Diagnostics: 1; MA1PR0101MB2024;
	4:Miezsd1RzxIcwvc3lP1oYxycjqvD6XO87xxTmW8mxS0P1gZrW2MWFgUdvJ+D/ejI0MsG/9fsI0DdEILpde9L48cwYyutK/T1cHAeNXgwh3A8qCgl6ikfzMVJdYwXyCoaVpv88pRwmL0kg71AUeqUuHKQtDyi/ABW4UPVov++osImIS2QosDYZ/VYrmPn7RH9YszI/+fydVor3a2c2L10TABZWYOkmGkcZrd2SPE0NW6aGVZQcaGF/57uzeAemLXnnkYP8qNW2ftBRriKRbN8hhx2D2qGkRuULCPS7MHCH5JqAGKhjGZVqF8qifYM/cyUTHFQhTdXFieHlMLZtBnctwMUFn7bCy1zkfdEviVyk6mkfOy2R1KSwrT+8gk5yJwn
X-Forefront-PRVS: 0654257CF5
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; MA1PR0101MB2024;
	23:pTfDzBu+09Iw3hLT2GG0KThWhB5ja4GVyXTzYBR?=
	=?us-ascii?Q?sxvt9ioxC9r4K3xBbRbCDW7+4nfvkwXpFvtUP+tlJezASgmOSsr5Hj2JUi3s?=
	=?us-ascii?Q?gVcAX7g+EjjZ3hSRTwfvXrmugvpnScQlk5+pEXd8o1ZbR1rQWSynPkEFk5+N?=
	=?us-ascii?Q?jf3xuAJ6lA+By/Ew2VcCjT6KrskYJq3IsAXl5aLXqouAHNQyuRtWrFLudQGw?=
	=?us-ascii?Q?EaJCy1I8/pjJQYJWeFNMxSCoMCyPwaj8nkYX8zhca3hnsied69d/+ekMXoFW?=
	=?us-ascii?Q?TF7R9gZ+k7hNzhMzFYviK8k31bk3dVL8gf/wCrXo0I6/kCj4WVsfjzYpyNO0?=
	=?us-ascii?Q?YlIN1y2WfSu0CGjfLcJ72AmgQz7zEUMpYwpXRbbkjZkmQzLRRzp4KZDN5tD9?=
	=?us-ascii?Q?9ftGtc9lqp/WYhlpG2HObreVVZZoReFa/4ewbqWpBHhGLDqyMFsUTKaaqw1p?=
	=?us-ascii?Q?bLOLVyay9Ml3Y6Qqo8LKtvCtwqSMhI+h1NvA0zcz9H8aur5zuefcAZzwzmKH?=
	=?us-ascii?Q?WOk+fL1i43YygICq5GG72Cai/U1qL5a5QoWMTaTleAALAfn4KBwllBdMG4xb?=
	=?us-ascii?Q?niOjgz9UgdxUhhwBLxc/Z6lF0rGHB/iXVtICxGwH12Lim/oPxWXxUEJMryaY?=
	=?us-ascii?Q?qHDP8m/uLAeIVeI0Tvai0/W7U8iF7MzdrGSZCEPZwz/A6wuYkU8VcsDgPk21?=
	=?us-ascii?Q?5CeQEGEmksuDcch+TDubYAFzEsWHksovP6BkMqt2wDqU/vX14Nbk9pHOhex2?=
	=?us-ascii?Q?ddA9SegvTSiV6YiQq9b2kd2Ch3hsWEUi3Koo3aSZKro4JhbK/y+A6HoJaHUn?=
	=?us-ascii?Q?pWEMkQero2MgXPNU546DV3UFGV6oGbBtbiX9yB7TXGmL0tR8Xd+Q29GdMqlG?=
	=?us-ascii?Q?gjgG/k9H5Nl4+BFW3A1H4i1dspI1oibyIAT0KtCWGJP51wWid8HteTpIxC0u?=
	=?us-ascii?Q?pzoiw4/0fKf0OAYZ3sgqMh+OBzGqVEuvitfjBBsM61/y1HEHqvySfHBKPrGv?=
	=?us-ascii?Q?voh9pnHampnuOBBojB+Ax9TwwaZyNZzyMmGuaMpUMSXY4juYB5vRDMOpFTRo?=
	=?us-ascii?Q?fivxvUIzzo+KdNzfdIvry2WvonmcPg3fBpByDZ9neQg94Ad5TObiMViuc62J?=
	=?us-ascii?Q?kNiJyod9RyICP/BRzs/bXeVV9VGfK6yWSCXMMAuoz9VfQkpQAq/VvGIxme38?=
	=?us-ascii?Q?hcFrPSujqlz/9gsBJBEdR4hG4CZpURsTK58owWf3qdEnrofc9FJD1qJDQxL7?=
	=?us-ascii?Q?ZCbinT9CGMPLVl1639P1wFYUlDSSlx2yOPReMJwuo7MwwN0SJj6E4ojdonGX?=
	=?us-ascii?Q?Mx+D6y0R8dp4SsAA+GYceMUBUfuPaVFRbYy0+g0pObowT3tF0/bWXWenOv75?=
	=?us-ascii?Q?0xt27uVjyQyFIriYUZkDJzEq+BBQbjVj5Z3zl/99VidtrK50awcjodluglr5?=
	=?us-ascii?Q?GAjBu9ohgqcZnNVk/rYlEvLY4EJokZX1USuXgx9iapWbVIeu2qIllMJapm5d?=
	=?us-ascii?Q?Bn9yhZZMjOzs99e8WnB9dGYFYYeAzA0UETT5kjSRq2F8mnqBTWZTCHp+X2Fx?=
	=?us-ascii?Q?TwGDkExMNJaWPYKEHnQ=3D=3D?=
X-Microsoft-Antispam-Message-Info: Mu8O7II/8T6M1CYvejHyC7fA+2J192jbQlXJcIoAe4XiViwFkucDTfEvk/bi/E2lfFgBjvRDXH4Q5PFTCb+53sko1vBU1xEWsaXqVfVqRi4byiCaaZ2gO0bRtlEACSaI4A/wbZKKD6mq2f7prX/GhMeac5k+IaE8+VzbeydJBc+0O8XsFwAxymVhV+xIeqH1yx2gSMRPt0I0ZhQ8233SVZRZmRF9a0pVKRkz6TssmAG2DsUF6Eb7f01qlt2ECgHEeWrgOYwFpFfUlCQzFkSCkD1OuNHLyPspMAA96zdI7MBlbE0UQ7nKF46qnTLPlS5yh5rKc5Z0FCx/0K+5Quk1uISSnGUZ7m0G5TBpuA6J8dOpnKapwIzTU7+UWYhdGn/xVGh833Usng+R5pP9+cLWcowJucKuHu9GG5n5DiEKMyE=
X-Microsoft-Exchange-Diagnostics: 1; MA1PR0101MB2024;
	6:nWy08DHawAjaYZ5IODaqPE4AiVG9ZiPpICPVI61L4ewa2L0Lpqr/7NVhymIY05lDNN1eKbfHMtAdDIgX/tu0Mavo1OZ3K8F3cPlM0iNc0ugKQCVQ3aVTnjO3t+UxeEn4tb4z+OIPRzPmvneO9szcuZKU/fiOtUAwCgoMcp0R2qTYDmKlFSJVnqx2fmvydFw2llNmDu3C7fIBBD8yOJFFQ/SiVn1cJJdrReb5Hb0aShV872xfVLWTM6y5SSXuzZDfOCRVEn5ijr3yIU9xKax+E1XwsYqe2XqBfT5sILnUUOqo0sSgKq0Yhotu2niQ0lluNB6rTEowPIoXTf1+U7zHIQu3ZGv3dAN5RtHoNqHLeu9gqP9vJONFR3WiraQK/ajCL+M8559Y8xq1dZClHAbkNq9mGSkQLsA00j+WvZJ+sBi6djNaGd6azwzKDvbItgGmOBsQSAwgDIykfYludxcUzrFlGK+gcCps9bchlRIrH5vVCU0LC9yRn5xnPUniW8Up;
	5:lxsONENu1nru309XCvKeNyEdg0rzTOXQoL4efQGpNJFbNmjhzbsgSmv6q5KWe/2zcFKLwG2ZrZ2dK6OxCMOlNOg9z3KHG4xHKBwfkR7GeoGYxADm5GaVkmxZPDNzuxXEkh7GzAIma56Bf8VvE8cN5xgtibQ810zgEtD0astYelw=;
	24:2ndhXDnc+PPRzVuTVWRUez977JMhkuaS7BIyTaoCy0haH6N2hT5u65htB5NsRfVNNu/78Iz/rzfLpK0zeGk8GrHEzpmov7GdCkf3QqlTyxU=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; MA1PR0101MB2024;
	7:Hqq0tJRbBx+iZ7PlQRMCrHsXNzfKFz2oDC7R2yCdzZwsU+2vHVHs0AMlvDBtuttSz/RugwpXBPwqtqhdadHd1cjCzkUADXHiO1da+nyzpmlYAuprIug44MtzMZef0bq5klZ8TLZf8jfzyYe5KWfiC2Q5HbLVFR9WmlzLIjWqdjicZ/E6ATizlUrjtBxawfFUwfJDvobpH3dA8BWPehssJy7V/ALUykFr2gGutIHla3q+j5NV/bgOwRfJocy4dmYp
X-MS-Office365-Filtering-Correlation-Id: c8e6af46-f0f3-412c-5d07-08d5ab4578e9
X-OriginatorOrg: nestgroup.net
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2018 07:15:20.8070 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c8e6af46-f0f3-412c-5d07-08d5ab4578e9
X-MS-Exchange-CrossTenant-Id: 413238b0-a7ed-471d-b1a9-615aa47d504c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=413238b0-a7ed-471d-b1a9-615aa47d504c;
	Ip=[121.241.182.131]; Helo=[mx-03.nestgroup.net]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR0101MB2024
Subject: Weston Failure
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
X-List-Received-Date: Thu, 26 Apr 2018 07:31:09 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_E3DACD6AA0B26143AF16244886B5278E1FE92EB1MBCHN01chnnestg_"

--_000_E3DACD6AA0B26143AF16244886B5278E1FE92EB1MBCHN01chnnestg_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Sir ,

We are using weston (1.9.0) for loading our application on IMx6Q sabreauto =
board.
sometimes it fails to start and sometime it works after reboot or after res=
tart Weston services.
I found that there is some synchronisation issue occurred in loading wester=
n service at the boot time.
A log file (/var/log/weston.log)is mentioned in the western-start script fi=
le .
Form the log file I get the details about error like below

Date: 2018-02-09 UTC
[09:47:32.751] weston 1.9.0
               http://wayland.freedesktop.org
               Bug reports to: https://bugs.freedesktop.org/enter_bug.cgi?p=
roduct=3DWayland&component=3Dweston&version=3D1.9.0
               Build: 1.8.93-2-gb05cdb8 configure.ac: bump to version 1.9.0=
 for the official release (2015-09-21 18:11:26 -0700)
[09:47:32.752] OS: Linux, 4.1.15-rt18-2.0.0-avb-1_1_cand20170403+gb63f3f5, =
#9 SMP PREEMPT RT Wed Mar 14 12:37:25 IST 2018, armv7l
[09:47:32.754] Using config file '/home/root/.config/weston.ini'
[09:47:32.757] Loading module '/usr/lib/weston/fbdev-backend.so'
[09:47:32.981] Output repaint window is 7 ms maximum.
[09:47:32.981] initializing fbdev backend
[09:47:33.018] Loading module '/usr/lib/weston/gl-renderer.so'
[09:47:33.026] warning: either no EGL_EXT_platform_base support or specific=
 platform support; falling back to eglGetDisplay.
[09:47:33.027] failed to create display
[09:47:33.027] gl_renderer_create failed.
[09:47:33.027] fatal: failed to create compositor backend


Could you please help me to resolve this issue.


Regards
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

--_000_E3DACD6AA0B26143AF16244886B5278E1FE92EB1MBCHN01chnnestg_
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
	{font-family:"Arial Unicode MS";
	panose-1:2 11 6 4 2 2 2 2 2 4;}
@font-face
	{font-family:"\@Arial Unicode MS";
	panose-1:2 11 6 4 2 2 2 2 2 4;}
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
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"font-size:12.0pt;font-=
family:&quot;Arial Unicode MS&quot;,&quot;sans-serif&quot;">Hi Sir ,<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"font-size:12.0pt;font-=
family:&quot;Arial Unicode MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"font-size:12.0pt;font-=
family:&quot;Arial Unicode MS&quot;,&quot;sans-serif&quot;;color:black;mso-=
fareast-language:EN-IN">We are using weston (1.9.0) for loading our applica=
tion on IMx6Q sabreauto board.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"font-size:12.0pt;font-=
family:&quot;Arial Unicode MS&quot;,&quot;sans-serif&quot;;color:black">som=
etimes it fails to start and sometime it works after reboot or after restar=
t Weston services.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"font-size:12.0pt;font-=
family:&quot;Arial Unicode MS&quot;,&quot;sans-serif&quot;;color:black">I f=
ound that there is some synchronisation issue occurred in loading western s=
ervice at the boot time.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"font-size:12.0pt;font-=
family:&quot;Arial Unicode MS&quot;,&quot;sans-serif&quot;;color:black;mso-=
fareast-language:EN-IN">A log file (/var/log/weston.log)is mentioned in the=
 western-start script file .
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"font-size:12.0pt;font-=
family:&quot;Arial Unicode MS&quot;,&quot;sans-serif&quot;;color:black;mso-=
fareast-language:EN-IN">Form the log file I get the details about error lik=
e below<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"font-size:12.0pt;font-=
family:&quot;Arial Unicode MS&quot;,&quot;sans-serif&quot;;color:black;mso-=
fareast-language:EN-IN"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"font-size:12.0pt;font-=
family:&quot;Arial Unicode MS&quot;,&quot;sans-serif&quot;">Date: 2018-02-0=
9 UTC<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"font-size:12.0pt;font-=
family:&quot;Arial Unicode MS&quot;,&quot;sans-serif&quot;">[09:47:32.751] =
weston 1.9.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"font-size:12.0pt;font-=
family:&quot;Arial Unicode MS&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href=3D"http://wayland.freedesktop.org"><span style=3D"color:#0563C1">ht=
tp://wayland.freedesktop.org</span></a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"font-size:12.0pt;font-=
family:&quot;Arial Unicode MS&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bug r=
eports to:
<a href=3D"https://bugs.freedesktop.org/enter_bug.cgi?product=3DWayland&amp=
;component=3Dweston&amp;version=3D1.9.0">
<span style=3D"color:#0563C1">https://bugs.freedesktop.org/enter_bug.cgi?pr=
oduct=3DWayland&amp;component=3Dweston&amp;version=3D1.9.0</span></a><o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"font-size:12.0pt;font-=
family:&quot;Arial Unicode MS&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Build=
: 1.8.93-2-gb05cdb8 configure.ac: bump to version 1.9.0 for the official re=
lease (2015-09-21 18:11:26 -0700)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"font-size:12.0pt;font-=
family:&quot;Arial Unicode MS&quot;,&quot;sans-serif&quot;">[09:47:32.752] =
OS: Linux, 4.1.15-rt18-2.0.0-avb-1_1_cand20170403&#43;gb63f3f5, #9 SMP PREE=
MPT RT Wed Mar 14 12:37:25 IST 2018, armv7l<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"font-size:12.0pt;font-=
family:&quot;Arial Unicode MS&quot;,&quot;sans-serif&quot;">[09:47:32.754] =
Using config file '/home/root/.config/weston.ini'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"font-size:12.0pt;font-=
family:&quot;Arial Unicode MS&quot;,&quot;sans-serif&quot;">[09:47:32.757] =
Loading module '/usr/lib/weston/fbdev-backend.so'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"font-size:12.0pt;font-=
family:&quot;Arial Unicode MS&quot;,&quot;sans-serif&quot;">[09:47:32.981] =
Output repaint window is 7 ms maximum.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"font-size:12.0pt;font-=
family:&quot;Arial Unicode MS&quot;,&quot;sans-serif&quot;">[09:47:32.981] =
initializing fbdev backend<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"font-size:12.0pt;font-=
family:&quot;Arial Unicode MS&quot;,&quot;sans-serif&quot;">[09:47:33.018] =
Loading module '/usr/lib/weston/gl-renderer.so'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"font-size:12.0pt;font-=
family:&quot;Arial Unicode MS&quot;,&quot;sans-serif&quot;">[09:47:33.026] =
warning: either no EGL_EXT_platform_base support or specific platform suppo=
rt; falling back to eglGetDisplay.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"font-size:12.0pt;font-=
family:&quot;Arial Unicode MS&quot;,&quot;sans-serif&quot;">[09:47:33.027] =
failed to create display<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"font-size:12.0pt;font-=
family:&quot;Arial Unicode MS&quot;,&quot;sans-serif&quot;">[09:47:33.027] =
gl_renderer_create failed.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"font-size:12.0pt;font-=
family:&quot;Arial Unicode MS&quot;,&quot;sans-serif&quot;">[09:47:33.027] =
fatal: failed to create compositor backend<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"font-size:12.0pt;font-=
family:&quot;Arial Unicode MS&quot;,&quot;sans-serif&quot;;color:black"><o:=
p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"font-size:12.0pt;font-=
family:&quot;Arial Unicode MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"font-size:12.0pt;font-=
family:&quot;Arial Unicode MS&quot;,&quot;sans-serif&quot;">Could you pleas=
e help me to resolve this issue.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"font-size:12.0pt;font-=
family:&quot;Arial Unicode MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"font-size:12.0pt;font-=
family:&quot;Arial Unicode MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"font-size:12.0pt;font-=
family:&quot;Arial Unicode MS&quot;,&quot;sans-serif&quot;;mso-fareast-lang=
uage:EN-IN">Regards<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"font-size:12.0pt;font-=
family:&quot;Arial Unicode MS&quot;,&quot;sans-serif&quot;;mso-fareast-lang=
uage:EN-IN">Nishina<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ar=
ial Unicode MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
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

--_000_E3DACD6AA0B26143AF16244886B5278E1FE92EB1MBCHN01chnnestg_--
