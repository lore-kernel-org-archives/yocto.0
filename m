Return-Path: <joerg.sommer@navimatix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35254C30658
	for <webhook@archiver.kernel.org>; Fri,  5 Jul 2024 13:14:18 +0000 (UTC)
Received: from EUR02-AM0-obe.outbound.protection.outlook.com (EUR02-AM0-obe.outbound.protection.outlook.com [40.107.247.91])
 by mx.groups.io with SMTP id smtpd.web10.16553.1720185256176794366
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Jul 2024 06:14:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@navimatix.de header.s=selector1 header.b=HfKRqt5t;
 spf=pass (domain: navimatix.de, ip: 40.107.247.91, mailfrom: joerg.sommer@navimatix.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R6QJ5YmnUX+fGo5fO7eMOrTojDb9NhWEnh22CBgul9phslbw2V7c348HwFrRYzblYUNIp5vFj23joa0Qo4QBLAK5CMqHkLBBZsXTtunjKO1EkJ1HSzX47lGHLB8+qWBq0lEXlxOAOpZBZoGnQstGds6WZf573yyAfH0Z7iHY0C82anaHiilld/sXUsPVwzvX6Gw7EyL3iKoVQuNF7hRL9oPMmApgY48/eryskhmx56GLXw+DCwgHYz+NCcgQw5iezbqlsxv5DcHtm31av1iGm9UEapyuZuV42sL+i8XY4oN5g0c5d1GdYACY8nX7V9spKWXvn7MNFcl7BIvZoPvJ1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nPOn2ljC8cB4LFYENLtTTSCSQ3/Pf+O3iZ+rwsc/oQ8=;
 b=Hc/8t1cWJLT3/q3/dRjHRelcVaP5R9jTpLDAhIbwDwfB889R6/hXxuaDnhuMv6n0gS15SSe/Zf5/Rh1DSVTZLhoEHdbyLzaQRHQWFIQiNWIxTbXjAkOAaLjIOLtpG3hQlidsewaETajIha2eXQpXMsB/IfXfkiTmJQbqnkD9z1VFmUXe9U5J9jz1FC4Ld1M4b98k+2W0h277lSvGISzXriqkYreC8O8RA6FlIMob6Fak+TYWSdK47NDB0prfWA0MMbr3JAnbKG4noP7DMqZewHy3k+hp4HOybur9RYTxgtgJ99DU08tr97PjKXuDkGgXnK/vY3DvII3frHS6Ej24Yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=navimatix.de; dmarc=pass action=none header.from=navimatix.de;
 dkim=pass header.d=navimatix.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=navimatix.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nPOn2ljC8cB4LFYENLtTTSCSQ3/Pf+O3iZ+rwsc/oQ8=;
 b=HfKRqt5t62d0ogRexBezbHHIr+VmK1M9sVAPzeORzmgnWw5r5ymugMI4ZQWfiMH6o9BGgurwAGgZDvCHq2oGICaL4reQITovimj4tKYVyzAQ5uHc8fHRpVL0UP7Xuifk00E/p8J6HPxDVwW4Nq6JccDXe/a3UpvpyHRkWgeW/UY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=navimatix.de;
Received: from DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:2d4::5) by PA1PR01MB10838.eurprd01.prod.exchangelabs.com
 (2603:10a6:102:482::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.25; Fri, 5 Jul
 2024 13:14:12 +0000
Received: from DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 ([fe80::d520:1b9e:a30e:69a7]) by DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 ([fe80::d520:1b9e:a30e:69a7%4]) with mapi id 15.20.7741.029; Fri, 5 Jul 2024
 13:14:12 +0000
Date: Fri, 5 Jul 2024 15:14:10 +0200
From: =?utf-8?B?SsO2cmc=?= Sommer <joerg.sommer@navimatix.de>
To: yocto@lists.yoctoproject.org
Subject: How to get u-boot beside the image, but not inside
Message-ID: <7rx5vw2adv3ex562uphbeiv6tg5anit6klesludkt2a6xafvcy@npj3doaepcqb>
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha-256; boundary="4sxwy6nu6cc6mdbx"
Content-Disposition: inline
X-ClientProxiedBy: BE1P281CA0294.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:8a::14) To DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:2d4::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR01MB8293:EE_|PA1PR01MB10838:EE_
X-MS-Office365-Filtering-Correlation-Id: 9dcab4ee-7c64-40d3-2993-08dc9cf45ccc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?TEJOMXJKQnV4Z3BMK2UvZzhCNUFKbDU2Wk5La0xTNEdBOGJQTXBZVWRzZGh6?=
 =?utf-8?B?WTRpa1FRTTZVUGRWbjB0S1JJeUpveGh4Q1NIYThsZzBUZlJ5NnlnK3JQVU9r?=
 =?utf-8?B?YWlrOFNOWDBuRDRMS29xYk1hUkg0Z21OamMwSG9SSGxRVElZVHVNaG5tNVo5?=
 =?utf-8?B?UW1rKzJYbEl5ZzNHMVJSeE1wbVY3MFJEUTNMT3BRWDRVcnhVMFRBMWtyWktL?=
 =?utf-8?B?TThGWGw3SEJ6K1IvUEJnb3lsMnNYUnRoekp1UC9IV3FXdVZzRGhmWXZYbmRJ?=
 =?utf-8?B?S0p0alczMHNTaGpPZU1hNmk3WXArMy9UeU1qZi9kdmxwQzJuR2hhclJVMWdD?=
 =?utf-8?B?aDVZMzZQQ0RhYkMwOHk1UkROVXJlK0M4UW85aXBnTVUzeG1GZ3I4a3RnVVp1?=
 =?utf-8?B?cW42T041NzFrRDQvdUd2bENzMWtxdWhYbXpFUlNnbnhPUE9RNTAwbGl0K3NL?=
 =?utf-8?B?S0F4SWRGNytCZ3hqbXliZ0xjcW5ZMVFBaDNXc0VmN1JsNkIxNTBqU2t6RHJF?=
 =?utf-8?B?d0Rkcis4R21OOTVGdDhCQ1NweUt2SjRwNlVac1JWZ1pTM3NuV1FYenVsRktw?=
 =?utf-8?B?K0tpR2VRSlBudzhhN3BOMDltNHJlQytiNlVEMnBvZWdwMGVINVFJYnFqWEhG?=
 =?utf-8?B?d3FVOS9iTE5Cc3l3QVFnVDAxMU56YXgyZGJnYmVlTjloS2NpazhFZEEyK0FV?=
 =?utf-8?B?RG9rbGVSOU9wd25pdlFUMkJKMXhCcTB6TFI3ZFBzK3JqUDM3bHFsWnpMdldT?=
 =?utf-8?B?SzlLdDRFUDFhaS9lckdTeGVRVkY3a1JPcDZSR3lEUzkxbmxkb3BEcG92OHRJ?=
 =?utf-8?B?M3hHTXVXQUNrMVcxN3BXMVROeUw3OG1YL1FldlgxWkpuUXpwUHh4Unh2ZHRM?=
 =?utf-8?B?Vi8vZCt5aFpSNTlUWEhTRWN1U2RITXpOdkFsN2U0eDZxdUI0bDhCR2ZRdVdV?=
 =?utf-8?B?cS9jYTVWaGpUME0vdkVOb09UM3dRSUNzTllsejRyR1hyOUJCTEd2dC9objRr?=
 =?utf-8?B?cXlvUVA3T1djMWxlMjF1MXFETEtrdWxQUUowTzJQMEpRajkyYXRMN2Rld2VM?=
 =?utf-8?B?cGpSc3RTY3gyMC9VMjFQOUYrb3hNUTdmMDgweXdacFBUY0tmR01LRVBPQTlM?=
 =?utf-8?B?ZWdHeTdLN0l2STlmMHNiYnoybHBONHJVWEMxYVFsajdOeCtienUxeXMvYlNH?=
 =?utf-8?B?eGgvRWpja1lqaWZJQ2ZicHpYNEpQdnNpWDZrVG9wUEYyWlBnaythZzF0L2t1?=
 =?utf-8?B?d3NORG1FWDA4SWFSOU5SS25JZnM2T0RnMVpaUTRoUDR6cm9Xekp6WU1ET0hy?=
 =?utf-8?B?QjFaRWRUMWU1N3A3NmJmWk5BZmdRWTRCdHpHNkF4aFpXME1VTVZVMDFYUXVH?=
 =?utf-8?B?U015YW9SUVk3QUs3Z0pSQ1h1anRSbjZQdGRLTnhrQVN0M0Y4ZXZhRUZlbmkv?=
 =?utf-8?B?d1czZE5wd2lNSmVTeUJhVldXQ2xyc0h3YjNBNndRR1ZSc0U0OC9Gc2ZMOEVt?=
 =?utf-8?B?ZGk5K0pWM01yT003S2JqOTlyZE5ZbDRQVHBrdEVjTHZuK0pqMXBGQzIyc1RP?=
 =?utf-8?B?MG96OUlEcC9PSXc0ekY0bGtrMFNySjJZKytnbGZ1a1JvKy9zOC93Z0tHZlRt?=
 =?utf-8?B?MnlwcDZKZ0pqcVJJeVhxS0gxeUxxK2U1Y3lINTRQelFMQWUwcG10Tjh2Uzhi?=
 =?utf-8?B?Z0J5VkZxTjFmQ0ZiSXJ0T1VyQ2NVazlFWWN4VzhmZzhsT2tTZlI0cnZPSjhS?=
 =?utf-8?B?a3RidHNoTmxQUWNwUURoR0JvVWduamdRTHBoeEF4b05OSy91RXdsS0t5UmI2?=
 =?utf-8?B?eC9ad2xubXY3cStFUXo1UT09?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR01MB8293.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?V1hUaFZlZUZlWUpUUnBPUmpuTzR1Z0V5ZHpEUHN5ZXR1VTU1Y0xnQm1wdm0v?=
 =?utf-8?B?Z1h0NDJBU3dsTkNLNEtHSjg4S0tXcUx5eDdPY0w1Q1lhbHptZjdyMHN6Q0Mz?=
 =?utf-8?B?Z2JMKzR1M0VhMDFhb2huUHJycHJORnR3V2Q1MGdHVk52c2JqdzlpTlY1eDVJ?=
 =?utf-8?B?bXRHQ05CMFNya05tRzFod1UyL2ljTmVoY2FITWFWSDFabHI4Tnd1Z0Y1Y2xX?=
 =?utf-8?B?UWtDaEl6aWpOeUpuaEkyTHk3WjhCTUZrZmphb1JNVm1NcVk4d0ZSbG50RWEv?=
 =?utf-8?B?TUIrMSsvWi9sMEQyWS9Tb0p5NFc4MHlneFdhcjN0bUtpSVY4SEdyd290QmdT?=
 =?utf-8?B?K3BEb09hY0lzbHhIcjVrNWpiNDI3azlRb3BmdlF4b0JYVFRYNFRaRmNBS21N?=
 =?utf-8?B?cWo1S2xtaklSM1ppZ3VzeG8ybXdpbmJyOC9kWFYrZEV5c09OM2J2OHE3VnRi?=
 =?utf-8?B?ZDZ4eFc0ZmUxcHFuQnNONW56amxUaGpodld2b3lGR3FXR3RqR3RaQkVPRXNU?=
 =?utf-8?B?VWdhUnQ1M3pmV3p6OXNncjFtd1ptbm1aUHFFazNFUkF4R3NLWlRRRnVwWkJI?=
 =?utf-8?B?TVBSNFlXa3E3RFZmd040d21ERFJackFTRG04RDVqUHc2WUsrSHR2b2lEWnRq?=
 =?utf-8?B?WnVwVkFLVlpZWVpaNFM5UjhMNHl5SjlYZEN6WTBWZWlYVGp0elorMXZrMW5q?=
 =?utf-8?B?S2ZOQnhTMTViSU9PcW1TYmFTdk00blA0aU1Bcy9IOC90VVZTK3g1dWwxY2E5?=
 =?utf-8?B?Z1RyZUcyMGxEVzcvMkxEbitsU2EyWFNlTHN6Vm1RY2kzenBXUzdJZlNOTWx2?=
 =?utf-8?B?dWxOTmc2SXdycWJtMlJVakFLbGZMN00wVHlJd0o5STN2a2pJODJEQm9SSHVL?=
 =?utf-8?B?U2ZrdERYTThiYmZIL1JGZVNUcWVFUU05OHl5a0dyYkFTZVFncGRJcVRBMzN4?=
 =?utf-8?B?SFhpWTRuWWFFVklmTkFxR2lpa3dRQ09ZWmltTEU5UEF0YkNtYXJ0RThNRVBG?=
 =?utf-8?B?VmtsY2g1Z1hSaEVhd2YvVjdtbVZpSzhhQWg2QUNZK3g0RWovbXBmVndBdlR6?=
 =?utf-8?B?WEs3em9kTHIrczhGWi8va21CQUEzRHBjNDdQSDJ3bUlkd09lQzIycFhraUR2?=
 =?utf-8?B?SkROR09mWWE5Q0Flamt0K25JUEpZT0owQ0huT3JBanhxeC91Vk1LN0J2T0g2?=
 =?utf-8?B?VmppaTN6Z3UvRWl1aEZOeUxVY1RaaWZKdnhkbzVwSDI3T2xYRU5tUHBhNHlW?=
 =?utf-8?B?dDlOK25jVzRzZ0hvVFJYcXk3cHl4U01xSzI2bGlvQjhRTVUxdVZKYUE3Zldm?=
 =?utf-8?B?bEVvSXVEN25PclNUN3FpdTJUTEFKbEVLVVJVdHFMbmNiSFJQbEhuK3B4QUJi?=
 =?utf-8?B?cXJnY2crejRYakVhTnNrRkxIRUhyUGVyN0NtRGpBSkFpdWszaC9yM2kzVTZi?=
 =?utf-8?B?dW45eHhDeXozTGxwWGdkeXZ0c1B4blo3QWFha0JIRjcyYmlNc05Qem5UOFJ2?=
 =?utf-8?B?NFowY2ZLb1I0SENpSk1VYzJxTnU1VGxDOU5EUmVyc1k5UHhScW82ZytkcUU5?=
 =?utf-8?B?RDZPZmc1dXdYK09oN1V5a1J3UExjcCtXSzZOVEZQV3BOaGQ5WGwyNlA1T0dv?=
 =?utf-8?B?eXlLSDNZRzJBak8wUmVGUXpONHovZGFzb2dZR2dkYVFQMGFEQnMwSjJmNlNW?=
 =?utf-8?B?WVVNTnVLMUVyajduc1NzNWFCL1Rpdm1zR1d4TTlhb0Y4U1BPZCtSV3JBVEpM?=
 =?utf-8?B?WWtlMVVoSDJ3a0Z6T2x5R1ZYUlpmeXVia293T2pMZWxhM2tSZkxaUHFnYlJZ?=
 =?utf-8?B?dFpzajhodm5TZlg3ZzRpQzRrUzMzZGNuMVdqZVc3YzhzMW44TUVsTEsxRmp6?=
 =?utf-8?B?Q2tad1JYYWttd3VUemRQV21CQ2RXOUFvSnVpdzR1VmFZZ1BuQm1ITWJqb0FS?=
 =?utf-8?B?d0g3Ni85QjY2MWxOMzAvcFhxaDFEbTlUUi8zMUZERUtkUWtVWnBSK2d5SFNM?=
 =?utf-8?B?dHJ1MG5PU2tPbWFpNGgwZEJTSThOL01neEJJTDJOeTVjd2Z4R3ArZjZSaXNu?=
 =?utf-8?B?N2pXT2tpOEdDdU5TdXhQRzlEckRIby9WTURYbXhtRVNGc094bEc3RjRzb1Mr?=
 =?utf-8?B?KzdINjRDSzM2a1NsMEp2SGVhUWdhaHpCUFFLQ25HT2NXbklvQUpPNDBGRjNK?=
 =?utf-8?B?QkE9PQ==?=
X-OriginatorOrg: navimatix.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 9dcab4ee-7c64-40d3-2993-08dc9cf45ccc
X-MS-Exchange-CrossTenant-AuthSource: DU2PR01MB8293.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jul 2024 13:14:12.4294
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: c87b4f54-b992-4813-8f3f-4a876324197f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QMU6648l1yLSykvNkYndUALEjjHgWUN8dwZm9bZh7eEnZbmL9eYwpHkp+yuclI9QGDqBBXkEtJB5eRhCXmnWWy3a13UlC6K/SKZHENFRicQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR01MB10838
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 Jul 2024 13:14:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63438

--4sxwy6nu6cc6mdbx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: How to get u-boot beside the image, but not inside
MIME-Version: 1.0

Hi,

for setting up a device I need a bootloader and I choose u-boot. How can I
build u-boot along the image, but not include it in the image? I found
EXTRA_IMAGEDEPENDS and added (`+=3D`) virtual/bootloader in my machine.conf.
But this only works on the first fresh build.

I didn't found the reason, but the files are not created if there are no
changes in the recipe, even though the files in build/tmp/deploy/images/=E2=
=80=A6 are
missing. I'm using rm_work and a state cache outside of the build directory.

Which dependency might missing or what can I do to ensure the u-boot files
(and links) in build/tmp/deploy/images are always generated?


Thanks for your help.

Regards J=C3=B6rg

--4sxwy6nu6cc6mdbx
Content-Type: application/pkcs7-signature
Content-Disposition: attachment; filename="smime.p7s"
Content-Transfer-Encoding: base64

MIITyAYJKoZIhvcNAQcCoIITuTCCE7UCAQExDzANBglghkgBZQMEAgEFADALBgkqhkiG9w0B
BwGgghDNMIIGEDCCA/igAwIBAgIQTZQsENQ74JQJxYEtOisGTzANBgkqhkiG9w0BAQwFADCB
iDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCk5ldyBKZXJzZXkxFDASBgNVBAcTC0plcnNleSBD
aXR5MR4wHAYDVQQKExVUaGUgVVNFUlRSVVNUIE5ldHdvcmsxLjAsBgNVBAMTJVVTRVJUcnVz
dCBSU0EgQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkwHhcNMTgxMTAyMDAwMDAwWhcNMzAxMjMx
MjM1OTU5WjCBljELMAkGA1UEBhMCR0IxGzAZBgNVBAgTEkdyZWF0ZXIgTWFuY2hlc3RlcjEQ
MA4GA1UEBxMHU2FsZm9yZDEYMBYGA1UEChMPU2VjdGlnbyBMaW1pdGVkMT4wPAYDVQQDEzVT
ZWN0aWdvIFJTQSBDbGllbnQgQXV0aGVudGljYXRpb24gYW5kIFNlY3VyZSBFbWFpbCBDQTCC
ASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMo87ZQKQf/e+Ua56NY75tqSvysQTqoa
vIK9viYcKSoq0s2cUIE/bZQu85eoZ9X140qOTKl1HyLTJbazGl6nBEibivHbSuejQkq6uIgy
miqvTcTlxZql19szfBxxo0Nm9l79L9S+TZNTEDygNfcXlkHKRhBhVFHdJDfqB6Mfi/Wlda43
zYgo92yZOpCWjj2mz4tudN55/yE1+XvFnz5xsOFbme/SoY9WAa39uJORHtbC0x7C7aYivTox
uIkEQXaumf05Vcf4RgHs+Yd+mwSTManRy6XcCFJE6k/LHt3ndD3sA3If/JBz6OX2ZebtQdHn
Kav7Azf+bAhudg7PkFOTuRMCAwEAAaOCAWQwggFgMB8GA1UdIwQYMBaAFFN5v1qqK0rPVIDh
2JvAnfKyA2bLMB0GA1UdDgQWBBQJwPL8C9qU21/+K9+omULPyeCtADAOBgNVHQ8BAf8EBAMC
AYYwEgYDVR0TAQH/BAgwBgEB/wIBADAdBgNVHSUEFjAUBggrBgEFBQcDAgYIKwYBBQUHAwQw
EQYDVR0gBAowCDAGBgRVHSAAMFAGA1UdHwRJMEcwRaBDoEGGP2h0dHA6Ly9jcmwudXNlcnRy
dXN0LmNvbS9VU0VSVHJ1c3RSU0FDZXJ0aWZpY2F0aW9uQXV0aG9yaXR5LmNybDB2BggrBgEF
BQcBAQRqMGgwPwYIKwYBBQUHMAKGM2h0dHA6Ly9jcnQudXNlcnRydXN0LmNvbS9VU0VSVHJ1
c3RSU0FBZGRUcnVzdENBLmNydDAlBggrBgEFBQcwAYYZaHR0cDovL29jc3AudXNlcnRydXN0
LmNvbTANBgkqhkiG9w0BAQwFAAOCAgEAQUR1AKs5whX13o6VbTJxaIwA3RfXehwQOJDI47G9
FzGR87bjgrShfsbMIYdhqpFuSUKzPM1ZVPgNlT+9istp5UQNRsJiD4KLu+E2f102qxxvM3TE
oGg65FWM89YN5yFTvSB5PelcLGnCLwRfCX6iLPvGlh9j30lKzcT+mLO1NLGWMeK1w+vnKhav
2VuQVHwpTf64ZNnXUF8p+5JJpGtkUG/XfdJ5jR3YCq8H0OPZkNoVkDQ5CSSF8Co2AOlVEf32
VBXglIrHQ3v9AAS0yPo4Xl1FdXqGFe5TcDQSqXh3TbjugGnG+d9yZX3lB8bwc/Tn2FlIl7tP
bDAL4jNdUNA7jGee+tAnTtlZ6bFz+CsWmCIb6j6lDFqkXVsp+3KyLTZGXq6F2nnBtN4t5jO3
ZIj2gpIKHAYNBAWLG2Q2fG7Bt2tPC8BLC9WIM90gbMhAmtMGquITn/2fORdsNmaV3z/sPKuI
n8DvdEhmWVfh0fyYeqxGlTw0RfwhBlakdYYrkDmdWC+XszE19GUi8K8plBNKcIvyg2omAdeb
rMIHiAHAOiczxX/aS5ABRVrNUDcjfvp4hYbDOO6qHcfzy/uY0fO5ssebmHQREJJA3PpSgdVn
LernF6pthJrGkNDPeUI05svqw1o5A2HcNzLOpklhNwZ+4uWYLcAi14ACHuVvJsmzNicwggWB
MIIEaaADAgECAhA5ckQ6+SK3UdfTbBDdMTWVMA0GCSqGSIb3DQEBDAUAMHsxCzAJBgNVBAYT
AkdCMRswGQYDVQQIDBJHcmVhdGVyIE1hbmNoZXN0ZXIxEDAOBgNVBAcMB1NhbGZvcmQxGjAY
BgNVBAoMEUNvbW9kbyBDQSBMaW1pdGVkMSEwHwYDVQQDDBhBQUEgQ2VydGlmaWNhdGUgU2Vy
dmljZXMwHhcNMTkwMzEyMDAwMDAwWhcNMjgxMjMxMjM1OTU5WjCBiDELMAkGA1UEBhMCVVMx
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
DgYDVR0PAQH/BAQDAgWgMAwGA1UdEwEB/wQCMAAwHQYDVR0lBBYwFAYIKwYBBQUHAwQGCCsG
AQUFBwMCMFAGA1UdIARJMEcwOgYMKwYBBAGyMQECAQoBMCowKAYIKwYBBQUHAgEWHGh0dHBz
Oi8vc2VjdGlnby5jb20vU01JTUVDUFMwCQYHZ4EMAQUBAjBaBgNVHR8EUzBRME+gTaBLhklo
dHRwOi8vY3JsLnNlY3RpZ28uY29tL1NlY3RpZ29SU0FDbGllbnRBdXRoZW50aWNhdGlvbmFu
ZFNlY3VyZUVtYWlsQ0EuY3JsMIGKBggrBgEFBQcBAQR+MHwwVQYIKwYBBQUHMAKGSWh0dHA6
Ly9jcnQuc2VjdGlnby5jb20vU2VjdGlnb1JTQUNsaWVudEF1dGhlbnRpY2F0aW9uYW5kU2Vj
dXJlRW1haWxDQS5jcnQwIwYIKwYBBQUHMAGGF2h0dHA6Ly9vY3NwLnNlY3RpZ28uY29tMCQG
A1UdEQQdMBuBGWpvZXJnLnNvbW1lckBuYXZpbWF0aXguZGUwDQYJKoZIhvcNAQELBQADggEB
AANadCCx1OE0/PYv8CMHn1qrbn3u9yIQuut1yAVv1daof2ULxyGOm/M+XnSW1h+xcUukaNTB
qwJx6KTauuWjVL1LRXz9+sNvQfS1KdJF9yfgcCTiIMNjfKap+t/dD275tpVeLbRSWyJaQRhb
GVjarr8yry1mnaaiJqv1TERaHqjDNpEwU/Ex8XetmkdJK01qCP+ZOEHwRr/pEB/oEKYB08+P
CfWWWT0YVlwW3FdYpMi70zyynhyE0ZkxBuwh20CulXlafk9nzu1ly9HDU2MG6fnKLirJLOj1
+9s6RvytgsBtk1dB4lJEMe32RnTa4ABWg2VpdqmG7wjr2BlUCzLzuxUxggK/MIICuwIBATCB
rDCBljELMAkGA1UEBhMCR0IxGzAZBgNVBAgTEkdyZWF0ZXIgTWFuY2hlc3RlcjEQMA4GA1UE
BxMHU2FsZm9yZDEYMBYGA1UEChMPU2VjdGlnbyBMaW1pdGVkMT4wPAYDVQQDEzVTZWN0aWdv
IFJTQSBDbGllbnQgQXV0aGVudGljYXRpb24gYW5kIFNlY3VyZSBFbWFpbCBDQQIRAPzh908c
7MYmJwWouN4Q9n4wDQYJYIZIAWUDBAIBBQCggeQwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEH
ATAcBgkqhkiG9w0BCQUxDxcNMjQwNzA1MTMxNDEwWjAvBgkqhkiG9w0BCQQxIgQgPd9YaRoJ
gWO0Yaj1Oq5KmZWcUI/eJGw2Dgs7gOnswacweQYJKoZIhvcNAQkPMWwwajALBglghkgBZQME
ASowCwYJYIZIAWUDBAEWMAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzAOBggqhkiG9w0DAgIC
AIAwDQYIKoZIhvcNAwICAUAwBwYFKw4DAgcwDQYIKoZIhvcNAwICASgwDQYJKoZIhvcNAQEB
BQAEggEAmAeqHPIYKl/a7J+m/SP+vwG+T3JWhHWNt0YGmAzFeSCWBIEu9Sr5CjmZLeZrJWIU
e2WYcYbKn+p7cKaBNMFfZvKC7zsnifzodaneLjPBpYzTpaKzXgolG4sD3MCKK6ajMd3/zlzR
22751Q+iRHUkgEhGWj3ZqQJwKzdUEWGmwYaZcxw7s0sIvS5h62tIhMZek17diEc7lFFezChJ
YLh+WU9mwbk/wVV1nhQpEar8Yo0mxAXt0nX4BQt9TpjJ4ohuHzWKjkWcCcm+EJ34PyV89NnA
V8avPEeYn4HxoyS8iabiZWTZp9eN4IlcDRU1zEf/N+iphmHNiSvdq1o0x0Wqcw==

--4sxwy6nu6cc6mdbx--

