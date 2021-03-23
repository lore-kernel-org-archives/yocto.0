Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.100])
 by mx.groups.io with SMTP id smtpd.web12.195.1616517245852194489
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Mar 2021 09:34:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@zeiss.onmicrosoft.com header.s=selector2-zeiss-onmicrosoft-com header.b=q1BUrHao;
 spf=pass (domain: zeiss.com, ip: 40.107.7.100, mailfrom: juergen.haase.ext@zeiss.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=IYOA/FAA4KRFJ8SA5zAad2N1HRiShuPtWq2o5lCEVUeRkXyHVzShAZ+jMRKaUJDyiQ9wQLrb98zkZfwU/SL+BJpv93oR3mv6AMZZKOEah+6ICE1hgaghl52EnugXR5ssyOVGcAraXIcYD9ES9AHlRmPaakshA2e3e2HNfvIKHob4n70MlefbPHXVpaVbtr1mQqTUAD8ZNdI0DJsBnonrKnOQwsYEspm6hxdkkqrMOvL1REzV94CHbA4LBD/HomZWsrXA7n3t7nJEdLP3lNQsYRaPHxMed9oVxE1Jw7/fYvuKeRNr8FB74HFHn4g1CGvKxgpOAojm+yIq7V4nt4dt9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fXljlTGJpd7LwvmAWnVAGFvqkdvyfy7sgv6xUeNhuDg=;
 b=gOeJCaDw5A126CIzXUjDubew4JEM4en6EhbUSdEVvx+0p+0VYIKEJqin6ZYN3SQB8zTIVssfxSWE1Wwm5Up+D3buY3JVMoRaR4bYxXrnZ2QqtVaSQkpNYS0Z8uZfeEgZPFkBuHH2lcbz63Vc7x7PDPSw9UBOlnXTGNV60gsX7UYWvlSYiH3hWQXarQBIKxm8/ko1NV5awBhmveLRnkR1ZtaHTAptO80VSzCYVJrRkghOdQRpIiowHhPs78n2UyR1evUhfsY1UBfPrghpEsZ4YXHrEliEdX5nRgugFQT4EnJ5UTjIVwAR0kwVE6ttFy2/f+sUQub8uahhnz+kfsw9qA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 104.47.17.174) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=zeiss.com; dmarc=bestguesspass action=none
 header.from=zeiss.com; dkim=pass (signature was verified)
 header.d=zeiss.onmicrosoft.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=zeiss.com] dkim=[1,1,header.d=zeiss.com]
 dmarc=[1,1,header.from=zeiss.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zeiss.onmicrosoft.com;
 s=selector2-zeiss-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fXljlTGJpd7LwvmAWnVAGFvqkdvyfy7sgv6xUeNhuDg=;
 b=q1BUrHaoscfs7CSzZxAJICAB5JWM6D1/YFkOF4vEu4LFjvd9Y1DJtvpkFyTAzihsHz3EGw5Qnv713xVoESKjy/qXiVt0tKK3H1grpeDSM0sL+smdMJwk5zhK8NfGZ4peoqn7LldG2qWvfJEakBKca3zQ6qAF3+GtYIJaK0HTbOk=
Received: from DU2PR04CA0048.eurprd04.prod.outlook.com (2603:10a6:10:234::23)
 by AM9P190MB1268.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:265::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.18; Tue, 23 Mar
 2021 16:34:02 +0000
Received: from DB5EUR01FT015.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:10:234:cafe::4f) by DU2PR04CA0048.outlook.office365.com
 (2603:10a6:10:234::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.18 via Frontend
 Transport; Tue, 23 Mar 2021 16:34:02 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 104.47.17.174)
 smtp.mailfrom=zeiss.com; lists.yoctoproject.org; dkim=pass (signature was
 verified) header.d=zeiss.onmicrosoft.com;lists.yoctoproject.org;
 dmarc=bestguesspass action=none header.from=zeiss.com;
Received-SPF: Pass (protection.outlook.com: domain of zeiss.com designates
 104.47.17.174 as permitted sender) receiver=protection.outlook.com;
 client-ip=104.47.17.174; helo=EUR05-VI1-obe.outbound.protection.outlook.com;
Received: from kag06088vm002.zeiss.com (18.192.202.217) by
 DB5EUR01FT015.mail.protection.outlook.com (10.152.5.0) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3955.18 via Frontend Transport; Tue, 23 Mar 2021 16:34:02 +0000
Received: from ip-10-25-10-40 (localhost [127.0.0.1])
	by kag06088vm002.zeiss.com (Postfix) with ESMTP id 0DCA31F66E7
	for <yocto@lists.yoctoproject.org>; Tue, 23 Mar 2021 17:37:34 +0100 (CET)
Received: from kag06088vm006.zeiss.com (kag06088vm006 [10.25.10.86])
	by kag06088vm002.zeiss.com (Postfix) with ESMTPS id EAF2A1F66E7
	for <yocto@lists.yoctoproject.org>; Tue, 23 Mar 2021 17:37:33 +0100 (CET)
Received: from ip-10-25-10-86 (localhost [127.0.0.1])
	by kag06088vm006.zeiss.com (Postfix) with ESMTP id BEC7E178FD8
	for <yocto@lists.yoctoproject.org>; Tue, 23 Mar 2021 17:39:34 +0100 (CET)
Received: from kag06088vm003.zeiss.com (kag06088vm003 [10.25.10.42])
	by kag06088vm006.zeiss.com (Postfix) with ESMTPS id B6358178FD7
	for <yocto@lists.yoctoproject.org>; Tue, 23 Mar 2021 17:39:34 +0100 (CET)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05lp2174.outbound.protection.outlook.com [104.47.17.174])
	by kag06088vm003.zeiss.com (Postfix) with ESMTPS id C0C273EA88
	for <yocto@lists.yoctoproject.org>; Tue, 23 Mar 2021 17:36:02 +0100 (CET)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CnQHdIa/T2yzIjhwqkmbs0C+Hgp6GRG9mRevH8C+jomnKE2qFuLa8SHO/FqhAI/S4ld9P15oUflTyR7NKPZabx4FkPUHRJNdIAVHxyAV0jKogoQt8z4k35CpIRnFKfcCtw8Tp51FgR0tNtqt3g7JgOmPXoydIIR7HBzI3zL9AWvKPRWCSvRxJg/yrBUajxNX0vigPnwqjnwP9tDMmPuidwqMnT1f7bRD9zdJbfDYmwTmx0vBQQAs2ssNo8Mqt0TF+HSd5Xqj9OqVTeWqqFEMbjeDyZW8J11fGSxOPaVTpDzsYXE46c4fLl19U+PViiNbDCWDAcnYgctADkW3haD2ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fXljlTGJpd7LwvmAWnVAGFvqkdvyfy7sgv6xUeNhuDg=;
 b=Sc/tYnkN+9U3xP3jSwgWNuepRXQPZRsRFqOgG6u0VxV+VZAZduTRqkiRWZN9VCwR48T8abOgCFhpCMn/P21DvxU2h5rq8mkNTfoXN0kQbkAFLzhy8Guiu/giUAZfuGelO4Xw/MBgjHDY1wYYPKbLKj1hhLuyDLyzAfVBIe4FoXu1i1MWrjblkG6X0iSVsywxbTM97OO5gkZDIvV1eGs3+hnXPyHliin7uZGRVMkpig6mQMsK+IRT+LzvVDJwqWAu1IQls2UI2s7pMPfIlEskCNc2HHdPEOd4fBUvhaKWon4MqM3GXes8+R6Lj3iWnswd8u6zvfKM+/1Gu3NDv/jqLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=zeiss.com; dmarc=pass action=none header.from=zeiss.com;
 dkim=pass header.d=zeiss.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zeiss.onmicrosoft.com;
 s=selector2-zeiss-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fXljlTGJpd7LwvmAWnVAGFvqkdvyfy7sgv6xUeNhuDg=;
 b=q1BUrHaoscfs7CSzZxAJICAB5JWM6D1/YFkOF4vEu4LFjvd9Y1DJtvpkFyTAzihsHz3EGw5Qnv713xVoESKjy/qXiVt0tKK3H1grpeDSM0sL+smdMJwk5zhK8NfGZ4peoqn7LldG2qWvfJEakBKca3zQ6qAF3+GtYIJaK0HTbOk=
Received: from AM7P190MB0582.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:122::15)
 by AM7P190MB0582.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:122::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.18; Tue, 23 Mar
 2021 16:34:00 +0000
Received: from AM7P190MB0582.EURP190.PROD.OUTLOOK.COM
 ([fe80::40f4:a739:7fc5:35c4]) by AM7P190MB0582.EURP190.PROD.OUTLOOK.COM
 ([fe80::40f4:a739:7fc5:35c4%7]) with mapi id 15.20.3955.027; Tue, 23 Mar 2021
 16:34:00 +0000
From: juergen.haase.ext@zeiss.com
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Build wayland/weston from source?
Thread-Topic: Build wayland/weston from source?
Thread-Index: AQHXIACvQMuIoK67G0+jrHym61MArg==
Date: Tue, 23 Mar 2021 16:34:00 +0000
Message-ID: 
 <AM7P190MB058232A99CDEF9BA4A40943CB0649@AM7P190MB0582.EURP190.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: lists.yoctoproject.org; dkim=none (message
 not signed) header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=zeiss.com;
x-originating-ip: [2a02:8070:d1d3:ab00:6199:e296:5f91:55e2]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 5f862371-1c67-44a1-70d4-08d8ee1977a7
x-ms-traffictypediagnostic: AM7P190MB0582:|AM9P190MB1268:
X-Microsoft-Antispam-PRVS: 
	<AM9P190MB1268E0455A018167B74D6CF8B0649@AM9P190MB1268.EURP190.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 BHc7lYlabTxE/X4N/GvRIMTvKzvnq9GO4JKdenGnNN9udcXyuas1/ikjndfQx9HUI8+VxsGI2zXBFdCfv1TLGSjXvQKfWZEB4SdyME9AR3F7zRmQCzQQruffwW4hL5GbR6J5Bv8zbEoMA5zEBYQGsNucdW3yeIyTDPdtUBS5Cnq2xBMLXfnKRrPuXI5OJTJwqybo5Bprl9QvD4Wuu2OKE/sZHzuhyevogJilAlhZqBwi2te1284JZToF1+iGV7UjVePA4gWnKRuY+vx6h1UqRWslLK1vXMVjZxb3vupdgunHvf6C9RIUmgcPysrG4EMNEd6uAdCtw2/DRjivVficCvpWB4mrgRkw5UqkBRDsPESiJJpus0VgBO5wXfrz5ydsF7JM5q5IxQVAheH0vGH40LvbkOsMoq4ucXqTH6sLZQnU3Go64QAKBxsV7eSlgjHwpLvUygF55vCymdD0+eSkFsBCVond+nk1bbAxgheT5RIz+AVgXsTpw8Uuq9yrWJhXm3MeSGRHIT17yEiNcHmL1p7oLhRlH7mISITkqiMC5SHOsiSQ4jVJaIUoSygi3+U+obC4rR8pLqxS85vF+wYApMsgxO7Ub8jKo272xjDJ+Fk9QaLEBCAMkTedZjFFBQ9DDrVllSNw7+iC0zc6E9arG+7KxTFNhEizb04aJuZLx9ZoV6TIPCq883+pD2UIuXcaVGjmzS0VaHH6TaeVz51m9ZzSirgGt6lTi1xt6isBJM8=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7P190MB0582.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(376002)(396003)(136003)(366004)(346002)(8676002)(7696005)(33656002)(71200400001)(38100700001)(52536014)(6506007)(316002)(83380400001)(66574015)(2906002)(966005)(66946007)(86362001)(8936002)(91956017)(19627405001)(76116006)(6916009)(5660300002)(186003)(3480700007)(9686003)(55016002)(66556008)(478600001)(66476007)(66446008)(64756008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 =?iso-8859-1?Q?NIVvzduNPvg+jhDbT24K7/DRZ/tb4dUpi+lPYhZFsETz6rZxz8YTEEdCiZ?=
 =?iso-8859-1?Q?CmFSjWUjO6PGz95vGGEKohW/1giMqruoXd5lRCuxdZ1Zu97RzkAr8htFBj?=
 =?iso-8859-1?Q?uu1AtY99kDbKt1YsqSbUNZwEwNyt4/4I3uZG41U3XskWzkLU9SF81RvRpM?=
 =?iso-8859-1?Q?v/j4jKmNSEBorcFpWqe2VY868N83AuimpNDN3zQ+nMiU+NNYMvnaB4kf9x?=
 =?iso-8859-1?Q?Dwt1NrIaWGIqClPq1MvvB9yYShtSsXfwmDQ4r7/fIZD3IdEZK8Mpufmi5A?=
 =?iso-8859-1?Q?Nauz3Ml/uTXhKTE5gvkULYZ/4lVa5O92h+TbQnHbL+KSuF/HMtt70aoMpn?=
 =?iso-8859-1?Q?UoxHCC+RCOWBPChFqDwm4LlwDOmp/G8lJnIOCEw8g8md9He5UhnIMVul2d?=
 =?iso-8859-1?Q?tsKWP3gPg0dj+mnk62dv191KoOXwQMhVLcYk3DLYT/wGErHDCcf+hGyvGe?=
 =?iso-8859-1?Q?pqJ4Rxl+SUrY1+GQxw0zw1S+J7GKyR/x7MYLWA9c/q/0DbjXw400/dYB88?=
 =?iso-8859-1?Q?GeuYWmRygzVSNxKH05UdceH+amHzZZwPzqi6j5w/NfwTJKQayTHirpu0Ix?=
 =?iso-8859-1?Q?EddDtGGI4fGuT9MgfKcGGC/ZyTCfFru5I3akvLu7/nOrtt3+8/RiRuYvus?=
 =?iso-8859-1?Q?FX5o4PKXQrQz0924DOo81L0LSe/yGpZPa/2nRu7WJVkeKvqHGV4w6XIKN4?=
 =?iso-8859-1?Q?xPH6TyFf+SqqPkLKmmALG23KvPW5tZGm7NAaZQ7A33V8lCZHZlfNRvtTKF?=
 =?iso-8859-1?Q?uhe0vPRTdvTv/fYsYv0A3F8HUJ1F4r2wTFY4HAnPr9tFUogz3XAWhek+GK?=
 =?iso-8859-1?Q?FrKm8bqkLDXyfVw9ld/K3D51Z74bN59TrECcVCF+1gnRxssZJO7vJIiFz2?=
 =?iso-8859-1?Q?B0NaStswV8aoWf5x+RCK/Liue9uswHQ4ZunN6hxaPrfKhAwgaD9GOynzOr?=
 =?iso-8859-1?Q?lKKJOL/n/uGj4EBV3JaFJfKmwmvlFYZBVrDgOn09xyE3zDph9NumxJUR7f?=
 =?iso-8859-1?Q?MeVXKmMRKI/yVelcL/Fs2hDVe2I4/UjjWGODNu6WtLbeKQ6f7FPbeJG8Bn?=
 =?iso-8859-1?Q?ukM7jHgIyAYG/zqpydp5UbfWTyeEOhdsvBge6bwBsFdqfT6PCTsxSD7XMu?=
 =?iso-8859-1?Q?DZHYNf+QWCCmRWN7Ll9olfeA3ve3QakA7EmFn8qziGydXYg2fRDXuS1S2w?=
 =?iso-8859-1?Q?JUp80vNS04wWIMKCfCVrEQ1Kknzz5PVX59UWx/zwAyKc19HpKVQdILrgP8?=
 =?iso-8859-1?Q?B2ojZDHZdg8HLoheW+9nhKfaX//Sw/efuF4jyrQ7WDXtoYITyp6OETvBfL?=
 =?iso-8859-1?Q?Ttei/5avzk8kSsjDftjEq0xYi4+XOK1Lf6+pv2RU+TBEo1bJ0o9h9DuXdg?=
 =?iso-8859-1?Q?3exZWeGEFRSdSluwx3h/sLpnrcTnr1GCfRGO6uA8pU4SZn1XwXhlo=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7P190MB0582
Return-Path: juergen.haase.ext@zeiss.com
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[104.47.17.174];domain=EUR05-VI1-obe.outbound.protection.outlook.com
X-MS-Exchange-ExternalOriginalInternetSender: 
 ip=[104.47.17.174];domain=EUR05-VI1-obe.outbound.protection.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB5EUR01FT015.eop-EUR01.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	5b7a2e1d-2383-48a4-5d5e-08d8ee197687
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	pcOoCcZuIVUdLDu+JUuPC3D71AxMZJeVXKHkaWAwrfhw0zLMuyscdvaWzKNDiLdFMBb/kOFBY2yKjIYYl9E9/w1ERMMHeJfkYNkn81qBJZdPw8repPelYVZxjaDf9cIJxofyyPeHDYFRIuwx3O/d18snWT9ArrGlRqbpz7ztVH/lKLySvv/vnj6nDqs2R6kMJFiLCvSwbZG/WE90wfsEierDrpbEdmSLTjRyJCZ77oYp7uPBG21ls3XG1ZcB5jIEWEy4V+EsjFMKlJUSkGJfrDnH9LWq5jmsVns4SvmYMXiG1NEa1MQq63T9Y4zeoIPDKUIDtaR8oXhgYiRu4eZauDC4Yj0qTCCx7rrtGICs/f0n2po8HIXOtJYjz6/2Imvoba/rYETV5r95hss2sf5zt3D80mpoGQ5TpfKk1R4HWt7IAcyn/jlq1UhiiahDwWKpvlJjlk5B0eWg6FQse+9Y1i3E1+ERqscHTOFjgwJOoTXXbW/0A3GLjbGZ0NRxcJ7Z3bo6iy4Pz2bdAp22rbcDhOXlNKo9YGBia+vlGglR42aQ/QFnaSBypXxkawHMN882H+01wVnTmrtG8ilh2ch4BLXneNi0iVXqy/ogEd5SokK0/z26cFGBeTlhNNPV9EoQmJDul4pjqk/MGjq5p7IfOgxQEh6dgpnRiIYqV3UT8GN/7+ICDBXq8K+PA6SIacN8PBpS76FsPtaA/Z/iALscMFpbjwYyRpUI4A0ctYB80bVRDceB7PFHonNPEG9Im+CcVjQUSXk9J/IDT3UzkUBwaFDf4CWGHGhoA8MzADKGQs4+R3iTxZ3qi4cU3q79ua3l25UepktuNBaPNH8yi71l1w==
X-Forefront-Antispam-Report: 
	CIP:18.192.202.217;CTRY:AT;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:EUR05-VI1-obe.outbound.protection.outlook.com;PTR:mail-vi1eur05lp2174.outbound.protection.outlook.com;CAT:NONE;SFS:(4636009)(136003)(39860400002)(376002)(346002)(396003)(46966006)(36840700001)(47076005)(3480700007)(70206006)(186003)(156005)(26005)(83380400001)(7636003)(82310400003)(66574015)(966005)(32850700002)(33656002)(70586007)(86362001)(82740400003)(336012)(19627405001)(30864003)(316002)(6916009)(6506007)(36860700001)(478600001)(55016002)(52536014)(2906002)(7696005)(5660300002)(8936002)(9686003)(8676002);DIR:OUT;SFP:1102;
X-OriginatorOrg: zeiss.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Mar 2021 16:34:02.1100
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f862371-1c67-44a1-70d4-08d8ee1977a7
X-MS-Exchange-CrossTenant-Id: 28042244-bb51-4cd6-8034-7776fa3703e8
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=28042244-bb51-4cd6-8034-7776fa3703e8;Ip=[18.192.202.217];Helo=[kag06088vm002.zeiss.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB5EUR01FT015.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9P190MB1268
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_AM7P190MB058232A99CDEF9BA4A40943CB0649AM7P190MB0582EURP_"

--_000_AM7P190MB058232A99CDEF9BA4A40943CB0649AM7P190MB0582EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi. I'm probably not exactly on topic in the yocto mailing list, but though=
t maybe someone can point me into the right direction.

What I want to do:
I've made a modification to weston and am planning to do some more, so I wo=
uld like to integrate this modified version of wayland/weston into my Petal=
inux 2019.1 config (have to use that version).
At the moment my wayland branch is based on v9.0.0.

What I've tried so far (please do tell me if I'm doing something totally st=
upid):
Unfortunately I don't have very good understanding about petalinux/yocto, I=
 tried to start with the following steps:

I began with trying to integrate the wayland recipes from openembedded:
http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-graphics/w=
ayland

I copied this folder over into my petalinux recipes folder and ran

    $ petalinux-build -c wayland
    [INFO] building wayland
    [INFO] sourcing bitbake
    [INFO] generating user layers
    INFO: bitbake wayland
    Loading cache: 100% |##################################################=
##########| Time: 0:00:00
    Loaded 3826 entries from dependency cache.
    ERROR: ParseError at <my_petalinuxroot>/project-spec/meta-user/recipes-=
apps/wayland/weston_9.0.0.bb:22: Could not inherit file classes/features_ch=
eck.bbclass

    Summary: There was 1 ERROR message shown, returning a non-zero exit cod=
e.
    ERROR: Failed to build wayland

I searched through my Petalinux project and didn't find any other *.bbclass=
 files, so I don't know where this could be put if I copied it over from op=
enembedded.
So I grepped for this and found:

    $ rg features_check
    weston_9.0.0.bb
    22:inherit meson pkgconfig useradd features_check

    weston-init.bb
    65:inherit update-rc.d features_check systemd useradd

Since it wasn't obvious to me if the inclusion of this even does anything, =
I removed it and ran the build again:

    $ petalinux-build -c wayland
    [INFO] building wayland
    [INFO] sourcing bitbake
    [INFO] generating user layers
    INFO: bitbake wayland
    Loading cache: 100% |##################################################=
##########| Time: 0:00:00
    Loaded 3826 entries from dependency cache.
    Parsing recipes: 100% |################################################=
##########| Time: 0:00:02
    Parsing of 2799 .bb files complete (2791 cached, 8 parsed). 3836 target=
s, 162 skipped, 0 masked, 0 errors.
    NOTE: Resolving any missing task queue dependencies
    Initialising tasks: 100% |#############################################=
##########| Time: 0:00:00
    Checking sstate mirror object availability: 100% |#####################=
##########| Time: 0:00:03
    Sstate summary: Wanted 62 Found 18 Missed 88 Current 320 (29% match, 88=
% complete)
    NOTE: Executing SetScene Tasks
    NOTE: Executing RunQueue Tasks
    ERROR: wayland-native-1.19.0-r0 do_configure: meson failed
    ERROR: wayland-native-1.19.0-r0 do_configure: Function failed: do_confi=
gure (log file is located at <my_petalinuxroot>/build/tmp/work/x86_64-linux=
/wayland-native/1.19.0-r0/temp/log.do_configure.8492)
    ERROR: Logfile of failure stored in: <my_petalinuxroot>/build/tmp/work/=
x86_64-linux/wayland-native/1.19.0-r0/temp/log.do_configure.8492
    Log data follows:
    | DEBUG: Executing shell function do_configure
    | NOTE: Executing meson -Ddocumentation=3Dfalse -Dlibraries=3Dfalse -Dd=
td_validation=3Dtrue...
    | The Meson build system
    | Version: 0.47.2
    | Source dir: <my_petalinuxroot>/build/tmp/work/x86_64-linux/wayland-na=
tive/1.19.0-r0/wayland-1.19.0
    | Build dir: <my_petalinuxroot>/build/tmp/work/x86_64-linux/wayland-nat=
ive/1.19.0-r0/build
    | Build type: native build
    |
    | meson.build:1:0: ERROR:  Meson version is 0.47.2 but project requires=
 >=3D 0.52.1.
    |
    | A full log can be found at <my_petalinuxroot>/build/tmp/work/x86_64-l=
inux/wayland-native/1.19.0-r0/build/meson-logs/meson-log.txt
    | ERROR: meson failed
    | WARNING: <my_petalinuxroot>/build/tmp/work/x86_64-linux/wayland-nativ=
e/1.19.0-r0/temp/run.do_configure.8492:1 exit 1 from 'exit 1'
    | ERROR: Function failed: do_configure (log file is located at <my_peta=
linuxroot>/build/tmp/work/x86_64-linux/wayland-native/1.19.0-r0/temp/log.do=
_configure.8492)
    ERROR: Task (virtual:native:<my_petalinuxroot>/project-spec/meta-user/r=
ecipes-apps/wayland/wayland_1.19.0.bb:do_configure) failed with exit code '=
1'
    NOTE: Tasks Summary: Attempted 1328 tasks of which 1314 didn't need to =
be rerun and 1 failed.

    Summary: 1 task failed:
      virtual:native:<my_petalinuxroot>/project-spec/meta-user/recipes-apps=
/wayland/wayland_1.19.0.bb:do_configure
    Summary: There were 2 ERROR messages shown, returning a non-zero exit c=
ode.
    ERROR: Failed to build wayland

Ok, it seems I need a newer meson, so I copied this over too from openembed=
ded and tried to build it:
http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-devtools/m=
eson

    $ petalinux-build -c meson
    [INFO] building meson
    [INFO] sourcing bitbake
    [INFO] generating user layers
    INFO: bitbake meson
    Loading cache: 100% |##################################################=
##########| Time: 0:00:00
    Loaded 3835 entries from dependency cache.
    Parsing recipes: 100% |################################################=
##########| Time: 0:00:01
    Parsing of 2801 .bb files complete (2798 cached, 3 parsed). 3839 target=
s, 162 skipped, 0 masked, 0 errors.
    NOTE: Resolving any missing task queue dependencies
    ERROR: Nothing RPROVIDES 'python3-pkg-resources' (but <my_petalinuxroot=
>/project-spec/meta-user/recipes-apps/meson/meson_0.57.1.bb RDEPENDS on or =
otherwise requires it)
    NOTE: Runtime target 'python3-pkg-resources' is unbuildable, removing..=
.
    Missing or unbuildable dependency chain was: ['python3-pkg-resources']
    ERROR: Required build target 'meson' has no buildable providers.
    Missing or unbuildable dependency chain was: ['meson', 'python3-pkg-res=
ources']

    Summary: There were 2 ERROR messages shown, returning a non-zero exit c=
ode.
    ERROR: Failed to build meson

And this is where I started to get stuck. Grepping the openembedded repo fo=
r 'python3-pkg-resources' didn't turn up anything. Googling it seeems to su=
ggest it is part of python-setuptools.
So I tried to install python3-setuptools by copying it over again:
http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-devtools/p=
ython/python3-setuptools_54.1.1.bb

    $ petalinux-build -c python3-setuptools
    [INFO] building python3-setuptools
    [INFO] sourcing bitbake
    [INFO] generating user layers
    INFO: bitbake python3-setuptools
    Loading cache: 100% |##################################################=
##########| Time: 0:00:00
    Loaded 3838 entries from dependency cache.
    WARNING: <my_petalinuxroot>/project-spec/meta-user/recipes-apps/python3=
-setuptools/python3-setuptools_54.1.1.bb: Unable to get checksum for python=
3-setuptools-native SRC_URI entry 0001-conditionally-do-not-fetch-code-by-e=
asy_install.patch: file could not be found
    Parsing recipes: 100% |################################################=
##########| Time: 0:00:01
    Parsing of 2802 .bb files complete (2800 cached, 2 parsed). 3842 target=
s, 162 skipped, 0 masked, 0 errors.
    NOTE: Resolving any missing task queue dependencies
    ERROR: Nothing RPROVIDES 'python3-pkg-resources-native' (but virtual:na=
tive:<my_petalinuxroot>/project-spec/meta-user/recipes-apps/python3-setupto=
ols/python3-setuptools_54.1.1.bb RDEPENDS on or otherwise requires it)
    NOTE: Runtime target 'python3-pkg-resources-native' is unbuildable, rem=
oving...
    Missing or unbuildable dependency chain was: ['python3-pkg-resources-na=
tive']
    ERROR: Required build target 'python3-setuptools' has no buildable prov=
iders.
    Missing or unbuildable dependency chain was: ['python3-setuptools', 'py=
thon3-setuptools-native', 'python3-pkg-resources-native']

    Summary: There was 1 WARNING message shown.
    Summary: There were 2 ERROR messages shown, returning a non-zero exit c=
ode.
    ERROR: Failed to build python3-setuptools

I couldn't find 'python3-setuptools-native' or 'python3-pkg-resources-nativ=
e' in the openembedded repo, so here my journey is over for now.


Is this way I tried even the correct way to get wayland from source into my=
 petalinux project? Or is there a better solution?

Any help would be really appreciated.

Rgeards,
J=FCrgen Haase


--_000_AM7P190MB058232A99CDEF9BA4A40943CB0649AM7P190MB0582EURP_
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hi. I'm probably not exactly on topic in the yocto mailing list, but though=
t maybe someone can point me into the right direction.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
What I want to do:
<div>I've made a modification to weston and am planning to do some more, so=
 I would like to integrate this modified version of wayland/weston into my =
Petalinux 2019.1 config (have to use that version).</div>
<div>At the moment my wayland branch is based on v9.0.0.</div>
<div><br>
</div>
<div>What I've tried so far (please do tell me if I'm doing something total=
ly stupid):</div>
<div>Unfortunately I don't have very good understanding about petalinux/yoc=
to, I tried to start with the following steps:</div>
<div><br>
</div>
<div>I began with trying to integrate the wayland recipes from openembedded=
:</div>
<div>http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-graph=
ics/wayland</div>
<div><br>
</div>
<div>I copied this folder over into my petalinux recipes folder and ran</di=
v>
<div><br>
</div>
<div>&nbsp;&nbsp;&nbsp; $ petalinux-build -c wayland</div>
<div>&nbsp; &nbsp; [INFO] building wayland</div>
<div>&nbsp;&nbsp;&nbsp; [INFO] sourcing bitbake</div>
<div>&nbsp; &nbsp; [INFO] generating user layers</div>
<div>&nbsp; &nbsp; INFO: bitbake wayland</div>
<div>&nbsp;&nbsp;&nbsp; Loading cache: 100% |##############################=
##############################| Time: 0:00:00</div>
<div>&nbsp; &nbsp; Loaded 3826 entries from dependency cache.</div>
<div>&nbsp;&nbsp;&nbsp; ERROR: ParseError at &lt;my_petalinuxroot&gt;/proje=
ct-spec/meta-user/recipes-apps/wayland/weston_9.0.0.bb:22: Could not inheri=
t file classes/features_check.bbclass</div>
<div>&nbsp;&nbsp; <br>
</div>
<div>&nbsp;&nbsp;&nbsp; Summary: There was 1 ERROR message shown, returning=
 a non-zero exit code.</div>
<div>&nbsp;&nbsp;&nbsp; ERROR: Failed to build wayland</div>
<div><br>
</div>
<div>I searched through my Petalinux project and didn't find any other *.bb=
class files, so I don't know where this could be put if I copied it over fr=
om openembedded.</div>
<div>So I grepped for this and found:</div>
<div><br>
</div>
<div>&nbsp; &nbsp; $ rg features_check</div>
<div>&nbsp;&nbsp;&nbsp; weston_9.0.0.bb</div>
<div>&nbsp;&nbsp;&nbsp; 22:inherit meson pkgconfig useradd features_check</=
div>
<div>&nbsp; <br>
</div>
<div>&nbsp;&nbsp;&nbsp; weston-init.bb</div>
<div>&nbsp;&nbsp;&nbsp; 65:inherit update-rc.d features_check systemd usera=
dd</div>
<div><br>
</div>
<div>Since it wasn't obvious to me if the inclusion of this even does anyth=
ing, I removed it and ran the build again:</div>
<div><br>
</div>
<div>&nbsp;&nbsp;&nbsp; $ petalinux-build -c wayland</div>
<div>&nbsp;&nbsp;&nbsp; [INFO] building wayland</div>
<div>&nbsp;&nbsp;&nbsp; [INFO] sourcing bitbake</div>
<div>&nbsp;&nbsp;&nbsp; [INFO] generating user layers</div>
<div>&nbsp; &nbsp; INFO: bitbake wayland</div>
<div>&nbsp; &nbsp; Loading cache: 100% |###################################=
#########################| Time: 0:00:00</div>
<div>&nbsp; &nbsp; Loaded 3826 entries from dependency cache.</div>
<div>&nbsp; &nbsp; Parsing recipes: 100% |#################################=
#########################| Time: 0:00:02</div>
<div>&nbsp; &nbsp; Parsing of 2799 .bb files complete (2791 cached, 8 parse=
d). 3836 targets, 162 skipped, 0 masked, 0 errors.</div>
<div>&nbsp; &nbsp; NOTE: Resolving any missing task queue dependencies</div=
>
<div>&nbsp; &nbsp; Initialising tasks: 100% |##############################=
#########################| Time: 0:00:00</div>
<div>&nbsp; &nbsp; Checking sstate mirror object availability: 100% |######=
#########################| Time: 0:00:03</div>
<div>&nbsp; &nbsp; Sstate summary: Wanted 62 Found 18 Missed 88 Current 320=
 (29% match, 88% complete)</div>
<div>&nbsp; &nbsp; NOTE: Executing SetScene Tasks</div>
<div>&nbsp; &nbsp; NOTE: Executing RunQueue Tasks</div>
<div>&nbsp; &nbsp; ERROR: wayland-native-1.19.0-r0 do_configure: meson fail=
ed</div>
<div>&nbsp; &nbsp; ERROR: wayland-native-1.19.0-r0 do_configure: Function f=
ailed: do_configure (log file is located at &lt;my_petalinuxroot&gt;/build/=
tmp/work/x86_64-linux/wayland-native/1.19.0-r0/temp/log.do_configure.8492)<=
/div>
<div>&nbsp; &nbsp; ERROR: Logfile of failure stored in: &lt;my_petalinuxroo=
t&gt;/build/tmp/work/x86_64-linux/wayland-native/1.19.0-r0/temp/log.do_conf=
igure.8492</div>
<div>&nbsp; &nbsp; Log data follows:</div>
<div>&nbsp; &nbsp; | DEBUG: Executing shell function do_configure</div>
<div>&nbsp; &nbsp; | NOTE: Executing meson -Ddocumentation=3Dfalse -Dlibrar=
ies=3Dfalse -Ddtd_validation=3Dtrue...</div>
<div>&nbsp; &nbsp; | The Meson build system</div>
<div>&nbsp; &nbsp; | Version: 0.47.2</div>
<div>&nbsp; &nbsp; | Source dir: &lt;my_petalinuxroot&gt;/build/tmp/work/x8=
6_64-linux/wayland-native/1.19.0-r0/wayland-1.19.0</div>
<div>&nbsp; &nbsp; | Build dir: &lt;my_petalinuxroot&gt;/build/tmp/work/x86=
_64-linux/wayland-native/1.19.0-r0/build</div>
<div>&nbsp; &nbsp; | Build type: native build</div>
<div>&nbsp; &nbsp; |</div>
<div>&nbsp; &nbsp; | meson.build:1:0: ERROR: &nbsp;Meson version is 0.47.2 =
but project requires &gt;=3D 0.52.1.</div>
<div>&nbsp; &nbsp; |</div>
<div>&nbsp; &nbsp; | A full log can be found at &lt;my_petalinuxroot&gt;/bu=
ild/tmp/work/x86_64-linux/wayland-native/1.19.0-r0/build/meson-logs/meson-l=
og.txt</div>
<div>&nbsp; &nbsp; | ERROR: meson failed</div>
<div>&nbsp; &nbsp; | WARNING: &lt;my_petalinuxroot&gt;/build/tmp/work/x86_6=
4-linux/wayland-native/1.19.0-r0/temp/run.do_configure.8492:1 exit 1 from '=
exit 1'</div>
<div>&nbsp; &nbsp; | ERROR: Function failed: do_configure (log file is loca=
ted at &lt;my_petalinuxroot&gt;/build/tmp/work/x86_64-linux/wayland-native/=
1.19.0-r0/temp/log.do_configure.8492)</div>
<div>&nbsp; &nbsp; ERROR: Task (virtual:native:&lt;my_petalinuxroot&gt;/pro=
ject-spec/meta-user/recipes-apps/wayland/wayland_1.19.0.bb:do_configure) fa=
iled with exit code '1'</div>
<div>&nbsp; &nbsp; NOTE: Tasks Summary: Attempted 1328 tasks of which 1314 =
didn't need to be rerun and 1 failed.</div>
<div>&nbsp; <br>
</div>
<div>&nbsp; &nbsp; Summary: 1 task failed:</div>
<div>&nbsp; &nbsp; &nbsp; virtual:native:&lt;my_petalinuxroot&gt;/project-s=
pec/meta-user/recipes-apps/wayland/wayland_1.19.0.bb:do_configure</div>
<div>&nbsp; &nbsp; Summary: There were 2 ERROR messages shown, returning a =
non-zero exit code.</div>
<div>&nbsp; &nbsp; ERROR: Failed to build wayland</div>
<div><br>
</div>
<div>Ok, it seems I need a newer meson, so I copied this over too from open=
embedded and tried to build it:</div>
<div>http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-devto=
ols/meson</div>
<div><br>
</div>
<div>&nbsp; &nbsp; $ petalinux-build -c meson</div>
<div>&nbsp; &nbsp; [INFO] building meson</div>
<div>&nbsp; &nbsp; [INFO] sourcing bitbake</div>
<div>&nbsp; &nbsp; [INFO] generating user layers</div>
<div>&nbsp; &nbsp; INFO: bitbake meson</div>
<div>&nbsp; &nbsp; Loading cache: 100% |###################################=
#########################| Time: 0:00:00</div>
<div>&nbsp; &nbsp; Loaded 3835 entries from dependency cache.</div>
<div>&nbsp; &nbsp; Parsing recipes: 100% |#################################=
#########################| Time: 0:00:01</div>
<div>&nbsp;&nbsp;&nbsp; Parsing of 2801 .bb files complete (2798 cached, 3 =
parsed). 3839 targets, 162 skipped, 0 masked, 0 errors.</div>
<div>&nbsp; &nbsp; NOTE: Resolving any missing task queue dependencies</div=
>
<div>&nbsp; &nbsp; ERROR: Nothing RPROVIDES 'python3-pkg-resources' (but &l=
t;my_petalinuxroot&gt;/project-spec/meta-user/recipes-apps/meson/meson_0.57=
.1.bb RDEPENDS on or otherwise requires it)</div>
<div>&nbsp; &nbsp; NOTE: Runtime target 'python3-pkg-resources' is unbuilda=
ble, removing...</div>
<div>&nbsp; &nbsp; Missing or unbuildable dependency chain was: ['python3-p=
kg-resources']</div>
<div>&nbsp; &nbsp; ERROR: Required build target 'meson' has no buildable pr=
oviders.</div>
<div>&nbsp; &nbsp; Missing or unbuildable dependency chain was: ['meson', '=
python3-pkg-resources']</div>
<div>&nbsp; <br>
</div>
<div>&nbsp; &nbsp; Summary: There were 2 ERROR messages shown, returning a =
non-zero exit code.</div>
<div>&nbsp; &nbsp; ERROR: Failed to build meson</div>
<div><br>
</div>
<div>And this is where I started to get stuck. Grepping the openembedded re=
po for 'python3-pkg-resources' didn't turn up anything. Googling it seeems =
to suggest it is part of python-setuptools.</div>
<div>So I tried to install python3-setuptools by copying it over again:</di=
v>
<div>http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-devto=
ols/python/python3-setuptools_54.1.1.bb</div>
<div><br>
</div>
<div>&nbsp; &nbsp; $ petalinux-build -c python3-setuptools</div>
<div>&nbsp; &nbsp; [INFO] building python3-setuptools</div>
<div>&nbsp; &nbsp; [INFO] sourcing bitbake</div>
<div>&nbsp; &nbsp; [INFO] generating user layers</div>
<div>&nbsp; &nbsp; INFO: bitbake python3-setuptools</div>
<div>&nbsp; &nbsp; Loading cache: 100% |###################################=
#########################| Time: 0:00:00</div>
<div>&nbsp; &nbsp; Loaded 3838 entries from dependency cache.</div>
<div>&nbsp; &nbsp; WARNING: &lt;my_petalinuxroot&gt;/project-spec/meta-user=
/recipes-apps/python3-setuptools/python3-setuptools_54.1.1.bb: Unable to ge=
t checksum for python3-setuptools-native SRC_URI entry 0001-conditionally-d=
o-not-fetch-code-by-easy_install.patch: file could
 not be found</div>
<div>&nbsp; &nbsp; Parsing recipes: 100% |#################################=
#########################| Time: 0:00:01</div>
<div>&nbsp; &nbsp; Parsing of 2802 .bb files complete (2800 cached, 2 parse=
d). 3842 targets, 162 skipped, 0 masked, 0 errors.</div>
<div>&nbsp; &nbsp; NOTE: Resolving any missing task queue dependencies</div=
>
<div>&nbsp; &nbsp; ERROR: Nothing RPROVIDES 'python3-pkg-resources-native' =
(but virtual:native:&lt;my_petalinuxroot&gt;/project-spec/meta-user/recipes=
-apps/python3-setuptools/python3-setuptools_54.1.1.bb RDEPENDS on or otherw=
ise requires it)</div>
<div>&nbsp; &nbsp; NOTE: Runtime target 'python3-pkg-resources-native' is u=
nbuildable, removing...</div>
<div>&nbsp; &nbsp; Missing or unbuildable dependency chain was: ['python3-p=
kg-resources-native']</div>
<div>&nbsp; &nbsp; ERROR: Required build target 'python3-setuptools' has no=
 buildable providers.</div>
<div>&nbsp; &nbsp; Missing or unbuildable dependency chain was: ['python3-s=
etuptools', 'python3-setuptools-native', 'python3-pkg-resources-native']</d=
iv>
<div>&nbsp; <br>
</div>
<div>&nbsp; &nbsp; Summary: There was 1 WARNING message shown.</div>
<div>&nbsp; &nbsp; Summary: There were 2 ERROR messages shown, returning a =
non-zero exit code.</div>
<div>&nbsp; &nbsp; ERROR: Failed to build python3-setuptools</div>
<div><br>
</div>
<div>I couldn't find 'python3-setuptools-native' or 'python3-pkg-resources-=
native' in the openembedded repo, so here my journey is over for now.</div>
<div><br>
</div>
<div><br>
</div>
<div>Is this way I tried even the correct way to get wayland from source in=
to my petalinux project? Or is there a better solution?</div>
<div><br>
</div>
<div>Any help would be really appreciated.</div>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Rgeards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
J=FCrgen Haase</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
</body>
</html>

--_000_AM7P190MB058232A99CDEF9BA4A40943CB0649AM7P190MB0582EURP_--
