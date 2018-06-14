Return-Path: <patrick.vacek@here.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 699FBE0130B; Thu, 14 Jun 2018 15:19:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.139 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0139.outbound.protection.outlook.com [104.47.2.139])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85CDAE00E12
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 15:19:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hmcs.onmicrosoft.com; 
	s=selector1-here-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=hH/hufz/hwV3Y0cFBAYVZh3SQMTqTiiYUhjI54Xaz+g=;
	b=PJRCD+1rdcfuHC72twLOpC+0OfEZL4jmXQin9HnX8y6bM0vhafoP084oXu1etFCXcGuZZdbGAJka45OsiLapD2ElkFx03NoFqapuh+fheW628+O5CozeHlxQY3gBSMW546KQPIaWHLjPTNt2J8PdkBghgNubGPcXXANwVk3UwSQ=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=patrick.vacek@here.com; 
Received: from [192.168.1.113] (87.191.159.149) by
	DB7PR04MB4107.eurprd04.prod.outlook.com (2603:10a6:5:26::12) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.841.17; Thu, 14 Jun 2018 12:45:06 +0000
To: Andre McCurdy <armccurdy@gmail.com>
References: <785a2b9a-d6c8-8356-d218-ecc80af2c46d@here.com>
	<CAMKF1spJvA1pP1BrwmcazY0n1QujJPU270dpL=vq9Vfuri73nA@mail.gmail.com>
	<83419d13-87b0-40a7-dfa0-b30924399405@here.com>
	<536f8a9d-c5db-6cf6-4d4e-fca749d143a0@gmail.com>
	<a7231983-76e8-4307-4eff-d206f4756b5e@here.com>
	<CAJ86T=Vu-4PURtuk3Di1n7WsvV4yoXJUR+1MTWD-M9htiMqdFA@mail.gmail.com>
From: Patrick Vacek <patrick.vacek@here.com>
Openpgp: preference=signencrypt
Autocrypt: addr=patrick.vacek@here.com; prefer-encrypt=mutual; keydata=
	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
	j64UOX5oCSfUpA==
Message-ID: <67f8156f-28dd-d3b8-f2ac-c03bcd587d50@here.com>
Date: Thu, 14 Jun 2018 14:44:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <CAJ86T=Vu-4PURtuk3Di1n7WsvV4yoXJUR+1MTWD-M9htiMqdFA@mail.gmail.com>
X-Originating-IP: [87.191.159.149]
X-ClientProxiedBy: AM0PR07CA0006.eurprd07.prod.outlook.com
	(2603:10a6:208:ac::19) To DB7PR04MB4107.eurprd04.prod.outlook.com
	(2603:10a6:5:26::12)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 35cc3df7-2c83-43b6-92d1-08d5d1f4a800
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(48565401081)(5600026)(711020)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);
	SRVR:DB7PR04MB4107; 
X-Microsoft-Exchange-Diagnostics: 1; DB7PR04MB4107;
	3:JFP1cLk81TsA8x1auyOrxXcydOmrUktucf/ueWYMNUhMsZPhBBaH7sWgaRENQ04vn8EDdMIGQ0W1jomon6Cf0XhVA5FFky9IkNFOSGms2flvUcAq778UfpOHcW1kRBGH+XoO3XibtwxR3MafRsE1JGln+UHV8+R2uON1Qe+TMkOOz+sljtWk0GcY9BOAmJ9Pvuv0fw8f4xdWXbkSNnTixdoXPIxdxhaNXgdK+AdMLXwqKGBGaTJhwPwayT2BG36m;
	25:nUCbTR7J4Vai8WJTVT0ZuWOGq+WoMZZJ+wMvhcD3zHUSSS45jceeip5zOkUevCUvXXboBqQrcVOGMx5OFEmd2STCrxHZljO0rTHdNXKXVVwu34bzQEaGwZDR0O57K4ClNCj/YSDqBAqFzg4/5wnmrYje+oPXYa11qLI166o16BSyxR0t565lWz7th7pRhkPc0aetTMVucIzYiLfWs49LC/Fcy3daEgTf4r9JakjeiPGU+LXkrNaUyiK1Qtrf4IpUrYxTzI0JjjMR3e8g42MkVEuRkjVLmnE+tLgVPN7/4sUPtI16WLv9a/1b8qIf/GxBIaWoUr4BvJxILw6ByljCYg==;
	31:3+sZUFA3WA38C53BTcq+LzSu9J+gXrz3rcO8CIyFdnL+TlAiNeVBcpLWFDdpwZ32YcIHciXZ8RyJCg6vL87LqvQSoii46QiMCyVpigr0bWm4nwAjsKpp6aDdjhrhIAKkGd6Earrx98rDDnt1fkZle1ce8rstXlQN9j75T12TM7oddUvfb9t219hDNn4MXBCAufQN+Jb6dbAAuN+IHA/peGXZW5qt6XcuqO12qmISBQQ=
X-MS-TrafficTypeDiagnostic: DB7PR04MB4107:
X-Microsoft-Exchange-Diagnostics: 1; DB7PR04MB4107;
	20:HmsXC0Us/OCNnuomAtCgjadkpsAAB1pH7bg5Nlj01+Me+XumxvYFaaZF9Sny78X5AvmSMaLPI8qWm3hAvfZwFsMfG7gCCJIL1T/Z9M8saydvgPvv3fhxg7ojPri1iwSK4tOYj/CNjNw9yj7o94fsQP/BT9uOnFGv34pxNRXPsoCVC5h8QXpvO0qG/nNB3JU4XjSdi81qxABB2991ZGuzxBXX6O8YmKLTgZVOmbvA+JI3tIFsBjOAxvPFJSNE0fjCtR+EU8TcoNPy5XoAumZ2G0E7xN4iaz0HHf9lVv0FTpHXB7jLsL9QbDQT9Ow6Bee1YDf437Ni4zXKJ8RGfGETHMypkBcdj75rXgh/+ew/bjaTO4VMQVMgjOQkDwqScC73VnRstZ6wHlI44ve3Cuq+RnbIn59xSWjDbBxqtZwtkMPVEuWSfCR28NvrNOzfvijfbqQHthnLryRCb4a9KN+bo1vkM16LWQrLE+F+5j3o0YZM3RDuABfl32Fm7lBl55bx;
	4:VEP9jR67XlvG2jbkNtBymt5C45dEgFtIHzseURLHUtLaox6VZwSdV/wbuoap8l96NCf1GkMFULRwu6lymAvFaaVVYO05E/LZZqPvE8KI7848104vft5F53TiZPXarYxEguGUrc0njjrBQ8/3psy5xENjqUzGEBVlAW/FSSSY/Tk6MleI0rsVXSrVzRDFWp/KgAXeIHUDckD/kYqj6w9035vF7nf+9dZmU1BMJuZMZ7ZvK/p5uMyumuskA+iWhJP1YadEf1cryNFlBr+2C1J+gKfe+S9oIEySYC8ru11jUsXT7Z7G4XvEZcqzRGI1EzPmqSXvt3TrY7/+OXSMejVSCBJ4rXhIT6OHnjIu1JE7sqg=
X-Microsoft-Antispam-PRVS: <DB7PR04MB4107B81EE02E897042C1703A8D7D0@DB7PR04MB4107.eurprd04.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(87047540314649)(17755550239193);
X-MS-Exchange-SenderADCheck: 1
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(8121501046)(5005006)(93006095)(93001095)(10201501046)(3231254)(944501410)(52105095)(3002001)(6055026)(149027)(150027)(6041310)(20161123558120)(20161123562045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(20161123564045)(6072148)(201708071742011)(7699016);
	SRVR:DB7PR04MB4107; BCL:0; PCL:0; RULEID:; SRVR:DB7PR04MB4107; 
X-Forefront-PRVS: 0703B549E4
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(6049001)(39380400002)(39860400002)(396003)(376002)(366004)(346002)(189003)(199004)(3846002)(386003)(81166006)(6116002)(39060400002)(50466002)(65806001)(5660300001)(53936002)(47776003)(66066001)(65956001)(8936002)(8746002)(25786009)(186003)(81156014)(6246003)(97736004)(31696002)(23676004)(2486003)(52116002)(52146003)(64126003)(76176011)(86362001)(2906002)(4326008)(8676002)(31686004)(53546011)(65826007)(16526019)(77096007)(26005)(117156002)(2616005)(476003)(956004)(11346002)(486006)(36756003)(44832011)(68736007)(16576012)(54906003)(93886005)(446003)(1411001)(7736002)(105586002)(229853002)(316002)(106356001)(305945005)(6666003)(478600001)(58126008)(6916009)(6486002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB7PR04MB4107; H:[192.168.1.113];
	FPR:; SPF:None; LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: here.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtEQjdQUjA0TUI0MTA3OzIzOktCK2ZyNGluZmNiTnZJN2wzOHBNekhjUCt0?=
	=?utf-8?B?dEtwTEZwdW1Qa25FL1oxM3hFV3czSHJwSHpxMGg5TUpFd092My9BTzQvRHJi?=
	=?utf-8?B?ZDVvNlA0Q3d3QzBPMVE3SEJCWE55a05ONHhJNVB3YVVWR1NselVZeUdyWThZ?=
	=?utf-8?B?bXRLK2NqNDlEZEE5MzlVemM4cExXc2JUMldUaFJsYXU0eDdSbGNJUVFjVHFz?=
	=?utf-8?B?dlBmU0hFb3dOOTJ3cUpxWmVQaGI1d2g5KzFGeHcwVzdNVDFGSkF2T3h4Vlpo?=
	=?utf-8?B?SldWVkM3dWhNdzlsMHBDN1pPZHd2Y0EyUk0yMFlvakd2aU1xQXVneVdhZTQx?=
	=?utf-8?B?TG1JYUhzZWM4TDcvSTNrVkZKVzVIaVZqZ015M3JkZTRCMnUzUGNFR2RxemFG?=
	=?utf-8?B?NmhPVUtLbjJocnF5VHpvLzNXVkZGaUJxbis5UEtmSWdwaUNxWU51THR1UTZL?=
	=?utf-8?B?TFJIMDMxeUYwZkQ3RVNEellDTkEwSlpkSXNzQmtSNXdBQ1JJcVZjamFDUllz?=
	=?utf-8?B?TlBmdGNkUDRpUFkyWTNkZ29mM3VsSGpxdzEvMjBCRThtWGZYa2NCZFZzaDVr?=
	=?utf-8?B?clFtdTRiRXhiWVNYNUVOblc4UW1xM2RUOVJDRkhKNmJibjdsbzVSQUd6Ritt?=
	=?utf-8?B?clkxS1pTVURsRzFRY1grWDJVMXk0TmlKdVZaaEI4eXlvV0hZS1FEbC9KQTRU?=
	=?utf-8?B?amVEQk5rcEVtNUtmN2NTQTVTYzNiYmwvVW8ySmJCSmN2WVhlY2Rhc0FXRlVj?=
	=?utf-8?B?MkxWdDVMbUZ2NGx4V1g5ZzFHVFlycXBMK2psMis2NG9RTFc2clpUN0FkaWdG?=
	=?utf-8?B?dllzeFh5NU1aQVRZWWtqdDJCTlMybUhORUYxV05XU3V4Q3F3TnJEV3ZQNUNv?=
	=?utf-8?B?b3Y4VWd2Um42a0xHSG8yN084U2U1RWxNY0hHSk1QamdGc1UreEF0UVJzVmd5?=
	=?utf-8?B?WmRGamtLZXBTV3E0cm1HN3lTZzVxaG1zOEZtT1k2L2EvSnVCaVJUU2hIZzhI?=
	=?utf-8?B?endYdlgxMktseis4NGJtbFFDVmNCZURnOW10UlNrRERReGRiRzdsTTNSS2x3?=
	=?utf-8?B?WGdCeFBFakxrbG1DamJMRXlFZlFHNGJEOWdKanRoNUJxbkFmbmJlWTdybkNj?=
	=?utf-8?B?SG1SdStkbjVxc2o5UTZ3ZEUwM3BDQmFDQmZHeTlWaFdCa2piZlQ2SURJcVpJ?=
	=?utf-8?B?VlZsQ3F6Ukc2VGx4YlcwSUhCa21BdXMyMk95L2xKenZDNUpoZ1UvNHBZbXcv?=
	=?utf-8?B?K2s0b1NWUUVPREVaM2ZVam8zdEpFeUFuK1htRi9lc3VVRnJ6MVYweHY0Skpx?=
	=?utf-8?B?amhEOXZtY1JmT3Y4VWdFbTFGOXluaUV1UzE1UU5XWHlJc2pMWm01VUQ5VVJF?=
	=?utf-8?B?clNTa3ArTXJvaFc1K3JIdm0yR0d1ZXdlOUE1RW9GbWFoUElzb0VGemxTUUFJ?=
	=?utf-8?B?RCs4WjdtYVpRNERRSDZ4azlBN1lYd1NIOEtBQWEwR0lqRFk5QU1aWWZ6QWJ3?=
	=?utf-8?B?cG54dGp0UUJ6TGRXWjJiRkx6ZHFWSXh0d09lNk1MeWROOURQZGpzY2VZcmpO?=
	=?utf-8?B?UlVMUVdOclN5ZlIvME9MMDlieENIeWNiS0xtN1d6VGZuczdFeUVpVEJlUW9w?=
	=?utf-8?B?KzlzTFhRVHg3b0NabTJZb3Nia1MzMzRFSE4zOGQxRElRZXFUeTVPVmV1emM5?=
	=?utf-8?B?NGZ0ejczdkxKQkIwUTlFa0QvNGs3bEloUCsreWt4WEZja1YyM2l5NGRlKy9M?=
	=?utf-8?B?R0E1RmRJenJRc3ZHcGszVk91aUkyL0YvNytFRGZKYWNveU9yR2dZcjNKL1po?=
	=?utf-8?B?QmYvdXJzSmJsWjRYM0ZlaGhDR0NZYXhSZnNDSmJmMkdoUjVpRys5ZjYxMjEr?=
	=?utf-8?B?VlhEbHArRGpSMjdJNHNmY0VRZXhYc1FVcjFNVTZNWTcvWDVDMTZyV3QvNXJk?=
	=?utf-8?B?NkwyVlYrY0I0RWZwVDBqL0dpVlR6OGlZc2ZNekI4K2VvdUJrcU1URmlyMmNX?=
	=?utf-8?B?eCtQZStxbVYvYVp0aUhPdlc2RU84MEJ3YUdhT2xtMkJKbWtsZnNicU44ZDVs?=
	=?utf-8?B?b0Fva3Z2ckRjZ1A1U3ZNL1lRMkdzTmJNbXNGVHV6QjBIN1hBNm12TnlINmdV?=
	=?utf-8?B?OHc9PQ==?=
X-Microsoft-Antispam-Message-Info: 2Z0i34AeYPCouXLkNjFI8fbDSDAytiPezGPI1oo9Ydl73a4rN16et1smnrw6IwEpknnCKGZA+4c7q3AG39gK37VIwh7UAOpkOSo149A9dy2h4DgjHqaOMDGMKlPXhu2LjADz2MU/bX1c9EzIb6/8LVtA2f6cmiJum4XHWwzBjKe/GZJVkvF0y/kYyHaNU0om
X-Microsoft-Exchange-Diagnostics: 1; DB7PR04MB4107;
	6:qZcIBsaoCu3z3ppIedn7N7/pdjRk+9reUrp3nOgWsFS5+DaRA34cxcgdcfF36nqdtgBWjdteutFeM5s2BH/0fBTM9D1yMO0tPMeu0u/3Zs3TVksc6W0ina0f3ZffqPBJWLgGbhH+Ykl0DU6fvckBbgv8+VqB3ndJF5oDjCmB5j95YvE3HfQC7ER0OmxiXbR/7fqoApcaYiC82+z8MepNVhfI9EEjSN/XsZ/OO/pfJgE+KDVPDDhZ4WQrvSAk3iDFpiWpa7lNblbwqRfvrzOfwfBJBu3KKo2tW3ddZurjPm8FmkAozdL/PEpZWSdElRHL8idQ5D+oeSmaTcye4PMeHCBW4VVE3Mt9lU7XiLoRo5+gMTqG3X9uXQvoORj2++ZcMgAHvjIMvhOEJLin8rU851LOkVhFF6hwMSYFdaTKyNFTZMmk1Yamw/fdyy1hSWQOeg1vMzbd5DUoTJQaGg+2UA==;
	5:uqulwOn0dcnr02jynB5GLf5mrAViPKVJ9M1+AyHHHSRFz2yoEWq55ZufO5c1P0TAKjZcSGYkSfH+632xi6A51Tn14UqE3HSdt2aWhq2VsfODj4F3S/Nq2dFnIuTpltg3UpdH9PzyqW6+1c8TMcfH7FrIFtwFGQxM/uGPLS8AW/k=;
	24:/C0fn+SUve+OE8ntIxn5TR+9JQwMtwWhMDLUdoCF0ErSijuW+RnsR4Jy6kQdnjmrSY1jwaREsEY+5WAf4Mg655Oe7INCMX0s9fqJkPaGM+c=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; DB7PR04MB4107;
	7:nI+tK28pNalVKmCy4mijWgD1rnMeUR3ye0+Pw/MSoFm4fxE4saLMIrvLVnxVzK05NeASFC/hHD+gV/hxeO7VXj1XBY7ZqgBAznGpZj+2TWMuKTHns6u4kFtSy5RRrfwwKbC/PdLfxpzabmls04YyuYs3Oj0Laq57+RVQ697k0nAByvYZT5k3GZj+XYluF3N/GIOo8jQ/7S/pSsB2MjM5I79S6AvzUURrjX+25PIgtyGGV1vDfysbiG53k9IhCbNp
X-OriginatorOrg: here.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2018 12:45:06.1126 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 35cc3df7-2c83-43b6-92d1-08d5d1f4a800
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 6d4034cd-7225-4f72-b853-91feaea64919
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4107
X-Mailman-Approved-At: Fri, 15 Jun 2018 08:25:57 -0700
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: sysroot not being populated
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
X-List-Received-Date: Thu, 14 Jun 2018 22:19:27 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

On 12.06.2018 00:48, Andre McCurdy wrote:
> On Fri, Jun 8, 2018 at 2:42 AM, Patrick Vacek <patrick.vacek@here.com> =
wrote:
>> On 08.06.2018 10:26, Khem Raj wrote:
>>> On 6/8/18 12:27 AM, Patrick Vacek wrote:
>>>> On 07.06.2018 19:06, Khem Raj wrote:
>>>>> On Mon, Jun 4, 2018 at 2:01 AM, Patrick Vacek
>>>>> <patrick.vacek@here.com> wrote:
>>>>>> I have a recipe (aktualizr-hsm-prov) that depends on another
>>>>>> (aktualizr)
>>>>>> to provide an executable and a config file. The former recipe incl=
udes
>>>>>> `DEPENDS =3D "aktualizr-native"`, and my do_install() for
>>>>>> aktualizr-hsm-prov has a line something like this:
>>>>>>
>>>>>> aktualizr -i ${STAGING_DIR_NATIVE}${libdir}/sota.conf
>>>>>>
>>>>>> The binary executable (aktualizr) runs, which tells me that the re=
cipe
>>>>>> can find that. (Although to be honest, I'm not sure which version
>>>>>> it is
>>>>>> running.) However, it doesn't find the config file, and sure enoug=
h,
>>>>>> ${STAGING_DIR_NATIVE}${libdir} does not have the config file I
>>>>>> expect. I
>>>>>> can see that aktualizr-native is populating its sysroot-destdir,
>>>>>> but it
>>>>>> isn't getting copied to the sysroot for aktualizr-hsm-prov.
>>>>>>
>>>>>> I see this problem in sumo and master, although previously this lo=
gic
>>>>>> has worked just fine in morty/pyro/rocko.
>>>>>>
>>>>>> What am I doing wrong? What changed between rocko and sumo?
>>> Can you check location of sota.conf in the build tree for
>>> aktualizr-native in directory called package/
>> Oddly, I do not see a package subdirectory inside the aktualizr-native=

>> directory in the build tree. I do see it inside the aktualizr director=
y,
>> though, and it contains everything that I would expect. Is there some
>> sort of configuration of the packaging system for a native recipe that=
 I
>> haven't done correctly?
> No, what you see is expected - there's no packaging for -native recipes=
=2E
>
> Back to the original problem, I think you should consider the
> aktualizr executable and the sota.conf file as two separate things.
> The host executable should always be provided by aktualizr-native.
> It's less clear what should provide sota.conf - it depends whether
> it's just required for building other recipes (ie like a header file)
> or whether it needs to be present in the final rootfs? If it's only
> required for building other packages, then it should be in the -dev
> package for aktualizr. If it needs to be present in the final rootfs
> then it should be in the default package for aktualizr. Either way,
> recipes which need to find sota.conf in sysroot would then depend on
> "aktualizr". Therefore recipes which need both the host executable and
> sota.conf in sysroot should depend on both aktualizr and
> aktualizr-native.
Actually, after some further research, it appears that my problem is not
entirely resolved. The explanation of packaging and native vs. target
dependencies all makes sense to me and usually works. However, this is
not the case for one specific condition which happens to be part of my
test suite.

One of my tests is to change the MACHINE in my local.conf, add some
additional layers, change some other variables, and then bitbake. Then I
undo that and bitbake again. For the most part, that works fine. In
rocko and before, it worked consistently. But it seems like on sumo and
master, when I do the test by changing the MACHINE and the layers, it
somehow clears out everything in my recipe's work directory, despite
that that recipe is not used by that test. In fact, it removes every
single file in tmp/work/core2-64-poky-linux (but leaves most of the
directories). When I switch back to how it was before and bitbake, most
of the files get recreated or re-copied, but not all. I have to
explicitly run `bitbake -c cleanall aktualizr aktualizr-hsm-prov` to get
things to work again. (Perhaps cleanall isn't necessary, but some form
of cleaning is, and it has to be both recipes.)

Can someone help explain why I am seeing this behavior? I don't
understand why the files get erased, why they don't get repopulated, and
why this was different back in rocko.

Thanks!
Patrick


