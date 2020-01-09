Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.926.1578604530081650747
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jan 2020 13:15:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intusurgops.onmicrosoft.com header.s=selector2-intusurgops-onmicrosoft-com header.b=mm7jHVjN;
 spf=permerror, err=parse error for token &{10 18 spf-001e7101.pphosted.com}: limit exceeded (domain: intusurg.com, ip: 140.211.169.56, mailfrom: daniel.wang@intusurg.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9043E014DE; Thu,  9 Jan 2020 13:15:29 -0800 (PST)
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
	*      [40.107.236.95 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2095.outbound.protection.outlook.com [40.107.236.95])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF060E00BB3
	for <yocto@yoctoproject.org>; Thu,  9 Jan 2020 13:15:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gI+E67nl1ko2aiSFrVCh9WCoSVhkYPFok21v1eYGhpxuHCDxfyORJfj2xTrwfCDXFY3duZQNOvvTdGropZHqZTUDo2Lr8Ybr9hwHvlZpY1COwoS+6Me3/Kh0N1kh399PHC1wbO7p0AXTlc6R8eQJQPxFX9I0oeG/AK6f3yxNQTVRDqxEzZy8C51CTUIfoZHVn5i6ibCUrJBuYp7seTT5JWbw7j7r2axEsyOHHt3giO29tnnUTI0HYJ5TzHoHfWkosL2cPAL0ehVcOGE9JLvxYGGkWEdtfbZ61eWc9c3p7ErbqmpCR4nTXDQh0B2+wweDd86Zd3fSlVYUYbgNMGCTaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L7jCvK7asiwYRQxYIhVNtAt9m85yp/OZ7jxDFP/doBs=;
 b=WQOA1DtliVDUKB/kphujIRc1krfn3ehK0EM7/DOUOpKHr4JWkpIiczHcJNxJLGg2JTlyrci+mTLoXM2IaYWXWwsrPe/yBCKE+cnEfn4Ns+gHSeT5qQn4Iaz40LfCAXOOKxhQYgUdjE/ezcctIoVlcpuHrfhkYny2SA4xYaSk4Z/x/2AKblzjGTmUaWqQjQ2FXm5TJoRppxyRvgonibM9f3h2XmwW3/Fv2v/JAIPn3S9XKFXfULStRqBHcf/eZfI/Qr6g2C+D4JkbNHkQmisCxQAP9w8Ewz7yhIyU3XAa8LO/dv9irjlHTUEUh+985lIgNSQEAwMQL4JsV+XQme92WQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intusurg.com; dmarc=pass action=none header.from=intusurg.com;
 dkim=pass header.d=intusurg.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=IntusurgOps.onmicrosoft.com; s=selector2-IntusurgOps-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L7jCvK7asiwYRQxYIhVNtAt9m85yp/OZ7jxDFP/doBs=;
 b=mm7jHVjNY5J4nlN8XT6dYGyP8I+SmwaPKOdlNtNkITIFC9u6JI9vjR3Sx3FJbD3jXDfldatrRU8WlWgLx+Xx7Z5zl1X+S37PTd0+5R2yWkBEYlOZASRzcQvTX7wckMergLy0FSPXHHTHryE+cpnX32LL579Tv7h4XuACuPgWLXs=
Received: from CY4PR01MB2328.prod.exchangelabs.com (10.169.252.16) by
 CY4PR01MB2342.prod.exchangelabs.com (10.173.41.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.15; Thu, 9 Jan 2020 21:15:27 +0000
Received: from CY4PR01MB2328.prod.exchangelabs.com
 ([fe80::e08e:9a14:332e:580b]) by CY4PR01MB2328.prod.exchangelabs.com
 ([fe80::e08e:9a14:332e:580b%8]) with mapi id 15.20.2623.010; Thu, 9 Jan 2020
 21:15:27 +0000
From: "Daniel" <daniel.wang@intusurg.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Recall: [meta-security][PATCH 1/3] Updates tpm2-abrmd.default and fix indentation in tpm2-abrmd-init.sh
Thread-Topic: [meta-security][PATCH 1/3] Updates tpm2-abrmd.default and fix
 indentation in  tpm2-abrmd-init.sh
Thread-Index: AQHVxzHqLFyOH6f9iUWUQlD8Q2POiQ==
X-CallingTelephoneNumber: IPM.Note
X-VoiceMessageDuration: 1
X-FaxNumberOfPages: 0
Date: Thu, 9 Jan 2020 21:15:27 +0000
Message-ID: 
 <CY4PR01MB23285D287043F2C030A26F4C9A390@CY4PR01MB2328.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Daniel.Wang@intusurg.com; 
x-originating-ip: [204.27.197.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5685b692-2867-438c-4c50-08d795490cc5
x-ms-traffictypediagnostic: CY4PR01MB2342:
x-microsoft-antispam-prvs: 
 <CY4PR01MB2342FCA01AB142CDAB5DD8399A390@CY4PR01MB2342.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 02778BF158
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10019020)(366004)(346002)(39860400002)(396003)(136003)(376002)(199004)(189003)(186003)(52536014)(6506007)(5660300002)(26005)(2906002)(8676002)(33656002)(8936002)(7696005)(9686003)(15650500001)(81166006)(6916009)(55016002)(81156014)(66556008)(66446008)(478600001)(76116006)(64756008)(66946007)(66476007)(316002)(558084003)(86362001)(71200400001);DIR:OUT;SFP:1102;SCL:1;SRVR:CY4PR01MB2342;H:CY4PR01MB2328.prod.exchangelabs.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: intusurg.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 dA5n0fMlODIDbnCRxZoTnGc74K8zHoOPcHIXcSELhws5/J1kmaupx5cyEU1Fd1PQ+KLCX2D/Le3QfIYcbTE3s8NXr5GPVaPIT6ZwneGRiolVpONpealqZMUths5na9cZRbsqzM0BZywLGxt3s1GOVzXX5Gep406odjVEcjcKUKZ/XcX1L8TEeRKbxteX3s8w+L/CpXqIOScJE31VP+meERUEMUbUDogUrf2z7gJSzDvsQz6h67pjDnMGohBWln/M9OHd+u07XJQIPx46C25wJFaETxMEXeQAdFuBsplewLvCSRABC7MszQTngK/dHMy6It85+EESSGpDa1CJDpWNyKlj0juLoKa+6HzyCMi+RW+oYFlDOLH6G31Wf5ybbC95izFsSfyf13H9qwP3YkFCzIjvLsfMtWY6k34pL7QM4FiW86dITjSi6L5w8JLhYHO4
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: intusurg.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5685b692-2867-438c-4c50-08d795490cc5
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2020 21:15:27.3923
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 039caf84-d3e9-4cb9-8b4a-2c2e17a80c19
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h4nk1iRafZoAntx0vN6A5dsq7IvgQShS6SQeZZ+tSzmbfrdC/kRU3iKlyjgau0Xq6znEgLLpPUiioC5fii5eMinoOT/ctRcap4fovrV+8ag=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR01MB2342
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Daniel Wang would like to recall the message, "[meta-security][PATCH 1/3] U=
pdates tpm2-abrmd.default and fix indentation in  tpm2-abrmd-init.sh".=
