Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BEAAC32771
	for <webhook@archiver.kernel.org>; Wed, 28 Sep 2022 07:58:47 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (NAM10-DM6-obe.outbound.protection.outlook.com [40.92.41.104])
 by mx.groups.io with SMTP id smtpd.web10.5299.1664351926189669588
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Sep 2022 00:58:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=rmemoP6B;
 spf=pass (domain: hotmail.com, ip: 40.92.41.104,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QEDWHmIXcq7z2Wb7eLJSWd69NksdnzRlLc5Vm6FLPUHHHr3YZ0YPKWv/1UdFY+fVqlRnhBaMrmuFpY/231ZPQWsVVfm6AYrd4b7SbOSz6H6U/sZwbQq/V173W/GsCA/qnv6UBe7QAz5/lKE/EcFArFiV+hQ1DSY6WyNcRAsWIIvCAkV4lSvLcK3n8dnhmZE7MuZJmJ41VNYgbxx+z70aI1yhV0IN6ytvIlwIxfFIeHYrOsWDaOFlQd5AFzroJK9kpFW9DvML7/d91iBLxyGQZLv1JZYZURy9eYbVTsqPqJCeftVjlfzugnahOcPGNsQ+nEtim4UCKgvgoWoWs+/LVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1TAWliINplbgFhkC9JLqgIJ+1Rut49cZ/luHwk3n5AA=;
 b=UQ4kEx6Vmo0JorTwudfbgM6S5k76HstlcfWvJhNSHVZZvZSNDic1Rof0SLqFWC+pr0eDnCIO4KboAzGYAO2cCDl0ymPLoKCUY2tl+yA240hSLJjIGzZfLL7u4rmm59JvVDjmjG5yfQR0YIKxFPVOLRWEwh1SSiBYBZBOtuWpnGwwy2kD8uMfxYBFBgdQGDIi3UCEUcFfJqeTqPvbYNcrR+ClTfv2bSDOVIabxas4mP6Y8m4SjtXYWJmOMPeQN+ZSMC3No1O0dKQVzCnlrlWEAaofZJLE/4YnaQoBPsEasD0L0ulcJDY+2kM7TGHnDn+DIIMWUa7Lm+qefW63xYrVsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1TAWliINplbgFhkC9JLqgIJ+1Rut49cZ/luHwk3n5AA=;
 b=rmemoP6BFkOmoTHm9VaghxITWCh4c2BA5BC4EyK1IbpDqs7CP5pWsalEy0NtZZpWedwh5kAGHjhGZiREI9VNgCwizl+3b2Ey7mMwC7VpR5iireM41ryRXRfv+BRwrRtWr9zrDq3DFFwSX0MOisVN2QazW28KClw0kth/+HzMdYveue34axxLy1f//rJV6FO0hzi2SGQ5SaifWnOy5AB5cOJNfoA70krGH0Idgnyaeu9lIKgNrf8+jFDmUhdKZVByhcmLMDNaMzyejv72ACrmkx09JyumxiBwPjO0vJMHcMOHXQbbtQ+tA2pUId4DZLKy0DKXb41LFZZYNSSmpZGIxA==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by PH0PR84MB1718.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:172::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.15; Wed, 28 Sep
 2022 07:58:44 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::3a10:f0a6:51fa:ae01]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::3a10:f0a6:51fa:ae01%5]) with mapi id 15.20.5676.017; Wed, 28 Sep 2022
 07:58:43 +0000
Date: Wed, 28 Sep 2022 09:58:37 +0200
From: PHIL <heideggm@hotmail.com>
To: yocto@lists.yoctoproject.org
Subject: Changing git url of qemu
User-Agent: K-9 Mail for Android
Message-ID: 
 <PH0PR84MB183515506D92EF8DE17EDEDDC7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: multipart/alternative;
 boundary=----EJ9ZGTANAVCIDKGST7XQ9NRK0YFSRB
Content-Transfer-Encoding: 7bit
X-TMN: [iri2gfXk+yE09bWSgaGUg3nXqvKKA/rk]
X-ClientProxiedBy: FR3P281CA0170.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a0::18) To PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 (2603:10b6:510:162::16)
X-Microsoft-Original-Message-ID: 
 <B4BA0931-D3F8-4AFA-88A9-EDBD712007DB@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR84MB1835:EE_|PH0PR84MB1718:EE_
X-MS-Office365-Filtering-Correlation-Id: 80a99f5b-a513-4ed5-75c6-08daa127439f
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	G32QpFZwVj0rORxCStipgsfel4B9htwenIDhiwIsAfT8cH8yrfe8GzIDnUwgolyiXUZkWgXfkHCMYXwCgMQyyV17DJz0WWZ4ryzsVFTizwC/GrYykWp0IqPK3hsNLSB9FX6VUmHU3s2Shi7wUzDMfuX3J10UUHDbTx2eGvqCDv0tUQaO3Ing0w4wJai7FkKVCg3tJY54h8Php7KSeLw6YblCRiRWPdbvK/fEyII7sdD5ddhEJsbNqxiMJQtOmWNpAsX8CxDrEfuWlxmHBkWY4BY6bSm5/nYz3wiesz7JfH64G0py4m5454BpqFvjbZNtLTztzrHNPe03EGhVbmEAZnwa/Y7EOZzckbIkl4J73TUHw5QWxyLUtHVVZxGxAvhcOTHeTxVfFhMi9wVrOx6DfHZJg0lqs155rZ7K82I4EnyQ5DVvDBokTvYrneAP2hBricq4pTVAEB5aeosIgpq0xJrSHsdzv3iO42F+tjR/WDOpiv0oU0BnxnUcswXkxA6C1wWrR0cYinvIfHCdcVuBFS7eQjY+6qkUNJ3mct2xCdNCHaPHoT120usqZprcVki5rmV/k6CkdA3Pw+fNAj1fEAQrZYC2TD5E6JvBCErBB4al2n9x8uun1TQIi91LLWcMVj9iZLrILGjeRPxt2WXOvw==
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VDgrd0kySVhwdEVVajltVTFVSmk3eGxWZzRhbUNFTFViQjlqUFJML3hzNlVN?=
 =?utf-8?B?d1FwTGFzNWYxNitLZHhKRUhSR0t4WkZNeXNiRnRyVlNMSFpWTzY0Zzh4YWtW?=
 =?utf-8?B?Nm91aDE3c293UXJid2hPNXI3SFpqVTNhV21VSVBQNlg5d2NudWtsVWR3enRN?=
 =?utf-8?B?M1BTSGdMQkpxQm1GOVRsdEJiZk4vQkYzTkZ6RjBXNjZHcUtEc0Y4Z1E3ekcv?=
 =?utf-8?B?c3AvWVBUU2pRZ0U3enlYM3hUU3E3ck9aUHBnTzFpNFBaS2lxUlVVbW05UVdh?=
 =?utf-8?B?cC9pa2RRU3Rxc2R0bXNVVnprY05oc1pZclZ6VHZ4c0ZEMWhNdS9ZeVUxUVk2?=
 =?utf-8?B?UDNlN0xldk4xcFpGZk5saG5SNldkN3poVlVVS2ZTT0dhcEpWWStud1FOeXRJ?=
 =?utf-8?B?WnRsaEhlcTF2T2ZSbjZHOTNWT3gyMTMwU21VZ21SZjRCVlRvaGU5WU1xR25M?=
 =?utf-8?B?SmMyMHRHVWhXWjhWcHdxc3pPZlVueEdNWS9OaDJxZjdsTklZTzl6TTJ4dFMz?=
 =?utf-8?B?NEU0R0RxdmxxWGhuSVJ1c0Uxb0Nvb2hHazlrOVZBaFhLOFdxN0pRVTlTMHBN?=
 =?utf-8?B?YVp1NHZCR0lOdHlMTjE4YXNPczM2QW1XYkU5Q1RYSTFCeUZ0NEd2SWU0aG9F?=
 =?utf-8?B?cWdBRjFZZ0FhQ2hHZ0RldzZBdXR4NHUyMGVmUnhYbTZlSHZDeldEenpHWjNw?=
 =?utf-8?B?Q2xBVzlobnFsSWlPUFUzOVlmU1d5ZTAzNVVpSmI3WHVaR3lXaFZnWjB3REl1?=
 =?utf-8?B?WXVlaW8yaWVTazBKbHJMWFdDcmRPZWhDMUE4NGQzRkNjSjdocGlYZGNhdnQ3?=
 =?utf-8?B?Q1hYS2JxNE5rb1QyQ1NPN3V4RUVtdG1HU25uTkdqbEVjK3pRNG5penpuYUZB?=
 =?utf-8?B?cUNEQ1VBT3dXUVFISVdmUHlpZXZxb1EwNDY1OFJqU1kzelBkcWlobndaZm9w?=
 =?utf-8?B?aW5ocy9CUWsvR3kwWmdIa1ZBdHhuVnlEQmsrcXovQTRNMTZJS0w1MmxuOXFJ?=
 =?utf-8?B?R1JXSkZNK2JKV2VrZ0JIMkgwOER1TFlVbFRESS92YkhVVVNHRzVxVVM1ZTh0?=
 =?utf-8?B?YXhQZTJFVlhmRzlnaXlpMFVqUUJYblQ2K25adHBJZzlrSGpZQWtFTStaQ2Ez?=
 =?utf-8?B?alNRRllabld6amhzMFZHRkpCdUllWURSU1ljb080NVlZaGdUai9KejBjTjlD?=
 =?utf-8?B?TjFrV0RmOUtSTEF0SHJ4TzRXbjRvNEc5bmM2bk5BLy8rZndxeFE2ckRyeDNE?=
 =?utf-8?B?SHRNRWdpNWR4N1V2cWk3UmphR2hIaGJXaTRGUVFJNnc4b2NsbklOWU83Undn?=
 =?utf-8?B?c2hEU0dzcjU5NDBnUWNOc0QzbGhvZ2tzRDBkL2REbnhlbWNpTnJhMjVhVTZv?=
 =?utf-8?B?WVR5STg0QXBiYjl6d25pWVFlcXBlOWxlb0gzeDRrMDI0ZW9nVXF3Q0dNR1Fh?=
 =?utf-8?B?MUQ5clkwR1VWUjMzVEVpSjhUVjRnMldtUkZZZjRaN1NmTS8waUg0OTdNakFZ?=
 =?utf-8?B?bWhiOURsc0Z5NVFMSFM5VmthQ25uSGUyWXlTemdKbW5jWitCczVQL2g4ZnVu?=
 =?utf-8?B?Umd3Nk13b1Z0NHpHVGhTR21QdWhmTTlQdVBEWk15QVowYm5FVWloY1FleFdt?=
 =?utf-8?B?VGtWeEhvV0tlSG9CRG9FNGNwVlZXQ3JHOFdpakFLVHhadWpRbWRMRlBBamRz?=
 =?utf-8?B?cFlmNFZNNlZJM2IwRDVXNTNMZVpqN2xwamgrV3EvdlVaK2FoNzFUUjJBPT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 80a99f5b-a513-4ed5-75c6-08daa127439f
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Sep 2022 07:58:43.8853
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR84MB1718
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Sep 2022 07:58:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58196

------EJ9ZGTANAVCIDKGST7XQ9NRK0YFSRB
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Greetings,

I want to change the git repo url in order to test the Venus driver=2E Can=
 someone tell me which variable in which recipe I'd have to set?

Regards
--=20
Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet=
=2E
------EJ9ZGTANAVCIDKGST7XQ9NRK0YFSRB
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"></=
head>
<body>Greetings,<br><br>I want to change the git repo url in order to test =
the Venus driver. Can someone tell me which variable in which recipe I'd ha=
ve to set?<br><br>Regards<div style=3D"white-space: pre-wrap"><div class=3D=
"k9mail-signature">-- <br>Diese Nachricht wurde von meinem Android-Ger=C3=
=A4t mit K-9 Mail gesendet.</div></div></body></html>=

------EJ9ZGTANAVCIDKGST7XQ9NRK0YFSRB--

