Return-Path: <joerg.sommer@navimatix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67E33C52D7F
	for <webhook@archiver.kernel.org>; Wed, 14 Aug 2024 08:04:59 +0000 (UTC)
Received: from EUR03-VI1-obe.outbound.protection.outlook.com (EUR03-VI1-obe.outbound.protection.outlook.com [40.107.103.101])
 by mx.groups.io with SMTP id smtpd.web10.92900.1723622691983527013
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Aug 2024 01:04:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@navimatix.de header.s=selector1 header.b=Cx6jl8U3;
 spf=pass (domain: navimatix.de, ip: 40.107.103.101, mailfrom: joerg.sommer@navimatix.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MG9r7K+pGJPcspsfJ8cJUhr6fowNmWiMolsS0YvakVInf56ZJsha1AggNYVUsdfkklNuA7cvAygY7Hdwg18OnQBaKSmVfTUWr3zH4Q2HUXj37MKz/higFPP4dKCSkLg7gGFnL8q1QwIGR8//R8fCUJWavrmRWhCjfi3MKk1/iDat66byFR4ek5pkukPD3EKYjUwtouR7+OPfFgvlsfnJEScMSZGD7h61teAhOLnufhrbkTXMZjoQehipPBc93jwosH7cm6s5mb3SZDa99YcdVqdhAj8iNBuDRU2464u4K66JpI6L7XfqYEqgDLkCspvBCIBIUgj9hWDBwZHkcetbyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WhI9u5ZmKVyTBLnqCfW2madQZRDXxNbZM/bpOG12O9U=;
 b=UM+bD9tmAGd4/tKxGGsNFO2lCQ2ZhcoFr+W8fWo4ZG8FLyefAO2ioW19td1otDHx8BoSedRMko4zVF4vdvfXTx2ccgl5Z6SA9a+Tup7BHYwZpicQcw5QKj55Y+Agj9dp2x6Fca9KWvXs081d4ce6swnAGuxnPufuLj6KcmtSrFa9BnEgSqRi5dtXEQ+UwpTqhBwYxvYTqEP2MorEKcliJkNFEQ+gFBfkJ0ys5wK5Dvspus5KqpYM+/rmgm/pwIK4LamVHTPmZsl1ZTuwbJv5ocjJ652aXCw6KkpyYPpm0m36sCGluZtjzBU6arlX6OmVYucQ2ueiLvtt0ymImDR+jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=navimatix.de; dmarc=pass action=none header.from=navimatix.de;
 dkim=pass header.d=navimatix.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=navimatix.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WhI9u5ZmKVyTBLnqCfW2madQZRDXxNbZM/bpOG12O9U=;
 b=Cx6jl8U34FvvJqN45+b0hRUBi26ZXztu/JcYVzprfxhlmHjvbMqchsW+DkyZUon5Q2PhXrmuI1pm97TytEleLFN9DWIN5ax1+5SKJrSEae13QVq6KSndrPo5xqDognOTxyGxUqq1nB2x27l22PdjF0TNfNUFnUNwUOiq8R7v8xg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=navimatix.de;
Received: from DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:2d4::5) by PR3PR01MB6604.eurprd01.prod.exchangelabs.com
 (2603:10a6:102:60::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.17; Wed, 14 Aug
 2024 08:04:47 +0000
Received: from DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 ([fe80::d520:1b9e:a30e:69a7]) by DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 ([fe80::d520:1b9e:a30e:69a7%4]) with mapi id 15.20.7849.021; Wed, 14 Aug 2024
 08:04:47 +0000
Date: Wed, 14 Aug 2024 10:04:44 +0200
From: =?utf-8?B?SsO2cmc=?= Sommer <joerg.sommer@navimatix.de>
To: yocto@lists.yoctoproject.org, Markus.Lehmann@duagon.com
Subject: Re: [yocto] Building #kernelmodule s, move from #kirkstone to
 #scarthgap but no RPMs created.
Message-ID: <2ftqdy2q3k4g3sxtfcsoibagjs74amems2choiqnagcrvgvweo@imahtbeqzrhz>
References: <Hrbg.1723618692163476393.NfW5@lists.yoctoproject.org>
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha-256; boundary="rtnabewiqojvvsq7"
Content-Disposition: inline
In-Reply-To: <Hrbg.1723618692163476393.NfW5@lists.yoctoproject.org>
X-ClientProxiedBy: BE1P281CA0432.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:81::25) To DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:2d4::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR01MB8293:EE_|PR3PR01MB6604:EE_
X-MS-Office365-Filtering-Correlation-Id: 6fef2f50-8180-4f8e-364e-08dcbc37c367
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?iso-8859-1?Q?Ig6LsBqepZjQ1XNH0BoxFH7sY7AMzfQh4omu7dvGVKanUs4qyhgZEbj8mY?=
 =?iso-8859-1?Q?7Tjjqxjiw4kCICtUd8PKIZDuX/92MAcfCqMurEPsiqnveooPtEWTpbAIT/?=
 =?iso-8859-1?Q?KfnJ7m/6UXHnVst+YgtPA7NQMnwC4XAdw/AskL/f/1qAZ0xezEJ46AHgtJ?=
 =?iso-8859-1?Q?JoDLUG4YkUYZHfvkA912lKQ2DtFrF4fdsRCLVqap7ftHQ2wDLlpy+yR+nc?=
 =?iso-8859-1?Q?UWYWRVjldIDvT3yPxCbdChhLEp5uyirSsJitjbumuTWWzr8FrlFHY9fhOF?=
 =?iso-8859-1?Q?R+197W1Z+gSoVC9w+r6tu/DCDEw3eFUq53Z6I7ds1TqJxM3eAad1T5l6Ns?=
 =?iso-8859-1?Q?HR8qB6Gb/RW8cVN7N7S4nWo0jS0bkmySZRfTOKViDevg9LcFeGE3IZoeZE?=
 =?iso-8859-1?Q?UA/mDxrbJig5VAk8ceEF26I1f9zbZhalQqitAFUotu6ktcVy9K3ALEzZlx?=
 =?iso-8859-1?Q?7r71ose8xL3bWTLFSFBZxeCmjd1JO96rICSl7Nzwrykz3vN17pyhiN3FsH?=
 =?iso-8859-1?Q?kEYvXTOAX6wwlXRHdyJFmvHrgXm4+ZujcycK7GRdVbNPPTFfh+JkWk1Yym?=
 =?iso-8859-1?Q?gvweL784XyZQw0zidzkxQ7RR6i2RPiTw0XibbNlrt1zbQXodjxSaDzJW7P?=
 =?iso-8859-1?Q?EgK+07CFh3Onox4z5paHyNZhvItf2Fgi66hksBMbl53BWSOpbY0u7Tm9Dj?=
 =?iso-8859-1?Q?pI7nesVQbvURqB3QjDnLBglpnrCI223WsPvufFKma/Tl0HAIxFQmcsWpQC?=
 =?iso-8859-1?Q?KLlwxB1Y6llML4itdrZSwgY9FD7aQYQ9LGqvdJH0igweMTbOZrsGgZKRs/?=
 =?iso-8859-1?Q?Nb70gjobvBYcPN3StplyPbGmWK9xIsyLl32Awf32Fjo6Y19DSXWztIivVE?=
 =?iso-8859-1?Q?lA0RrnE1n7J3ZJ5/snVK3Dg6NtK0QJdPO5ILRr7HWUq0BXRWvtW5ROue1r?=
 =?iso-8859-1?Q?0Z14/v9wd8F7zUAEFfDQHids5FhYLmb/IgxRtJAOGTC3unbX9cNgYDPXEq?=
 =?iso-8859-1?Q?a2hNITfP3C+tJqOw7ScKLBq+iLGgmLdwtoNejdDD57Dfjs9RZvBBDE5I8v?=
 =?iso-8859-1?Q?7XQfJQwtSx2R7urE69tw7wuEynL71b2Vo4o7uQKnvGpyiHnRrWTlZ8A1lf?=
 =?iso-8859-1?Q?j3sju07yjXULkNBQx2omjVbnq5ZMeA60sRNhNUgKtldI69AuFZuQatV+jh?=
 =?iso-8859-1?Q?YEgzOYhmbvoBpaBXCA/g+ntoMPUqdWGWhmVf/uQ1YMslgrZeqLBvNO0y2x?=
 =?iso-8859-1?Q?ckhAXW7KWr9KL+/IELYdtVoBfebVaLtPpm+o1DI3oBzK0riemFlSDRrrYG?=
 =?iso-8859-1?Q?n49/o857PFX0RrCuTEjoaXJHW3fjRQt1FekA3CR1oW2hQkU=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR01MB8293.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?iso-8859-1?Q?11k1il5B6hXzgISejq3g+BhE4gCUS1lFYK1AdPG5ZVjXMXEcGm7cRqqX+D?=
 =?iso-8859-1?Q?BuH385Qoax6p0muEuEpknYHqTWcYlxd8TvmoNsySg393ea6B3Wt/pLULIk?=
 =?iso-8859-1?Q?nWiWYqcQWbbNAcYXGwaRVWZSND91pbqesDnR6HLdB11kzMcMdxIWwBTbVT?=
 =?iso-8859-1?Q?sDjIVGelyJjcyRhVZ09B6K101WGoH1DZhtJUBJ/4HobscSxsWihDsVvlgL?=
 =?iso-8859-1?Q?uyJLLZxmjErHsayZohvU4ukDaJw54H+EOeC1q87O9L125XkWjyYQn+mX3O?=
 =?iso-8859-1?Q?Gq80DgOltvmlyjfFiIbEdCuhGFXP+uXDgxQH17NNoIf0NmvAQIOmxI+mtL?=
 =?iso-8859-1?Q?6Sz7HzdbkhCMKSR044rtTA4e8tKCFIMTX1uCSJNwzrPIugw/luGgxJtALU?=
 =?iso-8859-1?Q?QmsUSPHCR0AtvZ3PjVJSfX2Fal8vZhHYaKZBkDmGbtRFz12b/dymt+zPMo?=
 =?iso-8859-1?Q?ugfN1t/laBbcYGpIPk9K4cEqGeE0OE68QF+Zvn6WNemegU/0kziQaPkQ/d?=
 =?iso-8859-1?Q?lleqNXSn0lBL3eG6jzSuMBHdke72muMH4b/WMVRVfiNX1kGpeI6K2lRfIM?=
 =?iso-8859-1?Q?sKG/FbRdg06hiGKhdBREqgZhgLDW1bTdu5PVKweQfE5DZbUI8CJOJ/PWXc?=
 =?iso-8859-1?Q?QzMzWZ1gC3ke6HaYopzzggLravVoM8WSQq3lZxtjRhaFS3jURcN0XRjDKO?=
 =?iso-8859-1?Q?CNi/y6KdwPboxq9JuygKVd4SH8lVIXeAFDRwmTNWRogh7JasDXCpY+doka?=
 =?iso-8859-1?Q?8QP7qOYF4hPWNkUJyp3GFGpGXTa54Y2yKtrWfCukjftqJUpn/v9Qko2Rwl?=
 =?iso-8859-1?Q?6TqLPe8eUUMYKqR3shSaV+bAxxz5LD6YjSB294jidPyL6gvA/nHXOtAQoB?=
 =?iso-8859-1?Q?RCZdoXQWzCBV7DxE7MkSrVI/lNrX7/mG9SdNTpfLf1Y53xV/aFBZQo7FaM?=
 =?iso-8859-1?Q?aiCQzxJZ6hZIIRVtwj23Ea9eCtYwWwWV/BBtIt/tEBaiSd9ym2tJjHR76m?=
 =?iso-8859-1?Q?fhCkVvrZ+R2PZbUgwIh5kF/6ML7IigWRVupL0cqOuJnkGSoxcqfirVmlC/?=
 =?iso-8859-1?Q?jDwUPjPVM/Qdi2fyXOTTNDzQJllGAOL4aKjzSIrZ01KUZZYLY17hrRab9h?=
 =?iso-8859-1?Q?zaXzCKeJs1Q1gvx1Vw/cOjqo7FxZuoTE6yhHUJJk933XVJXq8Qkubv/X8R?=
 =?iso-8859-1?Q?vVQcEmYP5a4VUSdLl3TNjkFomGQUhIKhM0ytNDy7LKKSh8IWMVFX05KTvO?=
 =?iso-8859-1?Q?vVpMdAcHui2joceDyCV5EQNZO+VtY54jaoJTsSLfqGStRk0Mr3+lnumlEF?=
 =?iso-8859-1?Q?/ZfIdaSIzZ/kRfNEgmH+qhRzAqaZYO81StfyTpWEV3ZXDtmLOnWg0ADuMq?=
 =?iso-8859-1?Q?+wR6ZHb/xnAlIKrQ6KIrvuaMtEA0AlAFXmFLaX19FNObsuNnVmVm6iRu/8?=
 =?iso-8859-1?Q?k40TDeGcwQS6Lj+AhIPcsUKEsnOLx74EZD3WsZs1cxMaV7Df9IY7d3puZ5?=
 =?iso-8859-1?Q?UwsiFo+3uAwmHqysPQOETAuItwZd/KZ8cMyqVHblwROePYcE/kgJo6Ga9x?=
 =?iso-8859-1?Q?f+hDoYUGbKE21lgfU14oBvmgt2tyqYcuFl2F+IOnM+L4FK6wtBLDDVrVRS?=
 =?iso-8859-1?Q?99MSQp/EjSYvK1s+QtiA+FzAXBDbLZEXdUcPXMueYkCfKAV151qcfSlQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-OriginatorOrg: navimatix.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 6fef2f50-8180-4f8e-364e-08dcbc37c367
X-MS-Exchange-CrossTenant-AuthSource: DU2PR01MB8293.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2024 08:04:46.8823
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: c87b4f54-b992-4813-8f3f-4a876324197f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5oSEF8gRQHKbU7HooDXIFiJcurBv5Eiptm5UPYjNnNuHpIZD8+wsmHEZmMW3wp/1dX915u33OtRkpUJjOnF/cXQXVNzZ6EG+XKF6JnG3W4s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR01MB6604
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Aug 2024 08:04:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63697

--rtnabewiqojvvsq7
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [yocto] Building #kernelmodule s, move from #kirkstone to
 #scarthgap but no RPMs created.
MIME-Version: 1.0

Markus via lists.yoctoproject.org schrieb am Di 13. Aug, 23:58 (GMT):
> Building to *.ko files still works fine, and I can see them in the image/=
 and package/ folder
>=20
> kirkstone:
>=20
> - image/lib/modules/5.15.150-rt72-yocto-preempt-rt/misc/men_bb_chameleon_=
pcitbl.ko
> - package/lib/modules/5.15.150-rt72-yocto-preempt-rt/misc/men_bb_chameleo=
n_pcitbl.ko
>=20
> scarthgap:
>=20
> - image/lib/modules/6.6.35-rt31-yocto-preempt-rt/misc/men_bb_chameleon_pc=
itbl.ko
> - package/lib/modules/6.6.35-rt31-yocto-preempt-rt/misc/men_bb_chameleon_=
pcitbl.ko
>=20
> But in kirkstone also something is created in packes-split/ and deploy-rp=
ms/ folders (and also in some others like pkgdata* and target/OBJ ):
>=20
> - packages-split/kernel-module-men-bb-chameleon-pcitbl-5.15.150-rt72-yoct=
o-preempt-rt/lib/modules/5.15.150-rt72-yocto-preempt-rt/misc/men_bb_chamele=
on_pci
> - deploy-rpms/f75p/kernel-module-men-bb-chameleon-pcitbl-5.15.150-rt72-yo=
cto-preempt-rt-1.0-r0.f75p.rpm

Only a wild guess: Can you check if your recipe inherits *kernel-module-spl=
it*?

https://docs.yoctoproject.org/dev/ref-manual/classes.html#kernel-module-spl=
it


Regards J=F6rg

--=20
Navimatix GmbH           T: 03641 - 327 99 0
Tatzendpromenade 2       F: 03641 - 526 306
07745 Jena               www.navimatix.de

Gesch=E4ftsf=FChrer: Steffen Sp=E4the, Jan Rommeley
Registergericht: Amtsgericht Jena, HRB 501480

--rtnabewiqojvvsq7
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
ATAcBgkqhkiG9w0BCQUxDxcNMjQwODE0MDgwNDQ0WjAvBgkqhkiG9w0BCQQxIgQgDJ1svcCE
tiJDrTDDm8fycQ6fC38eqNirdQKlJ1fa3nAweQYJKoZIhvcNAQkPMWwwajALBglghkgBZQME
ASowCwYJYIZIAWUDBAEWMAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzAOBggqhkiG9w0DAgIC
AIAwDQYIKoZIhvcNAwICAUAwBwYFKw4DAgcwDQYIKoZIhvcNAwICASgwDQYJKoZIhvcNAQEB
BQAEggEArUj9mkVM0u/1p5CfBEHHR6BbrV1c3PRKFXDvSHNdIgINYDtoWJwzOjL9ED439XFI
87USV33BW0WYT5NYV3MmPMFOZlOFU6oYEvvmofbHM3FyOIVhxSn/gdY81lzvIanYj2a0/wbd
mXqiWfb9FTcFCcp72PzN6Q6z1+o5t1pjEmmnmcV6idv4Hd7L3cAAwUjULtpcElU1woMzF1+Y
GwiyyvKcCMu+PmldZvLwFM90UY/Ki9KHNsMHg7Lwy6s01OowKBXzci3LiWIw+f3KMQhRm1Eb
6TwlVFnr0MRKgWxWAXJgIEMIIYNwOkZvIdFDxke19HKhd4/omQGR07IKbRnZ/g==

--rtnabewiqojvvsq7--

