Return-Path: <mkelly@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1531E00C40; Mon, 30 Apr 2018 12:29:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.38.65 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3609 seconds by postgrey-1.32 at yocto-www;
	Mon, 30 Apr 2018 12:29:07 PDT
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-bl2nam02on0065.outbound.protection.outlook.com [104.47.38.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC813E00B66
	for <yocto@yoctoproject.org>; Mon, 30 Apr 2018 12:29:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=TRTuWnIDLiss5yq0k3j/6c0RVq0R+717+sGExGfBE+Y=;
	b=rQLBJyWo8DFeyhV7HvWEJ7SnD0Kd50pzOmnlf3uq4RcNN5nnD0HrVvaA7Ewz14QL9ut/CN/lNIHcXqWp65Vd6SF6IDmsXnILWPECvPashH4a16fIHK6m88GZw+f8DmidqC0FAS40kI3oEiL/fSvMv9VC8/80M3Zdo97JNSrDIkA=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=mkelly@xevo.com; 
Received: from [192.168.0.3] (174.21.182.65) by
	SN6PR0102MB3421.prod.exchangelabs.com (2603:10b6:805:3::10) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.715.20;
	Mon, 30 Apr 2018 17:54:45 +0000
To: Scott Rifenbark <srifenbark@gmail.com>
References: <20180427174642.24184-1-mkelly@xevo.com>
	<CAFNP8Os_yoYfEFefKnu_zP+yj1CMNoaaL4Rdjb9zfzUA04Tbcw@mail.gmail.com>
From: Martin Kelly <mkelly@xevo.com>
Message-ID: <83e8b05e-95f8-fc3c-0057-4f2742cf8228@xevo.com>
Date: Mon, 30 Apr 2018 10:54:37 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <CAFNP8Os_yoYfEFefKnu_zP+yj1CMNoaaL4Rdjb9zfzUA04Tbcw@mail.gmail.com>
X-Originating-IP: [174.21.182.65]
X-ClientProxiedBy: MWHPR15CA0031.namprd15.prod.outlook.com
	(2603:10b6:300:ad::17) To SN6PR0102MB3421.prod.exchangelabs.com
	(2603:10b6:805:3::10)
X-MS-PublicTrafficType: Email
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(5600026)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);
	SRVR:SN6PR0102MB3421; 
X-Microsoft-Exchange-Diagnostics: 1; SN6PR0102MB3421;
	3:uPTKE4kdYEDpyvJFyJPSo2c2GOVEhDyYmgtbgArMpIZuwiMdK++7jucDWj8lAd3tU5iXWB5Ymdyah7RHq+HuBMBI/GfBZnG46IjLl5vHDUmMqZBJYLBqSviuYRGIFhT2kk4CNaFmwzyH+dJ3jnaXLcqSE3YmboYenftvWeUleila4tJSDgTkznqESinyoXkW34fSQwHH4rO24hos/twmasueFooaso0pV+pTASOTEzV1dB5hDfv5sJLCaD+5d5Qm;
	25:h0lkt132JVQPomuFjOlZG7G+1J5K/WDEaJv4FKuG+JZrc/YSzg8vIK+AaQvmHvqf7ZJneDg6hLLvPTiDNK4GRIkRPuMrbKtpckZlln2x4BxZhiX+JPWpPD+KFodtkxdM+AuEaRY5kl8xofEX73rniFdTVQav96OywUpvKcxSQKCLcV8b1lNzNMQOJDb4gk36kudcQd/Unm1iDLd21tPb5WUAFJQMSMmq+ffYVM9qGhnpS+2C1x/cey1c/Zd7rLP+1Ie0KzmC6XoFXQzFpuhdJLCb2MrwWqxsDgcRlbvep3ooCP9xeWaeCa1SMqknXj5fmjkppeU+U/dwnOJglVzx3A==;
	31:euAmCXzyGT6lOuHv0lscozUpywW4kggantuJtwTjC+Wz4hXBMiCcvcd/5eZE2J12Iyl4AvF4qslwjMReSnwj4NPgpLCf7FI3tPqMBqJ4o6isBfQVLkxnzOgoUjywp8/2xjGFuIufziPPrdnXIbSEPOV8UCoKIW4zgxEkYhMjolz8URHCf22LmCGraPfEDmgDyVSONJ5qRoZJEEB2Uavh+bR5iT18GLv4Du4iWLMfaSw=
X-MS-TrafficTypeDiagnostic: SN6PR0102MB3421:
X-Microsoft-Exchange-Diagnostics: 1; SN6PR0102MB3421;
	20:V8n4loRKmtSt5eQnOYiVZbnQ55g93Fo/JlxvEZCP2sbbqpS+FfseCz+10WyK8L8Iqk8NUw+Ym4w68JTMu3QEMNz33WJsFWJzgplyW+uxJke7Ig/YAROGVE3gYPHzIhlg7PKQgaG2sj9APx2nI47HX1vpK7SXsfUgXIeb+QKnCNEw7EYrRZY3WRLBVHoHwZn6fB0j7NTmADU2Od/CLL4+fjsSj1bqY4cZBPAtDOmaQqlkAhEAZMTrcMmEry/Z66kC9YFLnC0nWpo3lm4xVpjK3S2bXrVAB9zRyJG8YiElF7BvQWJPuPkmVgVL26EmDjru2fe7WTvdjkbYfgTu+lpD7VpQfqFXsUf2UgjQeA1NYgwJ39EsDozNTITX23jBY2s5DnqhmFPt06ZJopIMdVWjJxvB+TtIYmTXk6okzmWBv/rVOMc+cZEzSKdA7tbCOfsz6xGD8kbTdHsiESgctt+iVgHwQeSbgHVyTsAw10o1Lz864uq6rlTE6aIJ3N+hiztL;
	4:dNY3N8qvG3VkkjeSakGCb2FdJGBdgxDRD14xp/4sN1onPC8VHTxiPSJq4rhgxY5qWsyvFuFzfykKTlXzJ4yZtKjSKMC3wOLGxJHLm9T2/lj7s9Igdj9bCt9cOvVzpdwkFf8j6q8aGZXF7leuL2WOGPpjeI4qibj54kFj+BzOY96EpleDi3/xvx669G2Gbig+1HF835QQx+BnDGxqPGjQSdL/j1kjNfbHXAeRAWopFN5+FJyS1Lf49l1icv4NQROt0cFf/sP+eUOcc8aUyhuYbw==
X-Microsoft-Antispam-PRVS: <SN6PR0102MB3421641E0E7B32865685D6C0AB820@SN6PR0102MB3421.prod.exchangelabs.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(3002001)(3231254)(944501410)(52105095)(10201501046)(93006095)(93001095)(6041310)(20161123564045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123562045)(20161123560045)(20161123558120)(6072148)(201708071742011);
	SRVR:SN6PR0102MB3421; BCL:0; PCL:0; RULEID:;
	SRVR:SN6PR0102MB3421; 
X-Forefront-PRVS: 0658BAF71F
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009020)(6049001)(396003)(39840400004)(346002)(366004)(376002)(39380400002)(199004)(189003)(81166006)(67846002)(64126003)(6246003)(106356001)(31686004)(4326008)(50466002)(76176011)(386003)(16526019)(53936002)(5660300001)(68736007)(25786009)(52116002)(26005)(86362001)(3846002)(53546011)(65826007)(6116002)(39060400002)(77096007)(8676002)(31696002)(6306002)(117156002)(81156014)(52146003)(2486003)(2906002)(65806001)(23676004)(65956001)(229853002)(54906003)(186003)(305945005)(47776003)(316002)(486006)(97736004)(446003)(6666003)(966005)(2616005)(7736002)(476003)(6486002)(1411001)(11346002)(956004)(66066001)(2870700001)(16576012)(8936002)(105586002)(478600001)(58126008)(36756003)(6916009);
	DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR0102MB3421; H:[192.168.0.3];
	FPR:; SPF:None; LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: xevo.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtTTjZQUjAxMDJNQjM0MjE7MjM6UEhoY1l3NVhKTDU4T0NtUjBzMy9qVFoz?=
	=?utf-8?B?bkJRNHpqcm42RnV0NUowck1YSWlSWTBoN3laeFZud3JTdTRVMmFvd1ZuNEQ2?=
	=?utf-8?B?SWs3MUdxV1laZkNZQnRzTUlSYndtTU1FYXExY1lzZzdNQ1R1MTJGaVI3WTQy?=
	=?utf-8?B?RWZWM3RYOTllOStTUUFLV016R2ZBOUJjZW80TlhWZFRJZmswSENvVGUrOGtq?=
	=?utf-8?B?cmVOT05ObktDUUVsVkwzSUpnYU1UVW9paGVhL3dWWFpueEJXcEhqLy9nQ3ZG?=
	=?utf-8?B?SkxPTzVMM3oyenZieFMxU1FTRnFvUVB4dE1jdmI0cWpZZTlGdnNUR294UEox?=
	=?utf-8?B?OVV2aEFtdG1rWk4zNXFUMzZidjMrS3c4aDJVMXhBZHA4c0JnVExRamlmQjFk?=
	=?utf-8?B?YVpIek5MQnhXaXFqbFhQM3lvY1FKelJjc01XRE9maGdhL2szc1ZRU2FqbEp0?=
	=?utf-8?B?aGQ1YVZtSXJmQ1ZKOTZxdk1sZWdORGp3UFMxczF4N3pVYjYvM0ExL0lHOVZS?=
	=?utf-8?B?eUIvT0VGRlBKTENRVDFQUDMvdndPVDJ4NlFRWHk3cklCMG1iK20vQXRqR3pF?=
	=?utf-8?B?QkJGc1JQS3lSUjcvM00zMms4azFyMlFnNm9Ga0xSTTZIbG1hQ0ZjRjYxbFc4?=
	=?utf-8?B?WG92UDJVMFNKZjlOaE9OT1B4dkhmNE9qK1FpSHRkZ2NEdFN1MlF2aWkrV2du?=
	=?utf-8?B?V1NLWlYzbVJtUmZJM3hhOUNPNE51QXliZVFIOHBoK2toNVRKSjZidUF2bHpo?=
	=?utf-8?B?YnpVcDJCaUpSZ0wxYy9EQUxVVUo1eEE3WVYwTWJsYmZ1WW9nUjNrY0tMQXpJ?=
	=?utf-8?B?a3ZReWtrUFFMOCtNTzVyTW9BU04vaTQ3a0JFRi9Pb0JoaS9JVEhVUTliMUIx?=
	=?utf-8?B?ZWlRcHo0N2ZaUE1DS056ZlJsNk9oekZqZHUvQ1NGb05VOU5MVGRLMGVmV2pp?=
	=?utf-8?B?UjZuVWRRUGxWY2tmN2c3THBBby9RRzRrL0JMTGorMmY0UnNsTDFiTkgzRC8v?=
	=?utf-8?B?am9zQTZsRVovZXVjNjVXbmdKeXZReFZCZzFwbWNyVG4raTFEcE13RVBoZUlq?=
	=?utf-8?B?YzNsWC9JSEttbHcyMUluRjFyb1FOT0h4SVN0dUszWUxpVkoybWhzMngxck1m?=
	=?utf-8?B?NDlTNkVDTmhpcXJFZllkVyt1THYwQzg5c21RWDQvbVlOTzJMcVY0SlRFa0Y1?=
	=?utf-8?B?QUhHT3gyUm40V053VFFWRDlkamwra1BMeTAzZ2RkZzY2Wm1IQnR1UkhmRHZ6?=
	=?utf-8?B?emdjeFlsUFdkMWN0Y0JZZ056b200aTVSSEpyelNUZjdsclJZNzBaVVNSNDJQ?=
	=?utf-8?B?d0c0bE16elJpbXdpR3BpOGRPWnJOOHNIL3FibDZkMC9sNDFEb1hzVzBsc2VJ?=
	=?utf-8?B?ZU1IQ3hjdVIyMkFlNHlPSkFKa3pDcngrckRnamhQMmsrYThrOEdUc1Jua1Jn?=
	=?utf-8?B?UDQ3TzRzQURRVFpXeS9BeXlkOUluWkZaVlIzWW54NzUwWnZURnZvRE9MNkpz?=
	=?utf-8?B?RDFlN3pwLy9LSE1Ia1pvRFIwWFFETlQwVFJGZ25LMm9zVFYwSnpWdStJSXgx?=
	=?utf-8?B?SkpLT1hSeW56dzB6WktaVEdpTXY5ZW1LWmFINElxdnc2R2tjbG94L0dsd01q?=
	=?utf-8?B?bVAvcExsOC9nLzNENkVuaWU2QmFFRmN6Q2QvSkxzbzBKc09PVWllMGVqMmJ4?=
	=?utf-8?B?ZWg4VHgvWTRzN3FpakNpZG0rckFmZG1xWTcweDJRNEhtRkdzZDQ2amp4Nnov?=
	=?utf-8?B?dGdaWmtnYi84T1RqZE90aEN5OWUvZm9jaU5wcGNDZDhXU0MvVHJpeUxYY0Vz?=
	=?utf-8?B?YU9PZk1oWlFnRmZ1Q1JhWkFncGJLMmx0ZlVOMkZxT2RiSkV3V3liUk5CSTdU?=
	=?utf-8?B?S0QrczFWc3M0MjlKZEMxTHBtTDUyNk9PUUlqK2xMb1lEZUxneXk5bkE3SlJS?=
	=?utf-8?B?bzVYQ3FsWndIZDg2bllZeHFTMmVBWExMUXh5NkkxWjRUR0xvWkxuWDkxRTlS?=
	=?utf-8?B?NnFvSGRMbjJyM2xRa1MraXl0T0tsREptWUEvSDNTRlMzWHJNNzBrblo2NjVC?=
	=?utf-8?B?aXBJK3hRT1RDZXN4bG0xWm9UQm1CR0lqdHlSbjJhQy8wT1F5VWZqaUgrdDBC?=
	=?utf-8?B?SDFVZz09?=
X-Microsoft-Antispam-Message-Info: oa0Uj47nDplZSWyILVPzmfrE+EAOxZlp0c4E4S2GQCfd+38zK98T/IxnWtMqCghx4UIiaNq0HoVcrhn4uLgbvwHJSGVbnzq6EJ1n9y39+aLXy3+mn97DTHrD9a+7SsaW3QjY7ilIsMUDNu+XQQk0J9EMRYJJcZAbGOJVZLZGX6EU6Yiai7J24YNRpk+BVbQc
X-Microsoft-Exchange-Diagnostics: 1; SN6PR0102MB3421;
	6:XfrwgZO875rS/o1CnIwU9HBgO9PSG8G11uxsL9w3SgsYG68EY9ojyxnA7Zz9oe19DfsBOvQ6lFzdkQOaLihvvj95HLY1U55t1zvEd66ZG229Js7pGb5lC9KOmOXC/36NZndafEuWrbHppdeS5Vkyf6a22QCL9WJl+Pa7EA6SXsgr/9DP1wKTMSGdfETG1mxR2B/nLEE495+C+dv631Cu4PCSFQ+dFRPA2njtmWoIsEND4iAtaIrLsoLdt9/5GcrYTqcQWZrNwZXEq6u+7wBfeZcsbd8n6XYWv6RCDGvs/CWv5iNkJmvzD8YvvpmBPDJ3PNkeH0lZLXx/vacSkzh0ZnG77Ep8sG3nO6DYtoWfDVsjXTk6nTOJxGHLmZE979CVIkwfVLfq+fPs6ZWcjOdqjWTtVS2hPjXLvrfnvGDzt/6cleqniehbMtrhH4n0pDOge31a74H2gHEvlmk84CgGhw==;
	5:B0y5pYsbz52q7tQcPvWlB3P+JESWOoiuECqUNBkgetJy1Cg/lPFLGv2BBmT0zg9DRXq/RIpWr5+4lSk3oMRsTtwcVzmrJPIDCwxOFCpTxgM8HfzhWIo1O1IqueMUEMFqpgd3/gx9YlXFaXb/5gfaTM6yzZTfc8O8Foz6og6hMJo=;
	24:NGNTLItz407XSIjxWc/05gYHUUTGjGjl/z26f9A00X9lWuZXrC90cI9kw1nSxTNjXEGyC86gK49l97WliBQBd+j3bsCz8II0+1vJ/yM43C8=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; SN6PR0102MB3421;
	7:EgXCEQuoUp0tJ98SGwM3C9W9C3O6kigraFDV0WpQeUha806UD6ajIzvh6nrUZFt1JzBXFlskZ66eS6yUUCr5BRd+ZT8GMd0gPI6OU9KLf+n6WaoOcH7k+tbv0Viyj0dV9AmrTxj8EwiRRK2X4xYxJ0fWE4esC4mHbUJZUqZ22yR1Gxvw1gaUqbeJNq/Ny55bLb7oCpsdnpgtQPr6H/wY1h+eQupgRt/qBhctyZR27iorcpzWJCJGQ6vABkOCmgwp
X-MS-Office365-Filtering-Correlation-Id: f4950a24-31f5-4c04-0eee-08d5aec375c9
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2018 17:54:45.7478 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f4950a24-31f5-4c04-0eee-08d5aec375c9
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR0102MB3421
Cc: Kristi Rifenbark <kristi@buzzcollectivemarketing.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto-docs][PATCH] dev-manual: document CPU features and QB_CPU_KVM
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
X-List-Received-Date: Mon, 30 Apr 2018 19:29:09 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 04/30/2018 10:25 AM, Scott Rifenbark wrote:
> Hi Martin,
> 
> See 
> https://yoctoproject.org/docs/2.5/dev-manual/dev-manual.html#qemu-kvm-cpu-compatibility 
> and let me know if this section works.  I took your patch and did some 
> rewriting.
> 
> Thanks,
> Scott
> 

I like your changes; thanks!

> On Fri, Apr 27, 2018 at 10:46 AM, Martin Kelly <mkelly@xevo.com 
> <mailto:mkelly@xevo.com>> wrote:
> 
>     As suggested in a recent mail thread by Martin Jansa, there are cases in
>     which QEMU under KVM will crash because of CPU feature incompatibilities
>     between compiled binaries and the host CPU under which qemu is run.
>     Although this is hard to fully escape, we should document the issue to
>     help people work around it.
> 
>     Signed-off-by: Martin Kelly <mkelly@xevo.com <mailto:mkelly@xevo.com>>
>     ---
>       documentation/dev-manual/dev-manual-qemu.xml | 22
>     ++++++++++++++++++++++
>       1 file changed, 22 insertions(+)
> 
>     diff --git a/documentation/dev-manual/dev-manual-qemu.xml
>     b/documentation/dev-manual/dev-manual-qemu.xml
>     index f4719ebc3..1870a6a8d 100644
>     --- a/documentation/dev-manual/dev-manual-qemu.xml
>     +++ b/documentation/dev-manual/dev-manual-qemu.xml
>     @@ -343,6 +343,28 @@
>               </para>
>           </section>
> 
>     +    <section id='qemu-kvm-cpu-compatibility'>
>     +        <title>QEMU CPU Compatiblity under KVM</title>
>     +
>     +        <para>
>     +            By default, the QEMU build compiles for and targets
>     core2duo (for
>     +            64-bit x86) and pentium2 (for 32-bit x86). These CPUS
>     are chose to
>     +            have a broad range of CPU feature compatibility with
>     many commonly
>     +            used CPUs, but in some cases, they still support a CPU
>     feature that
>     +            your host CPU does not. Although this is not a problem
>     when QEMU
>     +            uses software emulation of the feature, it can be when
>     running with
>     +            KVM enabled. Specifically, software compiled with a
>     certain CPU
>     +            feature will crash when run on a CPU under KVM that
>     does not support
>     +            that feature. If this becomes a problem, you can
>     override QEMU's
>     +            runtime CPU setting by changing the
>     <filename>QB_CPU_KVM</filename>
>     +            variable in <filename>qemuboot.conf</filename> in the
>     image deploy
>     +            directory. This setting specifies a
>     <filename>-cpu</filename> option
>     +            passed into QEMU in the <filename>runqemu</filename>
>     script. Running
>     +            <filename>qemu -cpu help</filename> will give a list of
>     supported
>     +            CPU types available.
>     +        </para>
>     +    </section>
>     +
>           <section id='qemu-dev-performance'>
>               <title>QEMU Performance</title>
> 
>     -- 
>     2.11.0
> 
> 

