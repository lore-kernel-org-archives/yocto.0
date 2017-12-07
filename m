Return-Path: <dwatkins@sierrawireless.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 025B2E00D74; Thu,  7 Dec 2017 12:54:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.32.87 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 4635 seconds by postgrey-1.32 at yocto-www;
	Thu, 07 Dec 2017 12:54:36 PST
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam01on0087.outbound.protection.outlook.com [104.47.32.87])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6150EE00D71
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 12:54:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=SierraWirelessInc.onmicrosoft.com; s=selector1-sierrawireless-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=MXGdtzwp1sG4k+B0KyLZvkuyLFMrBkuPo56TToz/V2w=;
	b=ngc7crYL69zO1qzvdE4sJfwwwVqK6yTJ/OPPI1Q23W96NS6MaLmLSJM2FBJ2518FtbclYjRh1CGY6Wbi3A+1HIffyfUIZwYrfts/dVjYWjHzejfmzWI7HNFBqiU4Q8vLsO3KIEHAlWKVpCpsxNNW3NEa67tywOfDsMdLH2xQFxM=
Received: from MWHPR0201CA0029.namprd02.prod.outlook.com (10.167.160.170) by
	CY4PR02MB2695.namprd02.prod.outlook.com (10.175.59.17) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.302.9; Thu, 7 Dec 2017 19:22:40 +0000
Received: from BN1AFFO11FD020.protection.gbl (2a01:111:f400:7c10::109) by
	MWHPR0201CA0029.outlook.office365.com (2603:10b6:301:74::42) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.302.9 via Frontend Transport; Thu, 7 Dec 2017 19:22:40 +0000
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
	BN1AFFO11FD020.mail.protection.outlook.com (10.58.52.80) with Microsoft
	SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id
	15.20.282.5 via Frontend Transport; Thu, 7 Dec 2017 19:22:37 +0000
Received: from carmd-ed-n10973.sierrawireless.local (10.1.64.103) by
	CARMD-EXCHHUB01.sierrawireless.local (10.0.6.2) with Microsoft SMTP
	Server (TLS) id 8.3.348.2; Thu, 7 Dec 2017 11:22:36 -0800
Message-ID: <1512674555.2297.1.camel@sierrawireless.com>
From: Darcy Watkins <dwatkins@sierrawireless.com>
To: "Marcelo E. Magallon" <marcelo.magallon@hpe.com>, <yocto@yoctoproject.org>
Date: Thu, 7 Dec 2017 11:22:35 -0800
In-Reply-To: <20171207170850.ovivl4gtxi3bhxzg@nyx.americas.hpqcorp.net>
References: <20171207170850.ovivl4gtxi3bhxzg@nyx.americas.hpqcorp.net>
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:208.81.121.44; IPV:NLI; CTRY:CA; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(39860400002)(376002)(346002)(2980300002)(438002)(377424004)(24454002)(199004)(189003)(86362001)(33646002)(2870700001)(2906002)(50466002)(47776003)(104016004)(106466001)(15974865002)(103116003)(36756003)(8936002)(77096006)(246002)(5660300001)(229853002)(110136005)(76176011)(478600001)(50226002)(316002)(8676002)(356003)(23676004)(5820100001)(106002)(6246003)(305945005)(7636002)(2950100002)(551934003)(99106002)(5001870100001)(18886075002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR02MB2695;
	H:mail.sierrawireless.com; FPR:; SPF:Pass;
	PTR:carmdsmtp.sierrawireless.com,spf.sierrawireless.com; A:1;
	MX:1; LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; BN1AFFO11FD020;
	1:lKpPmGcVcKe2Mb21W9Jf1nFjWfV85oDbdhhckg6Frdjk7aAVyOvH5cnGu36eVzxiFRJjp1JaZfCL0yeSDFqMbphEkBG8+OD1952fSvim9R15XQoTXhXAW+8L8rpZN/D+
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 29c07dd6-4d36-412f-ba63-08d53da7e0d4
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(4534020)(4602075)(4627115)(201703031133081)(201702281549075)(5600026)(4604075)(4608076)(2017052603303);
	SRVR:CY4PR02MB2695; 
X-Microsoft-Exchange-Diagnostics: 1; CY4PR02MB2695;
	3:fkar4cDH2wa963gowSnHk4Q7aV7RPYs4+Hn5wm/tP1YxYnYVynrY9H+YRTVWJYvwn6JGXqxUnthxBnF/TjEXlr8tMs1v4DbX2FhE80Vh9Ra1ozmeHQ4R1By4E9jCahA6cI8s+VP2HevPKruDVBpSJUuF0mtfUYkKKywald8MnxGDXPuwrwBgWSFoV8zQK1ie3wHWaiQlYyMPT8h6c24At3VEKA9E2rCQRbuGUD3myL34NX+rQm1ZqKwHM3HlzruEj+2sFI3QaK65GbLgq27BmG8+oX5nnPapuYNkcgUZ8PailcN5ned9/Ay49iQqme8NIkfxqx8MT4QSSzcHdprwAIpDjmBRdDV6itHLjcGroB0=;
	25:ff82LM30ow9dBgwpjVMde/w6KZ9XAhLZ7SjNvRDSijVamasysceDbL4YtP9KZA/DRbF3dHa8zfF/H7/xm2Rx4OI4fyeDWlJcWxuDWq31i0xXcuQPny2r2yFn+BS89dANT6uTfsFxUyqO7ABZ8yniPm+tEzGZnKKloHOO1kBrSJLUIW6pNOfKQxaRfRM5Q4D5rjVk63TMmzZCAnYclftNrV3shpOVDL9UEBlP5VCMV1gU31kj79zJOuWYcmpfB377xRx1NsTyzLnl0lnML7FExofQYC2FEFNcErTqh4xsMnvtY2EFBQdkm1HdWorc+PkCG+55rl/chvpGFmC0VzZfXw==
X-MS-TrafficTypeDiagnostic: CY4PR02MB2695:
X-Microsoft-Exchange-Diagnostics: 1; CY4PR02MB2695;
	31:8Zd9/oKi3g5DOmSgUahHMSy1tb869ZMH1R/Kikj13CzIg1e3hzgkLKuBkXu+qaYngA01qBF6q2LLGtN0HWVDtUIhjj5Sg8kZX4lr8+359C0d6qPl0FQcsoPSURuZtZDO5zY0DkHUyBzymrUP/tYCcaW0vcF/BWzEP9Lqs4zaheLTrVTPUP+Wld4oY5YzR+lIyf6lfMp6FijyuWQ6FK4GzuM7x6EcSrL/TDCMy8tSOJU=;
	20:/ML4rk4Dp9+gJpa/VLM2n7iGTBlZ8o2J0iyD1pTfJzVqAmzv0+RHksWHy0AAlhe2a6I0IhrE8ER8MAYu1BGcTmw70lMTeWfp5adTQ/fNyaebliU3aOtLo9JJC09GY+esJzWhL7/52HTB8U4c18g3RgWqYogqMQuaBCYGOeswN52CmgXQX1A6w24YvIicb4zlO7bCdDYs/XeJsftjZVYgqk4HhznHC+yBYAOY4yncvcW++FXzH6+2YSUcPEjLhm61roeRGf/OimIfvvO2LD9nfGM8ht2Io3ffJmInZXPkrTFL7OmaW5OD64mgQi4YxubKX8SOL4Z8pNsmNCt/SZtQrQgFP7dO1Fhnm4LK7LLPHbpZjA0lXYxhk4TQn4p4S1cvbsyKSQtGRtixwh0dduWqxF7EhFMuo/bcWIhDhadWKhQvMuFdxFvVwlXsGvzu72s8MifdgwiR08DKUqQ64u/U1mhf/X1D3D+M3xEn35XDqaJM+ldl9akKc/GZD73L/HsC
X-Microsoft-Antispam-PRVS: <CY4PR02MB269506E7007C82F44061099CB2330@CY4PR02MB2695.namprd02.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(219636747203745);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040450)(2401047)(5005006)(8121501046)(10201501046)(3002001)(93006095)(93004095)(3231022)(6055026)(6041248)(20161123560025)(20161123562025)(20161123564025)(20161123555025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123558100)(6072148)(201708071742011);
	SRVR:CY4PR02MB2695; BCL:0; PCL:0;
	RULEID:(100000803101)(100110400095); SRVR:CY4PR02MB2695; 
X-Microsoft-Exchange-Diagnostics: 1; CY4PR02MB2695;
	4:ZkPyRws2JbvxZxIW2SZVFy0aH8aLBSQ5yVWvDXu2GsK9XZtGgFyWWzW8MdLV8yDeuB1YOnlGLM/AUIEAxBZaMpGGei1YR6u5cOa0usR+ZFzUHHN4DP3jXUoWBI76pMKABS/gGsOIW0LbQQt5OPv9ZoJivCITPFvNke7XtGBttyHrA+eTC0qu5nw+SGu1C3cvuoepHYY+gSxJuy/Zg1bMqkO7a1rZtMWvPxQezCKK+ed1eBJJdu7L286CSk4R9ouRa5vveCCl2kmZ+kn+yrqF5Hb3yQ4HNI4RA3WJFpGOoxo4g/f2xxAFtTRbFUqQL4s1
X-Forefront-PRVS: 05143A8241
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtDWTRQUjAyTUIyNjk1OzIzOnZUS3pHZU9iMW55OVFWS0hMMjE3K0h6ZEl4?=
	=?utf-8?B?RGJoNFM2NTFMdG1MM0doYUVsYzEvUXdNNHk4cTZHVHVBN2tJU2s5Ujl6TWtX?=
	=?utf-8?B?dzlGZ0F4SDVhZ2xhYjhJcDNnWmVVZVFvOWhLdTkvL0RXSXFNRXFscnQyYTdB?=
	=?utf-8?B?eHNSQUxqTmF0OVpNRmxBd09LSDB3dis5aTRVMVhPS0w2VG5GVHZNSitmUjlN?=
	=?utf-8?B?Q0dEZFFudlpuTm1Sb2lDVEFGUWZxMTFuRkt4azhqbmY3L1AzM0JRMy9pUE13?=
	=?utf-8?B?cTF5TEhtYy9PdDJycnNrR0M2bGtHeDg4djg3QVpXVHRvSG1aY0pTM3dyVm9o?=
	=?utf-8?B?MVRIREdqOGl1SUJqckhxZUVRb1JQL2ozTVBHcFdNcy9RamNnYWV4K1RMdUJC?=
	=?utf-8?B?ajhROEdpbmpHV3VYN0xnODF5cklENXNJc1R2NS9jS3FhdGtzUkRHeSt6YVJu?=
	=?utf-8?B?RnVyQ2RDd1ZCbkthdjlYREhnSDU2NXB2YW9FN0xZVE5qUU5Uc21PTi9yZjQ1?=
	=?utf-8?B?NUM2VGVCTjhybDlNRzJJMW5tNkZGSS9DZFhDSnRwSWE3MG5NUmZDVElkc2Fl?=
	=?utf-8?B?WmRBMkNSZEgwQVZrdFFaK0p4aTRNblpiK0JPSlJON1QrcllMNFY0QmtVaHpM?=
	=?utf-8?B?bEFlY29BUzU5Rlp4WjlrSi9oeWkwR3dlUHhCVnpYbDFUQTFUUDk2N0ovMktN?=
	=?utf-8?B?aEtIK0RUNzMrUm0waUdzbFVDdDFCK3c4S1hZeHNKOWdzK2RFa0Ryb2RjWmFB?=
	=?utf-8?B?Y1hOakVVVVNxRWdodElCWW9LRjlvTi9mN0NZWC9YNEtDY0FINTBiT01vdnh1?=
	=?utf-8?B?YktpMmhLRzhMUTRYb1lkN2lXZDNIaGQ0ZFRQTGtFWFFPdmp6YjVwazN6RitK?=
	=?utf-8?B?R3o4UzRuNkZmR2VyVHdkQk5JWnRYVzZnZTdyQXNxK0pSSEwzaDZuNy82Ky82?=
	=?utf-8?B?dVRmeW51alUvVGFVNE5lb1R4Ym9yUXRZSTdJZ0kvVldRSVhIYkJyYmF2YmRX?=
	=?utf-8?B?OFp1eWQ2WWJSWUlsRUNnQ08yU3VhbnJtTE4wdnRVWHpELzdWc3hTRVlMUC9T?=
	=?utf-8?B?aDVCUzMrOXlURHVvWmFyaGJqSGc4ejcweXRJelp4a1pRZkdIaWhsV0d3T2k2?=
	=?utf-8?B?d2tOUUhKZWdJWXdRcTBsMENGOUlIL2V6QUxPWE1odUw4dndhMEZ1eFdzR1hq?=
	=?utf-8?B?dVBSRE83d1E0c0tKSkVyTkhKTTIrVGkwaXlCWGduSXRhZ0EyNSs2T29vcEZJ?=
	=?utf-8?B?Mkh0Nk1BdkpQTWpkZjVDNDBMZjU3SzJKSnFGQ3BkTU1UcGRmZEdTa21xdWxw?=
	=?utf-8?B?WUJISEpjd0RmVnpxa2h0bXZNU0F3Ny9IbUVONjF4andWOG1UWDJIcVh0cFhL?=
	=?utf-8?B?OS9VRm1SOXZRQUY4VThVT0k3KzlBV1dscXNjTVFNRXkvcEl1dWtHT25zNEd1?=
	=?utf-8?Q?Qr2bbc=3D?=
X-Microsoft-Exchange-Diagnostics: 1; CY4PR02MB2695;
	6:GWQcS49X7fDEjmnjWuijEG82TsYgZl2198NTVDclZFYwcQX5tPv9A3q0ciB4dAW4mbwF42MzbpGlQ+9kaNY5EtjHhZ4dPUPxYWKT4kiKbABDbXr6WD2JmEe1329QpaLeaHir9u7l2zuyi5xGsKOcg83IlqeqqTIt+RJtv+BxgycgNwNH7I3/LuLifGlY8t2xRac2bd/aM8lOZ5rsOz3CRTUGy/7K6nhg6vo0LN6HVNOeMDC55Tus2lbdkQl7JaNAQBSolZf2ALwAtn6bKDN/ma9SHHppmZ8Z90LWOh7YJlSBj6o8pBt20zhu+58IPCPm4p8OJJ22KrLKUfq2ekTkFw5jvcGdlpwVTeMVrwnl1rI=;
	5:PyRlt/2OHydkKnnxQhTzC7/iHm+pjmoR7ZsB4TjFPgQzLxAZTy9oQhB0d/foO2CgYdMH4udTZUMnqyz96+pIw39v06+zv5+LyKK5Cclxh7dEyAjOqnL5F9ZZg+0yV8AvRWwdf3H974YrEd9YNFAZ+EIzhAMouP1rwdYEYOe8TF8=;
	24:pD08fxVJhXS/f4t35JQUlaUMdwg3jezdz6TQmePVwVx1FDY6TebhiI6j+DYgydwlXe81hgBSnvGBsLm4fwWQOTD7wYwBwPTUx2XGngPuqyo=;
	7:wjr1GM99iF5KIsyQN/0z0SylfkKPaxjXVPalhOtjAVIOr2FHdU2jmA9msJbmmMn0uA2X7mia6g5krfTCkc5pXO4hx+HM++SEmgxBjGIti5YS7JdYUsiiVFQrgqE7rCe3h+lhjd/8v1utJ6IEVPWEiYPl0ig+fiB28MfKiWgsQ5rMjS6xl9Qv4Ys48TZzPbophiJEJ+vqncgxLTHYnQ/IqQAWOiSXsNlX7e1n7f1D3+M5A+0RD9xos1+eSg3CnsR0
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: sierrawireless.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Dec 2017 19:22:37.9451 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 29c07dd6-4d36-412f-ba63-08d53da7e0d4
X-MS-Exchange-CrossTenant-Id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=08059a4c-2486-43dd-89e3-3a747e0dcbe8;
	Ip=[208.81.121.44]; Helo=[mail.sierrawireless.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR02MB2695
Subject: Re: Good example of bbclass customization? maintainer
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
X-List-Received-Date: Thu, 07 Dec 2017 20:54:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2017-12-07 at 11:08 -0600, Marcelo E. Magallon wrote:
--snip!--
> My concern right now is a *different* case, where your goal is to modify
> the class in order to affect all the recipes already inheriting from it.
> For example, where there's a modification to a function in the class.
>
> Is there a good example out there as to how to implement such a thing?

In my case I needed to override behaviour of RPMs being installed on
the target.  We would download all files, reboot, run the RPM
transaction during startup, then reboot again.  The default behaviour
to stop and restart services while upgrading the RPM packages was
incompatible with our scheme (since we run the transaction with the
services offline and then reboot into a new startup sequence anyway).

So I cloned the update-rc.d.bbclass and commented a few lines out to
not stop and restart the services, and placed this in our layer.  For
this to properly work, make sure that your layer priorities (and/or
ordering) gives priority to your layer.

Using this approach means you have to repeat this mod whenever you
upgrade to a newer Yocto version (merge/carry forward your change to
the new one then pop that in place of your old one).



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



