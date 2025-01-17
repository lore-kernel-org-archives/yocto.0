Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E23FC02183
	for <webhook@archiver.kernel.org>; Fri, 17 Jan 2025 14:57:59 +0000 (UTC)
Received: from AS8PR04CU009.outbound.protection.outlook.com (AS8PR04CU009.outbound.protection.outlook.com [52.101.70.48])
 by mx.groups.io with SMTP id smtpd.web10.12507.1737125868188631479
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Jan 2025 06:57:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=fO8Jv6qn;
 spf=pass (domain: cherry.de, ip: 52.101.70.48, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UOaxwsKZB4S3bEJnzMxQrmu9oyWwt13F/1w1uFlotWnrlRLZr/EHrPsKbISPmIRmAO+AvLqlvFyA02A1fKvVyuE3n35T818oc8GNg8+wYHvKQyDZn5HL1yP49ZvvBJeevWaWQYU6GzmYi1fkKXGTHxqndielUL6YuFn8yx14bh8s22+rRKlYOzSwmEwH1pr9E7VlmvO2bzdnE5TjBvzQQAqYg1yiwGe2SYP0vR4rUhsG272cjmrVcFDRNsaMI5Ml3CCyCZP59a0FRlMjKVP5GWVpIqJo/jIucmZHBfUiRUpO8tybQwRmbyTogb/oFpub6JrLfk5De1jdohnJxiBEqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tGjHDIxfAJ4ZVA7LeV0zraHF7H3OiPSDX39c3hghNpo=;
 b=KAOBneSUjaUv02UYwiXOq50EH+51M3V7iAu7k6CTQknFBDxwDKh8U1Cf7Byygs3k5Og0GfTUhAnJdwtm8acYZjvIm+Tt4wsZcB86Y1ilkzRPcDfnYhylMtjXZ9++uvSgfKhPEKdXoUqWZai2Cmf7ByyHb5BSSVFm4ol3WyxwbFF7XIAd+BNF4nJwqtB7oyMqIek3YhaFsojX4258gL8UlpiRtPLTDfxhF3VWUdXDC/PaTrsccm9pBpDcgFAX0Sz7VoyCN0rqooe3cUxDdJIW6P4mW9j6RvT3QsdqPGg+7cOmlkaFExLIfg6m3mKzkOwsF8TC6ZXkstPHxnQD0FCVDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tGjHDIxfAJ4ZVA7LeV0zraHF7H3OiPSDX39c3hghNpo=;
 b=fO8Jv6qnm/JebuFXNGHikhnJGY/ne0rX9I5z2fzL8tetlseXP9+65Y1fSwzN/DZeg4uGoR6qWxSoOD4lQZ235NnKs8d0+7wN7JEC9QaXQQBxZoJ4ZTTf7smPQBfI9KN1qL2XcGrE1HbCYtIsAKO3+GcgFX1VEF9U6AXWsuxizbU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by AS1PR04MB9432.eurprd04.prod.outlook.com (2603:10a6:20b:4d8::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.16; Fri, 17 Jan
 2025 14:57:44 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%3]) with mapi id 15.20.8335.015; Fri, 17 Jan 2025
 14:57:43 +0000
Message-ID: <9114649f-4ed7-4691-a76f-b3b8aaea5d90@cherry.de>
Date: Fri, 17 Jan 2025 15:57:43 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] do_unpack:append
To: yocto@lists.yoctoproject.org, kjeld.flarup@liberalismen.dk
References: <CACRoYp_pFeOTE9VYZh+tsvrXbgXXX2YgsCCSDt06CB1BrUcpzg@mail.gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <CACRoYp_pFeOTE9VYZh+tsvrXbgXXX2YgsCCSDt06CB1BrUcpzg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0210.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ad::14) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|AS1PR04MB9432:EE_
X-MS-Office365-Filtering-Correlation-Id: 001b0aa7-dae4-468e-bc4e-08dd37074c14
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?Tk5mTzZFNDlLcktNSWpPVWtjMTNIMU5lb0J3dmhaeFpVM0p0Y3Q5Qi9RR2lD?=
 =?utf-8?B?NzhCdlBCMkdGR3BDSnB5ZXFpKzlOSlozc2wwU2l4ZWUzMWgyK1FKZGpBMzlO?=
 =?utf-8?B?ZHJSd0xLODBISmlqbStLS2lRVUhKM2YwMEJibHM2Q1NvcVQ2OUhUTTVoQk5o?=
 =?utf-8?B?MGRNSGowbE1BWGVhK2VSWUU2TXJRdFpMYWFLcTA4WTdWY0RaQXZzU1p2YlE2?=
 =?utf-8?B?czJMYUcxS1ZBVUJ1UlZMMjUxZWtBLzkzczlUNVF0ejQ0YzlmNUtJR3hTM1I1?=
 =?utf-8?B?bWhUWTFoQS8ramtwdXZsTFRlR3F6cytZUERaMUU3YVJIb3h2R1R3ZzZxTE56?=
 =?utf-8?B?cVNkZGpPNGE4VzI1anVkUmcwc2NEbGIwcHY3bkd2UmVEWUVBdnh0TjVBek5X?=
 =?utf-8?B?NFBCU1pLMS9SZWEvS0pkcFFFWklmbGJhNS9BSm5QdExyT1BQQ1ptZCsxbTk1?=
 =?utf-8?B?NVBCa0tMK3dLR2dEOVVDWnZISjhtWXVoMkY4SVdKWmc5R2xZRjBDakhBVG0v?=
 =?utf-8?B?OWg5amdqVFhvcjVpdUZYNWRBZ2drMHdaRTBJNGozYmx4VHZiNTE1U1hwTC82?=
 =?utf-8?B?ZUFFSEFpWG5vemQ0SnlkaVA1RFBpK1l0RU0xd0w4akk4ckFTQXNrckwrTmN2?=
 =?utf-8?B?QnNMVFIrQWNXZG02NDRHNjBybWxIRVdjOGhXR01IN2IwS1VqZ282dkhGeWhT?=
 =?utf-8?B?TllnYTRLdDJBdUNzMEVaZmUzWXJ6OFlPWEdGV0k0a3EzVisvYTJ1b0o3YWVj?=
 =?utf-8?B?N1l6bzZUKyszMTl5WXVNeTFpaXhZd1RlTitySmZZQlhRTkxnV3FXT3R6MEF3?=
 =?utf-8?B?WU1HRmZycEFxUkR2N1J5cGs4aHBUTlhHTU4wMXdRbzdXZ2hxdHNBWVFJdnRR?=
 =?utf-8?B?OTFQenYxTnlDMlF1a2ZVU1p6OUllQjBlS3ZEbFFKVmN1YXBDdzkvbWxDVnFC?=
 =?utf-8?B?NlZ3b20wYkp0dnMzWmFWYVBaYUJWelo3eXU1MnJpVVlaODFVUHpYL0Y3R3dz?=
 =?utf-8?B?Z0d3N1IveTY5bkJlZmRFczR2SDVJRVVtY0pndkpMdC9kRGN6S2JiTVhSMklG?=
 =?utf-8?B?OE5mOVloUFh2TEE2ZWtFanhwNnA5WFVJV1dnNUVMUm5jd3dwY3g1a3FSNHVw?=
 =?utf-8?B?MUNHbjA4ZDJHTDI3elpoeXNaNDVHUW15SmNrVVhOVlJ6L1EvdTNGSG8waVhi?=
 =?utf-8?B?V3cvVWtmQXNyTHN6YVcrM1VSSFRrWndNSUIrT2RSNEs3ckY1ODRRMllXOHBK?=
 =?utf-8?B?Q1JpYnBGSGlrYWJheC9xM0NIYVppak1kbVBGR2x1STZQcGZKUG91WFN2QUZS?=
 =?utf-8?B?Q3VCVEllbStoYzlMeU9nWENORTZSYWo1NlVuS1ZuVWJNUndscHVrbXJadUhF?=
 =?utf-8?B?Q1R5RThvSTJ0TUQyb3BjR21hdkN5T01GUkNrSmcxYUZRR0hJdFJhcjRHRHR0?=
 =?utf-8?B?UnQycnlUay9vc2pwYWVjY1lZN2NlUWMyNTdsb3c2M0Rsdjl5MDdYVXlBSTcr?=
 =?utf-8?B?d29SOFhMOGdHdEt1ZDQ2WVAzcWtldHJEUzA4UHdLSjFwTzlnMnpCZkxNYmJ2?=
 =?utf-8?B?NU13UElyOUM0VTVhTHh6SDN5VWlnSjBKdmNuUUY0bm9ZU3NMRWttcHhPejlD?=
 =?utf-8?B?QXBsTVNhNHVIQVF5OHRNVjh3aFpkM0w3TTBCL0U3dUNnbGdsTDdrYithUlBT?=
 =?utf-8?B?SXBvekhlOHJPVVFIQ0g4dlVYWkU4dWFFZmhncnREUzV0cWdMVTNLNEdod0ZE?=
 =?utf-8?B?N0ZsQTFubjFNTzJoajN1Vm9vcEVYMm91S2FkZW9XU09zd1NGcmtVOW1LSURi?=
 =?utf-8?B?V3BZNkdLTjQ4NjhYVUN5UT09?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NERKc05zUkxDaWFSUTdCYUhXSTZOc0dpZEo2MUdjQlRUdE9pNVlYSS95WHhp?=
 =?utf-8?B?cFdZYXU3dFduVUtYc2EyajQvUWxURjl0TUNhMk4rWVBVa3pzTGw5YW8rV3lv?=
 =?utf-8?B?MGdBK2FUOU1VZDVWQWJKSUpWT1NEa3NWTEFSUkF4ZGY4bmgwRzFlWmZXRHFt?=
 =?utf-8?B?c2x0NUJ4b3Q0MTRJR1ZuaEZDS1dTMWI3L2Roc0tYSXh1WktTa2pVOG5KNDBK?=
 =?utf-8?B?SlRzZnNoS3U1RnE1QnRKWGpkd1pRSDRramtKUmNvVDJtVTkwY0FWNXpMVk8v?=
 =?utf-8?B?K05PMjhpS0g1bnI4MTRaMUtMREU1dnlEeGZEZmMvVWdHa0tYaDBqV2tINXkw?=
 =?utf-8?B?K05iaUQ4a1BNNkFrNUFUWWNURktGY2tPWTExREZBUnBnMVlrUFJpVTNOdG1C?=
 =?utf-8?B?bGE2bjdHMlZzUSs2bUJuZUpNMmFZMk1adnpCdTkwRHQrYTJrRWduMFdOeVJW?=
 =?utf-8?B?ZzdkQW9pV05Ka29Kd0wrMVFOaXNJbzNremtoRWNRL1pZRFl0R3ZoYURwMkhM?=
 =?utf-8?B?WGNicDJrSnE1cVhpcjFpTkYzcU5zdzBYdXhKdWVGblZJczlSQVZkMmEycFVT?=
 =?utf-8?B?Vk1DaEhBcGNzN2dJTlZoSVhWRm9vZ25XeGVhYVB2Z1JrTlljR2ZWU2hGdjZ4?=
 =?utf-8?B?Qjd6b29BMlhwRzFKZzc5WnY1Z0o2ZFpOVW9FV0NIVXc5cjlENXpUQmxSZ2No?=
 =?utf-8?B?OVczWFd5dlhnbTVlTDJqSEhPWEVsRGRraktOTktqMWhNbTRkOElwcGx5cHd3?=
 =?utf-8?B?QUVOZDRxalBDOUF5QSttQXBLSDJtb3hSdjhZaFUxTzdER0lEN2JuRllXR0hl?=
 =?utf-8?B?NTJvZzd5UHBkTUlUS0ZBT082MW52QUdXUlBGeUZDSUsrbU02ZmoxT3Y5VDg0?=
 =?utf-8?B?U0xXTU4yVzJPSThsZFU2NFVIQVRUcUNUeFJmZXAyQnJic0hxMFdOTEZRQUQ5?=
 =?utf-8?B?d3JNdEJpV3RzcVNzQTYxRHlBSGNZQ2dGTElLa3ZqU0QxUXdhMTFjL1ViaHdV?=
 =?utf-8?B?NnNHTU9mazBBVHY1cThocjJzeXZZamdQU3lCNUdQRWVmVFord2ZOWWx6VFBs?=
 =?utf-8?B?bXdRUHMyUE4rY043MzJ2TGtDY05QSDVyVTI2ZldrZHdSd1lnQlQ4aFFiRFYw?=
 =?utf-8?B?eU5CMWR4Z2xWWUYrc3VJK1ZlOFJIanRFWFZEZCtndXRXZnhXZG9qN3BzeEJR?=
 =?utf-8?B?Uy9EaEREcVRxZkJqbmZGd3VvdTlwOGpoM0tYUVpTZXBaeHhVcWQ2TDhlV2JZ?=
 =?utf-8?B?bWd5WTlJdTQxZXU1Rmp1bWpsam92bGVoelVRSTVuQTZmVWVDalpEejdjL3hz?=
 =?utf-8?B?L2Y0TjdCYU5VNlE0bTN5amV0ZGZHd1lqVGcxN1ZvL1pteVNSalM4VmloKzlH?=
 =?utf-8?B?ZXNNZldLem0rMEd4VTJsc2RGMkZ2dERxYWxHQURmSnVSa1hjNnZVN0JVaC9u?=
 =?utf-8?B?WmthSTdzNGRQcDlLb082cEpKVU9LVkRtZTVsVFdVbWE5UlJONkExa0FFZlFk?=
 =?utf-8?B?UkxMQzgzRk05bDlBOGd1cFY1VGw2QXFRSzBISEl6ZHFKcVhMZTZKQkRKS0pT?=
 =?utf-8?B?ZExmd0kranpXSFJud24yc3FLZmZJYlVJQTJVOFFZUU5oL1Ywc2RzMm9nUzEr?=
 =?utf-8?B?UGpKVXFOKzZBSmRHMWtjMEZDN0kxMmdMUkxwbmJFNXdFTVNwSmZCWXYxUlZI?=
 =?utf-8?B?VDVWSnNSM1M0QUhZODlsdWdCanNvYjQvZC90akZscFprWlRMbFBNRnd0VWRB?=
 =?utf-8?B?REMrQ2x2cmtWUEY2dE95UkNWbGlFeGEzQ2g0UXlUV3VQRjlLWGJDdk9hYjBQ?=
 =?utf-8?B?MlJ5VUVGYllRcGhwcWtGTHFlTHpMenRxVWovbVIralpRSVh0VXNIYUk1QTFu?=
 =?utf-8?B?TDVjNjlTL3ZGQWQ0SFprM2ppUWw5T1ozUThNUGsyaGlXUW9Hb3F1WXYvUzlO?=
 =?utf-8?B?cFd5VmNkZmpZR0RjWjE1Vlg2dVlRMEsyaVRaZU5ZWU9UcVdPbHhYMzRJcVpW?=
 =?utf-8?B?Y1VPaThEY210ZjdHb2Z0RytPZlZteURNNmN6MTl5ZkNJcWc1dk9YR3dFTkVO?=
 =?utf-8?B?YnRnVEw0c2h6bGxUay9jWDI3bHZBOXF3SldLYXlkRVNBaDNLZlVIMnlEM2ha?=
 =?utf-8?B?ZFNjNjN6bURWSnl5UkRRNy9vUDc4OVNCdVd5cHZteTVqWmMvTVdYSmxyQjhR?=
 =?utf-8?B?WlE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 001b0aa7-dae4-468e-bc4e-08dd37074c14
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2025 14:57:43.9009
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4TiQV4G5xnchc6f3hh6uqq6CfwBko2WzE5ApN268C/Jn/JFcIF4x2yjEOm4xRyoTBX1Z9yYNOllnPQPnbTHo3NKBMhKf09IzpY44GaR2Wgw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR04MB9432
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Jan 2025 14:57:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64583

Hi,

On 1/17/25 3:25 PM, Kjeld Flarup via lists.yoctoproject.org wrote:
> You don't often get email from kjeld.flarup=liberalismen.dk@lists.yoctoproject.org. Learn why this is important<https://aka.ms/LearnAboutSenderIdentification>
> I try to write an append for do_unpack
> do_unpack:append() {
>    echo Hello
> }
> 
> But it looks like it is parsed as Python
> 
>                       parser = bb.codeparser.PythonParser(key, logger)
>      >                parser.parse_python(value, filename=varflags.get("filename"), lineno=varflags.get("lineno"))
>                       deps = deps | parser.references
>    File "/tmp/yocto/meta-poky/bitbake/lib/bb/codeparser.py", line 358, in PythonParser.parse_python(node="\n    bb.build.exec_func('base_do_unpack', d)\n  echo Hello\n", lineno=1, filename='autogenerated', fixedhash=None):
>               node = "\n" * int(lineno) + node
>      >        code = compile(check_indent(str(node)), filename, "exec",
>                              ast.PyCF_ONLY_AST)
>    File "autogenerated", line 3
>      echo Hello
>                ^
> IndentationError: unindent does not match any outer indentation level
> 
> Isn't this possible using shell
> 

Tasks can be python or shell, here do_unpack is Python, so you need to 
write Python code in :prepend or :append.

Depending on your usecase, you can simply add a new task and insert it 
between do_unpack and the next task depending on this change for example.

Another option is to use bb.build.exec_func() from Python code to 
execute a shell function, though I don't think this is widely used 
outside of core code (and I haven't used it myself, so maybe not the 
best practice either).

You can also have shell functions run after the python task is run, 
those are added with:

do_unpack[prefuncs] += "my-shell-func another-shell-func"
do_unpack[postfuncs] += "my-shell-func yet-another-shell-func"

c.f. 
https://docs.yoctoproject.org/bitbake/bitbake-user-manual/bitbake-user-manual-metadata.html#variable-flags

Cheers,
Quentin

