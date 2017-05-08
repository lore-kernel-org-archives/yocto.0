Return-Path: <kerim.cagri.akbaba@accenture.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BCB8E00ADD; Mon,  8 May 2017 03:45:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.32.93 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 3599 seconds by postgrey-1.32 at yocto-www;
	Mon, 08 May 2017 03:45:00 PDT
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam01on0093.outbound.protection.outlook.com [104.47.32.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B72DDE00A31
	for <yocto@yoctoproject.org>; Mon,  8 May 2017 03:45:00 -0700 (PDT)
Received: from SN1P114CA0002.NAMP114.PROD.OUTLOOK.COM (2a01:111:e400:e2c7::16)
	by CO1P114MB0072.NAMP114.PROD.OUTLOOK.COM (2603:10b6:110:3::27) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1075.11;
	Mon, 8 May 2017 07:10:26 +0000
Received: from BL2NAM02FT052.eop-nam02.prod.protection.outlook.com
	(2a01:111:f400:7e46::201) by SN1P114CA0002.outlook.office365.com
	(2a01:111:e400:e2c7::16) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1075.11 via
	Frontend Transport; Mon, 8 May 2017 07:10:26 +0000
Authentication-Results: spf=pass (sender IP is 170.252.43.200)
	smtp.mailfrom=accenture.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=bestguesspass action=none
	header.from=accenture.com;
Received-SPF: Pass (protection.outlook.com: domain of accenture.com designates
	170.252.43.200 as permitted sender)
	receiver=protection.outlook.com; 
	client-ip=170.252.43.200; helo=AMRXE4005.accenture.com;
Received: from AMRXE4005.accenture.com (170.252.43.200) by
	BL2NAM02FT052.mail.protection.outlook.com (10.152.77.0) with Microsoft
	SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id
	15.1.1047.9 via Frontend Transport; Mon, 8 May 2017 07:10:25 +0000
Received: from AMRXH4002.dir.svc.accenture.com (10.63.34.61) by
	AMRXE4005.dir.svc.accenture.com (10.63.35.195) with Microsoft SMTP
	Server id 14.3.352.0; Mon, 8 May 2017 03:10:04 -0400
Received: from 048-smtp-out.accenture.com (141.251.99.23) by
	AMRXH4002.dir.svc.accenture.com (10.63.34.92) with Microsoft SMTP
	Server (TLS) id 14.3.352.0; Mon, 8 May 2017 03:10:05 -0400
Received: from BN1PR42MB081.048d.mgd.msft.net (141.251.99.17) by
	BN1PR42MB083.048d.mgd.msft.net (141.251.99.23) with Microsoft SMTP
	Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1075.11; Mon, 8 May 2017 07:10:04 +0000
Received: from BN1PR42MB081.048d.mgd.msft.net ([141.251.99.17]) by
	BN1PR42MB081.048d.mgd.msft.net ([141.251.99.17]) with mapi id
	15.01.1075.019; Mon, 8 May 2017 07:10:03 +0000
From: <kerim.cagri.akbaba@accenture.com>
To: <yocto@yoctoproject.org>
Thread-Topic: Symlink Problem with Kernel-Image in Rootfs
Thread-Index: AdLHybAIM4Q1cZ7tSEyh2yNBUStPuw==
Date: Mon, 8 May 2017 07:10:03 +0000
Message-ID: <8e9ed5eb75ff4a4790b59bcd1f310724@BN1PR42MB081.048d.mgd.msft.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [170.252.72.1]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: befc7343-401b-46bc-0919-08d495e14ce6
MIME-Version: 1.0
X-OrganizationHeadersPreserved: AMRXH4002.dir.svc.accenture.com
X-CrossPremisesHeadersFiltered: AMRXE4005.dir.svc.accenture.com
X-OrganizationHeadersPreserved: AMRXE4005.dir.svc.accenture.com
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:170.252.43.200; IPV:CAL; SCL:-1; CTRY:US;
	EFV:NLI; SFV:NSPM;
	SFS:(10019020)(6009001)(39450400003)(39410400002)(39400400002)(39840400002)(39860400002)(39850400002)(2980300002)(438002)(199003)(189002)(53754006)(5660300001)(15974865002)(106466001)(2351001)(356003)(790700001)(102836003)(7636002)(3846002)(7736002)(6116002)(260700001)(54356999)(50986999)(2900100001)(478600001)(8936002)(33646002)(66066001)(84326002)(86146001)(110136004)(2876002)(24736003)(2906002)(8676002)(55016002)(86152003)(6306002)(54896002)(9686003)(6916009)(86362001)(7696004)(38730400002)(512954002)(189998001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CO1P114MB0072;
	H:AMRXE4005.accenture.com; FPR:; SPF:Pass; MLV:sfv; A:1; MX:1;
	LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; BL2NAM02FT052;
	1:UQZnlnpM6eCSl4v2jACdzYMs57DewUCWswnrFqOxr4VmXl+VMER3Na2oRw5to0O8L7yEIk2P0IN1kQfz+xPuncKpQZGgr6zNcJWl4PhpefIImG9dmDl4UxKJhYsxcS2vMU1UHf11UPljHuEaYlqOh93vVo/NHOU/+MKE9GjwoGBSeX63snKxS5ioRZ5XZbyV9dX08x4PbAIrImb8OmenECWjPEvtXaozRfiUvQkTjPDu+wWnVIp7KUlNQ3I9z0RRr7cd3bAAssg1ehAbmyiE4q4jeIs6xoIxLZDd61oX2mRZob0l/qYY3cTvUgej95z+fEU6EjtNXebiPOqfifGuppIJOrL4rtAgdqWLUq30QDqBeqk29PE2aaZ1FN6UhxHg1nSCXcfv7HGDfjniUe1+E+nuD5x3Tl/3ohzP8n+QZFRUF9g1ZVGQd0WWpa+BjB8EUikHyzR3NZ4Vc81b38lEN5p8+KtkX58Rc6zHio52MYTAR8UScEDwRHWIrJRGYp9oTvRZPvsl6CGzeuWtOGbHXeKtyW/EoZ8wHqq0ycLzHTc5P/a37d8JQKC4WJQg5r0/J+R55zHBKaUOTCVQpTT9mg==
X-CrossPremisesHeadersPromoted: BL2NAM02FT052.eop-nam02.prod.protection.outlook.com
X-CrossPremisesHeadersFiltered: BL2NAM02FT052.eop-nam02.prod.protection.outlook.com
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(8251501002)(2017030254075)(201703131423075)(201703031133081)(201702281549075);
	SRVR:CO1P114MB0072; 
X-Microsoft-Exchange-Diagnostics: 1; CO1P114MB0072;
	3:LAd3HD4qpMOz137VJuRz4Cxrudt8PA8bh8zkiXl/Blg3HGkT7qSfXj3uCiQlbwYwQu7zwIrr4jInSiSeGxx+Ys+9lop9Bnr36keSI634UhuIvUWmXFnMkmFO0FGfne2YaG9Bt6uiw4oDI8reV0INpN9CbLXVP48xhvpW14lVlySd6Gj8joYCzcmROsspgV/vPQfNOLpi/UXwQ81OuwPf7mc+GTNpDiXno8o1Q4W95LnQr7ul116gEbL8Nby0dItW/kqXPIhxAqOJxd2phHr+laRfczZfPo+3Io83rfcK2xdwUhlcMgroDJ5R2s/g0xd7csFV1fNCjQg5Z83BfNjZBFSqrKzsmjKeexQZLiG28tRVxFA9QroV2sd+Fklg24883l/HmzA6+ZKhAYhscxWRLglHIGrOvFo/c5uXKOtznJLZUbPHqgt+/wQmWDUcPzdwUtX1h8Ry9Qbktc+l9F2f0AWQHpFzlEnQ/tyCByfYhJynAyyDTUamr7SHJQj/mB6NYo46JiPkG9CWNjlaWpZwkQ==
X-Microsoft-Exchange-Diagnostics: 1; CO1P114MB0072;
	25:BLBsbKBjAKzBas5BIsE6qET1bBYPkJbkULDd5Jvz13r236Ss7jAeo3GlYnXmaSNNPPCrSxtXSBw/vIBHrj4CBtZM4UASNp+c1CUV//djgTpSA8hOKUKgp69KLpjprYzkCPNSZ6RulWu501eUun1tNbGYQ0rN6tVrMSYKxmr4nzXfMBgxMmUFhaGlLmgQSwusd8zeBzxWrwpTzWiABeV/oln5HTOY3hmAhFBZJR94OedAqhgy1vp8vGQcs7UkaiyoO66D4TZG/jS8tvvCKxJROP8K1pm2wfMfeuU3J8kWp70MayeZHzca+iqFXMQghmspiubUaJF7NdKW3Hcx8ncI2NDKYNTGlohcORBSRJ92/Qnt5IIx8bXGjlYgPTcgByeh1UbVHriEMNrng1jxZlrrvfKgFcfvOCx+1lfkj/oM3U7Mz29BE/8oCIaIw3JWHSCayTH2qgTqyzLpsTisrCCeHERhBWBHk8pPviq4hps8J18=;
	31:pegzyvnZKmVme4yJccQopfSQht8k4h2P7FlBNddqaDMdR+Ehflili3D3in0O92V0TGAtXrtefzKg4jQviCvNLIIWRprUcENZ0+xdK2rGpxKYCHb1Zy0Z1sPtjQkVFcUdeWUqBS9pi2f5Yc0/9xydFliaPTxa7Yskv4dj90826p8ok5W+46OgKlsK1q+uSWd7D6oVH4Z946HbY/8pBIyaMy9EpbuaSE/DXHepzGlaA95y//hHIGURHJ5I1c9ihD+YM33iOOsLUmnxXHnEuvyWjA==
X-Microsoft-Exchange-Diagnostics: 1; CO1P114MB0072;
	20:SEBI+G5v7Py+uIqpplbsGcyEmjAjfz/LBOKp3IHMMYGVBnieF0OgUVRWK67k1wFieHqgJ5l/AopUa437cIMchXkJSxlqwHjXrLbZtMvbrJ427IlCdOHd21GPVyTJkJ/+kjhwtQZfGXcAPGSNF0xgqZlnuPdN4ezFojKdUWKUpuu7EupmyXWTokoyjEhIDr7GHP8cgV8GsAuPeukdcPjhN5a/zyJLaQ54zBlNQ4+YIcGIHzVBYCVRXmZQyOEJOUJuS5jBbWZqgQzkzrJvR7m9hsgrPWU5WvC8HCLHwNXQ7XV13gag1JKv1Np/WL4pX7N8MRqXarfx1I3Xho/E2vPQt4Q8sbSRidu5d7p4btzKZ/cpAb5O5wFpvADmnmLa3UrGjpcKwwP5J8mZ8RKd4dvVD6J0lnN9mmgKGkv2mRKu982Gn8N4fg+HeyW6Mt79NwOlLR6v6vyGbCgvcE2I/t3kwChdSDj88nq/NfVSJZJeiYi26GeIbOr+84j1GK8+3edpNXZhdfoWM8zocYHpl0fEzLpcSziQlUqU6DOuXHRPD6sjAYGlRbrISOGftvm3GKg27Q+A5d1QW+WIFCmmrCjvWYBIjk1zQ3GAc5G5FKPZIrA=
X-Microsoft-Antispam-PRVS: <CO1P114MB00722A40A6C43943F7940F16C5EE0@CO1P114MB0072.NAMP114.PROD.OUTLOOK.COM>
X-Exchange-Antispam-Report-Test: UriScan:(169223907730125)(192374486261705)(191869523173324)(21748063052155)(17755550239193);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(61425038)(6040450)(2401047)(8121501046)(5005006)(13013025)(13020025)(13023025)(13024025)(3002001)(10201501046)(93006095)(93004095)(6055026)(61426038)(61427038)(6041248)(20161123564025)(20161123555025)(20161123562025)(20161123560025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123558100)(6072148);
	SRVR:CO1P114MB0072; BCL:0; PCL:0; RULEID:; SRVR:CO1P114MB0072; 
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; CO1P114MB0072;
	4:H71x7Ynx9wsNg8z6hfaeY63sN6XeI19HGhFWfgTjpe?=
	=?us-ascii?Q?6bXfOdhn07LoC94kzh2JlSi089864WAuYVnayfYnzQBq4ry+p5qo5FGlJLb3?=
	=?us-ascii?Q?Y9d8fsyjzcKLsX/J0WyYJzIYLigmg1XU4oArhfVWKroAM/921vxIb1y1+4WZ?=
	=?us-ascii?Q?M62rU2+QhWM9rkrIr6FUwT7fShTdcFAQ0QC3j97/Xtg+aE9kXHOEaeIuU0dW?=
	=?us-ascii?Q?0+mp5AwP0IoQ/xJoy1gA803QvlYafYg+7EH9/oZJbFlpYSXG4ztIaYET5yT+?=
	=?us-ascii?Q?6+8B1VDojA2cwUO7H/gP6jx/TqePDR6n+8UXtydDt/XOEyl6euSo0GeDE2Rs?=
	=?us-ascii?Q?8AsGYUKj4CJrG79orbAUJkv4oBwAEBAq1a+BE5YsghVM+/R/BNuVKMUu+sR7?=
	=?us-ascii?Q?kjIVL3bGs7HGusqIYehdm0R5LVQ/F5+PXcSO9JwPN9zMu492Clfx79ziUGav?=
	=?us-ascii?Q?AuwPJajg6nklgTqH0KrpYmLS2BQ5mApMxwU4kf/rRuiMdE2P+mRQKWTa0zpx?=
	=?us-ascii?Q?fm+mxoQaO5hfnpPrbJkArOr2MI1BsgbsYc4QU/ZCewKLdwnKJPA/074ub2cQ?=
	=?us-ascii?Q?LoS1C8eBfxjzvsQjHs6NQOziPMyFkVct7rBJlRHNTm0Y2nh0leaCCCVr13A3?=
	=?us-ascii?Q?Pun85CDuJhCH5eoj1HlhGgO8ZIQKugTdTgZZxXcD93hQfqdarIQA1z49BDNO?=
	=?us-ascii?Q?Ea3SQWpQ8brUq0faEDnqmaqWOC5oeKatb2nMD9dS4s8UjY59jTFkvW4cf8iE?=
	=?us-ascii?Q?Nv1ykI0zMa+d+n1BaX2UpC5GZfCP3wvNA6ooiyMprOB0ba19Pc9ry8kHYzDQ?=
	=?us-ascii?Q?EZeJRMd5lDoBRynid9Y8GIMnaY1rAFG3q/jMh1BQnFAPgJbY6SuNtqNpioj0?=
	=?us-ascii?Q?hHXR8R0MpCcoYzi3PVMowayWbvKc/msExf42AzV+fLTbAw4ctU0TQJQYEOxH?=
	=?us-ascii?Q?EfOt4p/7nNZCv3yEHMy2s1EMrA+Dm3WkYL4M00lnQAm/GziLYQa5mHMaotky?=
	=?us-ascii?Q?onCxwmBoXRvFXnCObSa4mEMhJFvYZC/IZr4SPB7AYMBrLFAUyDU3lcC2jZ2r?=
	=?us-ascii?Q?pNJ/1D63wg5J3j4pfhAHW1QJTHJ4psh6VNIEWn8syJk0617J9bebnlZSRHu4?=
	=?us-ascii?Q?ScnkyIEEg=3D?=
X-Forefront-PRVS: 0301360BF5
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; CO1P114MB0072;
	23:U9Vr1YQ9cwShbpZw2mK6pDHRXNy9QGXb2nxlVn7Du?=
	=?us-ascii?Q?I8DacYGwBw/qnkUD0tTrvNRqZYGn45uS6vV4a64GMKPpqbP+cgRw5HvHMnvv?=
	=?us-ascii?Q?y+w646tFf9RvItI7ovEsz0ER+UaHoWFeQeYgIW/aG1ZJwU2S4bJ1Z0Hf7Fic?=
	=?us-ascii?Q?eRSptx3vk3l2E1yLMN72l3nrsqy3s8dDtqcObWrT2wg/ji5UiBWnJYxKlcJ5?=
	=?us-ascii?Q?OFl6/xbSkJGnVMIWKtlVG63XwjAX7IPMZYweYI+z0r2ZDeqHcWtkdJ49gEO6?=
	=?us-ascii?Q?fdbZaDEgYG7SYXic9EpnPVTJntC3x7gV1JqS8DXKtNS7I7eXqy286aWjlEHI?=
	=?us-ascii?Q?czI19bxdjdTSkYTflpj9UVCYdz8SHAjT4wsfNDTqny0woNtLfhnUP0lBn2IF?=
	=?us-ascii?Q?6Z2FDq4pLmj2uvjYbN9EKF54rq2WV6hWeWqJz5+570BD19iWvT5bo5x/qvde?=
	=?us-ascii?Q?woUnxvRX6tEoTO33BynL4M5Eris1RKH2oH3bkvbGV867KyDlnLcj4UZ2chRe?=
	=?us-ascii?Q?U26X/MQp//mWCBxNHVtz7rVP7XZNKejis6Hmd7pFaI5vUeok90Y1bbZFjWGC?=
	=?us-ascii?Q?QpQIgsf/CZAZ+eAavXp6tPjx5fp5TA+ga+5Kb31frGm59yC1RQ+A5UHmghmr?=
	=?us-ascii?Q?4AmSoCQtaHOxbypAsuFBn332OXtz9qV/V5pNZa9N05lXNjb2wG7c80KuOu5u?=
	=?us-ascii?Q?8hDFKoPB25RLxD3gnCQF9t01jWauEIDGJ1+XZenYFzEmMHaysW0FcCQCduSc?=
	=?us-ascii?Q?j1ru1sZ6JGhB0UzXjzAb3AMTTBPW64AMVqAB/yEOHjQzuoVpnRtw/FeV4lZT?=
	=?us-ascii?Q?iYp/hFhNUez4qitn9kfPhvoKNUka0PrddRXSy90X+FsBsI0vDMxWzJt8XLdm?=
	=?us-ascii?Q?wd4+muzF+cJ33ebJ2tXmX/oohdRQSG/Dl+NCWL5BoAO63Ta9h74OQuwyzm+s?=
	=?us-ascii?Q?PgnrV3d4jNrZloJXrPdH5q5jcCYQznlRL7Gq8LOAAp+U6lswF9fp6b0skixa?=
	=?us-ascii?Q?HfggOdSHyXATnZR6+w5Mvu7arBQG9fgYbiHXi/3oh6wNSHw9DzJcqACi4iWh?=
	=?us-ascii?Q?RNtKRfghLQNErYbHCnUGwcZynMAsIDQ2NPN5Hs6awvu962/uMWezPxcUUrPg?=
	=?us-ascii?Q?mcaxyxFUUDmPFXpXq7RkiJnIws8XR1AShNpb4ZzpjquWnZ1/i0IY/Pjsomst?=
	=?us-ascii?Q?xnpOqVNKGvqMKg=3D?=
X-Microsoft-Exchange-Diagnostics: 1; CO1P114MB0072;
	6:VcVjKT3O01bd7Zyg38nlNpov3SoEAXcS/9xL0kwnz8Tp/f0HmwbeRs0yPb2Rqg73Jg7K0BvOT42yIcwtENdepn9p5vFVXmbmEB/7D712BXdmzchyZ0wcP+YTiZ266NgvA/eSt7+M9Zj8cKjdKoT+uPol6JyBSYV4KSfSYJAaiO+Ji6GDMQNydWdJfLc+NIMihCiglLVFUkMH2PBirJYjeXrJ8Qm/KLIXVgtzfqKJdOBuVoNK9s/qm8/KZVEzRQU23dXgVviJIYYP7R1OY8agofGQzr0HG1BVyvqzYcuBNzWit17dwiP7B5khVz7VO3p0BQdB+Q6IADkkAircn03G/zjXBMyVe/WO8emK9hYmdoEVNM5Od9msmhooc9AGFz/sYhx0T07160LoHN1P5MGulbfVlDKV/3Ll1ezP8r4SUBbgUOBZ7+2315rBO3jNazvhJ/k9mk/9HP/jvMeULFhPPbljQ/tISnYdcQLceidjPGBdzpJ3VHIXX3qLdisgQ+e7wyufS8Gz8ydwdoa2JWNQwPDmupdZLPOhMqYARlFnhBc=;
	5:tEGGantIrbhqqLR6o1tzhfYZCJ8OyH9RinYlrRxhTqhpduM6H69lAB3R37MWAYmqEhdjiFfZ7AK4nRMKInY75BcQv9AHyJna/895QkUOZFMTYgbdRvHnGHyx/Vk4WBdsMjBHYO3/0GqeDZdOguak7g==;
	24:jMWwk194TAifSvjR4+cMsljpNdbd03d88E0s5qbeJ/UzvAx+u4owbyxCP07skKjMurRqzpJkPtT1e3JEq93PqaNvejfP3CCRtJqXW2KB8Qs=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; CO1P114MB0072;
	7:7J8Jz3lujSSgViapVK/3ukQH5h9hJuDlcrUjgzQTSm4ya3pr4GlUWCYzlmOSXi0BstZKlrSFtZoR58AafA1eEJ8sDCKxpk1C/43S+g9kRC2ZJW+ofKw8MYn1m2wgbfbF4tnSqyQNPPjNsGebvBfsmPFl0AF2buzf7zjwVC9/IZxo90xSerzrLBq2jx827qsYlX7niwZI+xoH+ZbIzElOvsCMmHV7KgM+R5CZl/Z/naJpgo7QHDTLHdLABmY6lsCQ5sXCkPSQOq/hqpflSD9J+ZdQ+x4a173HSFB1eEiejEHNdIAAW31HaDvL++oDsvWnmHd6ddKPjE2BWl1BoNcE/A==
X-OriginatorOrg: accenture.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2017 07:10:25.4375 (UTC)
X-MS-Exchange-CrossTenant-Id: e0793d39-0939-496d-b129-198edd916feb
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e0793d39-0939-496d-b129-198edd916feb;
	Ip=[170.252.43.200]; Helo=[AMRXE4005.accenture.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1P114MB0072
Subject: Symlink Problem with Kernel-Image in Rootfs
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
X-List-Received-Date: Mon, 08 May 2017 10:45:04 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_8e9ed5eb75ff4a4790b59bcd1f310724BN1PR42MB081048dmgdmsft_"

--_000_8e9ed5eb75ff4a4790b59bcd1f310724BN1PR42MB081048dmgdmsft_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

Using IMAGE_INSTALL +=3D "kernel-image-zimage" or IMAGE_INSTALL +=3D "kerne=
l-image" inside my image recipe, I am putting the kernel inside of the root=
fs (/boot/zImage-4.4.52).

However, the symlink that is created by default, points to whole path inste=
ad of relative path (It used to point relative path). The problem is after =
bootloader mounts my rootfs partition, it loooks for kernel (zImage) and gi=
ves error because there is no "/boot" path.

$ ls /boot
zImage -> /boot/zImage-4.4.52  (what I want is zImage-> zImage-4.4.52)
zImage-4.4.52

How can I modify the symlink creation; Which class,script or recipe is resp=
onsible for creation of this symlink ?

Thanks & BR
Kerim


________________________________

This message is for the designated recipient only and may contain privilege=
d, proprietary, or otherwise confidential information. If you have received=
 it in error, please notify the sender immediately and delete the original.=
 Any other use of the e-mail by you is prohibited. Where allowed by local l=
aw, electronic communications with Accenture and its affiliates, including =
e-mail and instant messaging (including content), may be scanned by our sys=
tems for the purposes of information security and assessment of internal co=
mpliance with Accenture policy.
___________________________________________________________________________=
___________

www.accenture.com

--_000_8e9ed5eb75ff4a4790b59bcd1f310724BN1PR42MB081048dmgdmsft_
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
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"TR" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Using IMAGE_INSTALL &#43;=3D &#8220;kernel-image-zim=
age&#8221; or IMAGE_INSTALL &#43;=3D &#8220;kernel-image&#8221; inside my i=
mage recipe, I am putting the kernel inside of the rootfs (/boot/zImage-4.4=
.52).
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">However, the symlink that is created by default, poi=
nts to whole path instead of relative path (It used to point relative path)=
. The problem is after bootloader mounts my rootfs partition, it loooks for=
 kernel (zImage) and gives error because
 there is no &#8220;/boot&#8221; path.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">$ ls /boot <o:p></o:p></p>
<p class=3D"MsoNormal">zImage -&gt; /boot/zImage-4.4.52 &nbsp;(what I want =
is zImage-&gt; zImage-4.4.52)<o:p></o:p></p>
<p class=3D"MsoNormal">zImage-4.4.52<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">How can I modify the symlink creation; Which class,s=
cript or recipe is responsible for creation of this symlink ?<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks &amp; BR<o:p></o:p></p>
<p class=3D"MsoNormal">Kerim<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1"><br>
This message is for the designated recipient only and may contain privilege=
d, proprietary, or otherwise confidential information. If you have received=
 it in error, please notify the sender immediately and delete the original.=
 Any other use of the e-mail by
 you is prohibited. Where allowed by local law, electronic communications w=
ith Accenture and its affiliates, including e-mail and instant messaging (i=
ncluding content), may be scanned by our systems for the purposes of inform=
ation security and assessment of
 internal compliance with Accenture policy. <br>
___________________________________________________________________________=
___________<br>
<br>
www.accenture.com<br>
</font>
</body>
</html>

--_000_8e9ed5eb75ff4a4790b59bcd1f310724BN1PR42MB081048dmgdmsft_--
