Return-Path: <Hugh.Manning@enatel.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F320EF06E4
	for <webhook@archiver.kernel.org>; Sun,  8 Feb 2026 21:10:02 +0000 (UTC)
Received: from BL0PR03CU003.outbound.protection.outlook.com (BL0PR03CU003.outbound.protection.outlook.com [52.101.53.135])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.34088.1770584994128613217
 for <yocto@lists.yoctoproject.org>;
 Sun, 08 Feb 2026 13:09:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@enatel.net header.s=selector1 header.b=oyCucClS;
 spf=pass (domain: enatel.net, ip: 52.101.53.135, mailfrom: hugh.manning@enatel.net)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sVvcSHYkvW7+ve+OZxWh99FaxY2cGV8L/4uZLncFLoRHtAegsLUjDLhuA6ngRUG/FA7zen39bSqb/bQK9eJ3KxM9WIzOQwKCEUgn9kJkzfz7yE4QLIwGsxznBBWgjSjD63XxstWHHRzbTTpkRblM8UDLQKBa2a9n2QZBs2XsBZz1injB23vTLRgQYEwc6tS2UFiQj777Tq2XtPMMF0wHsxE/dsOjZLNNY0bnhooPhp5e0swn9yL6fvzIe1eSRq7yx8m23qX8tFdHRznzPurhN7ffCyr+vadD3sgT1ZNabcvvNGsdrmupwV//H4+LcbwqJ1+vJpE9PFK3ewmf70SwYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qDlDOn6g2wPhx6J8hBnkGOooqNgfrhkEN5zbbJT8NXw=;
 b=hiv8Jaz/q0Smyx0zCE1elmvXEm5jZkwaB5doecWZXnOL2qGbaNnv/GnmMgE5xMP4b0j+T0PcZnc+2U6cOUP9N9NxQBA8jdOHKdbuytM3Thk+LFPM+/5JgH6Io4op85N7t4Tw43jrbx5OMnGb0nrouRzchteGaRQzJVfFNt69HYQCVQShFMJ5ZnheNZhZvbdWj3JoeRzHhF3ES+JQ5jzGFHOkwg3nJVZJ8a9qXb9Xe1OHzRgTSUasXr1wuhV3U7u4EZut+OwJ8l9CsVwfiZdCmAXYY0eJTefX6YDf9pgqn+E1wWQghKez+hX8Mn0PArG+uzz55dzEHy6uEhIC3YesgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=enatel.net; dmarc=pass action=none header.from=enatel.net;
 dkim=pass header.d=enatel.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=enatel.net;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qDlDOn6g2wPhx6J8hBnkGOooqNgfrhkEN5zbbJT8NXw=;
 b=oyCucClS4i022rpNjHeNl3sElTGFaflFfL9ER66DxuhSw2BK7wM+8gaBddillhd4uBVWC1W0vOw69cC3Phu7r2dNTMSNz2isn/jfOw8FAwn871Fv2gNP/QLXnvRuVP/ohWQsVEvAdZY7vvxmSFI01g0PnSvs47EsLUO8qRRWRAz++2o0Ze9zZr0PhG/um8TCq9776Aw1KJnRbp1dtfUTqBAgXV9d7LzhLiQCcWBLGHB9nnLT0I58DEUDG4i2N6z5954dCj85n0F5mEkqUCjqONFthbPLHmZ51VlMt6983PwaZocZh0x4x1K8XIa9wDikyrDYYJ4VjfLCrluLg5JsHg==
Received: from SA1PR07MB10010.namprd07.prod.outlook.com
 (2603:10b6:806:3a3::11) by SJ0PR07MB8518.namprd07.prod.outlook.com
 (2603:10b6:a03:35b::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Sun, 8 Feb
 2026 21:09:50 +0000
Received: from SA1PR07MB10010.namprd07.prod.outlook.com
 ([fe80::3:54e1:245c:a2ed]) by SA1PR07MB10010.namprd07.prod.outlook.com
 ([fe80::3:54e1:245c:a2ed%4]) with mapi id 15.20.9587.016; Sun, 8 Feb 2026
 21:09:50 +0000
From: Hugh Manning <Hugh.Manning@enatel.net>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Arch Linux - Python Newer than Recommend i.e. post 3.12
Thread-Topic: [yocto] Arch Linux - Python Newer than Recommend i.e. post 3.12
Thread-Index: AQHclkhuieiwsmb3CUa9tNWYy/+31LVz6xGAgAJdn4CAAwTRtw==
Date: Sun, 8 Feb 2026 21:09:50 +0000
Message-ID: 
 <SA1PR07MB10010A6E6250535740D9ED84DEC64A@SA1PR07MB10010.namprd07.prod.outlook.com>
References: <bebf26e4-234b-40c8-af17-1582d733cae2@gmail.com>
 <F1186EBC-365D-4CC0-8BAE-3837F922BE3B@arm.com>
 <13ceffeb-db33-489d-b36e-81868b778fc8@gmail.com>
In-Reply-To: <13ceffeb-db33-489d-b36e-81868b778fc8@gmail.com>
Accept-Language: en-US, en-GB
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=enatel.net;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR07MB10010:EE_|SJ0PR07MB8518:EE_
x-ms-office365-filtering-correlation-id: 973e9b7b-4daa-43c2-8ea2-08de675665a0
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?daQn9vT2ttrZgtcA6+ORUcTV1ZpQkdACwMImDC0baa0csaOGdmpnne6Ugr?=
 =?iso-8859-1?Q?n6h2lZtUU73Sm5SsK/o7OPgOSPTbrBI70fZe530GPRuWFIBmFtmdydXPGA?=
 =?iso-8859-1?Q?fvtirLcCbbmMy3fRWKZzJJsC+l47UohcMBo7BM5e404mjD5mnCyANFnNhg?=
 =?iso-8859-1?Q?672ZHVThroYsLJ/it0drGelFDoxSWr3PO9qOC+T3EkR8YLCHMj3XBSHYXV?=
 =?iso-8859-1?Q?bNYL62NFXm053icm8ktfolIy8NyuLUq0TzZY8dTxjFL6UeOrl6+eMvZaSu?=
 =?iso-8859-1?Q?LoVdkkOoHIkp7oP6+Tf11kGgA1JzOzr2vO+DOGGq2Btfy+zIvcgyJd8Rb4?=
 =?iso-8859-1?Q?FtQGiFVM9WAFw8eXAlcAXLiz3NZwmMb/cVcEv86Q7X0E1lZ7f0o/Om6Qzp?=
 =?iso-8859-1?Q?ihcb7jVBoJHCg8RKJnAyZwLnEbgLS7i59yscANY+sEO8JDyblDuZDXxZtB?=
 =?iso-8859-1?Q?r8CPYom/w2Q9VH1KepdcIOZ6HmqmsEBa3siWAfAJSojp0u/VQfPXNjG6IL?=
 =?iso-8859-1?Q?MoReIxXljZNe6geRGuSVwkPJFKa09uFuPJD/ny1AKnCoWRnDuhwTTx+ulc?=
 =?iso-8859-1?Q?AY51MhFnm72MgZkH5P5MLaWJ565F7Xq4NFBV80A78Ffqeax/jDZ5UB9qHe?=
 =?iso-8859-1?Q?C7phjsaRl5lBmLsz8gvV2EZ/4COJmucMvn9F5ACt4vbnLUOdxKKa52XMJ9?=
 =?iso-8859-1?Q?1RAMoHxkfGBgMW/VHFwRgKMHxufMWc5IAgcytbx8feHSO45Rc28HcOeudk?=
 =?iso-8859-1?Q?H8HCEdOWDuXiuoju3zfAiVuyqWBGWtA+1LrNZJlRycIPcVHrMShsE4qJjG?=
 =?iso-8859-1?Q?RJUfqRxj7rrPQqRgeWfCp5JXuzL1BLnST0PgPkvgceEdy17lXW55jQ0RCt?=
 =?iso-8859-1?Q?N6ltDCSo3/3hEK8F3Azl3A7eWwWOrgZl1FqafCY+9yXlbReHPpIpDqr8pS?=
 =?iso-8859-1?Q?aUIJbawZJlTE1rlvi/4z/v2unvKm1mYzl19vazkrIc8vAZMlMbYN7fZFI0?=
 =?iso-8859-1?Q?GWhYAHx+qFdKJUuYHkf5oVCcGHRMBk/ca8Ks4o9tzzMpbjCsMNKldgJlhG?=
 =?iso-8859-1?Q?yHLgzDj5ztGDqD6ye1bcLdfr9bJs9S6dbxMxHIve+O+mk1K3nhiQ2VctoW?=
 =?iso-8859-1?Q?fD6MbCdVgvAAOLdg98lo7JDZCisn2cmaxEdiWdrveO8Iwh53V5hvtYRvCQ?=
 =?iso-8859-1?Q?EDBn6tttGKjkXH4GsrY7ulrM1G1SvXn9RXJOqBPnXTH3WGEdw8GBcyxydA?=
 =?iso-8859-1?Q?Dfw+66bYZcd7iFa9qoKp/ncnwILejG8lemtlkrmKUwG3n2RS1hx9Dm4xhG?=
 =?iso-8859-1?Q?oZim8KKAFq+YCnCFRCJ1fKmK+4R80o7xN5RDlf+oF9oHAeBvZBh/wPkcn6?=
 =?iso-8859-1?Q?y95WcDCzQAQpzubK6GtndJOIjSZH3dTKZ2D4Aek8jHoRXUdYF8zHJwot3B?=
 =?iso-8859-1?Q?GUQAd4TP05q0cOdU8yEWDMsfNh8rNp6H8YjYaEDewzlUPfLc0u7y1XBdl6?=
 =?iso-8859-1?Q?XYObzwfPz4gS9aFtsehWXpfmCYPrdZNstaHbSmCij8XB/m6p1+Pxifj2e+?=
 =?iso-8859-1?Q?AZ4fdjGNpUKf1OHbExLY/OGS2tP2h6U+ErH6MYu5COOJqGviXQDNSoSCKA?=
 =?iso-8859-1?Q?yzDXIQWsbFSxY=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR07MB10010.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?MF3d0KlHqEGhgjYSR7//5MSX5T8ogHNCBydpQg+7eyDyWCnXa08PZkDK4U?=
 =?iso-8859-1?Q?M37AlQAys0B8Igj2/Rfju/YD35nN/WjU26cHr/L4qgmIsWfE+MCUl5h3BN?=
 =?iso-8859-1?Q?mdnnwbDcG3c6No+0fa4X0jm8l3qTb2bRcP3k+SF2cIan+2Ozy7WvH8K6Y+?=
 =?iso-8859-1?Q?MQf9WYtE+MyU2FdKDrURCtYp8qqHRqESD64V8PYhVBhFeHEwK5CrkG/YJj?=
 =?iso-8859-1?Q?PFo/7o2bzEFlNz5XKuRVZ7LVvdhieiVzfckkDphne7NN37yxdR3bl6eeUL?=
 =?iso-8859-1?Q?DewOgjmAvgnVbMlDTWrs6/MFXDHDxKRw+vVBW962eqn8X+ILBByoBzs7lU?=
 =?iso-8859-1?Q?/6VuUYfUri6xnB8+kY518pR7bOKiiMCMPctIcfMh5U8/gxCkH/PLIP0ODc?=
 =?iso-8859-1?Q?KNQpumpCHuU0CUXBRWejb2W2uHgqJwQTT26Gy4O5M7rj4gKSXbEBRBqP55?=
 =?iso-8859-1?Q?UJoKZEj5tAa3MTs2djROiL18fyXJI/XOz754Xq2oLB0uIiCIXG8umFruFg?=
 =?iso-8859-1?Q?bavLw/imA39UV7LKv/f3fU50c/HxeiB4NFTC9kL8fRAePNh1rnaexdPssO?=
 =?iso-8859-1?Q?F7jjlTRconpHVaBkTlwch/Tu06ze4lxWrHD20qSBnRLWqsefiVnSSal8d9?=
 =?iso-8859-1?Q?NR1uONGQA+F9q13ivZVLN95kRI8BMdLvpGgI6O01i/ycD91EjRVg9S0yxk?=
 =?iso-8859-1?Q?+9qrPNtzzCrmdlP5wBJGiJd7CxIj2wyFDAtO5t1gIFHzBw1K4Y+p9E+aRb?=
 =?iso-8859-1?Q?oz3uFwbVXoNO99pm6GjhJkdtlyayTc5VInT7qSuntqxUcAyWKEoc65BwW5?=
 =?iso-8859-1?Q?1i1jKtrYERpECjnAvV6D72rXBP9SLkI8+jg61OQDxX9oKeSDf/kTnYwrYA?=
 =?iso-8859-1?Q?ca+LkboY5gGsgzyNY3xu0iUd2OX4/HYGyN+n4QTwI88MxtZ/opJL7gdTtZ?=
 =?iso-8859-1?Q?wR2R7drvww+cSQvs60xUy2yquLGVqHFXmF04Gu6CFkEaRNRrzkSvrz/MG+?=
 =?iso-8859-1?Q?Ue0VuNdJkVB16PZhLyu8wULWZrUFsFFuJ94gzhIWRU3NKQh7zfMPFaPfK5?=
 =?iso-8859-1?Q?RpmuHEGrsFolu16nMKOf56csQGDSZCTzGJlFozUXCxefZ0eqLuht2PIBlj?=
 =?iso-8859-1?Q?fnBXAos5SqVvpGCwgR3ZOS3jYvAe4u/C/PZDrhjIzlLYhXuuDLZNW+gtkb?=
 =?iso-8859-1?Q?M/JrYkRIExHGa84nT+fsCwGr/uCe/6p8auO5swypKAWHXpLlyIjS+yJpaH?=
 =?iso-8859-1?Q?9Sk1mIUREG4Vomm+otkR6xIfSAuR/aJOkz5fIqSOB2P4VJ/4AuRIvSRrMb?=
 =?iso-8859-1?Q?j30hABQM7XhUE6HoVfjT2VEzSoejmNEjX/f3zCofHkyb3/ngXNIBCkSF9U?=
 =?iso-8859-1?Q?4C5H++4NEws0gSyoGCqDLElrxAZGVnrFiwVgAVv9bKlupSyvL78CIMi9mG?=
 =?iso-8859-1?Q?vlyDbib1iGW9un5sAF4FXExt2VeqPTsZIY9b0ZAl6zjyyzQoGZEGEiPIAU?=
 =?iso-8859-1?Q?8oWRoLLJM0ZgQuHRd+stUU+nF6Vt1108ASg/27538DRfF4J1ZSZls529K4?=
 =?iso-8859-1?Q?vOu4NOIkh12glIz/FmrhHZFWNppvyq5c7Te2MUAxy2uw4QBgQLeqfwNyl9?=
 =?iso-8859-1?Q?jWykvCYfDcpWu6sJJjC0eNWNZxMNyrh+lMnbg06HMG9Q5eq2SQ/y8FzrnC?=
 =?iso-8859-1?Q?xPguzmgvTXg26datYof44NusrPTWXwEC+mWhgAeQR77yCWa0ebEJVgBiE1?=
 =?iso-8859-1?Q?CHH7ZTT5nPEC/AZAx2Dw3txbvdfmXCQNTBJAsZQo+v/j1hC/AMwT97GhAU?=
 =?iso-8859-1?Q?lDUCjCjJiQ=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: enatel.net
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR07MB10010.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 973e9b7b-4daa-43c2-8ea2-08de675665a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Feb 2026 21:09:50.2803
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f91aec59-3217-462c-bd67-df1972f08bac
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WSZUpfHrbQGcR16WQM877QHpVQIAmamswxBP33+b3JGuD9ngVE9BgkijCsNuf9+YQsuz3GUPTYm/lqVMy8u1HA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR07MB8518
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 08 Feb 2026 21:10:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66230

When I've built on Arch, I've installed a buildtools tarball to work
around Python versions, and it has worked well for me. Here's the
relevant section of the manual:

https://docs.yoctoproject.org/ref-manual/system-requirements.html#required-=
git-tar-python-make-and-gcc-versions

> However, what's the longterm strategy around this as its been a
> program for several years on more bleeding edge distributions i.e. Arch?

The manual states that they are unsupported, but that's not entirely
true, since you can use the buildtools tarball. Relevant section of the
manual is the note in the section on supported Linux distributions:

https://docs.yoctoproject.org/ref-manual/system-requirements.html#supported=
-linux-distributions

I've also been meaning to try Distrobox (https://distrobox.it), which
looks like it might make the workflow easier when running officially
supported distributions via a container.

Hope that helps!

Cheers,
Hugh


________________________________

Disclaimer Notice: This email, and any attachments (if any), may contain pr=
oprietary, privileged and/or confidential information. Unless you are speci=
fically authorized to do so, you may not use, copy, or disclose to anyone t=
his email message or any information contained herein. If you are not the i=
ntended recipient of this message, be aware that any use, disclosure, revie=
w, or reproduction of this message is strictly prohibited. If you received =
this message in error, please contact the sender, and promptly delete this =
message.

