Return-Path: <dwatkins@sierrawireless.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D44FE00D3A; Fri,  1 Feb 2019 14:26:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.73.44 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 14467 seconds by postgrey-1.32 at yocto-www;
	Fri, 01 Feb 2019 14:26:24 PST
Received: from NAM05-DM3-obe.outbound.protection.outlook.com
	(mail-eopbgr730044.outbound.protection.outlook.com [40.107.73.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBC8CE00C29
	for <yocto@yoctoproject.org>; Fri,  1 Feb 2019 14:26:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sierrawireless.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=Uux7DIL9Jn08rrK0F/4dteeIxd93PonnRzSOygRjQJQ=;
	b=fdPTatXCdEjfDiEvXwSeiI5t3SpdDKkQ6YcnTPpljgZSvOOxyhLw2FGoBD7JxQSjDKDh65iB8aQztzEnl2UJspP9ngshwQTVl99fsmNDU2LIo+K/IZRz62hb48Jbpl4xm95ixRtqJiQPBHlCwkLd+iOr9mm1CZZa+tSdj+i1qB4=
Received: from BN6PR02CA0074.namprd02.prod.outlook.com (2603:10b6:405:60::15)
	by BLUPR02MB1665.namprd02.prod.outlook.com (2a01:111:e400:525f::19)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1580.17;
	Thu, 31 Jan 2019 15:51:40 +0000
Received: from TO1CAN01FT007.eop-CAN01.prod.protection.outlook.com
	(2a01:111:f400:7e5d::205) by BN6PR02CA0074.outlook.office365.com
	(2603:10b6:405:60::15) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1558.18 via
	Frontend Transport; Thu, 31 Jan 2019 15:51:40 +0000
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
	TO1CAN01FT007.mail.protection.outlook.com (10.152.122.104) with
	Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA) id
	15.20.1580.10 via Frontend Transport; Thu, 31 Jan 2019 15:51:40 +0000
Received: from carmd-ed-n10973.sierrawireless.local (10.1.64.103) by
	CARMD-EXCHHUB01.sierrawireless.local (10.0.6.2) with Microsoft SMTP
	Server (TLS) id 8.3.348.2; Thu, 31 Jan 2019 07:51:39 -0800
Message-ID: <55afbacdfc53eadf173cc922acf68013e97e31d6.camel@sierrawireless.com>
From: Darcy Watkins <dwatkins@sierrawireless.com>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 31 Jan 2019 07:51:38 -0800
In-Reply-To: <CAJTo0LYaVUuMNkxP9CyNHqWAv7RQ9xtjmAgMw_7q64BJNR3LWQ@mail.gmail.com>
References: <3a07697c3d1d45100ad973bace76455a1988fef4.camel@sierrawireless.com>
	<CAJTo0LYxrsLQJsj3T60VzmKt9MUziEkN5mA0aD6vqd+LEJynbA@mail.gmail.com>
	<CAJTo0LYaVUuMNkxP9CyNHqWAv7RQ9xtjmAgMw_7q64BJNR3LWQ@mail.gmail.com>
X-Mailer: Evolution 3.28.5 (3.28.5-2.el7) 
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:208.81.121.44; IPV:NLI; CTRY:CA; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(396003)(346002)(136003)(376002)(39860400002)(2980300002)(189003)(199004)(51444003)(478600001)(104016004)(2906002)(47776003)(356004)(11346002)(476003)(446003)(6916009)(486006)(966005)(2616005)(126002)(230700001)(15974865002)(336012)(7636002)(305945005)(8676002)(8936002)(50226002)(26005)(106466001)(229853002)(14444005)(77096007)(6306002)(118296001)(246002)(36756003)(6246003)(4326008)(5820100001)(23676004)(76176011)(86362001)(45080400002)(186003)(106002)(316002)(50466002)(99106002)(5001870100001)(18886075002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR02MB1665;
	H:mail.sierrawireless.com; FPR:; SPF:Pass; LANG:en;
	PTR:spf.sierrawireless.com,carmdsmtp.sierrawireless.com; MX:1;
	A:1; 
X-Microsoft-Exchange-Diagnostics: 1; TO1CAN01FT007;
	1:MqTNGmCRnsv6P4W8B40tgxSIf30+DixcFqcS9m7KQwRP6+6ADHMuuQFccLfnhITmBdqyBsB4f1G4h2X1clXwTqHBp9LZ4GAt++F4u/vYkE+0Sv/ivwhS4DqDSo6mUZwZNuOCTTvfzEfI5PBS9so+uw==
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 10a569dd-55d8-4c99-9103-08d68793fdb3
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600110)(711020)(4605077)(4608076)(4709027)(2017052603328)(7153060);
	SRVR:BLUPR02MB1665; 
X-Microsoft-Exchange-Diagnostics: 1; BLUPR02MB1665;
	3:sk0POmKqUJVQnu4eO5NkaAbeV/6/8undH90LXnoX5PKZXm/h2CQvOA8F4hALXsRix+p15U81Bkt11GNZvbtn/Y7gjLnSKI6+V3DlTsevUiSiHGgXcHMQPb5RtfMkItJrtwK/t6tN6aSQ6wCYo4nvMhkDUglRuRTZlvv2shl9SdmtLrjqbPtiiBKQ0smtZ3lP7v/iCayzj5oygo1Tkzan0lfqp9lYK/6NA1ZQUNeVyuC8dgKYmRkEPfCargmN24s9CrAtSfFdQbnWJ1umjl325GPRhJ/StgWRRLYXsE8W6ZXIFSkeQ8PEqTSTQNzyd2R6+F946zMWHz7+IK/PomsUsLo721Jg5GoNxuAdStjrDLr3ZT7MdNwlfplB2qZ3Neqx;
	25:m5yeLHpQGes1xbYTpHMV50vMLVRnNFGZaVLBg9y401PhqhugTq5KgAL4ZT4rcpKF0C1IYkom9YhIIUPCyuXJVyE8eGeld15g+xdN5KBDQDV2Il+kbE8a7PavQ1SgWmnSIBQF4D3CmeIz5eHfFMp1CwiN/4k7pKdWdzyoR1ly2z32WnE8xZ2oEYou87/z6QxNXaQgFYg8EjZ8eEkCBY44elgadhOwfleksE9LhCDcxjvxwfzLU1G0Wq1AniECJl0D0xYNxpt3Uc3WC86Y/BcQV1vbIpOLDQK5MDs3LG9gO20YipInmjNFX8fbu1xbZYg6Ehgy7+cypeis4TJl6XPqEA==
X-MS-TrafficTypeDiagnostic: BLUPR02MB1665:
X-Microsoft-Exchange-Diagnostics: 1; BLUPR02MB1665;
	31:EpbrCQ/l7JjKH4tGL7+mSZejWEsxDsv5hZ4Q3mGTHEoRG5tKOCpaS5YBXUUnXISG6ku7w29DhlL/AegS7GZQvZNGmep7LCUKiDz5Ey7qKSYkkkesC+v7YyBe0enHHoN3KApMB+nQlBNsXweOwwgv46SaK/1SD/k1nMSIN8+tMpkMVVs3kFPKM10uIyHXThNDuZULhFXfqDZdcLBr8B3o4VkrmY6fIBBED3v8zyfrITA=;
	20:ZBQrQUGdgERUVI17gbwBofLi+zOc0qpo1lhngH4RAmX7UkwNCUSOVN+NXDYi8uqGxGQmOLX6OXUzh9jS+W9bKf3geXC2cFPG9/WTPCq85mHhcQmS2/9MMSttO+tSflAa+nzOhury2U4BmMhlZmUoefHwb/GpuoFchwSdSWA2KG3TydP8h/Ok+McbGydD2r172iMAURx5z18esdsLa25YlvVUx5TrRyfV7pE7jfEUPTnJiP6+GNmBaLcEfVYoV/nvsMpy0+aAcQFGsiNkqyM7udabfQFG0znJgef1EtJ12Gn5wQp4ocnD//OhlvozgqCxSFwjc+ZMSi00XXF7E++mPMCt2xOAgQ9yGB5PFsNxvxZDIjxRQMnc2cBhxDfWyMgMFPutFIdBVA+HXiqi6laaLDY7gPiB/MyEYxcqFvNe0wmUxUrvrBqyAKsth+17zAJX+X/TVCNp1LBAFvDh00U9RPBhTtBiUZBShuRhCsZjtK63Y1qYfnCeZ6m4cXw6E1hw
X-Microsoft-Antispam-PRVS: <BLUPR02MB166515DE39EDE8D60A4621A5B2910@BLUPR02MB1665.namprd02.prod.outlook.com>
X-Microsoft-Exchange-Diagnostics: 1; BLUPR02MB1665;
	4:JUIIBpYW2maxxyTCfu07OwvUO4HHcPJ501/6d8kyWBxCdYbQa+YhaQJl97R1IdIaUsNFMV5Tr73thch6/xyjp4VYX8ux1dkiGX+lBJRLl4sQ3RfwMGSDJKugfrRdNVOF4MT5Yq6XF4aDJ5ZaNenowGG80mZuU4C2kSUMZXubcgKgzQPfpTyc1RJHTUTVr2byJea3pIsORQJFf/4F5Lre99PQL9iC0Iy829Wx+ilrbhNP6TgVAG1qutJVWqJZtS6G7wftVSPVXqR1qDyCcJiocjwfggDuAYaNR/hsznkgvJobmAjB3YrKN87X4p1dg8VA
X-Forefront-PRVS: 09347618C4
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtCTFVQUjAyTUIxNjY1OzIzOk1VMHYwaGhXQWRia3ZleXNXME5FbVJVYmxZ?=
	=?utf-8?B?MVpzT0RGbERhcXBJSlJKMCtZRU8wMXZPYzJaQlNFS0Z1U2h5SDE1YVNLd2R3?=
	=?utf-8?B?azhqcWFrSGRLSDdwd0pyTkpMSjJaTWpSTHFTY3IrL01maFE4QzU3emlsMjR4?=
	=?utf-8?B?MDhEVll3ck5HbEx2TVFEbkdlWmo3SEQ2NHJnR2MyQ1l4TEhma2dXd2ROU0Z6?=
	=?utf-8?B?Z2o3d25mMFVuT2JIWnRlM2RUT1F5T1QrYjY0LzgvbHRIeVQ1UEMwWEhYU29i?=
	=?utf-8?B?eGhIYVBSQzUvbUJZTG9jaGUraUNqeG45NmJJRU50NjNMalBWVFh0d2xoZDVB?=
	=?utf-8?B?WGRKTU9tTVZsZ256RHRvaFJUNVJKRzdQeUFtdXhCZERXREdiVEVhN2U3QTYv?=
	=?utf-8?B?QTRVMVlVWHpDOGJXSlBWR2dkaHBwTGlJZGxzZy9yYmFtSncxTUJWTFU2NXNO?=
	=?utf-8?B?RzY2NEU4NWZTa3VCUVMybU9UMW9qeGJmRlI0ZkQwTUZWeHVTSnFtbXBxUEZv?=
	=?utf-8?B?ME56cTA5cllmUUpaeUlNL0k0S3pSalJ6cTB4OG5hWDVXS0s2OS82b3dEeVlG?=
	=?utf-8?B?K1NuTzBNQWdxVER4cFgyZHdiK2tJOXA0ejdtZU9ENGFTbGdMQndJeWJOZndS?=
	=?utf-8?B?UnRrUzFZWVp3azRpY2g1ZUlaQitucWhrV0prajk1Yit1OG9pSk1TTkhjUnAv?=
	=?utf-8?B?cU5zL2w1TmxxR3Evam1pSTVDL0I2VjZsQ0lJYm00ak4vQUdlKzZwdDRiVjBr?=
	=?utf-8?B?U3ZWdkNkMk9NQVU2YVp1elM2MnN1ckN0aFQ4SWdhclFHOHV3YlE5TVcrNDls?=
	=?utf-8?B?MnpxajYybnZZMVJ4WTllSkR0ejBtZE82cHhnTlhNd0Y5cS9MUnlqYkUwWFBD?=
	=?utf-8?B?L0dsRWUzbGZMS3VwUFNpdmQ3VC9Hb0ZaendGT250TTcvdUZVQndMQTJneUIw?=
	=?utf-8?B?aHBxOERmWWxOZ3Y3dS9Pald5NlJNeWx2UHg0TUF1N21HS0VYSFlBY05mZERL?=
	=?utf-8?B?Zi8xZGJ2cGt3Wnl3OU9UTUxLbCtiTVRDZUp0TmRibHRDZ015aERCMlp5dktL?=
	=?utf-8?B?c1hQTk1CMnFyTmI3TDFPY0l0eWlUd1lJZjhKT25HLzVSc2NESVA4djVoa3dU?=
	=?utf-8?B?U04rM2h0alA0QlBlSUwyRXhxSDNpNUd1YVJvdnBIZTR2ZmllbkZPbkpkZnY5?=
	=?utf-8?B?ZllpTlUyejBlbitTRU1tTTM2amFPS3YyRk40TzYwRmdtLzJ5K0lESk1zOXlB?=
	=?utf-8?B?dit0ai9reUdWZk1kYnIzcWJZZlZjbUtGa1lwT0hxR0l5YU0xMFBhSUM5aWFh?=
	=?utf-8?B?b2YrcDBqLzlhTURXM1E1TzhUeXlGcWdhZE9uaWtJK1F6QTVMM0FxQU0wM1RE?=
	=?utf-8?B?TERBOFhCc2dvK1owMTJFZ290UmNid29ZM2lBVmJHUkdSNGdiS1BubFdheU40?=
	=?utf-8?B?ZHVVUS9vdUl3bGZ6MWw5b0R0SUVpK2hibHhxOU5tMEs4UysxOEQzazg0c3Fl?=
	=?utf-8?B?YWJ3Mit3d1VTQTVaazM1alo4cFN5UDk0emwrc1NDZWg1MDg3eVZwWHYvdFp4?=
	=?utf-8?Q?Elmmney3So7U7qhty0P5flLNhYpBp6F0+DmfROrXAFBc=3D?=
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: wvO4WBsXBPpLFwhJ7KXa9OasZYThNXpH3W2h63U5kt5+ECV0nqesrMe1xoQHIw+UwNzchJNQhmvL/5OhMHktaGasTBA//1fTN8zHGecICC6bDPrSfs9HuWxoC9gFXVm02fM+c7rdp7CissL7lQRwoPd7x3gkAx9n5+o2iKuhptVc0gGytgBHXg5ipyU6rIjGHK7ZMNuDd+diGnnZW++OyyJHbUN4y6LihqKvHrF6Bj+zCU1vL4rjDSdbrPmuAq+KcgtfG8OrNpI0222/mpcvrQeL0gsnxQMRHCFaT0vx++4leagHR7T8XzmXGBylTL3D5Sv0hGfEUAyyZtiAwu7dWmaGP2+QYKXgKpIZf9da2wzkRuEKnO/s6uxMQjMR/h3OqL22fn6kniiddJQQAvlDzACV6wQJgvrjnE4aJ3gnETg=
X-Microsoft-Exchange-Diagnostics: 1; BLUPR02MB1665;
	6:GZpXu0p06Yzf+/BvScOcbzyUdPqFGWuVg08pq5oS1Uit2xbjxnAwpvT2hJoJerDQAiczbO9jOvjghoAIraDnjMPeA8UpBpvSwu6645ocXrkoJyd4MGHMrwnUf2bmWkR+uktHTpKaP9q1aDgvYG1TiAO5TPgKjmJFttqE35ubUBBVpFz1MiBOVFYJmt9agVA6DiIqqol+KsP4wCcs4994nwUMLHdF5Fi9Tf6nn3ystB0LEfb3pXLVqJtD5zXW7IkNxz69MNANegu0zCcd6PI2uGhjGOCefpcs5n8dPw4kQwZNfjWr0kgzYTcK2+uIcFKq3etlwlg5nnJrCeqkKtMdH75vy4qhTmHcJ/Flf9/G3nLMOtmqw4GklmXBNzvQ/pTdvffHgcKb1YGJaWga8EPSgMprfM7GZHB4JAHc1s7vJ4sVRH+/qg4LBdQx9YlqUb4kOqfk6cI/PKojOFb3gd1svg==;
	5:TnjfCNqIWBDdMGSAjOWV1oU++kNB2LWqFS/t322x54iituNvgQPZ17UwNExnPn6ebSji5ufpUhZX8RHcQXWAgl/aow1gp22hycCiYti+eDxSWdBJifAOTeQ+buPJA9xz6T2Vz53KKlxpHt0/Y9xLNitb0Dixxw+Uqn8QwnGGRY6Rkfaku9gJYiqaFxzD60u1gpVyVrcwptA1VWGmf2ZcXA==;
	7:5I4zjoe26AqDADPoe0vpyGbay18AByVOiJXgE2Nq/DC/KZXKI+f+lswDP6gakpiyUeQGYJdomAmeOhGVeDdTWduLI32qaD/FZjvGSF6nfgiv2jzAkweMOVbq/YFjbtq6aueORNspa57BfjBy/mYHsA==
X-OriginatorOrg: sierrawireless.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2019 15:51:40.2016 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 10a569dd-55d8-4c99-9103-08d68793fdb3
X-MS-Exchange-CrossTenant-Id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=08059a4c-2486-43dd-89e3-3a747e0dcbe8;
	Ip=[208.81.121.44]; Helo=[mail.sierrawireless.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR02MB1665
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: RDEPENDS and do_rootfs
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
X-List-Received-Date: Fri, 01 Feb 2019 22:26:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

In my case, package A creates groups a1, a2 and a3.

B is actually a family of packages B1, B2 and B3 that each create user
b1, b2, or b3 respectively, but also adds the new user to groups a1, a2
and/or a3.

So in this case, it is necessary that package A first be installed AND
that its post-inst scripts have run to generate groups a1, a2 and a3.

If, as you suggest, RDEPENDS will NOT guarantee this, then I will need
to solve this another way, perhaps by...

agroups.bbclass - creates groups a1, a2 and a3 for any package recipe
that inherits it.

Package recipes, A, B1, B2 and B3 would thus all have to inherit from
agroups.bbclass.

The first package installed creates the groups in rootfs. The remaining
packages just find the groups already present.

So I think that there may be a solution for my case.

-----

I think that this limitation possibly may be related to some useradd
failures reported a few years back such as "ERROR: Tried running
useradd command 10 times without scucess, giving up". There had been
changes made by patching the shadow package and by refining the bbclass
to use file locks. I went for about three years with just the luck of
the draw that packages were installed in a good order until this showed
up. I had backported some of these changes to 'daisy' before realizing
that the groups simply hadn't been created yet.



On Thu, 2019-01-31 at 10:52 +0000, Burton, Ross wrote:
> Forgot to say, Bitbake's dependency model is loosely based on
> Debian's
> so the Debian Policy is a good read for semantics:
> 
> 
https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww.debian.org%2Fdoc%2Fdebian-policy%2Fch-relationships.html%23binary-dependencies-depends-recommends-suggests-enhances-pre-depends&amp;data=02%7C01%7Cdwatkins%40sierrawireless.com%7Ccb4829af452948bfa95208d6876a34ed%7C08059a4c248643dd89e33a747e0dcbe8%7C1%7C0%7C636845287569900461&amp;sdata=WsJ0EjOAI7C%2BurDmAfVMCGb9SEaAWMxy%2F8Xpfks%2FjPA%3D&amp;reserved=0
> 
> Debian's "Depends" is our "RDEPENDS", what you want is "Pre-Depends"
> that we don't (yet) support.  As I said, this is just a matter of
> picking a name and then mapping it into the control file.
> 
> Ross
> 
> On Thu, 31 Jan 2019 at 10:49, Burton, Ross <ross.burton@intel.com>
> wrote:
> 
> Presumably the problem here is that you've a maintainer script
> (preinst or postinst) in B that needs a binary/library from A, and is
> failing because B's postinst is running before A is unpacked?  If
> not,
> please clarify, otherwise the problem is that DEPENDS just talks
> about
> the final solution.  If you want to express that A needs to be
> installed and configured before B is configured then you'll need to
> use Pre-Depends, which I don't believe are actually supported in the
> packaging classes yet.  I know that dpkg and opkg support this, and
> presumably rpm too, so extending the packaging classes is a few
> minutes work.
> 
> Ross
> 
> On Thu, 31 Jan 2019 at 06:51, Darcy Watkins <
> dwatkins@sierrawireless.com> wrote:
> 
> Hi,
> 
> Can someone knowledgeable with the inner workings of the build system
> please confirm...
> 
> IF package B has RDEPENDS on package A
> 
> THEN during do_rootfs task, package A will always be installed into
> rootfs first AND the post-inst scripts of package A will always be
> run
> prior to those for package B.
> 
> Also, if that can be confirmed for 'daisy' branch, that would really
> be
> helpful.  If not, then please mention as far back the branch that you
> know for sure.  Thanks!
> 
> 
> 
> --
> 
> 
> Regards,
> 
> Darcy
> 
> Darcy Watkins ::  Senior Staff Engineer, Firmware
> 
> SIERRA
> WIRELESS
> Direct  +1 604 233 7989   ::  Fax  +1 604 231 1109  ::  Main  +
> 1 604 231 1100
> 13811 Wireless Way  :: Richmond, BC Canada V6V 3A4
> [P1]
> 
> dwatkins@sierrawireless.com :: 
> https://na01.safelinks.protection.outlook.com/?url=www.sierrawireless.com&amp;data=02%7C01%7Cdwatkins%40sierrawireless.com%7Ccb4829af452948bfa95208d6876a34ed%7C08059a4c248643dd89e33a747e0dcbe8%7C1%7C0%7C636845287569900461&amp;sdata=d946J0HFRXZgDiC1QjtumL%2BX4mzpHkhlvuC1J1xEbeE%3D&amp;reserved=0
> 
> 
> 
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> 
https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flists.yoctoproject.org%2Flistinfo%2Fyocto&amp;data=02%7C01%7Cdwatkins%40sierrawireless.com%7Ccb4829af452948bfa95208d6876a34ed%7C08059a4c248643dd89e33a747e0dcbe8%7C1%7C0%7C636845287569900461&amp;sdata=DiZmJr86q5r0i1iVk4Yraj0CB6fXY0Eczkh8HpigJlA%3D&amp;reserved=0
-- 


Regards,
 
Darcy
 
Darcy Watkins ::  Senior Staff Engineer, Firmware
 
SIERRA
WIRELESS
Direct  +1 604 233 7989   ::  Fax  +1 604 231 1109  ::  Main  +
1 604 231 1100
13811 Wireless Way  :: Richmond, BC Canada V6V 3A4
[P1]

dwatkins@sierrawireless.com :: www.sierrawireless.com




