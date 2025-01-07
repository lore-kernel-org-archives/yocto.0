Return-Path: <kumar.manu@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A811EE77197
	for <webhook@archiver.kernel.org>; Tue,  7 Jan 2025 09:07:46 +0000 (UTC)
Received: from APC01-PSA-obe.outbound.protection.outlook.com (APC01-PSA-obe.outbound.protection.outlook.com [40.107.255.72])
 by mx.groups.io with SMTP id smtpd.web11.16466.1736240849990880734
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jan 2025 01:07:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=MyF6KrK0;
 spf=pass (domain: siemens.com, ip: 40.107.255.72, mailfrom: kumar.manu@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sbrTFou8e4OzoB7Oplw1Kj8KUAAH9Z1v6MKsqi/QJurHDUWeEdDkW9DSzemtoJ1rFGaREy1ZczWOWhe5zPCGaroA9/N1aLOv4mEcYU+wg/M+d0dDBNUH7wsm3kmT1gjbpAdXPWgMxg+JGMVCXL0BNDku31Wnwxw+zzd0Zu2y2yxh/GT+Z77ZP23EC6q7DW2fVEUU0dlAru9M8qGTjAXnQNSCzLzxgdM50n6TGPOBFsN2fzOpqWqXwIbWil39dC8TpQ3WeoivrCvn5OdnD3+vEsykwqGGKamGeaFOWglqIdFyxDLpSNdGcfgtMYQQM4WLLodh6tnmWBsqUZVnG0MVLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UqhbN+98gE4Jrl/jpH6S43+GzybRz/2Sg7CiNZm42e4=;
 b=IA7ji4FPl1f0K+QyGUmGq5oFPST7tXOwOP7nMOECEpPRfmDOarH8oJtFbJM48sf0GDSpbiAGKsucmlux3A3TI0vVF1ulmj3UOqKInh/uRQdOnWxd9faj1MCsF6b/kETHPWcRovjiauLRF2TMERZ2vaNa4LuRwkWsicTZvef6e52LMVYY5XtOYPQ26mQdS46ZD9Mbs6MMjxMuesJkbSgXHQt09x72fI5rWAwOJqcGvA7j7cV3mwThPBawtxyWwhXfm3nDdoINfsSM3dHJ3Yo1lfkeJq4ituqC7Q8YynCLc/ms07b+zAQXYa0d6r6G/TrPveAegMfq2VltQDyLvdeXOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UqhbN+98gE4Jrl/jpH6S43+GzybRz/2Sg7CiNZm42e4=;
 b=MyF6KrK08qRGm1swFUXZe8SmvZMFrzNZSkc2MYePoFZtMkdKJ3xtxLoHdxcHh5jeQTB3WL2uFjhSb7C2DmcFqLhP4mbs/d3//nK5L1K/dUEECNvBDMFsJ7kd42gPPvhLt1l2y99xoAxg4aR876Pc272l6lZ6XqzC/LcF9x5FR87xuUrmPxTPUNteFGvWXJ6vFIFD+CJ22dAZUWvfGKCipyRe8JW6GDpWGuPfWLqMxAD1eF6jwJ4wvEVY7bXnNBfnyvXFOdwfjRuD/RaUb1U/eWukZRXbnfjwsMWkSVpWhPdK0hgG5RSAvXpK1OBKzkC4z08Pn57g7sKhaC/Hh0qBvw==
Received: from TYZPR06MB5178.apcprd06.prod.outlook.com (2603:1096:400:1f7::12)
 by TYZPR06MB5299.apcprd06.prod.outlook.com (2603:1096:400:1f4::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.9; Tue, 7 Jan
 2025 09:07:25 +0000
Received: from TYZPR06MB5178.apcprd06.prod.outlook.com
 ([fe80::f6de:c016:c33a:318]) by TYZPR06MB5178.apcprd06.prod.outlook.com
 ([fe80::f6de:c016:c33a:318%6]) with mapi id 15.20.8335.007; Tue, 7 Jan 2025
 09:07:25 +0000
From: "Kumar, Manu" <kumar.manu@siemens.com>
To: Gyorgy Sarvari <skandigraun@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: RE: [yocto] Query: Regarding lighttpd/librarries in /usr/lib not
 copying
Thread-Topic: [yocto] Query: Regarding lighttpd/librarries in /usr/lib not
 copying
Thread-Index: 
 Adtf6VoFMsgJcOJER+q6cre+/gzlBwAPQLMAAATTiOYABKyjAAAYT/rAAAgPmoAABVvkoA==
Date: Tue, 7 Jan 2025 09:07:25 +0000
Message-ID: 
 <TYZPR06MB5178AF5905FCB5E5C445A0AB86112@TYZPR06MB5178.apcprd06.prod.outlook.com>
References: 
 <TYZPR06MB5178D4A9A5949582BCFB9C5286102@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <b8af4304-ee4b-4903-8d4d-2d91b804e393@gmail.com>
 <SI2PR06MB517020EDA3F2E22BC5EA20B186102@SI2PR06MB5170.apcprd06.prod.outlook.com>
 <767702b3-302c-4695-96f2-7299547f2da8@gmail.com>
 <TYZPR06MB51784D93F9A0D31C8265747A86112@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <5af3a54b-8f9f-4a16-ab36-e886d23fc2c9@gmail.com>
In-Reply-To: <5af3a54b-8f9f-4a16-ab36-e886d23fc2c9@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=2bafe119-c64f-44c2-b705-0c615e6acc5c;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-01-07T09:05:27Z;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR06MB5178:EE_|TYZPR06MB5299:EE_
x-ms-office365-filtering-correlation-id: 19bd880b-2649-4029-bac5-08dd2efab404
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?is53dq3Vm7rUQ6x2WTRYckgCENa7oUdqvhhPl7ETXoJmHLv7Ym9fuePdJGa2?=
 =?us-ascii?Q?aFMpmKn9G/SfDvQwICnzZ3giCkJqnFnxnmhYwKAeaTdjyIjGHTrR2/Mge5YV?=
 =?us-ascii?Q?9TUyIEEEffqUGp+QoubN00nfwSbo7DKW1tevcQ+pqS/N9qfERNFUjrcqRrv2?=
 =?us-ascii?Q?/kmIA8nqWRynefY9exY8XDr4um+ql2WzBO8ihnSoR81ptd8V4GYIpNGAU0Gn?=
 =?us-ascii?Q?x6SmK8+WQIonDVT8Btwl4psxaSPnh6F3vLVETde5OPo/w6cHURfihmo7i6S2?=
 =?us-ascii?Q?GWn5m5iJmiOze9/PlBEQ2NyDDd0Lq9biHE07mmN/gPfg7XBd8L9HRAjJip9J?=
 =?us-ascii?Q?HTs4AKFn+ZMJprSmo7vyCeh+fc53RBUUyWO+tNqYLAfOS6b1HlqbbpxzzcOu?=
 =?us-ascii?Q?LZW01069gVWbaHjwIPNmb0bYI3tQ4Tbpqad5IININQsD8Jx7l9NP43JCu7Zs?=
 =?us-ascii?Q?Ju0Ea+0qwzdQloJ0Hz5qP2sntJ/C/ZQguwiSSc7z5NJgr9cuNtLpiEc0pvDL?=
 =?us-ascii?Q?L3vk0foHfHzZUNkhoWCseVrAhVs29kapckMMDH3ravBkKUDlhlKwALBU28mB?=
 =?us-ascii?Q?U++3YEuOQOaEckCAwntF01XglNlaHVYTmk4Uco2NfAi4fWe3/z85Pzo5sqjH?=
 =?us-ascii?Q?fsUTQLtbRkTMD4in3FJytlGTxefqpRu48Z90zbc8KiYZklUibD6vaGzt4ICv?=
 =?us-ascii?Q?Is/S89MylCTsEw/ML5tVgkxYcrp9wkHXq47vaA2g3ZDTig5HIjoli4m83IDY?=
 =?us-ascii?Q?9yffbnwfXcwYLKGAELfL6B7Q0L/th2/82Fu4ua4nktWN69OSa66fYgW1xRKB?=
 =?us-ascii?Q?CQiV0jQBOgWeIuDlANppqz4Sjqek29cE9I3S7eCfJf6A4OmRckTw6fi7PNFp?=
 =?us-ascii?Q?0wqybOfBCOFvk2NEk+HAGYWxl4r2jh2GWM24JEP3jrToR89k/m8s5SFFJiok?=
 =?us-ascii?Q?/Jegyin0UhABwaRJN7SR328O3VPXg8LyZiIP08oDbEba6LMtCUdxtzplGVSS?=
 =?us-ascii?Q?zW9/Z7nJqJgWptJ9HYOO/1lVLEnNS33l28ulOsnz495Xl9k5ZtqdUy1dGaH7?=
 =?us-ascii?Q?eYSWhh6GYkmG9988Bzk/X01Np5tyfE8+e4v0rtWS2x0At5eVA8Fz/gSqZpXz?=
 =?us-ascii?Q?R9xFn3tG+grBHVNbpoi+iFPKn93BlPGtzwcD00BPidXXQesLf31qJjnZfreq?=
 =?us-ascii?Q?ZSkzwywaireYK0EC7HBs0lN+0/SXY7qZMPLh1cdgEuad7SJXcdft7GijmlA6?=
 =?us-ascii?Q?zjNrefKic+sT905ZFVJaZ/co1Sa7592OsaR/HYEANm+gCQBl5g3Y6S1pC+Dm?=
 =?us-ascii?Q?ha0W4oijIHqCfwu8k6wsTD2hplT8eIx+7TzbaG32cMSfACQ5DIdVOVNXePPT?=
 =?us-ascii?Q?NHqdS/OpQwGto0ikXMrSRPBoWo3l?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR06MB5178.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?aR++RWyqalZNMEbI0MjxwyomqLrVCOCY8JNGgacfEKjjrWCiQuhPF2A69niN?=
 =?us-ascii?Q?A61czU3DAhubSBzWOZ1JHRgcpvBTk7Ko8KQEzrOcQ7UO0zMFsgCghP2r18Nv?=
 =?us-ascii?Q?2hTFxytvIZWRDTreaQT6R59lP63MDL52S5lJ+5HJVtogRkyv84StEDUvdTQL?=
 =?us-ascii?Q?jT3dhb4cdjDpVq+u3+HqCdsFzyoqtXRZrMrZ5fH6SLcfKyUwVDSIpKrl5fVc?=
 =?us-ascii?Q?i6qHWmsHMe+cnJKGKxFWnZBYZXRDLnOZYl/X4koOuxKF/8yLSCiWhB7nJXJn?=
 =?us-ascii?Q?gOqyT5RlCAa7Ak1CHc9ruv+hdFsHyzEX/UOP06Md+gBKpESNsgfvmTS4gWzR?=
 =?us-ascii?Q?/gBBpDbF8Ri9cKmidn8EqhtkTF+X4aGbvvCKr91tg19lFPLpKX1RtdsSnu+u?=
 =?us-ascii?Q?/FcySGBkYXSduRhdzmnTV98AHp0ZjanRuRujBi8HdL3QWdFuNQ0g0QnKZkVI?=
 =?us-ascii?Q?wi0rczbuAa5BFrVhlPtIIKMZRmt+eb4BpJyJ7GObJaLF5baJm/CqnUO+4+VW?=
 =?us-ascii?Q?i6XeKqBorrgo5xDqb1MbCg/I4tu5fHp/m1DVMxxNSjVX9P/AUqMxWDnlzrPP?=
 =?us-ascii?Q?ZMRUu5tP3p5uycWhV3xBybROdvyvE8s0i6uQf1vRzPYnAgX10vjiNopytibV?=
 =?us-ascii?Q?+5e/wH5/3TyA5GNQwgEJNCP5ohQepWax2Q3OVXIdgHTEyVI4Vz52L+lkTp9W?=
 =?us-ascii?Q?Fwapq17ebURTLi6qSJZroW9tBALnHpFpsNMbigCr1TxyVK8gjRGacD7Z3hkZ?=
 =?us-ascii?Q?FHssIhE+uPcyLz6DzhgvymqwYe611vJ7SqYnE7Dg64ahE+xhS1L7d30V2hJP?=
 =?us-ascii?Q?LpOpQrnRtDnhOe3tHu8x0XRaofBd1XFsAfwnE1atNmVn0BhI3bWE8ZVRjGMe?=
 =?us-ascii?Q?MaiqjPA/RZw+f58RRuIzgObNHQlrtag+6qK25WdeAdKOQikrSH9HDuG+x2da?=
 =?us-ascii?Q?5tXwqHwERghJazWDZzw+n5rK9pK4Fu53uTgCaLw/F0Fl10OBoCcaz9/Mcn/o?=
 =?us-ascii?Q?kpRAoGAF/84fhv9qFdqHTtSrWRxN2s2O6pJ7sZiTrYHAHsZuTcVRIL7zOTAO?=
 =?us-ascii?Q?+Fayx3xd7nV1lbclgyjSxeGQl2QFtNLmcbjPKuv1onQRvNUXj6BGq1hGsQ7W?=
 =?us-ascii?Q?gSRlgzDcc5GgSXnGeaq1IdNaA0KU2390Soi21v4xN36IM31BV2ylOhkU9pNL?=
 =?us-ascii?Q?NEsbo8iq3TIeFScF3wv6BErJUhW6EzJNMd43ICdbHj8M66GDfcxPpNXZVDPj?=
 =?us-ascii?Q?yaYrabASJcZvn/mt5YeFsuxqm48U2ACCzbOY3unFi9chrV4xNejg5lk74cj0?=
 =?us-ascii?Q?NlzSDgsA22ps4T157y6r5SXpS/3MUq0yhPkwe7TQ9JgHcFKmbKew0WDu1rk/?=
 =?us-ascii?Q?ZE+YemE5J81/4eEaGUMocNfi9IoxdfKeJL0eh5JY3UgsEXlC0YLsQDo1yZvr?=
 =?us-ascii?Q?FSP02/94L2UvDC1I5f1AvCHmwhELrgxCsoPu/N1NyAWM2msg3VFijk2z25/+?=
 =?us-ascii?Q?IiY/CApSxPXRe8lq2+N+0KworGAZOpIIpxMxZ2ghUPr12RZPGUWHyaTJlsIx?=
 =?us-ascii?Q?NN8bvGMbB0qZmO26MFkCC/0wKI1PaYH4GquDENaL?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR06MB5178.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19bd880b-2649-4029-bac5-08dd2efab404
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2025 09:07:25.2913
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PxYRJqZ1seJADZWqDao27sb8d7yq7V28O+pm3vPp57i7CTNnjrp52j23dot/Et9SXJ7ZQmODEuoa3HnRsgHKaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR06MB5299
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Jan 2025 09:07:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64507

Ok , I will try and let you know !!

But how can I make all the modules to be present inside "/usr/lib" instead =
of "/usr/lib/lighttpd" ?

Regards
Manu

-----Original Message-----
From: Gyorgy Sarvari <skandigraun@gmail.com>
Sent: Tuesday, January 7, 2025 12:02 PM
To: Kumar, Manu (FT D IN PAMC MI EMB FW) <kumar.manu@siemens.com>; yocto@li=
sts.yoctoproject.org
Subject: Re: [yocto] Query: Regarding lighttpd/librarries in /usr/lib not c=
opying

On 07.01.25 06:41, Kumar, Manu wrote:
> RDEPENDS_${PN} +=3D " lighttpd-module-cgi \
>                    lighttpd-module-openssl \
>                    lighttpd-module-redirect \
>                    lighttpd-module-setenv \
>                    lighttpd-module-auth \
>                    lighttpd-module-authn-file \
>                    lighttpd-module-secdownload"

Right - the issue lies here (at least one of them). Change the underscore t=
o a colon:

RDEPENDS:${PN} +=3D "..."

This syntax has changed in Honister release, and the old underscore syntax =
isn't valid in Kirkstone anymore.

When doing migration between releases, it is recommended to read through th=
e migration guides of all the skipped releases:
https://docs.yoctoproject.org/dev/migration-guides/


