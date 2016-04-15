Return-Path: <Tom.Vajzovic@irisys.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21350E00EA5; Fri, 15 Apr 2016 00:34:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.100.123 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 70903 seconds by postgrey-1.32 at yocto-www;
	Fri, 15 Apr 2016 00:34:02 PDT
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2on0123.outbound.protection.outlook.com [207.46.100.123])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C288BE00D7A
	for <yocto@yoctoproject.org>; Fri, 15 Apr 2016 00:34:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=danahertm.onmicrosoft.com; s=selector1-irisys-co-uk;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=tbhEWmZ6nmDcx0z543ui7E7ILYA5Hi+ozc9/qBp1Lg4=;
	b=f1tSobvnp6ISPeDinWR9aYeoNSXDTWij6EZalXj6v0WHc+YmzLnuwh/6dJ2mNM7SlLvlI/EDVMdk6amxYa7nX+danA0KGSyhkYuPbBURakaqkGWQGcNFNh8ZoQoB+/pw3uKGCOEw3hUblWUQuzUQw0OW70OTS49fcfCDUUipFDU=
Received: from BY2PR05CA048.namprd05.prod.outlook.com (10.141.250.38) by
	BN3PR05MB2705.namprd05.prod.outlook.com (10.167.2.134) with Microsoft
	SMTP Server (TLS) id 15.1.466.19; Fri, 15 Apr 2016 07:18:42 +0000
Received: from BN1BFFO11FD047.protection.gbl (2a01:111:f400:7c10::1:130) by
	BY2PR05CA048.outlook.office365.com (2a01:111:e400:2c5f::38) with
	Microsoft SMTP Server (TLS) id 15.1.453.26 via Frontend Transport;
	Fri, 15 Apr 2016 07:18:42 +0000
Authentication-Results: spf=pass (sender IP is 192.65.42.18)
	smtp.mailfrom=irisys.co.uk; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=bestguesspass action=none
	header.from=irisys.co.uk;
Received-SPF: Pass (protection.outlook.com: domain of irisys.co.uk designates
	192.65.42.18 as permitted sender)
	receiver=protection.outlook.com; 
	client-ip=192.65.42.18; helo=mx.danahertm.com;
Received: from mx.danahertm.com (192.65.42.18) by
	BN1BFFO11FD047.mail.protection.outlook.com (10.58.145.2) with Microsoft
	SMTP Server (TLS) id 15.1.453.6 via Frontend Transport;
	Fri, 15 Apr 2016 07:18:41 +0000
Received: from US-BV-EXC01-P.global.tektronix.net (128.181.11.7) by
	US-BV-EXE01-P.global.tektronix.net (128.181.15.45) with Microsoft SMTP
	Server (TLS) id 14.3.248.2; Fri, 15 Apr 2016 00:18:06 -0700
Received: from EU-EHV-EXC03-P.global.tektronix.net (193.221.129.150) by
	US-BV-EXC01-P.global.tektronix.net (128.181.11.7) with Microsoft SMTP
	Server (TLS) id 14.3.248.2; Fri, 15 Apr 2016 00:18:29 -0700
Received: from EU-EHV-EXM01-P.global.tektronix.net ([169.254.1.160]) by
	EU-EHV-EXC03-P.global.tektronix.net ([fe80::4483:aaf4:d19e:72dd%13])
	with mapi id 14.03.0248.002; Fri, 15 Apr 2016 09:18:21 +0200
From: "Vajzovic, Tom" <Tom.Vajzovic@irisys.co.uk>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] bitbake -c clean for all recipes
Thread-Index: AdGWP2P4yV44qoUhQX+XxXJEoVenZgAGheYAACMignA=
Date: Fri, 15 Apr 2016 07:18:20 +0000
Message-ID: <14E4216AB3B3624BB1E80BC692D0F413D8D3A40C@EU-EHV-EXM01-P.global.tektronix.net>
References: <14E4216AB3B3624BB1E80BC692D0F413D8D3A301@EU-EHV-EXM01-P.global.tektronix.net>
	<CAJTo0LYoTANyh5sdgb_ru8JkjKCQ1S0RkyXLfaKmgu+fb8MTow@mail.gmail.com>
In-Reply-To: <CAJTo0LYoTANyh5sdgb_ru8JkjKCQ1S0RkyXLfaKmgu+fb8MTow@mail.gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [193.221.132.30]
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:192.65.42.18; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10019020)(6009001)(2980300002)(438002)(24454002)(189002)(66654002)(199003)(66066001)(450100001)(2351001)(106466001)(33656002)(50466002)(55846006)(6806005)(5008740100001)(22756006)(110136002)(2900100001)(50986999)(2950100001)(2920100001)(54356999)(107886002)(76176999)(5001970100001)(189998001)(5004730100002)(47776003)(19580395003)(19580405001)(1096002)(11100500001)(1730700002)(5003600100002)(102836003)(6116002)(3846002)(86362001)(586003)(1220700001)(2906002)(92566002)(87936001)(74482002)(85806002)(2501003)(9686002)(5640700001)(23676002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR05MB2705; H:mx.danahertm.com;
	FPR:; SPF:Pass; MLV:sfv; MX:1; A:1; LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; BN1BFFO11FD047;
	1:QMixnJNN6hzZmrcSH5Ew3cSsQXIa5NHUuO+YsIax3+QOrCpED/QK8VABpISFP3ZXIqbVdbH19PdTAqFvBOc8MVY2ghYwXEGnC1lTLoTPpdlKrt8nS49QCln+P/GuKUU5B2NZ5bepBXfbvxZO76VmlxXeCv/9OlRKXaChtLISze/ADfWCcCPHYBv6C81YAGzj1Wdz2Zv87deYu+BWCzOS/ajomQdRNY99nx8Efn5irGNDlcituaHKCOWiLzgarrZLm9xsrL21Z3gnY7pylyJvEo4gJggIpgLehg8j7daTqBxPcWUhF12iRVU3oNmTc/BxoBFKF6F0s190spvpFPOkomAHCd2P+199uS2YmoC/5lERX3kXfZ1e0GntKpfo2BDF1pndV3m04MNZNtNo5AZ2G+0a6eBiT5Kr9ZFkX3mpO4ILwsmIHk1qB0MzNL4xZLh2coqsY0dIBGqSMSYSNrCtEDzYe5MMqxuNBFv+X28RVKLUPY9DT45R2/pKXxurdHD4
X-MS-Office365-Filtering-Correlation-Id: 436fc7bc-7be5-4ee0-cc7e-08d364fe2ca7
X-Microsoft-Exchange-Diagnostics: 1; BN3PR05MB2705;
	2:QGkg9Jdgo7HBey11SPeIs73BXR852563aMKeRyf1Ka6x8NnkGwVgkJV6+h1bs1EZ5jBntRpftX+OqmP17Mff8uUbHPZ3hzojnhTOJKHmPNs1T81rowS9HYOLUdL2/Go6OCZXsYRb1YNWkGx3y4cTjX5ydw0PTneDjpgGGH1VF02NiBhqXMc5fcOnGCJXx2fI;
	3:/8gE7GAFmHLJj64j8+tPP5Jbih3YB1QOOP8P59Xc9ScDQ0VoT0XRzfW+2EDcfx1FQ8oRnPME4JgA504W3n7HGDEnziYjHQYb+KZLNYPesvyW0WO6byHrdUwpsTWHlORoui5tioGZMVgwfhBaQUiNtNAicgtRsAQ7Qzw/RehJD7QFGcUpoH30BgsQbrPQPGeCXOfkdb4pcnuWntq48sUdJiucewfI1fm9BFfEAkOI7soCe5livU0yaF6jkomtfbp+
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0; RULEID:(8251501002);
	SRVR:BN3PR05MB2705; 
X-Microsoft-Exchange-Diagnostics: 1; BN3PR05MB2705;
	25:oLb/ScjwUgMNNK2Of8GA8chCCF6WrvLQuPAJjQmAz3UhvCsW4/K0YgJtCHfqYuGR3w2J+pBphVffLWL2j4fKYecCB/0QTFFuyDwIcbzs/QSJL5oSkyqqAonQ0/AxqKGPr/M8AWXcVqez4vLp34H10+uJVn0HJ/hijduULl8d79/H1LLT5VXJqrSgc4FF85YcUA0VdDS+SWbRPKE1BYi51GtENfCRMZMFja7ov4i2ERDAxuSbBNj4tpRCT953ghwMS3any7AweXqdJux8vSvrbTPzE2Nr3WchYDQ3boJgX/a06R5dSB8vnVkfjJXUzP9Fi5W3vapX5JJj+b6sT0+IiRQr/7qJdlkewnNVgfScqBm6C8bM3C/Sl/Z8pVNzhxX/NxYB7J4J8yxcrAB2qZBPnMQ9JCXMsDSr4SKoejYhIgsi/Bq4SeveXEaRA2NeJrFr1UsyDLX2cqVwcMUgN5LPzE4WWrpjX09tEP97i2WMdH6BAEOFvL1RRJRCGhT71MaTUyTVcEHT0/1lpUo4ipgHdiO4mbjGJIC8FkypGkGY3tfOuRZaZeHtqXcuESUxnBc60/Kabj9DkT4rk/XIlbX+gMzTJp6L8igYaMPFXq440r0AaA1V3w2PzgQ7Cqmjk/lTxs63Y2rV+oAPnWJXeMTRieuO1sSxZsGrdKnhNKLavEE=
X-Microsoft-Exchange-Diagnostics: 1; BN3PR05MB2705;
	20:Xtl1bQYa1hNtTwD62750L2WtRhLzoe2csK7S7enrq2RKkIyrtX4VIdqX/JW1SZCIPYk6UGfLrtiVB6K/rxhHziMwrRcsWLjMZYkCR5kryfmg5/BF8a1yIrH4Dz58oHhv3ffqesa+08SJjkPqGj0U3Lnrz7Ait2PW8l3IurH4dGMYI9vAKBpAoUPLdYzbER4+rrVtZ8UbE2tB1ZSv1ctoonjRS1+XLkv4/AtCImkA7zd2/OHEKf3fAuWGAoAXsNUKoY7hIto+CQ1ZljS87yRda4CWRWVbVr3ADeBWZ1DXw328V1BUUkPraIS1LW+MSdMJfcnkmpW7MUtpvwJ7v+HD/B97F27u6jQ6hlpoCTt8+uMoaplcaVSlrhcPBJ3pTfFj9KxjiNY2tamtUxkCju1pio9/ZboMbdajbmICxEATRrmR35KJrSKB4YtcAe5xfrgx2pqyY9BIPFNOTX2fBgvBLnftWPF2aGlDSPzhiFzi1GKVQ8TE+vC4pW7xEvxQu3wO
X-Microsoft-Antispam-PRVS: <BN3PR05MB27051BF373DE49151E82E653AF680@BN3PR05MB2705.namprd05.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(9101521026)(601004)(2401047)(5005006)(13017025)(8121501046)(13024025)(13018025)(13023025)(13015025)(3002001)(10201501046)(6055026);
	SRVR:BN3PR05MB2705; BCL:0; PCL:0; RULEID:; SRVR:BN3PR05MB2705; 
X-Microsoft-Exchange-Diagnostics: 1; BN3PR05MB2705;
	4:wCxnIFIJuJ/hz3fJgmPZ4gTdjhzoPAY//Rs0aXZClDQJl4J/BGbsPnkZrXSBZVYDsdBkWeNolrY9nhb34veZo2OrCqFCvlcByoj3MzdZa2ijdg8vdjYBmtXcO1X9yOVkesphxOFhnGjpGUMKQEwnEylH5J/2ZDsUngWDTJiMtt4zl68Kjt6ukf9TQRK6XhRePdhwVAfggOOaPpN0EW2NgVfNpirbMtDujJnYCb6hkIM0wc+ndirbL7UeHsvZzRNjyoBgQ0RjKjCPkYNCvu5G33wu+ZKqYFL54hjjveWktHoSF9QQENhFYLfClowb7WRyVxZD73s2QRf1MzbvpStNIZHxh8I2jPS+KitY3edq3Hu+dWv/rCVyLSe0jcpo9+XY8prmGrDKExn1lOOT9b3iP5yq6trjlmgSVfxWZ5ZoG10qcLye3Pw++ZuLvEBvQR2eL5JE2vuPc/+mRk95KUuJm/InxkclTjjj8PO/RJMcRgj2wgr+6j3r9vY/DWYn6RNe
X-Forefront-PRVS: 0913EA1D60
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtCTjNQUjA1TUIyNzA1OzIzOkx0WXgzOHVoeGxiYTlobWJpTVJnQjJ1OTRz?=
	=?utf-8?B?K3hnd0RQb0QzY3ArMUtoc2pac0toUndHYW9hNkk2QU9PVFF2YnNMdzdUakpu?=
	=?utf-8?B?SnFVcEhveVZKWGJiWHZmNGtMdk1pT3QvTGJUNElLRWVBRmVVV0RTT3Y5ZkdC?=
	=?utf-8?B?cGtzMmNaTFlTVUFWdUpaUElZSVRyNnNKbnFyRG1KdWU4eXVVR0xvUVhUNFYv?=
	=?utf-8?B?MnNkVnJvUldtZzVrVm55YnlXVStHUExUZGFYd2dBczRMdHBoc3ZENitiNzJr?=
	=?utf-8?B?NmFjUHVJRTZLSGprU00yOUNXL3I1aVRSMml1cGJ6SDBPeFlocGZTeS96ZzZS?=
	=?utf-8?B?WXNGV0xGMUE1TUJYUDFmWlcwMDZsRnZOdzVsQ2w1azhSRUpVazdEcW1nRmk0?=
	=?utf-8?B?cisxV3RSdndCU3BjSGFhK0xJSTRhcmhMYzhOb3dUbXJrUndDaHBHMVRIT2do?=
	=?utf-8?B?RVFTUmtrN0pEOTdjRnpOdHF4ZGN6Y0VGWG52bVNGZmZTYzVBTnRQOWNlbWRE?=
	=?utf-8?B?azhnK2p1SVppcVNXanNpZ0JPL0xoYlRTSmxCM3dINWlvVVNwWWFmSHZpdlBL?=
	=?utf-8?B?M1ViOXM4dlBVZDhldjZvM3VzU1Erakhad1J1UGNLQ1BSRHN3bG04azZ3dG9W?=
	=?utf-8?B?Rk4vYnczRnE2MlJoRU9CdUJHc1JMaE5Nb0czR2N0cXRGeUhXOGR5dDB1Sis5?=
	=?utf-8?B?QUdwOHFYd2ZyYkNTdTB1bjIzbFBXVFdnTC83ZU91ZTlOYjd4LzVJQlk4cFpY?=
	=?utf-8?B?djAvcGZaWjJlSEVlQUlTTE5FRDlwVlBvdjFRY2hLRmRJL2t1aHpubEN0V0Zv?=
	=?utf-8?B?bjFQM3F3MFBzSE12Sk9jZ2drT3J1bnhwdU9IcThvdTl0a3pUOU1mSnozbE5K?=
	=?utf-8?B?aXduYkIrMmtocVhMcVE2bGxjdXp3U3JTcUpFVEdxc0Z6MmxMMzF2dTlVUnRQ?=
	=?utf-8?B?dkZyQ2doczhQK0JtZSt1UkI1QlQ4VEVFZktxU0JDQjNGSFRoZm5XUDJtdEFJ?=
	=?utf-8?B?UlVmSUZIcC9TVEJqUlgvR1lNaHIrY0JtQ1p4dFdHZDJIMUw3NGFoZ0dEZUZF?=
	=?utf-8?B?RGluTk9TREUxUW9RN1JWUlIycHZEMWlCNzR6R2U5NTc3MUoxaGFWcGE2OWhE?=
	=?utf-8?B?em04cElrQU1JSDk1TzZUWE05eW9jYlExQ3AvS0dsenhPUnM3Y3JuNDM0WjVV?=
	=?utf-8?B?M0ZEd0F6Y1IwejlzRHVmQzdLRE0xbnBCZ1RScE9VVEJjUGJxMWZEUThud0Ri?=
	=?utf-8?B?ZGlsRkJsdC9wVktOT0pDeFRibUszc3BLUTRFdTR5dnJJVlpORDhneWsvbjdm?=
	=?utf-8?B?eEhXOCtFWE1iVFdjOVdSUEFJQkNTNnlrUFFEOEd0ZXV6TTA1NWFUeHRhVGRM?=
	=?utf-8?B?TGt1clFVejIyMUp3Mk9hQnB6QlJoZkdPeGZvc2JPdlFVQUd4d2FPU2N4Vm1L?=
	=?utf-8?B?eVJ5b0xncnYyeS94UUd0NlhuazhuRmU4MitZVExZbTJlSWdHb2pFbTFBMHg2?=
	=?utf-8?B?M0pKV3hLNENFQUdPWEpMS1BpRWcvaGRPejFQOWJhRE51UHY3b2Qrc1BqMVov?=
	=?utf-8?B?OEJqanVuVStPUVhkL2FiUkdrTngrZkhSUXc3Y1FrYy9iWEgyL01ESy9sNjl3?=
	=?utf-8?B?NFFDanVZaiszN25CbWd3WDBSSE44KzRqTUxOcVU1R0x6ZG9aZEljK0dSakNX?=
	=?utf-8?B?ZEdQajNjd2ZFcU5TZldvNlNGa0RBck1OVDhPUXZXd1FHSm1ib1hyYXFwT0lr?=
	=?utf-8?B?YXZUYkVMZ2JFMUF2bmJ3dz09?=
X-Microsoft-Exchange-Diagnostics: 1; BN3PR05MB2705;
	5:TqB5tWpBsKPF/E5o8XuQDLclHEot5vdEhZPd3EdYhY9ZLXEGlLvU9p7h3BmONcSGbnJC+zwJsdjwBTSbcZ4rekQrdiAsKm1CF/hM3Qyc8vKDynvQrJWKx0mxvnYkopgmL6HQxQOE4gadnGvtHcpfjkOqmeD+jkpj93eHI/X3PaMTxBh5AvwjfNP7L0lUtJ6b;
	24:5p2OQgmiF29hw+dLtGCfHnbgo1ftM5+rjEa9tZankoEMox87Hy+ZFrV9k3p7Ji0H2KvQ/IcS+5klrKp9aFU8qKMdiw54WJaubDT1wTzYos8=;
	7:x1eLZ7OdtXaIZcFRshHCCJCsAn56N0KkMYq6Je8dbVMX3RqqRmCXwb1iowjg6+cOMfgLvs20yrosCbPFATZ1xwf5XVxSrmtY1xC67gQaTHqiJgPmDCss1I24HaDC0Fump4faYgCcJi4uHPhk+BXb9Uq8omIARaJkns/0aSwpYkiNdNiHV9YTv9Ggg5R12PwCSW6wBzltbMkjTJ3rEeL9vs5FA/M4HuOggr4wmq5WPbo=
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: irisys.co.uk
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2016 07:18:41.8669 (UTC)
X-MS-Exchange-CrossTenant-Id: 937985d5-3f80-4fc9-be29-0bccc11e8b77
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=937985d5-3f80-4fc9-be29-0bccc11e8b77; Ip=[192.65.42.18];
	Helo=[mx.danahertm.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR05MB2705
Subject: Re: bitbake -c clean for all recipes
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
X-List-Received-Date: Fri, 15 Apr 2016 07:34:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUm9zcyAmIFJhaiwNCg0KRnJvbTogQnVydG9uLCBSb3NzIFttYWlsdG86cm9zcy5idXJ0b25A
aW50ZWwuY29tXSANClNlbnQ6IDE0IEFwcmlsIDIwMTYgMTc6MjUNCj4NCj4gT24gMTQgQXByaWwg
MjAxNiBhdCAxMjoxOCwgVmFqem92aWMsIFRvbSA8VG9tLlZhanpvdmljQGlyaXN5cy5jby51az4g
d3JvdGU6DQo+IFdoYXQgY29tbWFuZCBjYW4gSSB1c2UgdG8gZG8gdGhlIGVxdWl2YWxlbnQgb2Yg
cnVubmluZyANCj4gImJpdGJha2UgLWMgY2xlYW4iIChvciBjbGVhbnN0YXRlIGV0YykgZm9yIGFs
bCByZWNpcGVzIHRoYXQgaGF2ZSBwcmV2aW91c2x5IGJlZW4gcnVuPw0KPiANCj4gVGhlIGVhc3kg
YW5zd2VyIGhlcmUgaXMgcm0gLXJmIHRtcC8uwqAgDQoNCkFuZCB3aGF0IGFib3V0IGNsZWFuc3Rh
dGUgb3IgY2xlYW5hbGw/DQoNCj4gV2hhdCBkbyB5b3UgYWN0dWFsbHkgd2FudCB0byBkbz8NCg0K
V2hhdCBJIHdhbnQgdG8gZG8gaXMgYmUgY2VydGFpbiB0aGF0IEkgYW0gaW4gdGhlIGV4YWN0IHN0
YXRlIHRoYXQgSSB3b3VsZCBiZSBpbiBpZiBJIGhhZCBtYWRlIGEgY2xlYW4gY2hlY2tvdXQgYW5k
IHRoZW4gYnVpbGQgZnJvbSBzY3JhdGNoLg0KDQpUaGUgcGFydGljdWxhciBjYXNlIHRoYXQgbWFk
ZSBtZSBhc2sgd2FzIHRoYXQgSSBhZGRlZCBCQl9HRU5FUkFURV9NSVJST1JfVEFSQkFMTFMgPSAi
MSIgdG8gbG9jYWwuY29uZiBhbmQgd2FudGVkIHRvIHRyaWdnZXIgZG9pbmcgdGhhdC4gIFRoZSBm
YWN0IHRoYXQganVzdCBydW5uaW5nIGJpdGJha2UgPGltYWdlbmFtZT4gZGlkbid0IGRvIGl0IG1h
ZGUgbWUgcGFyYW5vaWQgYWJvdXQgd2hhdCBvdGhlciBjaGFuZ2VzIEkgbWlnaHQgbWFrZSB0aGF0
IHdvdWxkbid0IGdldCBwaWNrZWQgdXAsIHNvIEkgd2FudCB0byBrbm93IGhvdyB0byByb2xsIGJh
Y2sgdG8gc2V0IHBvaW50cyBpbiB0aGUgYnVpbGQgcHJvY2VzcyBhbmQgYnVpbGQgZnJvbSB0aGVy
ZSAoZWc6IGNsZWFuLCBjbGVhbnN0YXRlLCBjbGVhbmFsbCBhbmQgYW55IG90aGVycyB0aGF0IHlv
dSBjYW4gdGVsbCBtZSBhYm91dCkuDQoNCk1hbnkgdGhhbmtzLA0KVG9tDQoNCg0KDQo=

