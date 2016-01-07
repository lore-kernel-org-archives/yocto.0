Return-Path: <alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3F11E00D0E; Wed,  6 Jan 2016 16:02:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.110.112 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 299 seconds by postgrey-1.32 at yocto-www;
	Wed, 06 Jan 2016 16:02:07 PST
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1on0112.outbound.protection.outlook.com [157.56.110.112])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B173E00404
	for <yocto@yoctoproject.org>; Wed,  6 Jan 2016 16:02:07 -0800 (PST)
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=alejandro.delcastillo@ni.com; 
Received: from [10.2.33.36] (130.164.62.82) by
	BN1PR04MB841.namprd04.prod.outlook.com (10.255.203.141) with Microsoft
	SMTP Server (TLS) id 15.1.361.13; Thu, 7 Jan 2016 00:02:03 +0000
Message-ID: <568DAAE1.8020901@ni.com>
Date: Wed, 6 Jan 2016 18:01:37 -0600
From: Alejandro del Castillo <alejandro.delcastillo@ni.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: Haris Okanovic <haris.okanovic@ni.com>, <yocto@yoctoproject.org>
References: <1451951145-10297-1-git-send-email-haris.okanovic@ni.com>
In-Reply-To: <1451951145-10297-1-git-send-email-haris.okanovic@ni.com>
X-Originating-IP: [130.164.62.82]
X-ClientProxiedBy: BY2PR1001CA0046.namprd10.prod.outlook.com (25.164.163.14)
	To BN1PR04MB841.namprd04.prod.outlook.com (10.255.203.141)
X-Microsoft-Exchange-Diagnostics: 1; BN1PR04MB841;
	2:z1pE/jlqLuk6KOpvMiJ6QzJJQrqfbMUBWK0Vq+689MJmWhOhSaEbLcYExpm6Y+6EnZPKJmc+9vOSe7lLouan4bCl4ANQiyp9/eWmpMdNZ/u5QLjJTbolcmXq28+R2mjrG60XR3qEEnfM36GBXxIEKg==;
	3:WYpP0m4RK6ISDGiLoLuxsYNWNVUdxXg+S+7LWeM7kWPt2Lc/QpybHNCnjYiwj72jm8wAoNWpL4/njy1osSSDy4mAuLxO9SEjIMg4XtpEgwS24x+Ej9pYB5zhD7mFIa/Z;
	25:OQC1p+47RrHgUMOsi8OcJwwmmP6XV9IQ3saVyGB5KpDaB0Z2XGvScljFg6Puk+zyWoro3w+2futMmrM0pf+D2l64WtKFFc76NI3kN3IYNQ3Z7a0+ewc3eBhroDELMO09JSMo5NO7RH9/t86wXuDuYye+91itcq/9zPNTTNtA6N2PAXHDDaI5qXpjTQPy4cCqul1ZPTaGyBZwhLbYwN+U2Q==
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN1PR04MB841;
X-Microsoft-Exchange-Diagnostics: 1; BN1PR04MB841;
	20:fAAeWK+RcYr6iobGWsnN56SAI/p/76VwoyJI2mNCb7wIxEBeNvAVvcchCTZJLziUoERg7spdb6pHRrKMt08lGdftTzMycykZsmMOHWgomyyB+ZHGCMStgvqP1L7c5B/ptqG4W7fayTrXBVKk3gBUPMdTPBRdE2NSqFUL8g/AQ9AcQjl3Vm9scoOeQ1sCK/k0zwYUF3paaRU3LTuqNBDxsYrxZn8EUeyRVRFkA/4tPxe7SSBJNvwhW7ZBqpqYuIN95C3XD4Fnv4mxtOQQtFnMA4b21EatPv4zykURaoFIX9r+Ewaa4R3UlqCWrpI9CzzxTUDzG+llnzfDl3D/fJP/BiMO6KZ2Eoj3lkW9oZJZOiQh94vRON28upd5VLdlzEWXvVIJ+7uJ9UTVKq2R5n7MM3NdOLKM/g7dP/u4C/thGJZ+ODfx+8yNdz7YX4XSEaap5PtEYXCDG0i3Hq8f5qxprdGXDkp0IHR6CD/tdZkJ9v2U+XjQ+rb9Cgyk3iydMnavFLjg+Z6Uju228B6776aBgwB4v5ru3SwXHUWA590ntfCMJq1BOPx/mxf4aL6bFmH1PKdlQlaZX/AIBOggv/1hIlgPUoAmVGO2CuLSZvi/ZBA=
X-Microsoft-Antispam-PRVS: <BN1PR04MB841CC1C36B9F8BA179CEA8986F50@BN1PR04MB841.namprd04.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(520078)(5005006)(3002001)(10201501046);
	SRVR:BN1PR04MB841; BCL:0; PCL:0; RULEID:; SRVR:BN1PR04MB841; 
X-Microsoft-Exchange-Diagnostics: 1; BN1PR04MB841;
	4:PuU1a/1qbPplAwIGCXHSmol2lwi7SsaSnm14Exn++Uuafq8IAVG2T0fjnh2ri2g4OJE18biU28lPdZHnp0Z3cGQNz41uMumd8WNrmYyMiV02dC1H7cwB2sq1Jo7GZ3OVAkk/JW1/QHnP/zPoydPeyPb5ZvWZI4Tf5skrozuB7/qt8airuhznYq7827i59AKNGAQW5Sy02YblyNukOyKqFV0gEs4FCm9yChAxZEqWQeSVMokecH5hDf7+hjGh+L2Tn1Ey3Az210+wGcqMjQ+bJoXWSPtGG5ixFpyNcRWVMtQkBNWRPBLY7xXcX2J1PVGytTUbBMA4fYMER+TlDKhX+EZQN0NnX2sAkHNr3rNiRlTlgzjY41+bUJasthD5Hjmh
X-Forefront-PRVS: 0814A2C7A3
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(6049001)(6009001)(377454003)(479174004)(189002)(24454002)(51914003)(199003)(33656002)(54356999)(76176999)(77096005)(5004730100002)(50986999)(64126003)(19580405001)(40100003)(50466002)(81156007)(87976001)(106356001)(86362001)(83506001)(65816999)(4001350100001)(122386002)(97736004)(5001960100002)(5001770100001)(23746002)(65806001)(59896002)(230783001)(6116002)(1096002)(189998001)(66066001)(101416001)(36756003)(105586002)(230700001)(65956001)(2950100001)(92566002)(42186005)(47776003)(4326007)(87266999)(586003)(19580395003)(3846002)(80316001)(5008740100001)(2906002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN1PR04MB841; H:[10.2.33.36];
	FPR:; SPF:None; PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
Received-SPF: None (protection.outlook.com: ni.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?Windows-1252?Q?1; BN1PR04MB841;
	23:jwPkvEGzrj53LSCf8p+9vkApdIk5As/b1f1rkc?=
	=?Windows-1252?Q?Tb1Yc6kcu0o38YTOYFmOL45O1imLoxaxCxjr4a7wzcX6y2+F5sC8UwZm?=
	=?Windows-1252?Q?1Jcj1XeES+v16Sth8+LUNjYTuCsjC01Xzl5aLFSJ74Q8JhpBuMBXlHH8?=
	=?Windows-1252?Q?MdMMnFlP45LFpgKOKFA7SCBXfr+pmz8E6wYegx2ZZEBkkBO9OS7ZUwwt?=
	=?Windows-1252?Q?9KboUrsK/YnZG5QqDox4X7uvalVlbCTwCQK1BBgh22UXprcwadOgXfyV?=
	=?Windows-1252?Q?Nxgw0lhR7grtjIAtZeQNXdTxaByVMsIZYMxVJ6EAxAodYNKcrsnISlGg?=
	=?Windows-1252?Q?wWAWDqC8r6v1N80nkHlOyhpH6tJm7+gXfkN+0HXh1TlycC1CnbW+Pp+X?=
	=?Windows-1252?Q?DdwkhXZD1waDJHqKNhKusIrp/R4JL5cgOhuJ2/ev+eipUn7YWTgXeHvh?=
	=?Windows-1252?Q?+VZvpfwMmzd3Y78TBzt6Pu9Jp0zgSv6Yth/QieUo+yHvf+m3WbcNv9tZ?=
	=?Windows-1252?Q?7n0m7f+w49TE5EX9P+un2v7u34AFhixX3DLjh6Te7ZAbx78OlYTFKH0h?=
	=?Windows-1252?Q?NjmYKY0KBIm0qXuQNCXfhsVaJlWR04Bxf+TxzIU63hkOB7iJTgHoNe6g?=
	=?Windows-1252?Q?GUqBqvY1sLEqqjPh9VqgDBT1a+P2ObLva/LGPqqYl/q2NRG4O4Xipy7F?=
	=?Windows-1252?Q?UixLXwIsq88tyrrHgTNtL/HMg5vOFnGlWYUm12B+aASHK5UHwsIZfxz+?=
	=?Windows-1252?Q?N7RN3wCPbtiZdalxfFGN9otHtt6h0e7W15RGUnguVzo48ODiCV0mdHem?=
	=?Windows-1252?Q?PuZyH/APpIXtFjQn4WqK2KhYXBMYyoSAGW3pdAAFIMfQasqYfWZ0Ecbg?=
	=?Windows-1252?Q?1TToI6zq3csCgQpruaSHvtbhLaZZqUWv2avjTnX50gtxzH2YfryMncY8?=
	=?Windows-1252?Q?xW8fkarBQxU5bios0d5AGVsmTKeu220ZYj/NAZRbsbTlnBOz8wcc38eT?=
	=?Windows-1252?Q?h4/SOrkWG9FJ2LwA/BMYcWhITSA0AZg0fTz+a1HgBJPSJ7hWPhMJr09/?=
	=?Windows-1252?Q?Goywy+qNy427kR4lsXzmsWc0e5rduOdOzZc+EIOJh5rIxEBD+Yryxg0C?=
	=?Windows-1252?Q?NFd5Jh/i2h/yvHwDVk2IvfPANY6HCv9874/czUdmrwC2Q6UbeBey7iz/?=
	=?Windows-1252?Q?U/fGRNyWf9G/ujiU1HHNXEfpJjKh3P51j3SIQn3Ykl10aiQ7DgsJj5W/?=
	=?Windows-1252?Q?VDPSpQfM8C40Bb5ZWwdSX6oAKJLGl2DguiB0BTtvShTjxYtSm2uXFXNi?=
	=?Windows-1252?Q?oedjmR+FDLriJkpLgmDSL1MUQsnmObAJrQ2y/rnNPgc9Je4++dESXonH?=
	=?Windows-1252?Q?F9/S1xBW+u1lrrPW/tjT3/pyKmHiVwOa/ohg7VA0cf6H2Z3JYLdpSg7q?=
	=?Windows-1252?Q?HslrO2xOtGwwh7wshac4lzBcyUpk1ukYXpk2btb3fqxihY1W3Ox7i6WL?=
	=?Windows-1252?Q?4G8Fs=3D?=
X-Microsoft-Exchange-Diagnostics: 1; BN1PR04MB841;
	5:oLEOMPJa+WqVzZftWKBJP/vSvyNPXfNrkprxpIwBz+k8aA6zwUOwBSx4/LYoja6GFVjb7trrt8EMc1wO9LmoJr41CUEIbHq++Bp8x8ntgGOBT4lX9uBwGYm+QKW5WVm06zqf/Qsoc/PRb1f3B9JIoA==;
	24:hXSgZWHSTUHxh1yVTlBW6YTCnY6UNtpQYf/QWvfwgJ8wbCkp8UDc4WMx7Q1DPvmljE++E+secJrQOE0rFF+wutgMBQXWAo6fp7P+qsVjEm4=
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2016 00:02:03.9695 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN1PR04MB841
Cc: Ken Sharp <ken.sharp@ni.com>
Subject: Re: [PATCH] opkg-utils: Add opkg-graph-deps
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
X-List-Received-Date: Thu, 07 Jan 2016 00:02:11 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit



On 01/04/2016 05:45 PM, Haris Okanovic wrote:
> Usage: opkg-graph-deps [-h] [-o feed.dot] [-u <base feed URL>] <paths to
> Packages>
> 
> Generates a dot formatted dependency graph of an IPK feed.
> 
> The feed is specified by a list of IPK index (Packages) files, which
> are sourced in the order specified to build a dependency graph. Last
> index to declare a package wins, but also generates a warning to stderr.
> 

opkg-utils development happens on opkg-devel@googlegroups.com. Can you resend?
(you also don't need to CC Paul anymore)

Thanks for the work on this, look like a great addition to opkg-utils.

-- 
Cheers,

Alejandro

