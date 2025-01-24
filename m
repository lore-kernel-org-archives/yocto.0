Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4696CC02181
	for <webhook@archiver.kernel.org>; Fri, 24 Jan 2025 10:15:12 +0000 (UTC)
Received: from DU2PR03CU002.outbound.protection.outlook.com (DU2PR03CU002.outbound.protection.outlook.com [52.101.66.57])
 by mx.groups.io with SMTP id smtpd.web11.8648.1737713700888657802
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Jan 2025 02:15:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=keuEbIHa;
 spf=pass (domain: cherry.de, ip: 52.101.66.57, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=daajq++m8px+s2IYXYjy4NUUhwB1N4iddtf9CLgj/oLOvykIGzJC4FplaerqOBiCRGI6mjHbfDldKxauJo0La5RKzBB9XA6fSBj90Ed3C29s58O1BTFIS5m2vjzgMq8BTCfRGG1vVPu9nMNPPzrFVN8+3flKDyDydrrt9HojjfeVE7ssHTccPxiUrG4CF306Z9jkAf9brPiCrtavQBgWOeMXoG4gNZrCirg8SOOoeH+L9zkpmQpXjbMEA4WbU/bF1IO3WpNeSDd0XHdEcGH35Xfl/zFB3bOYQKEB8x4UeNib9dE3+5TiAQxEPqxgY0POFyI7h0KeQBm37xad09PZYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YKO1Qltay5IdbZff4nm9cxQ2+FdBzTrNgVJcTF4ryws=;
 b=OJf7CWDB31L5g0O9GYh/aMBFHHP3IcNoo6kzbR8WhTz+fRJmvqEIONgcjUsJdzwcLcrjwPuMfAKFYKv/8yGQ2uLmZPOIolgslMc34v7IJcr2LYHwAt/pZKLB6vSKRoFC5krSyEFXdaszdpyDto2cg8hf5jL9bpaVexEF468GtzfGyq/anuvYPzPH5M+qpDEyj4t+Qtw+qCgHnt02duPqKAvpzKowWVYSO+LJ1HOeVXpQaQ7jJba7p6qGw7UOjwMkkVnWPBi6SXNzjiuQ1n3F5njPeN+WyYSlN75evh9t/mAS4YrRtJCdLnblfr4ikQRbtpfEE1YjPdXAGthBwvQHXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YKO1Qltay5IdbZff4nm9cxQ2+FdBzTrNgVJcTF4ryws=;
 b=keuEbIHayYxheUhLbCc3a2vtxK2SHb4Vm6cxpAvcTGoCy8gdwz1uZdNz4T3ZMloSRRdkrIwTghF722DXxTFBPM8kxlEsNcxyGI9xrSt3LFRVNhNMYd8gXQwmbDnkOzGnhWVcxXfra68xLltk/QDroTZ0u8WpWTGJftrT9dfNNFw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by DB8PR04MB7100.eurprd04.prod.outlook.com (2603:10a6:10:127::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.16; Fri, 24 Jan
 2025 10:14:57 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%3]) with mapi id 15.20.8377.009; Fri, 24 Jan 2025
 10:14:57 +0000
Message-ID: <05bd87e8-d7ac-4764-a252-b6efedeb0ae6@cherry.de>
Date: Fri, 24 Jan 2025 11:14:55 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-rockchip] rk3328 loader for emmc flashing
To: yocto@lists.yoctoproject.org, marek.belisko@gmail.com
References: <CAAfyv37oMLcEqExL57bReJcF_h56=fv9_8RFrvNONVM=gX416A@mail.gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <CAAfyv37oMLcEqExL57bReJcF_h56=fv9_8RFrvNONVM=gX416A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1P191CA0003.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:800:1ba::7) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|DB8PR04MB7100:EE_
X-MS-Office365-Filtering-Correlation-Id: 35d5b519-e120-4122-e263-08dd3c5ff405
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|10070799003|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?RU1yOWNSa3QySmo1cUw1ZW9TZUFmZkNZSU1CZ0tCaTBGUy9BRmFvbitVL0xj?=
 =?utf-8?B?azBIMkg3OXRFdlZicWo1M2VjOHhHY1RWdG9jZXY2UFd2d2M3ZFkwL2R5M2p1?=
 =?utf-8?B?bWtHL2pXeU8vVkhtZ29meFcvOW1TNzQyRVRmaFFwVUxlZG0wam1qSE5CVnZj?=
 =?utf-8?B?ZWQ1MkpoRXRtbS9CTDFuelcrVmtaOVVlZWFKRkNzZmhKTW0rVkVtSUlaeC9k?=
 =?utf-8?B?Z1N0LzJVTnBEWU8zbE9MOWRtbTE0dmh1eGw5Y2FvaW8yWGFEY0xPK2luY0Ry?=
 =?utf-8?B?RlNsbUFDWk16MHd0YVBFd1Q5SnZQejBzZDk5WGNTVjR4L29zUitRaEl3SExv?=
 =?utf-8?B?SE10dVZkLy96blN4TzhKbFc3Z01oOVFrdjFsRnRrUDlRZDhyeEFaQ1U3dk1S?=
 =?utf-8?B?MkwwTkdsR1Q4Ty9YTUZRQitBMUUzVHFzdjZseEVsU2VVK0kzTlk0cjFaYzlk?=
 =?utf-8?B?ckc4SzExNFphQjlYZTIyT2ZyNERidnlsblg5bXRORFVqSEtMSytoaEZjcmla?=
 =?utf-8?B?UmVVdkRKME9yMFhVZWo0SCtGUy9zUUxudGkwZytZN01IME8rbmYyWCsxc1pi?=
 =?utf-8?B?Wm1ZZEljVDdXUW9LUWRIYVdSNWZId2cydW96SUxzbFpWNHE3d2dIOEVXQlhM?=
 =?utf-8?B?U0UyeEtzbm9WM3MvY3UwS2tpbktjTTNxTCtSVFhtU0JLRUVrd3Z0VFI1bk5m?=
 =?utf-8?B?OUdqY1BrSEx0ZDRSSHY5eGpWT1lTM3NFSFpuSGxBNE9LU2tzRUQvODJxbGtG?=
 =?utf-8?B?ay82eWVyYUZucUdycDlhNDBCalJuU2xOMnZ5VmdaOTVzSEV6TlpLaExhRVFl?=
 =?utf-8?B?NzlrZjRDQXVPZlRCMW9LcU81dndsVDZ5MXVXcUZ3QU9xU3NLa0IycU1hQlZ3?=
 =?utf-8?B?d1dUZndqbmZXRi9JZDA3UkxLNVlOZDdJanBCcFl3YUtvYzlsZmloQ1dpZHQ4?=
 =?utf-8?B?Zm9tL3M4RHM3NnZwbHFZZjJHN3p3eGZzYlVKdGtBemlHMm9rbEZ2NmpYN0k0?=
 =?utf-8?B?bG10Qmxhc291UlZ5a3RlRGVGS3Exc3doQ2k4RkxWZHpIRjRYbmEvZDQzTGd2?=
 =?utf-8?B?b1FQSlg0LzV5Mi9Ob3h4Wjd2WFRPaVMwV1VaeC8vc25xcVV2VTZ2N2JKZ1FL?=
 =?utf-8?B?cUpYT0U4MC9YQlJ5T0N5ajhlRS9zemZMR2FqOFFoQVBLTURiZ3YweUQzeUJo?=
 =?utf-8?B?dVZxd2NOSTVGeFBPSC9xVTJPbllGZThMb29pTkxyeXhVSmV4UEp1bmRldWhy?=
 =?utf-8?B?NWR6cjFsaDVkekdXSHNIZGIwQ05UTmVsS3EwZnFRYnFuYzc3N1hIbm1VTXJu?=
 =?utf-8?B?MUZ0UEE3TUF3MkpnNEEyc2k0V3FRMkhhdEtNc0JjRkt3MWJlRDl5d0Q5cytY?=
 =?utf-8?B?NVh5eU1sS2toMkF2VWU0QkUralpnNVRGQmZoSk9RaXd4TDNvZ3EwNklDdWo5?=
 =?utf-8?B?bGZmYXpoRmpyYTgyVVVqYXVNMlN4UWxmTk5BVkJuZHdTZ0NOWE9waVVEem1p?=
 =?utf-8?B?aTZvTlRJSGxha3J0R2xRV2U2QWtqUUxRcDZRN0VWL283alhYQURHNklpbVpG?=
 =?utf-8?B?QzJKMUY1eGpUcEI5UHNtK29WRTFZb0pMUEtORTNxQ1ozMDFhNm9Nc1p6bW9W?=
 =?utf-8?B?TFVaZVluOE82V2FubUtwaVhVTkl1QktVUGRsbldyRk50aHpuRnAzYzcwVzZU?=
 =?utf-8?B?UmRhc3pWV040UUp5VXVmZWxwalF2V2ZZeXl1V1RaZjNLUXJxOG9lZjBJRmdK?=
 =?utf-8?B?YXpodVFjQnc0NjFtcnJZdXlwM0xQck9WNlRIdTFKTHF1UTRkV3MyZHRJTGRm?=
 =?utf-8?B?cXZBeXZYVHVCT09VV2xYZz09?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(10070799003)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VEF2THJKYWkvV2h2a1dkZGNSWElnZE5mSi9URjRITDZuWjVOd3RQcTZwd0ht?=
 =?utf-8?B?VTBYTWp4NjNxSi9sOHBDYXJxbHJxN0VhbHRSZ1pvVytxTWlEMzREaHJnN0Vu?=
 =?utf-8?B?QnpaelN5NUJPMnhSTUl6NXpFU3RBQVcxM1pCMnE1Qk1TYjlCRGtFMnozbDdW?=
 =?utf-8?B?Sm9iN2tjMG9nWS8zeUtPeHJzTEVYcVdsK1p3bTAwdXhIS3U4SmRiSkxWeXBv?=
 =?utf-8?B?VmlWOFBjZEdNclpmUjR0OVUwY0tBMG4ydTZpSlVHM0xaR0VEeXU1T3FtOExO?=
 =?utf-8?B?dllJbGYwYTJTNDB5UW5iM3FneVdDSFNOT3k0WURLWFhEdHlGVjBWYXRDeDRE?=
 =?utf-8?B?bUNHa0tPdmd1T3NwVEFFWEhrNENDblo2WjUwekQ1VU9vTFFIZWdRRlhuMTZh?=
 =?utf-8?B?UnFNZ1ZscUdrdER2c1oyaDFtRkZ2SzMxdXJBN1pmRGJKVi9mU0NGVDdlL1d3?=
 =?utf-8?B?UlY0L21PSWxzdCs0clgzT1h2em9KUUt3WDRQRVhpQUVGOTU3UW1ZcVpQT0tH?=
 =?utf-8?B?OUFDWk1PUkZNd3kwTW9xRVRvUGtSbnZtN0tFdkxCQmN6YlpSWHVyU0wxN3Nm?=
 =?utf-8?B?YmlRRUlOZFJJZmFEWVAremdUWk1KY0czNlE1MXBxK2orWGVlWk9naE9SZnRa?=
 =?utf-8?B?NEVHTzVuaGkybWJndXdjZWtrS3hDK2FVcFJvc3ZOSVRncC8yRFBEdWpCK29h?=
 =?utf-8?B?NlpJZ2ViUWk5U0xDRFpZSHBkMklscGl5dDR5OUVUN0lwVjdRWkptUlkrZnBz?=
 =?utf-8?B?UlVSWkpIdjk3WjIySlE4ZXVOWXd4THlMcnRQM3IreVhyV3ZGMjA5UGliREtk?=
 =?utf-8?B?S04xV3pGenNWWVJWM2JrZkcyWTlDSFN5RzJMYTRkTWF5V2MydnUwT1FLM0lz?=
 =?utf-8?B?RGZxS3FQaDkzV3pSWEJiMkxWU0N5MTJQazNPOHh4NGZMSHFZWjN2b05Td2lW?=
 =?utf-8?B?VHh0enZRamxUekVMMVQzRE5wN1J6c3FhakpHUTl6c1orblBFdTZ6cWVPcEZ1?=
 =?utf-8?B?dEdGZEhoNjhTZjFjMHNubHlSdlJla3lsUzFFVnl2ZVFrV2ZLNHZaQW13U1I3?=
 =?utf-8?B?TzBIUDN5d09HNU11VVpvQTJLM1JPcHdGekVOeWEzbWJ0d0xvY3BXVkVYNHhr?=
 =?utf-8?B?VjdBdk52eHh3RmxRSGczalI1b1lIeCtQb1lHc01aM3IwV0x1NnB3Y3dFYm04?=
 =?utf-8?B?VndJeUZCa2lKSm53RUFvVFRPT3B5cnVuUVFScTcyR0t6Qm1hbnpraHE4N3Yr?=
 =?utf-8?B?SDZSZU1FaitZaDhLTnZGYTNXdU1MTDNPNnl0a2hTTmtDa3VJSExhTHJzeTA2?=
 =?utf-8?B?TjBTRUYwSlFIeGhMR0dqVml0NUxLdEVEcVNTZlJDbVF1OE44NGZTRzBWZnRC?=
 =?utf-8?B?R2toaGI2STU2UGdHeUVMbFNJM3FKNDVSYUZmZE9hNG41c3BoY1ZjRXE3RkZJ?=
 =?utf-8?B?QnRZM3pWcSs0eGNNNTRuTWhRYkVDTmpNaGd2amZnYnhSQ203d3o0NjJlM09m?=
 =?utf-8?B?Wm5JVVhkTWRzSTU1ZXppckpMS0dzV25EdXRxMmxSaGhjTVdudGd0NjFNSnBC?=
 =?utf-8?B?VnVicDI0bFlnbUMzaGR5aWlXaUt6dDR3K1VUMVJBNnlNZHptR2ZOYkR5WnpB?=
 =?utf-8?B?RENqNitnM3djeGh0VlVCWGFma21iZTAzTE8vNzhnYWNzb2xVcFhXWFhma0dI?=
 =?utf-8?B?RkNoQ2djeXJSdXhwOXdCYVF5RzVtNW9Sd1FsbDY0SGhXQ2hJYkhCckNpNVFV?=
 =?utf-8?B?Sjh0WXNsckRXY09yRTkzRndZTFE5TVJGR25NaGViK21WZVdyRGg2V3hyellD?=
 =?utf-8?B?Mm1oYlFJUE5oa05HUkYyVzlxMm1IN2dXcVlDcGVycVlEZU41SVhCckdRQkNP?=
 =?utf-8?B?RVNnYjNWTTIwSlNaNEJkWTYyK0plT2FPUG5PUUZzRjdLODAyTnhpQTFFNlRq?=
 =?utf-8?B?RHpia1lFNFp0b1oxWHovSy91MTl1VVBUTWZObHptRUtCcjhraFJ4R3J1WDFW?=
 =?utf-8?B?VndSTzFoU09DOWw0REZ0QS9la2daZUQrSTRiUkxQNS9KcWpIais1Yi9SRy85?=
 =?utf-8?B?d1psNXRqN3locG1RSXhJcDQreWt5RTEyb2NPZk9vZFdUS0RZTXpuMXg0NVQ4?=
 =?utf-8?B?S0VHMkZWNUdhWHVFRnBwVVV5amFCVlQveTVuM0xYMFU5cFpPYW8rUHVLS2tH?=
 =?utf-8?Q?M9qEf1EkVPNqZ038Fd26NBo=3D?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 35d5b519-e120-4122-e263-08dd3c5ff405
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2025 10:14:57.4986
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K9SNZc6GC0yUiJOxcPctQtP57n/fj8dVfz0bisLSQ5RVfylWtkPfyTkoqvug4k7qDYuKuC7WpFNODNpOIryj4g+X6Ur9DMNCF0J4RmnaM9I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB7100
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Jan 2025 10:15:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64623

Hi Marek,

On 1/24/25 11:04 AM, Marek Belisko via lists.yoctoproject.org wrote:
> Hello,
> 
> I'm trying to add support for rk3328-evb. I've added a machine and built a
> minimal image which I would like to flash to emmc. For flashing I'm usually
> using rkdeveloptool which download some binary blok (loader) and then can
> flash wic image (at least I'm doing that for radxa boards). Does anybody
> have an idea where I can find such loader pls? I've tried this :
> https://xdaforums.com/attachments/for-rk3328-devices-rar.5168743/ but none
> of them works (it prints: Opening loader failed, exiting download boot!).
> I've tried to use MiniLoaderAll.bin from the vendor but this one just
> prints some garbage to the serial port and I cannot download wic after that.
> 

I do not have any RK3328 board available, but the instructions so far 
are the same for RK3399, PX30 and RK3588 (the boards I do have access to).

https://github.com/rockchip-linux/rkbin
tools/boot_merger RKBOOT/RK3328MINIALL.ini

This will generate an rk3328_loader_v1.21.250.bin file at the root of 
rkbin directory. Use that as argument for `rkdeveloptool db` command.

If your board is using a different baudrate or console mux/controller, 
you can modify its configuration for the DDR bin blob (first stage 
bootloader contained in rk3328_loader_*.bin) by editing 
tools/ddrbin_param.txt and then calling tools/ddrbin_tool.py rk3328 on 
bin/rk33/rk3328_ddr_*.bin. Since there are two, you need to know which 
one to edit. Reading RKBOOT/RK3328MINIALL.ini, the 333MHz one is used.

FYI, you can also replace rkdeveloptool with rockusb from Collabora, 
available here: 
https://github.com/collabora/rockchiprs/tree/main/rockusb/examples What 
I like about it is that it handles bmap files for flashing on the eMMC :)

Cheers,
Quentin

