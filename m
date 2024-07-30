Return-Path: <Rahul.Kumar1@amd.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D50DCC3DA70
	for <webhook@archiver.kernel.org>; Tue, 30 Jul 2024 13:52:20 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (NAM10-BN7-obe.outbound.protection.outlook.com [40.107.92.63])
 by mx.groups.io with SMTP id smtpd.web10.17831.1722347533279877720
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jul 2024 06:52:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amd.com header.s=selector1 header.b=0utOfF7v;
 spf=permerror, err=parse error for token &{10 18 %{i}._ip.%{h}._ehlo.%{d}._spf.vali.email}: invalid domain name (domain: amd.com, ip: 40.107.92.63, mailfrom: rahul.kumar1@amd.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tmzACSagMRu7+HSeKI05OrE0m+KizYoCLHf9ggjWVnm6sICPIlcGQwfKqmTjGWvTkKl7bBf/m1mMnRbVQMqk7JziSfXEqo+FyXGuafSoIF4Qn2ZCzgQ3piYuYfU7HYQVbIHwFvYaT0w8Q8zn8CThIohPr7j1w8YDmw2/Ah8jpK97J+51czK5zHPUWpPSeNLUrIULH6pnmnjX35VGUWGzeBnx+LI6ibzQuIuNG9k/5RiFKmO3lKPyzM/mIO2l5m8UKxpJ2+nXsXz1iX1KSIvLj7/m9j9OxBGQi3j9lVSN8BoF9MSVGwSrKUxTvZOXSrePRjgThi5O13a5RfJGTgsdcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4nLVyZ8tG84OQ8jvA+9xCTMLwdpuS4MPyBdW3hgal4E=;
 b=Jmbhupufk/+MwSa3Vy7p/RXJBl6eZxW4HrQk470nd34vQfgRqSSe5qvdcMtHM/JTBUO9NdO6vf3h//DJcu3vxEHXb9bOViyH3y0TAm1knBJ/XefYX5Mra/tNaboI85ynJGTggX6Ha3aGuoNvAFeyQDHnO08lC0KFXIzsII16lGgOgKEz57NqWcUTVGiAAZyqhljW/0qSmAebkRfsktvcueDbC1OMi1Ic0jzo4GJzqpIO8QOkyCXY1eMWR/QqFMPbOyTxpCwM4zvOqnSGZOhl/Q117M0DXlA6OW03uloYhk4o+XWZBp6hz2umoAa3YRk4ggjkR8uaKUH7nH+Cu2l/zQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4nLVyZ8tG84OQ8jvA+9xCTMLwdpuS4MPyBdW3hgal4E=;
 b=0utOfF7v8sQne2NkDtjPbQw18TkkrlqGqJI4+oKB0afTo/8FTNQ4/AxjUihcjOX25C72N1BMxnFN7PLTP0Vm9jGI7BRmBpT4N8/rtEjjKlJ9m3SPrpZGIrlpaH3KWTBEFoiPqsxQUThm/Mxuy/QIapXcb0JYVWuxTasYeyHJhsA=
Received: from MN0PR12MB5906.namprd12.prod.outlook.com (2603:10b6:208:37a::10)
 by MN2PR12MB4062.namprd12.prod.outlook.com (2603:10b6:208:1d0::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.28; Tue, 30 Jul
 2024 13:52:08 +0000
Received: from MN0PR12MB5906.namprd12.prod.outlook.com
 ([fe80::4b12:4ec9:f72b:ceb7]) by MN0PR12MB5906.namprd12.prod.outlook.com
 ([fe80::4b12:4ec9:f72b:ceb7%5]) with mapi id 15.20.7807.026; Tue, 30 Jul 2024
 13:52:08 +0000
From: "Kumar1, Rahul" <Rahul.Kumar1@amd.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: How to enable /var/log/kern
Thread-Topic: How to enable /var/log/kern
Thread-Index: AQHa4oeA/lhG+SV1ZEeGlm0a6ph2KQ==
Date: Tue, 30 Jul 2024 13:52:08 +0000
Message-ID: 
 <MN0PR12MB5906A7619F31614B3AC16FBAC0B02@MN0PR12MB5906.namprd12.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_dce362fe-1558-4fb5-9f64-8a6240d76441_Enabled=True;MSIP_Label_dce362fe-1558-4fb5-9f64-8a6240d76441_SiteId=3dd8961f-e488-4e60-8e11-a82d994e183d;MSIP_Label_dce362fe-1558-4fb5-9f64-8a6240d76441_SetDate=2024-07-30T13:52:08.005Z;MSIP_Label_dce362fe-1558-4fb5-9f64-8a6240d76441_Name=AMD
 Internal Distribution
 Only;MSIP_Label_dce362fe-1558-4fb5-9f64-8a6240d76441_ContentBits=0;MSIP_Label_dce362fe-1558-4fb5-9f64-8a6240d76441_Method=Standard;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN0PR12MB5906:EE_|MN2PR12MB4062:EE_
x-ms-office365-filtering-correlation-id: 03573432-8bf8-4280-b97d-08dcb09ecda8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?WdFoDKRtSgX00J/fQZsyfgy2bFyWXGnWTYATutbKKz8Fc5jT1jcMj7Ddgn?=
 =?iso-8859-1?Q?pR3Mz4vTCXWnR0WsGR33ow4Y8ICFb9m6JqLYk/CpPd6aG59NOELvrQSJIg?=
 =?iso-8859-1?Q?nS+QA6C1NzP3rz9D3mzWGx3YF/erYVIDHxqrIyOW9glqW+f/oFrIp0JyqW?=
 =?iso-8859-1?Q?pSkbwDxBeaFU9d60LIrIIsKmMjIlJpCevFYXhjhNuEb9opTeM2xPnZcTpn?=
 =?iso-8859-1?Q?riBU49FoHghLBYg3d+JdiAOyclfTkFKoA7Z08KjVUgKjCu9dk+r2cv6tyw?=
 =?iso-8859-1?Q?BnjLLwxalKilf6wIc7LeQxdNAnHAPlNRpzrtYDQqGBZGSGWceUcOMa8kOq?=
 =?iso-8859-1?Q?EuyX2fGRnA5/e4z/3YWL/waujmELA0Ds1FgMqW6NlAvHEJU03LGQS0alOX?=
 =?iso-8859-1?Q?ymmHTRUqgpGJ51gbQ9Fl0sTB2Kkw/uhCqO7ZZqIuM87VkFLQaChiknFmTd?=
 =?iso-8859-1?Q?blU2AxRc8H3wlKdZr7F/0xk6JVTVcVrCfC5utH2f0UyVPc4oz56wn0oD3q?=
 =?iso-8859-1?Q?SWKKbMd5OwJJAwoCWdvynIIcr+Cm6WiEjU3HOiCI3h9ic0HtMY+ehPW1dm?=
 =?iso-8859-1?Q?rIh65jkUuUQQDVl+2X1WRq0s+b3xbYhB0w7TWFYXEw/RbODZ2cwMdpJ1KF?=
 =?iso-8859-1?Q?ZN+bQLO5Si4xmkR5jgaoxD0YzHbBVIPWJWE7N7kVQd8ICGnJaaYZ508nc3?=
 =?iso-8859-1?Q?QqzR2aY9wyVPlueUhn7HvTr02Bwcg8UzG+m30EXy35whzxxEKa3d1Bjy29?=
 =?iso-8859-1?Q?47fQwte4eypHg0Bm6oXzUMV3MLB5RQSBdZvvoQDWt975AzMKvtQrfuHn1o?=
 =?iso-8859-1?Q?uVL7BKJ+KWPWd1qfmjNc/yxGXwg6h/iQvGQI/+d9NcKvC1jBgj4/SVwvZu?=
 =?iso-8859-1?Q?bMmatXgZzg8AxsLELVy5q+wMt0ns5qBgeJSL92HrmClY2SmsIrsNsgWL6b?=
 =?iso-8859-1?Q?20Qil2G0qPJYEvn+OUuHb/QJcdd5bFrmAEwN/Q8RD/mNK3Sx0ECiHuDMKi?=
 =?iso-8859-1?Q?6NmwCoAE21eEZRFcCDialC9BKEAqI/DPAlWO0CRfChaQQlkKjRCMfSALvu?=
 =?iso-8859-1?Q?KhisyJ0RiNSvrAD0wa/BiJeew+goGfP8yUjKV4iLQKr2NsE5IYKEmQrwWh?=
 =?iso-8859-1?Q?ZRKwo9HN8+ZiKlXjsAq7Bzvq8a+AsJFBDxj/oXVd2iaUl0xCVC90WMtb7k?=
 =?iso-8859-1?Q?ZUVsM4kOzu9xaZFU5s+t1mreiApa3ezVV2J7wYuWfk8jgWZEhesYKpHg0I?=
 =?iso-8859-1?Q?u0l5nQZTwmqPTWzRcz4yOdxz0nS1sRhHSANtF/xNdL2a67v23pHW7zuZae?=
 =?iso-8859-1?Q?7uJNq+Ri+y9LdTfNSBRpJg8MDo/bAfUfev+PqVoZV8eTNY7H/vPg11iDlj?=
 =?iso-8859-1?Q?f7T3SVyflb6EHtCdnwTQX8Cbsy3u3aVYEtrMPAV1kOJz4HEbklcm0LuayV?=
 =?iso-8859-1?Q?tEZBSr2fjVke1CCmLs2PpU9AsO2A3S9BmR2DNw=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN0PR12MB5906.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?UOF1mpFQ5CsGSAJQdoHQrTujtZc43nNFNkFH3nCW24E3CiKQOhjbkS8Cdu?=
 =?iso-8859-1?Q?gT/wdf62Cnry4zYQLOH6M4CSuTeeHgSqojzZz93AF6Hty5jIY91i8gAxYz?=
 =?iso-8859-1?Q?LdLahGjHeSsy2dasuDkRcmEN05ZcVosE7sOsQtekJ021iFKnaA6xTpI912?=
 =?iso-8859-1?Q?C2p25bBn0DOEgqdwUqmY4r0orjtZyyLv55siBRiDPXSLoe/03dIlxaQMkQ?=
 =?iso-8859-1?Q?fSfpqDbTLvEdXW8oD80V+ejyLyTpUJOkeB0qYrKprBwl23Czvh7Im41fIM?=
 =?iso-8859-1?Q?bKUG3xfhRpPro8YLpWnYBEfVh8WkRb4+snfqq3HOGL1sMqtAVNWb8qELQm?=
 =?iso-8859-1?Q?JYnN9ELdRMBXtlpsgKSJFIKNaviPKVm86j8xb4AI+T5NVj223qA8ZGlsGa?=
 =?iso-8859-1?Q?GmSy7K4PwKpYaGiRAYgPBWZMb6nTT/DwYhjfl2mmu+m/gW/XPhYoC8GzFW?=
 =?iso-8859-1?Q?CQHFxLdpG1kSCQuPzVl8kGtpBQVezm/TFAtzG3mQOkAJAmFg2j2cIoQlMS?=
 =?iso-8859-1?Q?zvOhOFtEFiVHlHf++FYxe/JjW5YWmyLj6JHN1qKEGirYEp24PJ91BygBbP?=
 =?iso-8859-1?Q?rM3ygUmwvel9jL2QHpYoK0be/om9Fnl0t/M1KgmqNiaaf8Xe/US2uCQVjV?=
 =?iso-8859-1?Q?9bTBGuloYTw6IwKVqGh95mPzstd8nqpVSG6WpgCR5aJY4CF7z3WlD2bhQZ?=
 =?iso-8859-1?Q?GVo5QP6eElMFvROCpzwPyfnq93fGNfKu6zpanMB43qspCsjJ9/Gnzrt1Z4?=
 =?iso-8859-1?Q?xidZtyNW9RNfvHvlcgX6jhBfs2NyRiZJuTOKWVQrbUmiRqRWN9TAFXOZl5?=
 =?iso-8859-1?Q?XJqpTUJ5cXr/SBH9sQFDvu+3hQ2ViaD3DUu7K9lWjRxTBdB+oM7KJlpVV8?=
 =?iso-8859-1?Q?EPX+hA/kz8GL3Jk7wQrtUM4+oLggfMKOOGVANTSf1dRn1O5kGrG6af6m1Z?=
 =?iso-8859-1?Q?4grbJFl8RpLRDGfts2rIgpu1/agUi++zcIm28MPrxIWPhEZVtSB0wklJ5f?=
 =?iso-8859-1?Q?9YkJ/UPLBqS3pXEYta6Je3pRKYCYeg3ny+5pqb6f2X660lLOq7hdlxZB0c?=
 =?iso-8859-1?Q?8KYpi2BkuBCFeqU8kMjck6sWOSEJ/PzNubds+fP4fz/pyAAZZjyJotW8Qd?=
 =?iso-8859-1?Q?UfnT8ekf9Cm/zHqsFhY9cHfoJaPEXNscQaaBR1OlmqyuTCvl4TKF/fptFI?=
 =?iso-8859-1?Q?JeupTQ7bo0bK1YlnSlI9w6gNvhwHjIFe/ez0QlFszEwWZG8LyeW+uSOBkB?=
 =?iso-8859-1?Q?AY5a0Th5re4yLOB712QYs/otcyO9+pyAGqeVgethbPdq8PdqlMzLI5kECs?=
 =?iso-8859-1?Q?p+ftvJvlduC18aBO9DjL1cwK5sdhx9bVhqpCqrJM6Usr0fbHoetcPF7TPP?=
 =?iso-8859-1?Q?j9NrixFkVbbUa0onv1FdQaCuCJ/j+aXV6wTQL0KwPRFHhidImns96LSIhk?=
 =?iso-8859-1?Q?pjpSeIuwviEAbZGLxfUgduOwJi5kmr1xVM6QRA/EwIpuEonlRQHHh2bUsH?=
 =?iso-8859-1?Q?+1Wp7x8gFC/3/cTaRh76Nlb+bqn59oy0cOZBNhDuItKp1HWIXr4jMThO/V?=
 =?iso-8859-1?Q?UqS2jcGC9rtfzYHkki3Us2tRwPqNA8G8ZCABRdEYWWmYqtJbf8eJMIL44x?=
 =?iso-8859-1?Q?fK5R/Hq9kK9jM=3D?=
Content-Type: multipart/alternative;
	boundary="_000_MN0PR12MB5906A7619F31614B3AC16FBAC0B02MN0PR12MB5906namp_"
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN0PR12MB5906.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03573432-8bf8-4280-b97d-08dcb09ecda8
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2024 13:52:08.0863
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CgI49fdK+CuURGNXxWRWaf+zm7/9SGztXD7F61+6Qzzcvc+kNa/yXruqWS5QKzDtuDLpCYSR6GEpYPN2aLSs2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4062
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Jul 2024 13:52:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63603

--_000_MN0PR12MB5906A7619F31614B3AC16FBAC0B02MN0PR12MB5906namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

[AMD Official Use Only - AMD Internal Distribution Only]

Hi ,

How to enable /var/log/kern to see previous kern dmesg.

Thanks,
Rahul

--_000_MN0PR12MB5906A7619F31614B3AC16FBAC0B02MN0PR12MB5906namp_
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
<p style=3D"font-family:Calibri;font-size:10pt;color:#0000FF;margin:5pt;fon=
t-style:normal;font-weight:normal;text-decoration:none;" align=3D"Left">
[AMD Official Use Only - AMD Internal Distribution Only]<br>
</p>
<br>
<div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Hi ,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
How to enable /var/log/kern to see previous kern dmesg.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Thanks,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Rahul</div>
</div>
</body>
</html>

--_000_MN0PR12MB5906A7619F31614B3AC16FBAC0B02MN0PR12MB5906namp_--

