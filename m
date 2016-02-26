Return-Path: <dwatkins@sierrawireless.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F36E8E00D2B; Thu, 25 Feb 2016 17:43:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bon0058.outbound.protection.outlook.com [157.56.111.58])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6022FE00D1F
	for <yocto@yoctoproject.org>; Thu, 25 Feb 2016 17:43:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=SierraWirelessInc.onmicrosoft.com; s=selector1-sierrawireless-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=PIfonbqY8rLMQO8zttoT2aYCO3AEV8KLSblCtTYvQg8=;
	b=rk0Pbzwmy/4dKlz64flfppoOUlfAQWJO4vQ0CovBFx142eiIrwUQSSZXGmlQ5SQB1YuAZdzHBcv+Hgl/+wqwqDvx4aBTnTDhwj3sz20w9UJCYnENHOnDr7zRRnZ3eWgonYcl8YL0Zga/Lt9T1kSSZwFjHUcoYwUov+zrLBN6rLc=
Received: from BLUPR02CA047.namprd02.prod.outlook.com (10.160.23.165) by
	CY1PR0201MB1033.namprd02.prod.outlook.com (10.161.211.151) with
	Microsoft
	SMTP Server (TLS) id 15.1.409.15; Fri, 26 Feb 2016 01:43:19 +0000
Received: from BN1BFFO11FD035.protection.gbl (2a01:111:f400:7c10::1:183) by
	BLUPR02CA047.outlook.office365.com (2a01:111:e400:8ad::37) with
	Microsoft SMTP Server (TLS) id 15.1.409.15 via Frontend Transport;
	Fri, 26 Feb 2016 01:43:19 +0000
Authentication-Results: spf=pass (sender IP is 208.81.121.47)
	smtp.mailfrom=sierrawireless.com; windriver.com; dkim=none (message not
	signed) header.d=none;windriver.com; dmarc=bestguesspass action=none
	header.from=sierrawireless.com;
Received-SPF: Pass (protection.outlook.com: domain of sierrawireless.com
	designates 208.81.121.47 as permitted sender)
	receiver=protection.outlook.com; client-ip=208.81.121.47;
	helo=mail.sierrawireless.com;
Received: from mail.sierrawireless.com (208.81.121.47) by
	BN1BFFO11FD035.mail.protection.outlook.com (10.58.144.98) with
	Microsoft SMTP Server (TLS) id 15.1.422.5 via Frontend Transport;
	Fri, 26 Feb 2016 01:43:17 +0000
Received: from carmd-exchmb01.sierrawireless.local ([10.0.6.3]) by
	carmd-exchhub02.sierrawireless.local ([::1]) with mapi; Thu, 25 Feb 2016
	17:43:21 -0800
From: Darcy Watkins <dwatkins@sierrawireless.com>
To: akuster808 <akuster808@gmail.com>
Date: Thu, 25 Feb 2016 17:43:15 -0800
Thread-Topic: [yocto] Does CVE-2015-7547 affect eglibc?
Thread-Index: AdFwNxL9GTDaki6/THOlHWBT0G4VYQ==
Message-ID: <5002400B-3C1E-4BA7-9A66-E52FC85BA07F@sierrawireless.com>
References: <1456255515.10581.2.camel@sierrawireless.com>
	<CAMKF1srU_Ewx1HzMHv+AQNhHeoy3b1L1bRvBaZ8556a8+7NLew@mail.gmail.com>
	<56CCD461.1060505@windriver.com>
	<1456267969.27839.3.camel@sierrawireless.com>
	<56CCF5E8.3000005@gmail.com>
	<56CDDC73.1000000@windriver.com> <56CDDF64.3080508@gmail.com>
In-Reply-To: <56CDDF64.3080508@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Microsoft-Exchange-Diagnostics: 1; BN1BFFO11FD035;
	1:e7uR4ch09kpYR6vJhMh2PrbODOJlqW1zFpaQfET4ynkew5/zQvQ7HqjyBzUjPzieAjv61K3XMaLXZ0SzOL1eFOPIQYMaTB/f0rhRdu+lGCA0azWxunY+VObXTz6UYmuGVhnEpo46M3jB4iF4Y+xoHjIFJ/U6T31lM1qgMaQBMHJquaDPazjmeSqsm7gjcjr3g9H97nN3z7Xs7gqyf0wYhTge9DcowgxKMEXmsGeNkXDYYymbDHkq12U5GlF1u2WSnkB3zc8+B7PcJLDuqnhqIHIbUbZcep62RK9rfmjkAGM01krMe0aoaeVodqOp0Sd2UMz2tnl1t7jVI+1tFyePoLIwcFq7FB0HGbRB3F5rQ7OSon01Dm3cieOK1pqeu+12uWTA9Zs53cURQ1Ylym/WxfCwtNL14S2CXxm2grNsep+8iM+vRfKu6wThUFza6R6sldJ3LLzeUFVJFYEEMsfhyA==
X-Forefront-Antispam-Report: CIP:208.81.121.47; CTRY:CA; IPV:NLI; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(6009001)(2980300002)(438002)(377454003)(479174004)(377424004)(199003)(51874003)(24454002)(189002)(87936001)(106466001)(189998001)(92566002)(76176999)(97756001)(23726003)(86362001)(36756003)(110136002)(50986999)(1220700001)(5001970100001)(54356999)(1411001)(33656002)(19580395003)(102836003)(104016004)(19580405001)(47776003)(586003)(93886004)(6806005)(1096002)(2906002)(15975445007)(11100500001)(77096005)(5008740100001)(4326007)(16601075003)(2950100001)(2900100001)(46406003)(50466002)(230783001)(7099028)(104396002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0201MB1033;
	H:mail.sierrawireless.com; FPR:; SPF:Pass; MLV:sfv; A:1; MX:1;
	LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; CY1PR0201MB1033;
	2:/pcwYKDgGwAWRnc8O12RT7Pf8FRjcaSxRdsBQPymjhRQlrtDBGGh0st4pXw+H7JIijaxkSBrG5Ru9romsz8kaDan8Zhb5hbzgBm7/guUy4AjLFdL6iq/Dk16xVFqAZFaKnioCT9N2Ym6D+Va1QSCrw==;
	3:KTHUdKykPikl3rBQZq6SAh9KajwZLYmzX5c2MHL8fig79t8oACgN2FkjIJblHcE74X1HoGptQst0HP8K4wjtPWIYkMS6sMP8lWolSisG29ygxAwXEMn1X/jHOELKSN2Npjvh+G9+YRPRxE1Q0qHCOxWsopUSxviksWQJ19ipSgbnAVIy/NPaY1wgI2p9T3ib/K9tYYaJlLNJL9qJlgKThBqTJUFJYvPrBvdVT+Z0SiFf2upBe8tmfohkkbVW0VJFrKedMoR3l226xeIv5MWyHA==;
	25:haYzf6uEIiGznAO+m1YVBrzm6UyeGKiW5qxM88B2froytCzEBYHMKAtg/KkaJHckF52Hbcb/pJiVP0Qf7IzLGS7flK9eoef+tBVavfb9SMp9JwLJPuRXhjbpGRwl5nVcD05XIS3ksi1iZ7GCXGrUFWONezIBygbVEAKYdA8LBDIqxMaf3lvSJ1apVx3UO3bX0tI8tsQymL+eLtlAQymhD7mqNPVPG8yfahdix71hrUiU4WEo30bOtrDWpFuXWJUzWkKrznT2TbLKmP+TIWDCsOKUDuFUVjb5weGXntAYm6EcOunP5y00rRnEUQIyIKldMs47AU4lJqhlYu6wphel+w==
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0; RULEID:(8251501001);
	SRVR:CY1PR0201MB1033; 
X-MS-Office365-Filtering-Correlation-Id: 6a4bf18e-3063-4682-51be-08d33e4e3390
X-Microsoft-Exchange-Diagnostics: 1; CY1PR0201MB1033;
	20:2kCWmsfJjsnsqyYpFjV6BPkigaC4P6VpmhIyKhWNv1toL82BE8f6eThT+bPpH4iDKq3vSJKQyFzu1608/wUqgJ1k9yPSvOgVjGZYnQmLWbQYPNZZlVChct9vSxie0T7bRTG3um5qL5EDoN2UjuZ4v3xuY13bUeK4fJJXlvQ+oEE3ZO+Q6yryiWXadMgj2vW95xF6wbeeBFzzpdpNDbXxb1VCFJ/oXJSdMoAMI3GIO6bqMnINhoqRpoqfUa15XW3CB6mPrRUCaypOTzbDGjlLdPyoqRMXxTXqVStPf5nXmVkWtaqX+wvwqYUvJYa6Nqjw1S0/dRaPWE0NyY8yjJ7+I2frBtKSYafOfQMFoYJCrfEnvSq5siOO/hqL8MxU3UEmBQvEHwk3H8MEa6ZWKQ0HIz7wpYoVC/kXDCAvAXOO1bIugpSaOuiQOftC2I7Bq9tTXkym1RcbFWJggXGLQNM4E88UJ4kPralmKr6qT4cjNE9DtkETaO0zNvFU2/WnXJsg
X-Microsoft-Antispam-PRVS: <CY1PR0201MB1033DFE58C0F1E42AC9DEEA6B2A70@CY1PR0201MB1033.namprd02.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(24822713563186);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(13024025)(8121501046)(13018025)(13017025)(13023025)(5005006)(13015025)(10201501046)(3002001);
	SRVR:CY1PR0201MB1033; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0201MB1033; 
X-Microsoft-Exchange-Diagnostics: 1; CY1PR0201MB1033;
	4:uTd8ZePKuV2RK5Qz6XA3sKkeT9by4E6rSlguNYHKl/d8sltRDpPfHk/Ko0FRzrMk/1mwFhqVLo06CSD3QAixrzol+XTwJFjeLjlbICayuqKl+dRcxW/OFt9KWD644BU5Wge6R74678/4Pbl0AG1+ptB0/cwDa2XeAi4poTI+C2M/1HL9PXoUiavX2ru2aOT4OhK0Gw5jNNMef78k7l/DM6UT+VLIdQNlOdS1MHj2SHYB0C1eNQ/gxPeiBkufP8KJ38ihJqLeSPVSbN4zgj0q4fvCSEGQiMtymnAz6OD0Z/Y65+PfGYoBRlUyio5F2j61QUpgMoJKMreAJGk3mipIcRu5sbtLeHstbKnRDlek+HxkM057zpSSla7mxE2CCdpV0jueA7ctrx+Iyh73g1CDVflHp6CsrvjX/Wbvze+xrA4l6nDku4LlDsYQOkK0q+nvEX1tB1Tx4D8cYxTJg2mKHBZei7AsDybwK3tMEocF+9w2gchd1HRi7xeTAcIMdsJg
X-Forefront-PRVS: 0864A36BBF
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; CY1PR0201MB1033;
	23:naNzdQ3XFckQoHFvORoAyEjpPgrdm0zFyHy8q1X?=
	=?us-ascii?Q?2iRLtGGZeU1gmKoaM0zlz5w9Jygo6MBu3VgvA4DzN6qfl8r1cjyFSvdSCWBK?=
	=?us-ascii?Q?1EYnJX+5myQTs3fjYfEJW0f6mzSpho/VkKO/n5XkNeo9oUOay0mtNyVq6wyt?=
	=?us-ascii?Q?bVRxlhMiXXWl7EzMjxgWKqh1lRpd7MRmXQoeYeIwFBWz+9bVPhk+EWYKnCKZ?=
	=?us-ascii?Q?Th8gmNJLpR8jk8IFfPjuxyCUNBpOQctucD6DrsPQ+Xj/xtaHQjs8R+twCZYv?=
	=?us-ascii?Q?N9i0c6F0X7YWXmPkxBXrhmU//fmcPlL5iW/vUwVN8bXEkA7f8g+Uw6WP0fBn?=
	=?us-ascii?Q?ipUm73JljBM6px1AK4STj6eloKhlzSoe7KFkFn5JKtvf4Qq7ku0hjIKh7ESy?=
	=?us-ascii?Q?rGzhK7geFF4V/9gBj/weheZg3ZNCgaMZqBTkpVncnnrU7bCzrdfeJlraYbkr?=
	=?us-ascii?Q?0pY7p1WHzHhPWstL71P1QeAe14gk/6M5I2u2KPJ7cPGaHIavwPkPtuiL1yLF?=
	=?us-ascii?Q?MOQIaJVjJNdubaVTYYt4IEh6BPlo6fUuI/D02A+/twL3Q/sAxOndoDbASJT1?=
	=?us-ascii?Q?hBwPPQG2QRx0Vod89h/Bdi2Hnhcm3P4JKzzSSZ/Xmhcn8a6HAK08OgsLHWcS?=
	=?us-ascii?Q?312zIAIjjVgyvbd6o5I/QUTmC/0tVgrFz+YVl7x/su6fHOlxLkLNTnvLM3ge?=
	=?us-ascii?Q?Adk4FT8XNMSrhkw3gSJDY/wvzc0KWdwGPOat2QV2paTZIffzlwSqCvsWr2He?=
	=?us-ascii?Q?pgO6kMM5b2Ww7TJ06gOPikrrcGenv8gpwITYFc0Cv3WIIhvQ9kElXlg2ByPB?=
	=?us-ascii?Q?ofc0u5whEZ3YwmlDSknumXgEIqAbcFauzgB8aqYDNrxlQpgHSL5RVZ/cm0tN?=
	=?us-ascii?Q?/5eF1WHEUnkas7cRohwpn2qrExJ90SXR6Gf5R8k/utB7F7HUhCxNP37GWYKn?=
	=?us-ascii?Q?BIOGxC98tzObA4UqVy3ABUfVLMJZVSL93J8YN4o3RQk/Ble1Ezh3hwlYPmK1?=
	=?us-ascii?Q?YLebkeL2ibBooeca1OMHvTKROOo4LF/nk5IxJYTXYhYGR5sK+LuigfDiraX0?=
	=?us-ascii?Q?gI8HZ/6fgOsFwTzsr4Cy4vEBFbojQXk/IGlGDNTNyqpbb0M2hvyefXrQesXC?=
	=?us-ascii?Q?uSTv6wK3U+Y/6rWTYM/fkbVptDwapw7zajs1zhrp/2zcnUGoFaiUEm3u0E/Y?=
	=?us-ascii?Q?wqxhi7n0y4NcvTrVB6YD2nKwZi5JV9YyUCar8oryLEM2UjiWHTLUFMSuJ42q?=
	=?us-ascii?Q?vaH0LEUWm42dtC0K9/Ao=3D?=
X-Microsoft-Exchange-Diagnostics: 1; CY1PR0201MB1033;
	5:DPz52A3ofInTzkO0tVFueRjToNnsjRivg43C9EaVPOE4Z0WatJXkxDi+5ZhpzZtfT/hsN12TvsoV0PK0A2bEaUHN5juq7UuEURcme6I/KGXQ2dUJa3mXrMaM/Ct/YJfkcHgyd4sb+fmOzkWfYvoe8Q==;
	24:F/fFO8xyYuykp/cK11TRmCn4cvWe15MGPvsOZwOUcxnVB+xFK8fuHyNv78sQx0QJFuhSeNQd6njzQyOtRHGYvD1zNAHe6lB2GPeCHGXi9R4=
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: sierrawireless.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2016 01:43:17.8627 (UTC)
X-MS-Exchange-CrossTenant-Id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=08059a4c-2486-43dd-89e3-3a747e0dcbe8;
	Ip=[208.81.121.47]; Helo=[mail.sierrawireless.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0201MB1033
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 26 Feb 2016 01:43:27 -0000
Content-Language: en-CA
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Be careful about rushing out fixes. We are observing regressions in softwar=
e triggered by changes in glibc  behaviour.=20


---

Regards,

Darcy

Darcy Watkins
Staff Engineer, Firmware
Sierra Wireless
http://sierrawireless.com
[M3]

> On Feb 24, 2016, at 8:57 AM, akuster808 <akuster808@gmail.com> wrote:
>=20
>=20
>=20
>> On 02/24/2016 08:38 AM, Mark Hatle wrote:
>>> On 2/23/16 6:14 PM, akuster808 wrote:
>>>=20
>>>=20
>>>> On 02/23/2016 02:52 PM, Darcy Watkins wrote:
>>>>> On Tue, 2016-02-23 at 13:51 -0800, Mark Hatle wrote:
>>>>>> On 2/23/16 1:53 PM, Khem Raj wrote:
>>>>>> On Tue, Feb 23, 2016 at 2:25 PM, Darcy Watkins
>>>>>>> CVE-2015-7547 glibc vulnerability has been published as affecting g=
libc
>>>>>>> since ver 2.9 (fixed in 2.23 and patched in 2.22 and 2.21).
>>>>>>>=20
>>>>>>> Anyone know if we need the same security fixes in eglibc?
>>>>>>=20
>>>>>> yes you do. Eglibc was nothing but glibc+few fixes.
>>>>>=20
>>>>> Yes this affects all eglibc version 2.9 and newer up to glibc 2.23.
>>>>>=20
>>>>> As far as I'm aware, this affects all Yocto Project versions up to 2.=
0.
>>>>=20
>>>> I will be interested in knowing which Yocto Project versions will
>>>> receive the fixes.
>>>=20
>>> Master, 2.0 and 1.8 all have the fixes.
>>> How far back do we go in matters like this?
>>=20
>> Official support is current (in development) and the last two releases. =
 So up
>> to about a year and a half of support.
>>=20
>> After this point, it becomes community support.  This really means, if s=
omeone
>> in the community wants to continue support past the YP's support guideli=
nes they
>> are welcome to do so -- but there won't be any official releases, only c=
heckins
>> to the repository.
>=20
> much better explanation than mine.
>=20
> thanks,
> Armin
>>=20
>> We have done this on some OpenSSL fixes in the past, but it was based on
>> specific requests and people submitting the fixes to be included with ol=
der
>> versions.
>>=20
>>> 1.7 (dizzy) I plan on doing soon. beyond that I do not know. those are
>>> all community supported.
>>>=20
>>> - armin
>>>>=20
>>>> Thanks in advance!
>>>>=20
>>>>> (The patch referenced by the security announcement applies to all of =
the
>>>>> versions of glibc I've needed to apply it to for my customers.  A few=
 per-line
>>>>> tweaks might be necessary, but it was fairly easy.)
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

