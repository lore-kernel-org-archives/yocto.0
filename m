Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34BB2C54EE9
	for <webhook@archiver.kernel.org>; Fri, 16 Sep 2022 11:43:09 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (NAM10-DM6-obe.outbound.protection.outlook.com [40.92.41.104])
 by mx.groups.io with SMTP id smtpd.web09.5009.1663328582546443766
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Sep 2022 04:43:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=ttNaoLGU;
 spf=pass (domain: hotmail.com, ip: 40.92.41.104,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g9UyjEiIw9tqm4ZhnufN23R5+nTRGVPOaJhl5FK0RGVk18cFRPP7rNG4OmTZrxftv9zwqPmr8lYRCQgqLZJdR87BQYrB/KaP7Ttae32R162pYdyXrK5gEApXDVV7t7v8HyDdNpot1TtF/OUh7iZnxcaZor3eMFna2r4kirbPVGY144wHe496zkQr3+ZA5ktxNrHaeuNqabeinWQYZpujIvVcE/FQnAV6CFT7lcSZpuVYDgJI/Gv1OZspwte8m+lFlf0dJEOxaSoU9Jn9anKPUNVCSaTaLdc5wQVc2KbmnKMP7DNGg/s12ApJ2+KCBDlWFvFjsONJsf8Ow5aVPUWfcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R4Z5j4uL6na1U0BK0kvpjewvkV0L1CnWy4pjY9TN4pc=;
 b=Hbh4bEUSctEoaf1QUVRxQx71566pYgd9stUKXsf6PGHUHUWcJjefRHSX8mZpeJut2fIoOsGCK1cvt435jgYg4MeX1+dlD8RJnjSHTny4SvDAwMunumK6GZzD332VBIDDOty+gIepvg32a80q5OUWzsFdBbHxhZuF+SxUZHzHv8CEkd1CO4cT7B6K4R83ObUYzmjoBFdKs94Rfr3SbDqBF+HIgT744BxX3kvkZmU74k3J67G1S/6ssrwhAEg4pDGOD33/jVFfho4Wefc97qh9AnouBR9S8b5EyAh6xhDjEaQaSXHBuKjP4jdYpqAQZUdw/+qhxPINkFQuSukuVBCCww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R4Z5j4uL6na1U0BK0kvpjewvkV0L1CnWy4pjY9TN4pc=;
 b=ttNaoLGU47pg4kI7MPN3RDcgZLEscprQs9eCpDVyJ4jgKh5MeP690UspOHwojjU6SrC05XLVwdnMr0bQvBE8sCBSoJXL5v2hLhduWjDCT1i++dR6dOPykS+rQvzVdYgoSTCKF7TRVPYuvAqaLnJhzmHqRRKCrvCbrJQN+XTB0wKKf9wBNve0dtoUdUs9LW5BUfOFERcYA7CljPZIJmEwZt3gbgPC3gTRJAS4wFDHFNyRCg8jHLLyTRbczRbqxwLsS8jKJDkJgX3odaFZfcb5uShHHTAcyaLxlyeXxoPgOPKeqVNenNIV5R/yIPJh8kCwWwefQ+nbjwk/uq6p8sfxhw==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by SJ0PR84MB1436.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:a03:432::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Fri, 16 Sep
 2022 11:43:01 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::8028:978c:50d5:fbd4]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::8028:978c:50d5:fbd4%7]) with mapi id 15.20.5566.021; Fri, 16 Sep 2022
 11:43:01 +0000
From: Edgar Mobile <heideggm@hotmail.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Adding Vulkan to core-image-weston
Thread-Topic: Adding Vulkan to core-image-weston
Thread-Index: AQHYycEskKLcduGixUqgdEVWou0AtQ==
Date: Fri, 16 Sep 2022 11:43:01 +0000
Message-ID: 
 <PH0PR84MB1835D4BD7B71CB2ED806C2CEC7489@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tmn: [HYr4Nu5JKKndqSUninH37C/99+p2pAbr]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2cc70488-cc8c-4392-bc06-08da97d89bee
x-ms-traffictypediagnostic: SJ0PR84MB1436:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 dvyg2TrXZcS8ok4nQ9lNJOfXP2/G36BzwdSw6ZP6QBYYckk6NmHiEcKVf97FSpgNpRXqRBvX+xWEoJu2qXtvJYQShbwoHYyFLaOqLNg1/3VEAZoj5cbVWEA6GiH1mPDBD9SzThoU058p4k6rd66Q1ssImdz1KpqscG0z901jLZ7GI45H1LmA3WE0YIZnFLV8ZLNrJyY5lDAm1wLZmcnv/A1cL4zl/cjeoVhzIyodXaeGPDi/GBk3u5MZeeZ9Ad3+pmgITgVv18jGhAnBkFGm9PlUb/SlUAve6SLFoepfZzJ6A+idmJCLrfEs+f/LO6s/IzjnVMLvEuxuzZDdxlrIsbdAUUVKfzrlKiGEkc6VavxcUL6aiZt1bzSDT9wxnDEo3tdQvkNRCwercz7QNVTJR/N6fE1e1EQs7mxqSusW7P7J+JK2N6bZmduILaX4bmpu06wi0KuMjjWQrfuafW7ijgp6rJKUlk3txH6XhnAV34nYfCd1cciNIDjw1qpTysfQEGV49WiQgyQ79rttTcOqaj/11eCCFjk9NDQxUmL0iC24ymtwLAM1PzdkGIElmjxMZ2yWprGbYVS8hA6pkpx/8ZuatBr/OeVpo+6QQbKjNIaVzAA/vpin/cCacl7aE6XUjbUheI5NWww/Zkk8qS445g==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?n1DW47ZYggboAtZFBd2AAdxaBGCe6/weIaVsLRVWafAw/bxRr0zDkcOWSi?=
 =?iso-8859-1?Q?X/PG0LvGMWXNJhjlM4gs/QubHyX1HCuLkUynVjT6rcSuESQ2/iB1Zbf7SY?=
 =?iso-8859-1?Q?np21Ru63/FXScqQbOwROp0uJ/xXgKaQcT216b4UhalknZs6feS1kiYdNKm?=
 =?iso-8859-1?Q?+aFZrANiFXId/xs+F+fJdC5Sk1mXM+XW+QElmodYyrBJd9Xbn75u0JqIjr?=
 =?iso-8859-1?Q?zXLWJGPm3APHg+YQbN7RPlR/wRqprXSsWoksWYC0muEH8uplkfrX5oJr5k?=
 =?iso-8859-1?Q?uFIrvdlOKw1mf9bArTSn7LeziIv54k5IvH0FM4eS2wg5Wjro2zSmWDywVY?=
 =?iso-8859-1?Q?9CrgKA2HVjg7mYYqVmxSz1Y/9ksvBeA0S5+l9Z3af9wbbyd8s9jjTeZ8Ou?=
 =?iso-8859-1?Q?BVlWA0FXXYdMKKd7Fgq65wdWWtBAckopG8KYhT9P0HN3eEQyVpmiImjyc5?=
 =?iso-8859-1?Q?Gg73noUlhTuQVaw8YDn+lun9d6G6cPnCbwl28sjVjgWZrpNYr808FbD/ph?=
 =?iso-8859-1?Q?7wheSDNZX45gb/8mxDd22GxHbkwmPJyJs/5ojA006ukJDqm2ShL3vWlvoT?=
 =?iso-8859-1?Q?ceYfLfFlZBZ5ip+zuhI4gR+s9ngT2gRwoBCXC0rNkzPVHyLxlZmrrGdMM0?=
 =?iso-8859-1?Q?QlkSBDCw9h3QLCzB+IVIU17x00TEKaEyk+KnoUnYrvd/zEBOa8zTDk+5JR?=
 =?iso-8859-1?Q?usz1aqu42qlOnJCi5yF1Tkchj/E47PS5waVScVB/MXsJZlP0dFy5TU95KB?=
 =?iso-8859-1?Q?ezi3XIdN5TpkBOju/GOMmXONed9Fbq5lNI0mjvbYb3f3lcbxhACI3zBrL+?=
 =?iso-8859-1?Q?dqZmoJBC/sTDt7t08OEqJNUtMJdj3mmCsJ0nv7VUr7DpxZojOt4FoH/Ns6?=
 =?iso-8859-1?Q?Mxjbpsk08lYBZKIqWb678jpQt2m/A1JVhjb0yjsN6TXKpV0bO4qNURU6vo?=
 =?iso-8859-1?Q?htWhe5hjWUwpa0zGjZpohr1NyspYJLhuUE1jiNxgzvx5EXST5VimNQSkLm?=
 =?iso-8859-1?Q?m0oztqTLN1GdjnadnZoU3m3EDJsBSDBu/Ru31mxg1RM+6hrEygdIWN7CWg?=
 =?iso-8859-1?Q?x57oFTIJUafg7c78yfgW9fY98v71CsLhpojB0vgWNEwZyrXbV7Ae0uNBp2?=
 =?iso-8859-1?Q?abV8IHZFnhJ8tCSkb63skWx4KdIXEklOvA9BVyibqzly2r8YomdsbeqqSj?=
 =?iso-8859-1?Q?3zGPSmXoXFEevYQaRp54trG2Yk8Dy1QlMlzo3WDCmLQ7X80kVkVeBfPqyv?=
 =?iso-8859-1?Q?ExF59FadNDwfp6KVVTRm5INY9H20bjR1dW7w3o4MQfXna0c1uyWei7m9yt?=
 =?iso-8859-1?Q?aEDR?=
Content-Type: multipart/alternative;
	boundary="_000_PH0PR84MB1835D4BD7B71CB2ED806C2CEC7489PH0PR84MB1835NAMP_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 2cc70488-cc8c-4392-bc06-08da97d89bee
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2022 11:43:01.0722
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR84MB1436
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Sep 2022 11:43:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58059

--_000_PH0PR84MB1835D4BD7B71CB2ED806C2CEC7489PH0PR84MB1835NAMP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Greetings,

I'd like to test graphics rendering with Vulkan on an Aarch64 Yocto honiste=
r (qemu, host is x64). Can you tell me which parameters I need to add to lo=
cal.conf to get all libs and headers installed (plus maybe some useful tool=
s and demo if present)?

Regards

--_000_PH0PR84MB1835D4BD7B71CB2ED806C2CEC7489PH0PR84MB1835NAMP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Greetings,<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I'd like to test graphics rendering with Vulkan on an Aarch64 Yocto honiste=
r (qemu, host is x64). Can you tell me which parameters I need to add to lo=
cal.conf to get all libs and headers installed (plus maybe some useful tool=
s and demo if present)?</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Regards<br>
</div>
</body>
</html>

--_000_PH0PR84MB1835D4BD7B71CB2ED806C2CEC7489PH0PR84MB1835NAMP_--

