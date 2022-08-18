Return-Path: <tomasz.mon@camlingroup.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 125CCC00140
	for <webhook@archiver.kernel.org>; Thu, 18 Aug 2022 06:15:30 +0000 (UTC)
Received: from eu-smtp-delivery-197.mimecast.com
 (eu-smtp-delivery-197.mimecast.com [185.58.86.197])
 by mx.groups.io with SMTP id smtpd.web12.38859.1660803322923857761
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Aug 2022 23:15:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@camlingroup.com header.s=mimecast20210310
 header.b=hF5DiU12;
 spf=pass (domain: camlingroup.com, ip: 185.58.86.197,
 mailfrom: tomasz.mon@camlingroup.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=camlingroup.com;
	s=mimecast20210310; t=1660803321;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/fGtRyaNZk9SrG9EH5Lc//VI+hwE2EFNpeeLcDylgu8=;
	b=hF5DiU128u6uogAYBHa7YmwCckT2HkEXwxvgXhlGSqL+mGugBaUF9jMnk0nFwkg9UgJ6N+
	zHdMz6ayVLJXLidctzzsWSSCmY3j506/Atw5lNuZOQbcyyKVeKPx+yXTuCco4n90qmfKG1
	W+vQe51xY876of5d6JR95lCOe/KxdkU=
Received: from GBR01-LO2-obe.outbound.protection.outlook.com
 (mail-lo2gbr01lp2051.outbound.protection.outlook.com [104.47.21.51]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 uk-mta-173-M3_kUcF5OH66aQgf0cAv_A-1; Thu, 18 Aug 2022 07:15:20 +0100
X-MC-Unique: M3_kUcF5OH66aQgf0cAv_A-1
Received: from CWLP123MB5747.GBRP123.PROD.OUTLOOK.COM (2603:10a6:400:1ba::12)
 by LO0P123MB5504.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:215::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.19; Thu, 18 Aug
 2022 06:15:18 +0000
Received: from CWLP123MB5747.GBRP123.PROD.OUTLOOK.COM
 ([fe80::c1af:60b8:39a8:75cd]) by CWLP123MB5747.GBRP123.PROD.OUTLOOK.COM
 ([fe80::c1af:60b8:39a8:75cd%4]) with mapi id 15.20.5546.016; Thu, 18 Aug 2022
 06:15:18 +0000
Message-ID: <66733e14162bb49822461786fd70360d2c578a1a.camel@camlingroup.com>
Subject: Re: AW: wget - The certificate has not yet been activated (does
 also happen in qemuarm "virt" machine)
From: Tomasz =?UTF-8?Q?Mo=C5=84?= <tomasz.mon@camlingroup.com>
To: Matthias Klein <matthias.klein@optimeas.de>,
	"yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
CC: k.drobinski@camlintechnologies.com
Date: Thu, 18 Aug 2022 08:15:16 +0200
In-Reply-To: 
 <AM0PR10MB3107D33BAF6FC963800A700E99289@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
References: <16D03C33527B22CF.12815@lists.yoctoproject.org>
	 <AM0PR10MB3107D33BAF6FC963800A700E99289@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
User-Agent: Evolution 3.36.5-0ubuntu1
X-ClientProxiedBy: LO4P265CA0111.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2c3::11) To CWLP123MB5747.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:400:1ba::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e578d34d-a989-4252-70a0-08da80e10620
X-MS-TrafficTypeDiagnostic: LO0P123MB5504:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0
X-Microsoft-Antispam-Message-Info: 
 voL1dPs8GPp1i7s32v0YWZgI3LqenFiOJP/tu/bwUaYQiAkyuj6dYnnAa5YpfPuaFFOMkRGXfIgkfj5/a1BQYuVP2xFld0lSJ29peBGqXllhdI9pOreArhiJhYR0nOe5//VDDTkqnls75sg4mXHddXaTgZ/T4DXqzknNJZJUD/eHCcnoJCqSuIxBXAAPa1/6V+vBtKL3qOgZGEM5nEZCRqv/NHiGS/MZu3qLFFWxhSFi/o13BSSgVS8s22Yzwhc2qXycgKfRMvBk1igjPdZkxPc1koMCo9UgZX73YhMeK5lxhzr3jX4rF+L2KDnPVQ1xvm5J3/SLIkPdpiWKJhTGkFOP8zSibdLS5HnGLiu2yd7dYxE+geDpdWoaaxQfHZb+iGDroGUWPuSI6bLp85wrQUF7qtYcMTaGPC6Ckx7f7uAOfnOv8cBfyYjfBrn4JxQcpfGMEfcrAi+z4BUH/Aj+pW4p2Z/BvR91ynFo+ojOUYwaGo6dte4IrSjRH+bk3TRsgm98ARxiH1fHRxEnmeWDanbzoAScdcUXwYkNv6fJ1FrU31wvA22sa3EBwUEX5ktJ9jy33NGkW2q25saanxUAxxNMAsDQewBeo0QDbz27fGu2OZ2IeGrOpbt1AAk8ydbtfhB/JAC7L9tVo8s0C1ndUhNwClRnzmbOBQ6H0v9rOWBB0jckNFZPhRUt/WtjqxMtrAcWPhiOXso7bstp8jbDTLz7e28iQqiUeGuOzWREV9wLxlZo/tredvbOdEOhbOwt
X-Forefront-Antispam-Report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CWLP123MB5747.GBRP123.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230016)(136003)(366004)(346002)(396003)(376002)(39850400004)(186003)(6512007)(52116002)(6506007)(26005)(86362001)(2616005)(38100700002)(38350700002)(83380400001)(5660300002)(478600001)(36756003)(2906002)(66946007)(6486002)(8936002)(8676002)(4326008)(66556008)(66476007)(107886003)(110136005)(41300700001)(316002);DIR:OUT;SFP:1101
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
 =?us-ascii?Q?EEyXnhTym9ZsIVsHgsGwJqCt/HmtPFnlhuxtoh8NFaFUg9D7AkHW9K7mZacx?=
 =?us-ascii?Q?zYLZgVJgtN2K7wb4hHugpvwg0GhuCRW/zKsGL5jMErmh0Hw2flxW5aYwDD6J?=
 =?us-ascii?Q?CfFhoX6Ax30XS3Kr7baY8BAUfIZDpNbg54jjZVKcC2qmeZS3XXslIVs2Gzfk?=
 =?us-ascii?Q?thKSA9sAD7vkIwkbmktqo01J/WZwOEj6AwbfooxI6HOC9nk5ESNqdQ6HOGWf?=
 =?us-ascii?Q?7iy6DZdDE2RL+UU4Hf1sPRohVi30cid1ADdCkUix8jUpG7NEETx83OH/4CPY?=
 =?us-ascii?Q?WPSVmmik5tdMNPiVf6mB/wYyEYOU943OPJPuhgmyW8CC+9tN45aPTdeED3e6?=
 =?us-ascii?Q?caF5j645+GxNOpMm7JfDuBUgLkjXI4zNOwPTwvtfEwURBB3X9rILCLOj1fnU?=
 =?us-ascii?Q?xpxl8NfWQVeaVpf2/oV3NHhJ3eGqrL025EQf07QsUzfOQYlNAKkufinq1ZN+?=
 =?us-ascii?Q?lHtcWkRMKeLGZMZMO+sFyhCtg0RS+uqtX/75tz4AVyeklLuFzW6W5AE97Fhq?=
 =?us-ascii?Q?Md+sGzzx8fxd7QTiN6UYNIZ8ay0O/Bgv6z7cElp2diQAhukrdEnUNVAaVxjc?=
 =?us-ascii?Q?KT6GKfgS0fEBRUQ0bGzCZPYO37NPYl04LAQhp37KLrYuMXFrJM+fPz2ora/m?=
 =?us-ascii?Q?utByksnHvH6JFBtCh9zjkhNzZ+UvoZKpaxcj0Kwle10DlMDO9p90HkSZlo/n?=
 =?us-ascii?Q?ce+Qu/L4ttpv3Iz46iGTwJLfBpRzUtS2d8ks+VaDoBlqhINafaF7PqAj/k9E?=
 =?us-ascii?Q?v+J4Y+jYszn+4QigCpfW41OjPCFM3HYZicomb46df5vCpv4a7O2IaFW7okvo?=
 =?us-ascii?Q?cxGqYTBGHemRQEa/mHFiK0ib5Y0eJmi+oedbFfYEJjoqAEzoVpp5j8lj8Juk?=
 =?us-ascii?Q?rxuyef429fYhG3vRo4v3c2p5SXZZtlymhJy1taTVVEGelfBmZbty0BcTyeA4?=
 =?us-ascii?Q?3QyBeZO9f3Om8gd7o+v7CYtY8k9Ll4YF8ezAjmY/ZapHWvikp78rfPEQ/AZX?=
 =?us-ascii?Q?A3h7NznAmSx+BjdZxkaiRKGSXGE5XRTKnbwgqJWLokgGr5x5tZbhsY/oXjca?=
 =?us-ascii?Q?foK6gtoaEQ1rJnPXBkiOyo5m+M46F/+Ua/zfcXXz1/GS58oDZoYca5Wl5OCv?=
 =?us-ascii?Q?VP/369EPv2gwEe5ql5zUfmRWAV6j596Zwoc8F7G7eMtTQxthU+85fj3r4cNn?=
 =?us-ascii?Q?sMqXv9Tq03b5p7QsBjxM/rOY0x1k+N31vqu6HPqQWq21y0ADZX74LtbNfucB?=
 =?us-ascii?Q?9t7oLMFhnwbq0de3hUgksUN1R5wIIBPFE6K8MCg3UwwT8B4wMAk0eop09vD9?=
 =?us-ascii?Q?HQy4eVlrBnE196MzBPInm+r3POdfi/9uy8SHds8Z7hjLh5MmYK+lYGBXq7WI?=
 =?us-ascii?Q?XxVdbNDZrDMs+FMmFe6pj26rKoTkmSjEX+qPoLzXIy0ldNBgeK1GjzFCnI9Q?=
 =?us-ascii?Q?FjhfFUxaIpYoMs8jnsqSv4Xchk/cNzp8YhbbyCiEsHEu+88Z5bAxZwde8kPU?=
 =?us-ascii?Q?wvuL+ZdrUM++LLvR6s/+P6T26vWEvY7OeJdx6P559qHTHIFZsRo0fSHkm2EQ?=
 =?us-ascii?Q?kr32dky1qz4PpM9FTTnPXP3Lu9kqMi2aETFpK1B4RxUcJWBkts27tL3/gUBK?=
 =?us-ascii?Q?aA=3D=3D?=
X-OriginatorOrg: camlingroup.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 e578d34d-a989-4252-70a0-08da80e10620
X-MS-Exchange-CrossTenant-AuthSource: CWLP123MB5747.GBRP123.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2022 06:15:18.7006
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fd4b1729-b18d-46d2-9ba0-2717b852b252
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 220zW1e1t/IQhV5Q4iipnbWSvavEd051SZPDciv7l/qwTzP4baYeK/9Kdvgj6TFK0cxBsT+77jICmp11IP8fu+l2or74y3PuQLRI74J6/TE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LO0P123MB5504
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: camlingroup.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 18 Aug 2022 06:15:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57860

On Thu, 2022-02-03 at 17:13 +0000, Matthias Klein wrote:
> I can "fix" the bug by switching from gnutls to openssl:
>=20
> PACKAGECONFIG:remove =3D "gnutls"
> PACKAGECONFIG:append =3D " openssl"
>=20
> Can anyone explain this?

The issue is that gnutls configure script detects 32-bit time_t while
wget detects 64-bit time_t.

Function ssl_check_certificate() in wget/src/gnutls.c contains:
  time_t now =3D time (NULL);
  ...
  if (now < gnutls_x509_crt_get_activation_time (cert))
  ...

gnutls_x509_crt_get_activation_time() returns time_t. In wget context
it means that two 64-bit time_t are being compared.

On imx6, when a function returns 32-bit value, the result is stored in
r0. When a function returns 64-bit value, the low 32-bits are stored in
r0 while the high 32-bits are stored in r1.

The problem is that gnutls_x509_crt_get_activation_time() compiled in
gnutls recipe, has 32-bit time_t and thus sets only r0. The likelihood
that r1 will have value that will make code consider the certificate as
active (before 2038 the only such value is 0) is low. As r1 is not 0,
the supposed activation time is way past 2038 and thus "The certificate
has not yet been activated" error is printed.

The solution is to fix gnutls recipe to detect time_t as 64-bit.

> What exactly does the change to openssl mean?

The gnutls_x509_crt_get_activation_time() is no longer used at all.
Instead, SSL_get_verify_result() is used (ssl_check_certificate() in
wget/src/openssl.c). The SSL_get_verify_result() does the check within
OpenSSL library itself, so even if wget and OpenSSL does not agree on
time_t size, it doesn't matter (wget and OpenSSL have to agree on long
size, because SSL_get_verify_result() returns long).

Best Regards,
Tomasz Mo=C5=84


