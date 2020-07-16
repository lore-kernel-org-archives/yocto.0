Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.16869.1594910384517903233
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Jul 2020 07:39:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intertechengineering.onmicrosoft.com header.s=selector2-intertechengineering-onmicrosoft-com header.b=pKl5AGRD;
 spf=fail (domain: inea.com, ip: 140.211.169.56, mailfrom: sdw@inea.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27F1EE01E22; Thu, 16 Jul 2020 07:39:44 -0700 (PDT)
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
	*      [40.107.243.139 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2139.outbound.protection.outlook.com [40.107.243.139])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14A41E01DF9
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2020 07:39:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cFI1Uo/EtZTc81NH1uRfMtCbJEE0x2LYaKnG/id5ylqu8/HYHNV+pUlFbKtWkpIdOilvXDLdM7Hgk+CJqVeep/vghwHHLyVTJaiHC3eDM6+ZPr2JVklvYKVr9KTNDbimllQoZvxAbuyYS9NVzhxIPzuNCXVU6L8Ixqo/z8p9gIlQSDasZazwA+0J9cQcC1YFG1kp8y1log97cCdpTQoLvIgtVL+SPMVn9jedlt8okgwz69BiSoEcnIkADa0ErFDC5CwI247Yqam0COuyaA4dzhIPd6l6xYnj+VraeV1lHhqhhTuH4sgWwm3f1XOJudmMfn3Xvv4/FOYgDTWUbLYjVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hmISpUuTBtsbCHsnxwG/QjfjHrfX+i4kovAuxyf4No8=;
 b=E5nKe+9Q5XFF1gt2WepPQUkZd1AyOR9J8ZdL/4jlfdntsa5xZJe0NOCOJMWHVeLLYab9hUZtCU9+XgHFChEByWYyufMkc70CHZiwXeGSQpVY58tx1e0A7vKSOJjLjGkK9e+bm8T424Ob/ymWLijlgo0POMdJIeDsCMNFGgM6KtKIyrL4lcUJrT9xiGqqJoB+Ldh4j6wWmKZGkJu+BFtO5FOeA+a7yd3pPuHtITPqvycByw6miXHnPOlVFU3NmQ4CK0THj3NgiANn84uty+439xhvoCkchp8ma0/Xuec3Jqah8BffOO+0G+BPyP4NN8hF1pJo5QwTJNp0trnGeIaBAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=inea.com; dmarc=pass action=none header.from=inea.com;
 dkim=pass header.d=inea.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intertechengineering.onmicrosoft.com;
 s=selector2-intertechengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hmISpUuTBtsbCHsnxwG/QjfjHrfX+i4kovAuxyf4No8=;
 b=pKl5AGRDNeXjACksqtZmH797R7W8kK3f5H+Rb0l88sJju9EwM/fU8L/m30Bo0WOv6RQiPHb0ftZopPwUIQuQ5o0S2Qk595SGrwyHjY4EMZ4DpcdpxlSrdWQEZkL3fZ8IkAda8UGaoRRvTnGEVC6VzF4z2IQ4cbgRUV0zWjAkm2I=
Received: from MN2PR17MB3024.namprd17.prod.outlook.com (2603:10b6:208:e3::18)
 by MN2PR17MB3343.namprd17.prod.outlook.com (2603:10b6:208:13a::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.22; Thu, 16 Jul
 2020 14:39:40 +0000
Received: from MN2PR17MB3024.namprd17.prod.outlook.com
 ([fe80::879:1263:40db:4543]) by MN2PR17MB3024.namprd17.prod.outlook.com
 ([fe80::879:1263:40db:4543%5]) with mapi id 15.20.3174.025; Thu, 16 Jul 2020
 14:39:40 +0000
From: sdw@inea.com
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: How to configure scheduler to SCHED_FIFO
Thread-Topic: How to configure scheduler to SCHED_FIFO
Thread-Index: AdZbfmbwiPhv9HmzRN2+Gnj0BC4Zag==
Date: Thu, 16 Jul 2020 14:39:40 +0000
Message-ID: 
 <MN2PR17MB302451D7F5FDA52B1DFAAD64D67F0@MN2PR17MB3024.namprd17.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none header.from=inea.com;
x-originating-ip: [2601:191:8500:6a70:243f:e516:a67c:cbf1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 069a5a7b-c5da-4572-c9c3-08d829961249
x-ms-traffictypediagnostic: MN2PR17MB3343:
x-microsoft-antispam-prvs: 
 <MN2PR17MB334312386B503A5D34508ECBD67F0@MN2PR17MB3343.namprd17.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 NAX3fytec1C4BmQXS1dJ2dersNjWL/1ax1kdvzcpSQyUPQacFaaoxam6owC2WANnWZ17XCxX43IyrjSzaPob39QF9KemHkNpTYG08GgezXSGQwTQRJJRv++QNmVUL5kqTjn2woHqi2htjzg14KJxKUIFUgF9EL8aDyTQun97qoz20td8Ir6fT1Hgrz4rAq0HqjKL/3wudoXCUbaPEpPcUTpcTxKfiDXWplg/LqdIwofar2mz/CJTD6Bn0AUIrYKvvv9SdaaFhPtnkmxPUwUf0egZbljwyfZ56duxkUapaqKqniVuXOUFvV1VbODsZMRj9Uy5ePdLzaM8uGixZgXpNg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR17MB3024.namprd17.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(346002)(366004)(136003)(396003)(376002)(39830400003)(9686003)(55016002)(66476007)(66556008)(64756008)(7696005)(316002)(33656002)(71200400001)(86362001)(83380400001)(8936002)(508600001)(66446008)(52536014)(8676002)(76116006)(5660300002)(4744005)(66946007)(2906002)(186003)(6506007)(6916009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 OhFHPBnYGdv4r6SDz0Nx0MQP0BliKUwAcBL1TY+pSlekEvS5Htz2gZL+uZ/FgaSewW8YKWZY3sycgqwzV2Djnqs8nyMaK7zVd0kHTzBH98nP5WKFGTdFOi3CiQW7gkqTgT4JP99gkBXJX00f1qsr+xU6Hq05s7HlSboXzZ/CMrzSqKWXoEn5yaZk5KKj6MdbM2c7610j74va76UrKwlnu5bOSFpgj8mbzjGNm1fqYpSUF9hHiHw8hi3eSR1ACCQ1KLk52A/8aORQyQkWaL0gaRdLH5o+ZcX33MM/HkCxovxtJfTuoGYxUYsPsopEOnLRgZM78uZA3w4LIL+ga6uayCffO4yU5O9l7O61wKxGZI+wOvjVsLJO5CsHYaX0SGGB+Yb4xo1tiQFG4eOol67xOa75xDa/lnTRevn3MdNPDshHdSkHZUzhwqhZQoN84WlH7n0o7Bo7FbazYUlnBUgcn+2PzGOjEhNYoprWdZr/RI9NT5Y1w6mzedGIlqrkAcWY0WVPOoN9GzSLzMzMvG8MyCJokWDvtqrE/0wiyXSiaHUzaHot3hWOUjr3oWVCGZGX
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: inea.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR17MB3024.namprd17.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 069a5a7b-c5da-4572-c9c3-08d829961249
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2020 14:39:40.0454
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 99c11015-7dbb-4c7c-ae43-1a26885adc83
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tZ85uUVZO6RgMCQz0AkvmtC5zV6z5es77zBpnRvdU5DLJrvqBOzlzPWUQqR1dIjw
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR17MB3343
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

In Yocto Warrior, it appears that the default scheduler configuration is SC=
HED_NORMAL.  We are trying to do some time-critical I/O, and it seems like =
we may be missing some data.  I'd like to increase the thread priority for =
our data acquisition, but am not sure how to do so.
Is it possible to reconfigure the kernel to use SCHED_FIFO or some other "r=
eal-time" scheduler?  If so, how?
And what are the risks of changing the scheduler configuration?

Scott D. Whitney

