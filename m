Return-Path: <dwatkins@sierrawireless.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1BA6E00D11; Tue, 23 Feb 2016 11:41:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.111.54 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 933 seconds by postgrey-1.32 at yocto-www;
	Tue, 23 Feb 2016 11:41:06 PST
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bon0054.outbound.protection.outlook.com [157.56.111.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76452E00CCC
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2016 11:41:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=SierraWirelessInc.onmicrosoft.com; s=selector1-sierrawireless-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=Q/Gvwxa7eL3jo5E3l4GnejJkfhxxUDDj7LB5GUf5zEE=;
	b=bnmUj3TIMkaVCdks84kLSRkBqwnWgGRn42Q2zDJTYBgpp3WOIDzq31lS+7yzgIWlFC8Wy+Jf21BzcLdXFo3H6SQXhqYqzEoBi36JXxRIJcFRuiSdDRSoFUne2GQiCsEih9v3IOltJBvD3SrkpbNFSunCPLgQL7tnEdpgLs7z48g=
Received: from BLUPR02CA059.namprd02.prod.outlook.com (10.160.23.177) by
	BN3PR0201MB0881.namprd02.prod.outlook.com (10.160.154.14) with
	Microsoft SMTP
	Server (TLS) id 15.1.409.15; Tue, 23 Feb 2016 19:25:31 +0000
Received: from BY2FFO11FD017.protection.gbl (2a01:111:f400:7c0c::174) by
	BLUPR02CA059.outlook.office365.com (2a01:111:e400:8ad::49) with
	Microsoft SMTP Server (TLS) id 15.1.409.15 via Frontend Transport;
	Tue, 23 Feb 2016 19:25:31 +0000
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
	BY2FFO11FD017.mail.protection.outlook.com (10.1.14.105) with Microsoft
	SMTP Server (TLS) id 15.1.422.5 via Frontend Transport;
	Tue, 23 Feb 2016 19:25:30 +0000
Received: from carmd-ed-n10973.sierrawireless.local (10.1.64.103) by
	CARMD-EXCHHUB01.sierrawireless.local (10.0.6.2) with Microsoft SMTP
	Server (TLS) id 8.3.348.2; Tue, 23 Feb 2016 11:25:19 -0800
Message-ID: <1456255515.10581.2.camel@sierrawireless.com>
From: Darcy Watkins <dwatkins@sierrawireless.com>
To: yocto <yocto@yoctoproject.org>
Date: Tue, 23 Feb 2016 11:25:15 -0800
X-Mailer: Evolution 3.12.11 (3.12.11-15.el7) 
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Microsoft-Exchange-Diagnostics: 1; BY2FFO11FD017;
	1:yZ5w/GJYxMsbYhmbqOBFtWZn7mrDj3JGxGZRcCnhka9Rz7/eLFKsl47Dcu9sASECMaWxFqmcH9gJCg5E2ZzrvHaZDxlDv5AsILu2qfzngQ/ks4sSVGriFoCNYxM/aU7xdIXLSwyq072bqdbJf34e5gAuPwKT1Hc1/RiIyt67qjk2+r/QhKG6WAq1wVegCx/U5E+9wyMUY5MyKLQMB8iN+qOsR4tUF+dExi+9NkGu099G00FW6lglyMacDwJ9kf6tmmT9DvritpiNREFrMn/IbXj1g12TfYMcmG1N6CSwJDLrnFS97NIVPr3GmTDLH33K78pUF9lrpCh7yF/rm4q9nAtd0YhqHnfyIsb20z7HbHZvE9Dm8Mqg0s2xDXAx2QCAJxWm08DgJDi//GKnalC5mzRqAi8y4UJ/FnsRUExRsVc=
X-Forefront-Antispam-Report: CIP:208.81.121.44; CTRY:CA; IPV:NLI; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(6009001)(2980300002)(438002)(199003)(189002)(87936001)(23676002)(50986999)(6806005)(11100500001)(189998001)(107886002)(5001970100001)(36756003)(86362001)(230783001)(47776003)(586003)(1096002)(230700001)(1220700001)(2906002)(5008740100001)(33646002)(50466002)(50226001)(92566002)(229853001)(5820100001)(77096005)(106466001)(104016004)(103116003)(450100001)(7099028);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BN3PR0201MB0881;
	H:mail.sierrawireless.com; FPR:; SPF:Pass; MLV:sfv; A:1; MX:1;
	LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; BN3PR0201MB0881;
	2:8kWH5R8eUonpxZmJHn3L60HU5LDyHp0xsTrMGa9o6L+nyVe7CaYc8VgoD4lEca4zaF/X/tHyMf6KDzvJ+mVfZ2OxVZgSCSdk5iKmuvWNEYYNI8j+PoOEt+Q9HvEEb1bm2HTMM6Kqa7HFbcuJ3rxYrQ==;
	3:72jbJtjEPYpUrmQj5Zg44SiZNfJZJZTuqVghENzBknDEXfTY+H4ZsZSUQFPVcCRpMCkju93/aD7bN94BkEDRZXnTizlZkz16EWljh8QMT0MGNfDZNhUs7xb0yasFzl17PoJQDm6RtPV75FuSxyHQRw0fJMdkz/9XBFZokQOuq6PgGFzyrpKO5xcUxgyiuW0u0owP4/+eMfCuz7tWmC2/JI61Dpg4GFKma4UsM60fFisCRDTO0CVH9zSLCfIikAcM46E1KbKy89rZrNwQEFgwxQ==;
	25:1etidncXvFSWHCNTSZzKiQsVihYK9MS/xRd2TcwGokJxcFAuFh5RuvBr9bOotfUaYWt6mPgR/dB2d72PexKsBTiDO02mSbigI+PDJN7+LxIgIW1oS49rtuAZRQHlm+cyJ5VmyUB2XL4J3KVIcIXHkEaYdtyH4ovVQqa+cYiPFm720hgRNPFrzvTY/eYZ8GtWS11NQrbiBtoKfxvFPQEWIXNLNynPho6QPk8lgI/K/BBZ9x2nNVLPqGEs0zBZqrIu4vT15LI4/wHTLpTwPTeDjeTtHeTbhhc76EeomtTct6xDPRhtHv/O/DvMkOckYSst7fnbpvn8aoPtrgIYJhaN3oIvhH5hvLLByV4lnpiU5KI=
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0; RULEID:(8251501001);
	SRVR:BN3PR0201MB0881; 
X-MS-Office365-Filtering-Correlation-Id: 0f3f4820-67cf-4596-d5da-08d33c8717c6
X-Microsoft-Exchange-Diagnostics: 1; BN3PR0201MB0881;
	20:x+ur08PTjuMw87mPoSZOHnT/Pc/lqg2xo5nIWeK2LnIrZnw6xhDbXqTidU8NcQpx3Kl0/jJ93QQr8uOJdVk8mFdkZQiuugUsHA2mg3jbU8MPhTMEElHLurCXaGGUJ3rN0ptILv/jrlaCeE56wVpR3WhCtctE5d5iGo//Pox1VkwoJTwJ932vJ3HRGb9B8Nl4mAfeBnBXIxmXPnwf9YGSo2fK6vtQZQGQah1RQzhKSd3TCLkSJOS733vNUuRunm5PAc9stm8vkOSqvWvg6CiZxXlFOpn0zIb6JIurjem1U97bMn9s8hO00n/tMSI8QBkqp/Jmr5/KAKfP3g4/90jx9J2Kpl49zYo0mShlZEqIlIKHmGXAQ46E7XALZEIpt0W6IFdB5cj3E0udPhIyQLw+o4H0Z3iH+vTcQ/oRCSbLGRI7LPrjcukN2X1QU37Ec8dbj0SoAZr+O2nOy8R4aBk9abqlSXajGG/hPqmT3QNk6AzDsQc+qPiy9NZlJI+iPmuv
X-Microsoft-Antispam-PRVS: <BN3PR0201MB08817909AE54D56C6E40AF46B2A40@BN3PR0201MB0881.namprd02.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(13024025)(5005006)(13018025)(13017025)(13015025)(13023025)(10201501046)(3002001);
	SRVR:BN3PR0201MB0881; BCL:0; PCL:0; RULEID:;
	SRVR:BN3PR0201MB0881; 
X-Microsoft-Exchange-Diagnostics: 1; BN3PR0201MB0881;
	4:taoyUWXRUbyCLpM9/iJpNoFTXSG8bEkTzUUoksobJtMbc3fcOICZX6MiWaUcBYUBPFzSfLVIUl+7acRBZU09uDBIt7ByLi0yOVBC2Gk9dIhkMXhHNTvtoqc86fFUGuopvXVe5dNzlwT4Z6RzYFeKTL7sL9yZtAJtkCOpAQoYYRUU+f4GK6tLhQAIJ04UpkExpWkqQHPHmrkz4WgDp3zf6xCXmHKB1F4590aCpSLABNg+lW0EfD31yBNG8J7H2tbANh/h4gtbB/WeOIA71+nLyCvoRmlALKhM1HLmN7seL4bCs0J/ktK7stWoLTBTU6UC02hNTIDeM1ZBcarZf5UwxpHnaHZbLHGgwc38EigVIcBqMy3754wvGt08iCaNG7bnEE3b0Yy2aJyZVmyGoKM/NXVKz6ls0bxft25Z6rfSe+YebTpR+n1kIamtMrcSVQRFdxtmA9SApO/QIEF8n6Porg==
X-Forefront-PRVS: 08617F610C
X-Microsoft-Exchange-Diagnostics: 1; BN3PR0201MB0881;
	23:vbXFJtKUGfBRjcudcAT2w1TOCEePMfxH2aOWpfdi4y4x8RmfKjk4SBVwF/Qu51AIwrA/ljPqB90yX4SkRRVR+b96locwJY3qYITR/e8T29TfAlGExZtzdIJ7MjlORTdbN5SZQJ4YUFAkv5t2wrLkiFnl79JJNsyt6QzW6tdw4Q3Yf/FmoJl5jK8iBeF9yJb0wlLzrQs/rsJSJVYu/RUqvRZmy9vVmf14d2BUw2XDeO+8QTSMYzVYCiBvq8zNWGzWoauG1xjEM2BWSNT7iJXpmKkDa1W6B8eS4gnnZElI/PTf3YVpxMd0KWoDrsOuNVti4uiZA+bVrhcvMi+SHcyS6Z0jCFQ3tJ2WpYCznBFF9YEA5xAVvDJ9H8Ei5ub/AposZCAVgp2hbly8LrCdbJfVwhLwIjBo4ybvfUVgdekcW5xyHSxlMTmMAZCL4IF8WhI5VVX+p/imqbvIvOFRWWk3I5yuL6xTWhtVmtPib+tivhnvk3RoKIUq9jcRn0KeOyXCu5DmtdQBeTY59w7VfxML07FWh/l0wfvRV+BoxPt1XAImVarfThslrn3QKY5xRrMfy9NYs5U9E2B9udCZ0sGgTyX7KeAkJf2BIPKlNTE35ccEDYowx6QOI1KL70EM8bwT4Kso6KsPeTqEAa5R+vhEcmyLZaccjV8awEQ2SvQ12qx9KpZta5nzv2X3PQ9JYIZWcKvStpxu+ArLahh63zX9lemoyWHyeSN2pvmg5Zuguv6Vgh4hIMNjwXufxWGUAsHIZxd1BgvAJ+lSf5WAuSdpiuyJpwasucbJe4x4iJ7Byl84xRgQuK0IR0Ms1v/AX9Eokv1ame0/M0NIc/IXx4ZzW4pfc+yPTQEjLa1B4pusyQP3qBXaNx6iArYFhOwegDU7acst0HRAEit1a41qrDmLZ+krYf3snfySMPCL/P27eFE=
X-Microsoft-Exchange-Diagnostics: 1; BN3PR0201MB0881;
	5:rM130ZDeCZfClbufal+6I3C/yM1OsR8dN+1657OgX8PSjb/S9x9jSdF5ScdS37tu4CEWIGJEjuB4JPTtCeIIsEXpCsVO0WpmhygdyrwbCmcvjsDzPnKtl7GqQ4q7N++CQaEXTibWWZJihP2A7vjHwQ==;
	24:WI9ZO849uTkyqes4+jlbtqiQCGDj/zmUJk2qEnrVZeTclKqsg8heL6yhrMXqHmwwF0z1uTrUqG10FOJ3qJBsFZFka3/jBQyestZpBDqWVzU=
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: sierrawireless.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2016 19:25:30.1850 (UTC)
X-MS-Exchange-CrossTenant-Id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=08059a4c-2486-43dd-89e3-3a747e0dcbe8;
	Ip=[208.81.121.44]; Helo=[mail.sierrawireless.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR0201MB0881
Subject: Does CVE-2015-7547 affect eglibc?
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
X-List-Received-Date: Tue, 23 Feb 2016 19:41:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

CVE-2015-7547 glibc vulnerability has been published as affecting glibc
since ver 2.9 (fixed in 2.23 and patched in 2.22 and 2.21).

Anyone know if we need the same security fixes in eglibc?

-- 

Regards,

Darcy

---

Darcy Watkins
Staff Engineer, Firmware
Sierra Wireless
13811 Wireless Way, Richmond, BC
Canada, V6V 3A4
[P1]


