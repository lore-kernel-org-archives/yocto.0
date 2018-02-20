Return-Path: <Martin.Hundeboll@prevas.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BD7EE00E4B; Tue, 20 Feb 2018 00:18:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.119 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 5554 seconds by postgrey-1.32 at yocto-www;
	Tue, 20 Feb 2018 00:17:58 PST
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0119.outbound.protection.outlook.com [104.47.2.119])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31EC7E00D6D
	for <yocto@yoctoproject.org>; Tue, 20 Feb 2018 00:17:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=prevasonline.onmicrosoft.com; s=selector1-prevas-se;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=IT/b1NKCACzkUVDepWwEOjDDmfgrtMNnrlxns/VWwFc=;
	b=GW6IB54xPl9YwORC4Vfx1Bw+0/xH6UISX7pBoIQh37AWDJi7sXklsdSSgXsGaf5YpQvfaOVVx/3xqo8iei3FRnpr1yr83fOVEvz/Mj7TpoCBS2eptnTOcY/gYPiClA+ff/mAiSXmAwy3UYGZ1P7Sm4VUnkkoLROwNZLO67teMJA=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=Martin.Hundeboll@prevas.se; 
Received: from [172.16.11.15] (81.216.59.226) by
	VI1PR10MB0128.EURPRD10.PROD.OUTLOOK.COM (2a01:111:e400:c54a::26) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.485.10;
	Tue, 20 Feb 2018 06:45:21 +0000
To: =?UTF-8?Q?Iv=c3=a1n_Castell?= <icastell@nayarsystems.com>,
	"Maxin B. John" <maxin.john@intel.com>
References: <CAALXFYz4Zp4+FTj=VvNVNWOHqnK180YhOBykLEiZ2nTCLF6kig@mail.gmail.com>
	<CAALXFYy7nN1ZahoR_+mCLeD4U7z4zEoiNwv+mzwT8dEf+e-pmg@mail.gmail.com>
	<CAMKF1sqrDFkVB0brWidTvARLpsKGHC6NFCQhP-yF25vtS_WxYA@mail.gmail.com>
	<20180219151819.GA38294@mbabyjoh-desk.ger.corp.intel.com>
	<CAALXFYxh2RWy1pvYyd0Fw=V0W6w2gZFZZ55sGNw3qMEaG_wRsQ@mail.gmail.com>
From: =?UTF-8?Q?Martin_Hundeb=c3=b8ll?= <mnhu@prevas.dk>
Message-ID: <de7a5512-c5bf-8a67-f454-a85c788ef2b6@prevas.dk>
Date: Tue, 20 Feb 2018 07:45:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CAALXFYxh2RWy1pvYyd0Fw=V0W6w2gZFZZ55sGNw3qMEaG_wRsQ@mail.gmail.com>
X-Originating-IP: [81.216.59.226]
X-ClientProxiedBy: DB6PR07CA0091.eurprd07.prod.outlook.com
	(2603:10a6:6:2b::29) To VI1PR10MB0128.EURPRD10.PROD.OUTLOOK.COM
	(2a01:111:e400:c54a::26)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 223dd715-f49c-49ba-58f7-08d5782d837a
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4604075)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603307)(7153060)(7193020);
	SRVR:VI1PR10MB0128; 
X-Microsoft-Exchange-Diagnostics: 1; VI1PR10MB0128;
	3:ZySlW1lSaMVJxTiYkIVa/Zu7NL4dmKTsY+5VLafU8uw9poBwp4lmnOpuZeXP3oZCG/VmhfRLntZ4MzgNbH04XsmRxJkEuMXZV/6we55+tLJkk3NxKUpTnfrXK8Xc2O4h8Xe+ROY2ArSpbW/G9ubeRIO4ym18NNgYLSikPxg4tj75qLLHPlewpL6xCMUfkwNycaWm+N6ysNtAFg7OfvCLlzjZ845KUi1CcnIzVocxPEN7YK7/FgJU/E4syvnBfkME;
	25:0MFDtNbloH6+9I95+SXVwFXpaddzU/SfrvFUjevIXzfXHkkqroDCluIPGiV7NVrW+GUPo6LO/G3dHvMNp/mv67OWDzdb5mCeOoZxNlyRnBzUaZZMuRMZravCMXsrXAobNvEmz0R0unNhYTIaiFebDAtGc92RIcCcrgSbp9c2hZdJOy1hCYv5pJUkGTIUzZ/NOAEs1d1WWiA6kMKnkXY1P8depZfyhncjvk8+0wAKIiH6pC7p8qQLIKJxiHIFN2AeOJfLAO97njbCwOK6ucHo43FGvrifxaVeHQk4pdnpwq+um90PBlKPcHtLf2DM/ETaLw4Ytbo9jrsP/7iXaaSiSA==;
	31:f4+e4oJ98cC9kQN5tcHJNiSgeiKUcep9CfbvHrUAXH19pyl23dan2S2454KGMp5Fol6koDDKWRX+p60Vo+B9GhOIoHHtkMwF0ppqVUp3lfLI9pncXV6tj2EkvElC36BuD55Cf2ydiMdw7AfxzlUhPoEr9Ej4DE/LyJFsOaG/F756DYHGYxGw4ktpx24JvwQwCAKIXSMmhWerdQ3DU983dYkoKv5dDK/FKs8ejYRIJaE=
X-MS-TrafficTypeDiagnostic: VI1PR10MB0128:
X-Microsoft-Antispam-PRVS: <VI1PR10MB012800D57232F9BF5BBF7A3D9DCF0@VI1PR10MB0128.EURPRD10.PROD.OUTLOOK.COM>
X-Exchange-Antispam-Report-Test: UriScan:(228905959029699);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040501)(2401047)(5005006)(8121501046)(3231101)(2400082)(944501161)(93006095)(10201501046)(3002001)(6041288)(20161123564045)(2016111802025)(20161123562045)(20161123558120)(20161123560045)(6072148)(6043046)(201708071742011);
	SRVR:VI1PR10MB0128; BCL:0; PCL:0; RULEID:; SRVR:VI1PR10MB0128; 
X-Microsoft-Exchange-Diagnostics: 1; VI1PR10MB0128;
	4:1HhoV0Ig5mVLkBQvfy73CHGFD+6sFhsa1D4plYQ8F1DSjzWEXm9aoRiWK29NHID4Hu2IXmt9qWH3LCUWlCxqk6l0WmwiBYASzd24Hp75e2qMiUeuxQt9No/Ks1cyhhIECgwga3R668Hwc+XvpQrSRKYXZN3yIN2F/irFslNyzjY7xrp442rGG8Cw+x0rO8XnXcDqw6gNjqh5GU8JZXNwqPioJxsFUB+L5Fj6QwRDTOfFXZa3R8tCmg+vtZFZLRONiuSjW2VZFdOD9IxNIsS9/KgusOYp6IXOg9MS7xiJ/ls2nR7dTS1uNbN1yzIBBEo/
X-Forefront-PRVS: 05891FB07F
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(6049001)(376002)(39380400002)(346002)(396003)(39850400004)(366004)(377424004)(199004)(189003)(50466002)(59450400001)(6486002)(64126003)(65826007)(6666003)(2950100002)(42882006)(5660300001)(36756003)(229853002)(4326008)(106356001)(16526019)(110136005)(58126008)(31696002)(16576012)(67846002)(316002)(186003)(83506002)(93886005)(6246003)(8976002)(8676002)(8936002)(345774005)(81166006)(81156014)(52116002)(72206003)(7736002)(966005)(68736007)(2486003)(52146003)(23676004)(26005)(77096007)(76176011)(31686004)(53546011)(386003)(53936002)(6306002)(2870700001)(47776003)(65806001)(66066001)(65956001)(25786009)(478600001)(97736004)(305945005)(2906002)(3846002)(105586002)(6116002)(74482002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR10MB0128; H:[172.16.11.15];
	FPR:; SPF:None; PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
Received-SPF: None (protection.outlook.com: prevas.se does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtWSTFQUjEwTUIwMTI4OzIzOnpJblFhVnpaamVRTzB2WllUcWg3QW5CZ3NG?=
	=?utf-8?B?U1kvbVpTUCt5QWpUZTlIMGZ5eGJxdXJhMThibWlZQW01YTJvc3QrUjlPUlF2?=
	=?utf-8?B?Z3dJemlOWHVoY2tVK3lnd3FaNzNoeWdtRTlOVnI5WGdCZmNsSXdzOGYydlRO?=
	=?utf-8?B?VFMySkg2NzJVQlRjYnhHTy84VVV0aUpGZmJJUTZBejlCSGNzeldjbnBGSEtX?=
	=?utf-8?B?VFlsWW1sSFFDdzJzVjRtYTBmVmFkb3dGLzI3bWNaUVNLVUtHbEhWSkR0MGhS?=
	=?utf-8?B?QWpyOTVlckZPUDAvdzA2aGJVRVY4RGJUS01ZeThHK0k4K2VBSGx6ZXVGTHFG?=
	=?utf-8?B?TThpTXdLMHM5SldqaVBPTEhvVUplMWMvb3RtWUQzMWdBbnpuL1JiT1lSaTF0?=
	=?utf-8?B?aElGeDJkWXlZcW9BVDFlTEViOTZlSjk0UWlFZDhTZU8xL0ZPMXgvNUJsVHNN?=
	=?utf-8?B?aERwZFFPaHVVT29qMVA0SUFTVTU2dnJ3WnViQ1VrVkszNldSQnowS29HQUhK?=
	=?utf-8?B?eXA5ejdJcnQ3bVkxdUdDamNqaFE4NGVydUpIZUZJK08yTnRDdmpwRVloeDBG?=
	=?utf-8?B?WDRSTHVpdnhJN3VHRXR5K2IrL3RiM3llZ3l2UVhacWpjZkl6VlJVemRmUFE1?=
	=?utf-8?B?WDg3MitWWTRDbWczOE8ydW92VitmeTE1c01Sa3BybG1HSmtLSGFZZ24rY2VJ?=
	=?utf-8?B?WjAzdDJ5L1ZEVnljeXdyaGRsWkRWSmc2VHlhdmpkdmJUeE1BanAzaXhxc3k3?=
	=?utf-8?B?RTFFU29ySmdqSHB0SWFqalNveW5ady9ERG10ZklHVmZmWEtmTzQrdXp4eGNF?=
	=?utf-8?B?Q2NUaHVZVEhab25ReWxwN3FjM1NCbTJMQkxhVi9KMW1tdHdjaVBxQ3lGam9p?=
	=?utf-8?B?S0E0dWRoS3lXMERsaDVYdlRwQVRhWlNQQStNL2VYd0FJT2UyalhrVTJlWk5L?=
	=?utf-8?B?OERnQ3ZFSVdxS1JuY3BwWHZIS0lMK3ZOcjRhQTBoSm1QMmFMdW9QUWVnYUJr?=
	=?utf-8?B?TWFXUWRxcW1vTU9PODNhdkU0ZWlLbUJodzNmaTJDYVB6aGN2NkFTYnFCTVpE?=
	=?utf-8?B?YkNzZy8wempxMUYxY3BvWWJxRmxxOFIvaFFiNERWZWd3SDRhc2NvbmRqcnU2?=
	=?utf-8?B?eDRJV3FicWhhZHRGeWpmTEdQVTlvdVdvWmFNdnp1ZVZjOWlvUU53REdsY1l3?=
	=?utf-8?B?KzZGYjMzc0FMRWk4ck4veVZjMnNLdDdFRWMzZG9rUXRNYUxCbVNJUmxWVXYw?=
	=?utf-8?B?OTY4RFVlcy8veWdEeE8rL1ZGRHIwTHJXQytuZXZkaFgrUGJFdzJIMWl2enpr?=
	=?utf-8?B?dnNYVU9jYXh2Rmxja0NHc2k1emc5enkzaXdZaE9sdlFzWDJtK0dkSVgwQllv?=
	=?utf-8?B?WG90M0hXMU1rTWNVSHVuOUt5V3BodHNFK2IrRWRQMDZRWDJIUDgzWU5oaW1I?=
	=?utf-8?B?WkxEUjRCNCtSamxyQVByN2lsMW93UXNSanFNYWFrQkdJN1Zvc0h2V3lUU3Jv?=
	=?utf-8?B?V0gxcjlmQi9xQzRpcGNaK3hxdHo4TVc4eUlrYzFZdkxvVGNraFhWUEd2cGlu?=
	=?utf-8?B?b1hPYTRXQzBuL1lUcDQ2V0dMRmVrcWZrWkdzTXRGb0hYV09PNUkvYnRHejdE?=
	=?utf-8?B?ZTVIRmlwSm1FNEgyWEJCeXFIYWtKekZ4dU9qMjlTWXZiK3hvWG5mL0hibmRu?=
	=?utf-8?B?NVh1NVJmcDg4bkpudGpGMzVJQmdYaDJ4WG5RVlZCQ2JwWFVhTWhNYXBXZHZx?=
	=?utf-8?B?WDZlL3ZKaUtleGxIYmJEMngzK1ZvUE1XMEdLWTRMb2ZVYnFpTkZkTVF6SzlI?=
	=?utf-8?B?c2xxZmlUL0lLRml3Z0VMeGdnOEd4eVZaTW9EVEx5aG83UWpXRlFsRHdPcnhJ?=
	=?utf-8?B?RzVXSnk0YlZ6bmJla0pqOGhzZzhpR3VFbXlVUUdjd0ppZkplWmVIOGtQb3Rz?=
	=?utf-8?B?MGpNY3lES3hmTUhJSEtBeXJxZUw1Z3AwZkM3cExsR2FvaFBOcU5Sd0J5bkZt?=
	=?utf-8?B?NDJ3QkdCcFlnbHpodVhxdytvZFdKUCtra1NiZlRmKzFxdEdUc2g1TFpCMnNR?=
	=?utf-8?B?ZVUwR01zZjNQRmNhNE1Eb0lqNTZNSnJDS2E1MGVsdXFjZWx5dFRGdXhQS1ds?=
	=?utf-8?Q?ZtKk6yFr2Rm7JycDDydZ5/U=3D?=
X-Microsoft-Exchange-Diagnostics: 1; VI1PR10MB0128;
	6:XVfa1FaVB7E1suC1rMn3dYCFzZDpuPjS4NefuMvNJSQu3aA1xPsfi6EQB6V22/e4oj5skAGELldfyxFCnPGiQkZAsz1g5fUkqPEDIp/5M0ssa/+qlY0HBa9YlUIHxVF7C8CTnPKDZoI0Mpv5styXPCVnt5hRNHiPSuE5t722XGg5wr+uuJjonzvINAnf1MxKsfgiUlWIVG7e1TVMUowzDRnD/NtE4TJuLyh4ExzW3fBuAMCuaxubnGdE23xvMVuS6xe+e/yzH9Sf//sgeZVfu53mDcUTBR4GaLU3ujHl3qTwfxk2Naxj0pU8dsJLVHkO5/ttkaAsnHPJqPR4ZpgRUEeJn+mJoWtGqIwrAEFTxQo=;
	5:8nYXMaAJLXXVSZe5f/VPNYIjsEWFMPjpQPG2vrnyof5Ooe5FAJGvS/FFC8aoTK+L74JISK3pKHKgSS9UgTtyQ3BmZs75X+SRShIIyypLxqaH0yzlCLTc0v1AmWSIocBy9jZTjbdJztiZG5xqvbrjIE6/sxJIkLWiXqLNLOY7bNY=;
	24:+OdSUhPbPZf3ZsCLF65Dx6y1eNE5gN0Pkxh6egJDmCdVvdWzY+SfqNe/UYM4w32VWaEOP87qlfBBph6nUFsd1RnEXuy07QVdlYaD3krw9ig=;
	7:9/aoaDD6htGEeqMqDzmBcFk7/aYWaDU++/DxsbjjDDkrQMP9mhN8xF+SexGGS16r310nMXU1elAeR+qypqtY5+Ur0IjXsamTbasjYYqLv0rSPTnJpYAdDJfjBGcRil2StXNCIuCC3a4Njaj0yrnDF+ykQgBb3m9qJpQRn836aVTWUjO/omz6mqCufdN13Hs+FmOLgZgBP/0neVaXlGqp1NnFDGSA1nJetmOQpWa6fciSfwOb4R7EmxadguYNXMMb
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2018 06:45:21.2644 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 223dd715-f49c-49ba-58f7-08d5782d837a
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB0128
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Removing busybox completely from the generated image
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
X-List-Received-Date: Tue, 20 Feb 2018 08:18:01 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi Ivan,

On 2018-02-19 17:13, Iván Castell wrote:
> 
> 
> 2018-02-19 16:18 GMT+01:00 Maxin B. John <maxin.john@intel.com 
> <mailto:maxin.john@intel.com>>:
> 
>     Hi,
> 
>     On Mon, Feb 19, 2018 at 02:17:38AM -0800, Khem Raj wrote:
>     > On Mon, Feb 19, 2018 at 12:35 AM, Iván Castell
>     > <icastell@nayarsystems.com <mailto:icastell@nayarsystems.com>> wrote:
>     > > I have tried breaking apart packagegroup-core-boot, making a copy in my
>     > > custom layer, removing the line referencing busybox:
>     > >
>     > >     ## VIRTUAL-RUNTIME_login_manager ?= "busybox"
> 
>     Have you considered "toybox" ? It probably wouldn't work right-away.
>     Still,
>     toybox was designed to provide a replacement for busybox. It is
>     available
>     in "meta-oe"
> 
>     http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-core/toybox/toybox_0.7.5.bb
>     <http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-core/toybox/toybox_0.7.5.bb>
> 
> 
> 
> Thank you for the information, I will take into account that tool for 
> future embedded projects. However, the focus of this issue was to remove 
> completely busybox from the image, not replacing it by another 
> application box.
> 
> I have created a bbappend with a fragment of the busybox configuration 
> disabling syslog and udhcpc applets. It works. However the busybox 
> binary and a lot of applets are still there (adduser, unzip, fbset, 
> traceroute, and more).
> 
> Disabling all different applets and installing native tools instead 
> could be the right way to procede. Not a nice solution, but at least it 
> should work...

Here's what we have in our distro config to disable busybox:

 > # Disable busybox
 > VIRTUAL-RUNTIME_base-utils = ""
 > ALTERNATIVE_PRIORITY_pn-busybox = "1"

The priority setting make bitbake pull in alternatives from util-linux / 
coreutils when appropriate.

// Martin

