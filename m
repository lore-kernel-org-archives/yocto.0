Received: from outbound-ip24b.ess.barracuda.com (outbound-ip24b.ess.barracuda.com [209.222.82.221])
 by mx.groups.io with SMTP id smtpd.web11.8.1617077970415361610
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Mar 2021 21:19:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@digi.com header.s=selector1 header.b=tX7b/gVD;
 spf=pass (domain: digi.com, ip: 209.222.82.221, mailfrom: lincoln.ramsay@digi.com)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11lp2169.outbound.protection.outlook.com [104.47.56.169]) by mx-outbound18-247.us-east-2b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Tue, 30 Mar 2021 04:19:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WjmK8U2RdFrKk671EhjbUY2FoKF8013olY6kHK0OUpGLisUQCK6ZEWdI6jiKJr6uovR83LlQIp2VQzSJcVbc2bB++xA9O8jCBN+3OZwk94hkWpd870ax8/d+t3wqud9zvAoSGcYumGsLfcM/Z7Px3M59ipJRNf/Oxaron5DbQhjVFoh8ikzncrvv4QaNvAlNdHWav4/JMhgPje9jCQMFvGblJfvDi+lAgecByzYdP0ouhv4srbXRYluoNnJU+fm3UwAq4cK7BLvDhwS372IOlZdrkeSVsvI8fDf3hEoyxHaOKWSqmgI92MDUsrS43aD4NI7d96I/wBAdgPS9PqCVPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NRMEQA/84+9izecqCNM515zH0sFPRaNJl6upkxjcmOw=;
 b=lwwrSHPCTERWLUCr4zrCiphN8aQm1viw7Mik+3EtQhck7C6b8yA87x5eWdqTfHxwTFwZD0NcXV7j/yhfxfR5Fn+c0ZOIo4AhEM0+nFN3LCCy+MlCqHb9IOhlC6/AGiqe5x0rK9dGZeJcyM41Q5Cm8r4mMRp8q216JljhRzSt5yXV9i14YB08tzrtIlHzqS1jCQh4GdL43QgpMMIH+GXC+Plo/NUYDnpwoeVz/9C9IJxTjXjJiRGRg+TEB7ioG1ZvbR0/gpax6TAKyA+c/QIWo09qXEAEW4hXPCv1bxOIXX1tHqlVC6xCoAvOjU9k7nOMIK/MRGsIKSWk7ASiWu4bdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=digi.com; dmarc=pass action=none header.from=digi.com;
 dkim=pass header.d=digi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=digi.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NRMEQA/84+9izecqCNM515zH0sFPRaNJl6upkxjcmOw=;
 b=tX7b/gVDPHmyFvlyZyPpMuHpdUN5V61vNXylbZ6XBxE6B80+h/fhfAkgeNUD/hrCZWy6hAFaCy9eBT1tY0BgRrifPsw9T8bC+I7BisTyq8fKcKqF+qw5FFGk5P+s3OZGKkuHBJmBfX18HH7H8Fc8DI2GAGQ85AL0jF8fvP4QU3o=
Received: from BN8PR10MB3698.namprd10.prod.outlook.com (2603:10b6:408:ae::22)
 by BN0PR10MB5191.namprd10.prod.outlook.com (2603:10b6:408:116::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.25; Tue, 30 Mar
 2021 04:19:25 +0000
Received: from BN8PR10MB3698.namprd10.prod.outlook.com
 ([fe80::e8e5:3b9:fd26:51e]) by BN8PR10MB3698.namprd10.prod.outlook.com
 ([fe80::e8e5:3b9:fd26:51e%6]) with mapi id 15.20.3977.033; Tue, 30 Mar 2021
 04:19:24 +0000
From: "Ramsay, Lincoln" <Lincoln.Ramsay@digi.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: Can't build gatesgarth after PSEUDO_IGNORE_PATHS change in poky
Thread-Topic: Can't build gatesgarth after PSEUDO_IGNORE_PATHS change in poky
Thread-Index: AQHXIQXP5IW0bSGPzEaf8WQnUjE1pqqb9FO2
Date: Tue, 30 Mar 2021 04:19:24 +0000
Message-ID: 
 <BYAPR10MB3701D79F0BF1237F8387C707E87D9@BYAPR10MB3701.namprd10.prod.outlook.com>
References: 
 <BN8PR10MB369860EE1F3B6F3841A40DC0E8639@BN8PR10MB3698.namprd10.prod.outlook.com>
In-Reply-To: 
 <BN8PR10MB369860EE1F3B6F3841A40DC0E8639@BN8PR10MB3698.namprd10.prod.outlook.com>
Accept-Language: en-AU, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=digi.com;
x-originating-ip: [158.140.192.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d135eaea-fb27-4e08-2690-08d8f3330087
x-ms-traffictypediagnostic: BN0PR10MB5191:
x-microsoft-antispam-prvs: 
 <BN0PR10MB5191C9595CA4A5191126B470E87D9@BN0PR10MB5191.namprd10.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 d7Xj0mv400WrDjbOfSjiOnWGW7lg64wEJ95aN20EU8Sgs0IAno24ONLSggFn+UTWsYsqB/NGvJPLcMW297SWHV2NAO2mWy7IwfgNOVPXw7bgjq0zC6lNkM8urlzfXlSbMgRdAFOp9hwqEsoJB67qyFfxMJMDuQtgKCxn9HBxXwGiJf4UPtNJzNIZQydUmtV4kuS1cHleQ0KsarDV6OGUpDk75rkdK8MkusUgFxCcACwLv7DBBKLUn/7QLKr3v/Wo1dC5oyzYvmk5ShJ8DA/qrNiKfUne4oCr1HPTLc9DzLdjWglkTjF+ws6tYAtKpmQsVYcxP/LQ2Jzy4/tIhYo1IvaAgL6pGGb6ctPcmka+pLTbdhQP0SG9G7Vhs3s+wLxPwuyIkCshRll8H8SRW7Y71Q7nrGO/V+b4N4dTECo9nAnFbvLYYm2ss1xrQdGVl9gZae6I4VHcfCdhWZUwIp8Mq/fQ9joAPLJrTbxKP3XQ2rFnPbWyyEhoNgX4tjGLf+2tJ5Pcrkm7Tt49UeO2DX/Wh8Mf5+gF/lsshKhR+UjpCc73Dn2SOCeGt7Sy8PBmix7EJzalmcc+kN+1DZGVt57Mm5pt4q0xXVJVxr4Ib0dCj5/LNGDwSb30f5pL5jImnnpyfEhSul+0KlPT4JQIO3LUSBd0FIzxPIIc3OHgW+PpYEQ=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR10MB3698.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(366004)(136003)(376002)(39850400004)(8676002)(64756008)(316002)(2906002)(91956017)(8936002)(86362001)(478600001)(38100700001)(66476007)(76116006)(66446008)(5660300002)(66946007)(52536014)(6916009)(6512007)(186003)(9686003)(6486002)(71200400001)(66556008)(83380400001)(6506007)(26005)(33656002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 =?Windows-1252?Q?OllUf5S3aUjJTaubkLdo+zV7k9OjMiOyKHn4CN6EZfXiHK344pyLSNMg?=
 =?Windows-1252?Q?oBFAdz2j1xtfLw2W8GiqeQEY/OFT+Jvmiq0ChtSv9QE5y8/3BZY42VYL?=
 =?Windows-1252?Q?Cpca/MiLSCkxeVxdntJIhlWY0dlSRzoI+gI7+YCcibJ2iX5GZQC/ge5I?=
 =?Windows-1252?Q?W6RNmZHB13rBBX0kngCtm3+OFcertEaw0et0jL1twrxX92WSdKNmVOPa?=
 =?Windows-1252?Q?DpYxW95IjgVInvrP2TbW/SvDlgv1FSFLwb6fUw0SZ3H9sG0jUljv36hL?=
 =?Windows-1252?Q?zYgOLkkrJalyIdO3v9Jtf0F4D2Ys2D817ZeyjVOQAFwnxBaz7HQl9v5W?=
 =?Windows-1252?Q?nbdzVhrM31T159WrKCN7Ym2WJIDXziSEUUPdUhEGzV39HPdS82LRw1qf?=
 =?Windows-1252?Q?nkO/NYCwA1X5daccbSKKOWjqi2W+IJZZP+EiJ7Qh2lj9LBnjBi1VZ5QN?=
 =?Windows-1252?Q?A7FwhbGdkpZ8GEppOkN4beOC4ug4WCxUzV9isYUTKv2xcExGsB3Cys/E?=
 =?Windows-1252?Q?VjKPHr18lDaFS1I9o5ml0fZAXjMsKwWF3H+Vgmlw4QwPkOf8Uyyoy5Ng?=
 =?Windows-1252?Q?pGQ+lnfzBhbIHsDUPEWii33MjFQxbDwt4toBnt0h/cCzd1VJz7O5HIDg?=
 =?Windows-1252?Q?sUuMjmx8kjvLUu3DfMbaculX6HGGALH7aMzeTxr/BtMtTDNN7eazYqdG?=
 =?Windows-1252?Q?ev8+ILucWSZnz9dhAdSbiynmEuL9GECgXv1HkmVM3aeChUNfBDxbgi1O?=
 =?Windows-1252?Q?ZcCtTk16oaVOXTsvgLsQo92rQ37EWCtxc9ETib/aDd24oK8U/WUeoIo3?=
 =?Windows-1252?Q?VwVTP0b8JCumrh0PxC//nOFHY+cRi8VgyDqyh+vnL9U87SmxQSkHRfOH?=
 =?Windows-1252?Q?AUuv1xi7o8Js8benqaFYBtFUgqJGEnHYIGvhqMo3j+RpjiYvlYXeihom?=
 =?Windows-1252?Q?jsVtB+B+UHkclo04tuMGkZa1Homr1qsJeno6g9WTbJrPnMJZIpvm92wZ?=
 =?Windows-1252?Q?Th+gvUz/F50EvonO9OYksiVD4KnodqZ8sqqJy8XUE4KDtOLqSQxlKC4N?=
 =?Windows-1252?Q?DqoPGApXw2oXkIFgrCWPmYdOwTNMB8wNa/9YLK8m264oM9S3+zAD9BHO?=
 =?Windows-1252?Q?PnVxOSGBrXtfVy+iD+dETjDpPUsIIGBus576ttedzCwx2koPZRrmgao7?=
 =?Windows-1252?Q?SGk88UnInuz6QeFEtutv9lfI2SydLVbNtJHsnV3k9Pp2HAFbCtB9hLPP?=
 =?Windows-1252?Q?dXsSy+3NyD2TPROo26OMFR4yh7xTLgYF+vPFTc2kBknqmF7mBfblf9wx?=
 =?Windows-1252?Q?TSoJ5H54n5+hTN4jap9CrRLRsswrmjBz3X8HhuFTlFxZirTw2LyMF3qC?=
 =?Windows-1252?Q?3RcnZbZa4wM8Z9E18HyDJKS0WGf/INx786Rn4MUXiDTvaRv5gHWaddNg?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: digi.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN8PR10MB3698.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d135eaea-fb27-4e08-2690-08d8f3330087
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Mar 2021 04:19:24.4407
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: abb4cdb7-1b7e-483e-a143-7ebfd1184b9e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zpPGv14Iw8a/gyDrm4i2XSSbcvXr+vsAp8Rqngn1NwYMt3bKE7X542ZPPUhKHIYhgSfkR+Ns7PlsM6xA9UfDrA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR10MB5191
X-BESS-ID: 1617077968-104855-3957-65948-1
X-BESS-VER: 2019.1_20210329.2113
X-BESS-Apparent-Source-IP: 104.47.56.169
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.231191 [from 
	cloudscan17-4.us-east-2b.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS112744 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Content-Language: en-AU
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,=0A=
=0A=
Just to follow up on this, I eventually figured out the root cause, but I s=
till don't understand why PSEUDO_IGNORE_PATHS was allowing it to work...=0A=
=0A=
When I setup my PC, I created the user and then changed the UID of the user=
 (for NFS auth reasons). The end result of this is that my user has UID 111=
1 but GID 1000.=0A=
=0A=
I do all of my building in Docker and a user is created that (in theory) ma=
tches my real user so that ownership for bind-mounted locations =93just wor=
ks=94. However, the in-Docker user has UID 1111 but GID 1111.=0A=
=0A=
When bb.utils.copyfile tries to copy files, it is copying from a source dir=
ectory that is 1111/1000 into a target directory that would be 1111/1111. I=
 still don=92t quite know how, but that seems to be behind the chmod failin=
g.=0A=
=0A=
The chmod failing is (as already noted) why the +x is lost on the postinsta=
ll_intercept script, which is why I got failing builds instead of just the =
chmod warnings.=0A=
=0A=
I have fixed this by updating my Docker creation scripts (to ensure the in-=
Docker user has GID 1000) and to find and update all the files with GID 111=
1 to have GID 1000 instead.=0A=
=0A=
find . -gid 1111 -print0 | xargs -0 chgrp -h 1000=0A=
=0A=
I can once again build without patching poky :)=0A=
=0A=
Lincoln=0A=
