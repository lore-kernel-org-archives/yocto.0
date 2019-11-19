Return-Path: <ckalluri@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3298E00D88; Mon, 18 Nov 2019 16:15:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FORGED_SPF_HELO, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.70.78 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from NAM04-SN1-obe.outbound.protection.outlook.com
	(mail-eopbgr700078.outbound.protection.outlook.com [40.107.70.78])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42C10E007D4
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2019 16:15:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=lMvfgoQ3YnnaAfBAgm3U+XuFBhQPh1a3fu80ZHrM+O4Y9c6DNv289AAbaB2ErJaUACKuefPfjZC5JYVaaCY6f45F8s/f5F+h491ZUnryOpz41hIXqnwt0WNtfiZKgZg1KPRFffOOPRnaXV64d17iPiWAsRI+fu70TW8+7IrTUhEH9OQD+kZ+bu/xT4WVtKl+sK77FVLqlD2fw2V99YdljrzxSRGfF8aUEOJl6//lfe5u5iOAPmuW37StUrpMQ1SctI1A1NRh0DEXWrjJG12BhzPcjoUMxANzvBMgG9EBDojmiMVM+gWgAKSFLFKPM4Z3IIP0euHbzvRuGrC5T9b8Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=owrqp43cY7qS95HuXo0is1LKHhGRBI1lKWRuo2iQP/o=;
	b=i9Fj9SLXcRT2AOnYbSyBSbuTPkvtaXkQZaxfHp2FLLo0MyZnhlHUJGibHLXrDBthckKtq0cJMSLN+HcE8nqF2QkD2u1PMh5nOVPMMBQwGPC+tIR0k3/dSX3B9T0DQEAMFiT+/DC6jtetQ+ljbnV+8YIrDfq+xUWAaxoqsHgglPxwWz7w/7Uh0T/gTtEUouwOCaxfJ551BYEug4Z/Tn679MujUcKpy+xddv16kwpdCkKpE02I59XfpMYcU6nzLJTvkcZqLm/Q5Etfn8EAPm3AM4wzguJgw7DhUpviX3F/hW7rHE8uSbPS0Jft4EaCv4nDvFX0jN6kMgzBJ09DDAA6/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
	dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=owrqp43cY7qS95HuXo0is1LKHhGRBI1lKWRuo2iQP/o=;
	b=oXLF2+7GG3RUTT7KOkhdgw/jCl5aF44qutFq3UIpY+gsTQUCHyUj5Wuj99It9ziJqQWSg9rxddBb5ABRwjjJmE4IjvcOByruW+Ic1EDmLwVQbIlgi86pssYaxgoZ/+Hm1AOgt6A+3WYe+8fy2bNl0cLn4/Krf6RdDdfcdn7Tc2g=
Received: from MWHPR02MB2576.namprd02.prod.outlook.com (10.168.205.142) by
	MWHPR02MB3215.namprd02.prod.outlook.com (10.164.133.152) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2451.30; Tue, 19 Nov 2019 00:15:25 +0000
Received: from MWHPR02MB2576.namprd02.prod.outlook.com
	([fe80::a53f:6f7b:5915:e501]) by
	MWHPR02MB2576.namprd02.prod.outlook.com
	([fe80::a53f:6f7b:5915:e501%10]) with mapi id 15.20.2451.029;
	Tue, 19 Nov 2019 00:15:24 +0000
From: Chandana Kalluri <ckalluri@xilinx.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: patches to upgrade meta-jupyter layer packages
Thread-Index: AdWebmsfqM74QXjhTKSUYuEMeMExEA==
Date: Tue, 19 Nov 2019 00:15:24 +0000
Message-ID: <MWHPR02MB2576FB71F9655C67BB76963EB04C0@MWHPR02MB2576.namprd02.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=ckalluri@xilinx.com; 
x-originating-ip: [149.199.62.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: bbfdb88e-2246-4256-aa77-08d76c85930c
x-ms-traffictypediagnostic: MWHPR02MB3215:
x-microsoft-antispam-prvs: <MWHPR02MB3215075D55294283CFDEA519B04C0@MWHPR02MB3215.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 022649CC2C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(4636009)(39860400002)(346002)(376002)(366004)(136003)(396003)(199004)(189003)(53754006)(7736002)(6506007)(102836004)(5660300002)(66066001)(186003)(9686003)(7696005)(26005)(14454004)(55016002)(4744005)(2501003)(86362001)(478600001)(99286004)(25786009)(6436002)(66446008)(2906002)(74316002)(5640700003)(476003)(2351001)(71190400001)(66556008)(66946007)(76116006)(52536014)(71200400001)(64756008)(8676002)(1730700003)(256004)(81156014)(81166006)(3846002)(6116002)(305945005)(33656002)(316002)(6916009)(8936002)(66476007)(486006);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR02MB3215;
	H:MWHPR02MB2576.namprd02.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vU4SEmOt4WRHnqSYWv3djoSRA8L4zrSOzioPgsDDq0w2nC7TBpLfS1KXNE1aJNealPHdBAfIYP+tsKD6CyaPl55yFSzSjs8/EUfVZZJvI2ZYvEwp0M1Qh8dyHzQpDQlgXFZbG9WaPOSc++4PoUz6xo31ZUamv7v2xHZjFVIN4JjcOBF5uJLUFd4JojMnyI1vDpDUESRM88P6ev/y5ZjtBBhXB/0aDaSQYUiwH5ZlfzTGDyie60/CX6SOO2cwDw1T199swDDfZobZlFYK5ADpxNMLOkLi0Yj3BtctmdfydcXvsbpAMa+zlf07gzuUlvXAStYrRrW6Or2NcsIDFi5RbT0to2JnsecJfxXT/IWtrE5S3iwl1hzFXFgLMrgLEez8ZU67HF5UsT8M5sfsQrGcMCvMwvQpd8m7Oc5kAEOg9EIdxNYGznpmgSWdy9qKPGuT
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bbfdb88e-2246-4256-aa77-08d76c85930c
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2019 00:15:24.9385 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pI17eb/4BmlIflQnYljKCLYffUtUbpSIPEPTreTiTc9kR1U1c/CVhTEQcvKehYQbhGNuk0QzjuEUyj63C3SDBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR02MB3215
Subject: patches to upgrade meta-jupyter layer packages
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 19 Nov 2019 00:15:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello all,

I have upgraded python packages from meta-jupyter layer to work with the ze=
us branch.
I am planning to send out the patches to this yocto project mailing list yo=
cto@yoctoproject.org Please let me know if this is alright or if I need to =
send them to a different mailing list.

Thanks,
Chandana


