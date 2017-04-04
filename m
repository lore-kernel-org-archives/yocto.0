Return-Path: <mkelly@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4B2DE00546; Tue,  4 Apr 2017 17:19:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.85 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 5595 seconds by postgrey-1.32 at yocto-www;
	Tue, 04 Apr 2017 17:19:47 PDT
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0085.outbound.protection.outlook.com [104.47.41.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A26AE00349
	for <yocto@yoctoproject.org>; Tue,  4 Apr 2017 17:19:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=VbFUMysPWYHEcCp8KDLV52iwgsNtDlgA1mn2jmMdJLU=;
	b=o8MBTNABxOEWGVt2HFV4rBfbFPjYZxoAVG/x5dXlhuMXOd8REWLE3gHBPSK2oJbnNqDuE+6Rm0YYFtw/dbSPIwkmmZ0hLXUMYx1Uy/kKkGT8t4j4ohvD7mHlP+omAddWgiiz9/VYrTSGEjvDNV7vlICwc3gNRxVBA9+K2kg6uBY=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=xevo.com; 
Received: from [192.168.1.2] (67.171.33.217) by
	MWHPR01MB2687.prod.exchangelabs.com (10.172.165.13) with Microsoft SMTP
	Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1005.10; Tue, 4 Apr 2017 22:46:30 +0000
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Martin Kelly <mkelly@xevo.com>
Message-ID: <be363dd0-156f-4e7a-2513-325b644b3325@xevo.com>
Date: Tue, 4 Apr 2017 15:41:02 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.6.0
MIME-Version: 1.0
X-Originating-IP: [67.171.33.217]
X-ClientProxiedBy: BN6PR21CA0009.namprd21.prod.outlook.com (10.173.197.19) To
	MWHPR01MB2687.prod.exchangelabs.com (10.172.165.13)
X-MS-Office365-Filtering-Correlation-Id: 36571b2e-df5c-484d-e5fc-08d47bac7012
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201703131423075)(201703031133081);
	SRVR:MWHPR01MB2687; 
X-Microsoft-Exchange-Diagnostics: 1; MWHPR01MB2687;
	3:gk7eMPxxdS/6YQN2BrT++jK+qjqpsJj8U6mxYBrauDYAyHbD/jabXkrvtES4VzfaPjnTP8TJE64t1HSTgZbrs7mjdohQ2i7h/icLzXD81LlEAhevFQZjw/MHDVRYb2/ONQmHd7raMcBLFNEsT0hbzS8KveRcv0DUFpw+jJW+0S9K35D13AjbqG5zik0B6BqPSKprLQA+NLFGGdd5zZGLGKHUrQPUP8WpPhHweMG69ULvfvzdxDPLeXefdPmD0/a5kWSSLMY89JDjpzictjcSNsO6N1bL7aVOX0CVw6TsoCvDsMi1x0nedCIqoSXO82g+FzGskaRzMfjOyZZFGhN2LQ==;
	25:HjAfyYzIKLzMJBAesQ9oo4cPz2PHL5aMSQKGXaU/DM2efmy/a770IIFO7jMHAFZ61k9Ry+JTa/yubKMqMCh6z7QMjYyOf5D8ZcSRFdAhthKXVMam5/rXzVu25MlVS9aq8iRkm7RXQ+G+7eA8kDyT4rFVHCJwL81GbksOgn495EOfMKl8cgJ/TTUos0rDNqFzn9jcqEq+QAWusQ+7bUxwU77ylzQP/n+TF027reW3WCoekrOlNUFuf62b6C2qRRvCz5OLoameZPJHT5qIdfyS+q2U23sg5vTOyaCu4xdYqxuDFyfYZsUE0N1vdDTqVls93y4hnuQ/Hpx7Jwy5k0mpRnGRw7wyuRLIGL5+Ij2YKz0tku6Rs7p1LkBJt//jKPFDo6Tx0WoG9v6RxY8ugcDcTYag3BOSpOCwjd1n8/l4QQXdchbk3dEIBzHDI1Gydmw3odLPxOC3hVlRDDxPZ3PAGA==
X-Microsoft-Exchange-Diagnostics: 1; MWHPR01MB2687;
	31:fPzcyg2RpBYjRVbi0cakaYRvH8SmQDrVef3+G9Xoti6fYTC3Sberq8ruVwWBL4VjUet6WAxqBkeSY/u4u57ry/o3EnYjUbU8pU42E6g8ClLfvZ8N2Cz7mnC4ggb6xItyonygz/u7Tbbme4ICMkQS7SwQ1EnaJOETJsVJPar3srW++1litlrDhlcCJ59ff6Q1gIde8nycLsROWrJ02eX+rUXBrHHYnAp9Zf4KzWYKBdgkacGGgMt3WfOlneFBiKyurT8+zQehgU0oH1Dnvxma8Q==;
	20:D/m7TxZyXI8ZRW0eZOmbaC+Kuo7qfY7l41WH5v5GjO7em9Ci4dm2DWxNsoFWjUqjYCZTNsMSlcxjCS7DaymeOMU3ctUM/8niKErsWGqYjz14DZrFsMk02lc1xp021434xdhPGycLvxUogHKvel7wG2Y+horZIgI/lr6+ohw5W3jeEpRxNS5tK2lj8NizqWRYYuoFgVw/G8glA5QEmB2lovgqpIf3PSxWbqqw5c71y0Uxbk90a9HVj/0iIXHyXXnbUNqcq9CvhZiX6lsl+ho/usRg1IIfQqnkpG/O3eCg70ix9H3Ppgzo6T12QJPlTopyrG2M0lpcFBmBXDcbUPaf7g==
X-Microsoft-Antispam-PRVS: <MWHPR01MB26879880E39908578E34D696AB0B0@MWHPR01MB2687.prod.exchangelabs.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040450)(2401047)(8121501046)(5005006)(3002001)(10201501046)(93006095)(93001095)(6041248)(20161123555025)(20161123560025)(20161123562025)(201703131423075)(201702281528075)(201703061421075)(20161123564025)(6072148);
	SRVR:MWHPR01MB2687; BCL:0; PCL:0; RULEID:; SRVR:MWHPR01MB2687; 
X-Microsoft-Exchange-Diagnostics: 1; MWHPR01MB2687;
	4:dqEIJxay70eP3Xe/IWlKDojCzk2WqLwWlulQ8dNgma/FwZv42mtAYaAuPc8m6RLmWM6jHBwlyGvEcLGuWiBmNRHmwWk/XYCQlD5OXOFMk0XHYsj+fDSUmfFjpRAXyD3Gx22mKWiemgChCPjZ/qu/RMERZJlC3/boit//6XY/OHRUWLyvGarE26wKXnYA5dTe6/4ZLazBg9fQ8ezKwFZdpktfCsrP9zdTDGvDqL/wW/0r1J7r+N7laIim2XBQNvKKhNKua3ae2+Lb406kjYlgcfAUgO5kcoYoDbeTeV0k2+VnxsMzo/bNduGlxFREqXQ2KVBUWAXHk9IYFzItgRbbX3GhnXuHA9kIqn1B1HTjn2HIKnT5PP/7A5DwVKGOUViivaVlZaEZH0s6xDFahut1gERVNyJnZR965OttkSLItxQbZ1tH1NVmIeJPnfw4hkpgrzBD0K9Ii/h1hMyGs70JxjEDgR5KjKFtgYqUTa53Ta90LPAP4+0HxZ75TU0sS7v2QghqZw95YOa88GprJpAbHlYR1fYx+/UWQH4R2VmYUYszPCAwnEZkCi/1YJ2Aid5dv4Aj7ZyKGdd3xQKxMsIFwoqY0QxPmgeJoOP8YCfIcDiH6aSrgrWNt/OTVE9QZIk8n5oNq+2juHeYXdZlv84KXWOfl6vGVfPt66pmtNapuPacwM3BRnb+BCNETyoJHneCsX3VhBbw2LN3IPfz/XL5QA==
X-Forefront-PRVS: 0267E514F9
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009020)(4630300001)(6049001)(6009001)(39410400002)(39830400002)(39400400002)(39450400003)(230700001)(83506001)(2906002)(25786009)(50986999)(81166006)(66066001)(38730400002)(110136004)(36756003)(2351001)(86362001)(6666003)(33646002)(305945005)(5640700003)(31696002)(6486002)(117156002)(23676002)(6916009)(7736002)(77096006)(47776003)(1730700003)(8676002)(189998001)(64126003)(5660300001)(6306002)(6116002)(53936002)(3846002)(54356999)(50466002)(42186005)(4001350100001)(2501003)(31686004);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR01MB2687; H:[192.168.1.2];
	FPR:; SPF:None; MLV:sfv; LANG:en; 
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtNV0hQUjAxTUIyNjg3OzIzOitBbVFKSlA1ZnZ0OWVaVThHbDJBSFRUNWFn?=
	=?utf-8?B?RGhTNjI5aWRleDE4Ym9JS3Bzd3dOcWhPQUpMaW1NeTc4L2YwbXo0NjVOcnAr?=
	=?utf-8?B?a1h0QVd5ZERYdlJ0c3hPdmZuOE0yek10V0xNMDdKRXpaaXFEVGFiZXFwVStl?=
	=?utf-8?B?dU1hUFZzc3dmRTdtSmRLL3pTdkN5NkEwRGlXTE1vdEM1emFtMGpRRk9hK2Nr?=
	=?utf-8?B?a1RTS2hRVFYzQ0x4cGdTRHI1U0YwTXRvMlZic3RsRjZwNEljOC8yeUExU01S?=
	=?utf-8?B?N1AyQmdKQ3dnVFQ1eVZ3UWZ5ei9kUkVxZjF5ZHJuMC9rdWxHTVhWWU5KNDNE?=
	=?utf-8?B?WE5BY2kxSVczWkc1VVU0VFM5Smh4ZzNjemhPMHA4N3hiR2ZxN2hIYmtocWtn?=
	=?utf-8?B?S1ZVc0QwNXNMdUxDaWloaUxJS3FaYU14V3NyNTJzbHIyMzNQbzRKOFh4eGoy?=
	=?utf-8?B?TWtYTDFkY2F1dEFjdU0xb3pyQW9NOXNDdVF3eEgza0xIdE1uZjVCdXlKWnJz?=
	=?utf-8?B?VXMrRDdFOUlyL1VybkFueXZxNXRIMHJGOXV5ajN2SHV5YXBOL1g3RXpvQmpk?=
	=?utf-8?B?aUxwMWVxY2FyWHNuVHQvRzkralFvd0tVbWlkK05uVUZZb0YyNld6Vkt2OThU?=
	=?utf-8?B?OUNBNnArY0pMM0RHZlY0Z1N5UHJsVm5SWkthVGhwQWZtd2hGZlFZT05IRWpD?=
	=?utf-8?B?TEZBOFoyek9oNnhnZE93MDEzdmhNcUlPMGcxT2tXMzNTc1pJRWhCV240aDlT?=
	=?utf-8?B?OWQvcS8veWtiS05ybkVVVUs2QUZsUkhpaks5cGlQZlF0U2lKV1U2L21nUUhx?=
	=?utf-8?B?UG1vTXBwTVpCMldXc1gzVllMWHppZVlWektRT0ZhdkppdTEvU3VpQVRlYmZo?=
	=?utf-8?B?UHp0VFBIOThIb1BpUXF5S3NFeVRZendZN1Q3MnY2ZHljV2FmRHlVdlFOTEkr?=
	=?utf-8?B?eWQvMmQ2SVQ3bk5yenk1aWJHU3lsM2NuQ3hSelFRUHA4aGRaOC9VdlNZWU9X?=
	=?utf-8?B?V0lhdExKRTRDMCtnak51UW9hMmNaMVZhcHo5U0E5MEZhK2dKRVVldnpXYm5U?=
	=?utf-8?B?YlBRTEtZdC9yMFBxVmIrU2FKY3ZkZUlLTzlaMk9NYjI0TlVIM1FtT0V5Qnpo?=
	=?utf-8?B?ZzkxaVBCNEZLbmlRc1g1eWJpRS8raFdrT1RqNDZwTEpmMENCS1kwbU5yOWF2?=
	=?utf-8?B?dUFVM09USTl5V3pLb1RoNW92dmR4alFuZ0ZkV3Y3Q0RpQWZqOFhRQ1NMVmtU?=
	=?utf-8?B?cVhma0ZacWEybTlDTHpIRnQ3NE9Pc2EyejRGVVZlTzlhOG5CaUU3KzZyZ1Fv?=
	=?utf-8?B?NGJUSDZxSkpXVlBQWTFXbWZkd0dtMnAzYUg0SmhlR1MzOHZieThwb0p6Rlc1?=
	=?utf-8?B?NWZKbXN6Ni9HSUNMc1UzbWJFTEc2bTIrMlZiUDRxWCtYekxadDk4Ky81c1pT?=
	=?utf-8?B?UVdxM3BBWG5wYklya3B4dE02dGYzcm1YMkNZZjhDTktIUmpnUWhjN3dXK3Jx?=
	=?utf-8?Q?8maC3aXzt2WFAidtoZdGc/wG37hpmtZUce72KVqiIAo4jP?=
X-Microsoft-Exchange-Diagnostics: 1; MWHPR01MB2687;
	6:sOFJ6eG/SkrgYtRylOg5KCFfV4ruC8EPPIhOaI87sggSuO/5H9/0OMZslnqLR/FuvFTLc0CU6y07vrDzV5uyMimriZxRZ2ucgp07ZL5AQ80dz1R6F0pBdhgZt8DPfv5RJ6ypWCma/cdt6XCkyOFPz0YuG9Xk+A+i9vuUhIWO69t3JPzDz3Sthi7sOYPpRqFJGNr2EdSrRiYT3rHVSUATKYUYqWVfZfZLHDvNpBkc9VA7HTqK3UyK0R6zgygkhIkY2IzDhL4Kjh4QhY6BN8ej4w4bATQ6WQ2c0QISzH/HKFVv7WVK6txBMJomqihbnHZue3pCxLsGxfjGVKDqhEpxQK+nFaiFx83q59vTw7v4WVRFuvH1xxBRKjn3C4qtARUrCnHAqusfu9gwPk8CNw0+AA==;
	5:nz9saocB7KqT6BwDdG9LJnmnpw0NJglkuougCexN+kdupH5iRQ+oGhxr7lQOaeczOwDi4DEDExvajgj5cctMfy5QVwditBaGAXTRoraUg4fRnR37lTJESbEDUCR4S+EsQiCmyzHkWl22XUMaXK8cGQ==;
	24:sFCCQ8eP2/WPVTNSkBUZhIQkxfdjdCJzV1xCa6pJIIXPSMCjjt6vTu/hZ8m4SPusV0q/4pr9v4r7fXWWttqgV6YZnPrTbHeD1P79uMJbLYo=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; MWHPR01MB2687;
	7:2+CYOQHqCaqgbi1jR0QPmciny6Kcl0+enhkAg/YOLC3VhNLk3whVr52vvk94zElnODSxp9YqiHL9fdbW5xn4wkAaSSulNPFfS2Z9MNo/dto+cRAfYDwgAD47nPTViN7jqlFuxv6slBUoPVT4xFoZtJPhzut1SmrxiAxXCYxw5mTpeqxzYa3BybnZ7nPkrBUxMTy0Ytm16+fVzuMJ58jvaT78Hmf7BXRRBMJTm2ehoDcBe8M1/BbAcYilUlXRslaWOkatWVm8h5AeSNGjX2Tff/2ydikVScVSY4fEZ+ZWjT6Jd4pqp5Sarz8/myehigWupp6hHCwhHhfmUMAmEm7zJA==
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2017 22:46:30.5566 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR01MB2687
Subject: runqemu - "Could not initialize SDL(No available video device) - exiting"
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
X-List-Received-Date: Wed, 05 Apr 2017 00:19:51 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I'm hitting an error on runqemu when I try to build an SDK and image on 
one machine and run it on another, even when the build machine and 
qemu-running machine match very closely (both running Debian Jessie on 
Intel 64-bit hardware). Specifically, I get this error:

Could not initialize SDL(No available video device) - exiting

Interestingly, I don't get this when I do runqemu on the same machine 
that built the image and SDK (in fact, it works on either machine, as 
long as the image/SDK never leave the machine). Now, if I manually copy 
and paste the runqemu command, but just use the Debian-provided qemu 
instead of the one from the SDK, then again everything works fine. Note 
also that libSDL-1.2.so.0 is installed on both systems. At this point 
I'm pretty stumped.

Google says that, in the past, this occurred because of X11 ABI issues:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=5040

However, the x11-native version I'm building through 1.6.3, and Debian 
Jessie provides 1.6.2, so I would guess the ABI is OK between those two 
versions. In addition, the fact that it works on the same machine that 
built the SDK and image is strange.

Any ideas what might be wrong?

Thanks,
Martin

