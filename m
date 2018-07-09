Return-Path: <marcelo.magallon@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FC0EE00EBE; Mon,  9 Jul 2018 05:51:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.233.16.89 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 497 seconds by postgrey-1.32 at yocto-www;
	Mon, 09 Jul 2018 05:51:37 PDT
Received: from g2t1383g.austin.hpe.com (g2t1383g.austin.hpe.com [15.233.16.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 607F2E00C58
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2018 05:51:37 -0700 (PDT)
Received: from g2t2354.austin.hpe.com (g2t2354.austin.hpe.com [15.233.44.27])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by g2t1383g.austin.hpe.com (Postfix) with ESMTPS id 0A7A81688
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2018 12:43:20 +0000 (UTC)
Received: from G4W9119.americas.hpqcorp.net (g4w9119.houston.hp.com
	[16.210.20.214])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g2t2354.austin.hpe.com (Postfix) with ESMTPS id EE8ECCD;
	Mon,  9 Jul 2018 12:43:18 +0000 (UTC)
Received: from G1W8108.americas.hpqcorp.net (2002:10c1:483c::10c1:483c) by
	G4W9119.americas.hpqcorp.net (2002:10d2:14d6::10d2:14d6) with Microsoft
	SMTP Server (TLS) id 15.0.1367.3; Mon, 9 Jul 2018 12:43:18 +0000
Received: from NAM01-BY2-obe.outbound.protection.outlook.com (15.241.52.12) by
	G1W8108.americas.hpqcorp.net (16.193.72.60) with Microsoft SMTP
	Server (TLS)
	id 15.0.1367.3 via Frontend Transport; Mon, 9 Jul 2018 12:43:18 +0000
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=marcelo.magallon@hpe.com; 
Received: from localhost (181.194.100.247) by
	TU4PR8401MB0878.NAMPRD84.PROD.OUTLOOK.COM (2a01:111:e400:7711::8) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.930.21;
	Mon, 9 Jul 2018 12:43:16 +0000
Date: Mon, 9 Jul 2018 06:43:10 -0600
From: "Marcelo E. Magallon" <marcelo.magallon@hpe.com>
To: Ulf Samuelsson <yocto@emagii.com>
Message-ID: <20180709124256.6zw6cbolc6fz6a62@nyx.americas.hpqcorp.net>
References: <CANmTPBZZHDw5BVGSMMx_N+ZtRyLtE0k5+yDVK-Ywh+peciaPVw@mail.gmail.com>
	<CALh9vaVPSTpyqrf7sofXiwmeoTxtWKqiz9OL6S3E=HvZLjnhNw@mail.gmail.com>
	<060F9969-25C2-42F4-8E70-1660B9C9F08E@emagii.com>
MIME-Version: 1.0
In-Reply-To: <060F9969-25C2-42F4-8E70-1660B9C9F08E@emagii.com>
User-Agent: NeoMutt/20180512
X-Originating-IP: [181.194.100.247]
X-ClientProxiedBy: BN6PR21CA0021.namprd21.prod.outlook.com
	(2603:10b6:404:8e::31) To TU4PR8401MB0878.NAMPRD84.PROD.OUTLOOK.COM
	(2a01:111:e400:7711::8)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c7d51d27-1dd9-48c0-e742-08d5e5998b26
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989117)(5600053)(711020)(4534165)(4627221)(201703031133081)(201702281549075)(8990107)(48565401081)(2017052603328)(7153060)(7193020);
	SRVR:TU4PR8401MB0878; 
X-Microsoft-Exchange-Diagnostics: 1; TU4PR8401MB0878;
	3:spqHPnfL5FtWCCAgi2a2iGMA0E3RljaM1iS7JxyuvtotvWAO+0/iuCxHbeNeu85WqScK4/6kTIwIpWoOMZ/UOAjcvpuYeod75ljFGja5plOT2bahCypHFB4JEU5rb9Ew4rjBR5VaLTcPUl6iDSm0Vcke0GoubPKom350bqqnZLzvQgeKjQQR59Bml3fr6EvZ5OoyzyqrLmAiIkpnnYdDqzoVYKNojdTTSf8FEfuSR1w1ySGQD0zEhA3TDWBTZJck;
	25:C51Mndf23EExl5RUCYStkf+KzJrlDRhMSEc4ZssrQMon2KeDjku+s12/eJb9W6tviTsa5oEIG/Vaf5oFsPlAEMgmRB4rYWhePu8yl6B/rYXWbiIUd/ZUs3WXY97UhOO0ovfOLniVwEis+YlZq/mjUDX3Jb6G+lY83sclT7+exz3foiQb/+qTMQlUYn5yZhrYVdn9bHOCzw6HhgpCL1WO1ko2qCq0ztulIVdmTXO1KuqPD3t+sGbydtavNg92SI7QwHVZiMMbHYY3R3U4xwoqh2xLyaY2rKxBh3drY1BPiDMG4uuMU5LeCHFYorA8tnPAf3R3BsvniLgG8SFEQZ36kA==;
	31:RoNrQA1waqmwARd7K5ZZVPyd5aR2aJWJyPubToWL+u6DC5kUK4EetU0cIWw/rp6zey9WqxIcqFO/AjNJaTXToBK9aNfP7XB2kliAQD8FRrOSed/Gjc6rDX06jMIhNWBw9tgU9GWyfTN8CK1b5VfQPRgUS72RhPdrnO88AdK6fc9U3pfcbjVCk58ag3rgzE3fZkL4YKLdMgpbdwShq3pBCntN0sSTFrrlYdvGpVnGEB0=
X-MS-TrafficTypeDiagnostic: TU4PR8401MB0878:
X-Microsoft-Exchange-Diagnostics: 1; TU4PR8401MB0878;
	20:VEQZcH4GXaUWeivKXrkkLqwXYMYmABQ/bKydhplzCh3Jy2QReE37h698hJMmjUhyDG1AOql87uV/D6+cGOgbP+4efaumXZmtFookS+WCU7Exe11c5DrrK0WIminmkJsrtMz472s/TJkblW2LGeDuPEAWukNiKFdjFidaaNVCsAIE690r013QIsDv/7ZKHvtG9duI5rAmVaIaC759F9pESaZFrTq2cZ96RNwMTaPlNymqzN0jRdTgGDJw7oDE1IVnGX0hPnlOZWxPwitdpvYKp1ZYnK1Zl2QApVxFeDvCyrxBBzgbtexeBmHGH23vdRiLm6CsSZMcGuHcQf3VUwlT/3kPptobDsBon6gUqtX0p33f6AQEf6ZKXgpMoqYbsxMhuvAQtjI26ankAkhoQdQfaJClf23NPHdAOVgHUaBtM9Anfi7rlqYKhnKpQfFHlxyavwAkRQ09bQI/W/e5Kbd2o1VtCQOBfLNi/ylpCt7XKlJHoCNffwm6rEhQQGUFAEHc;
	4:JMThECV5izWix3Fzl9mpkfuZi7gdhsP8LkvWr6iefKOBcxqkt+6rSWBLQA/VUCnaKCLlRsKwEEL1DJeWuBDHFX1+rpXFd/IJ2+/7nqfCveIudKsk0ezwsjjXch0jX2xrnCPXvOOFVp09fzCTtK5kL8ohopZS2R1VDe5B+8e4QVzHuy+D1F5AIQxp7sytnI0sfWnkqLs6VzArbRrkjSrtX5P+9sbOLI296NaQXo6lCcVtFFHzFqLwKb6X/z7D1w5vqWovUV0i3UFzZYwnr9zYNw==
X-Microsoft-Antispam-PRVS: <TU4PR8401MB0878E563BDFB6D2F11F25E0896440@TU4PR8401MB0878.NAMPRD84.PROD.OUTLOOK.COM>
X-Exchange-Antispam-Report-Test: UriScan:;
X-MS-Exchange-SenderADCheck: 1
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(8121501046)(5005006)(3231311)(944501410)(52105095)(93006095)(93001095)(10201501046)(3002001)(6055026)(149027)(150027)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(20161123562045)(20161123564045)(20161123558120)(6072148)(201708071742011)(7699016);
	SRVR:TU4PR8401MB0878; BCL:0; PCL:0; RULEID:;
	SRVR:TU4PR8401MB0878; 
X-Forefront-PRVS: 07283408BE
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(6069001)(396003)(136003)(376002)(366004)(346002)(39860400002)(199004)(189003)(47776003)(76176011)(76506005)(66066001)(6666003)(6486002)(316002)(478600001)(5660300001)(105586002)(6916009)(97736004)(50466002)(33896004)(2906002)(14444005)(68736007)(186003)(4326008)(58126008)(9686003)(8676002)(6496006)(16526019)(476003)(3846002)(86362001)(386003)(229853002)(106356001)(23676004)(305945005)(11346002)(6116002)(956004)(81166006)(2870700001)(81156014)(67846002)(2486003)(52146003)(53936002)(1076002)(25786009)(8936002)(52116002)(26005)(6246003)(7736002)(486006)(446003)(39060400002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:TU4PR8401MB0878; H:localhost;
	FPR:; SPF:None; LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: hpe.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtUVTRQUjg0MDFNQjA4Nzg7MjM6QVkyUmdUN0p3eFZjSDJaWWM5UHJBRytw?=
	=?utf-8?B?bHJJZDZQUVRTOVFORU91blR2aWdpa2NrOUZVMzZiQXZ2S1g3ajdYT1R0WXpn?=
	=?utf-8?B?dmhlVjFzdTJCMkQ0cmcraXRKY3d0UjZObHg0K2ZEK0ZKMUphNEwwbDB2RUlI?=
	=?utf-8?B?MXUxSGpnbnN5MjV4R3FJSm5xakNneGNsQ25vRWhoa2ljUFVTVk84RDkxZ2tK?=
	=?utf-8?B?UVBQZ2R6MXgrTXVzV2xzbW9Rb0ViQ05PWG1iRFJ6VC84NUdLQkRQUTF6UDlt?=
	=?utf-8?B?MDlyNU4vcTVyM1FMSjhiM0VoZm1wM2YxVGV1NERFVlk5bHQrYS9EZnRPRzhr?=
	=?utf-8?B?Z0FMMlh4NTB1Ny8rTHdVbExWSkZBNkR2OThpQ1VsdU5wWTJ1NTErSGFTUEh6?=
	=?utf-8?B?dlF4dlpMbzhxeU1hc281cDJCNGVEa1NtUEtSSFBveVhzeGZ4TGYxcGpFSXpE?=
	=?utf-8?B?TTIvdG1kZVRKN3FpZlY0VGZxRkJOVEhXWXVCUVRpaUEvak9MbUZad1VWZnNB?=
	=?utf-8?B?T3JZdGZKODhSZmxQYWVoVExEZW1sZnhoZGFmZ1l1M0ZsN2RLS05SWmpybzdP?=
	=?utf-8?B?Qnlqa0FjRnN1N0U5d1NEWk9HVFU4cWtMTjJNZk5JVkwzNi8xWGlweXJmK3ln?=
	=?utf-8?B?OTJkQWZiZ2JMWDFWcmlzdFN2K09rOFc5L28wT05UWHp4R1BMaW90YVhmZVVU?=
	=?utf-8?B?U0cvZW9LMUFSaUdNa1hjS1Y5NWl1NzVOM2E4ckNlYVVvNnJrL2RSbHVsV0xK?=
	=?utf-8?B?dlZYVzJ3YW5DdjZZVS9welJnK3BPMUR0QTM0clZaNTRlNE96TFdkWnFOTWxz?=
	=?utf-8?B?am9ncWxHeThDTmNvQzVqV2NWaVBvdHdUOHd2Zm10Wm1KbjRQeFJDMmphcmg2?=
	=?utf-8?B?dmd1NkN0QXRkd3RPWGcvV01lVkd2QjB3czhLT3FYbDUxSS9vWm82OEFqT3d0?=
	=?utf-8?B?d3N1VE11RWd4dWZPNXVMWENRNDQxdXhReEFINnI3bmV0bFN0dys4emFpWWFv?=
	=?utf-8?B?N1RUN0VKMTZERnFBcVhwNmxycGp5cDdyUDd2dXJGeWR4aXBtc2o4YWlhUjdp?=
	=?utf-8?B?U1pTcUNldFA1ZWx1S2dJeEVnaGVYNWU1VDNuY0MwcUxRUG1ZVm9VTzZmRDNa?=
	=?utf-8?B?SWYyY1ZmMkpZaXV4Z0dIYmpUMFdWOFhEZWU1Zm5ZbEhvNVBhR1hmUDhNS2Er?=
	=?utf-8?B?VjZyTkZsbWVUZUErT21aSkI4YTk3WUNXaE5SQ3BRdHFOTnJ0QlQvVURRQjdy?=
	=?utf-8?B?REhBdC95bGtVa0htTW5NVXNnZitjZFZWSTdRdXpSdDZVbnlCRDhvalM0ekt3?=
	=?utf-8?B?bWc1Z3Q3a0JobkVaaTJLazlDWUVVeERURHR2T1Fmb2tIalQ5RlM0Q2g1bHBv?=
	=?utf-8?B?WWhTUER4LytYMkcwTys5clZNdlN3MWxhRUhMem8xc2oxWitLeG5HZUxXdCt5?=
	=?utf-8?B?eUt2TmpCdkovTWxReTUrRkViYnJzN1ErMFFINkpEVlduNVB0ZWxpSHlYZThj?=
	=?utf-8?B?TU1Ra0FFN1hDbjNQRDJ4RVNDWjJHWHc2MVdnWGZjSnhlMjBZWUxqUUR4MWZa?=
	=?utf-8?B?bWxBUEJnN29UTE1nVnlvT1BKSlplMFZZVEN2aWI1c3MrdGdxTUlhTHZWRjRU?=
	=?utf-8?B?THdpWjlGZGMvaEhYa1VyNWZVb0kwN0pRbUh5MHFNbTB1aWZUdy9XUzdadnNW?=
	=?utf-8?B?a2hsNHRPL2tNZXIzRDJuTW5yZ0t4VnBhK2ZEaXNqWUZ3K2RZZDk0WjQ2L0h6?=
	=?utf-8?B?a0lDbjdoblpLYVNMNldpRUFjNFhGQ2hUdmw3RHlyN1dJVG95Q3N5V0JKTXVP?=
	=?utf-8?Q?WVyHcMcIddYTaRZ?=
X-Microsoft-Antispam-Message-Info: bT9N7YGSIFfdRthzkYYPf7YKa0T33g2XRvMQNMNdIeo1hSqzAylbr0neujOJWaQFa1odeXJwXnSZsFws0aDHkcmdzcV9mNAxAN6zejk9oc00+75iGvQIY0GyR3U8fnuP1oiD/7aVzlnNR4p5qiawJvrkFQp54MiM8K98auVAMcg9fDfhGsoadiFvxnCVJgjrSzim434HLdXVa7ZLDsBRqabUnZgH+KG9/STlI8Bg9gNUavXz8sWD/RvumOQk/u9FA2RETILBNrHJFCrCHD5aQSLSBOZdEIrsfmfwidEWXEDavmn3MNVfqEjMZxb6fhsXSX8zaxgx1R49DTDAQcaXdDDrlaiPNPex2FzBcKQcM+k=
X-Microsoft-Exchange-Diagnostics: 1; TU4PR8401MB0878;
	6:QHyC28XfnsYNcTg/JVruGMSv41L3ewaWBknMOdoC7lzkbID/N2wGPyZTVDoo2mpnjM/qWQViUp6bGFv+pxb9GYPeR+xqVuxdFJ1SN5eA7vAhbfG9JjDZjSIUUuKzALyGrQns3tGjBbkhHhIiCz/Em7s8X8ZMlnyjQgXoSciXnhkUTg0hM5joY7L8TAKG6aBvKUrU3NJRq3hNBRZtYFoOLE4Exjg8uugTGPRLETec2EHbewdAJx5wjw/OAUWgqzGBMyV/E6G2t3urDqgeziObb45IQiZ4+WZ9keoK6FgBpp41e0JTatN+bq+qUWYfMRTPsJb6bM2EE5vDS17mfPrfSVTpgaEwBCSoMlKcnRoKQ4Zf/zqCxO+NgeMUm8/HbaqoYiW7M/Se5eUEKvFOMqdCiuxj5bcIm0loeX2S+YX/Xm8eb9akozzIj6TNbMk8V9gIjqoFJjvbgC54Y9cJKU4/Qg==;
	5:cnqOK0ha6GoT6M5qyv5ah8239b2AOdlAvpGqwZGQ56qZrX1HeFmAAtLq3uFXqtx1HvRrCv2GbeMylpkqJnzy/UOs6yOLnfGEBoURhpbZF/c2JodCHoPGDk5a3+CSgEDrxcxjEP99/Wkg4+1oM7U68Rn6401Z6PZB8ts6QToTSNU=;
	24:pPIeBBLTMjGkjK2CySLU7TI2dDqApgVUJJ/rFwp+LcI7escV8hL8mR0Gj8bTdhSzigZnJjMpwD1/4zs+lS3l2/1SMrhDUg7GjO/jtMWjmjY=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; TU4PR8401MB0878;
	7:ubBPjzn5DVclbZoRdZu0FLQCkmFwqazy9IN1DJ10LoiGmRrMA8lZAmgVT+gTW25YROccAKaLB5pci64mj3f4FOyki0t2a/KOTLsLhmPX+W9PEwrpQfLpLOHy0YS0nFSVL0/Jg5w9moqXHCl2y6X6GuCtyvwXmRhSEt5keSMscaQkdlk6zBIk7os0dMrwm53IgQQXnQRDQSqHenvQTfmP27j7vbFyAJbcdGGD6tI3ZSLvZNHsYWkiUnJD1/LcBH3j
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jul 2018 12:43:16.6719 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c7d51d27-1dd9-48c0-e742-08d5e5998b26
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TU4PR8401MB0878
X-OriginatorOrg: hpe.com
Cc: yocto@yoctoproject.org
Subject: Re: Keeping and modifying Source code in Yocto
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
X-List-Received-Date: Mon, 09 Jul 2018 12:51:38 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Fri, Jul 06, 2018 at 09:11:35PM +0200, Ulf Samuelsson wrote:

>In my current project we have a simplified version in a 
>”component.bbclass”. It relies on a variable COMPONENT_DIR 
>defined in our local.conf.
>
>A recipe located in ”recipe-xxxx/<package>/<package>_$PV.bb” doing
>
>inherit component
>
>will find its source code in $COMPONENT_DIR/<package>, making 
>the recipe simpler than that of the externalsrc bbclass. No need 
>for SRC_URI statements.

You mean you set S to $COMPONENT_DIR/<package>?

If there's no SRC_URI, does fetch run? If not, how does it detect 
that the source code changed?

Marcelo

