Return-Path: <alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BCB8E00AFD; Mon,  2 Nov 2015 08:08:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.55.169.122 listed in list.dnswl.org]
X-Greylist: delayed 930 seconds by postgrey-1.32 at yocto-www;
	Mon, 02 Nov 2015 08:08:43 PST
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0122.outbound.protection.outlook.com [65.55.169.122])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 033C8E00AF2
	for <yocto@yoctoproject.org>; Mon,  2 Nov 2015 08:08:43 -0800 (PST)
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=alejandro.delcastillo@ni.com; 
Received: from [10.2.106.105] (130.164.62.224) by
	BN1PR04MB843.namprd04.prod.outlook.com (10.255.204.14) with Microsoft
	SMTP Server (TLS) id 15.1.312.18; Mon, 2 Nov 2015 15:53:11 +0000
Message-ID: <563786DF.4010800@ni.com>
Date: Mon, 2 Nov 2015 09:53:03 -0600
From: Alejandro del Castillo <alejandro.delcastillo@ni.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Christopher Larson <clarson@kergoth.com>, Nicolas Dechesne
	<nicolas.dechesne@linaro.org>
References: <365E1805BC95084CBE82381A0B86999401095F873E@EU-MBX-01.mgc.mentorg.com>	<BD314512-DA81-48D9-B50D-4C41BD927127@gmail.com>	<365E1805BC95084CBE82381A0B86999401095F8E08@EU-MBX-01.mgc.mentorg.com>	<365E1805BC95084CBE82381A0B86999401095F8E8A@EU-MBX-01.mgc.mentorg.com>	<20151018095759.GA12999@bang.betafive.co.uk>	<CABcZAN=TTO_ebMjr_5nsxM42MTewQQb6Nz-uH_9eLdHq002bvA@mail.gmail.com>	<CABcZAN=9iN6bbjLLw7OtzuU7uogri+qS83auYnGRz_MT=ifjcQ@mail.gmail.com>	<365E1805BC95084CBE82381A0B86999401095FAD92@EU-MBX-01.mgc.mentorg.com>	<562BC58D.4090600@ni.com>	<CABcZAN=8F6m+7Y4pBfumuoiEqsTRS7+Bpiug7yfOiNkBxU4emQ@mail.gmail.com>	<20151024191940.GB15983@bang.betafive.co.uk>	<CABcZANknQrWzB_bQd22buyzyt-bHZJ-KpfJz1RvvCKNMjZNmvA@mail.gmail.com>	<CAP71Wjx33cy24gCXyn1AKi_Uj+AQ=syAcO5J5dBJRWfKitHjcQ@mail.gmail.com>
	<CABcZAN=qGSV+Oj258boXfP0mUQ32pcx4JNyna1mG02Hr6tWKHA@mail.gmail.com>
In-Reply-To: <CABcZAN=qGSV+Oj258boXfP0mUQ32pcx4JNyna1mG02Hr6tWKHA@mail.gmail.com>
X-Originating-IP: [130.164.62.224]
X-ClientProxiedBy: BY2PR06CA059.namprd06.prod.outlook.com (10.141.250.177) To
	BN1PR04MB843.namprd04.prod.outlook.com (10.255.204.14)
X-Microsoft-Exchange-Diagnostics: 1; BN1PR04MB843;
	2:vZkEszt20UdEehVSYRrgOMjQ4EeY6plVFG6H8pqIjsrDByLPWJBTb+o1itpHMuNl5PZAqBjyZ+Acgo2jz8bYVhSPVFo0dJNX8Znisza/66xdyUEeJRzsnQaxMbUwbeBhv4qmikurZosyYQe+S99XYO/smlD/uzBA/0VhO+9raT8=;
	3:IRr2sVL99WMrH6xleFDvqAy+ZxoCoH0UiNtYKKY/3U6g7LsMxTpTd9rg2pRqcyOm/X4D+wpebdVmgd0Psl0KGPVXrv0k60kFu8WYUYyozrrMEtwSyYCkHSXFqoDVU57mNYjhcr8GRTYcoKke/MqkdQ==;
	25:ls8Rv8mrYZuYm6V5X316MFjtUW+IjcPtKUfSKUyjXp02vndRcC1ideTixF0Jn7GvESHGfIQZVjPPG2XOPK3AtsjO0c9K2tk2ymgkUo0TO2kaXGw1kdZF7jIaAUwygQHXnonY41OoxBZ23LUZqXyi2xKfbooz+6raNpgAZEbS0xMnjqHvfZGDUmMHm6llmoFjVko3AZfftgGF2ZU5cM0lbpUh8VcWw1rwACSl5vhoRdtHPgz9Nyz7cIOiNAFTvU56gyF/nGGJtFrgy/gb2og1GA==
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN1PR04MB843;
X-Microsoft-Exchange-Diagnostics: 1; BN1PR04MB843;
	20:R38DzP54mw5aIAdGsNtvnbNgerSEqSVo3nys+1pXiPST7BEXHkLazev9Avj2ySVGUby0cIsZP2Oqu/PG2mYddOzchgzU4YxOyY+nqq4oErEjplTHT4twRZC/q17ZeGKkZZV9lb+w7PCdAT+f00sOAbYnLcNCfUFICoJMTtI0ENomJXZSM9jDBBOu/2ZNTUx5VDE8s4cq+g2cXXiqsHPIkl5C6wh3pJgfpl+Vl59mLDkuZclqg4qtSxLR3sRlgUXYjVdCRJrb8GpmHndK31NauYqFOHuykx1vmu90MnFYR00/mqXdWm9aDCiBTok9kbf7OuT7AY7CMDcxlWTr3Jl/9sa4pi7cRreyQQJOV9092p/plRFqCO14NBOKf9vnGA//rbyiQvYxdjLKodAJ2zk7e/nmYBlH/Eh2ygYcNb/EUDa9b1pfAlGdEAy2pwRZJJ0GleZmy+bvH5r6YJd41KWye+9N1lJU9F1V38xgseDZCGgNNFBl6fNbs0sF3uGwN3Rt1hhXcsHDOUtb4NSgetlmkzSGFVUZfKeRMmKufnjimblQuuifpKpY5R6T40apYnE9DmUbaI3o0HzAJQTqHzpD4OAQVE7XDnfMXfBJXjLTYMc=
X-Microsoft-Antispam-PRVS: <BN1PR04MB8438CB7F88AB7A8E095E865862C0@BN1PR04MB843.namprd04.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(520078)(5005006)(8121501046)(10201501046)(3002001);
	SRVR:BN1PR04MB843; BCL:0; PCL:0; RULEID:; SRVR:BN1PR04MB843; 
X-Microsoft-Exchange-Diagnostics: 1; BN1PR04MB843;
	4:vDwsBx/5wl8D68RUnnnlvp7HVm/f/UObCCQKwoaz301MxLPHsIoaQpfU1sWo09XhATWLewVI1Yfoe/NPx0WNgy19xhQCMcU5g12J9zidOnz61mvV23PiuuFJgKi3e4SKuy2Y5KpppJ8gXzi62WVBpMZZ8AXC8YD8U9hr5aOutKY/8cPqIzTOn/+f9SwLfLovYNmuH7+7fWalKNChDndYQS/Ck0cRyEWIVr2O6ftCClWhOOMTcGmuum8kjuZWeJ+bD2nZRm87vcfT0/YWhVsWgnsqq+1gNKwNHpncpqhqgxVgyQHy8wWm/VrUK5ryLLwAOsSDhNolAAmvSzFI9cRfjjfxBh63On18nUEq5iI+s+2vKUzhkp5YOHadRytU1g3o
X-Forefront-PRVS: 0748FF9A04
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(6009001)(6049001)(24454002)(57704003)(189002)(377454003)(199003)(479174004)(4001350100001)(59896002)(19580395003)(77096005)(64126003)(101416001)(87976001)(122386002)(93886004)(189998001)(65956001)(83506001)(86362001)(5007970100001)(66066001)(65806001)(5001960100002)(47776003)(80316001)(50466002)(2950100001)(97736004)(40100003)(81156007)(19580405001)(5001770100001)(36756003)(5008740100001)(42186005)(92566002)(230700001)(15975445007)(65816999)(105586002)(54356999)(50986999)(5004730100002)(99136001)(87266999)(76176999)(23746002)(106356001)(33656002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN1PR04MB843; H:[10.2.106.105];
	FPR:; SPF:None; PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
Received-SPF: None (protection.outlook.com: ni.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?Windows-1252?Q?1; BN1PR04MB843;
	23:aEaCjmUkjxoKYlSj6SeYWeO4cOjhqvrPdkypZS?=
	=?Windows-1252?Q?HCiQjii9nZaHtU+zx5vnGs42iijeyl31lKbYt+UYdUczMntUB3xjshiM?=
	=?Windows-1252?Q?e6+gfrrYXc8MbH7ujTUvYo/lraf3sr5z/Dz2scoKvD6fN6d73mJhN39W?=
	=?Windows-1252?Q?nujOdlWuErkp2wVXRj8Av0Gj3vO+m6rnjtAjK2ApsC8WsgC46Wb9UrsH?=
	=?Windows-1252?Q?WF1XAFlseOjMg6JPeb9CaSgr8U9GPhneJOwxo1Y2qbxCQe2H9L1BdKFK?=
	=?Windows-1252?Q?n1AHR1U/IdSPm+hK1RBaHn3ZcQXiesnbjtTWQZ56p0Xe1bPB6jmMtGVE?=
	=?Windows-1252?Q?FDHvEhHe5qUhJBpnRlixbo+RzdkFB5aAgvRUCk/VCiLqIz2BYAHVOUyy?=
	=?Windows-1252?Q?U+QD9bXJNdW+G69ZCNdw/BWMI45NFL7qedE0tL8WHieM+BA3EA2uZMcq?=
	=?Windows-1252?Q?B6B/V58QXgHNVMkBmi0w6gnlyvb8c8yfgHSFBBE6Nu/+oN3pCBahF+BW?=
	=?Windows-1252?Q?VS1Ph/Rnb1MLQuezMM/guxUTPTsLYGyb24DgfFC87jPFDNszFDiRqMTQ?=
	=?Windows-1252?Q?J6hZxtwLSiyPj0xOyUWwidkfCqrhlalatVkifFC8CEgGBhzV/O2bj4YT?=
	=?Windows-1252?Q?8/08gd8rAh7Ua1q9WLoYFhSiDViXvvezxxhL1cXmd9Rjuna0ZsFak460?=
	=?Windows-1252?Q?lAY7j0MvObe/on1DIV6adaBXyRRPVS8ZAmgvggDdLK22KcX5RaNa2mS6?=
	=?Windows-1252?Q?KZdkBKdYJS6iBLX8L1jbb4Ih2ICbilC9o2MBEKhHbipyO47LNwOrn93c?=
	=?Windows-1252?Q?ti4Yqfw2DijNasKrkVeQWgbVllmETQ9OTyiCYtzuJYZTA0oVqfzmpo5+?=
	=?Windows-1252?Q?RpxRipUwRW9cYAFN/Afausk5l7/aZvhdd/mV3dtnjCN18iEi6nSB/E17?=
	=?Windows-1252?Q?ESHAHcPDvKhJg6BgF6xWQq6/Xxo3gLk71N1CCWnAo5e/b9EHqt11k8SU?=
	=?Windows-1252?Q?fZoaYxKPj/myrmIi4l8+G0U6G7S88jbx52OmQyYo3927vWkcviqtOEhz?=
	=?Windows-1252?Q?J+Uy56wXQbueK1qwEVyrw7XlkCkIrWyoHbT5VkR2vulHKDyBizpRncTG?=
	=?Windows-1252?Q?R3YRnY3GUw6HLFy6kZWcdOjCy/VK6giwtOgYTiV0T49NPnVFwIMgh/R0?=
	=?Windows-1252?Q?seIfYsxLt9FIs3/+3QDA1QMzMLY5SnDd0S0qae9aD/TedZaRYlvSzfhT?=
	=?Windows-1252?Q?4Vn+ngpJbhNaMEflvRnqwjyMVTAHIqONT8CIwKZAtGUOKfY+flNUvTtc?=
	=?Windows-1252?Q?OCZCba3VnQ7Qb0uuBLRI9HnJtPyI5wI06eVzkgr6wuD2L+rrA7XmgNzA?=
	=?Windows-1252?Q?IBjc8yqUDpZN3+79R8pIgb3bgeBuY9X2SQ8B8LDd8dtLS86XjzuYthlL?=
	=?Windows-1252?Q?KVx5vA/zcYwKgfDR7YdcqshJkoC14nwqeQ7kMPFg=3D=3D?=
X-Microsoft-Exchange-Diagnostics: 1; BN1PR04MB843;
	5:/o82SnElnQQnFIBmUhVcvqiom66xBcziqyTACzgc86CbKmUOy8DCUjvAyTofMC4+/HjQCSsouqUmXikfeTI+grOkXdA1W3UDaZt8iWsObuSyiL7GgckRqp5NAxg14PtKPyfCHMumLl5UXcKuZr5RYA==;
	24:ONI53EOYt+Fy1JCvgpCPM4sKZiDMcJFIZFOHnl2jJYFus1hbX69EGBCqf3710vOLeTL0varJRQLkxvXKY2NTdB48yRSw3RP/7GXAKzlmx/g=;
	20:i+Rm+GAXa35x1kNlQOuOvX1du23TwIyjuIHbjtCpg24bdLgRExciX+JJ6awJeGT+Kv6oLIYLwwUwIdz9ppxbwg==
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Nov 2015 15:53:11.4791 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN1PR04MB843
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: opkg 0.3.0 or rootfs task
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
X-List-Received-Date: Mon, 02 Nov 2015 16:08:47 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit



On 11/02/2015 09:31 AM, Christopher Larson wrote:
> 
> On Mon, Nov 2, 2015 at 8:25 AM, Nicolas Dechesne <nicolas.dechesne@linaro.org <mailto:nicolas.dechesne@linaro.org>> wrote:
> 
>     On Mon, Oct 26, 2015 at 12:46 AM, Christopher Larson <clarson@kergoth.com <mailto:clarson@kergoth.com>> wrote:
> 
> 
>             I've just posted patches to the opkg-devel list which should fix this. I had
>             intended to give them a bit more testing before I sent them but a quick fix is
>             needed.
> 
> 
>         Thanks for your quick work on this, Paul, it's much appreciated. From some initial testing, builds are completing now. We'll keep testing it out.
> 
> 
> 
>     I just hit the same issue. I was pointed out to this thread on IRC today. I found the patches on the 0.3.x branch in the opkg git tree. Apart from applying these patches, do i need to do anything in any OE variables to use the newly added options? I am not entirely sure after reading this thread and looking at the patches..
> 
> 
> No, there's nothing else you need to do. The patches fromPaul change the opkg download cache to use checksums rather than the entire url as the filename, which avoids the file name length problem.

The patches are under review on the opkg mailing list: https://groups.google.com/forum/#!topic/opkg-devel/UzDigiuKBcs. I asked Paul for a small modification on one of the patches, once that's done, I will pull them into the opkg repo (and we'll need to update the opkg recipe).

> I would not apply the first patch in the series, however, since that's not related to this. The first patch (memory leak fix) caused double-free failures in glibc in our testing.

yes, the first patch needs to be dropped

-- 
Cheers,

Alejandro

