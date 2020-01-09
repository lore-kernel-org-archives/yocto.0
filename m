Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.932.1578604554381310320
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jan 2020 13:15:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intusurgops.onmicrosoft.com header.s=selector2-intusurgops-onmicrosoft-com header.b=SHbAk89k;
 spf=permerror, err=parse error for token &{10 18 spf-001e7101.pphosted.com}: limit exceeded (domain: intusurg.com, ip: 140.211.169.56, mailfrom: daniel.wang@intusurg.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DD7CE0142F; Thu,  9 Jan 2020 13:15:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FORGED_SPF_HELO,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [40.107.68.123 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (mail-eopbgr680123.outbound.protection.outlook.com [40.107.68.123])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B82C3E00726
	for <yocto@yoctoproject.org>; Thu,  9 Jan 2020 13:15:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JbZZC2V2nk+/YE8ae2Yy5+siIn3XceJvVACi0DaWbb9t8bH8r5krBKE5aWlbNQxnfAn/XxcutPU2/eXKvv/flfh9lC8Tc+s7dXXtXhJEg3Xq/IJbSjfHEQl5rgfFq7EtByNmX0vt/RNuCzt2yRjNIzu52nrLp4K3T5hzdz5MBF9IHMNmxyEi+W+WDZaW/mv0MxQzAGMIrHtSSUMqR7sebR4u+pjX/K0cVSa2UxWbDbhmUXta2GXCLKw9ajIad8Ye4LnXRuGUuuZux771SwtAndPBKkEjaBl10IvjfQRhWWw1vTHNdPC8X1gufkgginb/vckJhUImoagnb0+wQSmAjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3vqhMouFsBP8ITlQZzkjk+beXVLXFibhVyN18WrpZ24=;
 b=jWbz3c2bD6hJ+MAUYen/5tbBLJN2R2pSly6UM59A72KpNAeeSlUpXFx76pcG0B/DDx+4+s0OoMFxrdO9kP3X1i2gBNZdX+iWV5kqqERJnpw2gjGhRD8TtWy1+wmHh0r/Rn8ahSKrbWkUR8Sbc8gudwr2KTJTeTStJ+jmyvW6iwxEecrA14YElUkZyosz06VlCIRIayRQzlGL98Fq3v7GTgTvyfDU1WeX0xXH33tWPYMCFdCm/NYSJuteyuLr/W1xMMLF/lmbYMPjrTN4xRwrYvn0H5TFPVm1zfPomXcyfNOGjdGDZCFhbPCwbgRLtL76yTP2kAJs2BvNBmcGnnod5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intusurg.com; dmarc=pass action=none header.from=intusurg.com;
 dkim=pass header.d=intusurg.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=IntusurgOps.onmicrosoft.com; s=selector2-IntusurgOps-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3vqhMouFsBP8ITlQZzkjk+beXVLXFibhVyN18WrpZ24=;
 b=SHbAk89kPJci8uTOyRcZUEw10qfmVqzewvVwYi/xuSBppmt+tFDdkq6iSKgmQih/kdCadA6SxfaccOK5TQ0YmHHr/ABW0qzgrtSEymUVj1UJAAgu5SMGRZFIc/CRMtSVgqXmA5m3BgqAlBBBtMtEiXJyD0kMg1YadU5SMG3Fzm4=
Received: from CY4PR01MB2328.prod.exchangelabs.com (10.169.252.16) by
 CY4PR01MB3237.prod.exchangelabs.com (10.172.141.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.15; Thu, 9 Jan 2020 21:15:51 +0000
Received: from CY4PR01MB2328.prod.exchangelabs.com
 ([fe80::e08e:9a14:332e:580b]) by CY4PR01MB2328.prod.exchangelabs.com
 ([fe80::e08e:9a14:332e:580b%8]) with mapi id 15.20.2623.010; Thu, 9 Jan 2020
 21:15:51 +0000
From: "Daniel" <daniel.wang@intusurg.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Recall: [meta-security][PATCH 2/3] update tpm2-abrmd tpm2-tool tpm2-tss tpm2-tss-engine
Thread-Topic: [meta-security][PATCH 2/3] update tpm2-abrmd tpm2-tool tpm2-tss
 tpm2-tss-engine
Thread-Index: AQHVxzH4l4no8WBpDEO+Q4+2w/3Sow==
X-CallingTelephoneNumber: IPM.Note
X-VoiceMessageDuration: 1
X-FaxNumberOfPages: 0
Date: Thu, 9 Jan 2020 21:15:51 +0000
Message-ID: 
 <CY4PR01MB2328908CD6D0DB5E7E5CA9FA9A390@CY4PR01MB2328.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Daniel.Wang@intusurg.com; 
x-originating-ip: [204.27.197.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7261cc79-d262-4170-09b6-08d795491b48
x-ms-traffictypediagnostic: CY4PR01MB3237:
x-microsoft-antispam-prvs: 
 <CY4PR01MB32377365F36A12E8991CD3C59A390@CY4PR01MB3237.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 02778BF158
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10019020)(366004)(136003)(396003)(376002)(39860400002)(346002)(189003)(199004)(2906002)(33656002)(71200400001)(26005)(52536014)(8676002)(186003)(478600001)(558084003)(64756008)(8936002)(6916009)(6506007)(7696005)(15650500001)(66946007)(66556008)(66446008)(66476007)(81166006)(55016002)(9686003)(86362001)(81156014)(5660300002)(76116006)(316002);DIR:OUT;SFP:1102;SCL:1;SRVR:CY4PR01MB3237;H:CY4PR01MB2328.prod.exchangelabs.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: intusurg.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Zoc+ZZxyzeTMGleYeRTqH8UYGKfDMZZ7eRmyDbWq5dPpChdQC1igK1E2qFomSMUlNHej8TpqBY/9Ne/dD00Mkv4SAGt50Ur5dSeJjyP6YAlDBoh8P60sg9f800+xIb+GjAo9fFpz0jRj7TsTFRJh3ZEvGdRLuwQWz34zm+o/gNW2Kte7CjCdQoq7pPxiOFF709JdLNUDvEIvQImXhx5DcTDhTslCADeoXRctwdlLdBqtNvwoMKSl95KRW9mCdjpDYLPvihuqlDM8ihEHokmXu7ne1Dv0mv2NFUuBilfnOXu5BOCfxVMXjlUpRKvqKsRMuLLTrXxkkaOQRY3WdJZVrus6opp/q2FLiwSh0i3MK2uDUlVn4YaR904LQfpsmlEN3surB/nMSDGiKlMma/PKsmsnGi7tGiOfAbBXVVbT4coQRiyP7wEWfiM9KIb+dg3A
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: intusurg.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7261cc79-d262-4170-09b6-08d795491b48
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2020 21:15:51.7522
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 039caf84-d3e9-4cb9-8b4a-2c2e17a80c19
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nS4Xc7XzH46YJEhgk4Nf509tPtXqRg+IuqzQqtSi5R6h5jjezt/CNyuZxa4+LbmOyLSPJosfwrm8JLBzybfa2iZneoaOPdKBYCCV2sgNI0k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR01MB3237
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Daniel Wang would like to recall the message, "[meta-security][PATCH 2/3] u=
pdate tpm2-abrmd tpm2-tool tpm2-tss tpm2-tss-engine".=
