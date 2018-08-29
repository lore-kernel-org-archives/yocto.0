Return-Path: <mns@gomspace.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9202AE00950; Thu, 30 Aug 2018 03:05:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [40.107.0.90 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 164766 seconds by postgrey-1.32 at yocto-www;
	Thu, 30 Aug 2018 03:05:03 PDT
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
	(mail-eopbgr00090.outbound.protection.outlook.com [40.107.0.90])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C6F1E006C7
	for <yocto@yoctoproject.org>; Thu, 30 Aug 2018 03:05:03 -0700 (PDT)
Received: from HE1PR04MB1324.eurprd04.prod.outlook.com (10.162.250.139) by
	HE1PR04MB1321.eurprd04.prod.outlook.com (10.162.250.11) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1101.14; Thu, 30 Aug 2018 02:33:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gomspace.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=eoVAW8olC5LSax26xI3y1tNn/iwzYwFjH8RhYOuIS8k=;
	b=RhF9vRAmjJ+ks+8ciJjXAS2m/zxat8VvNsOWLSGi5AhaPzvNYA0KhqDbH3F436T2dnkj1HSNwMn/ZulpeL73RUIRi74FE9S4xFVP1l7Eb33GtVNnF/5+l58juILvsXP6ylNy4QibAXbuQ0hOJ3favxcu98UPDlcELyeFFCjyXfo=
Received: from HE1PR0401CA0059.eurprd04.prod.outlook.com (2603:10a6:3:19::27)
	by HE1PR04MB1324.eurprd04.prod.outlook.com (2a01:111:e400:588a::11)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1080.18;
	Wed, 29 Aug 2018 18:23:48 +0000
Received: from HE1EUR01FT057.eop-EUR01.prod.protection.outlook.com
	(2a01:111:f400:7e1f::207) by HE1PR0401CA0059.outlook.office365.com
	(2603:10a6:3:19::27) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1080.15 via
	Frontend Transport; Wed, 29 Aug 2018 18:23:47 +0000
Authentication-Results: spf=fail (sender IP is 79.171.149.172)
	smtp.mailfrom=gomspace.com; windriver.com;
	dkim=none (message not signed)
	header.d=none; windriver.com;
	dmarc=none action=none header.from=gomspace.com; 
Received-SPF: Fail (protection.outlook.com: domain of gomspace.com does not
	designate 79.171.149.172 as permitted sender)
	receiver=protection.outlook.com; client-ip=79.171.149.172;
	helo=Ex01.gomspace.lan;
Received: from Ex01.gomspace.lan (79.171.149.172) by
	HE1EUR01FT057.mail.protection.outlook.com (10.152.0.208) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.1101.10 via Frontend Transport; Wed, 29 Aug 2018 18:23:47 +0000
Received: from Ex01.gomspace.lan (10.0.1.60) by Ex01.gomspace.lan (10.0.1.60)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1466.3;
	Wed, 29 Aug 2018 20:23:46 +0200
Received: from Ex01.gomspace.lan ([fe80::21fc:471c:6190:5f20]) by
	Ex01.gomspace.lan ([fe80::21fc:471c:6190:5f20%4]) with mapi id
	15.01.1466.003; Wed, 29 Aug 2018 20:23:46 +0200
From: Martin Siegumfeldt <mns@gomspace.com>
To: ChenQi <Qi.Chen@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Sequential generation of eSDK from with the same
	workspace fails for similar machines
Thread-Index: AQHUPqtiqAj6d2afsEinVUVggVpq2KTV0pqAgAE6hdY=
Date: Wed, 29 Aug 2018 18:23:46 +0000
Message-ID: <80e4ea6974e94e76bd64fc50adc57e72@gomspace.com>
References: <8261c343c1a643e2a3079b5d8fc458fc@gomspace.com>,
	<2ff7ed92-7fba-77b8-2966-f3f51ca5ff37@windriver.com>
In-Reply-To: <2ff7ed92-7fba-77b8-2966-f3f51ca5ff37@windriver.com>
Accept-Language: en-US, da-DK
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.63.212]
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:79.171.149.172; IPV:CAL; CTRY:DK; EFV:NLI;
	SFV:NSPM;
	SFS:(10019020)(39840400004)(396003)(136003)(376002)(346002)(2980300002)(1109001)(1110001)(339900001)(189003)(199004)(53416004)(8746002)(316002)(110136005)(8936002)(53936002)(50466002)(85426001)(2900100001)(108616005)(6246003)(69596002)(24736004)(3846002)(76176011)(305945005)(106466001)(14454004)(97736004)(6116002)(2906002)(81166006)(229853002)(47776003)(8676002)(356003)(36756003)(5660300001)(478600001)(7736002)(26826003)(105606002)(53546011)(446003)(26005)(11346002)(186003)(86362001)(102836004)(486006)(5250100002)(2616005)(14444005)(126002)(23746002)(68736007)(476003)(2501003)(336012)(81156014)(42262002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1PR04MB1324;
	H:Ex01.gomspace.lan; FPR:; SPF:Fail; LANG:en;
	PTR:InfoDomainNonexistent; MX:1; A:1; 
X-Microsoft-Exchange-Diagnostics: 1; HE1EUR01FT057;
	1:IUby7Yh2SzL6WDi0f7n1o84+1vvpyrX756Aj7cPM9YS5vfXGOA15Qnyz61ahopO7UwRbYkJxiMimEPOwMpqdq7d5wxsgQt9yGIiwygWVoTjqqFf+jXbEwin9mpa2+Ht6
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 89bf8dc5-e4e9-4c29-1eda-08d60ddc8fd6
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989137)(5600074)(711020)(4534165)(4627221)(201703031133081)(201702281549075)(8990107)(2017052603328)(7153060)(7193020);
	SRVR:HE1PR04MB1324; 
X-Microsoft-Exchange-Diagnostics: 1; HE1PR04MB1324;
	3:oZ0TmZeFWeUIWuULN+DxhgI9TX1MVtboJLtUAzDfZgfts6Nv5B4vmY5d2M1i6U6AUGXaCYFXR5XeCikNqpHlGo1Gjbm14xp8W/rxoTnkyUTOiBvRZOtPKfo4E0b5gW7XQscjWCdsCEbKl1qXXBV8u1WCNzUPZ42rSNaSEoMbPOhGpJV/fDpDkDGwcDomRqmVZNw0Tf+vzNVm1HiK7dpR62K2y07pOYrRo7bU16Oy89FSToilk040kYMhtXwAFSbI9XopDJlub85mFvhs8wt5cz9uyqgp0QmbOJRoB9Hba+TmFh65sYrH0kTUE9VF1e5sJ2Dk+CTEWwEgfg22sSh5YO79/XZre6HKeUmOIq56a9A=;
	25:k9fl6NG6eVO01YbwWu0FvE1xtgeya49wQNkl3XsgYB/HDuH9ROYHWTT2VoRoAvO4f44b9/cJEvaz5Wz1z7nLJEHE6y2OkWIwGqdJW6JWvC+r7jmYZ0JrzCkGEMh1ilo7+kszZp2rXsNJ21IyZR7S3P/s9LC+e0VNf0p5dJxmi8tetxgUtp9Z3LfHX2yAQod8h3NN4Ns0xQ2SxjLIZH9eJNKhWbAvcEeCS8s1F6G9RYDPkui1cIJlgkt7CRTM3EWqB5+3bbqixx4T+uzOpCPC2mQi43hOIkgrlMePjAR2eAzw0oqqsdxU6t8E+z1Ug17jYK+G61MoRqWnuT//hcz4Gg==
X-MS-TrafficTypeDiagnostic: HE1PR04MB1324:|HE1PR04MB1324:|HE1PR04MB1324:|HE1PR04MB1321:
X-Microsoft-Exchange-Diagnostics: 1; HE1PR04MB1324;
	31:zbPv68gSG7aGef2qtMHQvU7/EJilBdNmUYUXUDj1tN2Y9Wx/5+WSwlKiniHgxfQjfe8732KvMetcSoIPgS7GUOwc2Squ9xkwWpdOlx+Imy8l7zyUvI9e3h24JsXHfQR7V3xwuzgW8V8sOhlUD2vx9tbARaGmg6ohW4gB/ld9EOruGWvFZ75sc7+Xw02A6G23/93kiF0HWJanKzlUJObdA026QLjiY0tCRXm1J6BJHM8=;
	20:RePinKeS/1kmFNfOrJOXXi1mwFrw7U62xZw3B20NZ2g6EiMdrbfNvCOps+OcikpI1giQ9YSdIqQ/hwVTCdBXZIqkqBKipV46zesSkykN4TIIEXzKGOAcvzkpiEmE6FQAjvlcbAKAFNiYVDM435jgTPyT/i/m3ma7OAjFUUmSgX0sovfkHxPno0PrMjL67U3hT5PzW+P52uHiJ/po48HbZ/OF5gdybmjkcxmRT7MCGwyqraKSyAxI+D4N+pIbae2FS40jgS2fCNLAos0ONyWVdyzoW3SPO4l08BLVz/hqGeoVEerVZFziZT5msKqXEpVxkgZ5f0vzi/GwHTSjXKu372KM8LChbv6H9KoqMkEN3yl9gWnXRvOozeIG9TubIsELi1Uw3KzqnYIzC0EaJEwBT4lN/K69bRQhIGKBP3M224GsjRBMYPivRXQ+BH/w5jq1
X-Microsoft-Antispam-PRVS: <HE1PR04MB1324747DA97AFC0EFE8935E1C4090@HE1PR04MB1324.eurprd04.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-MS-Exchange-SenderADCheck: 1
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(10201501046)(3002001)(93006095)(93001095)(3231311)(944501410)(52105095)(149027)(150027)(6041310)(20161123560045)(20161123558120)(20161123564045)(20161123562045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(201708071742011)(7699016);
	SRVR:HE1PR04MB1324; BCL:0; PCL:0; RULEID:; SRVR:HE1PR04MB1324; 
X-Microsoft-Exchange-Diagnostics: 1; HE1PR04MB1324;
	4:PvwIe+uv7jXViirhge4l33ObTwT9b7rykfrzs7LGFSrhkax/bfwFUCMkETUGorIlON/nCWz/a5OrFTh8v7RMBeVBstGWWs3HWlASX7WEAh67VCWVjAd7jSsuHLdsAcCB4+U4VA+6mDHipuhq0+ngNq0ctA4oypFh3rChmz8V8s34N9wORneCUYz5VF0oGQCL8+AAW4P3A5N+dZW3KZ/w2PtTRNbB5fVVHa9Fe1gv8EjTXR4jC7lTzj6YWrIw0/4dy727nrk/ekA5OIPGAbhjwA==
X-Forefront-PRVS: 077929D941
X-Microsoft-Exchange-Diagnostics: =?Windows-1252?Q?1; HE1PR04MB1324;
	23:fO4eZvoEImDszct1MQhEQOEIAW/+ycC65dF0h?=
	=?Windows-1252?Q?tsN/dE6FxvFCzituzC0HfgW50DpUwllfQM3LYCD8v6s0P3Z2LZSfE5k9?=
	=?Windows-1252?Q?xR4eYA7LnVc7YhWil+CLYUYROUDSI6fmkl4P0FZoC5FLSbb+2UlUyLAV?=
	=?Windows-1252?Q?Cu0F9l+pYKw4IHlv9zMJU+As0x1KyO68lMqTBkBn/OOYxXREOZm+qcaF?=
	=?Windows-1252?Q?l2TT1iJdaSm3fcPJrIm96BOnSerJNFBK+GY9yN+z4tPPUDVJZVdvz1NF?=
	=?Windows-1252?Q?meeYegg7PI7Ud0CxXPDcUtWaBpt1ZlsBXfIWXw+QBJ/YTBHhirCSGtfC?=
	=?Windows-1252?Q?XijKRTxCKndb6/lBcQrOrLASFCknqForVtREL+fjXW4JGTaKBlkgiT5E?=
	=?Windows-1252?Q?GC0ZyXhXvI4bbU7pNMXGnJCf7lKyMGTRrk5IaqDS13qWhb1IdB71Ohf/?=
	=?Windows-1252?Q?rOxqbGD7Pj9XbB4FKVp63YUjSZy86zEytd7Mo8E8uPIDdeQ8dAgCcXcY?=
	=?Windows-1252?Q?Da4B2MgBjIkqQrz8dMhjlW5kltUM1V85TIp5F8Hczh9zQxVmsMgYWrcz?=
	=?Windows-1252?Q?7z+tEQa5p3t6kCrrO6Wf8BRK6OgPCAL0zKCnkrQf7PD0VQhhSo/AcI9W?=
	=?Windows-1252?Q?KOR1T3aDynOV+WgVNE9YLS/OsSQwhh47XzSIsvaJgi5DgW1nBOP4Q5mj?=
	=?Windows-1252?Q?ITkFHyzGjm5mEonwuZdXz4ueHgqxYqH9oAVoJMwe8HnK4MX2N6a6EWUH?=
	=?Windows-1252?Q?MzS6OFwkrYA49z4IFQwJO1icl10rHniQ6ErGaa8mupUbK4w2XA4/FEQz?=
	=?Windows-1252?Q?2ty7Jul2UwIw0E3GTU4pYhovNB1K2tSNWm37zqj9DSY6LPjyA2dIQnLU?=
	=?Windows-1252?Q?TnBrh2aYwjOa70paARrLrdrfbjzan9+ODkaMg1fk3/xN7m3k4IS2TCLH?=
	=?Windows-1252?Q?TUHyqTvQPQ5DlHvNdDVbGjrSypTWwRm/OV0XutBVSpdGAv8iPjVjA8Jq?=
	=?Windows-1252?Q?gQye4p/ygNMyIjux0EcCBhDPxAupET2TDu6PfVWWttTKnoRg6ft7GDMX?=
	=?Windows-1252?Q?DpXWIA6naLgSAmsmDAsp9HRSaCom1F/wxuHVu+bjKOcLfOIDb7iRJqRU?=
	=?Windows-1252?Q?OdTR/6kDy+DIQ3hF4S+CMoUYWCVx0KVl9RMDCMhRLZM024xGrxH6e7fi?=
	=?Windows-1252?Q?BESt6b6TiewaIaErVSd72vZuJb0uHa3EYUd5cWycOmFD3LM17k96GjNN?=
	=?Windows-1252?Q?2r/Tz8GlrzCUayMB5ZqNMbwyQJjYrUralIJHIcoplVPrec/AgOOi8bFU?=
	=?Windows-1252?Q?qISc9mh9nsUxJychWyq+ilMLFssMWDxnr6RwpDI+TWoPG0rF2bfQ0QLB?=
	=?Windows-1252?Q?XkrSAAjJn+dFh9N3umwoJQRuleACIQGnaNlaIyB6iMnaYe6D1RQT1dXp?=
	=?Windows-1252?Q?rU4815IvsA1Xpx2serFmogQOfgx9Wu0choGylesvK8P97a7hTVej2Qfl?=
	=?Windows-1252?Q?CF1ICE=3D?=
X-Microsoft-Antispam-Message-Info: egYmhSl8nCBe1yCURM8AxnPxa+1lF26Ff+XkOZU8F/GThqXohxxl04jeBC/gGoCFXpIvm32rqjepmEGtFjz4gRUheQrlFbUNp/Hv9tIG5lj+P2JtxeNW7iNiRPnUt5xhB2TMbYiU2SZSDia6tzAbBv1aUpgWLY1attbD+1/JZbZVk8SWiT2U/yUf5JI6oeKyCj48ZNSd5lPwlQmfMHtrPs11v92dN69lbiiVdk9Kw1MT/isBdNqEfkfFV5G3lfp2I9PaWodRqHyFf1SGhZPij8qfZYYDjb9sYG+DwMZx1o9M9/pWK/Ninwi6w8dqpI9LqdXHUo6GyoW1goqO9ERsQZoqdfFluQr/fMB53sFGtAo=
X-Microsoft-Exchange-Diagnostics: 1; HE1PR04MB1324;
	6:TtL5ZUzXjsZA2xn2NjtzaUzSMktSawijXA5By/3pDVOzEV3xbgJy+83OdbdKAPOxYmjd99QuMFxh2L+osBz+02siYHvwvhi9dQvI86Gj59yfseJxmLRDYRuefqdjikGMl7xrDcoV9Z0FEedBN9NeLDGQg0728UrL2zBo2OrlXMNNaxcQ+2E01RtuGjTEYA/a6bhlZ7IejU7qeHT7dYrBC7gRBX3zlwwk+GcqpA3qPsp8jK8w34NyOzRor3TElbV0LUu3iMXdf6ZlLQnZm3avxOf93OmoJY5qWZa7iLH8dD7PGIQrvTWcHCGCuLAmWH2NVbvl4se/bmh77rK4beDkt3qpoSFVwryfOd/5ywZxouw0so9WRmu3y71Je9ZzN/381V2mwOpr9nDEma5Xu1qnQMMr9O8/eb8N/359/IZ3guypfYHdYKv17ydNJDlEPBl7mM4JZKpRSfyH3CM0awXrzg==;
	5:OxT9OU3H1+sohFwNK7V6s7aRNoM2kSOBN3sXDIYyas3//L/IKIQ9bd8Tq6AZHVYfuycKGnr+igWq1kLu5oCoolShOIbo95O2/1lcsNMYM44aQPISS/vh434niw7AIKgjlhLwTzVvPbE3jIxjHjjurevDSKPfYbVCEleBRDiCCjA=;
	7:kcIfSECQkRp9XxwphS17hcwd57ceB3OGESSOGI85U5WSND6AaoNy9OHq2Y/S7RhlZd+j/dlmKZdiAfLSRxQFeCd8v6lU8ulhWvyftAmFCFoSNX6VY6KoR+Ybi5LXXCdlrj9ileDbB7Hko7ElVsClUcccyLaWlWHWRE+45ndvJla2uZ4bTTQcvuoxUFW8wHRdRKO1GJyJYSf96IV8y/rmeSPmNdHK3yB9jeWgbsmnShF6lfuc2m+cOaTBRVJX9yqx
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Aug 2018 18:23:47.5394 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 89bf8dc5-e4e9-4c29-1eda-08d60ddc8fd6
X-MS-Exchange-CrossTenant-Id: 91ed1e54-6d8b-4599-84d8-65fe75fda3d1
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=91ed1e54-6d8b-4599-84d8-65fe75fda3d1;
	Ip=[79.171.149.172]; Helo=[Ex01.gomspace.lan]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR04MB1324
X-Microsoft-Exchange-Diagnostics: 1; HE1PR04MB1324;
	23:0QPEaAPhdahVXR4YKdv0dCZSSevOvFBTb1Wny8G/FpP1ab2EWWsB/BLAjpkopBu2T42R0S0MucSlbi2X9hwDN744SVuAMRT3ylzqdgqpVHGY3Ml7g5z/ckSToXGTUeSyHL65yLnci0hz50yovuyJig==
X-Microsoft-Exchange-Diagnostics: 1; HE1PR04MB1321;
	23:8dg2BsT6JyOgrwjix9nLOrPAh3Kpmnj6zL0Hv1DOXpKcURWB2iHoatohvNYZZkCIHbCBaHGCBtlaGjb8w4Is2HHDvgDr992SLoTvwc7imSYCfQjF827Gwk9eMZlD0ZuGHlRxhrDEoucWQjOanlJueA==
X-OriginatorOrg: gomspace.com
Subject: Re: Sequential generation of eSDK from with the same workspace fails for similar machines
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
X-List-Received-Date: Thu, 30 Aug 2018 10:05:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Chen,

You are right, simply renaming 'SDK_NAME' solves the issue.

Thanks,
Martin
________________________________________
From: ChenQi <Qi.Chen@windriver.com>
Sent: Wednesday, August 29, 2018 3:36:41 AM
To: Martin Siegumfeldt; yocto@yoctoproject.org
Subject: Re: [yocto] Sequential generation of eSDK from with the same works=
pace fails for similar machines

The problem is about two machines having the same TUNE_PKGARCH, and
could be solved by setting TOOLCHAIN_OUTPUTNAME in your distro conf file
to include MACHINE information.

But I'm not sure if this is a bug and should be fixed. Let's wait for
more opinions.

Best Regards,
Chen Qi

On 08/28/2018 04:44 PM, Martin Siegumfeldt wrote:
> Hi,
>
> I am subsequently trying to render eSDKs for two different machines from =
within the same workspace.
>
> The first (succeeding) is built according to 'MACHINE=3D"zcu102-zynqmp" b=
itbake core-image-minimal -c populate_sdk_ext' whereas the second (MACHINE=
=3D"zcu104-zynqmp" bitbake core-image-minimal -c populate_sdk_ext) fails pr=
oviding:
>
> ERROR: core-image-minimal-1.0-r0 do_populate_sdk_ext: The recipe core-ima=
ge-minimal is trying to install files into a shared area when those files a=
lready exist. Those files and their manifest location are:
>    /home/martin/work/z7000-distro/build/tmp/deploy/sdk/poky-glibc-x86_64-=
core-image-minimal-aarch64-toolchain-ext-2.5.1.testdata.json
>      (matched in manifest-zcu102_zynqmp-core-image-minimal.populate_sdk_e=
xt)
>    /home/martin/work/z7000-distro/build/tmp/deploy/sdk/poky-glibc-x86_64-=
core-image-minimal-aarch64-toolchain-ext-2.5.1.sh
>      (matched in manifest-zcu102_zynqmp-core-image-minimal.populate_sdk_e=
xt)
> Please verify which recipe should provide the above files.
>
> The build has stopped, as continuing in this scenario WILL break things -=
 if not now, possibly in the future (we've seen builds fail several months =
later). If the system knew how to recover from this automatically it would,=
 however there are several different scenarios which can result in this and=
 we don't know which one this is. It may be you have switched providers of =
something like virtual/kernel (e.g. from linux-yocto to linux-yocto-dev), i=
n that case you need to execute the clean task for both recipes and it will=
 resolve this error. It may be you changed DISTRO_FEATURES from systemd to =
udev or vice versa. Cleaning those recipes should again resolve this error,=
 however switching DISTRO_FEATURES on an existing build directory is not su=
pported - you should really clean out tmp and rebuild (reusing sstate shoul=
d be safe). It could be the overlapping files detected are harmless in whic=
h case adding them to SSTATE_DUPWHITELIST may be the correct solution. It c=
ould also be your
>    build is including two different conflicting versions of things (e.g. =
bluez 4 and bluez 5 and the correct solution for that would be to resolve t=
he conflict. If in doubt, please ask on the mailing list, sharing the error=
 and filelist above.
> ERROR: core-image-minimal-1.0-r0 do_populate_sdk_ext: If the above messag=
e is too much, the simpler version is you're advised to wipe out tmp and re=
build (reusing sstate is fine). That will likely fix things in most (but no=
t all) cases.
> ERROR: core-image-minimal-1.0-r0 do_populate_sdk_ext: Function failed: ss=
tate_task_postfunc
> ERROR: Logfile of failure stored in: /home/martin/work/z7000-distro/build=
/tmp/work/zcu104_zynqmp-poky-linux/core-image-minimal/1.0-r0/temp/log.do_po=
pulate_sdk_ext.14111
> ERROR: Task (/home/martin/work/z7000-distro/poky/meta/recipes-core/images=
/core-image-minimal.bb:do_populate_sdk_ext) failed with exit code '1'
>
>
> Since the machines are of the same CPU architecture and and the image bei=
ng the same, the previously built artifacts are about to be overwritten. AF=
AICS images are neatly populated in subdirectories according to the machine=
 name, however since the SDKs are not populated according to the machine th=
e above issue is encountered.
>
> Is this not a supported use case, or am I missing a configuration?
>
> Thanks,
> Martin




