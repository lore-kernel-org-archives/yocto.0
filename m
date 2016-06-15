Return-Path: <bartosz.woronicz@nokia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8166DE00CBB; Wed, 15 Jun 2016 07:51:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.112.147 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from emea01-am1-obe.outbound.protection.outlook.com
	(mail-am1on0147.outbound.protection.outlook.com [157.56.112.147])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5E6AE00CAC
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 07:51:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nokia.onmicrosoft.com; 
	s=selector1-nokia-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=3JSima74fPFAKQfOqmYwf/LzGtPGzcJ6ByQ0qBgDskE=;
	b=F1d0H0SfSCvK79AEDGXK3hlsm8KYnC8ln9KGUIDZJBRCQf+goSw4sMm8BRi9nZCObUoYMI21/UHQnfVWfNxij9y+0wma8UXFnNHsrQU7TwQu36SRQfsD9dU3oOoNd35hS/SVJ4FfjsVqXj3fF2fQVNDs89iNwcGP+q6irrEF11k=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=bartosz.woronicz@nokia.com; 
Received: from [10.154.187.104] (131.228.2.8) by
	AM2PR07MB1042.eurprd07.prod.outlook.com (10.162.37.27) with Microsoft
	SMTP Server (TLS) id 15.1.506.9; Wed, 15 Jun 2016 14:51:03 +0000
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: "Woronicz, Bartosz ( NSN - PL/Wroclaw)" <bartosz.woronicz@nokia.com>
Message-ID: <57616B51.7070001@nokia.com>
Date: Wed, 15 Jun 2016 16:50:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
X-Originating-IP: [131.228.2.8]
X-ClientProxiedBy: VI1PR06CA0017.eurprd06.prod.outlook.com (10.162.116.155) To
	AM2PR07MB1042.eurprd07.prod.outlook.com (10.162.37.27)
X-MS-Office365-Filtering-Correlation-Id: 7cf1349b-5e38-462c-a8c3-08d3952c795f
X-Microsoft-Exchange-Diagnostics: 1; AM2PR07MB1042;
	2:HOdIh7FqHAsY4Am0sepHhVROfAnaywvqLzHUwpFqWqLOMXxg2rUQ//HGEsVzESYWVCzIMw7DqR0wF0YVDdEZrHdq3iGLavIEOMtnZpSkzyiOo0IQ2NWT+e9NYK0Jz5HtnP83LlJDwWbwUvs/36Q/9ZDJ6oRodZO9IvqKYGSkfykrn+ubm6u8ImInVTErkAaa;
	3:grz85tO4qWevWgi0kypTllav3MF7Azdi0RvL85rwJNuAkWvrokb1ywMvgAFCER5IZi7hK8Guw8UXGl7IwPDumtZrVhkFAKcT3+Gy5edUMykpJXkpjDf1zTc5H+KvX3B/;
	25:6PjgqjIs8YjX9R+Fzs7dLOf4JHt9y1O+cTiE3giuS9A6nN3LIrYw1RN2DVGrhW9EhrLSDx5+bR9kq16f3xrhCwBz4Cv+og8KG07Y/ZwyLqPwClVvjVWBcM8n3JnVJs/YBBkfT2FiTTAvGAQzW9Km7doh7YsZ2dfnK6k/H/rDPyqs6zY2jlK37tiSirik/uv8b5chNn/j5voxPCTUubaSTb4Q20BBpbVYd7gCpBV8m/teeLnS9A5Y9kanYpo092kQZ+NcqXF1i8KoOBFRb8QOa2HwgQRy5PcwKDpL7fb6RSNNNoAmCTTLX7dZ/w98OnXQCc5I5JycLq9KMnEg6ZPXEA9JNTEMu+S5D9TuNRv3DA7x10r6SfRfyfXuXMPRegMDjqiIaa9ObIGojJonvqcsSYZb4yIWZjYagV+BtXYDyPQ=
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:AM2PR07MB1042;
X-Microsoft-Exchange-Diagnostics: 1; AM2PR07MB1042;
	20:YDMLojaRWcUumyU5tS4CSENP5cbk6Q/lpy8evODi5fip8lJq1MCkuH6kWgERyOM6lBw4nMKjxkqFDgAAGLFicS+/vpFyleCHc8lH5SSSSyvlMZw3hWENhqeqeZ+pInRzTWiMx2uWW6XYEkUNzbM3yT1Fc6e1+L0bd2fnzb7Als05tGAUWUrXavehI3+i83xUtbivFVtRe9svticHL0H/A2Ow8AoZnowd/DRolezerNSVVBSDU4v6ptsHLMdDrQXhw3X+ATlB5R7OY9yVSE1k5zqDn26zWRfc86aw0dvUKH7en3BR6owe+rhav1TrzuMbAQccuDLsWGDvMNqTt3HcEupm9jFHfRPzjR2vnyIHL5na94/nKJo7wlKZR7WsIab8G1tYQTVHQUnkLETlOE7Jt40EudFGYaAfgrdxAQ/9lIgWWUNB7EGI7NGeTEntKjzGSq99nbaCSHV2OWu2c7+UFpsF97omiZEgjSlZejDkMx840B7BKK3hMfXAu4WXKBeK;
	4:ZYFq8wjuBcN7VJUzpcvFejRcT9sAECqRu833D3ZBWxLGxy1EKe1ErkOA3wWWGfFZ0jKzq1c5JSWqiHWqAnAiGTW7Vc01+HNNtJV0niCNwLD0Ba6zfGbSyVQ0CnGLDSIv04koNQp6ukG3BF4LhHkA2NiTdJ5qZ9bTqprD39h2Aer5Tm+QHI/DFgOvKZR+GjOEJb0EmitxZ/qORj2BfUlj0AyIJOIm93ZJSfMtGPGEp1OF8B2oTfEGAueVsCA8qblv8MZPFcpe8hvKZoH0tvgaY5FgAcGVTWZ49I31SjW2pVOf9jZFt3PJHcHdGx9Gr5O3JgaRpIM6d5s/oQPfPQPVHFUDMXgbRBKQSttFtLdCIaRCIuUoDd5esgIz1YpEr6u9
X-Microsoft-Antispam-PRVS: <AM2PR07MB1042551A748656FE561B2AB981550@AM2PR07MB1042.eurprd07.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046);
	SRVR:AM2PR07MB1042; BCL:0; PCL:0; RULEID:; SRVR:AM2PR07MB1042; 
X-Forefront-PRVS: 09749A275C
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(4630300001)(6009001)(6049001)(7916002)(71364002)(199003)(189002)(47776003)(66066001)(50466002)(42186005)(86362001)(59896002)(2906002)(105586002)(106356001)(15395725005)(586003)(2351001)(3846002)(83506001)(2501003)(4001350100001)(1720100001)(36756003)(77096005)(64126003)(65816999)(19580395003)(54356999)(99136001)(189998001)(15975445007)(33656002)(5004730100002)(5640700001)(101416001)(5008740100001)(450100001)(107886002)(68736007)(92566002)(8676002)(65806001)(81166006)(110136002)(87266999)(80316001)(6116002)(23676002)(50986999)(230700001)(97736004)(65956001)(229853001)(81156014)(1730700003)(10126625002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM2PR07MB1042; H:[10.154.187.104];
	FPR:; SPF:None; PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
Received-SPF: None (protection.outlook.com: nokia.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtBTTJQUjA3TUIxMDQyOzIzOlhCYkpsMGoyQWFvdUcyazZlanlYcnJiYkFW?=
	=?utf-8?B?cGZJdS9zOTZuaFpWQ0RWejlsYTFZTHRmZFl1T1NhUWNWYUhHaDhOemRHTDdD?=
	=?utf-8?B?VnVNM2xxMWpRVFhLT0xHbTdpdk1XZ3NBSW53UWNPSTNVQ2VqZEk0c3JZZngw?=
	=?utf-8?B?QTkyZS9lTGFZNTR1bGQ2aTVuZkl0UFB5Q0ZQenNFL0laa1M2dGVGNXBsaWRv?=
	=?utf-8?B?VDg4b1k0cU95eWMrQ0ZEOFlUUVpqRndsRFJrdGdaczRQNUs5c0ErZjBjWUlh?=
	=?utf-8?B?bmY3RmhqQlVzTklUdGE1c0xqdkpkNmZ4aUQyaWdjWHc4QjdYY2dHUWJZMlVh?=
	=?utf-8?B?Sm8zeXlhQ3NBNVRVck5UZFlvWkJYYmxENW5hZVVsVDRWelBmWEs0bDRBZ29V?=
	=?utf-8?B?ZWlXWm1GMHRweFhkai9FblpTek5pMktaallGZmRYY1l0VCtuYU9Ld2xjWTFl?=
	=?utf-8?B?K3ZNUmdTTC9BaG42SThUSDJoZU9KTGlQR0hRQ0lhNUFmdDBBbXZXR01zZFlE?=
	=?utf-8?B?R1M2aGt6d2Y3NzBlMjJCQVJ2QXJiWExFZ2ZTYlhXSnBrMDJLQnVMV2xQeE0r?=
	=?utf-8?B?RDRPMmwvK1g4dHJJVk9GRzdiazVPc2U5cVNXWGp2LzRiZ3dqaS9pZTMra3N2?=
	=?utf-8?B?VTh3VjFacVJtS3pVdFkwTis4b2VFdVZTU0N6WjY3S0k5b08rSlU2NVZQbXVv?=
	=?utf-8?B?dXdiZ3FaUldvMXkxYmRwVTBqZTcwbzVEaEYrTWoyMlR5WU93enRCdkZHYTFp?=
	=?utf-8?B?QnBTUzVoMnNLYTRvaE55Y3hmK0Fsb1FtVFRJNHdqblBacEJnbVczeXlGU0pI?=
	=?utf-8?B?Qko4ODFPNGthajAvNGdDOFVrbHljczQxQTRpVnRRUXFncjIxdm5vYzlSanl6?=
	=?utf-8?B?YnI4VU9jTEc5dWtTbUxMelY1VVNrTzVHZ0J0UitSL2JoTE1hVEhjZHhQTTRE?=
	=?utf-8?B?a3NPUTNrVG1QVktudGZMczR0UVVXZ3hLRGlNRk9oOTV0Y0tBcnMwTmY5dndp?=
	=?utf-8?B?TitzZFMxTlpySHhRZHVBTkplOFVNcy95S21yMnRXNnJGaTFQVnJYUytqK2tT?=
	=?utf-8?B?bDIxVWN1cjZOQVcrL1kzaS84c2xDMW9nYUpFdUZ0WG5WV29SdFl5WDBKS1R5?=
	=?utf-8?B?WHdmbldWeDVuNHdoZEhJZCtFZWd4MGVJTmNWTXBPM1VVcUFlbEVKZkNiNzBo?=
	=?utf-8?B?T2VhZDNSVURoN1dUMFpyT1hEbVNPS2FlcGdPenkrSGk2MWZocFBWbE1UaUNY?=
	=?utf-8?B?QUZQOGJNTC9VOG1IREJOWkpqdS92bGRPUTBIMWcwZ3ZhNEorKy82V2x5NFgy?=
	=?utf-8?B?cHByWnhwK05ZR0ZiVjZGemxWUitZYXNxc2ZnbmZwYm1HdjA2Wld6Szg3dDF4?=
	=?utf-8?B?VHZpaENqd011RG85Z243Yng4d1NFZGhRWmk4eVRlWkJIZmwydnpaYkp1UUJS?=
	=?utf-8?B?UmtJUlBKRFZ6WDExbmJBbTdtTlRWOG0zL0pZeTFTeGR0bi8wOUkxSWY3T1Er?=
	=?utf-8?B?QVZITnJSVUxKaU10Y3VJRmQzd2UwdGNHalhlWHk3ck1tajhoTUdGcnZlVkFa?=
	=?utf-8?B?VERsOUI1d1grakk5MUNmUDlJbGwwRWxYVDVPb1lyTXpFaHlsRHM3TGJxejkw?=
	=?utf-8?B?UnNpbnhxK2h4U0VjdkRVSnJWeExNUElER2RSbG5nMnBsQ25vbExFTzZiN3I3?=
	=?utf-8?B?NGVwZWF5NTV3ak1QeHNvbUpyemJkWEpHNTlWSTh2WStsRG4xb2llQVVnNFJL?=
	=?utf-8?B?TXFmblJlVFdrbEl6ZkhKeXZjRU5oeC9XR1p0UUhkczQ5NTFEUEdoUXNKdnMy?=
	=?utf-8?B?MjJKUFV4YlNiYWZiSzJTbHNFYTI2ZlpCRU5TTFQrVkgwNmp5QXNWK1pkSWo4?=
	=?utf-8?B?TFp5MUhMaWJPUzdEV0ZkaVppSGw4d0hNK3h4T0FYYUFaRVZPOS8yTHdnSVcv?=
	=?utf-8?B?eHk5TVhmSE9neHh4Z1F5ZFNMc2ZWd3NKaHFudnllQjV2S09rR2JpT0J3YzR1?=
	=?utf-8?Q?qTCL6D?=
X-Microsoft-Exchange-Diagnostics: 1; AM2PR07MB1042;
	5:9VuL8UzTOuX2Cd7lTWGLN46KO3YdljtFbuMafndxfiVf5S+7MpVWwgZh86zQUKQ3Bg1CjagtAuFHK17bo2dbhvfO9GNMtNAIWv4NifETmN67ocS51jO6TNN+2oEbz7qolUGLYFJOCk8mrEe+N7fNxg==;
	24:hq+y5Q7k4b5+1jFiA8rcNcMj1VtySkjPe2SCD6P4XCbuNLbzCDul17aYXhVXHWloorgGgOckTknTsA9+2P852F3fJeBt3k1mKfunjd7TvIs=;
	7:Ykr9ID5zeABF21Mju1+7nTXL/EwQM2AM5oiApcjkgvsZSqIbw8xgnml6HD41TG8gd3EVXW7QjFeAxB2cvg42BwCAfdZQB/XHSnoByn2B2nClrkLqREX4Cy90SESCkZLiXFYa/FGv4ADTLzzbUidwgbECKKp7U8iTjJRtDTi4lHTN4QIQF+GT9zjqkFBqExQogG2eGMiYKMtQ9qAb/ZbLqA==
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: nokia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2016 14:51:03.3346 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM2PR07MB1042
Subject: Additional layers with class and conf
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
X-List-Received-Date: Wed, 15 Jun 2016 14:51:09 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

I got two layers, meta-x and meta-y , meta-x got meta-y in 
bblayers.conf.   in meta-y contains conf/layer.conf with BBPATH .= 
":${LAYERDIR}", plus classes/my.bbclass plus local.conf containing 
INHERIT += "my"
when I ran bitbake -e my-image, the INHERIT doesn't seem to contain "my"

When I put it directly in layer.conf it works, but what to add to 
layer.conf to make bitbake to look for other *.conf files in meta-y/conf/ ??

My bblayers.conf.sample is modified in meta-x (the project meta), which 
is copied over to $BUILDDIR when i run oe-init-build-env ,
here is meta-y/conf/layer.conf  :  http://pastebin.com/mhxe9K5C

when I ran
bitbake -e my-image
i see
BBPATH="/var/fpwork/mastier/myproject/poky/meta-yocto:/var/fpwork/mastier/myproject/mymachine:/var/fpwork/mastier/myproject/poky/meta:/var/fpwork/mastier/myproject/poky/meta-yocto-bsp:/var/fpwork/mastier/myproject/meta-x:/var/fpwork/mastier/myproject/meta-y"

where "mymachine" is my BUILDDIR

-- 
Kind regards,
Bartosz Woronicz
Engineer, Software Configuration (SCM)
Nokia Networks - PL/Wroclaw


