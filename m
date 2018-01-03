Return-Path: <dwatkins@sierrawireless.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09CF9E00DA3; Wed,  3 Jan 2018 11:24:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.82 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3613 seconds by postgrey-1.32 at yocto-www;
	Wed, 03 Jan 2018 11:24:46 PST
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0082.outbound.protection.outlook.com [104.47.41.82])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47524E00D81
	for <yocto@yoctoproject.org>; Wed,  3 Jan 2018 11:24:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=SierraWirelessInc.onmicrosoft.com; s=selector1-sierrawireless-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=RCywEQb55AcFlx/8HjEPAzG2YlhuZPETn0Pc5W80K0E=;
	b=KdztoiGk9Od8UIDv1u00kr2ULDsBKiw1/JVT6ypcWIVlHSE6gTYtcuCKg/KUcqFd3mkkNKyIkWP0KweRSM/2ZUIKhjMFGN1wUTJAqj1PwEnN5nWes0TnXvEMu0rX/pwpnIqI3f9a1IjOeQmp9esRaROY2CE/Xn1RIVqCVofcj54=
Received: from MWHPR02CA0046.namprd02.prod.outlook.com (10.164.133.35) by
	BN6PR02MB2690.namprd02.prod.outlook.com (10.175.95.16) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.366.8; Wed, 3 Jan 2018 17:50:57 +0000
Received: from BN1AFFO11FD019.protection.gbl (2a01:111:f400:7c10::177) by
	MWHPR02CA0046.outlook.office365.com (2603:10b6:301:60::35) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.366.8 via Frontend Transport; Wed, 3 Jan 2018 17:50:57 +0000
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
	BN1AFFO11FD019.mail.protection.outlook.com (10.58.52.79) with Microsoft
	SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id
	15.20.345.12 via Frontend Transport; Wed, 3 Jan 2018 17:50:30 +0000
Received: from carmd-ed-n10973.sierrawireless.local (10.1.64.103) by
	CARMD-EXCHHUB01.sierrawireless.local (10.0.6.2) with Microsoft SMTP
	Server (TLS) id 8.3.348.2; Wed, 3 Jan 2018 09:50:55 -0800
Message-ID: <1515001854.12500.8.camel@sierrawireless.com>
From: Darcy Watkins <dwatkins@sierrawireless.com>
To: yocto <yocto@yoctoproject.org>
Date: Wed, 3 Jan 2018 09:50:54 -0800
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:208.81.121.44; IPV:NLI; CTRY:CA; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(346002)(39380400002)(396003)(376002)(39850400004)(2980300002)(438002)(199004)(189003)(6916009)(59450400001)(23676004)(104016004)(5660300001)(47776003)(316002)(106002)(77096006)(6306002)(966005)(478600001)(86362001)(246002)(106466001)(50466002)(103116003)(15974865002)(356003)(8676002)(7636002)(36756003)(305945005)(8936002)(2870700001)(2906002)(50226002)(5820100001)(99106002)(5001870100001)(18886075002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR02MB2690;
	H:mail.sierrawireless.com; FPR:; SPF:Pass;
	PTR:spf.sierrawireless.com,carmdsmtp.sierrawireless.com; A:1;
	MX:1; LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; BN1AFFO11FD019;
	1:LvOJfHYPAKeGSnF3uIkathr8eVuMdqztD48ssJixwoGn2NTaujmQN57U4ZT7uBNS2GnQtrZxPKwc53t5Ay+ANbYUMVlTd6j4fizHzvvSFuisnmrRa8DZ7bigcrI7P+py
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 26d33593-184b-4ab5-9b49-08d552d27b8a
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(4534020)(4602075)(4627115)(201703031133081)(201702281549075)(5600026)(4604075)(4608076)(2017052603307)(7153060);
	SRVR:BN6PR02MB2690; 
X-Microsoft-Exchange-Diagnostics: 1; BN6PR02MB2690;
	3:YfknyabAboqgvZUYWg8X+MadqI3U9pCNPKEIOuxsTwSj8aelPgdNDsNaQ4uXuI5rwuXxZRAXapRgKj3cBqb3Bqwyjz88JmziSRleo/ukIYPoJfhbIo2qgU6QXI1SY77FvfDX9G5P9BpFqeyyIN/sXw/cDPZNLvsoplqKxrN4/VhjhSA6EoBNxgIcqOCf800V6ojzpCVkr78EODTnug++JQavUq0gysriiP+NPGpI5DotKUC5StznEEI0WrRbVZmJUfWwI4t77vAAl6I913nzigBqfrUDhXoK6x3rH+pKUwSuk8W2EUIgNFlie5IxkyKpNJEtD2nO4ADx9LNXEWS3arCtoCglHhZDEl98MxHRZ0c=;
	25:+crnf0tL6/MIeoSoG9gjOEcmsM3LW3j79AR4/SfHKzEox/aKVfSt1ylyf/xW+m+EGq2ToByL+NWdiGPQBNKqNGKUKJeRu5TYR6vcBcmW99pShIO/Aq4Sxt7mLqkMJa+GRASPO1NDCExLhvlRvbr0Iu1VZ1tpmYO5lHNpnNMWvfPNYoMD3802DgyURNFtOJpQcLe/nGFa0DMqR0cq5joaASlW0nzqIZKCFu5snFArZWX6aop5r2Tir15gDYoFbH4nkWJyd21qGN9BNIHOLRo5SSkwWMaEAQU5tbS9OJLhvW1DDSplfYklDPFVW9JNUw0dV5/i/v3P2WDjoRhPAUZ+8A==
X-MS-TrafficTypeDiagnostic: BN6PR02MB2690:
X-Microsoft-Exchange-Diagnostics: 1; BN6PR02MB2690;
	31:LAZNMjJ4MB7z6bZClN4NCkNN4NKv3QjPUYkmVy3CTE3uZ7OrGTb41tAt/x9SoRSpDg9i4OYRtLUaT3Z39q1mDhA8tK4InjuqhU/SCZhWyoZEhBNxFpyLXma9m8mlwN+Ul+ZJGgUh2AeyWZVtx34mu71nhnFEP7uPad6zr9WKAsh+R1omunHucKF2GXg63EdAY56N3HWg8TH9he6oEAziTeuOshMXZjzFpoN0ySta9Y8=;
	20:ccpdF78yhg2gpkVaA4/Ks6s0vX7UwxpPe55UK6u21GUlNuyG7tMy+4cgKaGk5yC5pCa+mexXa5+pFrWR6BnEE1VpT1JV2cvagzcj57Tyd6Fdug28Dlo694aeVGKp66ywPBN4RYjYCehA9Zt6q1IPuTcIWQN2Zq0xLFDTqvOANjOMGyrIXvjpkVI9+nbREoLRLnuXOn9uxk5O7WQTusgSL6i3eaSKVe4YEuJFCLx/5TltZSI8d9cDu5Zaopo4AnouSR4hkU5gQXseufAQLcn1A1ORetLWZXAdwwoPUP5pPudnoDnAmPDhzlkKtro4OwKG6B3C1XzjEZ/scW+doh7dlYJN4T+cxWDHxlyWnxovBExdZnO4P9cKdFhcRit0rEro2haE2/R7wlrwN4n1FGNays9+0+K3+IA3aI479DcnmKDjti5X2MvAQEY7BJqjCyJkB90K+9ZI3WqtUKUuQb2gb72QDxvJhCgz426f6dCvxBFS8GJkgOftjq9sBssUk8jb
X-Microsoft-Antispam-PRVS: <BN6PR02MB2690EA71A6F50F3BA3A593E1B21E0@BN6PR02MB2690.namprd02.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(219636747203745);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040470)(2401047)(5005006)(8121501046)(10201501046)(93006095)(93004095)(3231023)(944501075)(3002001)(6055026)(6041268)(20161123564045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123558120)(20161123560045)(20161123562045)(6072148)(201708071742011);
	SRVR:BN6PR02MB2690; BCL:0; PCL:0;
	RULEID:(100000803101)(100110400095); SRVR:BN6PR02MB2690; 
X-Microsoft-Exchange-Diagnostics: 1; BN6PR02MB2690;
	4:FbGh7CxBhdf1HfIz6vKsV48kfCzGrdO/wOETCmaqsI6MAvuZC0xPnaXtbxsZW62QQdeaRz3Hu2lJ0NeECCmbXyt0GS2+Re92WGLk4xfxayq5Blu7ZZPCY0/WH8s6guQ7osmjq5ReXQV6rtnQdfvdhv1nB8m/xSeAoYgAknxkubUhKJoL5re6xCEoOSawm0E22L/trIyVgcCAaMoLBuN8PXXEhdinUm6eLVX4sJrjjBzBS72fEpcRRzqnTHJNqIhcAM+B7nriBUkPP/8jsvfHZHJNA0uddnRW1gQWimNHiszXV9AU3uccPWHLa10lv0Q8
X-Forefront-PRVS: 0541031FF6
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtCTjZQUjAyTUIyNjkwOzIzOjcvMXB5eW1kZVBBQklHSjYwb2dtZFEzWmRD?=
	=?utf-8?B?YzNOQ1BiRExuUmdGT3R6eG85MmlybSs3Z1piVjRaQXRjT3RlQjI2dCthVXJn?=
	=?utf-8?B?TEl0WGN4SEhKUUNzZ2ZHZkZta3VXQ0lBTmlzdVpKTWtFd2xRSWIydWVPYVJu?=
	=?utf-8?B?bks1QUFTaWlCMUR6UXBrZHpUSTdLTkhFZFVWbkp1dG5GRHVDYXJsTU9zbGQ4?=
	=?utf-8?B?SG0wNDRxMUZqRS9GMHJKRno2VEQ3aUlmdEhhY2plYTQxd2tkLzRNc3FOU3Iw?=
	=?utf-8?B?aXBKTmpKV0FBM1YzM2ZXcmxHYmhJV3kvMElTVE4zODZNTGdxVFhieUlBSWpI?=
	=?utf-8?B?bTFiVlYvS0JPb3R1S05FeEFrYVMxUkZ2Q3BWTVJHcXIxSE5ZTU5wWGlRZjdH?=
	=?utf-8?B?SzFGNFY0blpDMGlxekRoMXNMbTl2ZHByRks0QVIrWjhZZlBmSk92SmpzemtW?=
	=?utf-8?B?LzZEMk5ETUtOeVhxeElwNmlzcUlJZThicC9YdlBrcmkzck5FV2NacC9qMG85?=
	=?utf-8?B?cG1aYlZ0ZlBCUjRGanRWTmJBbTN3S2UwRkIzZkZnL1RZOHduZy9KaDJsclFK?=
	=?utf-8?B?OUUyUVNFMW5WZVUxRW5wTmJrWXZIM3A0S2d1ZDFyZHBMaDc4ZkJLbVArU0Y1?=
	=?utf-8?B?bGxYOGZEUFN4YVk3MVdVN2N1UHVGb0lWdDljeVhlRGFvSlR4UkgrcFJXY2hE?=
	=?utf-8?B?dDkrWXMwR00xb2xCRFN1MmRGWEFZcyswclE5VU40a3VYTnlGRXpNeEJpSXJH?=
	=?utf-8?B?VXl5MGNPVG5RS205Z1NKdkdxUlI0RmpVekpwbzRkM2dBVkRERzdwbTBMbHlB?=
	=?utf-8?B?eDBicGVzWTNxQXpiZmpNMVdnMVJydmpFVm5URmtPQXl4MWYwaG9IOG4zL3Bk?=
	=?utf-8?B?a2NJRDEybG5UajFWaDRCQjRlQ1luWis2SjFYaW1sN1QxV0JxTHV2eUt3eTFa?=
	=?utf-8?B?WDJGRERNVVBZMU5MWDlJQWtmeDBQQVpZNXd4Y2hZSnJ0NUFvdndLUGhyb3I3?=
	=?utf-8?B?ZUY0SDhLdFNSbjNmK2xKOHNLbVJmbjRLYXdIMkR4L3BnUGlsM3M1alNiUTJK?=
	=?utf-8?B?K0hxeGR6eXdLNzdLeThGazB4OWVUL1A3Uk1kbitEMk54Y1NuTG9LMjNrSUxq?=
	=?utf-8?B?RHF0MnpLa3JSd1BnWkhVNnIvczAxVVVDQ3l0RTREbFhKdGlXU3JQU1BXQlVY?=
	=?utf-8?B?QW1jOGlhUFdLQlBScVBvTkFQZTNXRGJwcENPK3BJSkpObTZjUWVCMUlNdkNP?=
	=?utf-8?B?ck9Zck5xWWFGbWRmeXEyejlTYlEvSDJSMFNmWUlvajZHWkdYZHZMN3lnaUxi?=
	=?utf-8?Q?4f5aPfLu+BsHDyEIQI8325eEDyeLX98s=3D?=
X-Microsoft-Exchange-Diagnostics: 1; BN6PR02MB2690;
	6:MRVioW9G5qxJgeYt7Y8V6BSyDHYIt/mk8wWKOd9RGVWZeMy376WI9VnbR7pm73p12GEFgkDmGnHNVdeaAn+GZ7P0QAKO82Oi+Ec+oVPWeDHpr6telcZ1M13RIOmSvWzLEhDJkOA+4akH2N0CQPKyynDNr0ntL0BaM/NgZTCaTfO7J+eB0VLB6DHB0rm5bB/rpCbLqSSsfXGsmzvdrf4rl+sav7MFuNF+aYp8SA1m74Z0McfeL8UrjxluPmW/oTYZGUjDB5ZNu0M9i077AjOyTrhEHhvt593RBZfeTMbMq4dCjYFc8qUJ3JgxSgPojhKL9H0/c76gGOYbQEPaiFpe394bSnLptZUfIktmj04Pn7s=;
	5:6DeK7aSl7TQ+dYEKTFjxrK9mmpOGHaArjgYsjucX8UrMXshkyv7sQK01o5aSqrQMw+6dSLDR+nOsp1wxit0vjshT0B+8txhnHYAeLtWiZ0iS56anYDa92ztUNlz9RMoEkm7UUUGjocNCY5o+mvvjCp5bc3Z6u50Hvgic9JyzS3I=;
	24:FI0YmydwDAplY0E3cdsVHg0jgeqZKWbLTdLymRjegLWGDzzFgvXB6aroc5SAvg8C1PaXjHnNmxhccT6+qW5Mnt08DeCbo2z/LeTB3v3kLhs=;
	7:E1peB5T7Ud/c9XFfhxwAyHdX/CvTrOIJE0AXqnl8aL2nmxHAg+lw/nM6bnFAQArANfZ1pugCxPX0Fvtjr8Ahc1i+nmq5pD5W9A/ha7J7TgnKAnCn6ft+QUVWh0KwJvYfoTP0Ghi9DlrPuSZLk2LC7cQSLtyaiuUpQqUE7te57dVvK8uAQxGBl4gwwKGNcRzdpNlAJ/gTMaxIcQR3ZlYX3uobuT4iFO8Jj/BQyIHuAvYsbAmyPifvCMoprU799gxB
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: sierrawireless.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2018 17:50:30.8496 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 26d33593-184b-4ab5-9b49-08d552d27b8a
X-MS-Exchange-CrossTenant-Id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=08059a4c-2486-43dd-89e3-3a747e0dcbe8;
	Ip=[208.81.121.44]; Helo=[mail.sierrawireless.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR02MB2690
Subject: Using a gitweb interface as a PREMIRROR
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
X-List-Received-Date: Wed, 03 Jan 2018 19:24:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi,

Has anyone used a gitweb interface as a PREMIRROR?

The idea is to version control a GIT repo by adding the tarballs to it
as needed (i.e. to track the changes, etc), and then have a yocto build
access it using the gitweb interface.

I have tried variations of premirror URL expressions like below...

PREMIRRORS_prepend = "\
http://.*/.* http://myhost.mydomain/gitweb?p=mydownloads.git%3Ba=blob_p
lain%3Bhb=refs/heads/master%3Bf=BASENAME \n \
"

And wind up with non working results.  In some cases, I get the
basename of the tarball tacked onto the mydownloads.git.  Seems the
only way to avoid that is to have the f=BASENAME at the end.  If I use
';' instead of '%3B', the URL gets parsed and broken up by the fetcher
logic.  If I use '%3B', then it results in a "not found" error.  Also I
notice that the 'gitweb?p=' gets escaped to 'gitweb%3Fp%3D' even when I
am able to get the rest of the ';' and '=' to pass through.

Anyone gotten such a scheme to work?



-- 


Regards,
 
Darcy
 
Darcy Watkins ::  Senior Staff Engineer, Firmware
 
SIERRA
WIRELESS
Direct  +1 604 233 7989   ::  Fax  +1 604 231 1109  ::  Main  +
1 604 231 1100
13811 Wireless Way  :: Richmond, BC Canada V6V 3A4
[P1]
dwa
tkins@sierrawireless.com :: www.sierrawireless.com



