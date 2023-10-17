Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA324CDB474
	for <webhook@archiver.kernel.org>; Tue, 17 Oct 2023 13:32:58 +0000 (UTC)
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (EUR03-AM7-obe.outbound.protection.outlook.com [40.107.105.76])
 by mx.groups.io with SMTP id smtpd.web11.215088.1697549574833162972
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Oct 2023 06:32:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=5k5+IPmf;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=5k5+IPmf;
 spf=pass (domain: arm.com, ip: 40.107.105.76, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b/3fl656KY2tOZVFiYPuNKSAykE0ETDvkgEZhGoLp6I=;
 b=5k5+IPmfg/0rLRqryulH8DbuOVduTy99eeCpCN2Al5hbZbD5B/dc2OXlR1NKSrk7SvvNDS4FaXWEl+m5biWPiUb1NHTuoDoEtvUz74eZm5Urd0wpn9cZaXL+DeQCU/QZgS3UXctCadWVzEwVaYsD/xIREfGUZjo7a5m6zFyyDow=
Received: from AS9PR05CA0184.eurprd05.prod.outlook.com (2603:10a6:20b:495::20)
 by VE1PR08MB5725.eurprd08.prod.outlook.com (2603:10a6:800:1b0::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36; Tue, 17 Oct
 2023 13:32:44 +0000
Received: from AM7EUR03FT052.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:495:cafe::f) by AS9PR05CA0184.outlook.office365.com
 (2603:10a6:20b:495::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.35 via Frontend
 Transport; Tue, 17 Oct 2023 13:32:44 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM7EUR03FT052.mail.protection.outlook.com (100.127.140.214) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6907.20 via Frontend Transport; Tue, 17 Oct 2023 13:32:43 +0000
Received: ("Tessian outbound ee9c7f88acf7:v211"); Tue, 17 Oct 2023 13:32:43 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 06442dddf9bf1163
X-CR-MTA-TID: 64aa7808
Received: from f2c4f06990c9.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 3615CADA-8501-492E-9B07-7907F16B752A.1;
	Tue, 17 Oct 2023 13:32:37 +0000
Received: from EUR03-AM7-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id f2c4f06990c9.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 17 Oct 2023 13:32:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H2+OLXjwLuN3BPjmXAUgZ7q1gUyyvkjF7dhfEJCcLiY+SCoURXsD7nBQ8lMktjbO040dVN8uqcJj1nkAdrflNPhkuOtSKJ5V8sVZSSqsVTb5CvA1ZZ0GwP8cVpdS7wCAuPgMsxD7vSMDQVLM260qMp3fkXvOA9lP+BDKH4y6bJIeSRB5Flitq2NLdQkFTHwMA9iypbakAM27q7FnlJQLvo0tvAF9xuDqxu+bR+jJg0xohpVscZoRqzHswPsZkVJAf9BK37ta3OHsiSWcVb32AcG6Dt4v6hBI92j5qmR7GLbGTGDCKrlSt9fh/0suxx/2hBWoWzjyUdPfwQ2Q/7dNrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b/3fl656KY2tOZVFiYPuNKSAykE0ETDvkgEZhGoLp6I=;
 b=SSeWWrUcDrK9ncWZ9YhWMJ5pDGWFnzeMCDKRjO2Gxa6R9jD3yn/hrA0FyIbrMi6GLDLChYsIsgAeZJ7eHj/YBkTLnLKEttwJpo278J0rijet320lXVGvlqNaPY7vlVOIl4mBjs8YHamB6CqzPjIdtNROL6btXALU/t/xMVQ4fCcQ8lrZ8SG+75hk1140S0gwnpjAMUf7gIBYPcdPzsWFQK73GGdsR12LCGQwRocGSlTT8ZC4/HE9WRuZQtjKR5H6OXaxrlP3Jsa5G4cbC4gLbbKwxt/pN89WiiC0p2ZZ+racm+yAMW6ELnqOYPHnN98QCC0yXneFNf6B6WTXtOESCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b/3fl656KY2tOZVFiYPuNKSAykE0ETDvkgEZhGoLp6I=;
 b=5k5+IPmfg/0rLRqryulH8DbuOVduTy99eeCpCN2Al5hbZbD5B/dc2OXlR1NKSrk7SvvNDS4FaXWEl+m5biWPiUb1NHTuoDoEtvUz74eZm5Urd0wpn9cZaXL+DeQCU/QZgS3UXctCadWVzEwVaYsD/xIREfGUZjo7a5m6zFyyDow=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS2PR08MB8831.eurprd08.prod.outlook.com (2603:10a6:20b:5f4::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36; Tue, 17 Oct
 2023 13:32:35 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::1817:56f3:7623:c4a5]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::1817:56f3:7623:c4a5%4]) with mapi id 15.20.6886.034; Tue, 17 Oct 2023
 13:32:35 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "dave.hitchman@kymati.com" <dave.hitchman@kymati.com>
CC: Mikko Rapeli <mikko.rapeli@linaro.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Using cmake... how?
Thread-Topic: [yocto] Using cmake... how?
Thread-Index: 
 AQHaAEVAnlr2Ym2ro0ymSXy7NcXgg7BNevsAgAA7FoCAAAiYAIAABOMAgAADe4CAABRqgIAABTeAgAABQoCAABpGgA==
Date: Tue, 17 Oct 2023 13:32:35 +0000
Message-ID: <4F96B81A-729A-4BBB-BE24-9D74CBE7EF94@arm.com>
References: <20231016112233.221066-1-foss+yocto@0leil.net>
 <AM9PR03MB7012E6E478F4D2899CBE0F5192D7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <ZS4ghiXPvYDDW_LC@nuoska>
 <AM9PR03MB7012DDCF969FEAAD42A8817992D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <ZS5ZTMlhyMdLPEQ_@nuoska>
 <AM9PR03MB70124FE13C06B022A3C0BF5F92D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <ZS5gUVkTwgjNi0Ad@nuoska>
 <AM9PR03MB7012F4837978629C7E866C8792D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <ZS510fE2Q3WeU0UT@nuoska>
 <AM9PR03MB701278137F02C02E6532EFE192D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
In-Reply-To: 
 <AM9PR03MB701278137F02C02E6532EFE192D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.100.2.1.4)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS2PR08MB8831:EE_|AM7EUR03FT052:EE_|VE1PR08MB5725:EE_
X-MS-Office365-Filtering-Correlation-Id: fa76749d-746e-4fc5-573a-08dbcf158b2a
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 6dezcP/8w7onsD2sW5TefYWq5rOdUxcDvrGJwdLbTjD+naebu6Z2x3zWCapBHqikcreo5ulMewOEMKIAZ/CgCwIcHvdw+9nI6LlGJ3Ux0BVsp3+f40JN4QyS6kV6WsP+E5UQMj08Uv2DOiKG6O9TSeJ5UBdWdwTaI001uiX13KQTldHF/cim9rHsqxZRpJqCst/1H8itkHoOEHjgQ3eJ7GkxloPd0tOzHio465L7WBNo+MA04jWbnTMNG0jXoZ83d2tfGS/J582VAAf6bpXEf4oZXQ8NQJKmTO/capFz1rITZb0Ixqo5F3WOJnSOORaB0cpkbTHrhyTGyAKWqq/8ZqXwO2XHJvFFuVJmMlILmWzDD1eHGPEs90VpyUG1BB7tR6lr/G8k+pqSeBeVxhZiX989Lx/Jed+POqx7C4+N7Wb/ITZk9pS/lbxZeC2vorFtt9DfQW7/1JT+1kF8WLgbNqxgY/qV+Ejs+P8AH6COpurvTIaHJpQ//V6MB5d+pgwuVZSqg33IdGQSsLC/04x1js3/IGyuetNUQjlHtAIk2MVa825NN8Q6DjJZw7bhXSttZmQJmGXKLs6RKwsUenktR+Qi8vhA1BhaSlGCdEHtKTkjeoFzQ+PZQrN0wAsyBQmb3XfBv3Bai+Pp/Vpu2FhefA==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(376002)(136003)(396003)(366004)(39860400002)(230922051799003)(1800799009)(451199024)(64100799003)(186009)(122000001)(4744005)(38070700005)(33656002)(8676002)(4326008)(8936002)(38100700002)(41300700001)(5660300002)(86362001)(2906002)(6512007)(6506007)(53546011)(478600001)(6486002)(71200400001)(2616005)(36756003)(26005)(83380400001)(54906003)(66556008)(66476007)(316002)(6916009)(91956017)(66946007)(76116006)(64756008)(66446008)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <65C28105CACE664CB9F579FCFD33E531@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB8831
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM7EUR03FT052.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	71453656-afad-4c96-847f-08dbcf158641
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	9OpW/aO7QzhsAlHXKRpQh4jWABbgmkDG5CALucdHAfJTtXothozhX4sDQavPwOqa4lg+Vh/sgC9RV7/XKD1D3qTBOyP0lHAkD/gb2A7ijsQB+aBdD8qFHE5xk/8CmrSG+67jSJndkWcaH1VgahFIGQ9woUIJ3cxTf62eUsajYMGFNRzr80kGiowxH798F/8Sg114EL2uVCUgcvLyGrIhKATIUtMR1twp8+9gawF9Yk5KcgxtdvqHg1UT033yh6+uWMe546aw7khUplCGMsRWr1OUwYCyhIEvH/hUPbmH5Ev/Inejl0QF2MIHNeiXWFZdDkfoP5Pe5AvCUbx9wSHeWT/pcPX6XHDUN1/o5XCoJ+zlr6ZTXzwBweZQeRBfPMZtBrtb5grhqHFxLMq73C43lhCaYyzyU+GPk7jpagUe6dDfSb4jjS4uWjrnFhf5LFFgGCMBwt1khE3VmK7eq52NF1lEPtAob4GoKU0GblM3gwfU561SJ5YvA95f09WiaqPOoLNOkhlaETRnK2r2PhCsozWGWx/b3ZrhmlHAhlY4pIQqEuH6/r6NXrlVOCd+/5mpb2Mai7UfdZqVyhnFshncUE6kIlnXQ5P4NmnAAoFoIkE1pkQxNGGw+Qhc98ISXId4vm8f7Ya+nLyzlcxeE+E5MFLcOz6XUQT9DrZ5nhovefHK1tbbhn/SMThjQIdAQx1LR6RcNi41fSCsBl7pFF2h8RJv9M4mAfTIQzlaAXtf/Ww=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(376002)(39860400002)(136003)(396003)(346002)(230922051799003)(82310400011)(1800799009)(186009)(64100799003)(451199024)(40470700004)(36840700001)(46966006)(6486002)(54906003)(70206006)(70586007)(478600001)(316002)(336012)(6506007)(6512007)(26005)(53546011)(36756003)(81166007)(41300700001)(33656002)(6862004)(8936002)(5660300002)(4744005)(2906002)(8676002)(86362001)(4326008)(356005)(82740400003)(36860700001)(47076005)(83380400001)(2616005)(40480700001)(40460700003);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2023 13:32:43.8502
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fa76749d-746e-4fc5-573a-08dbcf158b2a
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM7EUR03FT052.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB5725
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 13:32:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61377

T24gMTcgT2N0IDIwMjMsIGF0IDEyOjU4LCBEYXZlIEhpdGNobWFuIHZpYSBsaXN0cy55b2N0b3By
b2plY3Qub3JnIDxkYXZlLmhpdGNobWFuPWt5bWF0aS5jb21AbGlzdHMueW9jdG9wcm9qZWN0Lm9y
Zz4gd3JvdGU6DQo+IA0KPiANCj4gSSB1bmRlcnN0YW5kIHRoYXQsIGFuZCB0aGUgY29tcGlsZXIg
dGhlIHJlc3Qgb2YgdGhlIHJlY2lwZSB1c2VzIGRvZXMgY29wZSBzbyBJIGFtIHRyeWluZyB0byB1
bmRlcnN0YW5kIHdoeSB0aGlzIGJpdCBvZiB0aGUgd2hvbGUgdGhpbmcgaXMgdXNpbmcgYSBkaWZm
ZXJlbnQgY29tcGlsZXIuIE1heWJlIGl0IGlzIHNvbWV3aGVyZSBpbiB0aGUgY21ha2Ugb2YgdGhl
IGxpYnJhcnksIGJ1dCBpdCBjZXJ0YWlubHkgaXNudCBvYnZpb3VzLiBUaGF0cyB3aGVyZSBJIGFt
IGRpZ2dpbmcgZm9yIHRoZSBtb21lbnQuDQoNCkkgcHJlc3VtZSB0aGlzIGlzIGEgY2xvc2VkLXNv
dXJjZSBsaWJyYXJ5IHNvIHlvdSBjYW7igJl0IGp1c3Qgc2hhcmUgaXQ/DQoNClRoZSBDTWFrZUxp
c3RzLnR4dCBhcmUgZGVmaW5pdGVseSBkb2luZyBUaGUgV3JvbmcgVGhpbmcgYnkgbm90IHJlc3Bl
Y3RpbmcgdGhlIGVudmlyb25tZW50IHRoZSB0b29sY2hhaW4gc2V0cyB1cC4gIFVuZm9ydHVuYXRl
bHkgdGhpcyBpcyBub3cgeW91ciBwcm9ibGVtIHRvIGZpZ3VyZSBvdXQgZXhhY3RseSB3aGVyZSBh
bmQgd2h5IGl0IG92ZXJyaWRlcyB0aGUgc2V0dGluZ3MuDQoNClJvc3M=

