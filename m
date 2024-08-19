Return-Path: <joerg.sommer@navimatix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 457C1C52D6F
	for <webhook@archiver.kernel.org>; Mon, 19 Aug 2024 15:48:58 +0000 (UTC)
Received: from AS8PR04CU009.outbound.protection.outlook.com (AS8PR04CU009.outbound.protection.outlook.com [52.101.70.141])
 by mx.groups.io with SMTP id smtpd.web10.213919.1724082534540234287
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Aug 2024 08:48:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@navimatix.de header.s=selector1 header.b=X1Er0NG2;
 spf=pass (domain: navimatix.de, ip: 52.101.70.141, mailfrom: joerg.sommer@navimatix.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tFIh2Lu/37AUmjY8S9QiAoePx/AkkC2pf0fUH8UuhJF9h8h3Na8GYy/hlUAYQ4Kcofn+2dg5tLIZE3KauRP4ggKHbuMQjb59b5JvL7aGd/5bJtI/KCCepmE+acgnt1yLDieXNw6Lnznz5yyPSL0Snh0S/u/3vB46bn+ZZ/ExMabjiY+WAWVQIwKFqG4o7+oVg79OynLsGbmG1n7iP/Ji4EzWIN8ffOfhh9FCFdr5r4eLq45cnW0j5PxM8hnlmjYVZWY2Ah9VAGKcfJgR6p6CqWQqVqJ+nFpIaaIIHI8V/fdDN01HRsFiatkze3j+BLtoY4Ihd1YZ5Rn4KqeS0ufEIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MMjXMBrpfYRniW22VEVdE5xHEjRN94gnGggKUwB3EuQ=;
 b=cNYST2kyWMH1ZLWNqdRoiPK0uwfR59J2l/XsqSkXPxSuEw2BzI+4Sfes9xoG+rQEVesZlSmzsr2q6Ei1VeSU/IRladToBYm5aIVFjqOgfDoifghRI5EiXvrWykLoY3cgI7XYsNMPyFu42iiqWuE/0MtwxCc9I7wgMk6/0ZEn9CHjCoYrK4w1XCBNnK1JKJQEVT0yqIs3I+Z1cHfvJ14HNMlLUEcKMHRd4mG1u5PTHhREP1GaVmdWX2hd/zIzvuD9Txv56lW+IWTa4xoX8v1AzxsKz/tdO5gwGPcbHPO1oSigT4VDBlo6PndsumNEcX2epxudOxND3idJfwr0g9oUbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=navimatix.de; dmarc=pass action=none header.from=navimatix.de;
 dkim=pass header.d=navimatix.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=navimatix.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MMjXMBrpfYRniW22VEVdE5xHEjRN94gnGggKUwB3EuQ=;
 b=X1Er0NG2udoNqdmndVEuv4hceCozt3T+zmqv4cYWGU68i96iA1DBCzE0qjY7AVICwD3uj7W28jz9nZ/y4krF9M7ESyratKNolUMaVso27oHNQmQC1CFLriPleuNIFP6JRT/VeLKa+HO3vZQBDv96dF2UWIQQbQlVpiTsKmoffvk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=navimatix.de;
Received: from DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:2d4::5) by GV1PR01MB8851.eurprd01.prod.exchangelabs.com
 (2603:10a6:150:2e::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Mon, 19 Aug
 2024 15:48:49 +0000
Received: from DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 ([fe80::d520:1b9e:a30e:69a7]) by DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 ([fe80::d520:1b9e:a30e:69a7%4]) with mapi id 15.20.7875.019; Mon, 19 Aug 2024
 15:48:49 +0000
Date: Mon, 19 Aug 2024 17:48:47 +0200
From: =?utf-8?B?SsO2cmc=?= Sommer <joerg.sommer@navimatix.de>
To: yocto@lists.yoctoproject.org
Subject: Where to send patches for ptest?
Message-ID: <i47theeraamzdqpvz4ks4zequqwvzrghomunhwnmkfymui4y2x@m6fblppgsank>
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha-256; boundary="2r5zpua6nn4hkkt2"
Content-Disposition: inline
X-ClientProxiedBy: BEXP281CA0014.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10::24)
 To DU2PR01MB8293.eurprd01.prod.exchangelabs.com (2603:10a6:10:2d4::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR01MB8293:EE_|GV1PR01MB8851:EE_
X-MS-Office365-Filtering-Correlation-Id: 5ffda8c6-f865-416b-8abc-08dcc0666ac7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?iso-8859-1?Q?aHTLC6hT/Gq4GAkxjtxelbYcR1CPe3UmZJcUMy8OTx47hcXoZuWDl5a82n?=
 =?iso-8859-1?Q?B3Ci3gOc7mg1PvVsSL1nRSJw28/BTuQOKYpee8QOdfnotX7uAGq+nBXcuQ?=
 =?iso-8859-1?Q?JeHR7b8DEJRF8D8wuTyUR8gWA2Bnvv4DPvc+P3rGQJwKzedm02jGB++kQy?=
 =?iso-8859-1?Q?Hw2TKz1RKpOnl3uItlwd+RywkifxOqXcJXifOd9eUVoZWU+n3f9w2oS1RE?=
 =?iso-8859-1?Q?CrFO7yRmKvB40WrgJiC44nKqJe2NoDiIBrsj4Uc6orKVX2mnr+TAQejeN6?=
 =?iso-8859-1?Q?pE4raRKhPDP4Eb5Oy2tHLPVr1RMg+cRdPP4AKXbTdMT7Ax6VE4F91NczeC?=
 =?iso-8859-1?Q?eXbJTlIeKTstRSKOeoQNkcyU0VnMck7WdWnGg3Wk/jwK6lzKfqjhoNJw3N?=
 =?iso-8859-1?Q?+/GPsC2C3gtCx+0+6rtfzzcFfGuJZLAoLT5D5DTJ9UDvf7JKr4fQSTEo5R?=
 =?iso-8859-1?Q?KiaeQ0iGDoGvqf45DBkz655r7Gk+lwwT7TYlKhsZGIM43bZ6MEwJa5zMm3?=
 =?iso-8859-1?Q?I1McR52FsCHrnZVm/1epg9nS7KDoGEJZmGNx/AWDh9RWmsC3LfBqXvxrv9?=
 =?iso-8859-1?Q?vI2ePsZ5yeOWhlPwQtG2FMmzqtN4+NMinEiMfvzBCWytMxUEBgo5qN6o0+?=
 =?iso-8859-1?Q?lWUliZRKGVPyp95Uo4tt0ZlqRLLPpdlUOrIB5MO90PaV/sdO0Xhv4j5RFl?=
 =?iso-8859-1?Q?efZ4tcA3kj1tRPDx1ab52NjnKmhXtaWh4J0+2dfiJCeBVdDhccJ+J2EATQ?=
 =?iso-8859-1?Q?WYPwewqzZev/WNAc/FzQ9mnd/zwu4xRIanhv/N8YWyF6CK40mfEQto+4Ys?=
 =?iso-8859-1?Q?FHUIfXKOZath47A3zPGSK1flAsDnKF+RAyhymTNVuTDMk7M+c6MICh5CMd?=
 =?iso-8859-1?Q?09vi0nAsDVFzapVp4DLI3xXhcWVZsieNHF4ZvuSr7E221N22VaDizBb/Ge?=
 =?iso-8859-1?Q?zKvYByekl/mrYFnygYv9nMHCSW4IXfqLpDaOQZVzqgViv15B5cbhLlngje?=
 =?iso-8859-1?Q?Vny7DcjT5rRnJ5H6qcIQkiN2DxIQUTe+4tJg1JBD7T+9WMDC56CzF4moGe?=
 =?iso-8859-1?Q?JCHQbH30we+kG7Q+3JtFs5Hu3KYdVB6FyDU42eDL14NvHtITbWEAQtfCkX?=
 =?iso-8859-1?Q?hWwE/+36NTtsgg7kQy8tsmEd8FTJk38IywT9gY2H3Sb8ilmQKgZXoLywM7?=
 =?iso-8859-1?Q?a/NLHnZHO15eXx6DVvEuFrGzzWr84M4u0ylbWiOHcrnMUFjh2TtfPe01R7?=
 =?iso-8859-1?Q?tlrr3PsFR92ZA32wBPCkG9XzLQNTDF9TSfgMsU4AvSTVAQcSWxBEGCeeio?=
 =?iso-8859-1?Q?eSmsmcgIUbgemeNYcPwWZpb5eSl4AD+QN/n0JatG0Z28MwU=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR01MB8293.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?iso-8859-1?Q?/bzMaVT/P2OndlINeUR841CkDCCEzGm9k/X2W/gBw8Nah5XCUikVRPJ20W?=
 =?iso-8859-1?Q?MtZxqbnWIaufh6a4/20oK2EDmJRO7a7CHvq9YIZ2J2fZF/GPYaI6QJgZxS?=
 =?iso-8859-1?Q?D/cqVdG3C4rd4qr4B0VjoKIc6fqmvKBhcjPR/uo8gOjhrDcv+pLUNxUKeE?=
 =?iso-8859-1?Q?7TKegVn/AboHF2ZwfDGvVBdrtWlEM6ZfRtl7V39an9hoD8rJANfV7O2nYb?=
 =?iso-8859-1?Q?L+CG82sWTiV+ljHUAm33vEsd+jX+A8C05eY9Ilo7pqF/C6Kij7vNzrM4g0?=
 =?iso-8859-1?Q?HKZskCaszQgTgLEVfjLuaFEPmt8IUkoT7zZJAnOELEEpxFwnYGSXIN+mKT?=
 =?iso-8859-1?Q?8mPyNqZQsTH59gumXYuzb8eCFNQyUurBr14yBQR7IaOO6FCmkhoDVV6bkV?=
 =?iso-8859-1?Q?gDlAHeECGAg/s5R9z35rFFrMrl7REHS1bTUfllYW1YU4ZsuSNBhFfD2xKP?=
 =?iso-8859-1?Q?cBJPS1fe+a1s9mnbnZz6gvwDqdo497B92qr9W5psvjEwAMZ0KNyuGl+Q5S?=
 =?iso-8859-1?Q?asV/v1KTMUAH2YdGOn/bTmCBU+wx99Jt+xx3Si3uE+WzHgQkZLSjgqe0Mv?=
 =?iso-8859-1?Q?BRgtX8pcH5ShGCwd2SrZD46/oq68kr9qG+BgkTVkv7iExz1/T2ypcaINeS?=
 =?iso-8859-1?Q?e5GQUo/dUTVY/Xj6ULfmXDjFCveGuV9X/Twyw1Rfzn19K90w0FXW3YWaYg?=
 =?iso-8859-1?Q?BjYMHxUwV/EuTpLQYKixUjaIXpXrsxI2cyRtbYlB4w0WWwd/L+/AWOYEv9?=
 =?iso-8859-1?Q?eBXiwqI2jAfwFVOSfTcWRwOYnq2N2OMpmcUzcFKaTuLFsrs6hvq2YU7nBt?=
 =?iso-8859-1?Q?7YMl5W8CgH7juVBZrfkfV8ZeKcQOQgfKtbHbFe9LgKMDzQsmXGb1Tit4hj?=
 =?iso-8859-1?Q?1ewYHsMKxPLtAkKrlYt4v5U8i1C17XD9fDX72cmxaJTSLRxmaRHIj+NVPa?=
 =?iso-8859-1?Q?QMpMEKfVPqS3U6X1Vi0UHxS2PXkVRZFI+AzQ7x6PlDkHoa5QJbiOM6OJmS?=
 =?iso-8859-1?Q?99nuw+fHkRm0Zmkv5vON5IXEQAIaxUEgRXlL4+7bJtHu4SbNMNi/JuaZMj?=
 =?iso-8859-1?Q?j5aG1g8WvyC/U2n+ITcUsJnCnYEJNRXhuraj9+aTcR4vmAXmi8kITFab0l?=
 =?iso-8859-1?Q?O/jwYxfwFIiy2Dy/9QSaBDyBykzx9jWSbvte/XLK7Cw82ZYoM7BZMRRIGr?=
 =?iso-8859-1?Q?O9hMpmMyrJKDS+XUsuzps0t3pcDWRZ9sdeebGSPmID4KXNI1cs5n4qqgti?=
 =?iso-8859-1?Q?Y4akQGVQZP9nMKhLrbDWWy5iTEEa+AgtcqSbeIiazEGDDYIdMo6rUyT2R4?=
 =?iso-8859-1?Q?mLiir9m5qUERsfh9Pza0+kUSuhLEJXb/7SI8MRO43c1rKX9Edf7LpBc1cT?=
 =?iso-8859-1?Q?Uk03qGMU3aGFTEo3y83qPPgp4YEX5z8DCWu+SI+GTMQE5yvRifOvrbtCWI?=
 =?iso-8859-1?Q?CXiyt108/mxvfR/YL8xAZ3CRRBZfd4+gB+v1IUeiqw2X/6ztQNAVlxepG9?=
 =?iso-8859-1?Q?8K1X8lHVOifCjtmJyeiFL7771GX5iE/zblvVBqIfyILC10OiJ6mo1AeCUu?=
 =?iso-8859-1?Q?bAAHYBB/NprgAGkquVW1nhe8Zy+wRn9o33J96GreAoBGpFasZ9Iu3J2vVL?=
 =?iso-8859-1?Q?LIVXt21jX6KPb0OZnIb6N5znwlbO1AtpItKBZ8S/OBT7xYWlE7p8DB/A?=
 =?iso-8859-1?Q?=3D=3D?=
X-OriginatorOrg: navimatix.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ffda8c6-f865-416b-8abc-08dcc0666ac7
X-MS-Exchange-CrossTenant-AuthSource: DU2PR01MB8293.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2024 15:48:49.1088
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: c87b4f54-b992-4813-8f3f-4a876324197f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IidRS/zl5fGCnnD6gCo7Y6u26Y7NqIZ7RjDc+5XPYXQtcaZzTVE+L18NgNALtbtbgFsvKIKw9E8mDFDAMCy1O2WJ59AXkL0V62NNwu1Uqwk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR01MB8851
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Aug 2024 15:48:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63721

--2r5zpua6nn4hkkt2
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Where to send patches for ptest?
MIME-Version: 1.0

Hi,

where does the development of ptest happen? What's the right place to send =
patches to?

I've created a commit on a Github repo, but it doesn't get any attention.

https://github.com/alimon/ptest-runner2/compare/master...jo-so-nx:ptest-run=
ner2:master

Kind regards

J=F6rg

--2r5zpua6nn4hkkt2
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
ATAcBgkqhkiG9w0BCQUxDxcNMjQwODE5MTU0ODQ3WjAvBgkqhkiG9w0BCQQxIgQgCakBqRDh
8xIVE16EppmJfLFNAln1JcpLDej4kyyHrvsweQYJKoZIhvcNAQkPMWwwajALBglghkgBZQME
ASowCwYJYIZIAWUDBAEWMAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzAOBggqhkiG9w0DAgIC
AIAwDQYIKoZIhvcNAwICAUAwBwYFKw4DAgcwDQYIKoZIhvcNAwICASgwDQYJKoZIhvcNAQEB
BQAEggEAnqjTJiuuU6Wg3iLTv98E15nEKf5LjH5VjC8P9QFRoLDubRVqWiNltTflpx34KaBh
tVeD69a151VZPu/OxWBSZU9univ9X6CAaxEIGj5Yjq04NyvA1lo06mEd8K/tFq2swOicVfmJ
caCngjlKLo+YXVzqUedlJ0JcR16yEFi8vQQRHk8V/mSt07VHoQswCWkaoGTfUa2d/BSD+2wb
G/eF0HbYdjbRYppS/zGzKUO2k6JV7rcBNNLOzIc0sbiCMfNfQ06Ggr74n1kD9JHV7qwrmC70
/h89iHj7UAt699TpGit7l+e7+Kr/zzlU0G3Ghw/SQoMJY+emepqUi4w93H4jrw==

--2r5zpua6nn4hkkt2--

