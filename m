Received: from NAM10-BN7-obe.outbound.protection.outlook.com (NAM10-BN7-obe.outbound.protection.outlook.com [40.107.92.104])
 by mx.groups.io with SMTP id smtpd.web10.39556.1591024581373978360
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Jun 2020 08:16:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@melink.onmicrosoft.com header.s=selector2-melink-onmicrosoft-com header.b=MkXZ02hX;
 spf=pass (domain: melinkcorp.com, ip: 40.107.92.104, mailfrom: bevenson@melinkcorp.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=by1ZHK4lUyrc59kBif5bF3bYlNkU3uKYhmxrvOJFdiGfv3UFYGO5yKUt0AdfELSg1q8gS7lAfJ6m5zj2xmCA+wwIXWzubVTdk7NauBq/TQGRe42xsh/Sl0Fv6FUr+s0RFMiwkkvEpSXSwdQaFDz1B9n/SpGCfjyeXOzJNt+iAKpkRIHWMbI6mFEExlxTWFbmus5+gngHxfxEjU120oD4KgiyhBZ1d6Nv675Kiazhx32zIFsAKnqR67DN5WtAu7Ce3151qoS1RshNyC9395ssyXgqPTtiNjbBn7ZEtBjA0zFHR3tMRqXuvs3K6m6gW6ymwWDqZOJVBy/8My8QuCFYGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5aAI6e/H/cOPxj5Q9xnJwB78VuEXtlk5FvhDJfGtgKc=;
 b=EYnyVfwHIfzq6NO5MEoXrJJTzVJwq551Byqf2Yglht6Cs9vmor38KnYf/QN7QQDv4a/M7JZld1Y+m7HstMFC+M2hmOsOt/Kr4rXv1TAypDmh/od8hnmKWwX6XRLOFL11HWLCgmiDhVEVj+AGl7P2GZQ1W8+m0+uR5YlM0aHHQYko6lWz0SXJAnTTbB1btm7TY8kAA5sWn4u6v7FbZQIcMVum8Ky+u/Sd+IzljfUX0ckvameWh3eklmX2H/uIar4OO+3d7ZRomseJ0JMdJK0jW0mqv+9vnAGo7m7fXMSW95uLGrZEBtIq0dVBDajhwFzdY9UUF5xAUVA39krycRLGsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=melinkcorp.com; dmarc=pass action=none
 header.from=melinkcorp.com; dkim=pass header.d=melinkcorp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Melink.onmicrosoft.com; s=selector2-Melink-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5aAI6e/H/cOPxj5Q9xnJwB78VuEXtlk5FvhDJfGtgKc=;
 b=MkXZ02hXc8V959r65IrSZhDXJgtvcoi4yPfJePO1SbchiBxAi4srcdFze2vluXf6C7SnKYmuM6EjJcA3Jo85+mv3NDp6e+2tGySe7cBHc7LchUZvHiZXfwJf2E1cJzzNCaMZBcO8SmZiDSM82kF/ffNp431TJw00X+Bkr9xNWiyxIAGBIYveEY6Q9YW+OrkJa0dZJjq0qJqXDsMUTXegg+/hfW9v3IbAMu+3mqBTBPO7sLTTak8r0oamI5cguYIor9HDv/okwdQ+JfvPMl6FfzPZFdvW2VzH1rn3txTU4wIUvDYNB+kBvc13Q8IWlCma5L0X92FK7Ol+qJO0L8A84w==
Received: from DM6PR20MB2540.namprd20.prod.outlook.com (2603:10b6:5:1ac::13)
 by DM6PR20MB3283.namprd20.prod.outlook.com (2603:10b6:5:2a2::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Mon, 1 Jun
 2020 15:16:19 +0000
Received: from DM6PR20MB2540.namprd20.prod.outlook.com
 ([fe80::2051:ee3e:dbd0:9337]) by DM6PR20MB2540.namprd20.prod.outlook.com
 ([fe80::2051:ee3e:dbd0:9337%5]) with mapi id 15.20.3045.024; Mon, 1 Jun 2020
 15:16:19 +0000
From: "Bryan Evenson" <bevenson@melinkcorp.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Eclipse GDB setup issues; can't determine cause for SIGSEGV
Thread-Topic: Eclipse GDB setup issues; can't determine cause for SIGSEGV
Thread-Index: AdY4IU1c+KqgRe3YQl6zQlxTh54n9A==
Date: Mon, 1 Jun 2020 15:16:19 +0000
Message-ID: 
 <DM6PR20MB25405CB5ADB273ADF20DC449BB8A0@DM6PR20MB2540.namprd20.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-bromium-msgid: 6c1a46f2-ee72-44d2-b05a-4eec34c72f40
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=melinkcorp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 391f3843-2a8c-4b8e-285c-08d8063ebcb2
x-ms-traffictypediagnostic: DM6PR20MB3283:
x-microsoft-antispam-prvs: 
 <DM6PR20MB328364C620C625F808C6CD7CBB8A0@DM6PR20MB3283.namprd20.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0421BF7135
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 RWAivO3KwykDNPeT00qkVfoBpZGah+NC69T16zntMXYGDcVaFt3cxKgEfLK0xV1htvf8J5ztKRgikjG+nwPBGmEpmfqD7zGR4OG0fOqxlNVLPUGjUHg0JcOMOJAM+Xd/4K9YYXEKrLJFZVOb2Dn8p0/jKRBbHz0b1b926r5Sbe5tSxHdqpvXXwzfoI8pP8wolQxNlyevKImk85jjorhyJB8yzsODfRKNzrwm/MoQ54u1nvk30G0XOVCne+9xYMeDL4+9tm24ah/t+Lypz2r6BW+MJoP0MFoPdxw6ZSCdvh80d1MOgRXyiz1JfOxE6C/s
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR20MB2540.namprd20.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(366004)(376002)(39840400004)(396003)(346002)(136003)(6506007)(26005)(83380400001)(86362001)(6916009)(7696005)(508600001)(33656002)(9686003)(55016002)(316002)(5660300002)(76116006)(8676002)(66946007)(66556008)(8936002)(66446008)(66476007)(64756008)(186003)(2906002)(52536014)(71200400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 ouVEuiYftaFg9TU4UoHPdwocIkEbBldVmqgz33ii5f2IAPcGMb3ZWJK3ZvBt+0x/WU/HUCoMUmC4aXqiJFIiPSDgIlsx02eVqh9y+rf/TKw40JCC3if3mlgJRXfkzmDcWpoBp9X+3ZAWK7QejVnSEZWITuNj1XhqJ/LC94R676Xs7/+AtNW7DqloGGt59p5sjEDsdymBM2icyRKKP4z+dzmSZhIPmNwK7bDcwXh8YTJO/Xhxg2XK26umTVPB2dOcrDCvhzC3bRbb9NkEvEVDKdwqYC/SnP+Zg2Avp43pWvBLqrx0RXmo48M6Hj5C3wVxZD5GMb/ZmwxktN11C26OOoaRzesNi0cMXqmLpdwVrg55vt89lVILnE9ZpmpvbHx4bwoutFYAMKLpuQ7mabXmI0rRu0wUpvjwJeTP9SflHklUpa9fkQcdKWDJ0LJIo1dzIefNhkcevTeBHys5CYNSmLTAFagxGGuH8lTdcD1wY8A=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 391f3843-2a8c-4b8e-285c-08d8063ebcb2
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2020 15:16:19.5047
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 47a7DwGGqTd3dZqwGgrXYISwpu4vChxgv81+FzzvjH1jCiiNSqTdsf7BPGt6SF0Gc+XhDMFoG/LSEHnnCXlPGA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR20MB3283
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

I have a AT91SAM9G25 system that has been idle for a couple years (running =
morty, yocto version 2.2.1) and I am working on updating to the latest Yoct=
o production branch.  Before I get there, I'm trying to confirm the old set=
up and I'm having problems with remote debugging.  I know there have been c=
hanges since yocto version 2.7 for debugging support, so I want to make sur=
e I can get the old setup to work first prior to changing everything.  I'm =
looking for assistance in tracking down my debug issues.

My stable production image is based off of core-image-minimal, with a few a=
dditional packages for our proprietary applications (proprietary applicatio=
ns are written in C).  I also have a development image, based off of our pr=
oduction image, with the following additions:

IMAGE_FEATURES +=3D "package-management dev-pkgs eclipse-debug allow-empty-=
password empty-root-password"

IMAGE_INSTALL +=3D " \
    #same additional packages as production image  \
    #"-dbg" version of proprietary applications \                          =
    =20
    gdbserver \
"
# Strip python from the image to reduce the image size
PACKAGE_EXCLUDE =3D "python"

I have the Eclipse Yocto plugin installed and it is setup to use the SDK th=
at I have built based on the development image.  I've confirmed that I can =
start a debug session on one of our proprietary applications.  I can set br=
eakpoints and run the debugger.  However, the debugger always stops at the =
first call to uuid_compare with a  SIGSEGV.  The last line in the call stac=
k states "<symbol is not available> 0x00000000".  From my understanding, th=
e stack pointer is getting set to NULL when uuid_compare is getting called.=
  If I stop the debugger and just run the application on the hardware, the =
application runs without errors.  I have confirmed with syslog messages tha=
t I do not have the same NULL stack pointer issue when I run the applicatio=
n outside of the debugger.

Any suggestions on where to start looking?  I don't see any obvious possibl=
e causes and I don't know where to start looking for the problem.

Thanks,
Bryan

