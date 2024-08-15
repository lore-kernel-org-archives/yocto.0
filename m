Return-Path: <steven.monsees@baesystems.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCCA0C3DA7F
	for <webhook@archiver.kernel.org>; Thu, 15 Aug 2024 10:37:28 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web10.119896.1723718246281113421
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Aug 2024 03:37:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.us header.s=trusted001 header.b=h7nl97UM;
 spf=pass (domain: baesystems.us, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.us)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.us; i=@baesystems.us; q=dns/txt;
  s=trusted001; t=1723718246; x=1755254246;
  h=from:to:cc:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=NM/7pJ4pttcMwcJ1UOYsf0Wy6iS5hSbScO8FiWNfono=;
  b=h7nl97UMxbaSrBRFEPdypd5kO5EeLj9k/WWTHM2Zi2QyC0pZTFfWY/CV
   l3fuGDhZMzIA4aOLeRWfH4c5L7MbYy/EQXUWjRc0hgqI2LSkIg3gZ7mto
   41bl99tCm9PIsGPFa+54i5/laJIneZapXUWm4KYFPft91P/OpQv2g9v22
   a+ikYGrWoUVar315S9LzPme3GawLFiprNWYrwY43VVbXXTuAtp9bn8O2F
   aGbyfMH5f3gli652gP9iKt2Nr6uo0oE8MTMVqmkOpkOryu7PZgockZ5qb
   uvGLJMWKY4ddxW3yMfHSCfqpNtfg+tZ53qRNsZHQHbtEBIFgdIkgKRZgX
   A==;
X-IPAS-Result: =?us-ascii?q?A2AeAAD/2b1m/wFUSQpaHAEBAQEBAQcBARIBAQQEAQFAC?=
 =?us-ascii?q?YEyBwEBCwGCQ3sCgWQdhDiIHYlRA4Y+hSSFY4shgSwUgWoPAQEBAQEBAQEBB?=
 =?us-ascii?q?wEBLgcPBAEBhQYCFolQJzQJDgECBAEBAQEDAgMBAQEBAQEIAQEGAQEBAQEBB?=
 =?us-ascii?q?gUBgSCFL0YNgmMBg3UBAQEBAwEiEUUMBAIBCA0EBAEBAQICERUCAgIeBwoVC?=
 =?us-ascii?q?AgCBAENBQiCdAWCMAMxrl03eoEyGgJlghgE2xwNglgJAYEQLgGBaYZDHgGBb?=
 =?us-ascii?q?IhuggxDgRVCgmg+gh9CBAGBFggKARIBIz2DHDqCLwSFVYFFglWDNhODXVkXD?=
 =?us-ascii?q?oIsgXpXD4JbAh+BMoI5JYR9gjmCL4lfCUl7HANZIRMBVRMXCwkFaIhVCoJ5B?=
 =?us-ascii?q?SEEJYFFJoEignWBM4EaAoJYgWcJYYQ9gzBigQ2BPoFeAUaBF4FeMBskC4Ilg?=
 =?us-ascii?q?QU6FYEwBTdIgllxTj8CDQI3PYFrHUADCxshMT01Bg4bBQQ6e6U+gVoBgWkUg?=
 =?us-ascii?q?k5BBzWUSYJjSq4mcQcDgmKBM4wUjTKBfoYrF4QFgVaLK4ZhA4wwhiiYbyKRX?=
 =?us-ascii?q?JEaDQk3gWiDIQIEAgQFAg8IgWdJXHCBAoMlCUkZlz7FVHgCATgCBwEKAQEDC?=
 =?us-ascii?q?YsRLIEdAQE?=
IronPort-PHdr: A9a23:yQkiQRckyxkJDu6xH5L27JxglGM++NjLVj580XLHo4xHfqnrxZn+J
 kuXvawr0ASRG9yDtbke2qL/iOPJZy8p2dW7jDg6aptCVhsI2409vjcLJ4q7M3D9N+PgdCcgH
 c5PBxdP9nC/NlVJSo6lPwWB6nK94iQPFRrhKAF7Ovr6GpLIj8Swyuu+54Dfbx9HiTezfb9+N
 gi6oRnQu8UZn4dvLrs6xwfUrHdPZ+lZymRkKE6JkRr7+sm+4oNo/T5Ku/Im+c5AUKH6cLo9Q
 LdFEjkoMH076dPyuxXbQgSB+nUTUmMNkhpVGAfF9w31Xo3wsiThqOVw3jSRMNDsQrA1XTSi6
 LprSAPthSwaOTM17H3bh8pth69AvhmvuwJwzJLVYIGNNfpxYKXdfc8BRWFcWspdTjFNDp+gY
 4cKCecKIORWoJTnp1YWrRWwGxehCv7zyjFGhXH206813PguHw7JxwEgA8kBvGjIoNnpKKsfU
 +a4x7TIwzXZaPNW3C/w5IbPfBAmp/GMRqx/ftTKyUU3CgjLk0mQppL7PzyL0OQGrnaW5PdkW
 e2hlmArrg99qSWoy8c3lonGmJwVxU7C9SljxYY1Itu4SFVlbtG6C5tdrDqVOJFoTcM5Q2Boo
 zo6xaMDuZ6gZiQK1Y8nygfZZveafIeG/gjtW/yNITdkmn1lYrS/ig68/EWkxODyWcm53VREo
 CZZltTBt34D2h3c58aIS/Zw8Fus1DaA2QzO6exIP0A5mKvYJpMvzbM9lYYevEfDECL4nkj9k
 aGYdkIh+uey6uTnZK3rp5+bN4BolgH+Nbwumta4AeQ6LAcBQ3Sb9f671L358k30RqhBgP4uk
 qTBrZzWOd4Xq6y3DgNP0Ysu5AyzAyq+3NgGgXULME9JdReIgoXqP1zBOvX1Aemjj1iwlTpn2
 vPLMabkD5jIM3TOkbHsdqtj5k5Y1Qoz1sxf6IxOCr8cIfLyW1H+ucTEAhI/Lge62fzoCM9n2
 YMbQW+PB6iZP77MvlKQ/eIvJvWMZJcSuDbgN/gp//7ugmE9mV8aZaSpwZQWZ2q+HvRjOEWUZ
 WbgjssdHWsXpAY+UffqhEeZXjFJeXmyRKI95ionCI24CIfDXZqhj6CG3Ce+BpFWZ2ZGBU6QE
 XrwaomIR+0AZSCcL8N7kTEJWqKtR5I52RGrrgD6yr5nLuTO+i0fsJLuzMN15/HNmhEs6zN0C
 d6R02SKT2FyhWMHWSE53LtkrENm0FiMz7N4gvxDFdxP+fxJVxw6OYTBz+xhE9zyXBnOcc+TS
 Fm6WtWmHS0xTtUpztMTe0p9Acmtjgjf3yq2BL8Yj7yKBJso/aLA2Hj8PMJ9y3fd1Kk9lFkqW
 MtONWq6ia5j8AjTH5TJk0Kbl6m0aascwDTB9GCZzWqB7wlkV1s6QKLOQXc3YkrNsc+/90TJU
 7i2E7MlPwBdj8mYJeECPszuhklBbPPiI8jFJXO2kHu3HQyPxL6HcMztYWpLmG2XAUwJg0YQ9
 HCPKwk4LiikqmPaSjdpEBinN0ro/Pk4q3q9R1E1ySmFakRg0/y+/RtD1tKGTPZGlJcDvjwsp
 i4wVG2h0szbDZKr70pcR+QWKYcm/FpZ2GSfsgt7JZGtNIhoj1MFYh9rskb1kQhsXNYT2fM2p
 W8nmVIhYZmT10lMInbBhciY0vX/Jmrz+UWpbKjbkhHb3c2N86gCoPI/tx34vQ6vG0Zjlhcv0
 9Rc33aGoJmfCg0UXMH9V08t/E18oLfXKiA2+4LT0yhqNq+5+j/P0t4kHq0r0BGlKt1WPbiVD
 xP/FtZcGtP9QNE=
IronPort-Data: A9a23:YamXgam06UrBmDkPZ3RZFxzo5gwrJERdPkR7XQ2eYbSJt1+Wr1Gzt
 xIZUTrTO/qOamLxKIsnbIzjpE8DscODmtc3HgI5riBnQ1tH+JHPbTi7wuccHM8wwunrFh8PA
 xA2M4GYRCwMZiaA4E3raNANlFEkvYmQXL3wFeXYDS54QA5gWU8JhAlq8wIDqtcAbeORXUXU4
 bsen+WFYAX5g24tbzpNg06+gEoHUMra6WtwUmMWOKgjUG/2zxE9EJ8ZLKetGHr0KqE88jmSH
 rurIBmRpws1zj91Yj+Xuu+Tnn4iHtY+CTOzZk9+AMBOtPTjShsaic7XPNJEAateZq7gc9pZk
 L2hvrToIesl0zGldOk1C3Fl/y9C0aJupKCfByWc69Spn2LBaEvj3dVcIHwZFNhNkgp3KTkmG
 f0wNCAEaBWY1rrumOv9V/IqjM0uN9jwII4aoTdryjSx4fQOGMiFHP6MtYMehV/chegXdRraT
 9EFZCRialLFZBtUN1oMIJg3kfy5nWXydiYetUn9Sa8fuTSJlFwrj+GzWDbTUpuTd8ZVsRe5n
 FPluGqlHTwqZYDOwAPQpxpAgceKx0sXQrk6Bbqz6vlChFyI2ndVGRodSVyju/67h0WiHdVFJ
 CQpFjEG9PB0qxftHoW7BnVUvUK5g/LVYPIIe8VS1e1H4vO8D9qxboTccgN8VQ==
IronPort-HdrOrdr: A9a23:i1OZEqpgXvFtx2Y/dBs/6mgaV5pIeYIsimQD101hICG9vPb1qy
 nOppQmPHPP4wr5O0tApTnjAsa9qBrnnPZICO8qV4tKNzOJhILHFuxf0bc=
X-Talos-CUID: 9a23:+1jt0GNanEQ7J+5DBDY/0hM3QNgfIlLa10ffPW+KJVtGYejA
X-Talos-MUID: 9a23:htIOTQXfSVSM0jDq/Hj1tjJiG5ZJ2ZWNT05Rjrg26pXVPBUlbg==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.10,148,1719878400"; 
   d="scan'208";a="242082716"
X-IronPort-AV: E=Sophos;i="6.10,148,1719878400"; 
   d="scan'208";a="200525434"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=a0IcJQt2C7FHW7RwkoYujdUeKcw1v6VNfe/BTcJqRXfrb4RoT2fiVQJj6bxIgbw5uVdmUpyzDa1tb+0f5WNSmiiRgyetnKB+/8aG4jTB9jRSTVuut+Xndwuutj5TkaK/proE+fZc5SLceKS3fgxmW4ZMG6U+Yjd1qixGlYqG+a7XBrNZEG+WIb+UFlnyx9rVROdFGPxZE9Ma/wH7/5gpk/ZalliwCch7iPA4oxjQoyG+GH/SxNsRPPX2EuAc8Qp8FSCAsLh8fQv/kebCBxRzjQdNhTrelwSJbxvf9h6iHLkhjR0P3QL5CKVqwgWjZgdG7X1lYU+CFgf4gufEm0ZGGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NM/7pJ4pttcMwcJ1UOYsf0Wy6iS5hSbScO8FiWNfono=;
 b=IUuq8A8Dcgw6Yie5+zLRJeDyU/l8NuqO+pl7jHapZW88WydI32+oTF9HDEOdCBE9M02F0mYiQbEoArTmT4COZnqYAgWkgfUPcG4SnoflHU6G9XVGVuU3vBWS77CmHeXPDGBJYcqrNJrOrtCGHSvjI+vx5JIicDx7yyY6D0EijNhpFMuIU6AZzyEUoQo4FE5P2j4ZWSXhCFa4iSLmsg8MidSluOpIt4IV+qh+e9HFbIUAmQEl3xEZ65RUI4O42lGW0aHen07Jon1SycsI1PLKnQjDRJS8pT/A+SNSMdv8gtIwQGgHy9FRb+Gqvk/DpLnx/9W75/y2X5FEqZU+5q9tAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=baesystems.us; dmarc=pass action=none
 header.from=baesystems.us; dkim=pass header.d=baesystems.us; arc=none
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.us>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"alex.kanavin@gmail.com" <alex.kanavin@gmail.com>
CC: Khem Raj <raj.khem@gmail.com>
Subject: RE: [yocto] Parallel builds under yocto
Thread-Topic: [yocto] Parallel builds under yocto
Thread-Index: AQHa7n/DZWwKUuNwV0mnfSHr2djPf7IoGCFggAAFlICAAAMDIA==
Date: Thu, 15 Aug 2024 10:37:22 +0000
In-Reply-To: <CANNYZj_DHt0xKAHbantF9_m8DdTMXAouJk0=2t=hFX52Ve67vA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=baesystems.us;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH1P110MB1683:EE_|PH1P110MB1393:EE_
x-ms-office365-filtering-correlation-id: c940ea4e-7173-4490-9838-08dcbd163f30
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|80162021|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?R1lRM0w4UjRhKzZ5ZTVmZ1BWMW8reitqR1Q4c2dqZmg3d0NOVWF4OTRaMmkz?=
 =?utf-8?B?WlY1bHlzajc1Ti9TRlRUS3RrVEI1cklnTzFsVG92c25POTFtT3BDa0JvSjZ6?=
 =?utf-8?B?N3N6UDB6WjZGSExvVjFmTGpaWkc2bTc3bitvTXc1c05DSDI3cFU5K3RVWEVS?=
 =?utf-8?B?RUlYMTJhYjlRSi9vZ3gzTkNNOVpQcWdpYTNZcWxlUFBvV0NwNkFhRmhUcHZQ?=
 =?utf-8?B?RXlETmc5M2lRVVpUY0gwMHQ3WWwva3crSFd0MWdiY0tHcGNaZnZMNURZZTF0?=
 =?utf-8?B?M3hOQ1JuOVJxQ3laN2V4QW1YcHZOak5RdjJScFBIRXEvY2dUV3h3NkU0Unlm?=
 =?utf-8?B?M2k3YUdETUdyc29sSFZSWjlFaVhIcWZlNFpYS1ZLWld2eWFCTzJhcXJPL1JJ?=
 =?utf-8?B?Ri80WUdrYUI3eGN3TFVPalJ3cTJpV1lsQVBLRlZlUVpnaldFWlV4L0JHdVVK?=
 =?utf-8?B?clFLRVVwNnJsSTF5V3J1bzJDL3lKQk5vOS9lMm5qQTUrNW5UTDE4U2g1Mmpy?=
 =?utf-8?B?MGhSa1ZaKzhSTkdZdjRuT0w0UVFvbTlRcitQbFZVYTk2UTNwcDZBb0NXUnAz?=
 =?utf-8?B?dTVOWTIzRFNHRnRaZjhTaHJSVjFldmNDS1JERE5abExUcXlwM3NPOWI5SzZr?=
 =?utf-8?B?dGo0RlZDdHpySitSSTNxekRPWnFJbFMyWE1YYk5FVjZ4eUFkSFJmQng5Q08y?=
 =?utf-8?B?cHRjU1FVMXhoTEtCY2NNQ3JDcm94RzY3OFR2cVhONTNjRkVMMDFzc3RId3pj?=
 =?utf-8?B?K0JQRHB4Mlk1STVubCtna0RKaUQvMVRxT09PZDhFeUNjNDh4aEVnaDlFU3hG?=
 =?utf-8?B?WWdVb1R1a0UwZVY0RTNuUTV1WnRtNTZ1b0k4RFB6Vlk5NWQ0bE82aUlPK093?=
 =?utf-8?B?ZzFRYUJhQWJiY3hQZ0VvQjlLVUJDYW93QW40WG9Jem1VbU9aRFlvbVI2WHpR?=
 =?utf-8?B?aEJ2cjh2Q2g1WnFndUppM2hlcDlDdnVIYm1KcWJpMlpGM0dUNE1MaVFZRTFY?=
 =?utf-8?B?aHBQUVFuWG94eEFrblNVVzNmS3BBQ3o5Q2ZOMDZYQ25iT2duRUxoYmc1bldN?=
 =?utf-8?B?akZPMERqZjBLOVBab1dYTTdWNlczUVJZSEp6eXJlYmtPZmw5UWxpWWVKSXdl?=
 =?utf-8?B?OE93ekxhd3J1TmpsRitCcjVleEhvU2MySm5iSW1PSS9uRHNYZ1N0N3hVMEVE?=
 =?utf-8?B?RkpPcW9Ed3F5Zit3OHI4NHVmeG1VWTROZGhJakJsaTFZV0tHU0RtS0d6Wk42?=
 =?utf-8?B?L1BLSlBqVFZoY1FjeWlkYmd3N2xlZmpoMHkvdXlYSTUvL1I3KytZMmE3ek5u?=
 =?utf-8?B?M1NhaHJaU1FFZFNBZS84Q1JHbjZ0QTFhSGRWUXZvTEZSTCtKdDVGUEJuTmo1?=
 =?utf-8?B?ekdPZzhnWG9KQ0VHaG9NVjd6a05xWWZwdDZtNUh3emoxbDJZYm9DbEJIb0ND?=
 =?utf-8?B?ZTBkZHdRTlJwYzJ0TlhIM0RqdHNKanVyYkVITDVkRXBqdS9nRTRHUi91bmFN?=
 =?utf-8?B?L21DaWpsNjBidEhXMndGRm81MUZHT0ZNYVYxUXFlbWo2SG9JY3Q0WUhuUWVY?=
 =?utf-8?B?c2xwdzVUOElpVDUwbTFRcHA5aUc0WitFaEJiRytEOUVRdjVYZjdMc2xuWVlo?=
 =?utf-8?B?NzV2ZUE4MElGMzd3WUNmSE9rVlQ5SzVlaDZ5UGVuQXdMaDJZQ05sZU5Ybm1R?=
 =?utf-8?B?WmJ1d0hRMEJqNXhCWkNXbkUxby9GRGhHQ21TZ3NFakVIbFUwWDBpSUhzZWto?=
 =?utf-8?B?QzQzc0doTDA2Vy9LbWF0SUFOd1pTandJU3AxSTVRY2tFZXk3VDFjS3JsTlIr?=
 =?utf-8?B?SFk5U2FjaWNjam1xbndVTGM5aFhzbm1EWHZ4VFZGN3JqOXBCQ2dlY2ZqcnJG?=
 =?utf-8?B?c3VBWHpUSzJ6VnVFVGZMZmVjQVFXbGVSNFdZVDR4UmExeWRmSXUwQ2dGbU1v?=
 =?utf-8?Q?Q1VJgHwosCY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH1P110MB1683.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(80162021)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MytkNkNsMUZya1BtU1ZxdlJScEttNTBVcGFQQVlyUG1ZK3F6V1ZuaVdqMHhi?=
 =?utf-8?B?VnlrZXBBUEs4OUdaMnVLVlVuTm1WMlFpYklVNkRlSWRoaE10VmdYc2t3clJk?=
 =?utf-8?B?YWlnZmJrTi9JMXVtQ1d6SzZ6eVBjWHd2NC84UXljekZYN3o0ekRqcE1NcTlO?=
 =?utf-8?B?UW00TXA3MG92TTNHbDdXYVc1VnFtbzgxZUR3Y2pFamU2NFpJSk11eDBFdGdm?=
 =?utf-8?B?QmF3UmpDcjB0MHFIWHNXUGJMT0xTVDFpQm9lK1VJOWNsOEdoVVZQMDAza1hQ?=
 =?utf-8?B?NjI4TFZUaWhjSWxid1pFNjFFaTJFaEh3SE0wUVYrNXhlWEdWM3FzaUw5S2hF?=
 =?utf-8?B?YmxpTVUyMjkydEg4b3B3THpDdStiQlVBaEEwY1ZCUGF0b1dUWkt2VGd5YTNq?=
 =?utf-8?B?ay9oaWM1c1dMcW9KZFREZjhjNEg2SWx4S0laMmtmNHo1N202eGdYanVLY2k3?=
 =?utf-8?B?QWl6cDhRSWlaTGpQU3I0VE1CTmtsempxOVJHUHpBSnVlUDIzbmRoeDQ0VlV4?=
 =?utf-8?B?ZzZ5dEYyeWc2aTdvVVZqWjA2TE4vRG5Qc3F1SjBqS0VwR2hHbHpKRUQzMFVk?=
 =?utf-8?B?L3hBOVZKY2lFN2RuUERZaFcvKytXU090Q0l2S1lxSWZQUTEyLzd1TmQvYUtS?=
 =?utf-8?B?cUNMRVBPVlNnU3d6anJvS2o4UWZJakVZWWROS0NENUdFRHZnNWFZU3BOZ1NQ?=
 =?utf-8?B?RDRQU1J0T05tTXo3T2M0Tk9UZGNUTHVKNlB0MjFiajVhaFJNTUJaZXRhNkxC?=
 =?utf-8?B?RHBHck1Ga2Q0SHVLTWpQNlpNczVONnRXalRqQnl1R1lOZ2xlaVNRSlFpVld3?=
 =?utf-8?B?REpNQVQrcnVkMTg0Q2N0N1pQTHJLZmozbWtFVEFidTZ6Z1NzSW03MG90YWk5?=
 =?utf-8?B?OTNHdTdZS05UOVhMMlpOYnl0Y2s3Q2FRZjZ0OTBCbDhzbVRuZGt1MUoyQldG?=
 =?utf-8?B?VHVNeU5BSmQycmIwS3R1YnlsMmdEMGp6cHFxRjR5dnk4VlpiN2RsTERzWGxW?=
 =?utf-8?B?NUN4WDE3WmRrN2NCNzRkTStNb21ORWhCUXdIejdMNm5iQm50cHhMWHpYT1BU?=
 =?utf-8?B?UGJEOGsxUG5hUUFGSmhoek1ueGVvemhvU01wNzhsNWdRemRWbUNvTnN0OGl4?=
 =?utf-8?B?dmRMSGczUFhUbUt6RHkwQ0JZa1FTdTR3Yk9kdVZLZXozNFpkdXZuTXhZbkcz?=
 =?utf-8?B?WjRJSU5xUW4xQ3hxeVl6bXdHaTByWjdnNkRGK1l2Z0t6NVljdTNSSCsvcnVH?=
 =?utf-8?B?Y0U3TlNxRU15d3I3VWxKaXd1NitVN2o4T1FON1NCaGUzSy81OGtPUTZieVFR?=
 =?utf-8?B?RFJmck9VTWtnUU5Wcyt4eVo2K1dMeUlEeGcybXVHb0NHdk5GTXNRV2NhaHNt?=
 =?utf-8?B?WjMxVjgxd1JEVUt5UmIyL3BUNkRQcWhXZVlENk80RHZSK0dReExwbldnbk9p?=
 =?utf-8?B?OU1iT0NqTk4ybU1YTjBTTGNndzVlNTZJNVAxM3RuZ1hKbS9sSmFSOXM4WE56?=
 =?utf-8?B?bTdGMFJpTFV1TDVTUjFwclovd042czJ1cW5HSk5IZVM0dGJVTHJpclU5cDM1?=
 =?utf-8?B?WnZQSm1yOTZpbnJhdUNwRTV2akoyTlBxZmVoS3RmSDY3eW13QnhXQjlSeDBu?=
 =?utf-8?B?akRUb3grZ0M0STdmclNiS2IyUktmYnFQSjBJejFQYmRlRHJ2ZE9UNzVjdmhK?=
 =?utf-8?B?RHE0ek83SlF5WHNoNUxmWHdrYytKKzZnSFFETVlLZkpvR09zR3krR3JoSXhk?=
 =?utf-8?B?NzRETHJyVGJWaHhDSkUzUWdWZFEzWGVwZ3ZCam1LV3RHcnU5REI3Ly80WDZj?=
 =?utf-8?B?MDkxZTJmRUV0K21IR3oxaTBCMUhPcEpsR3Z2cG1ZdXZ5dWhKWU0yRE5QUlIr?=
 =?utf-8?B?c2NhZkhYcW53b2lnQVppWjl6cGZreER6RjhRUXRKM25UUkdRNnpIK0lLRVZz?=
 =?utf-8?B?QnZDRWZ1Z2lpc3IxQ3crWkJvRkpLYWYxQ2lJMmN4SkU2MTBFTE9NK3JJUG9t?=
 =?utf-8?B?bnpWV3VKeCs0VGxNZXJGRnBRRTl2UUVUM1I1eFBVWEo4eFdRbTE4WSsweUlJ?=
 =?utf-8?Q?waMenu?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH1P110MB1683.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: c940ea4e-7173-4490-9838-08dcbd163f30
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Aug 2024 10:37:22.6233
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 03b86c3a-8954-4d19-9522-e464fe9f22ce
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH1P110MB1393
X-OriginatorOrg: baesystems.us
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Aug 2024 10:37:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63709
Message-Id: <20240815103728.CCCA0C3DA7F@smtp.lore.kernel.org>

VGhhbmsgeW91IGZvciB5b3VyIHJlc3BvbnNlcywgSSBhbSB0cnlpbmcgdG8gdHJhY2sgZG93biBh
IHJhY2UgY29uZGl0aW9uIHJ1bm5pbmcgeW9jdG8gaW4gYSBwb2RtYW4gY29udGFpbmVyIG9uIFJI
RUwgOCBzeXN0ZW1zIDIwICsgY29yZXMuLi4NCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0N
CkZyb206IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgPHlvY3RvQGxpc3RzLnlvY3RvcHJv
amVjdC5vcmc+IE9uIEJlaGFsZiBPZiBBbGV4YW5kZXIgS2FuYXZpbg0KU2VudDogVGh1cnNkYXks
IEF1Z3VzdCAxNSwgMjAyNCA2OjI1IEFNDQpUbzogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9y
ZzsgTW9uc2VlcywgU3RldmVuIEMgKFVTKSA8c3RldmVuLm1vbnNlZXNAYmFlc3lzdGVtcy51cz4N
CkNjOiBLaGVtIFJhaiA8cmFqLmtoZW1AZ21haWwuY29tPg0KU3ViamVjdDogUmU6IFt5b2N0b10g
UGFyYWxsZWwgYnVpbGRzIHVuZGVyIHlvY3RvDQoNCkV4dGVybmFsIEVtYWlsIEFsZXJ0DQoNClRo
aXMgZW1haWwgaGFzIGJlZW4gc2VudCBmcm9tIGFuIGFjY291bnQgb3V0c2lkZSBvZiB0aGUgQkFF
IFN5c3RlbXMgbmV0d29yay4NCg0KUGxlYXNlIHRyZWF0IHRoZSBlbWFpbCB3aXRoIGNhdXRpb24s
IGVzcGVjaWFsbHkgaWYgeW91IGFyZSByZXF1ZXN0ZWQgdG8gY2xpY2sgb24gYSBsaW5rLCBkZWNy
eXB0L29wZW4gYW4gYXR0YWNobWVudCwgb3IgZW5hYmxlIG1hY3Jvcy4gIEZvciBmdXJ0aGVyIGlu
Zm9ybWF0aW9uIG9uIGhvdyB0byBzcG90IHBoaXNoaW5nLCBhY2Nlc3Mg4oCcQ3liZXJzZWN1cml0
eSBPbmVTcGFjZSBQYWdl4oCdIGFuZCByZXBvcnQgcGhpc2hpbmcgYnkgY2xpY2tpbmcgdGhlIGJ1
dHRvbiDigJxSZXBvcnQgUGhpc2hpbmfigJ0gb24gdGhlIE91dGxvb2sgdG9vbGJhci4NCg0KDQpP
biBUaHUsIDE1IEF1ZyAyMDI0IGF0IDEyOjE4LCBNb25zZWVzLCBTdGV2ZW4gQyAoVVMpIHZpYSBs
aXN0cy55b2N0b3Byb2plY3Qub3JnIDxzdGV2ZW4ubW9uc2Vlcz1iYWVzeXN0ZW1zLnVzQGxpc3Rz
LnlvY3RvcHJvamVjdC5vcmc+IHdyb3RlOg0KPg0KPg0KPiBTbywgdG8gYmUgY2xlYXIsIGluIHRo
aXMgZXhhbXBsZToNCj4NCj4gVGhlcmUgYXJlIDEyIGNvcmVzIHRvdGFsIG9uIGEgYm9hcmQgLi4u
DQo+IEJCX05VTUJFUl9USFJFQURTPSI4IiwgdGhpcyB0ZWxscyBiaXRiYWtlIHRvIGdlbmVyYXRl
IDggdGFza3MNCj4NCj4gQW5kLCB0aGVzZSB0ZWxscyBkb19tYWtlL2RvX2luc3RhbGwgdG8gZWFj
aCBnZW5lcmF0ZSAyIHRhc2tzOg0KPg0KPiBQQVJBTExFTF9NQUtFPSItaiAyIg0KPiBQQVJBTExF
TF9NQUtFSU5TVD0iLWogMuKAnQ0KPg0KPiBBbGwgMTIgY29yZXMgYXJlIGF2YWlsYWJsZSB0byBi
ZSB1c2VkIHlvY3RvIGJ1aWxkLg0KPg0KPiBDb3JyZWN0ID8NCg0KTm8uIFRoaXMgbWVyZWx5IGlu
c3RydWN0cyBiaXRiYWtlIHRvIHN0YXJ0IGEgbWF4aW11bSBvZiA4IHRhc2tzIChpdCBjYW4gcnVu
IGxlc3MgaWYgdGhlIHRhc2sgZGVwZW5kZW5jeSBncmFwaCBkb2Vzbid0IGFsbG93IGZvciBtb3Jl
IHVudGlsIHNvbWUgdGFzayBvbiB0aGUgY3JpdGljYWwgcGF0aCBjb21wbGV0ZXMgYW5kICd1bmxv
Y2tzJyBmdXJ0aGVyIHRhc2tzKSwgYW5kIGVhY2ggb2YgdGhvc2UgdGFza3MsIGlmIGl0J3MgYSBt
YWtlLWRyaXZlbiBvbmUsIHdpbGwgcnVuIG9uIGEgbWF4aW11bSBvZiB0d28gY29yZXMuIFNvIHlv
dSBjYW4gZW5kIHVwIGFueXdoZXJlIGZyb20gOCoyPTE2IHByb2Nlc3NlcyB0byBqdXN0IG9uZSBw
cm9jZXNzLCBhbmQgb24gYXZlcmFnZSB5b3UncmUgbGlrZWx5IHRvIHVuZGVyLXV0aWxpemUgdGhl
IENQVSB3aXRoIHRoZXNlIHNldHRpbmdzLCBhbmQgaGF2ZSB5b3VyIGJ1aWxkIHRha2UgbG9uZ2Vy
IHRoYW4gaXQgY291bGQgYmUuDQoNClBsZWFzZSBkbyBzdGljayB3aXRoIHRoZSBkZWZhdWx0cywg
dGhleSBhcmUgcGlja2VkIHRvIG1heGltaXplIENQVSB1dGlsaXphdGlvbiBhdCBzbWFsbCByaXNr
IG9mIHJ1bm5pbmcgb3V0IG9mIFJBTS4NCg0KQWxleA0K

