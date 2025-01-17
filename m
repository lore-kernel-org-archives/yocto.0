Return-Path: <joerg.sommer@navimatix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0CB60C02185
	for <webhook@archiver.kernel.org>; Fri, 17 Jan 2025 10:04:38 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.92])
 by mx.groups.io with SMTP id smtpd.web10.7626.1737108275855073285
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Jan 2025 02:04:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@navimatix.de header.s=selector1 header.b=AY5B1VAn;
 spf=pass (domain: navimatix.de, ip: 40.107.20.92, mailfrom: joerg.sommer@navimatix.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fyqox10oeJ+hqMmbamew8iL4WefI368zCdUAPBfR9GyjZTmCR65IOQPrkvlyCP3LDTVypzScAI81L/+gugvg/4hkBPas65jxJnocRXNXgLggVyFe68spvy5UOmfiZhMwewtqeFHroLGF6FLf+i1hyUrFhn92v++7+SPjPBsBVc1EcwpW2uoLHbb2I1+mgnjrwjlGFwdbOd4f/IZphjzNg5u4YjshvjpPLix7MoHP9cEXQG3fKLuRz4QnvPvMNBCPVkOSdhVfYgEzclDsjGKGng963C0bme0jxKTB2lBXzt5XioqATuz+BlUnDV/ysyrevgsVAxuVnjmymrSsAQwrGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uNx9QmfzMGKY+7ZIEtZADvVKoO/XKwGmTcmbp7pPzec=;
 b=i8Wqm8ZDro1nnsxC2YkSWmVA+MXUV50C/wey8EpcGRpwS0LLlCyrzqJ7fcAZkCz5hcXEztCHsDZwApqKPgDUbvSDjx968AgJ9bTQ1vMyzm00QaOgV8ffFlGW6s6DLPnQSEG02/zoA9g4n/2mqqSyEBdmgaW566qBPFFtEAmgXt2MHCdpNGrKYo/j/CxWWfeypHjz/N6ufn35x9pXaGnWJ2Pd88YxCaYG8rDDa8YfQK9Y5cQYMGqBEPFmnS/N4AiCfp9N2Vp7dL/2AeR2npfjoBOLY12y7CR0hial+ABRDDx38+3Zvrp+/9mvu3fm+iPPkNi0HCijIecKjOGvcLRYNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=navimatix.de; dmarc=pass action=none header.from=navimatix.de;
 dkim=pass header.d=navimatix.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=navimatix.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uNx9QmfzMGKY+7ZIEtZADvVKoO/XKwGmTcmbp7pPzec=;
 b=AY5B1VAnyF/zUAxqkSkYlXs8uq/q123mXVPSSncEhoJIFjxPP37oBlrInamK1WpFrKRNu0OLkOQBDLFq+HwagpZE78dw5AKUzQ0NsbPLgPC1zA/6599jsNfPUiqOK5FtrBql9oPUVt+9XOXJVNY6nww0VoP3oyx98Xq7eAshzsE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=navimatix.de;
Received: from DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:2d4::5) by DU2PR01MB8006.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:272::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.16; Fri, 17 Jan
 2025 10:04:32 +0000
Received: from DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 ([fe80::d520:1b9e:a30e:69a7]) by DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 ([fe80::d520:1b9e:a30e:69a7%4]) with mapi id 15.20.8356.014; Fri, 17 Jan 2025
 10:04:32 +0000
Date: Fri, 17 Jan 2025 11:04:30 +0100
From: =?utf-8?B?SsO2cmc=?= Sommer <joerg.sommer@navimatix.de>
To: yocto@lists.yoctoproject.org, raj.khem@gmail.com
Cc: jason.m.bills@linux.intel.com
Subject: Re: [yocto] Script error when using EXTRA_IMAGECMD::append
Message-ID: <ocq67ibxlpe5a6expf44j4hjmdobl3orch2yeqbx3tet2xk5yi@zdlt73gsvj36>
References: <qFS7.1737056315558355410.fRU6@lists.yoctoproject.org>
 <CAMKF1sp7WcEfgHLq8whwZCbJGDT6_YFf5Z3we=AL7f8NFHzJ+w@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAMKF1sp7WcEfgHLq8whwZCbJGDT6_YFf5Z3we=AL7f8NFHzJ+w@mail.gmail.com>
X-ClientProxiedBy: BE1P281CA0102.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:79::15) To DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:2d4::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR01MB8293:EE_|DU2PR01MB8006:EE_
X-MS-Office365-Filtering-Correlation-Id: f120cd0b-a975-432d-9e8c-08dd36de56de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?bk1xbE1DOVloU2d1b0hLN2k0SEhaNzA1UHpDa0owUTF1WXV2TFhjNW9vaHVU?=
 =?utf-8?B?bjZPa0FuMzhSV1h4cEJPRS82aVRYZVlVaVBLdWtwYnBScnpXZWREUEpWUUdK?=
 =?utf-8?B?YzBHbU04YWxWbHZXaUh6RmQrNk5ZTVhkVE9aOUtxUDFhT1NaUDQ2RUZFcDdv?=
 =?utf-8?B?ZGVoUTAyK1RPcFc3cTgxeVdSN3RDTFFaUHdxY20xSHhrWHZ1MzBrM3JEd3Uv?=
 =?utf-8?B?YjRENjRyMExTeDJydGdDL1hsd0l1UmZ2SVV4djluK04wbXR2cXFnUjUycGcz?=
 =?utf-8?B?NnJVdDBUeFp0SThNamZ6TWpyZm5oY2lDd1E5azJSYVFyN25xK2dIUytLQTNL?=
 =?utf-8?B?OTlEUy8reVNGK0gwbWt1VGpORmlIanpKWURtNlQxVU02OHZJakJzMnhIREdT?=
 =?utf-8?B?Y3dFUnkwUWRZWm9PUVMvTVR3bHVzM3FsZG9pS3lrT0RXdll4T0tqQ3QrSXpu?=
 =?utf-8?B?SmJuSDZVSUxnZVdOZ01pdXd1dVN1b1Z0T3c1a1FMakVjVS80WkJ6TmJGMVJr?=
 =?utf-8?B?d0xIcTBTaUFjdHEyOTh5SC95VnVESXV6MlJJN24vZkNrQytJM2tEYTFVQUpS?=
 =?utf-8?B?YVVTZlN3QlE2OW9RK29XY0ZzaEM5STR3ODN4cUJHVkFLdWhuVTVqb2lSdjVJ?=
 =?utf-8?B?eHlNRjJUWHJ3RW1VQzY0ZU5BTHBkMnF6WVIyanNIOEdUTTdzOWdGdGh3bERl?=
 =?utf-8?B?bC9RQWtTR3U2b2J0OGxsdGxmT1FBOHFkSy9KYzgrK2diNkJqYW5EbjhHbTBu?=
 =?utf-8?B?Rm8rRlU5WU9zRmU2b1ZteklEbEJmNzRiQVdnV2hjMCtpcUd2SEF2eElkRHpF?=
 =?utf-8?B?QUE0VTZGTlRoMjVnekJSenZJYUxIMHpCdDFmVFlkZFFxZzVWeGYwWFZjd015?=
 =?utf-8?B?UEJEVDJqN3UxOVFjNUY2Q0tEV0p1VlB4RnZ4RUdUUmx5cml4SjRUK20ycjQ1?=
 =?utf-8?B?ODc4RUVtZGY2RWZ0S0lWYWU2eURNbXZ3RHllMC9MRFl2UVZJeE5QL3dEMy9L?=
 =?utf-8?B?Z3BwRSs5a3ZtM2RWYVNaWlFJTzBxZVJCWjJubGRRR2JUMWUvWDMzV0F1Y0Zj?=
 =?utf-8?B?U0lCMnBwTGVJcTVKMFBNcUhHZEVFWUd4SHhMbEVaRUR1TWJUdlMvelNqK2hq?=
 =?utf-8?B?WG5zUEJzMFUvcTZxQ29ROHRDRVR3ZmZFSlB6MnJOcnBUMVZuQTlsazJBaWc2?=
 =?utf-8?B?WFRyNXFOVUhIaE9WUEtCQjIwWGZkaXJIOWd6dGU3TzJzRGZtd3JBOTMrcmxm?=
 =?utf-8?B?dkZiL2luWkxuUkVuNXh1c2VlUG9obklrajR5dndQcHZJNjlyK1pOU0ZrYjlp?=
 =?utf-8?B?OHhXVnVPbFZ6UStnWU96azVXZnV0Q2R6NjN1NktBeFB1WjlVdGlrSW1jZ3BX?=
 =?utf-8?B?RkVLM0x4WjNnRjRjbTB5YTZIZTlZUlJBMDJjNEgzaXZxdkhtc3RNQmVpQ0lG?=
 =?utf-8?B?NGtGUWw0dWJ1Q01PNDJrc0tyUWxPV1gyRmlZMFFwMzdIQ3kyNzNEak9RbzV1?=
 =?utf-8?B?eE11Z25QZC9QZ21FVG84OHhHN1p1S212VG5PMTEzNW5JQmN2RlQxUlBBbk54?=
 =?utf-8?B?MlRuRmZtM25sRlN4MnhvM2dObVdENjFVQVZkckJUdUJaVGt0MnhEcVduckRS?=
 =?utf-8?B?MWR4Zko1SEFnL0UvVXpvV1NNanVGRk54VGpHeWtMMm9KY202WHJaeGc4T1Fp?=
 =?utf-8?B?YjZtTEswTnZHRmJmemRuU1ZRVmtObFpjK1FleitLUlRVTTVzUFRFSmhYS0Yz?=
 =?utf-8?B?cWZVWTVmdVA0NnpsQWpLODlWeEpER0JpVG9laFhiL3VWbnJ5aWRXWTJsNURK?=
 =?utf-8?B?NEQ1NHpEZVl4OUl0TTJjM2NFYWhZQko5WWw5cWpNa2FEbEd3Z1FDbi9vcHZQ?=
 =?utf-8?Q?ZqvBo2B5Day21?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR01MB8293.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?U0RjLzBjcTcrTHFxNkNuQkhhRU1FTW5iWUxIbC9FQllpdmV3R2wvSlQ0RkRB?=
 =?utf-8?B?STlKam4xVnBKcFJCQ1cwSlhDYWVlTjkwQWREU2l4VDlDNzZEaVdUM081ZzVO?=
 =?utf-8?B?VjhDTEJsOWtNU2MzWFFPNk9zV3FFT3UycGxWMnk5YTB6TWRqT0lpVFZaVVNU?=
 =?utf-8?B?QmxOQit1OThwLzBnZVoyOUFNbmRMZW14RGc1S3RSS1ZXa2RSdStvS25xSy84?=
 =?utf-8?B?bkpWWnE0MHZmTmUzZEFoaFJhRTJNQ2NhcUtFSGE4Rkl5empmUU1FNVJzcHhN?=
 =?utf-8?B?VXZnUnc4SHNvTk1GSkpMVXNvekZ4eEtlYnRkb24zeEhNRUUxTUJEMWlaVnBP?=
 =?utf-8?B?M1lDNVl4YkM4Qm52ckNpVXI3TWN6Mnk5c1N4VkQ5c3JyWjQwaU81NE43Q0lw?=
 =?utf-8?B?NVRlRGN3R3ZzMW53cERJUzA2Vk5qeXlUS0V2TXQ2WWdCRXRTcW9WQU96SFRU?=
 =?utf-8?B?YTVvYkNiOXF1Y0xPOUtaQjJJWmxKbFZNSmRwL0hXNy9kTE1QUW5iOGdma2VN?=
 =?utf-8?B?cmJ4Si93OWVqbEtQVWp2L2EvM0M4d2lNdXRHTk9odGVaMjhJelR2U21CSGYy?=
 =?utf-8?B?MGlhSjN1c2lOd20vODV6cUpRM1JjNlBHclIvSFkrWVBVTkhka3RxSmhCUE1n?=
 =?utf-8?B?NHVuL0RMTTk0b2dtcGhaNWtlaThwL3hsWmRMTnl5UVFkRS9zcjhjYXdjVHIx?=
 =?utf-8?B?RlhOL0RxMTJTdGZOajJUd2NKanVLQ0gvb2o2cEtLdXd6ZnZmNDA0eXZqNW9H?=
 =?utf-8?B?VnBzYUlVVUZBZWY0UmpCYjcvQWUwNlJvOVhzVzNjbmxhanlhQ3NQWjRMSmgy?=
 =?utf-8?B?SWNhWVNtaGdIanVjOWZCNGxPb2FJU0tiQy8xWWIwVEhOMVA0bGFkNHNmSTFF?=
 =?utf-8?B?WXlIZ0ZSODU2VkQ0ZkJJWG10TGJRdS9qRDQ2N3kyZzZaMkVVcTMxMnNHcmFJ?=
 =?utf-8?B?VjJYTU1BTHl5ZEFGYlo4NkNBYTBZUFEzc0NzZlBONWpReldvenk4UHBpckJM?=
 =?utf-8?B?elFCSHI1YUlXcjZVSjdjdUhDRVZkZEZOUjI2QWNLc0ZYRHhwaW5WMGhYQzll?=
 =?utf-8?B?WXBqcUZ5Q1Y1VE0xWXJRNGZGOS9qWGE3WElFcnRBOFJiZE9NZ1V1VEtqaSt1?=
 =?utf-8?B?KzRGM1AwRUVLZDFoZjhWcFMxZ0M4VWVpUkt1M1c4SFdySW1WZXRyNlpPMDdm?=
 =?utf-8?B?TnhScnpnbVdkemg0SFVkb1M2aHpmSHdrVkVFMUxUZFlPaVpYd1J1cVVXdVZB?=
 =?utf-8?B?NUpCZHRNaFNVTmNaelYwNVJPQWpqbE1DK2VLR1lPbCtFd0tGTW9Ta085alF6?=
 =?utf-8?B?cXAzdmcwVEFCM1llcmdObnFlNjdsQ1FiNldPVWpLeTR2QmdxVEpUSlpLZzRt?=
 =?utf-8?B?eHhHUEE1SXlmYWFHYjFwQ1A3LzFHMm5YQVRXbkRIZ002Y1ROcXNsL1J3S1hu?=
 =?utf-8?B?SVA3Mk9XOUNVU0VrWklsV2t3Nm5XbDRuQTk3ZTQ3UDNKTUNTdzQ0Ty9QelRC?=
 =?utf-8?B?YWVYbTkrRFNlRmZaM0p3REZqSktzTXB1T3FIcmkrNGZhQUtDMkZXeG80SVhO?=
 =?utf-8?B?dURTbnBEbEZVbmtVamdqZ21vVW9EOW82NmNmb293TXhBcjh3dmJPeTdmUHZ2?=
 =?utf-8?B?Wlh4bVQwbXpicEV0Y3QwOWF0ZXR3OWNwbnZySWVXR2lBR3pWMEZqUVNOdkcv?=
 =?utf-8?B?cTIyQzJpdERkdGhlNVRzTS9WNlNUMkgxZkVqdHlaMmlOcjRMc2xRTTlIdEdI?=
 =?utf-8?B?Zkp5aUNTQjZpc25iRkpkWGYveWNCVXY5ZmV3VjJiNTBpam9SYncxMlg2M1VD?=
 =?utf-8?B?MkdJWm1VWk5ybHo5Szd5bmY5bTY5Ti9jcjRobXVTOUY3cUV5VnlkV0dBVEhE?=
 =?utf-8?B?cEc2M1VpNTNTOGFURnRCWEQ2ei9leGZHeTREVWRYYzVkQzdVLzRLVTFKL1Q0?=
 =?utf-8?B?UWhna0pkcGtVYThxV2YwekUxQVVvOVU5RUFEOXZMT3ZJcXhveG1NT21oL09J?=
 =?utf-8?B?Uk13My9zMnVWTzN2WUs4L0ExK2R5MzZTZXJKQk9ObkZ3cEd3STVZSWNGMStl?=
 =?utf-8?B?Q0FMemkwTGhiMHJHR2MzeTNhNHBtMDF5ejJJUUROSzdHcmo2MS95OVJHSDNo?=
 =?utf-8?B?b1EybU5mUG5FcExqNlh2Z3FmUGNOdzl4ZnBQcThpd2J5R2JZMWRjMW5lOU5C?=
 =?utf-8?B?M2c9PQ==?=
X-OriginatorOrg: navimatix.de
X-MS-Exchange-CrossTenant-Network-Message-Id: f120cd0b-a975-432d-9e8c-08dd36de56de
X-MS-Exchange-CrossTenant-AuthSource: DU2PR01MB8293.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2025 10:04:32.6171
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: c87b4f54-b992-4813-8f3f-4a876324197f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SxPrCibGgQ9VYtUVBSMbmg8XdUEr/RLm5hUYhaNX1C3qm28c1yWXpvvLAhFbUQmtnPCZysj2uuXZmA6lh5b/pThECGV/jVtkSv5+anJAeqo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR01MB8006
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Jan 2025 10:04:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64573

Khem Raj via lists.yoctoproject.org schrieb am Do 16. Jan, 17:45 (-0800):
> On Thu, Jan 16, 2025 at 11:38=E2=80=AFAM Bills, Jason M via
> lists.yoctoproject.org
> <jason.m.bills=3Dlinux.intel.com@lists.yoctoproject.org> wrote:
> >
> > Hello,
> >
> > I recently pulled down this change that fixes an issue with EXTRA_IMAGE=
CMD support for squashfs-xz: https://github.com/yoctoproject/poky/commit/70=
a857b8f3fd3e9b95b903e8313d0014a6ff8c96.
> >
>=20
> Looking at this commit, it's using the 'local' keyword which is a bash
> extension and  I wonder if that
> is right, since we support posix compliant shell syntax for executing
> shell tasks.
>=20
> what is your defautl shell, is it bash or dash ?

Dash supports *local*.

From dash(1):

    Variables may be declared to be local to a function by using a local
    command. This should appear as the first statement of a function, and
    the syntax is

          local [variable | -] ...

    Local is implemented as a builtin command.


