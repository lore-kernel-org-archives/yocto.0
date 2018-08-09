Return-Path: <Michal.Vokac@ysoft.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D48C7E00B5E; Thu,  9 Aug 2018 13:13:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FROM_EXCESS_BASE64, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.1.86 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
X-Greylist: delayed 7201 seconds by postgrey-1.32 at yocto-www;
	Thu, 09 Aug 2018 13:13:45 PDT
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
	(mail-ve1eur01on0086.outbound.protection.outlook.com [104.47.1.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57009E009AC
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2018 13:13:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ysoft.com; s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=5JXUugn2z7V8zWU2zj2NF2LZl/vXZlpfdX+VRENBAKc=;
	b=rFdxJgN8g9cRTFPIDYZH5TepQyAksnV+8FsKRWE49JZSNwAP9lKgQfd7tVeqIt5CERNbSf/IFcChntxtlj6v6bbm+GhDUpHioHFe7Xyl46P0mz8ASJn2t9M8/SnmzyD+N8WGnOSZ5ZPXjrbkV7neTUIyaf+A8ztXULGwXyL9Oek=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=Michal.Vokac@ysoft.com; 
Received: from [10.1.8.111] (89.24.100.190) by
	DB7PR04MB4665.eurprd04.prod.outlook.com (2603:10a6:5:37::11) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1017.15; Thu, 9 Aug 2018 08:41:19 +0000
To: "Srinivasan, Raja" <rsrinivasan@abiomed.com>
References: <eac20ac1c8474178a386d580c971227b@USDVREX02.abiomed.com>
From: =?UTF-8?B?TWljaGFsIFZva8OhxI0=?= <michal.vokac@ysoft.com>
Message-ID: <ab917312-b40a-1943-6cfe-8a0ec3e23624@ysoft.com>
Date: Thu, 9 Aug 2018 10:41:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <eac20ac1c8474178a386d580c971227b@USDVREX02.abiomed.com>
X-Originating-IP: [89.24.100.190]
X-ClientProxiedBy: AM0PR06CA0025.eurprd06.prod.outlook.com
	(2603:10a6:208:ab::38) To DB7PR04MB4665.eurprd04.prod.outlook.com
	(2603:10a6:5:37::11)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a4411e1a-c542-4ee7-55e1-08d5fdd3e141
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989117)(5600074)(711020)(4534165)(4627221)(201703031133081)(201702281549075)(8990107)(2017052603328)(7153060)(7193020);
	SRVR:DB7PR04MB4665; 
X-Microsoft-Exchange-Diagnostics: 1; DB7PR04MB4665;
	3:JO3KhlDnV0TZS5bRJWSf9wnqHXE+TQiqF6kW1IpfVoQqxRf6uZ7cflYIouTt2tc/VGg5Qp0ePXTp0/wCf3CIKpAsJ16Ul9ti8hkGK8j788TyPBE3v39Trngz/pvUtQbQWPSoRRIQvhLX+SyyeO3tbfrBUF8EO+z//C2yKe6Y1qopkFLARfF84Pw61Sbhst1Jpy0z0FB9uQYVEpifVRRCMV08WtYuESYPD32pvsfq6ECjqL4Q8s4arkiqfVuFTyvP;
	25:1VmrJog7FzXz9d7tmegVkccUHgbCX61311KwtT6PHbby5l18noW7bxSqbS4D4Wfrz7xgVYyr1cXJxgNk92LJFqNZaCbEddopmEZNA2nbeHb5rZVzLppRhR6ip4XezxEkmU0cg2OO9xqSE/4fKnZa1U62yLCgx/tMUh1C75SoLqzaHE+buSRbBJs4RTloe8zWBqa4mZqvKO4VNJagyDDYnIjk2YofAQKDHKzmYClgyphyhyGQEjssb+NAgx/jLw+va2wyCyAcD4d69EZpqWrSQt8dVUG2D0RWDvfKuPsx7a9f6s1bujKWx4empWYewzgXtwfuk7iZ/tFTYhh5qCDe/A==;
	31:Mu+8R+AiH0og/iABo4I9kAlfsVZi8VXZAeKVuX2oLqPjaWSPAm2deP/Ti2moPIwghxbnHjiOtysT/NzlqTm/Pk37Ki6RHmQbAzkymLaLt1eGl3Tl4911VNklI2WOvMfWBvE/tGL5df6Orf+EsODASTsN/db9KyVCVNfXWlwe1DXib4jFEZlcZy+4ZFyxNbP+70HSPeuE4VVs0zXqXBwGYNSK+bKdofh6WiAWT03rgX4=
X-MS-TrafficTypeDiagnostic: DB7PR04MB4665:
X-Microsoft-Exchange-Diagnostics: 1; DB7PR04MB4665;
	20:p/fF7Xl0zz4my2EyQ9H/rTZ2eAOQAUOVAVdv5mfyQ8hwBdJPoZf8wOH/+a4wuuAY0Xak2fZD2yyyp6wwlDr0VQUoKMUOYOtQa9KmC36YgbyGt/9jZGXMrZqrLO7Rqcwu/jRlCGF3wphaBiIP6AYvegj++Tg/mFbZKY/G1ecWqMq259pzfGaKGGvRuI1eEQgkEWAcGAOuTiipmPe4iF/CBh0tOBxLvnm2CkgIIxY61ko7iuEkWLAnLahi92+79DgW;
	4:/8Br2b5X0CCHS7EoQosHjOAv56Ddy1N+5Nyo2hqBB1lsXJppChMNUmTM+PmbG6VJEfbfaLftsIouu5HvyC/94VmPna7lBfj7VIUY0zZtSYawSNakty9VRCwqsyFrp8zOqv+/uqLZH/n4J+roqqCpiTlnHWjYOB6PrmkrnSVfCUnRsqp9n2QGJrPBtMEEddopDpyPvt3NoTStufjrWsqGUsX63fbu06MM5Xjbb8inKs+e3lD9R6Q39ovoVLVTTfzDCIpIYHvOrphSPntCgMnyleQlYUpskFnGd1v84g5aZxPxf5Uh1WLIg0EmuK4JAZu4
X-Microsoft-Antispam-PRVS: <DB7PR04MB46650FBA38B31A78D72571919E250@DB7PR04MB4665.eurprd04.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(192374486261705);
X-MS-Exchange-SenderADCheck: 1
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(3231311)(944501410)(52105095)(10201501046)(3002001)(93006095)(93001095)(149027)(150027)(6041310)(20161123564045)(20161123562045)(20161123560045)(20161123558120)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(6072148)(201708071742011)(7699016);
	SRVR:DB7PR04MB4665; BCL:0; PCL:0; RULEID:; SRVR:DB7PR04MB4665; 
X-Forefront-PRVS: 0759F7A50A
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009020)(6049001)(396003)(39850400004)(366004)(136003)(346002)(376002)(189003)(199004)(129404003)(77096007)(26005)(16526019)(25786009)(4326008)(6246003)(186003)(3846002)(6116002)(230700001)(53936002)(11346002)(31686004)(106356001)(6486002)(105586002)(446003)(52116002)(229853002)(76176011)(6916009)(386003)(2486003)(52146003)(23676004)(2906002)(53546011)(72206003)(85182001)(97736004)(65826007)(478600001)(64126003)(81166006)(81156014)(8676002)(36756003)(31696002)(476003)(956004)(2616005)(486006)(58126008)(68736007)(86362001)(67846002)(5660300001)(305945005)(316002)(7736002)(16576012)(50466002)(8936002)(47776003)(65956001)(66066001)(65806001)(14444005);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4665; H:[10.1.8.111];
	FPR:; SPF:None; LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: ysoft.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtEQjdQUjA0TUI0NjY1OzIzOjA3YlBsc1ZDSjJhcDRDTnFTVVN5K0hDSlZU?=
	=?utf-8?B?ZENHS2FSYitzN09mSUE2c1lrYUJqSjl2ZzQ4M1hwdjRMWUNLUDFmVHRTYVdp?=
	=?utf-8?B?aHVNR3hwZTkybnVsRWtQS2hJMTdpVDdKdUJ0YlUyQ2YrYVdxR2xINUZPV09L?=
	=?utf-8?B?MmtMY3RpR2RiZjFFcjhDNzNtQ1pJNHRuT2dYR1dGZkVYR2RZNW11TmRCbGpB?=
	=?utf-8?B?dmpRbkNPdVZNUWxDdFZWZmkvc3k1dmttdVJTaUE3NXFqb1BGaFZ5eXJXdTg0?=
	=?utf-8?B?dWk1Q1liM0JZSElyaUNCTnhyZTdQK09TUTMzV25meStYWUdGdmQ4K1JtazBl?=
	=?utf-8?B?ZFhOcDlESDhITFNWWkt4TmVWa2dDc29mU2tVWGc1Q0Y1VGlabWM0d1lWTUs1?=
	=?utf-8?B?NHdCU0UrVktRMkQ0WmphMEVnM2hFVEpPaXJYY0RXeElUT1JYV2dTeUNqT3ZZ?=
	=?utf-8?B?SjdTd2pHNGZwYWlwRmVrNHBQdVNhSVhIU0RNbmlDVzRycExKOUR3RWRVZ2sy?=
	=?utf-8?B?b2hFN04rSHpEcXBBOVg4WU5EM3VwVUw3RWNINENLMnJuWHd2YlRxYVV4azh2?=
	=?utf-8?B?VWo5Ym95eVRiYldtTVYxa05OeFdlaDVPZWdoa1NyZmVIU0JMc1E5REVkSm1B?=
	=?utf-8?B?MjJ4Y1JZVTBlMWdKNTJQTldLckVmdUdFazI0c2tNTldsZzcxTUI5YS9qTkhl?=
	=?utf-8?B?TDFYZU1POEJ5WGpsS3pSbnJsRERvRXZDeDZvR2RvNTYwTS9nT1hOcTNCdFZ1?=
	=?utf-8?B?VzhFcWpRY3ZTV25QOU1qRXdsLzZWdm1YN3hIbnBYNzdERWNpUHZEbmFwbTNI?=
	=?utf-8?B?ZUFKSFFCU3cxQzVIMkFHa1BKWmE1dGFWNmJ3MVBsZ1Z2a2ZkeUw2UUIyUDRE?=
	=?utf-8?B?bkpaMk40Q0JEZXNad0dQbWEvUWtPeTdqa3FqS2ZNbG8vNjZwT2tWTGFJdVpU?=
	=?utf-8?B?NkNseGgzTHAwNlVYQTVYZ1RZZVVLdXNYNWs2U0l4Sjcycnp6VGU5K1dVdFFS?=
	=?utf-8?B?Ump0dVJ4ZktYM0lnNHhYZDRaL29NZTNlcDFwQ01HTERHM3ZqS0JrOGlydSsr?=
	=?utf-8?B?dXBkbXRYMkd6b1lGdEM2ejhqbEhObHdNVzFYSkF6ZWFQVjZXaXFpN2grNC84?=
	=?utf-8?B?b2syTk1iVk1iQmlXdzZwQUxVWHZlUlI2aFdqekMwTFlLc25wZmdOOEEwREt4?=
	=?utf-8?B?V3k1alBwcGl3TmkwaEJJZzZmQUNnUGZQN0dPY3E3Yzk2aENtRTlqS3NURWoy?=
	=?utf-8?B?MVV3UW5rNHQxMjNmNE9vVVMyNDE5NGl5SjBlaDdOdERROFRvLzFRWGV6ZHU3?=
	=?utf-8?B?UWNScXJ0Y2FCek4wRmgzYjdnZzU4dy95ZThnU2IvdGtmTG1HRnNBZHNOL1BY?=
	=?utf-8?B?bm5hMit1WnpOOXVoOFhNS09hWmloU3FVMWFURTNjUDZXaXE1KzYzbUFodnpo?=
	=?utf-8?B?YnNwbEhTQXhWZjR3Q0NTVXBXbHYyNklBbnJ0SWkrUTJ0VjFvd09lVVJzR1hK?=
	=?utf-8?B?RWNWUUlERElMWWhpbFAvcWhzVnNQNG9GMSt3bVl6YzhGS2pEcUpSMTkrUk5X?=
	=?utf-8?B?SkNrOWJEcVNrSlV1TjVxQnBkcVIyclFFa0Q0YTBJOWc3Sm9HRHBZUjRxL1Av?=
	=?utf-8?B?cDJIT0hnalVOREdaN1oxZzcxYmx5V01DSW9EWFViamN2TDBwZ2RiT1BqMzQy?=
	=?utf-8?B?SXA5VmdXUjF0WEEwM2daU0FVeTI4eGdLVXdFR2xmMy9YdkQ3bGh3Qi9kNUNj?=
	=?utf-8?B?M0JiQ29PdU9lVVMwSHR6M0o5L0NjRmQxZ3J0c2cwNUVuSlhpMHlLaFdzNWVt?=
	=?utf-8?B?dmxTcW9SYmJtdDVWNTNwR3Y2djdTZjRBTUltUkl5WlltclhQdFEvcFNqZFc5?=
	=?utf-8?B?TEJCZHlUK29uRVRlT01OY0hxdTZSb3ZzZFJKQmVzTjUzS2lCMjlsTE1Xc1Rt?=
	=?utf-8?B?ZjZpNkQ2Wk1MYzZ6RkMxd2ppMUNpV0h5YTIzUVBuT09MdkczWUZXZ1U5d3JL?=
	=?utf-8?B?bWx0ZHhjR0gvOVBTbkh4L3g1ZGE3eU55VkhHUT09?=
X-Microsoft-Antispam-Message-Info: 7DEABxwOh4n7CP2L47F3DTfa2B0UQhGJq30BLbOU2a6BPcEzRSwr3ITt82uEv7pZfoDShVa02siq3WnBt3uxHt9MRCQQuRa8RzkT6QvUIMgXRDbcd7oxgtXSXA6y7+E0zeUPy6ra5SjPDsqQYX84pqEcsHn1AnZ5TlA1kbShPCdM99OKItoGA4iF///OQZu1/SNcBqqAYvdi5BnIny4zOCtjFN7qBGnnYwRsAaN1TbL7FxRXkxyQfCT+pWhSEsPdibAySbCwC0xureaDWfkaiD6e3gBmBzXUqgG4oIdRDRjVbcHp0NvJeHe1c2TIn4teGLXHdJUo0C29UwHEad97xPQncpxbvY6EvVjUbcM+0sQ=
X-Microsoft-Exchange-Diagnostics: 1; DB7PR04MB4665;
	6:Knyz0N9kkweVzmi1uxhgC/dsG7Tj/FHLio85YY3FnsqVemRHMhIsvaCeuodDYzLgn8z2N61hBIaTXjbdxWdDNQQhygrQtFzf7YPyMT+4pSRHHpyedYBg87L92HHs7lLEoWQVpI1SRL9k9/pyf4PSHmKBipU7kmrwrXPc7t+gtzF7/uDu8i3ep/9jxnVRnm8CMxZjyJNUFFhU0PT3HBdzpNKpq2UCyAku4Y9/z1GRpQRWLPREq/8IXw/r5ysNOKqKyOzLSxhLEwmbVjwn6SiS5VyNscFUe3lH3R02J8kLO4V95EVKpiPCc4KfX4u6dCGlDxcZ5d/dWMPoGzIso28V2sLf6W6TtZvreix9XJRrLfNlmTNnxOXe+tkvF+efzyTX0zFtcqvA5Xa3GHHcXe3Hh2k3i2oT2bdN1wyCJP6hNBWmfe+xsEyYj5ma9aIiSfdJ72UgdM6sNr4aepCRZMgiog==;
	5:fztj+LcJEYp+0/3uQ0aXoSeh+W/MmNLwPPpC6NAc+1J34KZFUG9KK1r4zJpj/gagBFUckWUSJYOKgy4w99+kt6T88X1zE1LprX7TkCqw/JJQaejlRI4lyO2BWwqAekpozb+GUtzH/Hv800qQbvSM5ob1OHY1Kim0MJUWGYPFzGA=;
	7:uF/M65nVzJwv+kK8ZLUGeBhNAxv/fl4BTaS4iQmlyaWrAV9ibfGnd6ZOSCMNL2VBmRshUHDh1hyHFIX0RGWt3axjvmgI2X/i1A4Z5G3Vh+Q1GmG6wb88EL61BaWUX6i1FuHpXAj4J36s0lJwfHb8THVIoz/zNn5TqmPpRAx0XdC6TNEEjxqXS9SqOG4l0vijKdjoR/wkKdVfCYtcKJAhOW2Y8oS9UmwGuMK9olmQmclwjgLR+kdKPMds1J+7hSLP
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: ysoft.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Aug 2018 08:41:19.9874 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a4411e1a-c542-4ee7-55e1-08d5fdd3e141
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b5839965-430f-4be2-b282-d7a3149f2b37
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4665
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: uBoot, kernel and device tree files
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
X-List-Received-Date: Thu, 09 Aug 2018 20:13:47 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Srini,

On 8.8.2018 20:51, Srinivasan, Raja wrote:
> All
> 
> We are using rocko.on variscite var-som-mx6.
> 
> In order to increase the security of our system (during a system upgrade), we are looking to merge uImage (kernel image) and the device tree file into 1 file. Currently these are 2 different files and are worried that a file copy operation might get aborted.

I understand that what you want to achive by combining the files is
"relyability" and not "security". Those are totaly different things.

> My research so far indicates mkuboot can be used to merge these. but having trouble making this work.
> 
> Need some ideas.
> 
> Any pointers appreciated. srini

I am aware of at least two options to combine kernel images and device
tree files.

Option 1) Append DTB directly to the kernel image

This is the simplest option. Just use cat to concatenate the files
and enable the CONFIG_ARM_APPENDED_DTB kernel option.
Read the help for the option, it is quite informative.

In this case you do not need to change anything in your boot loader.
Just load and boot the combined image as usual and kernel will do
the rest.

Option 2) Use FIT images

I strongly recommend this option over the first one.
FIT images are something like containers that can contain multiple kernel
images, multiple device tree blobs, multiple initram file systems.
Part of the FIT image then describes what combinations of those files
can be used to boot.

If your concern is not just reliability but also security than FIT images
are also better. You can put hashes/signatures of all the files into the
description of the files and use the hashes in the bootloader to verify
the images (I never used that.)

In this option you need to change your boot command.

Hope this helps,
Michal

