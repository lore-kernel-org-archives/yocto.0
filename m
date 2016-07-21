Return-Path: <Manish.Jaggi@cavium.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B3D5E00EA0; Thu, 21 Jul 2016 03:51:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.32.59 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 5590 seconds by postgrey-1.32 at yocto-www;
	Thu, 21 Jul 2016 03:51:30 PDT
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam01on0059.outbound.protection.outlook.com [104.47.32.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBDE1E00E9C
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 03:51:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=CAVIUMNETWORKS.onmicrosoft.com; s=selector1-cavium-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=AETRNrQq0sZveNjIpeJQG8AlU9CTEFst6/zo676i34Y=;
	b=AUe0zReJTv8CQEU5dmpnWaRzqopByEHQgJIWrgrd8bIY4oDaw9JPvUwiEZthPb0Ee4fuuRyR3AlbpJ2Di90WifZBnWUNCgt4a9gKq5Z+/+Hw3DI2mADKRsbP/Rfw45OpuPFcVn4mrAilF6Nbo6qXxZg2d/zq5q9DuneSfiSsAPU=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=Manish.Jaggi@cavium.com; 
Received: from [192.168.1.129] (115.252.120.69) by
	BLUPR0701MB1585.namprd07.prod.outlook.com (10.163.84.147) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.544.10; Thu, 21 Jul 2016 09:18:16 +0000
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Manish Jaggi <mjaggi@caviumnetworks.com>
Message-ID: <57909348.8050000@caviumnetworks.com>
Date: Thu, 21 Jul 2016 14:48:00 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
X-Originating-IP: [115.252.120.69]
X-ClientProxiedBy: BM1PR01CA0004.INDPRD01.PROD.OUTLOOK.COM (10.163.198.139) To
	BLUPR0701MB1585.namprd07.prod.outlook.com (10.163.84.147)
X-MS-Office365-Filtering-Correlation-Id: ef9758d3-1382-4c36-a3fa-08d3b147f34f
X-Microsoft-Exchange-Diagnostics: 1; BLUPR0701MB1585;
	2:uTDxLtOBfTX95Ysmr+ehzZOu/8/n1rQjW949HbB78WtNHBaNRORUtpxSe5B8dCyhiQAet2bxYFhu0DhDfoZnkmn/gzC4OQtAEQo+wed7Sw3JauLXuFFsfE726TjIaE9jIvtRumH+K4T5bcV7bucqZSaJYB63woMX/Nq4Coylk+PHAKmjxcq4X3JaDHI04cpR;
	3:Nzo2KzDBOQAmNMGQn5Av5a0jB/bo9a4UdHLq91ruBi6iHZ9lMpbECwQXcarGhPMO7ketpGXYbqJlYGuqmCQifKMFp/H4jNk3JvZsT7QGRfs6nABZEhK0uWPhJ6PtJYz8;
	25:NrwLo+khc59gYTo1A14zmwAgi9iPBdyUx3+SzGNN/hIvnKzYIry9zEN2+JDOAESzlazfk4kE6zSAu8yT44Ry54m8EDyaALyFGWsmP8aB9w8NrvmnxNWDmAZXhxv/rXnwLUSjNzYVClsj09vMvdU1RvlMxbHWTPEg+6h+XzyOQZlFoNbO/fEE8i36/aqOe+QtAuW8256ekPJPi0ThV2b5wPjsfBmnwQBNH7eZQZd7Ij4ac+m1/JNWLtgGVaKvNBgy1HlmjMZgg8g5r4hKJlfR/43ttQb1QZLhTYO8qzpM6rnsvGuLZry8rTjZ4ijCxARGsBsbLV6C/Eb4hfuCN6a5In+zpEA0QmAw/qrZHik69c9CSCkVoPoaxXAYqFxN2gb8fes3T/p1BHivQiQ8pWwWzf09bgBuqBxUXPxEGM6hhKE=
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BLUPR0701MB1585;
X-Microsoft-Exchange-Diagnostics: 1; BLUPR0701MB1585;
	31:hP+Ap+xuJD/Uxi75amppaEo7oxAqOhxMWVersQsIl09b0ZnPhe22qGGtKz2XSGTYSmhAT6LpCuhdw5FoUTzntlFkNRpTQg5Muf51WRbKa9TPp+x07oip+KCtoJCmzbZn1G8aHVI3bqinTSz9QrNAfOZEj4yr/jyPvjmXlEaitrFCzhSeLqgvhvAFj4hRraa3kzsBMM4lzUu84HMwHdZT3g==;
	20:UiTPQcCvL/9CF3POaJ+Ffi9q8HYskYRnofFoqQosupG0bM/6sJ4gTLpe54269khNf5P/+Jbz7NpiSNeXOc1P1CYHFsRw4UjDCKaYy0SmAN+FzAVS29o3PUHt00EGzkec5odPiNGvEgStn6E0A6h8fMiL0mwP4TGn8EBiP2d8220fDiGNuf2NH8EzTy0mcFCSgwkcXcRJS6gePANtDhLvgRZS+BfTzVNgDaNqNDR+D6vblmFOnnYopWMPXETdvOPxOond/c+qtdyK0b22Duvj8Axt5g7M3/qyGQmP7zchUElgG3UtZWdB4EJ1Jd4KP2rpamcbZX5uyo5XqNb57k6B0/LTBvNz/LLmbXfy4Yn72Q8f6n5NsX6CMd7e0Nnr0genUiFzmIL6jT+QJgMK1+IwDZ592PhWtq3A3tdzoTLrqt2t5AgPFR6SZF1iI0hfhktLucSXg8/MSy/N/mrF03p0f3MaoYaS97kaOxCZ8j88SzlT2n4nK9WdH4Gwwt+DPCjkDFuZEabDyQTKtxq55TNxPYtb0yIKQxaeINXKQxsbETSdVpTJmDQnVN82WHjRAD6xmTUGyk491HbeTMt5h3XqsKUo+i9ocE0+A3PC79xoBpY=
X-Microsoft-Antispam-PRVS: <BLUPR0701MB1585B1356DDF41DE6CA2A068EC090@BLUPR0701MB1585.namprd07.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001);
	SRVR:BLUPR0701MB1585; BCL:0; PCL:0; RULEID:;
	SRVR:BLUPR0701MB1585; 
X-Microsoft-Exchange-Diagnostics: 1; BLUPR0701MB1585;
	4:bRHzeiox4iwej7Z/vkOzOLKU6UDbz+Yt3iCyfpKP+xf9PV9Z/oxTDCm0JlxD9FuUCFbMJiIz44xpiSSJ7+J0RykWcfWqkD+qW/3r1hJiFTUUqVoXA17lZIWnWlCt5WJSsrpyjqGGsPWA0spJ556hz70fLCuSqtpVu64ClYsbz1JiGgdnjuys9KxWSoTiqpRr6N9eOhm3FvXPachIhKRxKIb4/P+VCx0OBWfK7bCGd/AQrzw+7lUlZYe1kciOr6EPuKC4/Hcu/R0Jj8eUO5EvPM64/otXPfUfWvwRS4xogCs0ZULfjjCvFAA9hZ/ZZyiIMmxiJCqTC+U+DvgOtMlLIpSGQj/JJBDtbqPYvrMG4iDx2oxPxY22qCK+f8COCygU
X-Forefront-PRVS: 0010D93EFE
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009020)(4630300001)(6009001)(6049001)(7916002)(189002)(199003)(450100001)(65816999)(87266999)(54356999)(305945005)(586003)(50466002)(106356001)(83506001)(2906002)(65806001)(47776003)(66066001)(230700001)(77096005)(65956001)(68736007)(4001350100001)(92566002)(64126003)(42186005)(117636001)(110136002)(107886002)(8676002)(23676002)(81156014)(81166006)(50986999)(6116002)(36756003)(2351001)(3846002)(5640700001)(105586002)(229853001)(7736002)(59896002)(122286003)(1730700003)(101416001)(99136001)(189998001)(97736004)(2501003)(117156001)(7846002)(62816006);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR0701MB1585;
	H:[192.168.1.129]; FPR:; SPF:None; PTR:InfoNoRecords; MX:1; A:1;
	LANG:en; 
Received-SPF: None (protection.outlook.com: cavium.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtCTFVQUjA3MDFNQjE1ODU7MjM6ZDdwT3lDdjdrbmdKdk1qK1REVjBETWk1?=
	=?utf-8?B?OXcwQmkrdG5HdDFIV296NGt0VzlBOXVNalhqVkRnbVA0Y0pOS0kwVGY2bGsr?=
	=?utf-8?B?R1I0OGplYkVYdW9HWkJsWVNzWnBNMWY4RHJraG1kTW1NaGloa1NWdnlNZkxi?=
	=?utf-8?B?N01mRVpIM0o0VnVzKzFrNlRIWDlaQ3lJZEpmNThqZFl1M3pyeGhHejMyS1dz?=
	=?utf-8?B?SVFPamlzcC9TSThJSWVlQzY0OWhkYXB4Z1NkejNZNlRkT3lLQTBFR0RzdXNC?=
	=?utf-8?B?cXV4WGI3Y3lIbkE4SCt3bjNFaW00a3FpUzhXbU5RQmtuSUt2SEdCcGdkOWRm?=
	=?utf-8?B?bnMwNUZQZlpYbzZVMDB6c211WFloSDlPUnZObUVTaFVHeEkrR080MDJpZTZa?=
	=?utf-8?B?cVFEYVM0dW1mWVgwb0JubmNBVnpPMFVFSGFtNUxwN0RyMWxiZk1pTEhXS2wr?=
	=?utf-8?B?VWhFbnU0Z1dHRElyV05SQkpRcC9wMTBYMXlRbGhrdXlHLytRcHk3VlEwZjJK?=
	=?utf-8?B?OGd5V2M3ZEN1YWJJWHZLVWlLL29rUlU5Vk5VSHlhMUt6MzRGY3lPKzB5Myt1?=
	=?utf-8?B?K3Jva3BrZ3hpbE5UODQrQUEremV3RGVpSzVJRnlLMGxLdlB5TmNxWE9QUFYv?=
	=?utf-8?B?UWpVbG9RNElITEgvZHJwSnFhcmdZTGlraTRFSDFTNUxRVGJFYVM3M0pKbllI?=
	=?utf-8?B?K0QvdFNHblQxV25lNTE4Mkl0VWtjSzUrbXNXbzV5TngyYTFUVkxxUFplc002?=
	=?utf-8?B?Ylo4dFFtUzFTTmRFcUR3NFMvVVdWcHJGTjR2ZUMyTmxrK2hFYWVWcnlwQUFn?=
	=?utf-8?B?bzJMZFdqeUxTU2t5WlhHZmZIN2x6K2x4OVI2aVdHNkZJWnQzOUIrK0lWMk83?=
	=?utf-8?B?djVPaGk3a0I1ZnE3ai94ZnhpWXFFdFZQblhNMTNrbXJaYitXZDR1T2pyaVNK?=
	=?utf-8?B?WlVIbE5KT1lSeHNWdlVHUUxEV042SlBVaXBzUTZXQkZHbTBKbXFzL3A3Z0or?=
	=?utf-8?B?NzhsNHJ6MjRSSUl4eGZ2NUtRVFprQUZCTUxqTll5OVhqZVAzbVJsd0ppMGVo?=
	=?utf-8?B?QVhMcVh0YXNWSWpvNUR6RXpLZXhVaTZRaGNxZ3B6em5zckxFeExjRXBDSUlL?=
	=?utf-8?B?cjZ1dEJkUWc0N1JHdDdOT09nOXhqQjVwcWJWallETWRLZzRscThHd2FmYXM3?=
	=?utf-8?B?VHhNNmFwOGlsRUNjVnM4VXRpbFhKVnBXY3M4ZUNQbEVzVnc2NnhaSHNpRTlw?=
	=?utf-8?B?dmt6N05ZMzhYQTZYWlEvK1pVK1M1Y2FnTDVONlhKUUJHazIwd0h5U2krUzNI?=
	=?utf-8?B?SGZsby91R0dFU3V3c2oyVjYvbzFPdGNvQ1R0eUZQbm9KOStFQjNKalJ0M3c3?=
	=?utf-8?B?aHYvdWxQWjBLL2RpVzNlZEx4RVVXeklBdlRFWmRFcGFsaEtZclZvaE5ualhB?=
	=?utf-8?B?bHVScXhES0lUeTlVZXdJMXZiNFl2N3pPWUYrTy9mTWt6bnFsYVBESWZHL09M?=
	=?utf-8?B?NUE0UHFSOUM1NFZQcEFEODNpLzlLcHBKZWFIMWxZRy8wenJ0ZW9Ja0ZBYndQ?=
	=?utf-8?B?dHNQNEZiVUVySkJDU1ZGQTQ0UC9tZzhYK1ozMUg5aE93eGpRK1FnLzV0dmpG?=
	=?utf-8?B?MysxZ0ZndC9ic29ILzlCVkFWL3FPU0Z4OU96QjZEVUlRRFgrYWJMdEhRSnYz?=
	=?utf-8?B?SVMvTGdiUVFHUUZ6cEkyditIQzVSZTZoUktNcnAva3QyOEJrRDYzS0NEN2g1?=
	=?utf-8?Q?Fe+DLJRiMnZFyVV2se7w5gc5axv6FjMtWVW+oUM=3D?=
X-Microsoft-Exchange-Diagnostics: 1; BLUPR0701MB1585;
	6:FMsw8PeKQYMm2iwCoSYgbOhLzBSr6dFGR6HVN8VyezW/NHGcV4jQSsIZ3f69a1WysMug21dKm1nqd7y082fymFy13eIt+X4/Gh2BtFAmL5GesLebxkrDjNptq6aqG8Ced0xB3wJ0uX5P3PlrnLLHSuP+AT9/fAAGofDZDs2ndSVQhCkDjeVueekjvLOJdX1FI8qP9NUWNWf+UX+3X9DkNVrmlSgMDFVjxzaUKkdcZUD1ErK339RqMrQ3iTXqU1cJhp/nW0lfW7S5tnw21O5B55qN7iyxm/qJrtIRI7ftCDE=;
	5:EO3BdirVr2uvfVs1j1VLFE36Lm2krvuHEmsSiFJ7FH4Qn8lDF5lfK+A4lEx6lvbKF4Qs6ITqvwpVpd88rzbNG2kE0w36/AiQycQrtrRHFF6etTfuZrvLvczY7rcjXz/M/Fev0JmXWadrjiR+nL6eAA==;
	24:SzrigOWw4RJ5601ZrSsnxMGFVHzZOTBSGc/7mK2uiBhE35pNJwOX9+OBW5Oncf6unKnZ5yoB05n4+fBEQDpliMvZntB6vRSJiX4tNc8h6sg=;
	7:SG4YZfEn7JIiQ/oaHt/sePsmvlHnwooizkBVFlNiYK8eLCapxoBnNvdiofdwxQ8j8AGKVVDaDZpWya6mooGWjog2dv4InYiAFOiknlO2Jo9STf45r+MiGtEKOqN7jnXsS5WN2VlYDV5jaXM9xlz8llNy7bXhJvPKiPCC0WSCZEWgu5wqbeVdK2Waz+6dJtznapdKSw94/K8ZRTh81kYV44rb7oJlHoM7xWyp78NCiH7/1m2Y19vFyhZnWKDnYWKt
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: caviumnetworks.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2016 09:18:16.1619 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR0701MB1585
Subject: populate_sdk and external toolchain
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
X-List-Received-Date: Thu, 21 Jul 2016 10:51:34 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

I am trying to build sdk (using populate_sdk option).
Toolchain being used is an external one.

When I run bitbake core-image-minimal -c populate_sdk, I get the below error

| checking for x86_64-pokysdk-linux-gcc...  /home/manish/poky/build/tmp/work/x86_64-linux/gcc-crosssdk-initial-x86_64/5.2.0-r0/gcc-5.2.0/build.x86_64-linux.x86_64-pokysdk-linux/./gcc/xgcc
-B/home/manish/poky/build/tmp/work/x86_64-linux/gcc-crosssdk-initial-x86_64/5.2.0-r0/gcc-5.2.0/build.x86_64-linux.x86_64-pokysdk-linux/./gcc/
-B/home/manish/poky/build/tmp/sysroots/x86_64-linux/usr/x86_64-pokysdk-linux/bin/ -B/home/manish/poky/build/tmp/sysroots/x86_64-linux/usr/x86_64-pokysdk-linux/lib/ -isystem
/home/manish/poky/build/tmp/sysroots/x86_64-linux/usr/x86_64-pokysdk-linux/include -isystem /home/manish/poky/build/tmp/sysroots/x86_64-linux/usr/x86_64-pokysdk-linux/sys-include
--sysroot=/home/manish/poky/build/tmp/work/x86_64-linux/gcc-crosssdk-initial-x86_64/5.2.0-r0/gcc-5.2.0/build.x86_64-linux.x86_64-pokysdk-linux/tmpsysroot
| checking for suffix of object files... configure: error: in
`/home/manish/poky/build/tmp/work/x86_64-linux/gcc-crosssdk-initial-x86_64/5.2.0-r0/gcc-5.2.0/build.x86_64-linux.x86_64-pokysdk-linux/x86_64-pokysdk-linux/libgcc':
| configure: error: cannot compute suffix of object files: cannot compile

Is it possible to remove gcc-crosssdk from populate_sdk script ?




