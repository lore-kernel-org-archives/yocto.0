Received: from NAM11-CO1-obe.outbound.protection.outlook.com (NAM11-CO1-obe.outbound.protection.outlook.com [40.107.220.132])
 by mx.groups.io with SMTP id smtpd.web12.5396.1592569011995170164
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Jun 2020 05:16:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@netorg397950.onmicrosoft.com header.s=selector2-netorg397950-onmicrosoft-com header.b=SODrpWHS;
 spf=pass (domain: orangephotonics.com, ip: 40.107.220.132, mailfrom: hboddington@orangephotonics.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mXtlOIrfZcjnR0qqNGjtxzGhd1pZiBb6pFJ+jezuyOKoI4e77XR+aDoP+aLnscKKsEUcOuXFQ/yj7QHWjc4ACIciN0F1l43mnckfyC7hEYdNlvlARVXu3HpRpKp1ohWmPYHcsox0IWHA/otcrj/gyLkLXzLQC6b8LAH0w0P896pM4ybz88/apfwYxmQkAityWNbkzwNOaU3Ns4HMJUzH6DmAmBeBeRqXOn/QG5y/qnzPAeu1dJnlitVqeM82zChiSopL6phFm8GmY4qGAI589njjYMdooC7WUu3nNucqUfDzPg54SLY3UmMxoDllRZ3OiAOO0qN7+LQ4HNrrQLvsHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DIjCd68LCGgIefp/h1dYZpK8MiEmniFZ1+JAjnaYR/M=;
 b=IzNdMCEB9uj/Ftac9Kg+O773P3HaG+IRiGdWqA/d7ZcNWaZLJMGpcPpkfoI5/A6EUuJxis7xNWkA9unEXo4QH0Z0rDOnK+CjRXkCyGqQ3zxDif1hpg4OnRblpeAmY0ts5v7O/x4CE+jSH73Oqyu94LE2CXF2XHkQ3318dKa/wpkcv67wSbUqmhaEUXY3DT8i9Zc25Doel9Z8iWaTKQp8RizNMp3L0atizwg2TjfTeMMvQAxk32ZtOPuS18AQJC3PSDDQiDYZSvubsoM70xyRNOXIWMBh2QpD8b9YcCCnnERATdOYVVkZ9tSd6EPhydH/CIv2mqW+EcVV8qxJ+RX8Cw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=orangephotonics.com; dmarc=pass action=none
 header.from=orangephotonics.com; dkim=pass header.d=orangephotonics.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=NETORG397950.onmicrosoft.com; s=selector2-NETORG397950-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DIjCd68LCGgIefp/h1dYZpK8MiEmniFZ1+JAjnaYR/M=;
 b=SODrpWHSAcKbcJTXJkyPQ+yoy8IIaWNM8Lp/nO0BPgYzlmm7ejIsGF7QZgKgIbPGB48qF4AXPSA4Gbp5mTyy5R0Q04M7Tkhyza72vE4Xz6BkS9E8NczNvHmV2XPfOat2MFkA7Bh1KdXKcY+I9PXiMRLFZYi4FU9S4SqPVoQuzfs=
Received: from BL0PR11MB3268.namprd11.prod.outlook.com (2603:10b6:208:67::30)
 by MN2PR11MB4222.namprd11.prod.outlook.com (2603:10b6:208:179::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Fri, 19 Jun
 2020 12:16:49 +0000
Received: from BL0PR11MB3268.namprd11.prod.outlook.com
 ([fe80::1d1:c56c:b335:3fb7]) by BL0PR11MB3268.namprd11.prod.outlook.com
 ([fe80::1d1:c56c:b335:3fb7%3]) with mapi id 15.20.3088.029; Fri, 19 Jun 2020
 12:16:49 +0000
From: hboddington@orangephotonics.com
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Distro upgrade strategies
Thread-Topic: Distro upgrade strategies
Thread-Index: AdZGJXnsFTozdc7xQuaxACCYYEP1lw==
Date: Fri, 19 Jun 2020 12:16:49 +0000
Message-ID: 
 <BL0PR11MB3268E2BB9A442B0890DA3C9DAE980@BL0PR11MB3268.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=orangephotonics.com;
x-originating-ip: [24.61.234.161]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 278bf8b7-547d-43a0-513a-08d8144aa4b5
x-ms-traffictypediagnostic: MN2PR11MB4222:
x-microsoft-antispam-prvs: 
 <MN2PR11MB422243437EC529182A28B789AE980@MN2PR11MB4222.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0439571D1D
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 aWRny8rJfmnXMmHMSIGWkpD9jm0mNDL9JOWmYfOI1eMWWaGPMzglDe9RPn4ir2SiQwNTc/abQBGOBL8bnCNZyMc+lfcBIu0dg8MsOhoFSc6g5Lyin20I3yj0SGrFlItgnsJfPOlKxG57Pcp1460ca5fGdIm4Nn40WnxVNHR9kQLg1xawv56yPM/Qj7GuquMjfMrbhaUaFTgPG/EoWUtd4RYCgwYI10/2/kla5WLxc83TVBIdRGeJppYrV7XGtLV3Cj1Fo+6amVXxCtRSGvDnvqiXdJqTRhbOrcfO91HrXxkt4L3apBAEg4bOtiPQmDXQwMWXW9bRshX56PRBZKN/O5673Sya9vHVxzjlIT0zdaeRaCsmbSy6fDNfSk8xq5boZVpxr3JlUdhLFL8tApcO7w==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR11MB3268.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(396003)(376002)(39830400003)(346002)(136003)(366004)(76116006)(66946007)(66476007)(66556008)(64756008)(66446008)(7696005)(26005)(186003)(33656002)(83380400001)(86362001)(316002)(6506007)(71200400001)(508600001)(52536014)(8936002)(3480700007)(8676002)(2906002)(5660300002)(7116003)(55016002)(9686003)(6916009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 UWc+rVurIynBpV9poBmIFWQMXPTR6NMRuPCO9cFh6XBHj8uxn8kQKbIH3u9CV2DW5e+j6VaaYC23TnHTvCezQntAT/U5LsufPAlhRj1P+ekhwztw86FJie8KZrgBLx0I4F1+vzmOwyDrrqnfYTE+AmX5dkYBfpEii+8t833RyxzTFCZLy3OUWBQy3soKFw/hYo4YoBly+6xCaBbgedc044iyLVYOvqdtlheX79nDAUJ4gXz1M3Y4hWRf2I6qtzOoSW/HUkis5H5bIFQARyUm2w5hRHcQ2GW3/YvqYe8MPo4CRhLI66xjaFMsJnpamqBOdZozTZ5y8Lq0JlleFpTuO1H2Y5YooZQUGYFtW6AsPJnIm6o2YRXnl66GPCeHDWD6fLvjGkTRsAOA1zjt0cEfMVQNN7x9tH/kkqaXeeOn2sjEPrkNBkhqj4tXhCjza7ScC7LDBvHudTG97x6jMlzJweo6akLiYuGl1QmpNbZc2UY=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: orangephotonics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 278bf8b7-547d-43a0-513a-08d8144aa4b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2020 12:16:49.5057
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8d7d1a25-5bcc-4de8-bece-17ed58088893
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s6QNo/0Wm+xtLJgQSnJcTvPLXiIvMOv5px90xqqSJjFalbpN8FzdGg9Ef5tiixmVe2Zolg072kAnz4oJxjupJ7SE+EG7vuQajKJcXU6bNDM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4222
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello all,

I'm struggling conceptually with a recommended upgrade strategy for our dis=
tribution (i.e. the resultant distribution on an ARM-based embedded device,=
 not the development SDK itself).  I had initially assumed that a package m=
anager (we're using DNF) could be used to upgrade a distribution from one v=
ersion to the next, but every time I've used it to try to deploy a large up=
grade (e.g.,  Zeus->Dunfell) I've run into problems.  Currently, if I try t=
o use DNF to upgrade from a Zeus-based distribution my DNF installation bre=
aks ("ModuleNotFoundError: No module named 'dnf'") and I can't even shut th=
e device down ("/run/initctl: No such file or directory").  However, if I i=
nstall the Dunfell-based distribution from a raw image (without upgrading t=
hrough Zeus) then everything works fine.  I'm not getting an errors in my b=
uild or indication that something went wrong, but obviously something is am=
iss.

Questions:
  1) Am I missing something?  Is it reasonable to expect that I can upgrade=
 the whole distro using DNF?  I've read the wiki page about System Updates =
(https://wiki.yoctoproject.org/wiki/System_Update) and DNF (or any other pa=
ckage manager) is not listed - does that imply it's not up to the job?
  2) If I do continue using DNF, how do I troubleshoot the above issues?  I=
 don't mean specifically those issues, but I want to learn to fish.  Some p=
ackages got broken.  Was it caused by the distro I'm upgrading from?  To?  =
What's the best way of tracing it back?  I tried looking through the variou=
s commits but obviously there were a lot of changes made from one distro to=
 another.  The above scenario seems also to be a perfect storm because now =
that DNF is broken I don't have a mechanism to downgrade anything.

I can't help but think that I'm swimming against the current here, or that =
I've done something fundamentally wrong - I'd appreciate any insight or adv=
ice.  Thank you!

Hugh
