Return-Path: <joerg.sommer@navimatix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF6E8C3DA59
	for <webhook@archiver.kernel.org>; Mon, 15 Jul 2024 20:40:22 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.117])
 by mx.groups.io with SMTP id smtpd.web10.2357.1721076017673451486
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Jul 2024 13:40:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@navimatix.de header.s=selector1 header.b=iTNqPA2s;
 spf=pass (domain: navimatix.de, ip: 40.107.22.117, mailfrom: joerg.sommer@navimatix.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u5PICLkLJL2OR7TRhmlPaJdXpGgGftLDK4+22oKM0OtaZLLunDZOqG9DrcYUQgcWmeUaAK7kEtXZ0meJBqHC6g9EN86HuPlr4DFZaMXSeXJM/5FW5v5Gp5sy0Ucaxipe6STSFCBfKB72v0CGR/Ah6rndNwRXkKT2aI4v5auAzLY99aRKeAnhGHeDtXbqIk04IwW1rKcSeDeU+LIaITIon+ItoWmiOFr8MYqsaTYgRdARYvNwfo8jnqeF90dZoIdq8tlas9giJBRS4dr4534vyrHOwNcT6FUtgXkkIKcc9VmqyWtU6PcZPr/WG0JzasqZ6JBNdwyjxFYDpi6CZhr5ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WjnFKPRzX/N0suwhV4xdto5ryQ9bLoLS4SMSNd8YclE=;
 b=mGQlB3hYuBpgaNkn3UGZI0Nrra2hzv/dQ/+yvZSZWn1zv/qGNTEtS1Mnj5Z7t8F9HzIqNZG24MWrsWpARARJtt7lrNmiKMy0E8ogTzICinPD3z/wvJ6ihpJmORoY24CjIBbKO54kYb7LO/nqDHVz8w/Csw3JUApDuxVZMPZDtPYclawVhnGCwt010l0r0SE2b0Q5Wn7ivOEtuqKW5J/K2vZM6MHS0atlPW5psmKcSWLcfe4OODedpjok/41nkAF7EOUWxlbesNvVMhVqkAk/XyixSeHJbQkqrO3CiK1cvlqZy1t9fbWtgMKkWpM8iegJYBTSB50zuPOYTuOkgpQ7zA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=navimatix.de; dmarc=pass action=none header.from=navimatix.de;
 dkim=pass header.d=navimatix.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=navimatix.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WjnFKPRzX/N0suwhV4xdto5ryQ9bLoLS4SMSNd8YclE=;
 b=iTNqPA2sdu7pv26g7TS72DjC9c6WsTsiZ+jLxPBrFaQstmAoxL3qkhHF6gcx1cbHS/wGJwnwJWxLO7AqK4ass6zW9lU7K9AMGyzKJSNaL7G+c76/M0sXo7FtMfSiYfxr+YXBeBD/y3kW/xAXXS5LQFv2pKhnAeHmnTooTt2HGv4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=navimatix.de;
Received: from DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:2d4::5) by PA6PR01MB10447.eurprd01.prod.exchangelabs.com
 (2603:10a6:102:3c9::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.28; Mon, 15 Jul
 2024 20:40:13 +0000
Received: from DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 ([fe80::d520:1b9e:a30e:69a7]) by DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 ([fe80::d520:1b9e:a30e:69a7%3]) with mapi id 15.20.7762.027; Mon, 15 Jul 2024
 20:40:12 +0000
Date: Mon, 15 Jul 2024 22:40:10 +0200
From: =?utf-8?B?SsO2cmc=?= Sommer <joerg.sommer@navimatix.de>
To: yocto@lists.yoctoproject.org, G.Kautzmann@primes.de
Subject: Re: [yocto] Exception during boot process, any ideas?
Message-ID: <55zqpriyijpxcuhsfith3rzci4t26hyjph6ls4dljswlhmqoox@aqnghlm2skwh>
References: <1619D009AA8C9E469331A8EE22395AEC01106D1AB7@Exchange2013.PRIMES.local>
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha-256; boundary="dbp4ayrpa4git777"
Content-Disposition: inline
In-Reply-To: <1619D009AA8C9E469331A8EE22395AEC01106D1AB7@Exchange2013.PRIMES.local>
X-ClientProxiedBy: FR3P281CA0121.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:94::8) To DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:2d4::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR01MB8293:EE_|PA6PR01MB10447:EE_
X-MS-Office365-Filtering-Correlation-Id: a828dae3-a1ad-47ac-53b0-08dca50e5369
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: 
	=?iso-8859-1?Q?VijvpXKp5dsvx7a4hAa5D7Zfzc23ZDCBqDDqQVY4TQzHnFGpdCTV0LYfZl?=
 =?iso-8859-1?Q?F6+Z550UHkLRwL6ouv7Xt+RXmCbuVYojXB4Iq3HIq95ZydQV8CK8c6Jk9B?=
 =?iso-8859-1?Q?wdLtTRKQSrrNsiO1+erqiv98aLYiYMO7qNho5Fpmi7AnTjZnbO8UKCyI0R?=
 =?iso-8859-1?Q?/We9qKj4ldlOdZNsBEsK96ZWbZt/j5J1uvpte9TAPZzDt0EvlJuh1USGD1?=
 =?iso-8859-1?Q?lHONVl+2FuZKj0aJLFv9TNADDAJTMtavP5DpXWhAYzToBP9h0e18ZrhLzw?=
 =?iso-8859-1?Q?OqhR6f83IkfAukMnePPNgqOAFPV322BmppDYqP4k2O/7IULiUgPbffzMJV?=
 =?iso-8859-1?Q?JfwCFrZETw2/VO3DSbWqKxzB7gi+KRgOeY1DhYJfmbymaQmv82hBSXtXFL?=
 =?iso-8859-1?Q?5peBBU5uVnDad5FT4CmWC/2iDEd7hBBE2XdQ7naf7FTfhkagHV49QZW6Zm?=
 =?iso-8859-1?Q?FbxAVyrerz7KtFY9TMQeyEn5eVv8LgDwx4SrrhozsSPMsYWNtmBjYKBxnt?=
 =?iso-8859-1?Q?551cewFxhx1AyY7tmfZnicS9/UX4H3hgo/y3qvq9Ur+jyRKUnQqsd28Dng?=
 =?iso-8859-1?Q?P4/CSeZIOiZKddzFJvu0q/RXTyqYsRMyPMocsdDjKRRzo3ULMdXzIYUQ4g?=
 =?iso-8859-1?Q?ovVUODbggF2QKzGKeaZ+Ok7zqboYF1Po2Tsie7FteMO9coQujoHnxrdKiq?=
 =?iso-8859-1?Q?PSN+Yr7+hAt4G+EEwWjt2FS/FqdOySi/J+FpVuI5sboSn0yT3Bn17pQrd+?=
 =?iso-8859-1?Q?/fE7zw6UquKV77yFyJt6f/+8RVawNstxvBUeDV1F0s/1f+UNxXxb4dhCqF?=
 =?iso-8859-1?Q?sK1ZfbFg6TBmkJmL3/eHrwNVg26jgjpmwEcUUFftwt2QQ77D8/+uzqKada?=
 =?iso-8859-1?Q?J8N2L8Rdxtu8rMDGxrCZZnPvW7BMGpGpxU5TknS7bp0QL0LZnM1x3nZKiy?=
 =?iso-8859-1?Q?9CKjRu8JoM+XhscqK0NQSIv4Gwr1B+sYYCskzadhKu3rcewRDBK3iKayY4?=
 =?iso-8859-1?Q?xM7SIzFwANLTDbJHE3cW17R5tgv5A0A7kSf0KUWAU98PDD7KVXZyEfUsrx?=
 =?iso-8859-1?Q?8FKQqV14IQmhV3ypvhQD8w5JEzxtVmAJTSawljV/zfDYcAXTWAZeyqmgjO?=
 =?iso-8859-1?Q?jPW0NfusMmtZID/pexPmwGg3LWDmvGCrA1+V2ROckyE0hLxWCwEcKGSSqb?=
 =?iso-8859-1?Q?ApbN7AXkjFUvrzybDiV1+qxKBow9BWnh6jtPyuTHP+qbwmGsQHbpQNCv+Z?=
 =?iso-8859-1?Q?Jr3vOd2dELLbiFoxxGWY912FckSQBvkbxfWo89iOtU+yR8cSfS1ZXpFXPR?=
 =?iso-8859-1?Q?LFihI98fL2/fyWcJToZFMwrp/9wYZ1IFBda0HMBfJ/W6Bdh6DOf3OPnphq?=
 =?iso-8859-1?Q?T0/yaQg7ELRpXiU0qgbVmA3XZOpXlHNg=3D=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR01MB8293.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?iso-8859-1?Q?8OSADt1mb8l4+R/rr/5zy85SfVS2yun9nMDxY1PqV/RH8s6cLuHU+AImBt?=
 =?iso-8859-1?Q?vXFSTMydizarNheVi3n4fMiMldjOqGCUtHIO2U8sVj38bviXl+y7bcASv3?=
 =?iso-8859-1?Q?rbYNVVA7x+nGX++vp9p1P3pV3BDNOrt4Gcj67Yl+jb2kULMDKdjfi02npO?=
 =?iso-8859-1?Q?pcm4ony1Yd4hWJgXxXfW6fGiFEixmzzFTPsB8CaOEfLPnZo6BoRQNxFDXb?=
 =?iso-8859-1?Q?K6FSXFE/3HSjlw21CWbT2bv51KYofknkqqpU6rp+FbtAWhCWqIX7t433Dv?=
 =?iso-8859-1?Q?iqY6PQnLgCYcESu6Ag2Oj5YaCtluUZ6zi/R6bBzreoyY4Zy7L/m9uPbOaF?=
 =?iso-8859-1?Q?w6OMwhK0QqvOG437bRD9ugXF0i4ilAiJghvGDpsyI+w3ES95oN4LlYXRmH?=
 =?iso-8859-1?Q?eBKb98qy08jdOsRFF33Ug4YHwH3lf/qFJs89qWtou78wHJPhoI4IjD5il2?=
 =?iso-8859-1?Q?OmNtclq1jbYVvXZFF0sNdUCU4ulmEpVev5IX39rbA60sCifbVDn5AftFd7?=
 =?iso-8859-1?Q?3Bg3SIa9f9yuGIpIIBTHVataQtTJcvT4HdzAP2Dd2aud1iRTIfLFloqU9N?=
 =?iso-8859-1?Q?TpKuKW1AE1pPScOpH0zu0VMFv/5SM618bgnnt2UY2phw0kXGQ1IwuZ/DIn?=
 =?iso-8859-1?Q?Fvfg366xiwuBGnIC3Z2OeB5nzaa0YWPjTbd6AwTpoaZiEHrDgSI8+ypnRv?=
 =?iso-8859-1?Q?GUhAvW6c49FHEepKXnVi/CzW2KWeMtjRlmSn4YV8FUznjTpqKcesLL6l4T?=
 =?iso-8859-1?Q?896mqdyuh4CNvWTkfgaoKTUUan3/aRoZ7dSDxEsp95zFfFCLkMzNE5QVSG?=
 =?iso-8859-1?Q?334BoB1+6uLGJ8M5IWlIEJuJKKppGkkBasRtxVQKRNu4FMDrooJWM9BLab?=
 =?iso-8859-1?Q?fu86UA+YHlryOTOCybxeVTr7ZCwXLCI7QQJKXwbhwGEo7U4hUenVP3QvG2?=
 =?iso-8859-1?Q?i+OyniBaYGxI1ctdz+qobAe9EYmQvh6ykzL7ZNFtOvoNFG8WXelAb9YdQv?=
 =?iso-8859-1?Q?qReSx5DpUed/XK0nY4Pjs8kDEahuVsisaV2xsAK2DU1g6uxfne+JoYW582?=
 =?iso-8859-1?Q?zTN6zOzLu6165oMdSUjF/Arig26ivrM3t7nqCLH3ZUxUfE5vKEkEPrZidp?=
 =?iso-8859-1?Q?2ByqU3gCy8YK6HyXMc8IZGM32ZhDHhsoosvjzb+Bh0Ub+Vxh6VcieBjb1+?=
 =?iso-8859-1?Q?dyZVrLxxEs8Hi1fBw4MTtk4GhVoCs855iAH0VDX7oBULtMA9Z9+VrhXzrV?=
 =?iso-8859-1?Q?p4/Da4LpF/Dk5vIvoZu2ZxUKGgL5abtyUvDEZzS4lpzoX5oZuqpQdv2vbA?=
 =?iso-8859-1?Q?4ApLtzlk/bp8u0Pzzkqd36yTI7x3xKjQjS4b3Z884GqCdRK0yjH0GBXZhR?=
 =?iso-8859-1?Q?vcmILF/5H0aAx/4vsDNad/6r/lcDyVc5Zq/Qm1Uw7UGYHPlGs4PzS/AKor?=
 =?iso-8859-1?Q?steWFV1F1viTkw7ldPlFFZQurGSG+8TMxiksebxyC+tzHiNxtq/IdTCMCC?=
 =?iso-8859-1?Q?nZMgEEdoP6InTsivMWE1OfYlKGgZZdMOfGFscvfNOhJEwW6fvU3Ze0IUeJ?=
 =?iso-8859-1?Q?Cxssw4373MVqikw5cjqi72ByXgzenJmAAP19OboDcjNvP6GHy49rrjOFf5?=
 =?iso-8859-1?Q?6GFjdxyKpvY2sArnxCGJVHBGgEuZW/tO5TEAujK2ONBAl1ji+0Nxru7Q?=
 =?iso-8859-1?Q?=3D=3D?=
X-OriginatorOrg: navimatix.de
X-MS-Exchange-CrossTenant-Network-Message-Id: a828dae3-a1ad-47ac-53b0-08dca50e5369
X-MS-Exchange-CrossTenant-AuthSource: DU2PR01MB8293.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2024 20:40:12.8390
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: c87b4f54-b992-4813-8f3f-4a876324197f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0PcRb5jCfr4SDB3nQDLLtlTu6CPnpDdH0oAuDLymtjVqI58LYK71FnxQALoCDBrSTmrjnVGWMBPIt4i6S5LT63XYkW7O1YdUckH6XeFdI30=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA6PR01MB10447
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Jul 2024 20:40:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63502

--dbp4ayrpa4git777
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [yocto] Exception during boot process, any ideas?
MIME-Version: 1.0

Gerd Kautzmann via lists.yoctoproject.org schrieb am Mo 15. Jul, 10:25 (GMT=
):
> sh: cannot set terminal process group (-1): Inappropriate ioctl for device
> sh: no job control in this shell
> sh-5.2# exit
> exit[    7.716845] Kernel panic - not syncing: Attempted to kill init! ex=
itcode=3D0x00000000
> [    7.724835] CPU: 0 PID: 1 Comm: sh Not tainted 6.6.22-v7l #1

This looks like a bash on a raw serial line. Try booting with
`init=3D/usr/bin/busybox sh` or include screen/tmux in your image and use
`init=3D/usr/bin/screen`.

HTH J=F6rg

--dbp4ayrpa4git777
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
ATAcBgkqhkiG9w0BCQUxDxcNMjQwNzE1MjA0MDEwWjAvBgkqhkiG9w0BCQQxIgQgKvkup5u0
07RTWQmHN7ai4PVM6wXWjP1QokEQWW5vrMMweQYJKoZIhvcNAQkPMWwwajALBglghkgBZQME
ASowCwYJYIZIAWUDBAEWMAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzAOBggqhkiG9w0DAgIC
AIAwDQYIKoZIhvcNAwICAUAwBwYFKw4DAgcwDQYIKoZIhvcNAwICASgwDQYJKoZIhvcNAQEB
BQAEggEAXTaIxUzcJk1U6YQHW3lUxOxpV1moll7wy+WRIxLuWmeLSXwJva4GwMbSOc42ht3p
AMzwYMWX+I3EZ2qks3mLUr+zU/HA1zbnx1MLgZPs77bqHfK26f4UzINyoK50P6Xkz3gRxsym
F08ywc3fhytrnw25BYASMtFnuK5lvGJR72ylB1eTIMJj1h1dZm8M/jo4Ngov11ifEZbspvGN
EEd9y1i6IMg77SRB0kc9c9QqL1X7Ebq9tz9CFYi7H4G7yOi9/SWzwWIXU/+fXW4FpOgg1rqU
YQg8YU1QCkAXGlyOG6yeIztIrIZnMxPXjq2K/CP0V2MrzwdBCNdL3KLyWCTTiQ==

--dbp4ayrpa4git777--

