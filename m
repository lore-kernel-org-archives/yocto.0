Return-Path: <alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 853BCE00833; Mon,  7 Mar 2016 08:00:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.100.121 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2on0121.outbound.protection.outlook.com [207.46.100.121])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28D99E00720
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 08:00:26 -0800 (PST)
Authentication-Results: deserted.net; dkim=none (message not signed)
	header.d=none; deserted.net; dmarc=none action=none header.from=ni.com; 
Received: from [10.2.33.36] (130.164.62.82) by
	BY2PR04MB848.namprd04.prod.outlook.com (10.242.39.13) with Microsoft
	SMTP Server (TLS) id 15.1.415.20; Mon, 7 Mar 2016 16:00:24 +0000
Message-ID: <56DDA57D.3060209@ni.com>
Date: Mon, 7 Mar 2016 09:59:57 -0600
From: Alejandro del Castillo <alejandro.delcastillo@ni.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: Philip Tricca <flihp@twobit.us>
References: <1455921936-24140-1-git-send-email-alejandro.delcastillo@ni.com>
	<56D61E9D.5020607@ni.com> <56D67D70.6010608@twobit.us>
In-Reply-To: <56D67D70.6010608@twobit.us>
X-Originating-IP: [130.164.62.82]
X-ClientProxiedBy: BY2PR05CA034.namprd05.prod.outlook.com (10.141.250.24) To
	BY2PR04MB848.namprd04.prod.outlook.com (10.242.39.13)
X-Microsoft-Exchange-Diagnostics: 1; BY2PR04MB848;
	2:g1YVI+u9jKlePQm5OuvdNQEWG1FPM08T/17peO9CC0SO9/LvDPvD6+8Qn2YvpUni2hEq6sjlZt4PAeLiN6twVFaP3bj7rF86PSXBVO8xk/eVaEDq0NjY/iYAR5f3tEc0P2ffcPBNCMy/8RycfejGow==;
	3:qaChWaYiY3g1nI2qUybb9UgYdaoXDcRwQ1HiTqvvqWktcSUI5uXfgrk2FRud+QHYXFU4EGy99QCDDGrrU2q4c+McKwFnwiNieJcmfc4N7X9rwI/65uOLEf3CqqGoNOv8;
	25:O4s/+TOgOtxxnOCNeyuffDAAwZ0oeOJ8vog3MqvxBXhQgkb3xqJzMEGvZ6lm/q05uwtLIRfbFRYCGqFqf6V5x1VAYvq/LPNs54DvjJ8rGH0v1CBOdg1ZfhjDnDpxj/ZU+GlO5pV8whE7sHzAptqZ86R/J47Il9LhcwhZ3I2hYrcv/4wKmWVA9eSSZqvZbjz9d5TXEYnkX5y28XqFOzLZSk5ycT4XwGVYETWaLo2cCB1u8xqzNWF/im4bbiOIiwNJuWobdVZM/tCYXusFWYs345JGLqN8IEA87pOFq533HogFPQdVUGbpsjg6AMWJKSVYiwVOymRk3oSYk4k1A61mUA==
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BY2PR04MB848;
X-MS-Office365-Filtering-Correlation-Id: 46e6e67f-a10f-41ec-e952-08d346a198a6
X-Microsoft-Exchange-Diagnostics: 1; BY2PR04MB848;
	20:dLH1m6CMnE7Qw7qwTjQR0F6KHj0egpVhq3dG7Jg9Hq1qrvhE+UB6a8sPWYGvUkqdzWYARu3MyKZQUcv3L2tJemTRYZgQSc2d7ScBTFFmVFcGIOCuLdPa5T6qF5BVm95brwkqiDbpDnrSY3F98cIN6mppy4lENwkyjuXzH+sfb0QaMJYTB02PsBhegt+UwwIWNr/vnVCbL6Dbq3N5Vnj7043Oug9bHDRaHN8I2HkiDJ9ghYK+X+Ias4SqunIgN/epimgFLITe8PCPD+O2KuwoRB6LoEm8GM4UVlskhGMsGM9tT4qCtc0EEyJ5f4C17Xr/IvAjT2VFj4p/bvYYfab/4+q/wrMD2uTytA3a0AuKiz2MvLLxxjEFATfNA07qcKZo2o6/KLhn1fkw/BZlnjWlwASxAs7J7hX536owjklCaLORrcUVMAFnHwwbXf/cr6HE3/tN0zrJyoMzcsZRxQVi9waNiUP2A0UxrOGvXQggOglJAqPNu8S2or68pC/DJvkVw+DYfox5VO6rI4eGWIl9mQcCZtwuaGBmi9Jg7CTVtNK3cvVAzXM/YDpj1FMYe77pSN6LMOb7jO4awUim/MqEahkga7fzwU4pSXSpJnXbwDU=
X-Microsoft-Antispam-PRVS: <BY2PR04MB848F3098E7CCEC877F9839F86B10@BY2PR04MB848.namprd04.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046);
	SRVR:BY2PR04MB848; BCL:0; PCL:0; RULEID:; SRVR:BY2PR04MB848; 
X-Microsoft-Exchange-Diagnostics: 1; BY2PR04MB848;
	4:k6N5nwQa+aKPvcBqwC2ZlBiiXILERHzTz61clmTmxkHTOQLI1BwnZ5Ok4gyoFZqtqFRghu9BSwNC5q7vbaiouw+pHVKeBLG2sloHb02X0LUk+sbrVtIWHgeBE9vIhaOWuLoxvvdeM3GuYdEUb1XRUp+izQmcy6LVlVyzPzPGrVeyZ4jvbXrUBD7d4EBDsU3Zd5xZ80JYDNFKbZygMWNOO4f6MQqgAMF80FZ8zqu0xcaKFEhMPk2WiCoQewhq6JaRs4nAWlHdJxwh4FvFXaylvWqYR5zQlVTbsNXCIejanWZcRla22gEl+6jcWYLYpNCaZpuZNkzYOsPwyN6ORXkrw/uQLP72eQR2mOCrk0+0fSfxPAqrl8s/pStUplxWgDOv
X-Forefront-PRVS: 087474FBFA
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(4630300001)(6049001)(6009001)(377454003)(24454002)(57704003)(479174004)(83506001)(189998001)(50986999)(65816999)(230700001)(5004730100002)(110136002)(54356999)(87266999)(76176999)(40100003)(122386002)(2950100001)(50466002)(92566002)(23746002)(4001350100001)(86362001)(6116002)(2906002)(80316001)(36756003)(33656002)(586003)(47776003)(65806001)(81166005)(1096002)(66066001)(65956001)(3846002)(42186005)(5008740100001)(4326007)(59896002)(77096005)(87976001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BY2PR04MB848; H:[10.2.33.36];
	FPR:; SPF:None; MLV:sfv; LANG:en; 
X-Microsoft-Exchange-Diagnostics: =?Windows-1252?Q?1; BY2PR04MB848;
	23:tCuPn+n201T4OxPjJCOGAuk/XfmF3y2C2Dzp7B?=
	=?Windows-1252?Q?RgiG5oeqFx4drJt1AL+aDaytpGwLA8ob7liJ1LFTWrG/o9urXJS8xceK?=
	=?Windows-1252?Q?dnppefK07CQzxYDg7yMZLh8plM5N+ADY8Xxqp9plBiEiDleGNGEwiPDy?=
	=?Windows-1252?Q?7RIS/X1/QerhR+xSZiXhjBt3B0Rruz/eWNCeaqKg2hPbbidLNrUaEHX0?=
	=?Windows-1252?Q?Ewm093bonesAZmME6RN0dxZe+dPHszuHkNuERdfF5kBC5uDozUr9Ip1r?=
	=?Windows-1252?Q?VZNB4K7z3uGSwwNFIcHrlK1dtot69I2DX1Yqm6f1XviYwbMQvUGnL7UZ?=
	=?Windows-1252?Q?hbS2t3QDLSZXNkry4flyUqavToMsKawXhwlZsM3c9d2RYZMWSQU09ePH?=
	=?Windows-1252?Q?oloEnj1yO9ceJvqtM4Z1mi16j/CwJQkVSbxNbSADQifh8pjXJT7GmplR?=
	=?Windows-1252?Q?7/C5ofSoRouTCPjF74Kvz8t+19tlEwBFcQLg7yZFDjGl7lWNiaTzZFQG?=
	=?Windows-1252?Q?kQyZ75SZBoHLg+bDMlJXvf0daqFX812nfrhhqV+g3+/Lim1VQ/zdGpRf?=
	=?Windows-1252?Q?q3QjBeqCp8Ewr5RNckUd4Pt06UTQbTjUll7FXG7afEQFG7NogrjiPunY?=
	=?Windows-1252?Q?ilZvi/WEMHP5hS36lTa64Nz2SwILYsOasxfX638SVyW6+i7xW4ru4kbH?=
	=?Windows-1252?Q?/YLQeWIfe0xmJ3TVftdU74yaCVEcTnY2pad9zHAfdNhltBCAsb5gYs5G?=
	=?Windows-1252?Q?IpnTu7TawUZlFTpP0wbsc2C00tN1c7RPF7YNfQvn0Lcapjmz7s42J3Hu?=
	=?Windows-1252?Q?3j07tpfwKjWDN/GX7UClr6iyhE5Vb9XBgcrGW9BkHC1VKtxiJmY8TmD+?=
	=?Windows-1252?Q?YXGDoiJuzQruXdQMaFYZ7u5cIgiYtPPLH/5KxrtgOXJG+TnZhAYoFSTO?=
	=?Windows-1252?Q?1ohuJ+T2ZbtH3IXaSArZrtI0DtweZ92zjpbRVWNY8ADKeLcFZLDCE3pS?=
	=?Windows-1252?Q?8TZH1aJRDtOiD4jew30wyCUzb3rurYNNQajm3ixqzQVtSeBOSqJbz2yx?=
	=?Windows-1252?Q?Swh594/KkMStSFUVJFqh3jLfbcIeY2sHvY87rwHpCYVXRbcammRTdaj7?=
	=?Windows-1252?Q?5cbZkqgs4pQ82BHJ6whze/9rt4wDiuZEwPPkOFxwxqPyYk3J9y08I+CU?=
	=?Windows-1252?Q?ko3/877aYJinv+veejzBQFdUlTu9YFHm/g+61u57HV0uP8c9HL?=
X-Microsoft-Exchange-Diagnostics: 1; BY2PR04MB848;
	5:VassMs9DJ7HtaqJikhgI7zEM3an1mJFiZZSxl+NHx7L/S3E2A49gpMNS0DN2ymjozE/IxY7RuOCrPIIm4hID+ph9RGofxUHcIwqz557okixQ5FClpX9qbMIvbKCURdYILttHcHJ5/3mZ6gXd2TigrQ==;
	24:tLE9acpi8ggJBxpxCBl2PLnROljk6U/pVoomWEz1AkLfeQeZqVbUrhpR55xw10wfPiZ0+hcjj37pnP6EZ3fbfQh9i6G2+kjj6F6OfVEt/Nk=
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2016 16:00:24.8657 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2PR04MB848
Cc: yocto@yoctoproject.org, Xin.Ouyang@windriver.com
Subject: Re: [meta-selinux][PATCH] busybox: explicitly set temporary shell scripts to be executable
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
X-List-Received-Date: Mon, 07 Mar 2016 16:00:28 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit



On 03/01/2016 11:43 PM, Philip Tricca wrote:
> On 03/01/2016 02:58 PM, Alejandro del Castillo wrote:
>> I first started looking at busybox postinst (modified on meta-selinux) since I
>> am getting errors during "opkg upgrade buysbox". The errors that I am getting
>> are of the form:
>>
>> update-alternatives: Error: not linking /bin/gunzip to
>> /usr/lib/busybox/bin/gunzip since /bin/gunzip exists and is not a link
>>
>> Which only happen for utilities that don't have any alternative installed after
>> removing busybox, hence no symlink. Utilities that do have an alternative
>> installed are correctly processed, for example:
>>
>> update-alternatives: Linking /usr/bin/ar to /usr/bin/x86_64-nilrt-linux-ar
>>
>> The root problem is that meta-selinux on commit
>> 521ca9c9cf370840e9f8c808a7955aa5da7c356e replaced the temporary symlink creation
>> on postinst with sh wrappers, which breaks update-alternatives when it tries to
>> update symlinks (which are now sh wrappers).
>>
>> Is there a reason why the postinst needs to be different on the selinux version
>> of busybox? If the postinst is just creating temporary symlinks which will go
>> away once the update-alternatives block later on the script runs, do we need the
>> sh wrappers?
> 
> Thanks for the additional context Alejandro. I don't have enough history
> yet to pull answers to stuff like this out at will though. Hopefully
> someone with the right background will chime in. Either way I'll circle
> back once the easy stuff in the backlog is done and we'll try to sort
> something out.

Sounds good, I hope someone can provide background since it looks to me like the
postinst is wrong, but I don't have historic context.

Let me know if I can help in any way.

-- 
Cheers,

Alejandro

