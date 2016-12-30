Return-Path: <alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 306F5E007BA; Fri, 30 Dec 2016 11:55:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.42.125 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 9240 seconds by postgrey-1.32 at yocto-www;
	Fri, 30 Dec 2016 11:55:13 PST
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam03on0125.outbound.protection.outlook.com [104.47.42.125])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E0D3E00405
	for <yocto@yoctoproject.org>; Fri, 30 Dec 2016 11:55:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nio365.onmicrosoft.com; s=selector1-ni-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=TMfgWcEeAc9t+2TA6qIAPoxH13uNjtlqy93B8Vsvl3E=;
	b=QIt0s7/kuUKOsFkE0XtrTvWqbSwFtIRcFUVNS59++VQNNujHjVocQgXAL0rhqO/zK8O1IY3Fr3wQa/LBEsRKH+tRLmEKrXt0TyzE4yMUsFmhGetzu/g1QXbIYINAc/NPeoRge5y9SKvMqLTjgH3Wu/VBTCvKsEsKsj2tpM5Y//w=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=alejandro.delcastillo@ni.com; 
Received: from [10.0.62.53] (130.164.62.126) by
	BL2PR04MB836.namprd04.prod.outlook.com (10.242.196.26) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.817.10; Fri, 30 Dec 2016 19:55:09 +0000
To: Desmond Correia <desmond.correia@prolucid.ca>
References: <CAPNRg157=16-iL42mntUZnFDVTfQss0fXM8fgXddG9x9CBiQyQ@mail.gmail.com>
	<811a0f1c-2e66-6141-8a3f-184356b9863b@ni.com>
	<CAPNRg1468817bg3mvzRU5UP=ALEZen98hKbcNPj8sv4QorS+fw@mail.gmail.com>
From: Alejandro del Castillo <alejandro.delcastillo@ni.com>
Message-ID: <1072bda0-d3a6-6a71-98f3-f5f671811f56@ni.com>
Date: Fri, 30 Dec 2016 13:55:01 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <CAPNRg1468817bg3mvzRU5UP=ALEZen98hKbcNPj8sv4QorS+fw@mail.gmail.com>
X-Originating-IP: [130.164.62.126]
X-ClientProxiedBy: YQXPR01CA0063.CANPRD01.PROD.OUTLOOK.COM (10.165.103.31) To
	BL2PR04MB836.namprd04.prod.outlook.com (10.242.196.26)
X-MS-Office365-Filtering-Correlation-Id: 06776028-41f8-48a8-eb00-08d430edc308
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001);SRVR:BL2PR04MB836;
X-Microsoft-Exchange-Diagnostics: 1; BL2PR04MB836;
	3:2qZgSkjAaC+5183ar/V1C5e+qLBkklCxU335qyyMdnJ02GDhtNpQWUCQZnBJ1EW06e+Bt/yknUgq4ntHBnCf0OKPe9meLc3SD4j1pwle86PwFK96I45yCqFzvi2IPNJbnCXJs66BpLSDB+w4b8mvr1hWGx0C1kkBRZT2tDX/EoW3LX07jipPDdXZAnqmIv0LAUy/ik9XyCBv88+msJsRxkCpCfCtV1ISuKzlBX2IS1JjepXTfDEjcv8yEn96wNKj6jD0WJbT9Rn7bK2xWN8rAA==;
	25:2HxvwjpbZ/7CSVDSCvNY+kalBbve4nD7Qp8evftnShP8U/FBUTottjUIfiW1uRRfy50tAQb8/fpP9fMwthZ/Z4Bx11ZoZASPfQ1xGDY4GBMitl9fHyM0OBlrXmpQEsVVuG2OQmoJiDR3HBGyhVCvGGkGBzyznZqCLrT987HeFuYONVhwQUw34ZqN9beDgNG1SP39QUY5X7i3hMRgrbnYFfcNG5wDpssUvJ3gBWCuWp5qPhRdArkhM4pLpp16+COy5mF8uTw/YJGDYQAxM5QxZy1diu6SlGgSt7d1Fb2J03CjuKoypg4F0Yniaeli/74HqWuiWIMudUaVm7YjSBwBBPJaJO1SLnXN4LNjsSSzA6qRTD/FsNAUT1+kIUYv6jvtBQYvvshAEw0wuPPJRBEFjghHBhNn2+/vn//nzxSEj9fSMxD9bx1uBKH8GlfnFBp3UilYVJQskeYyrN32XqeQBA==
X-Microsoft-Exchange-Diagnostics: 1; BL2PR04MB836;
	31:g7LqMZ33gilaE4x1OcCxSu1EsYSp4MVnflWXHI62IreNNV1YlVkc6YGNCcNd2kp/Bm9vfD1DPhzpWvwA+iw8UKBAW5Su7K3aAxbzQtm/0XSZMaMmFybOai8HTT910EzbfZkfomPgIJYSDBX7uNzFjmLspNtC/aWi8mQEzedsUouc1rUY+dkZHWI9vgfmA+PeBGsetMPUZEVDqcKB6imUVny/d8j8MtRCiJjRRfSUoBNj8wX1GqijUb0G3XatlTkUV/+kbOynOyeShykppvGflR8DMi3Lc9KkTf0I7Nn5vUE=;
	20:b/FsW+5Bus7+rF6+n+3UjL6LPRbmN6EHoGZRFzDfYwR/AwG6pXl5n9S63IPBGojb46oGf5LqJxfRrCkYqPGmsHjqqk74z35lJXw8i/PASm7bjGemcNTp75mfQEL5DvjebRQe39omgyYIumAN0fshdTCBzfDNcxpN4fH6ifHDfpULWvyn+oUvsjIZsAYuuvtUrVvbBxRPByRbVCWP9wrqUiCLTHgZt5u8QXDpnLTuTB94x/NhAQDN4x7gUdAcUdIyWO5Oyv+81BGPdPJKV13U3EN8C/btPctzbBkLIA4UGUX/ywBgrE6IY4uFuadVVYgyHCDpltboB4BL6zu9vqPy+1u4jOmsxgsM3YCQrNAYRwoK70RMcXArH7ymhARYtE7FnrXzHsyYB+f6z+dIBds6T2z6hWITMI44ayaZ8m1dWP7RzE/P3ZyRT3P5s+wehqmpCvhDN3urNZPnZSfAlpPy7MH+A7G0lTQH0nGBFTu7YzlkEf5nijQZyVDvNtup6FYOoRjQFf+DEJBHn0SkCIBbuj1/wfhETLkBwt+bbgnE4EJZpoZcRdTkXCeZ11FEK3dGkVJdF+51ouPnYZWsjbb1oNlalZRtqyFgLX+rcp3dN/0=
X-Microsoft-Antispam-PRVS: <BL2PR04MB836039B21F9F677C3922C5E866A0@BL2PR04MB836.namprd04.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(215639381216008)(228788266533470)(211936372134217)(145744241990776);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6041248)(20161123564025)(20161123562025)(20161123555025)(20161123560025)(6072148);
	SRVR:BL2PR04MB836; BCL:0; PCL:0; RULEID:; SRVR:BL2PR04MB836; 
X-Microsoft-Exchange-Diagnostics: 1; BL2PR04MB836;
	4:1TOVMX/sFKWjzSAoY+fhcFklzqyHix30Dzrp3QfxArm9LRM7/vsrKtod7fl7ngMMzKxxv6x9Qy1GFFWSpuIL3QWtElThf+6gYWJdQ8JnBh0iMBTCNO7bgIVrZpQpI1jsItChwh2/0mhb+ZYUeh6jSzS/EfmnKDtnv7o0Up2FVKamKaMIDrH0fJyGAjTCuI5fiTV41EXt6PWmsGGShIUvNBrNSNi3uq2dy+LW7ZWw67bJM1oGHPjrxVKCjNDzFDGDy+k9XfCq4FoxfK6aWo+xVVr3cgsxVnV04UakEKtahuj0cW9H4yJJMSv5Sy1onCnqoJ6WPY3VUCQGVWmuczaO/IL+Ivr+h5td8Iomc1cvfwXR4fiohsxDa5s/tQ6a0hUDFCAzSo94ze3t/Uqzz9yKtJ6iVv2JPhkxwFabFAdai6T228oVRPbOZYujDZMSEMMy1z34IVcmRpwYGL1iEZ9+60s5Dasyme0MLKyMOWNFG+b1zVpXJAgsMAM7L7/0usrlmN8VAaZoqvDcP0W6ZQ4mXiyotkKN+Y/+IiWjMNX82TZ4z27CUTQBdv38JVNJBBotnA4dwDxVEG+pJ2v+AppO9/+GD98ACMmkQeg5nTFwxFfgKlmWvNYp4uH4XtS2kt3fWShPZSxRlO+sS1X5lx8lVD7UIEiO3jCsdXVi56k5QbgJxAFrxxmPAfVpcKWp4mgj9igZUYLVvcaPTFuUBWgg/4nxvIEJZOERDq14p8vAQt4=
X-Forefront-PRVS: 0172F0EF77
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(4630300001)(979002)(6049001)(6009001)(7916002)(39450400003)(377454003)(24454002)(199003)(189002)(83506001)(575784001)(86362001)(77096006)(6666003)(2950100002)(305945005)(25786008)(6486002)(110136003)(6916009)(31696002)(90366009)(36756003)(5660300001)(6116002)(3846002)(23746002)(7736002)(42186005)(68736007)(38730400001)(229853002)(8676002)(81166006)(81156014)(5890100001)(64126003)(66066001)(65806001)(65956001)(230700001)(4001350100001)(97736004)(47776003)(101416001)(50466002)(54356999)(50986999)(76176999)(2906002)(65826007)(105586002)(31686004)(106356001)(92566002)(189998001)(33646002)(969003)(989001)(999001)(1009001)(1019001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BL2PR04MB836; H:[10.0.62.53];
	FPR:; SPF:None; PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
Received-SPF: None (protection.outlook.com: ni.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?Windows-1252?Q?1; BL2PR04MB836;
	23:NdiMkvwDXwDXaDS8ZB3FsBDjSynnDLMbuBEazR?=
	=?Windows-1252?Q?dYRfP52XLgqQ90Z+rdxiT1nuT2wCHQ2Rks9XqeG4lAt979eHkyCbiOxT?=
	=?Windows-1252?Q?lGBR769Pmv83o2MVLi0sN+f7BoA+OAPtPTFoGzMck65DkQYAULqgL9rM?=
	=?Windows-1252?Q?6/N0adGmBNI2oLEMZoF9/yIQ0ongXROU+rrnclNg3Wk8CnfyGxUyhBIx?=
	=?Windows-1252?Q?cR2XbCmd1i5LY1xsOLomTCDqScBtIkrRIbdDllxgk7f8EkAM+kvRN4C+?=
	=?Windows-1252?Q?X6mfw8kqNzoPv8J5eAAZAjLnoERmxyND0VQyqhz6NuRaWUyD14IBYLJW?=
	=?Windows-1252?Q?c8hphxNzQSx6e9iDEdb8+c3/8HGX77EuVZXjqbR6xh3W9OFoVvof3oBf?=
	=?Windows-1252?Q?aSCd2ilx8zyFZ55A3QVxLJSgvP2gvEJ/uaTPHW/rpgm5/Q00HM7D2yqE?=
	=?Windows-1252?Q?Afx6nJ7w/hkm6Yog3dgQrODQt1mu15nV0/kPNfJtKjHuZCvKYarseZPA?=
	=?Windows-1252?Q?IZmC1dpy0GzUbJZu0VF6s4rgbzyWYQfaFcD9a2taXUvcQKNpPNn4ZlF1?=
	=?Windows-1252?Q?vZ5FGSHUh1hx0bgtkhBMgtFDH9ub3a+r7lwGJT//N07Pv96r5IFttuQU?=
	=?Windows-1252?Q?LXRparEsTHu+5JXTwoxOqNTyZ+az2ZiDzLnhoLsRUh/wl1LRhcwIhExc?=
	=?Windows-1252?Q?ecXYZWxs1CZ8Lgcp8Tiigb0MS6TPMbMnm1kPrUyirTNbYpgZj5O6Zgjs?=
	=?Windows-1252?Q?7pzPckfLnf9pg7aOenWSTtg3o4VZHQH4is/rcm0zdodJ73FUKkErdJg0?=
	=?Windows-1252?Q?PhawnWNVRm048IrjsgRV12e2MbQG0U6Q8UMz91YEiqWJAm2U/bfK/kjL?=
	=?Windows-1252?Q?3xX91hT2M8dz2amrPt+QX7mivEws1C/t/Er6iChHCFgsos6fskBBVSLR?=
	=?Windows-1252?Q?1icoTRILnA8l2Iep6ErYNR3qadN/545M++IIyIfZzxdCrKvo3tdYcVa0?=
	=?Windows-1252?Q?zR4XM6PtQtnQeC7rr5EYLI8c0VpqWTu9p5/7SdSoQGv0ltixbUOI818X?=
	=?Windows-1252?Q?fNvZZsHTAnlAFbQJD4SFMK04q0hN+E/WsvN9Fe87gfL8mY97CxTHbZQM?=
	=?Windows-1252?Q?elyLniqFOjD88auZWat9kJqIsSnEUxIN2e27hNOpIHoYAUc1QBJjVG7Z?=
	=?Windows-1252?Q?nXKpWTt1RW3Fzog9BGaLZ9RYpupGWPPwXtlqqGroXJFX+HP2PgNevprk?=
	=?Windows-1252?Q?gPHBevh0gCq7qN/rNDOj3wWNQSxmCCQg5FJ0+JZSiI+gEvKrAEPzhd+Q?=
	=?Windows-1252?Q?n0P8tBoEod02EzsQXTCa664lDGcDUZNJlBV7CqLb1AvReMBpkYWR+fzM?=
	=?Windows-1252?Q?NO5IbJ4b5+Gtsm8TnRBwAQqF0fm+HHQ8dGBLIf5e5FTkiv5ZJq18zwCr?=
	=?Windows-1252?Q?Rp9P2cQU+UkFWtIc2eoR4n7Gi5oEMqNDLx8C2kcXP3rhK/uMji9jOIF2?=
	=?Windows-1252?Q?WCyD1r4bHVrHhpIrOouGOC9bEOHyDbCgjfWr2lbb9k0++HHsigswSbrW?=
	=?Windows-1252?Q?fn356OC/KE4SMkoDNF97Y8pRLTWEyGjOu+?=
X-Microsoft-Exchange-Diagnostics: 1; BL2PR04MB836;
	6:6PI8sF8A4G/17SN3mZZwlb+bxSHZ++7PNcRRTLFC54L8uigUQvpottl/f1ObOBQEY+6P24H5nlrCxfSWPjxNqB1TcYfXWzMdctUyDxMjXy4pDLVgQK8xToa6E6x5GX0EoVKykQf8cjxGI6Rofa/V5JaB0qxrEOSFKvnznKXBD13FeC3fNIclwlrg0HS7tXNNVGrULras/ue2SsD3BXXsbzYTX3YVLlJdWnGhnR54RSmicZ1RX+TXSlZ87iLf4/oiAqwLZhzZqNzqEthh2k9atNLFX4l0y7oKzIPcFEv61Modi7lwPidGWq+FpSlX6wmFFE+fWT+MtEzPFZpci2uTkwYE3cB73USprjUjJM/g8y1Hhea5naltYuCA3xiIu0Fl4XXlT5XmaW6uAcTu/J0zIpOi2m8xwzQc44w5uJIJtpw=;
	5:JbLPEwbEYRyOL7QD0HFAMJVeDg2gbUYURP/040AZcH5o75AHlfNLGbnZMES9zvLLVIJeIxi1Q85647hns5zAIMko4N1mvortH/RM9faECRS6JOOnb5p1KQ+0uoVEFybksKEYA9R74d0RGfmpjGPcoA==;
	24:rjtVWG73FxqN818iRJf7MgIAkqzgcGrQjk+L/MvqOxkz5VB/JZnqZGqececKeIO+6ayO0UWx1Qr+WReT/oJbD6bLtxEWfqU7VkZsUcJP3pk=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; BL2PR04MB836;
	7:25udWhInvN4aCFbSfqCpjmm5QMYtCni32it7bnLXvWU2OThaIUJ+nwUtjlGR1sDliuHj30PNjK4X0SgrLIK+D+ENU8UmOcfBU7hbj1unWuQQzDsc0YzrhYZytWIodIECZDixGGdgIiBBqqDyzv0iEcDodY2p0tpZxT2YFwaXjVdbCerN1kx8XJPVJ4vfrChW6vNDaBmGUukzmPNHzGt8P/AweotZ2LSro3nGC3UVLuIysHdn16AZUt0cAf4RHe2PYAXRB6fY+9FaanvrBJJ+8iN0JvJdLEpu8WpT8SUz9N6hKoJc9vQ0teuPjD+MAHwuN3RHdj26TZ/vVCpMPzPcmvG4sc461lDDaEq9rl260ve3b9zDTS2ajLldjenPxVhxhCPEte4pIP0fWHzWIFHjH7+vxNa7QrLykc5ZWYk65mw+4fC6XK19AG6Ff2o4xx6xYEUu0f5VN2pNfOXdp8ssaA==
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Dec 2016 19:55:09.8922 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL2PR04MB836
Cc: yocto@yoctoproject.org, opkg-devel@googlegroups.com
Subject: Re: [opkg-devel] [opkg-utils PATCH] Added support to generate index file with multiple version per package
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
X-List-Received-Date: Fri, 30 Dec 2016 19:55:16 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Looks good!

merged

On 12/30/2016 11:39 AM, Desmond Correia wrote:
> Hi Alejandro,
> 
> Thanks for catching that see attached.
> 
> 
> 
> On Fri, Dec 30, 2016 at 12:21 PM, Alejandro del Castillo
> <alejandro.delcastillo@ni.com <mailto:alejandro.delcastillo@ni.com>> wrote:
> 
>     Hi Desmond, thanks for sending the patch, works as expected.
> 
>     The only thing missing is your Signed-off-by line, do you mind resending
>     with it?
> 
>     I also have a very minor comment below
> 
>     On 12/28/2016 01:15 PM, Desmond Correia wrote:
>     > From aefa378d6a167124bdfb0b8d6c92aadb4c36fa46 Mon Sep 17 00:00:00 2001
>     > From: Desmond <desmond.correia@prolucid.ca <mailto:desmond.correia@prolucid.ca>
>     > <mailto:desmond.correia@prolucid.ca
>     <mailto:desmond.correia@prolucid.ca>>>
>     > Date: Wed, 28 Dec 2016 13:16:48 -0500
>     > Subject: [opkg-utils PATCH] Added support to generate index file with
>     > multiple
>     >  version per package
>     > To: opkg-devel@googlegroups.com
>     <mailto:opkg-devel@googlegroups.com>
>     <mailto:opkg-devel@googlegroups.com
>     <mailto:opkg-devel@googlegroups.com>>,
>     >     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>>
>     >
>     > Using the -a option with opkg-make-index, you can now generate an
>     index
>     > file which will list multiple version of the same package. Added since
>     > opkg now supports specifying version of package.
>     > ---
>     >  opkg-make-index | 16 ++++++++++++----
>     >  opkg.py         |  8 +++++++-
>     >  2 files changed, 19 insertions(+), 5 deletions(-)
>     >
>     > diff --git a/opkg-make-index b/opkg-make-index
>     > index 7897918..3f757f6 100755
>     > --- a/opkg-make-index
>     > +++ b/opkg-make-index
>     > @@ -11,7 +11,7 @@ import re
>     >  verbose = 0
>     >
>     >  def usage():
>     > -     sys.stderr.write("%s [-h] [-s] [-m] [-l Packages.filelist] [-p
>     > Packages] [-r Packages.old] [-L localesdir] [-v] packagesdir\n" %
>     > (sys.argv[0],))
>     > +     sys.stderr.write("%s [-h] [-s] [-m] [-a] [-l Packages.filelist]
>     > [-p Packages] [-r Packages.old] [-L localesdir] [-v] packagesdir\n" %
>     > (sys.argv[0],))
>     >       sys.exit(-1)
>     >
>     >  def to_morgue(filename):
>     > @@ -42,7 +42,8 @@ filelist_filename = None
>     >  stamplist_filename = "Packages.stamps"
>     >  opt_s = 0
>     >  opt_m = 0
>     > -(opts, remaining_args) = getopt.getopt(sys.argv[1:], "hl:p:vsmr:L:")
>     > +opt_a = 0
>     > +(opts, remaining_args) = getopt.getopt(sys.argv[1:], "hl:p:vsmr:L:a")
>     >  for (optkey, optval) in opts:
>     >       if optkey == '-h':
>     >            usage()
>     > @@ -61,6 +62,8 @@ for (optkey, optval) in opts:
>     >            old_filename = optval
>     >       if optkey == '-L':
>     >            locales_dir = optval
>     > +     if optkey == '-a':
>     > +          opt_a = 1
>     >
>     >  if ( not remaining_args ):
>     >       usage()
>     > @@ -120,12 +123,17 @@ for abspath in files:
>     >            if (verbose):
>     >                 sys.stderr.write("Reading info for package %s\n" %
>     > (filename,))
>     >            pkg = opkg.Package(abspath, relpath=pkg_dir)
>     > -     pkg_key = ("%s:%s" % (pkg.package, pkg.architecture))
>     > +
>     > +     if opt_a:
>     > +          pkg_key = ("%s:%s:%s" % (pkg.package, pkg.architecture,
>     > pkg.version))
>     > +     else:
>     > +         pkg_key = ("%s:%s" % (pkg.package, pkg.architecture))
>     > +
>     >       if (pkg_key in packages.packages):
>     >            old_filename = packages.packages[pkg_key].filename
>     >       else:
>     >            old_filename = ""
>     > -     s = packages.add_package(pkg)
>     > +     s = packages.add_package(pkg, opt_a)
>     >       pkgsStamps[filename] = fnameStat.st_mtime
>     >       if s == 0:
>     >            if old_filename:
>     > diff --git a/opkg.py b/opkg.py
>     > index b0d79a6..47473da 100644
>     > --- a/opkg.py
>     > +++ b/opkg.py
>     > @@ -501,10 +501,16 @@ class Packages(object):
>     >          self.packages = {}
>     >          return
>     >
>     > -    def add_package(self, pkg):
>     > +    def add_package(self, pkg, opt_a=0):
>     >          package = pkg.package
>     >          arch = pkg.architecture
>     >          name = ("%s:%s" % (package, arch))
> 
>     since you are defining name on the else case, you can delete the
>     line above
> 
>     > +        ver = pkg.version
>     > +        if opt_a:
>     > +            name = ("%s:%s:%s" % (package, arch, ver))
>     > +        else:
>     > +            name = ("%s:%s" % (package, arch))
>     > +
>     >          if (name not in self.packages):
>     >              self.packages[name] = pkg
>     >
>     > --
>     > 2.7.4
>     >
>     > --
>     > You received this message because you are subscribed to the Google
>     > Groups "opkg-devel" group.
>     > To unsubscribe from this group and stop receiving emails from it, send
>     > an email to opkg-devel+unsubscribe@googlegroups.com
>     <mailto:opkg-devel%2Bunsubscribe@googlegroups.com>
>     > <mailto:opkg-devel+unsubscribe@googlegroups.com
>     <mailto:opkg-devel%2Bunsubscribe@googlegroups.com>>.
>     > For more options, visit https://groups.google.com/d/optout <https://groups.google.com/d/optout>.
> 
>     --
>     Cheers,
> 
>     Alejandro
> 
> 
> 
> 
> -- 
> 
> Desmond Correia
> 

-- 
Cheers,

Alejandro

