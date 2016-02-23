Return-Path: <dwatkins@sierrawireless.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0954E00D78; Tue, 23 Feb 2016 15:25:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.100.57 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1051 seconds by postgrey-1.32 at yocto-www;
	Tue, 23 Feb 2016 15:25:33 PST
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2on0057.outbound.protection.outlook.com [207.46.100.57])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DA5EE00D73
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2016 15:25:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=SierraWirelessInc.onmicrosoft.com; s=selector1-sierrawireless-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=/epud0auzSGY9eWU7GpjQAlwJtMX7cArp3DNuuId/Hc=;
	b=mrTeN/cJ0Nu/yQVNAS3w9Jqc7/XM02bKpbsTBiy9xURJLlYdhQ99q7uuGzEhyj72NtKnQVVISU2PCR79EvZfCg9b9cxtVZQ37RhSPrnjpzTArotnvTy43/AyrrbHseINAqWxwAyeTJ0dOF1Kzjqd+l8u7nC3K99g72Mntz1ahMs=
Received: from BY2PR02CA0077.namprd02.prod.outlook.com (10.242.32.35) by
	CY1PR0201MB0906.namprd02.prod.outlook.com (10.160.164.150) with
	Microsoft
	SMTP Server (TLS) id 15.1.409.15; Tue, 23 Feb 2016 22:52:51 +0000
Received: from BY2FFO11FD005.protection.gbl (2a01:111:f400:7c0c::153) by
	BY2PR02CA0077.outlook.office365.com (2a01:111:e400:2c2a::35) with
	Microsoft SMTP Server (TLS) id 15.1.409.15 via Frontend Transport;
	Tue, 23 Feb 2016 22:52:50 +0000
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
	BY2FFO11FD005.mail.protection.outlook.com (10.1.14.126) with Microsoft
	SMTP Server (TLS) id 15.1.422.5 via Frontend Transport;
	Tue, 23 Feb 2016 22:52:50 +0000
Received: from carmd-ed-n10973.sierrawireless.local (10.1.64.103) by
	CARMD-EXCHHUB01.sierrawireless.local (10.0.6.2) with Microsoft SMTP
	Server (TLS) id 8.3.348.2; Tue, 23 Feb 2016 14:52:40 -0800
Message-ID: <1456267969.27839.3.camel@sierrawireless.com>
From: Darcy Watkins <dwatkins@sierrawireless.com>
To: <yocto@yoctoproject.org>
Date: Tue, 23 Feb 2016 14:52:49 -0800
In-Reply-To: <56CCD461.1060505@windriver.com>
References: <1456255515.10581.2.camel@sierrawireless.com>
	<CAMKF1srU_Ewx1HzMHv+AQNhHeoy3b1L1bRvBaZ8556a8+7NLew@mail.gmail.com>
	<56CCD461.1060505@windriver.com>
X-Mailer: Evolution 3.12.11 (3.12.11-15.el7) 
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Microsoft-Exchange-Diagnostics: 1; BY2FFO11FD005;
	1:Pk9bfxSV74EBQTVWEMPmNLSK/6d6Qj+WUkWv49KW1O3XUmYvTToSroKEA3yBGdsosgi/+umk+KizYv74aNlIcgvr2dUFTydPDILXh8Dl/BrkKmJl54PAm1lSmhgfEUf1UbOHCFhTh2GhrcghCXNFIqTS3Pnl6kJzUOuauwRYabA027E1uVlMPRYvfcDlQBM0ZxIxiIia0A6rCFsktj7R3Y9BTj7yh/xeAQw2eO7v9SUNwu6nU0Yx6Qqaa75J1dL6fyll3lEXXs9CcClfAZFqXUdHXcj74Pxwv9L6DsKYGTOzj12y1bLxvC8b3NSxwUopROiTRb/pHfX+dGg6cbFMPTUI1r3ipikwJtm5bccZiVt6iO6HYO8Z391u706vUeUKXSKc48ycrh6SwnEGzM8UzphbI/tww9AvyziGtdQ+e0I=
X-Forefront-Antispam-Report: CIP:208.81.121.44; CTRY:CA; IPV:NLI; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(6009001)(2980300002)(438002)(24454002)(189002)(377454003)(199003)(377424004)(479174004)(50226001)(92566002)(2351001)(33646002)(50466002)(77096005)(5820100001)(106466001)(103116003)(450100001)(104016004)(2950100001)(11100500001)(76176999)(6806005)(107886002)(50986999)(189998001)(5001970100001)(87936001)(23676002)(230700001)(1096002)(47776003)(1220700001)(2906002)(5008740100001)(586003)(36756003)(230783001)(86362001)(7099028);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0201MB0906;
	H:mail.sierrawireless.com; FPR:; SPF:Pass; MLV:sfv; MX:1; A:1;
	LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; CY1PR0201MB0906;
	2:rcImG1w9G0t4N/RNaFb52V2267/A4eZJ+/bAe5KVGU/usbFTx5xUUHElzQuC6lXo5gETl/CcGS4DC9sTzDzXoY33F6ib9/aSa+9KRae9MwY7R0hRKHZ308D9ocGIFH8HA2LcssUA9qJxnu2xFNHZZA==;
	3:+ulBZzpOEhCE5sKbS/QhH9IqW/R+KYKk5M2rtTLoTDADoPrSYnxEYLnLmtnkAFFWZcqjuH1R3g2Q6IXtCBbOTBFUHG0od10xdyD2ixRaJ6Wl7aCmkh+BeSXYP9v9RkC/3764hRaspG36Rs+6e5B+aoNClWvddY4Wn2haZfjaa1W2FvU7xAfYfj0/PkxKyA3OjWw7fpR8QWeuELp9r+1v4pWdsjdkMldgTnyDIb4xj4lzGzwRxQVI4T3TY7Sh2yq27DTjVCIcDGgDWfKl0lRoxQ==;
	25:jZmTgnqWEwqBeknB4jSszpcmIp26DHzbzuQRWshg18XERncM0Xpsf0JZufu6P6d5kIWIgOioBUuH48y59cSFObLTM6txcNuJRdshGClIjnRl7reW0yYdNUn/H6pjVTWdXk3/rkPcejd2K36klpDw7rhZMq32b8l6+3IeUVaKXNrlgkMI/cj7z9oNZ9VSM6+2H2NxT4l/dEskspC9MMo6Rik7nT9EgZbEI8Q2k3fcr4+7PjAHF3ITIM79m1MQMboiG/Yw6Qq4iUg1+ivNoWhLmuMjU/UELlKnoJfmxA6iww6YXeDjEpWGM7wisu3zneaep7ohwT1gCE2NmyjxaSANw+b3wZRjRBy/ZvfKBdePcms=
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0; RULEID:(8251501001);
	SRVR:CY1PR0201MB0906; 
X-MS-Office365-Filtering-Correlation-Id: 99195fa3-c699-4e40-5dd8-08d33ca40e68
X-Microsoft-Exchange-Diagnostics: 1; CY1PR0201MB0906;
	20:SiDpMjmeDPtBO+WMbPbX35tQA1TzEV8yDm9u+LU643Kt5tgQk3PA6HofFanfKuXP0Rxr0sdOl//skNtl3j0WZdv+IeuqaqyFRymyDQ8Ugj6zADVnKP6QphrPUFVcO832XqrOZhTa/WzEvZP6U0S1aIuC2gbmOs/q0Q50xlBbHGgh2pIy5VIjRMxgDtX2Zp37zsVZhEhAnPsuZRlqTCsRzPitDNGN19hznIIaj7w2dpBdtPE5/8IWvf5odmfgJEO3aoiOQT98WRgnW1v/J1/BUoF7VlXphVPUjx52tYwhN3T+Uhbl0MIHL83HMBrFUL2Ft1LjG/P3hgBIXO3oOKwPqvoAOGGiC75FbLEY1sas3preTUVkMGhfBRCP7ITWTh/bqHQk2q95eOb0aIaO8Mt/j+WgmkP06pXh2WUdObF11EzvmzIvwWM04bbh4D2dVTOpCSBELM2H7wVZxwbkYkDU8nS3hqnCzqdO1BOU+vgw23l4klTKKDcjP6v2+Y5ES5T4
X-Microsoft-Antispam-PRVS: <CY1PR0201MB0906997D0EB6BAE42DFEC9BDB2A40@CY1PR0201MB0906.namprd02.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(13015025)(13023025)(13024025)(13017025)(13018025)(5005006)(10201501046)(3002001);
	SRVR:CY1PR0201MB0906; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0201MB0906; 
X-Microsoft-Exchange-Diagnostics: 1; CY1PR0201MB0906;
	4:kfBX5NUHTYLauhNJoCRe0NnAHH/d2qThz3Buk+msUHOi2gzIqlT/8cPVBYbJ+ieC2Mj6EVL5Xgu1c1ttVd4H0+XEJtDywWRsfZ0V50jOmEVofkuU8HbDQP4bvZSBmOvvO7CsKYjJLz/qbuqRbCvIBn4gRYEK1to/8lF88P2yWGUxuXkLubX/ct5m2JRkRtSuAXGYsyD6TSqQ0VadILhTK+z+vrptL3tgoqQEgGcKClCbqNWk2qEi5391JA1/BLd+x4IA5vdIk3xVhyaPWd+eY67eAldQR9yg/lsdi1B7eqMBBKNWg8h28C/yHhr/G/92fSXcSC8G5ckB+4OsJlxqvfrWFJ1fC9iIb/W4x+EDkS4X3oGWrc0v7n5MYg7N44jfc4x86HSX7NwHzbrPDjBllMOO01PtkUO/H/LytaPmfnImQ+odScy6zytEn2hziHe6fsvv3I+n1KgA5EflfjZaqg==
X-Forefront-PRVS: 08617F610C
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtDWTFQUjAyMDFNQjA5MDY7MjM6dEFlNkcrOTZ3NmtPSjllcU1jcTdqVUFp?=
	=?utf-8?B?Z0RmQ2pUVXhkSUVEZVo4NEpIZjBQVVhVRmFaeWFGM2VYc3dGL1NCREdpRk4z?=
	=?utf-8?B?dmNDbjlkR3Y5TkFibDNKeENDVExnbGsxZmdxTnFaTENNZDR0YzllMUhkOE9t?=
	=?utf-8?B?aFp2WjMwY0Zxamd3eGZHZnhwbTNpWVdGUHhXK0IwdkZ3dnR6UXEwMzk5b2gw?=
	=?utf-8?B?OUNHUFZLNEJwMkg3ZnJ0Q3Rod3RRaDhSMTRlUXNDejlRdkVqVEtXTUthZUky?=
	=?utf-8?B?OUZ5VGk2NDFiTzdWanVBT1ZvNTNYWngwTEVSem43dkFTd2JVaFJiZS9hK3dK?=
	=?utf-8?B?STluREduMXBTOUNsdjJtMFM4cGR4b0k2RTF6Q0JsTWw3SWdCMExKZDU0RmFp?=
	=?utf-8?B?YmZNaFMxblRybHdPamtNTEFXZExZVTdTc3lDSDZTa0hZNERnZDVkTnkzb2xP?=
	=?utf-8?B?SG9pUHZLZGN3VDRsRmx3cDVZSEZEQWdxcERhQmJaak45UHB2QUxmL040VFZF?=
	=?utf-8?B?TTNQWk1Sa3J5R2VHcXpTSnpJbXJCcWVqNGgxeWZvOVozbzZ1bnFyYWszWFU4?=
	=?utf-8?B?Yit5Q3lsRWY3UDcreEgvUHlPK3dzL2lEODZENmtlVWQvdW9xY05rYmEyOXE1?=
	=?utf-8?B?RFJHZjlkVzdWRGdQT0MrUE5wVzR2WmU4MjBwU0M4aU1lc3dhNFgzQnBFeWlS?=
	=?utf-8?B?R21zaDFBVzZMMi9zbXpoanpiajNWc3FKUXZZdzRMYzVBVWZxUFE4WTU4TXR6?=
	=?utf-8?B?MHhUOGpRVlVISE9sZzZiR2ZyQXlHOUREOFRQY2VDR3ZSS3QzVHZNd3BxSXJl?=
	=?utf-8?B?WVM0dFl4c0QvU3JRS0RHZ2xDc3RwZE5GWjNHTUtPWTVFdlpidXNWZklKT2kr?=
	=?utf-8?B?TFU1TDh0SWhXVUFxZnhJQzlrMHZhaWZrYlhId1p4SzF0MTRYSTcvVEdTMHQ2?=
	=?utf-8?B?UVdPSU9RdEJ5cmVYeE8zOUorZkFDek4rWnhqcU9hWTlRdVZLb3NUTEJnVm44?=
	=?utf-8?B?SGdrVXZqb2Fhdkx6L2xibkRVRmU3cFJjdVZrZHdGd1VYRm9kNmE5VjQwTGYr?=
	=?utf-8?B?M1hMNHB2a1lSaGZWRlk3bi82VkVFWXpMUEJabVFkdEh3ankxTTR3S3Z1MDBv?=
	=?utf-8?B?cXJHWGlLWEJaRWVOMG85Y2tVNE12Vy9XRlFTTjFDejBrL2hFQVNLL1FnMi9E?=
	=?utf-8?B?aUNRNmtsUE9RNCsybmliSlVwNmxWQjFEUUZjQ0V4MzMrQUtveUdLM1k1M1U1?=
	=?utf-8?B?YXpobVg2LzFuQi81UUgvOEdBL2RmUzNRWlpwWlE3VjlienpPR0QzWGYvOElB?=
	=?utf-8?B?bnVrM2Fhb3gyTkl6bGxWS3JlTktHOXlJbGRDak0zZlJIN21EZE9wS0R1akVT?=
	=?utf-8?B?QUYxU3VNclBBYlFzQWp3NXFreGRPaERraG5DUkg0eWVraGRMTlhkSy9DdjV5?=
	=?utf-8?Q?lqKUzADLSCZ/EUrQpPQVd6ACuc5gy?=
X-Microsoft-Exchange-Diagnostics: 1; CY1PR0201MB0906;
	5:LCE3kFe9jkcxNgUNy7Zcttgh+qV/bqg4dTV0YCgpE3L+02dDCa6iyGpBEK6oL3gAWtvlFo4bbd7pZ4/l3sqygkCMrL3uP5qDZQALCG8UtzNL7m8mDkuA7qXZQhASQTSbz1XLdp7fCdhv/R0fKOyeSQ==;
	24:Nuu7U3zbcpml/a7BI0Ygm/YdBjVx1y6gOJiA03itrlCBNVz3ImMNd2fNgdK30qZ3PMsUgga5AKLsnsxwyeY5Gd1MavH9QW1huqCaz5vEHlM=
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: sierrawireless.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2016 22:52:50.0899 (UTC)
X-MS-Exchange-CrossTenant-Id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=08059a4c-2486-43dd-89e3-3a747e0dcbe8;
	Ip=[208.81.121.44]; Helo=[mail.sierrawireless.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0201MB0906
Subject: Re: Does CVE-2015-7547 affect eglibc?
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
X-List-Received-Date: Tue, 23 Feb 2016 23:25:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2016-02-23 at 13:51 -0800, Mark Hatle wrote:
> On 2/23/16 1:53 PM, Khem Raj wrote:
> > On Tue, Feb 23, 2016 at 2:25 PM, Darcy Watkins
> >> CVE-2015-7547 glibc vulnerability has been published as affecting glibc
> >> since ver 2.9 (fixed in 2.23 and patched in 2.22 and 2.21).
> >>
> >> Anyone know if we need the same security fixes in eglibc?
> > 
> > yes you do. Eglibc was nothing but glibc+few fixes.
> 
> Yes this affects all eglibc version 2.9 and newer up to glibc 2.23.
> 
> As far as I'm aware, this affects all Yocto Project versions up to 2.0.

I will be interested in knowing which Yocto Project versions will
receive the fixes.  How far back do we go in matters like this?

Thanks in advance!

> (The patch referenced by the security announcement applies to all of the
> versions of glibc I've needed to apply it to for my customers.  A few per-line
> tweaks might be necessary, but it was fairly easy.)


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


