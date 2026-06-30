Return-Path: <joerg.sommer@navimatix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D249C43458
	for <webhook@archiver.kernel.org>; Tue, 30 Jun 2026 06:30:50 +0000 (UTC)
Received: from AM0PR83CU005.outbound.protection.outlook.com (AM0PR83CU005.outbound.protection.outlook.com [52.101.69.120])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.15488.1782801046764672285
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Jun 2026 23:30:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@navimatix.de header.s=selector1 header.b=LC4rzKkz;
 spf=pass (domain: navimatix.de, ip: 52.101.69.120, mailfrom: joerg.sommer@navimatix.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wHt2A5zNWxrW88WICfIdG8XJ4tB/jINu/DEnIVyFtbnQWi0ea0D4cWJ6gLeW5PNxQxoICEfUpCc8lWeohVLM0lY5K9tvTzWtK/ZKWIt5ZSIWO6QTV3hPc4+L9wqwn/8ydcTG458MCnymTHGAFOafFx0KZXmjHKLoUcbsRvc1pXd6itfrOPVDkLXiCFok5xdhwUvJvVSiHs2KKQ5vtCFTWbaLzbDT3KwdAM+Z807Lo90qIyrlhTo24ByfXMUVJkdsJ78nlOPVRsqlFNeW3bb2IRInUBJ4RszWPzBw2UnFP3vDUXdcaV+sQARHkhKWD7J050RLkRJs0gRUeucBOISsyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xC8yLFhJcV27Q2KpdjOyu02MaEqOF2hVNvdkdsfXegE=;
 b=F8hm4PM8ot+uebQULpDbsqthqZ2ZTeZY8EhgeQKRopD8v9NJAjMf4x3KaFdzNER2hBhWVrhd2+dIfP3S57ihQBQiEHw+a1FMoI0/MGVQSOROMxwS6C9zBRgvzyW7qR8cE4pyt4KMijPE0/xH47BHL/7HYfHw3O8MLEZMRUF5Rg4Xo36SGGLEseoa9VRlQW7/AERwBG3qRUBRLUXDng9bvBVruV8sJJFubkxyLOjrENMe2yWUwy5Embw9jFb/yvQ7ZEyCXK343cj9let/HIVdmK1d76cm+is4xofEXh6awVleve0tuCHv0q6W58o4b9z9EPAm+YQYbQm9rHcYlSSKJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=navimatix.de; dmarc=pass action=none header.from=navimatix.de;
 dkim=pass header.d=navimatix.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=navimatix.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xC8yLFhJcV27Q2KpdjOyu02MaEqOF2hVNvdkdsfXegE=;
 b=LC4rzKkzpbd0oC1jQbgRACOC5TIMw6TWMBpe7lyuOc6WmkV7hT2Th7THfBZvoqJfq2HoQcqh8Ic2OAhTXV5s/BlDLGorUYp43T/s/sQT5fVf+lEupgBiBy3RGg5ERfAjgUo3LVSOoiy8zxHjaqqdYAZc1PY1AH3dvMp+a+GXKeQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=navimatix.de;
Received: from GV2PR01MB11835.eurprd01.prod.exchangelabs.com
 (2603:10a6:150:2cb::8) by DBAPR01MB6759.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:18a::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Tue, 30 Jun
 2026 06:30:42 +0000
Received: from GV2PR01MB11835.eurprd01.prod.exchangelabs.com
 ([fe80::d5c3:2dea:3d98:25fd]) by
 GV2PR01MB11835.eurprd01.prod.exchangelabs.com ([fe80::d5c3:2dea:3d98:25fd%3])
 with mapi id 15.21.0159.018; Tue, 30 Jun 2026 06:30:42 +0000
Date: Tue, 30 Jun 2026 08:30:39 +0200
From: =?utf-8?B?SsO2cmc=?= Sommer <joerg.sommer@navimatix.de>
To: yocto@lists.yoctoproject.org
Subject: Add redirect git.y.o/git/... -> /...
Message-ID: <akNglndfCzY7BdSw@navimatix.de>
Content-Type: multipart/signed; micalg=sha256;
	protocol="application/pkcs7-signature"; boundary="cma7qdsxiowsyd5y"
Content-Disposition: inline
X-ClientProxiedBy: BE1P281CA0069.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:26::10) To GV2PR01MB11835.eurprd01.prod.exchangelabs.com
 (2603:10a6:150:2cb::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GV2PR01MB11835:EE_|DBAPR01MB6759:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d3fbea9-8362-4065-ae27-08ded6711bce
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|23010399003|366016|376014|1800799024|56012099006|18002099003;
X-Microsoft-Antispam-Message-Info: 
	6s93wtl4mGUheHgJqG9Q9AjpJhiQSbZLX+ufl92h29DPdjJDEIMPZ9ai/qy/CWvgaUp594yN7Y3pLWnfpcg0Pe0u0Zf6vI0H1SHi39T8YCbfT8rWa0dNOw5ClmmaBCqR/+pv4flnaXAIsMjZOGggi9YSMUY7A/FCiO5gSoYIBdOmCgPl/LX43zaeFOhv9SqPH2l7XFHQrE6ZpZwP/7RX+2luPzh8kfn7jG9GTRALdSD0jWqTZpr1UHqeR45nadIZLAeJhYwAToVp7OnTJm/4B6Lh6+OLqVHxND74pAbMKMic3qydazfzV8dTH3hcQHW9L7QbjfIvZ1hK4RjNkoUlcR9dBzYDn3b81Txy3gTlazzF0sFIsrDZnPKsOgz/luCEZ2LJTm+NMNgTyfueXaumIv7feXeV6okOc4lbDcV6KsCGKhLsLfmgsx13oAGVEtfSIP5JQXOhJ4mtuePIm8opay+ZtLN3U9XDpKvtEvaxG+S8ltdap23A950OI+X2I9qiYDuYdu9SKpRLipew5i3iJPkMA7iWUS1Azj8V6XAZV/8+RblAEvfA3LavYwQU+G3vnQ1CqjYq64jULulNWgQKvyOKZ8xUMKamhrWYihRMG0U=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GV2PR01MB11835.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(366016)(376014)(1800799024)(56012099006)(18002099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?iso-8859-1?Q?Jhwy/ddeRF0/d99wxZKI/EMEGYmIf4RQsDQCJl8fHGI/VYwulmml/Mw0om?=
 =?iso-8859-1?Q?jiY769qylU56WODZ+tzYuDhNam5c6VOWkR3Cv/vYBdNjIdO0sRnWwTrxwM?=
 =?iso-8859-1?Q?8nvvlrdjfq3AAFyOSeec8CmLrc3iynmSt83vEPEAp2aBTkPTXGseIhJZMn?=
 =?iso-8859-1?Q?G7DKSJ7FCmv54kb56Ly/UFPQl+FqqpZP5wvt+2GtE73pCwIOzlUgIF9uiu?=
 =?iso-8859-1?Q?nMpdPB4s5mxPcFUZl93mFUeChg82zst0KJ06zkZJMG8FN7kwQwF4s4AN2D?=
 =?iso-8859-1?Q?j/2ilc2+pNfoKCw6j6sxN93AMtM3F6WP0unnwfTXwQaiDaiFcLEa/2fWRe?=
 =?iso-8859-1?Q?5lOr++jsUCo/oqqYzQMZoJIyWIwv1m7zkWEHLkIyXmWhXY+5tQQLzrcvAc?=
 =?iso-8859-1?Q?c4VOwmgdp3wEsX8qckoG8eY7kbsVHf4TZt/hXi6gO0w4jdvMTjV/2jJQmA?=
 =?iso-8859-1?Q?4vEUH2xsqnx8oesTGVAc/1D4OsZsrShA8OVTCXYkmIMQPRXssEAGbpEvfa?=
 =?iso-8859-1?Q?qW9O0DqA9G1nNKZCwk2CePAk8GH/uvH44KB3GRMkkMeLWMAN6Km/9dlCbw?=
 =?iso-8859-1?Q?gkK6eBhBmsDD14hZb6mRXc5O3R5y0z2DiiJMGbSkG+QVa2RIFmqnWkFePt?=
 =?iso-8859-1?Q?v3wH3kiaZaDQ+WQ/PgjaSB8m3jPU1tQj3tB831YJpYwXJxprTV8BirV7ew?=
 =?iso-8859-1?Q?cxgPh/qLVmtzWlZjb8nZ8MtEZ3UgThtv5vSophD8fLznnqzodxjgOIZQhm?=
 =?iso-8859-1?Q?8osG9AhSaAKmDVtfSNaTqgUnePIjvlhHfp0obFIMjCGeBgYjWA2YCuBAwK?=
 =?iso-8859-1?Q?tiu+KLr90ZA9dwiBtHsNigIxwbfev3gtk4MFcULpYC2rZUTBCcqBN243kI?=
 =?iso-8859-1?Q?1Use1TYtn+Kj0uXLbzjSzLLyNocshm2cBbmPDuDsqakzXRYr7xk7w6KnI3?=
 =?iso-8859-1?Q?DGZZPJLvpLgjocYHNDEpKtafDNt4Fg52zElDBycxImd1vlqaQ/ucZ5nYLC?=
 =?iso-8859-1?Q?oWCO9v18Zye3wM7Y861a7RwciIOvM0rbzOTA82VKxegKIe3PkUuF7X9qiA?=
 =?iso-8859-1?Q?hV+1DPmMK+sBZGp2MU2y4+odUarPduLCv8c30DA4SAlatWbsmjLKm0VduQ?=
 =?iso-8859-1?Q?WpwkJt67fcNkfpCcrErSctUJa3Pbu5HXKi0zp25xWp1yKEGHsnREA1YbmT?=
 =?iso-8859-1?Q?2BM7J+5EWZA+a9xhmnJl3HQpzIraFBQVZoSvvELt9uvEyygytTnbK0gjNP?=
 =?iso-8859-1?Q?blDKwOWkXGrNUb7gJZn/7D7/JB3hbzu3HP8FneDbIqnRxfKI757DwkRGUo?=
 =?iso-8859-1?Q?p7S0ZkwAOKm0iEmW0gIIxqwxioQOmNpy/lgRYgdVIGN3GC3o6FvXQlN7Qo?=
 =?iso-8859-1?Q?0RdPyQndpO3ycKmS8T6xYQqPl5mCYwV0mxoqwaPcrGX9OCZK6mx/Pw/EbT?=
 =?iso-8859-1?Q?pFE5geWBDYF7fuVVqsDhrGPAU2K8YW5tBqy4BltCxTuR4TUFZol0QBeyCh?=
 =?iso-8859-1?Q?ZJGlycHco52XPAY9aXiJTkHRvoRGct5GboYYkLx9dfp0PvdgSLOQjfGaWz?=
 =?iso-8859-1?Q?cfH9eHL17nOkphArN6gMdAB55QPIOPqdJnDiYSoOYma4Ub9jnLECWeth0l?=
 =?iso-8859-1?Q?5HSO5fLMcFPwrmc3KVwJ2tlF67jv+rXpV/TwZ5+xkAmJ3B7jKrK/V3ciLV?=
 =?iso-8859-1?Q?1XYCV6Hcm9PhyR7RloACFjuA0e++YveaY95IbbTcwPG4SNy/YfKUYAFno4?=
 =?iso-8859-1?Q?PC9g4UiyiFuX8hX9NJY1mPSw4pdcNjUCi+6MGrCiBRqdOsIXRsVKGpwnKb?=
 =?iso-8859-1?Q?ugU04Y9WxsG6ivr6NRRAvTkR+7QfCBE=3D?=
X-OriginatorOrg: navimatix.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d3fbea9-8362-4065-ae27-08ded6711bce
X-MS-Exchange-CrossTenant-AuthSource: GV2PR01MB11835.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2026 06:30:42.0949
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: c87b4f54-b992-4813-8f3f-4a876324197f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oH78/EWCBPpG2/kT1fD+svJ2iSIZJJxzeV7EnHsYoHo2uI2A/XQ8veHP+tr3QoWmkcfTzCptZ8aR9a8gT7bQe2cNYii1hFVjG2/txXhU9LI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR01MB6759
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Jun 2026 06:30:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66617

--cma7qdsxiowsyd5y
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Add redirect git.y.o/git/... -> /...
MIME-Version: 1.0

Hi,

would it be possible to set up a permanent redirect from
https://git.yoctoproject.org/git/(.*) to https://git.yoctoproject.org/$1? We
have some older releases that can no longer be built because the /git/
repositories can no longer be found. It would be great if such a redirect
could be set up.


Best regards, J=F6rg

--=20
Navimatix GmbH           T: 03641 - 327 99 0
Tatzendpromenade 2       F: 03641 - 526 306
07745 Jena               www.navimatix.de

Gesch=E4ftsf=FChrer: Steffen Sp=E4the, Jan Rommeley
Registergericht: Amtsgericht Jena, HRB 501480

--cma7qdsxiowsyd5y
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Disposition: attachment; filename="smime.p7s"
Content-Transfer-Encoding: base64

MIIThAYJKoZIhvcNAQcCoIITdTCCE3ECAQExDzANBglghkgBZQMEAgEFADALBgkqhkiG9w0B
BwGgghDNMIIFgTCCBGmgAwIBAgIQOXJEOvkit1HX02wQ3TE1lTANBgkqhkiG9w0BAQwFADB7
MQswCQYDVQQGEwJHQjEbMBkGA1UECAwSR3JlYXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHDAdT
YWxmb3JkMRowGAYDVQQKDBFDb21vZG8gQ0EgTGltaXRlZDEhMB8GA1UEAwwYQUFBIENlcnRp
ZmljYXRlIFNlcnZpY2VzMB4XDTE5MDMxMjAwMDAwMFoXDTI4MTIzMTIzNTk1OVowgYgxCzAJ
BgNVBAYTAlVTMRMwEQYDVQQIEwpOZXcgSmVyc2V5MRQwEgYDVQQHEwtKZXJzZXkgQ2l0eTEe
MBwGA1UEChMVVGhlIFVTRVJUUlVTVCBOZXR3b3JrMS4wLAYDVQQDEyVVU0VSVHJ1c3QgUlNB
IENlcnRpZmljYXRpb24gQXV0aG9yaXR5MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKC
AgEAgBJlFzYOw9sIs9CsVw127c0n00ytUINh4qogTQktZAnczomfzD2p7PbPwdzx07HWezco
EStH2jnGvDoZtF+mvX2do2NCtnbyqTsrkfjib9DsFiCQCT7i6HTJGLSR1GJk23+jBvGIGGqQ
Ijy8/hPwhxR79uQfjtTkUcYRZ0YIUcuGFFQ/vDP+fmyc/xadGL1RjjWmp2bIcmfbIWax1Jt4
A8BQOujM8Ny8nkz+rwWWNR9XWrf/zvk9tyy29lTdyOcSOk2uTIq3XJq0tyA9yn8iNK5+O2hm
AUTnAU5GU5szYPeUvlM3kHND8zLDU+/bqv50TmnHa4xgk97Exwzf4TKuzJM7UXiVZ4vuPVb+
DNBpDxsP8yUmazNt925H+nND5X4OpWaxKXwyhGNVicQNwZNUMBkTrNN9N6frXTpsNVzbQdcS
2qlJC9/YgIoJk2KOtWbPJYjNhLixP6Q5D9kCnusSTJV882sFqV4Wg8y4Z+LoE53MW4LTTLPt
W//e5XOsIzstAL81VXQJSdhJWBp/kjbmUZIO8yZ9HE0XvMnsQybQv0FfQKlERPSZ51eHnlAf
V1SoPv10Yy+xUGUJ5lhCLkMaTLTwJUdZ+gQek9QmRkpQgbLevni3/GcV4clXhB4PY9bpYrrW
X1Uu6lzGKAgEJTm4Diup8kyXHAc/DVL17e8vgg8CAwEAAaOB8jCB7zAfBgNVHSMEGDAWgBSg
EQojPpbxB+zirynvgqV/0DCktDAdBgNVHQ4EFgQUU3m/WqorSs9UgOHYm8Cd8rIDZsswDgYD
VR0PAQH/BAQDAgGGMA8GA1UdEwEB/wQFMAMBAf8wEQYDVR0gBAowCDAGBgRVHSAAMEMGA1Ud
HwQ8MDowOKA2oDSGMmh0dHA6Ly9jcmwuY29tb2RvY2EuY29tL0FBQUNlcnRpZmljYXRlU2Vy
dmljZXMuY3JsMDQGCCsGAQUFBwEBBCgwJjAkBggrBgEFBQcwAYYYaHR0cDovL29jc3AuY29t
b2RvY2EuY29tMA0GCSqGSIb3DQEBDAUAA4IBAQAYh1HcdCE9nIrgJ7cz0C7M7PDmy14R3iJv
m3WOnnL+5Nb+qh+cli3vA0p+rvSNb3I8QzvAP+u431yqqcau8vzY7qN7Q/aGNnwU4M309z/+
3ri0ivCRlv79Q2R+/czSAaF9ffgZGclCKxO/WIu6pKJmBHaIkU4MiRTOok3JMrO66BQavHHx
W/BBC5gACiIDEOUMsfnNkjcZ7Tvx5Dq2+UUTJnWvu6rvP3t3O9LEApE9GQDTF1w52z97GA1F
zZOFli9d31kWTz9RvdVFGD/tSo7oBmF0Ixa1DVBzJ0RHfxBdiSprhTEUxOipakyAvGp4z7h/
jnZymQyd/teRCBaho1+VMIIGEDCCA/igAwIBAgIQTZQsENQ74JQJxYEtOisGTzANBgkqhkiG
9w0BAQwFADCBiDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCk5ldyBKZXJzZXkxFDASBgNVBAcT
C0plcnNleSBDaXR5MR4wHAYDVQQKExVUaGUgVVNFUlRSVVNUIE5ldHdvcmsxLjAsBgNVBAMT
JVVTRVJUcnVzdCBSU0EgQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkwHhcNMTgxMTAyMDAwMDAw
WhcNMzAxMjMxMjM1OTU5WjCBljELMAkGA1UEBhMCR0IxGzAZBgNVBAgTEkdyZWF0ZXIgTWFu
Y2hlc3RlcjEQMA4GA1UEBxMHU2FsZm9yZDEYMBYGA1UEChMPU2VjdGlnbyBMaW1pdGVkMT4w
PAYDVQQDEzVTZWN0aWdvIFJTQSBDbGllbnQgQXV0aGVudGljYXRpb24gYW5kIFNlY3VyZSBF
bWFpbCBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMo87ZQKQf/e+Ua56NY7
5tqSvysQTqoavIK9viYcKSoq0s2cUIE/bZQu85eoZ9X140qOTKl1HyLTJbazGl6nBEibivHb
SuejQkq6uIgymiqvTcTlxZql19szfBxxo0Nm9l79L9S+TZNTEDygNfcXlkHKRhBhVFHdJDfq
B6Mfi/Wlda43zYgo92yZOpCWjj2mz4tudN55/yE1+XvFnz5xsOFbme/SoY9WAa39uJORHtbC
0x7C7aYivToxuIkEQXaumf05Vcf4RgHs+Yd+mwSTManRy6XcCFJE6k/LHt3ndD3sA3If/JBz
6OX2ZebtQdHnKav7Azf+bAhudg7PkFOTuRMCAwEAAaOCAWQwggFgMB8GA1UdIwQYMBaAFFN5
v1qqK0rPVIDh2JvAnfKyA2bLMB0GA1UdDgQWBBQJwPL8C9qU21/+K9+omULPyeCtADAOBgNV
HQ8BAf8EBAMCAYYwEgYDVR0TAQH/BAgwBgEB/wIBADAdBgNVHSUEFjAUBggrBgEFBQcDAgYI
KwYBBQUHAwQwEQYDVR0gBAowCDAGBgRVHSAAMFAGA1UdHwRJMEcwRaBDoEGGP2h0dHA6Ly9j
cmwudXNlcnRydXN0LmNvbS9VU0VSVHJ1c3RSU0FDZXJ0aWZpY2F0aW9uQXV0aG9yaXR5LmNy
bDB2BggrBgEFBQcBAQRqMGgwPwYIKwYBBQUHMAKGM2h0dHA6Ly9jcnQudXNlcnRydXN0LmNv
bS9VU0VSVHJ1c3RSU0FBZGRUcnVzdENBLmNydDAlBggrBgEFBQcwAYYZaHR0cDovL29jc3Au
dXNlcnRydXN0LmNvbTANBgkqhkiG9w0BAQwFAAOCAgEAQUR1AKs5whX13o6VbTJxaIwA3RfX
ehwQOJDI47G9FzGR87bjgrShfsbMIYdhqpFuSUKzPM1ZVPgNlT+9istp5UQNRsJiD4KLu+E2
f102qxxvM3TEoGg65FWM89YN5yFTvSB5PelcLGnCLwRfCX6iLPvGlh9j30lKzcT+mLO1NLGW
MeK1w+vnKhav2VuQVHwpTf64ZNnXUF8p+5JJpGtkUG/XfdJ5jR3YCq8H0OPZkNoVkDQ5CSSF
8Co2AOlVEf32VBXglIrHQ3v9AAS0yPo4Xl1FdXqGFe5TcDQSqXh3TbjugGnG+d9yZX3lB8bw
c/Tn2FlIl7tPbDAL4jNdUNA7jGee+tAnTtlZ6bFz+CsWmCIb6j6lDFqkXVsp+3KyLTZGXq6F
2nnBtN4t5jO3ZIj2gpIKHAYNBAWLG2Q2fG7Bt2tPC8BLC9WIM90gbMhAmtMGquITn/2fORds
NmaV3z/sPKuIn8DvdEhmWVfh0fyYeqxGlTw0RfwhBlakdYYrkDmdWC+XszE19GUi8K8plBNK
cIvyg2omAdebrMIHiAHAOiczxX/aS5ABRVrNUDcjfvp4hYbDOO6qHcfzy/uY0fO5ssebmHQR
EJJA3PpSgdVnLernF6pthJrGkNDPeUI05svqw1o5A2HcNzLOpklhNwZ+4uWYLcAi14ACHuVv
JsmzNicwggUwMIIEGKADAgECAhEA/OH3TxzsxiYnBai43hD2fjANBgkqhkiG9w0BAQsFADCB
ljELMAkGA1UEBhMCR0IxGzAZBgNVBAgTEkdyZWF0ZXIgTWFuY2hlc3RlcjEQMA4GA1UEBxMH
U2FsZm9yZDEYMBYGA1UEChMPU2VjdGlnbyBMaW1pdGVkMT4wPAYDVQQDEzVTZWN0aWdvIFJT
QSBDbGllbnQgQXV0aGVudGljYXRpb24gYW5kIFNlY3VyZSBFbWFpbCBDQTAeFw0yNDA2MDQw
MDAwMDBaFw0yNjA3MDMyMzU5NTlaMCoxKDAmBgkqhkiG9w0BCQEWGWpvZXJnLnNvbW1lckBu
YXZpbWF0aXguZGUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDNxFyhl/UuZdUp
uQiuqZBMSU/pN5SMIj4lkvTlrtp2jl4Q77wbv4vXdXIFWqKd3qtut55G0ptK4nXs1ARrh3AH
QAYwB0vW+PHVNPLs9yombnTeMgnEv/RQDFkH+DxoKdY5+DRUmcVO/tYl6ExMEBj6oh6b/63w
hIkC61WRETH3FpRCRbyNBD73OWt0KzxoKzW9xmdqfhNtylLcIFMzuv9C1WAqJ3mLbFHYaW4N
EMMckPZJWWYzvA2nwCCryerE3J9z4ZbSK0OK6DDRN9gW/H7+/4pHSIhdooGfQEdgLj+Z4ZPh
vLMF5DncBD8k5DOK8mlDxCKp4GsrLLuBfLQdxilvAgMBAAGjggHiMIIB3jAfBgNVHSMEGDAW
gBQJwPL8C9qU21/+K9+omULPyeCtADAdBgNVHQ4EFgQU3lTOaS6cJRsIzzEjdtC4j6GPtWIw
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
+9s6RvytgsBtk1dB4lJEMe32RnTa4ABWg2VpdqmG7wjr2BlUCzLzuxUxggJ7MIICdwIBATCB
rDCBljELMAkGA1UEBhMCR0IxGzAZBgNVBAgTEkdyZWF0ZXIgTWFuY2hlc3RlcjEQMA4GA1UE
BxMHU2FsZm9yZDEYMBYGA1UEChMPU2VjdGlnbyBMaW1pdGVkMT4wPAYDVQQDEzVTZWN0aWdv
IFJTQSBDbGllbnQgQXV0aGVudGljYXRpb24gYW5kIFNlY3VyZSBFbWFpbCBDQQIRAPzh908c
7MYmJwWouN4Q9n4wDQYJYIZIAWUDBAIBBQCggaAwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEH
ATAcBgkqhkiG9w0BCQUxDxcNMjYwNjMwMDYzMDM4WjAvBgkqhkiG9w0BCQQxIgQg+hndaOfl
EnHgoj0DIAPGCtwXwKXL6bQXMuvI9vfnUcEwNQYJKoZIhvcNAQkPMSgwJjALBglghkgBZQME
ASowCwYJYIZIAWUDBAECMAoGCCqGSIb3DQMHMA0GCSqGSIb3DQEBAQUABIIBALOPZ7yyR0FG
xse4d9qslk6/8UzClw0Yzo+vYni6ax+tiipB7Q8sZzJJyRVnYHqPJOtsPizyCWMtTkn9824H
I07rHCc5ewL5xGIt2e0vid0bwhZkvLqyy1plecAq1oKJjTS1OBWRryuWWFx4MpSn9noM62tD
VydtUkoJ9SePq3a0rMM+Z2BxkaVSUMc7mx7ljDtKRuga/c44SeOYVh/C5I1X5gBc7UOO2fNH
z9tJW9XpVkhWtnq3LGsOd+V2l3pGAOC4IaL1WsegJrgi4fiPvGL6bHu1W/AMQkcK4ave2r/j
ByczIcHnEWpqNx17vmFuODp/HW+Ajcaj+OlpLakNmIo=

--cma7qdsxiowsyd5y--

