Received: from NAM11-DM6-obe.outbound.protection.outlook.com (NAM11-DM6-obe.outbound.protection.outlook.com [40.107.223.43])
 by mx.groups.io with SMTP id smtpd.web12.1457.1595460569314642899
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Jul 2020 16:29:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@xilinx.onmicrosoft.com header.s=selector2-xilinx-onmicrosoft-com header.b=CKJJS24u;
 spf=pass (domain: xilinx.com, ip: 40.107.223.43, mailfrom: ckalluri@xilinx.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LDIz5actIpZgMsGinYhVg7hKc0kL2eS+ACCUxpG8VVFyMLYj3WKb9Nq85rVhAzKoqDedLqSfl+iCAOEyegCS2shbDM648Sxfk64O1pgIu+lhtdjXrDXc31CcbluNzJFAmHitPGAa54Z9SQ6C8JUyfc/VD9+apUS4eV4ccYKzThqlSkxM7Y4YojyWmPhWvmZsY1GmtGChdLrlfjtaTOxNzC4thLmfoMmiNjykB3q/qKRKkyrkpjFjJ5IK03pSLO70h4gX9Q8CBhsdhZ0/pSzRy04h0oskzKnL0VnMu0BSi2XkNsue/vSQp2iMsa9NBoJUJDxlp9vudVLiuAAe/Co6Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jT8Pofli2UovvCrTegdZJDW+aUZ7YQScA8vkAnuhuxY=;
 b=MHxVplBBn1paYub6nSmplwzIgJcSHsqMPsR9ncjbqIBCsD2dJEDkGNSyhk7gbn40lIbotALQ1+IR9tdauGEH9wmctnPt2YAU9FBNLA+mDWg1tOYJmwiIxb7tpP50ymKofeGq7+LyPyZozr7ni9alcjg5VS5XRmUeyawSVFWss0/s3gSrjoyrlDMItkMkzzZ31Si8QrWNylwRIsq++lBqtRqeMiUvcSTAnMnZK7gfpRV5IC7sFqUj9+VUlmHU/i25HNYqfD2H4fdVbzrrhfveZ7LA8mchPzktPhTs3u/OIFhF0fbkvLd6kqYaw3wSwib8sXkZZ8rqT+J22qFxnz8c6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jT8Pofli2UovvCrTegdZJDW+aUZ7YQScA8vkAnuhuxY=;
 b=CKJJS24uEpfm6ALT9XZonzeipScK+rwRarGp3Ck7vtxA8c2OUX4tHssYRRWLgrY4uqQXTaZH/bXzZUJYo8M/RZxP0+aexr/4mNOQfxkRxs0UyvI6poNT+iqOw6clzuj+bQU965srI754DdPsteaPi/S2LgBmk+fFHmQ1ETEFSbQ=
Received: from BYAPR02MB5926.namprd02.prod.outlook.com (2603:10b6:a03:11e::19)
 by BYAPR02MB5048.namprd02.prod.outlook.com (2603:10b6:a03:71::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.22; Wed, 22 Jul
 2020 23:29:24 +0000
Received: from BYAPR02MB5926.namprd02.prod.outlook.com
 ([fe80::747a:5ccd:410a:4175]) by BYAPR02MB5926.namprd02.prod.outlook.com
 ([fe80::747a:5ccd:410a:4175%6]) with mapi id 15.20.3174.029; Wed, 22 Jul 2020
 23:29:24 +0000
From: "Chandana kalluri" <ckalluri@xilinx.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, Paul
 Eggleton <paul.eggleton@linux.intel.com>
CC: Mark Hatle <mhatle@xilinx.com>
Subject: RFC: Devtool support to read BB_ENV_EXTRAWHITE variables and parse the env variables same as bitbake
Thread-Topic: RFC: Devtool support to read BB_ENV_EXTRAWHITE variables and
 parse the env variables same as bitbake 
Thread-Index: AdZgfr8k96TEEIflRXecw9OcXlI9YQ==
Date: Wed, 22 Jul 2020 23:29:24 +0000
Message-ID: 
 <BYAPR02MB5926CA0B969618BE28ADC824B0790@BYAPR02MB5926.namprd02.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=xilinx.com;
x-originating-ip: [67.188.92.153]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a6771dbd-7b0e-4bc8-4177-08d82e9711c1
x-ms-traffictypediagnostic: BYAPR02MB5048:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: 
 <BYAPR02MB50486C70D3826BA42C0B445BB0790@BYAPR02MB5048.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 qVLCp8u5yWdXVz+0isnCqgPP0oZjt9Z+9urJYX0YmTrNePmsk9fVJR3Hxoen5g9kbOglJ7iEe2W21Pn650g8tb3V5UC60vn59Kvp5l0ItB/+kBctWeI9iFnveYNEWBI8pG8wy2Na7iazJnR5eX7q5h4oQUfxlNhJ5vZjFSYpfaUJ5+5r4TuDV3RFU0AZ4ef37sE3LgfppQMPtHDgjiyAwhKbJWS+88e8oa+pAUUBbmtwQEefuTYi+8uRUSTDziMeueIzn5n1r1Jpgqn8QjY3/aBSByMGi+2AXlMlrPnAQCilij7zjdP/HZQZwZlIQBv+0Yhm75Pj8cf5/tW2VzYyqw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR02MB5926.namprd02.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(376002)(366004)(39860400002)(346002)(136003)(396003)(52536014)(8936002)(66946007)(76116006)(4744005)(66446008)(64756008)(66556008)(66476007)(5660300002)(33656002)(2906002)(107886003)(110136005)(7696005)(8676002)(316002)(4743002)(478600001)(186003)(4326008)(6506007)(26005)(71200400001)(9686003)(86362001)(55016002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 1uFFJzb5Z6jXJH155W19b+WRLKZGe11Jaw/CGBVwdJaLfZArXQb8N5hGH+6w72637/ud+JvNe/zsnFEk8jW2tn9vTo3wOkvLmPHqDj0ug+keLl/X9yz8fbw3Xo1q7aOy8EEjj5IToHuH8Ngt4FkO5rUhj9C1DEMofiZeXZN1S0Hns35hu1I7FMvMIslXytbuxTSJDoQwUI8RbUaM8dHJGtLAE0pSIcdMnkA35hDYx5Z9bIzHnkrBYkj+Q9dqsRNc/3dKlotgZZOzJEmq8CSwyIqTU3/PW6dAc2EpTwqtouFBREVq/OSv80ugNaL9ITrlUSTZQQGtiUzFUrQGIDy6cSsfKH1ohCthAkj0j9nkFijutX9QE2uy45ZMvLP4zgwXSfuVkSQkyhrdisvTjGCxibBCHuiokEi+MqUBxu3wdWruRYk/xcmW894SOo8NXqKZ/bdvYUtAqCJBbcuemByLbEm+CQKppw9G0G7liE14B4I=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR02MB5926.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6771dbd-7b0e-4bc8-4177-08d82e9711c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2020 23:29:24.3653
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CPcfsBiS8mTXuCYhg11kg5XT7t3aFnKeRxjV3tNkEzvLQVV4pG7fgnNk9ck9lmjPM8/xNiJ96ez4lZIx79yqgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB5048
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I have a use case where the user passes path to devtool modify using TOPDIR=
.=20
Ex. devtool modify linux-xlnx -n ${TOPDIR}/linux-xlnx

Since devtool doesn't evaluate TOPDIR as bitbake variable, during expansion=
 it expands it as=20
     devtool modify linux-xlnx -n /linux-xlnx

Can we add support to devtool that reads BB_ENV_EXTRAWHITE variable and par=
se the env variables same as bitbake ?=20

Thanks,
Chandana

