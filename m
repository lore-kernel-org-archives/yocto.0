Return-Path: <mkelly@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42944E00992; Wed, 12 Apr 2017 10:12:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.38.40 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-bl2nam02on0040.outbound.protection.outlook.com [104.47.38.40])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D762DE00961
	for <yocto@yoctoproject.org>; Wed, 12 Apr 2017 10:12:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=fEszCrLCMYUb+iPqC00g/Nu4IK1pkTneKoSecCbzrm0=;
	b=GHD2KVnUgk9N1tFxnjhTjOLA8F7T81Cw6AoJmMoXqvO+ifoju24XiR2BjpYspQyGbn3mk0LU6fowFwa7dxr+HoE/81IxduoTlwXzAg06E4k6y4bCQe+Cadzv27P4JeFV2+KyQmyOWy4z1Uc/EdDivjpSpC44mXE5GBh978wwnx4=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=xevo.com; 
Received: from [10.0.1.79] (65.122.179.226) by
	CY4PR01MB2679.prod.exchangelabs.com (10.172.135.13) with Microsoft SMTP
	Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1019.17; Wed, 12 Apr 2017 16:38:29 +0000
To: Jussi Kukkonen <jussi.kukkonen@intel.com>, Paul Eggleton
	<paul.eggleton@linux.intel.com>
References: <ba1a6361-3fd4-63f7-3752-63c75dff1347@xevo.com>
	<CAHiDW_FKOO2kGXxLs3NiB3yPmGh2OE1xec0Fdgnt2JuVmBvN_Q@mail.gmail.com>
	<1971160.7GEiT5quOD@peggleto-mobl.ger.corp.intel.com>
	<CAHiDW_GipiELX4dDs3sYPm7V9SUGZnQDLOLbwJM0eiJBoQFaQA@mail.gmail.com>
From: Martin Kelly <mkelly@xevo.com>
Message-ID: <aff2fe4c-4d1c-80c5-2094-2951e96b2a7f@xevo.com>
Date: Wed, 12 Apr 2017 09:43:24 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <CAHiDW_GipiELX4dDs3sYPm7V9SUGZnQDLOLbwJM0eiJBoQFaQA@mail.gmail.com>
X-Originating-IP: [65.122.179.226]
X-ClientProxiedBy: DM5PR1101CA0015.namprd11.prod.outlook.com (10.174.246.25)
	To CY4PR01MB2679.prod.exchangelabs.com (10.172.135.13)
X-MS-Office365-Filtering-Correlation-Id: 8c44c799-c93f-49ce-62bc-08d481c259f4
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201703131423075)(201703031133081);
	SRVR:CY4PR01MB2679; 
X-Microsoft-Exchange-Diagnostics: 1; CY4PR01MB2679;
	3:RAYjunYqueG354UXNvKkWr56yi2UL/YlhcbxfH2/NJjvGau911YJvBzQbQOvEfNFOwMGwI0/8DvxBYszDd7MdSaqxUUYQ3xamktjTI9+9oE6sDbRi/47WImyGbycfe8EnzxnUikhsH/8LGEObkADPhZVtmwunYOrbixSlL7T6YmitCLCkO6bxNRAmtc0CfOqhCsrsEdN0e0JAjs/J13eEdfbtxHquxo8J6/RN6Z0WJ8ICYB9El/Mw2jPgqtqK/LicJ2i7qsomqaOpEAO6qfQUOc5StneXFS8e9U24Rs8a0Uu0DuZPP6cHUGOHpqL1ntD53wKetMQeidrLklDAwUwTw==;
	25:ZFgPS5JY4sGNlj9D46DUeiouCE5VOFWc4AtYXEOR3iXPI3Wdhtp1QS0ZjhVLO9n7PUKnMgpHewjyFq8lAVhES5fO6H3zntxku/QttPhLNIJIMOQZ3TU+3SWe/zD/owiL50XIf5sg73h5xabsG5awQ8YXe6kXKEc/GRVCJ6wihzLaPZrF+KLVeHefusftzQDb3hfP1fw/EPStZos/gGQWE2X/AtkeHDs5I8yqVTnxaIymbMBmUVZ9nT1smwTQ0SDvnXvDBe4+frmHfGg9iIlRxFhdjZnBsEllURJlbzqsKoDoOVv8ybgCefCqtkOzgSxaVyY1GUwrkKDNhXgJfsOZ/+kkNqq536cvMYrvVoOcI/OR21N3qz/rEvBZhmIrD7FAqOPLIA9wP/Al9ZyV7/6yGueKYps8xkUw22jgSMWGDtKWNoZ/8KRKkDJv7KKFNDKd3JsdGuMlgFg6MuwinypKIA==
X-Microsoft-Exchange-Diagnostics: 1; CY4PR01MB2679;
	31:DDAqaQeNNxrFSWkNo2ug5wC9wEXDHaAAuiW0s0yJ3a6tlarELGhT+u9otBoGVXoMaMG490or7Z+HESC1tIYD8Cpd0URMLUm60hLD/nhFnv4Oaul4FDsa4+7REnO0tkkcH39Mt+6uWRus8ge1vtyoCnBDlYX76rEa6GLiAN0HYqKhKy7mlemEtdvsNz95UEMrL3gbsjLXDylg3ubISPudSIIW+8ifEx/nVdkMuTs+IWzRsKb5C/CsmxJosEUKhv6DgZim4Wrttxeuk0lUg0U3mwb48qzYC74xngnelJBXoJk=;
	20:0aqqdwZCdVNwgzCNUXjVAZjooQNLH6glNiQrLTGdrd+NTvjaTAVkZfiNlX421Nl+VSGr/rpZV6Ew7LB7Xg3veLWZNC+dGddGj+yQGvBUR1/pk9PZCcr9fFBux0NTqu0j5X9vxxbw5OF3wTlzmfDYUniaZ07BwgBG0oGc3rDDN8OIsFTFpVybbf7emn84vBcp2AUtbzYO9cU7EY74DNA0JHychkc910Uq5NoLvLTFhThBau9Y+B1+fKOnqmTBH2451BeDfOVnoC8GiiF0DUDYqeAIZR3NjBwMfcovFMeyRpYQOyRTG/8MzW/UDrqMW4CUoBB1U1grrQNx6dUbAyxSDg==
X-Microsoft-Antispam-PRVS: <CY4PR01MB267967F1E19AE512A7A168B1AB030@CY4PR01MB2679.prod.exchangelabs.com>
X-Exchange-Antispam-Report-Test: UriScan:(5213294742642)(228905959029699);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040450)(2401047)(8121501046)(5005006)(3002001)(10201501046)(93006095)(93001095)(6041248)(20161123562025)(20161123555025)(20161123564025)(201703131423075)(201702281528075)(201703061421075)(20161123560025)(6072148);
	SRVR:CY4PR01MB2679; BCL:0; PCL:0; RULEID:; SRVR:CY4PR01MB2679; 
X-Microsoft-Exchange-Diagnostics: 1; CY4PR01MB2679;
	4:Z9bmL9hYGA4VlZIGNymEFpy0Gmnp7KKwXfw0PNYeBjnR2iwe8pGQw4/G8b9rmtEGgQbd35IVOHcAyY+V3+nahFX3Ct0X7XGIDaXaSrrrXA31kdqzsG50jaQofJ2E2HFIi80kV5ZtPmqBQb+PzA14B+9svcEyxGwCzeukrMAOhqxpX4zcsbtQjQg2Z725Vb8Rf6oHnX2WYV/fM77V8gbGO8kUJVLNDqa+Tlc8Kw9GhUuz68Sukk+MIWNwYkYgXj4WK/0o2Uerk/CBGoxwV2ybgLnNailsDvUfS6mcyjfLaBL7az7p5VFYLB5IkIjqMRCRPP8rB+9QqtWVEZKOx24uF1wU2doqNGbNizvSNgX8HBeapbha9tsj+BrHQIfZxhKVncOkW+j2iz4Pq52mPMatiJGdNUk1BQHclKcaVBEz106d9cRfuS1PT8xJQ7khL7rbssEBqTovPg23sVDMlNH/fyPhhRlc+yZ2G6e6iGUCeJpCQt0T4ZDrWk25LpBkyYpXJBz5cT5NVdpMZ27df5ehMOzbxMPDs31sl/EYWD4vEtzFIRHTe5mnPRvtHxCvLjyNPKG5BWc60Fbg0V1bgjnVy7nLZVLppXViD1YVjwgQ/sZeIsP1qHqqegjUFa9FBIHe8ENR9f0HuHi9gHCM9ny+QgZBTuyegZTWWYHEDB2s5ebZfu1rzckZ1Glss3vnNjG/R0LIDYiTY2JJhtlAfkl9cGKYQAFdATMUztRCYdv86JnEd/6ner29oml8V8kiaSMcnw4dl11EyQ+JxfKQ+7GCJw==
X-Forefront-PRVS: 027578BB13
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009020)(4630300001)(6009001)(6049001)(39410400002)(39400400002)(39830400002)(39450400003)(377454003)(24454002)(50466002)(33646002)(53936002)(4001350100001)(81166006)(7736002)(189998001)(305945005)(77096006)(42186005)(64126003)(2906002)(76176999)(90366009)(50986999)(31686004)(54356999)(6486002)(38730400002)(36756003)(230700001)(229853002)(2950100002)(53546009)(6666003)(83506001)(5660300001)(25786009)(966004)(6306002)(86362001)(3846002)(66066001)(31696002)(23676002)(93886004)(4326008)(6116002)(8676002)(1720100001)(6246003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR01MB2679; H:[10.0.1.79];
	FPR:; SPF:None; MLV:sfv; LANG:en; 
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtDWTRQUjAxTUIyNjc5OzIzOlEzMG5YR2lEMEliZ1VzYTVDUlgwWGdUWSt3?=
	=?utf-8?B?ZSs0VW15dWxyV2Yzbk9RMHR1aXE2LzBZZGlNRnJGOGhUKzY4Yk5Cd25UWUdR?=
	=?utf-8?B?Q1JrQy9jSXErbHRMZ2hDK25iNlg5NTVhZ0N3K0pRdlY2TjRYY3NHUm4wSkNG?=
	=?utf-8?B?dXlNSVlmVnVaVkJ3bG84NWxKckQzU0dleklQWmdaUlF4dGh0alpBK2d6KzNR?=
	=?utf-8?B?T2grQVpSMEQrdmRmcnhSRUk0MDRvSjRyMFVzcTQ3YjZHYUE1N2RCTmtBVzFL?=
	=?utf-8?B?QUFucjFDVHdKbEQzQjVxQXdLVjNuc0lwZG8rTDYvME9LNHM5bTBnM1gweFBR?=
	=?utf-8?B?NllaS0tTRXpNWHRwR3VRRGVkenl6ZFJtWGpCUjh2RkhTdU5vRkZJS2FSc2pI?=
	=?utf-8?B?OEFJV3RsMGZObm5GUXkrNVl6NHNXdE4vWnNvK1R3bm1LMEdhbUl6WldmbVNE?=
	=?utf-8?B?SHdMb0plZ2VOSXFQVmVGTzc0VGoyTkZ1SGRnN01NelN0VngvZG8xWTlCeXBM?=
	=?utf-8?B?d3pza01KM083K2s4bjE4T042QkpmUDZVZGRtUmJZaUFSWm9NdFFRUHJTQlhB?=
	=?utf-8?B?ZDJEQmJEbWUrVWhCK1NUendSbHJCeGFxYmR1SWFmaXZqNjFpQ3hpZ1JXWEkw?=
	=?utf-8?B?dWlzWWFIcmN4a01JOVVoTHNwTXJRT1lvYWk2WGZBZlRPdVVydFVOUENkTkNF?=
	=?utf-8?B?bzY1ZHp1OWVlSjlSV0V0M1RGTmdTUzhrN2FmejEveWVEU3UzdFZ6eXJBTjdr?=
	=?utf-8?B?NjBKeG9kOVNRWjZER2RCVjZZby9vL3hneHkvRzdCWXkycEpCcG5GeVNKUmQ1?=
	=?utf-8?B?OC9IS0xZclFLb1ZnQUUyOURsTGpGbFhKSkt1MDM3Ym9XYmVvMHZNNURZUE8x?=
	=?utf-8?B?MnFobDJXYXpWYzNibVRlTWpVUDlTZWZvTERvemxqZHJCR3hKNTlHR0RoVmpF?=
	=?utf-8?B?MTFkeW1WclovMDNrcXdoTnZKLzBiR0llZldnejcxaUhCM2ErYkR1dEpWWXd0?=
	=?utf-8?B?ZVFIb0w2bUVKUWNseVBBYVZYbGRsWjRON0g2bWpqM3E5VmFpVi8wS1d6V2M4?=
	=?utf-8?B?cGdGcjQ1Y3hBS0VKRTA1Z2IzeGJLTFJXQ2NJVTIyK0R6Y1dmeHk2RFJ0RTdR?=
	=?utf-8?B?MUZFWHNNVm1BbkkyRHF5ekNlZTlCTTVSWXlEVVhCQ0FGYnFndVNpQThCTUw0?=
	=?utf-8?B?RTlpd2pZNmh3Skd5RFdpQzNPUFJqZTZ5dEdxcVFzc1hWbzV4b0RnU2RyMG1w?=
	=?utf-8?B?VVFMbERLbis1TjhvTzVkT3hxN0Q5YXkzcXJOR25Bd3pGZ0MxeDRlZjN4VWJK?=
	=?utf-8?B?dlkyMXdjdElVZTV2UDQyNHd0cHVmcWhVbnJiWlNtUVRYQTFGZHltS1I4OVgx?=
	=?utf-8?B?N1g3OWtOTDljdXhtZEs5cTllREhVS3E2ZG44L2I2RGJYeG9RMVZBeEFSMU1R?=
	=?utf-8?B?ZnFFMjBMWS9qbEhjTmdPd2ZjNW00VHBNQ25xRUQyWEMrNW5QZHEwc2ZpT0x3?=
	=?utf-8?B?VVFoV3A4OWNEeUk1dGdyZDN0TmtXeDJhamJDSTdPYk9GRWVWMUh2NCt3c0FP?=
	=?utf-8?B?YnlMdlJBcS9DdzI2Q0N2eE4zNEdCZ3VzRTRMa2NSNVNNSFRYUytINWxsMmVj?=
	=?utf-8?B?OURBd2xuRnF5aCtqaktHcEwwZ0c3a3U2Mnc2eFFIZUYxWlpQVW1VUjNRPT0=?=
X-Microsoft-Exchange-Diagnostics: 1; CY4PR01MB2679;
	6:8cPvB7HsAlEQf4dJCuXJ8p3MOrNcebA1xMFMOnTwihZr2cewkjG2E/j6wnVNfgCcgQF1wjozAICsB+4MuthJZ3n0Nroj0d3pFjp8T9O06oVbgP1Ex6kcN6sXp5d8JNYtkFPjT1yA2Ye34R2IL2iafoNQwCI+RCyAnvfKg0jcq2pzOVpyaVvG7SKJ1bTrIHg0nMovH88uhWe8wavEOanR7ajfULQP841olChScKMU0MxICLLFDKFZQZY0AcXap/NMACMcXkSk4OZRfJBZdnKRYPDIVTSMJRl2SxPEowHjZj2wXgPvkr7foOskwp21ArpvDop6qSmeCwiSJEEaxYc2z/ppRLUguJRauvGnY7/CJVDt1PMAEnjupMUPBavtQ87tD8k/e8046YkY0+orRT9W4b3p/ttBRsnokYqs9RFTfkLgEHS5xolD1iMmYQJQy47bQ4ss2nmGVIVNTQoUuMsu2A==;
	5:TzmudDQfZLNVjfgNZqzg8AAYEFztffJ6+H4+gUzaN8Vw8sr6rYquW3Ro9v8lVG2DmpbUhJwmLKnnhnxbQ+bHuLHoV+5ruGNLqAyxPyjqPRn7rlEBuaKnfxoFPUVLfn9m/gz8cgXD0h4vEuiDhhNuQw==;
	24:iXn9aJ2/CrzcDWyJe8ZTkXSzcALzHtypyNYx0TH20juqsypkT5jvBd7vaM/AxDXbheLty7rWt2cAcuuB4XyG6FZ6ITwfu/0HiK6m4fD4u7U=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; CY4PR01MB2679;
	7:qMyIoA4xI8DwM3PG0mHhHbmL0WF5i9fjHVCPM4jOwb//uNK9e8OAkB4x6OgYpzDW9yVR5EXDqR+AoFAXKTMKr/Q7ygQdXLw+cPfR5vOnltU3tmLUBqaTFGwT5syONaODH02/M8Wxafzh+Nz4w1dgpjyqQJ7lHBEz4RW6oMBXCuwOKgFSP4zMVsdoxgaEfcGydU8D3EMm2AxJWzrJUog45BDtqtzKiwwXHKpohhVR7tsxHtDk137KIGJ4ZPTKfrH3fWF6+0uefzoygnBpgW0ymRl0ug8WSS8WqtORMsuw1dar8L1PViWOLZMmBiZ1mBNRfGIpGXlYosHrve9wpkhmUg==
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2017 16:38:29.5436 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR01MB2679
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Relicensing an Apache-licensed recipe as MIT
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
X-List-Received-Date: Wed, 12 Apr 2017 17:12:15 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 04/12/2017 03:50 AM, Jussi Kukkonen wrote:
>
>
> On 12 April 2017 at 12:54, Paul Eggleton <paul.eggleton@linux.intel.com
> <mailto:paul.eggleton@linux.intel.com>> wrote:
>
>     On Wednesday, 12 April 2017 7:14:00 PM NZST Jussi Kukkonen wrote:
>     > On 11 April 2017 at 23:52, Martin Kelly <mkelly@xevo.com <mailto:mkelly@xevo.com>> wrote:
>     > > I'm thinking about integrating the open-vm-tools recipe from openswitch[1]
>     > > into openembedded (it massively improves the performance of VMWare guests)
>     > > but first I have a question about licensing. The openswitch repository is
>     > > Apache-licensed while the openembedded layers are all MIT licensed. I'm
>     > > not
>     > > a lawyer, but my understanding is that the Apache license is a superset of
>     > > the MIT license (it includes a patent clause that the MIT license lacks),
>     > > and therefore MIT code can be relicensed as Apache but not the other way
>     > > around.
>     >
>     > The license of the layer refers to the licensing of the recipe files
>     > themselves: the source code licenses of the projects the recipes fetch and
>     > build are another thing. As long as the source code license is an open
>     > source one there should be no complaints about integrating into an
>     > openembedded layer.
>     >
>     > To be completely clear: The LICENSE variable in a recipe refers to the
>     > source code license of the project to be built and should be set based on
>     > the licensing info found within the version of source code that we fetch
>     > and build. The recipe files are licensed according to the LICENSE and/or
>     > COPYING files of the layer it is in.
>     >
>     > By the way, a quick search on layers.openembedded.org <http://layers.openembedded.org> reveals this:
>     > http://git.openswitch.net/cgit/openswitch/ops-build/tree/yocto/openswitch/me
>     <http://git.openswitch.net/cgit/openswitch/ops-build/tree/yocto/openswitch/me>
>     > ta-foss-openswitch/recipes-extended/open-vm-tools/open-vm-tools_10.0.5.bb
>     <http://open-vm-tools_10.0.5.bb>
>     > (it seems to think the correct license is GPL).
>
>     This is muddying the waters somewhat - the LICENSE variable has
>     nothing to do
>     with this. We're only concerned with the license of the recipe itself.
>
>
>
> Thanks Paul: I was indeed confused and did not understand this was about
> an existing recipe even though it was clearly explained in the original
> post. Sorry for the noise.
>
> Jussi

Right, I should have clarified. The underlying code is LGPLv2/GPLv2, but 
the recipe file itself is Apache licensed, which is my concern.

It sounds like I should ask openswitch for relicensing first. If they 
say no, we can consider the situation further.

