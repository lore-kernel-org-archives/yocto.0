Return-Path: <dwatkins@sierrawireless.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F309E00E3C; Sat, 28 May 2016 12:31:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.111.95 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 894 seconds by postgrey-1.32 at yocto-www;
	Sat, 28 May 2016 12:31:43 PDT
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bon0095.outbound.protection.outlook.com [157.56.111.95])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17AA1E00522
	for <yocto@yoctoproject.org>; Sat, 28 May 2016 12:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=SierraWirelessInc.onmicrosoft.com; s=selector1-sierrawireless-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=MLuUibJIhFywXlyPybAZPF7/F0uq1Wv6BItA8xvRxDo=;
	b=0OIbEHPdnML1B9Dh8eWa8Ym8iCsUw1SGCniL8l0+GTad4X0uche9YtNQpgCiU5TSFvhzHesHd60XPOLr5LNkGVNFfKfSK01pyNshr4wFjjzOcKxlapSpEsSM8d6tiliq1Voxe20D1CLiTBBUEohz42OVywXq2LgDdUGZEmY/lE0=
Received: from BY2PR02CA0060.namprd02.prod.outlook.com (10.141.216.50) by
	BLUPR02MB1154.namprd02.prod.outlook.com (10.163.79.156) with Microsoft
	SMTP Server (TLS) id 15.1.506.9; Sat, 28 May 2016 19:16:47 +0000
Received: from BL2FFO11FD034.protection.gbl (2a01:111:f400:7c09::132) by
	BY2PR02CA0060.outlook.office365.com (2a01:111:e400:2c40::50) with
	Microsoft SMTP Server (TLS) id 15.1.497.12 via Frontend Transport;
	Sat, 28 May 2016 19:16:46 +0000
Authentication-Results: spf=pass (sender IP is 208.81.121.44)
	smtp.mailfrom=sierrawireless.com; yoctoproject.org;
	dkim=none (message not
	signed) header.d=none; yoctoproject.org; dmarc=bestguesspass action=none
	header.from=sierrawireless.com;
Received-SPF: Pass (protection.outlook.com: domain of sierrawireless.com
	designates 208.81.121.44 as permitted sender)
	receiver=protection.outlook.com; client-ip=208.81.121.44;
	helo=mail.sierrawireless.com;
Received: from mail.sierrawireless.com (208.81.121.44) by
	BL2FFO11FD034.mail.protection.outlook.com (10.173.161.130) with
	Microsoft
	SMTP Server (TLS) id 15.1.497.8 via Frontend Transport; Sat, 28 May 2016
	19:16:45 +0000
Received: from carmd-exchmb01.sierrawireless.local ([10.0.6.3]) by
	CARMD-EXCHHUB01.sierrawireless.local ([::1]) with mapi; Sat, 28 May 2016
	12:16:45 -0700
From: Darcy Watkins <dwatkins@sierrawireless.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Sat, 28 May 2016 12:16:52 -0700
Thread-Topic: Is There a Package Limit to use of Smart / RPM?
Thread-Index: AdG5FXivH98IxURgR2aWUFSv8V/pDQ==
Message-ID: <8F90F944E50427428C60E12A34A309D24B6D12CAA4@carmd-exchmb01.sierrawireless.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:208.81.121.44; IPV:NLI; CTRY:CA; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(6009001)(2980300002)(438002)(51874003)(189002)(199003)(586003)(9326002)(5008740100001)(450100001)(2920100001)(15975445007)(2900100001)(512874002)(2351001)(2930100002)(2501003)(98436002)(107886002)(551934003)(33656002)(5001970100001)(189998001)(110136002)(16236675004)(106466001)(8936002)(6806005)(104016004)(1220700001)(102836003)(92566002)(50986999)(87936001)(54356999)(9686002)(19300405004)(5640700001)(77096005)(1730700003)(19625215002)(55846006)(19580395003)(19580405001)(2906002)(86362001)(5003600100002)(229853001)(84326002)(8676002)(7099028);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR02MB1154;
	H:mail.sierrawireless.com; FPR:; SPF:Pass; MLV:sfv; MX:1; A:1;
	LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; BL2FFO11FD034;
	1:uap6gLWcZgAd+tQcPhWCv0AvBXvd0ppJrrpq+tBeivIMkLRPdrYiTsjGp1KQhhVH9iO4vr5OhPHvU3etnfzkvTSVo2M9IJdr1OYtKpTvBswo6v9JZWnbfRvgJUd0j1wIy60ewv6oVDUfclpeI14Xx7u65ef6PkwJMYo++z/EwFTKmlg0RrQHs9lUoyGz/F92yJbVdpgfjfH+riieN8SRSj0LxIKRVh3jZMxMSaKvIp7s48oi6KyW9YoiORWwASu+/LGAEV+6UWSst1jT4hso011X6Usvyh3hDDKefqSG63ALS873uixTqfZ/VqrgC07HkONmX257jeyYaMKqRkx+gdiOG72D1H5LS8wL2G6I6JvAw3jdkb0dJERHS2I/ZSyJoPnIIe0JBav5oJZl+5I+VIGHRMMr9NF1isknZZ5ABnK965ne+ry7kZ3ktdkE2lsF3ylpJYl0qo85JMeDpuGpE89MDnMyODPAMZlFo2oiA17o3Pg/2UQB7l2Z3aHqEH7d
X-MS-Office365-Filtering-Correlation-Id: d2dddce6-a8d8-4b77-b764-08d3872c9c60
X-Microsoft-Exchange-Diagnostics: 1; BLUPR02MB1154;
	2:3X9P6NFP23zS9qQCBSlI5LSM458fNfMSL3lWuKlXPWVLP/SYHedBHwxPlDuUifqoy+irSokTyjlnDo0VmlS5XVvzMxT+ID1Fb/WJ3wZNjODTii4xRm8HBq3JdBmmx7Bs28sTCEHfaMyWSnvPP/kkBmV5bCXSO7ImW/eap7tMoiSOi26+L6qjMLlqQJUJlkl1;
	3:XbLdNaRFEcuBA/HxdsbqLQ/d+v9E5Zl1bfWIFqsNIoD/AurmJkdmF5EY8+FDW+iYmd6i/bsW55QMFeYdTMiDVmpJ+OcSNyIHFym6IqGNYiV8k+/8f9lE+A6+uWeTe02NNFJPLNbsyNl6VtnZEdyz7jYQqmAcqtNY4SLKFTvs3Usbc3+7iFDU1JISrUqb79DWcrQ1yKf8AhmrGcH/d0PgfUUqfZk4wqKvR5aAWbt+JLNanPLiI5nV71KHCugJgsuhaFok59eki9RGhbwnOOCvbA==
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0; RULEID:(8251501002);
	SRVR:BLUPR02MB1154; 
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; BLUPR02MB1154;
	25:+TWrthhuFkBY2h36VTxMUaJH4uZNT+XyokSxhWHOb?=
	=?us-ascii?Q?3D7xQBDT8/JQ6u4iW51roRQHvjaCaw8rXZSUJA+SxJy0RKdPQAVnRRV6vrpC?=
	=?us-ascii?Q?eaxKUU+9I2+GTD9XOKR2J84hWnjGFmc2A3M5rrBpLYqI/B/TlfwODN8pbLZh?=
	=?us-ascii?Q?IMx++mVJfkvvDHIQd/khNTUbm76+ygrHkg7hZDKNbE0pvzMGHRwzhdIPCa5/?=
	=?us-ascii?Q?wUrxuT6KkhxeBjYZuBURJQ5+fKtldI/nPBy7J5kSBL5o/HPmZeKgOtBsAn/Q?=
	=?us-ascii?Q?jl0CJ4q/TNRfflbmWWwvifChNLMRNRNxgAaq0RBtXZJd3Dpljxepq68qFdw2?=
	=?us-ascii?Q?0s1Yj0djmbg3D2MHhtavRaSF2gQucPkHTwG2tGcInai5scDcok4u6GqndBHF?=
	=?us-ascii?Q?Eycn+xFfs3D8G10sF/r2zIzRk9D+p+FyjgfWiovvRTlSwzo0hmkH9PLCU5C3?=
	=?us-ascii?Q?xlyaLUhNgJQE8YuGzWtLh2wqdF26sf+5mxKyvxhMUh1x9gmhrJejv9kuYcDo?=
	=?us-ascii?Q?f3HZPLVlKwXnMVmTEQPdzZTUecuNmNYDquLII6Z4x1dNzMS4gy4jtLVxyIiK?=
	=?us-ascii?Q?CwAv3eBrYSCtN6BPIND13A1DNxupVa4i8EgR15yP2MjBXTjjxOd745ENiv9T?=
	=?us-ascii?Q?g91uTt3YuCPvzee2/HgHO6xMtPa0bvkcbYX24HH62DIZ7Xw0sKpLYVg2ehK7?=
	=?us-ascii?Q?m8LGrtOq0hkEB6cE2z/Bb1G6kLn9c9XabWPYHgzuadkp1UT/bNl1uLg/iwQc?=
	=?us-ascii?Q?f63N/tOCT4DVZUcRR/cy+Rsl35/k8ZuXu3gbYmu/HDNfgo+RFNcGWeK1Ma/r?=
	=?us-ascii?Q?cyht8hp9m0DH6oAjm1J+kajFZgt0B4r8OqETLNZ44BdAGubK+XpaS6Qh7bR6?=
	=?us-ascii?Q?PHBgwx1J7yvb0PFV1M6PC5UME043JjYU7/9WgnqCCPoVUQyvMqI2GCl/Egfd?=
	=?us-ascii?Q?sI4T8gZmftvUGdE7+RG5OiJJL0+VivNJ2doj6Wf3nCemxJW2Pbn66iTOjVMA?=
	=?us-ascii?Q?yA=3D?=
X-Microsoft-Exchange-Diagnostics: 1; BLUPR02MB1154;
	20:LV4BeqqagZG4Kwr8KlrgaHQvrBNLgi7Restdxv00vH3ymKL89/ONHnxNBgP3DqpagS0StnL3h3y8BvEqf87Dt2d/lc+IQmeGu+ZuIPO3aMQAuuUopTEIpy9h5JYTBavOsMEPWCQgHt1r9xBjy1sGygwSZSy0FO7avj6ghkXLbhyVi7TEBki+41gPpi6mdC+bfvDqK4/1yBB72mIBGTxf5kk5TSXWM+IyUJqfcYuZRJcz8S7sGZct55uVtPPO6lV+D2MA34J+F0Pgy7n1bTB3X0yLQmpWlawiCfC2E1vUPxqcQBm5Q3U8tk7kiJJlGO2uOVEJxcOL/pfd02K0WkxmhV0a6tb2RTn8v6Mc4uS7NqxdYTQFVDbbZwqlqMC2h9JxAfeA3B8stIXtIdUCy7ZxHHHEsqtJvTIjxNc28BIpoTxXTP3wG132rGWvv1n1LXm/dmnNIuHgcbzt+wfiE1kHgwYCW4kn/somDUZ572Mnzuk/8UerXs8/0/FnVVZ0LHJ9
X-Microsoft-Antispam-PRVS: <BLUPR02MB1154068FE216B15E2197DDA5B2430@BLUPR02MB1154.namprd02.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(219636747203745)(24822713563186)(21748063052155); 
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(13024025)(13023025)(13018025)(13015025)(13017025)(8121501046)(5005006)(3002001)(10201501046)(6055026);
	SRVR:BLUPR02MB1154; BCL:0; PCL:0; RULEID:; SRVR:BLUPR02MB1154; 
X-Microsoft-Exchange-Diagnostics: 1; BLUPR02MB1154;
	4:G6jPzqybwyQWrcyZLhBBjEIfjS3z2Ak9sqVBrXDJG2Ti/TOPdijwJdZrBl2aY0UdNww1EbdWxPZpU5CVArhI5k6VeLyNXQbaeeyKMBKvUvyStm+41YqLp9os+W9dXN2/2EFdP9a2HN7GgvU8A8g76nCSIzsfdI8lGrDjpRfxnLJd/Qm1HhUKntRMmY8H6du94PyaZxD/x6bGI0yEGCtclQLRDHqK4Vy6Yfo0U1Oc3lCoeTF5ps123+e5KGROMPydHcjZQySmMQvi7uSOf/VAMQMDGolsJ3rUunGh0IdwLweIoghXszwTUzLZAn7fNQmB5qoklOcNXX74MyBiSk2tDNd4xFxBnnqPiLQGI8Po1pXDnngmgnJ6N+yFysHm4WH+FdRq7B7KTWeYzxcfY1/TLsdhEFoL7VYCe6ci52rQUIeaEKBhbM+Bya5o+nkPgsQJTUbGkWkPQiZSIM3j1Cefp55f+CD6IhsaRk7siRJlsEbl3uhfHc9AKIJud4I7L2ANZ2wlohi3udV04UWzjrDDFyPVyay+ujwKPa1WMl2U8bc+l6prxpdNiehsmKItkbF9HAqa8KwiBo+ephHlVNL9jQ==
X-Forefront-PRVS: 09565527D6
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; BLUPR02MB1154;
	23:7xPdKgqNMjByQVpwOVIoAUpMe+2iIisvsJ04rK9wB?=
	=?us-ascii?Q?R2958d+EMJGFpA3ATj8TCYkvQjzk9sRy2hGJldbYNhCv84uAA1yUDgl4tbjZ?=
	=?us-ascii?Q?HnSB0pvMdMjRX82jvQlXqoNtXaxLEfnsB7uB2C+HMeBdVYtKF02lp20jorRV?=
	=?us-ascii?Q?8ektMPbS8JhpKrisB7agSULa7IWgMZCB+cKM2ejweYABAZaet7MQei8tLngN?=
	=?us-ascii?Q?jnWzia/tAn99SmNkuu72xxhEHvht7nkXQTUhEpkXS9AAq6YM4a7i3tqVRWmt?=
	=?us-ascii?Q?gBjDKu2jvPfZDNe1xOJxKwejuWKYxMtXmc08efBczSJsWy3Oly2YK5EjS4fU?=
	=?us-ascii?Q?dAbB2yj2ErdNzGheoAthTkMe7Uan7bbrbVgCH8zrJrIJM4gubYv6YYdONaob?=
	=?us-ascii?Q?ZFrBGbS6m90kMY99P8xr2ATYabwXtnHvFg79BFzKJ2VQDw888aBCMyoLf3XF?=
	=?us-ascii?Q?P91V5I5knCntya12qXQiB6/GR0MqzGIzDJcpgFB5MaUa+ot8L4yPEW3bizlm?=
	=?us-ascii?Q?SY4sL4aVgLgkL7LRef8pR+kvcozVidqE3g+oIIgTRxMbps6PwnAh7jeuNOXj?=
	=?us-ascii?Q?n2m6PPhYcTNJOKTi1KGI44MBjKOaNQuRJcnq5/zf4v5p5XphhtbhxnywDPn6?=
	=?us-ascii?Q?JyjGNpW2weXXp4OF/sMferrXcCuS2jl/9ZecMzKvkrCpV060qwNvfHBU/3nD?=
	=?us-ascii?Q?HmadqA7/+IrjkcJjIznHJScA9szLvgiRqUsQDthsN0e1bzbIF575JTjYMKJZ?=
	=?us-ascii?Q?v3mCV1D7h8fYAGPI+OkP/OdwRjax1QL3e0a+/XdKrVkcMLs+63PKNKL5pdYn?=
	=?us-ascii?Q?K59UoFyBdlG3FhARRkvbQqLaWpeutl+++KmSPcUITQ6ez2aIyvx4lfL6EVcG?=
	=?us-ascii?Q?3j1IH+i2RhUJ9u5NBvSgw9WJvQ9jU9srkLdWfvMr/t1QRwXlvivnPHiC3Pbo?=
	=?us-ascii?Q?qMUj+KQqgG46/deJongFHJFZ8ModKFL4Rh31DZaRUvItQ6wGGl8ubK/RmT9X?=
	=?us-ascii?Q?4Wip+kTWarOPLbkth/zNeRJ6URuOWIpek7dEdz/3mXesnjkU94FIJEpGS56W?=
	=?us-ascii?Q?rJBgXZTYuhiqC8XfNwI8u1F+glUIF8eusHcIl1ybca7QuWnMnfUwsMJ9+NXE?=
	=?us-ascii?Q?EK2STyWMFRaty+TpV20qrLtk4R8kJ3z5+9T18jNJzMc1hGDJYuoJgaCknKea?=
	=?us-ascii?Q?lb1LqthatnVVR8A+ubBIDoVmjVP9QDy20Ggec+nZHsYddyj8Ocov+WA2Mrjs?=
	=?us-ascii?Q?R7KwNAd4VNnRw7ppIbIXTLhCXS+JBOUuI8S4gfFbsBh28DkMaQYnQjhUF9Ev?=
	=?us-ascii?Q?V2wYNJUpACrmLkWld7WJXk=3D?=
X-Microsoft-Exchange-Diagnostics: 1; BLUPR02MB1154;
	5:objjl5l49XbGNIrnbteBtYJRyEJoL1eTJV/XbPNhTvNPCVoSs/I8nZjp+FYiBGa5P6spv/XcGtafYFYDNjpAdsOQ4cWZzte2nB8HoMovxyj713xRocty0CzDHlkkUtbis2qKWGLTx0g0JAdjqlFXyw==;
	24:kXGN2jHscrUNVktF8b3mB9VeHT8yYIRglQZ6Mr2j7mSmn/ZuUyIvZq7Q2WKI2w9en9vY6PvWlnP7bN6tNv7k2VaE2OVScwv/5qgddNYcj/Q=;
	7:ATmP78fiozY04vBF66otH6tGq0UYua89IveLZ0Oyk4Pbp/G4IK0aVA25NKHIYybO1By3x2U/guiY2Kbg5utMGwiHp22aP3XLkTKIk9O5AP8bd/wyiaCuGQFidehmX93zg7GRhvMwZSgZOVv/P7rwauNMhWNBw73wrwDXaaqB7yFhYgFYHAolIWUEa4PqkwJc
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: sierrawireless.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2016 19:16:45.6274 (UTC)
X-MS-Exchange-CrossTenant-Id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=08059a4c-2486-43dd-89e3-3a747e0dcbe8;
	Ip=[208.81.121.44]; Helo=[mail.sierrawireless.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR02MB1154
Subject: Is There a Package Limit to use of Smart / RPM?
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
X-List-Received-Date: Sat, 28 May 2016 19:31:47 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_8F90F944E50427428C60E12A34A309D24B6D12CAA4carmdexchmb01_"

--_000_8F90F944E50427428C60E12A34A309D24B6D12CAA4carmdexchmb01_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCkluIG15IHByb2plY3QsIHdlIGhhdmUgZXhjZWVkZWQgNzAwIHBhY2thZ2VzIGFuZCBo
YXZlIHJ1biBpbnRvIG51bWVyb3VzIGlzc3VlcyB1c2luZyBzbWFydCB3aXRoIHJwbSBoYW5kbGlu
ZyBsYXJnZSB0cmFuc2FjdGlvbnMgb24gdGhlIHRhcmdldCAoZS5nLiB1cGRhdGUgZnJvbSBhIG5v
bi1QUiBzZXJ2aWNlIGJ1aWxkIHRvIGEgUFItc2VydmljZSBidWlsZCByZXN1bHRpbmcgaW4gYWxs
IFJQTXMgYmVpbmcgdXBkYXRlZCwgdGhvdWdoIG1vc3QgYXJlIGp1c3QgdmVyc2lvbi9yZWxlYXNl
ICdidW1wZWQnIGJ5IHRoZSBQUiBzZXJ2aWNlKS4NCg0KQmVmb3JlIEkgZGlnIHRvbyBkZWVwLCBJ
IGZpZ3VyZWQgSSB3b3VsZCBzZWUgaWYgYW55b25lIHJlY29nbml6ZXMgdGhpcyBzaWduYXR1cmUg
YXMgYSBrbm93biBpc3N1ZS4NCg0KMS4gIEFyZSB0aGVyZSBhbnkgaGFyZCBjb2RlZCBsaW1pdHMg
dG8gbnVtYmVyIG9mIHBhY2thZ2VzIHRoYXQgY2FuIGJlIGhhbmRsZWQgaW4gYSBzbWFydC9ycG0g
dHJhbnNhY3Rpb24/ICAoUGFydGljdWxhcmx5IGFyb3VuZCA3MDApPw0KMi4gIEFyZSB0aGVyZSBr
bm93biBpc3N1ZXMgcmVsYXRlZCB0byB3aGVuICdzbWFydCcgdXBkYXRlcyBpdHNlbGYgYW5kL29y
ICdycG0nPw0KDQpEYWlzeSBicmFuY2gNCkxheWVyc2NhcGUgKEFSTSkgYXJjaGl0ZWN0dXJlDQpL
ZXJuZWwgMy4xOSAoeW9jdG8tbGludXggKyBCU1AgcGF0Y2hlcykNCkluc3RhbGxpbmcgb24gZXh0
MyByb290ZnMNCkJ1aWxkaW5nIG9uIENlbnRPUzcNCg0KQWxsIGFwcGVhcmVkIHRvIHdvcmsgZmlu
ZSB1bnRpbCByZWNlbnRseSB3aGVuIGEgYnVuY2ggb2YgYWRkZWQga2VybmVsIG1vZHVsZXMgYW5k
IG90aGVyIGZpcm13YXJlIHBhY2thZ2VzIHdlcmUgYWRkZWQsIHdoaWNoIG1ha2VzIG1lIHdvbmRl
ciBhYm91dCBhIG1hZ2ljIGxpbWl0IG9mIDcwMC4NCg0KVGhhbmtzIGluIGFkdmFuY2UgZm9yIHlv
dXIgaW5zaWdodHMuDQoNCg0KDQoNClJlZ2FyZHMsDQoNCkRhcmN5DQoNCkRhcmN5IFdhdGtpbnMg
OjogU3RhZmYgRW5naW5lZXIsIEZpcm13YXJlDQoNClNJRVJSQSBXSVJFTEVTUw0KRGlyZWN0ICsx
IDYwNCAyMzMgNzk4OSA6OiBGYXggKzEgNjA0IDIzMSAxMTA5IDo6IE1haW4gKzEgNjA0IDIzMSAx
MTAwDQoxMzgxMSBXaXJlbGVzcyBXYXkgOjogUmljaG1vbmQsIEJDIENhbmFkYSBWNlYgM0E0DQpb
TTFdDQpkd2F0a2luc0BzaWVycmF3aXJlbGVzcy5jb20gOjogd3d3LnNpZXJyYXdpcmVsZXNzLmNv
bSA6OiB3d3cuaW5tb3Rpb250ZWNobm9sb2d5LmNvbQ0KDQo=

--_000_8F90F944E50427428C60E12A34A309D24B6D12CAA4carmdexchmb01_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6bz0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6b2ZmaWNlIiB4
bWxuczp3PSJ1cm46c2NoZW1hcy1taWNyb3NvZnQtY29tOm9mZmljZTp3b3JkIiB4bWxuczptPSJo
dHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL29mZmljZS8yMDA0LzEyL29tbWwiIHhtbG5zPSJo
dHRwOi8vd3d3LnczLm9yZy9UUi9SRUMtaHRtbDQwIj48aGVhZD48bWV0YSBodHRwLWVxdWl2PUNv
bnRlbnQtVHlwZSBjb250ZW50PSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9dXRmLTgiPjxtZXRhIG5hbWU9
R2VuZXJhdG9yIGNvbnRlbnQ9Ik1pY3Jvc29mdCBXb3JkIDE1IChmaWx0ZXJlZCBtZWRpdW0pIj48
c3R5bGU+PCEtLQ0KLyogRm9udCBEZWZpbml0aW9ucyAqLw0KQGZvbnQtZmFjZQ0KCXtmb250LWZh
bWlseToiQ2FtYnJpYSBNYXRoIjsNCglwYW5vc2UtMToyIDQgNSAzIDUgNCA2IDMgMiA0O30NCkBm
b250LWZhY2UNCgl7Zm9udC1mYW1pbHk6Q2FsaWJyaTsNCglwYW5vc2UtMToyIDE1IDUgMiAyIDIg
NCAzIDIgNDt9DQovKiBTdHlsZSBEZWZpbml0aW9ucyAqLw0KcC5Nc29Ob3JtYWwsIGxpLk1zb05v
cm1hbCwgZGl2Lk1zb05vcm1hbA0KCXttYXJnaW46MGluOw0KCW1hcmdpbi1ib3R0b206LjAwMDFw
dDsNCglmb250LXNpemU6MTEuMHB0Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlm
O30NCnAuTXNvTGlzdFBhcmFncmFwaCwgbGkuTXNvTGlzdFBhcmFncmFwaCwgZGl2Lk1zb0xpc3RQ
YXJhZ3JhcGgNCgl7bXNvLXN0eWxlLXByaW9yaXR5OjM0Ow0KCW1hcmdpbi10b3A6MGluOw0KCW1h
cmdpbi1yaWdodDowaW47DQoJbWFyZ2luLWJvdHRvbTowaW47DQoJbWFyZ2luLWxlZnQ6LjVpbjsN
CgltYXJnaW4tYm90dG9tOi4wMDAxcHQ7DQoJZm9udC1zaXplOjExLjBwdDsNCglmb250LWZhbWls
eToiQ2FsaWJyaSIsc2Fucy1zZXJpZjt9DQouTXNvQ2hwRGVmYXVsdA0KCXttc28tc3R5bGUtdHlw
ZTpleHBvcnQtb25seTt9DQpAcGFnZSBXb3JkU2VjdGlvbjENCgl7c2l6ZTo4LjVpbiAxMS4waW47
DQoJbWFyZ2luOjEuMGluIDEuMGluIDEuMGluIDEuMGluO30NCmRpdi5Xb3JkU2VjdGlvbjENCgl7
cGFnZTpXb3JkU2VjdGlvbjE7fQ0KLS0+PC9zdHlsZT48L2hlYWQ+PGJvZHkgbGFuZz1FTi1VUz48
ZGl2IGNsYXNzPVdvcmRTZWN0aW9uMT48cCBjbGFzcz1Nc29Ob3JtYWw+SGksPC9wPjxwIGNsYXNz
PU1zb05vcm1hbD48bzpwPiZuYnNwOzwvbzpwPjwvcD48cCBjbGFzcz1Nc29Ob3JtYWw+SW4gbXkg
cHJvamVjdCwgd2UgaGF2ZSBleGNlZWRlZCA3MDAgcGFja2FnZXMgYW5kIGhhdmUgcnVuIGludG8g
bnVtZXJvdXMgaXNzdWVzIHVzaW5nIHNtYXJ0IHdpdGggcnBtIGhhbmRsaW5nIGxhcmdlIHRyYW5z
YWN0aW9ucyBvbiB0aGUgdGFyZ2V0IChlLmcuIHVwZGF0ZSBmcm9tIGEgbm9uLVBSIHNlcnZpY2Ug
YnVpbGQgdG8gYSBQUi1zZXJ2aWNlIGJ1aWxkIHJlc3VsdGluZyBpbiBhbGwgUlBNcyBiZWluZyB1
cGRhdGVkLCB0aG91Z2ggbW9zdCBhcmUganVzdCB2ZXJzaW9uL3JlbGVhc2UgJ2J1bXBlZCcgYnkg
dGhlIFBSIHNlcnZpY2UpLjwvcD48cCBjbGFzcz1Nc29Ob3JtYWw+PG86cD4mbmJzcDs8L286cD48
L3A+PHAgY2xhc3M9TXNvTm9ybWFsPkJlZm9yZSBJIGRpZyB0b28gZGVlcCwgSSBmaWd1cmVkIEkg
d291bGQgc2VlIGlmIGFueW9uZSByZWNvZ25pemVzIHRoaXMgc2lnbmF0dXJlIGFzIGEga25vd24g
aXNzdWUuPC9wPjxwIGNsYXNzPU1zb05vcm1hbD48bzpwPiZuYnNwOzwvbzpwPjwvcD48cCBjbGFz
cz1Nc29Ob3JtYWw+MS7CoCBBcmUgdGhlcmUgYW55IGhhcmQgY29kZWQgbGltaXRzIHRvIG51bWJl
ciBvZiBwYWNrYWdlcyB0aGF0IGNhbiBiZSBoYW5kbGVkIGluIGEgc21hcnQvcnBtIHRyYW5zYWN0
aW9uP8KgIChQYXJ0aWN1bGFybHkgYXJvdW5kIDcwMCk/PC9wPjxwIGNsYXNzPU1zb05vcm1hbD4y
LsKgIEFyZSB0aGVyZSBrbm93biBpc3N1ZXMgcmVsYXRlZCB0byB3aGVuICdzbWFydCcgdXBkYXRl
cyBpdHNlbGYgYW5kL29yICdycG0nPzwvcD48cCBjbGFzcz1Nc29Ob3JtYWw+PG86cD4mbmJzcDs8
L286cD48L3A+PHAgY2xhc3M9TXNvTm9ybWFsPkRhaXN5IGJyYW5jaDwvcD48cCBjbGFzcz1Nc29O
b3JtYWw+TGF5ZXJzY2FwZSAoQVJNKSBhcmNoaXRlY3R1cmU8L3A+PHAgY2xhc3M9TXNvTm9ybWFs
Pktlcm5lbCAzLjE5ICh5b2N0by1saW51eCArIEJTUCBwYXRjaGVzKTwvcD48cCBjbGFzcz1Nc29O
b3JtYWw+SW5zdGFsbGluZyBvbiBleHQzIHJvb3RmczwvcD48cCBjbGFzcz1Nc29Ob3JtYWw+QnVp
bGRpbmcgb24gQ2VudE9TNzwvcD48cCBjbGFzcz1Nc29Ob3JtYWw+PG86cD4mbmJzcDs8L286cD48
L3A+PHAgY2xhc3M9TXNvTm9ybWFsPkFsbCBhcHBlYXJlZCB0byB3b3JrIGZpbmUgdW50aWwgcmVj
ZW50bHkgd2hlbiBhIGJ1bmNoIG9mIGFkZGVkIGtlcm5lbCBtb2R1bGVzIGFuZCBvdGhlciBmaXJt
d2FyZSBwYWNrYWdlcyB3ZXJlIGFkZGVkLCB3aGljaCBtYWtlcyBtZSB3b25kZXIgYWJvdXQgYSBt
YWdpYyBsaW1pdCBvZiA3MDAuPC9wPjxwIGNsYXNzPU1zb05vcm1hbD48bzpwPiZuYnNwOzwvbzpw
PjwvcD48cCBjbGFzcz1Nc29Ob3JtYWw+VGhhbmtzIGluIGFkdmFuY2UgZm9yIHlvdXIgaW5zaWdo
dHMuPC9wPjxwIGNsYXNzPU1zb05vcm1hbD48bzpwPiZuYnNwOzwvbzpwPjwvcD48cCBjbGFzcz1N
c29Ob3JtYWw+PG86cD4mbmJzcDs8L286cD48L3A+PHAgY2xhc3M9TXNvTm9ybWFsPjxicj48YnI+
UmVnYXJkcyw8YnI+PGJyPkRhcmN5PGJyPjxicj5EYXJjeSBXYXRraW5zIDo6IFN0YWZmIEVuZ2lu
ZWVyLCBGaXJtd2FyZTxicj48YnI+U0lFUlJBIFdJUkVMRVNTPGJyPkRpcmVjdCArMSA2MDQgMjMz
IDc5ODkgOjogRmF4ICsxIDYwNCAyMzEgMTEwOSA6OiBNYWluICsxIDYwNCAyMzEgMTEwMDxicj4x
MzgxMSBXaXJlbGVzcyBXYXkgOjogUmljaG1vbmQsIEJDIENhbmFkYSBWNlYgM0E0PGJyPltNMV08
YnI+ZHdhdGtpbnNAc2llcnJhd2lyZWxlc3MuY29tIDo6IHd3dy5zaWVycmF3aXJlbGVzcy5jb20g
Ojogd3d3LmlubW90aW9udGVjaG5vbG9neS5jb20gPC9wPjxwIGNsYXNzPU1zb05vcm1hbD48c3Bh
biBzdHlsZT0nZm9udC1zaXplOjEyLjBwdDtmb250LWZhbWlseToiVGltZXMgTmV3IFJvbWFuIixz
ZXJpZic+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPjwvZGl2PjwvYm9keT48L2h0bWw+

--_000_8F90F944E50427428C60E12A34A309D24B6D12CAA4carmdexchmb01_--
