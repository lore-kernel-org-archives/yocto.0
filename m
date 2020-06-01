Received: from NAM10-DM6-obe.outbound.protection.outlook.com (NAM10-DM6-obe.outbound.protection.outlook.com [40.107.93.137])
 by mx.groups.io with SMTP id smtpd.web10.47447.1591044361975090779
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Jun 2020 13:46:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@melink.onmicrosoft.com header.s=selector2-melink-onmicrosoft-com header.b=wM/HAu1t;
 spf=pass (domain: melinkcorp.com, ip: 40.107.93.137, mailfrom: bevenson@melinkcorp.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ceNrBx4KHiyqv+uFlydBfmtjhF5D+nKMnVJSCzUuOXYE3WLaMh2MzU1ZPXIHUT3Xq5V5zODEnJYv+qAGaItcMJFV8RrtXvilIznNJdhC0NVdCVr1qU1Gvw89EFD43GicPTJmen0/DDNqUxsur/N7In0oHLqjZfRv0nGlbnjbndshXI4VS7ui7/DAU8fzbPj3U2pX/tZjfpxRUmQkerJaGJRWeMTdaH7RK5JpGGat6nNJLJ/WH5bsFKieZSJhakBq16AAtW/Cttkvy5Unh+PAxLURaNi8Z1LfKvDZxRVL1g0P7toYcH3ThKEFDmTA7X9PQS0HiN0bNqe2sj1SesFJfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iF8jKcnP2l/D3YvSbmTZ+w6RL6eeoWJQRVBgXJmDw0M=;
 b=kn+JPXIP+ky36f/99w08sEhAF5RxWVE6zElgWdKkdRi09ziJdgdDPfCOfK8s9g5peRVlflos1ZpBmAtUkYKSV9gUqb0OZRJmpsxkrTn5rrqbhzU7ajrmHiH1UMLWSfF1DDqAGBJ7iWbVGSK8vNQg57xNRgZHkraXyFrzq+RaF7QwUCxQH+RQKKroC+IUteb8UWfqKQzat9omRHqsvRaIoaTvuNC5nN20jKAhYJgnBq536683h1/CcHzr9FJ4gs66T4nX4c1WCymxIVEDNH19szpLCNecdwb2yb6+nDMZ75bbBzQIKUfzRr/cy61zhD8xKpXvTfp01LHGSIce2wbslw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=melinkcorp.com; dmarc=pass action=none
 header.from=melinkcorp.com; dkim=pass header.d=melinkcorp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Melink.onmicrosoft.com; s=selector2-Melink-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iF8jKcnP2l/D3YvSbmTZ+w6RL6eeoWJQRVBgXJmDw0M=;
 b=wM/HAu1tbU18K5c+K+I5Li4pKfTpHcdmthi8yLDb2pAkP3ajcK+6lkIp78a5SM8Irsots+IlWSj9UZgZae2uLFRgLXvIDdx4389vsv9felZVI6dS/zdTjDObVvxf9vjYVr5coCnFPcYMg++YXCJmuI1vxzvC3qsYhXPzjfQBbXJUIk84o9oskioSL7hnkewg0yO8I6/bGdxr+QNRgErl/A+0itX28IrPIcsmXcMQmWC0PJodCBeS6evrMHNrQXcgURf8sn0wbqsC0v3KGeyQ2pAtLUh5x/Uulu4NQVuGfI53U9Se1733dInH7y7raj7+dwWObnuTg8KQX7oGvX7HaQ==
Received: from DM6PR20MB2540.namprd20.prod.outlook.com (2603:10b6:5:1ac::13)
 by DM6PR20MB2699.namprd20.prod.outlook.com (2603:10b6:5:13e::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Mon, 1 Jun
 2020 20:46:00 +0000
Received: from DM6PR20MB2540.namprd20.prod.outlook.com
 ([fe80::2051:ee3e:dbd0:9337]) by DM6PR20MB2540.namprd20.prod.outlook.com
 ([fe80::2051:ee3e:dbd0:9337%5]) with mapi id 15.20.3045.024; Mon, 1 Jun 2020
 20:46:00 +0000
From: "Bryan Evenson" <bevenson@melinkcorp.com>
To: Bryan Evenson <bevenson@melinkcorp.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: Eclipse GDB setup issues; can't determine cause for SIGSEGV
Thread-Topic: Eclipse GDB setup issues; can't determine cause for SIGSEGV
Thread-Index: AdY4IU1c+KqgRe3YQl6zQlxTh54n9AAMxTng
Date: Mon, 1 Jun 2020 20:46:00 +0000
Message-ID: 
 <DM6PR20MB254052EA49DE559146F5A0F2BB8A0@DM6PR20MB2540.namprd20.prod.outlook.com>
References: <1614746D82793AEE.8494@lists.yoctoproject.org>
In-Reply-To: <1614746D82793AEE.8494@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-bromium-msgid: 70ab91c2-2468-4e01-b69a-895b4c5028c9
authentication-results: melinkcorp.com; dkim=none (message not signed)
 header.d=none;melinkcorp.com; dmarc=none action=none
 header.from=melinkcorp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0deb89d6-de27-4433-e1c9-08d8066ccb01
x-ms-traffictypediagnostic: DM6PR20MB2699:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: 
 <DM6PR20MB2699B9BD1FD05D1EF5D720E6BB8A0@DM6PR20MB2699.namprd20.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0421BF7135
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 GaqNEaWXoIuIPI5WQty+SqTLaQLybc+S3+beBnA/PV4c/MDzZy8DMjDbfZ4Vn+PGCGxYWbuDYShNavmNy0PNPPn3u6je8BoIA/ZoU7abLQG4iRK9eM6n1UeOm5SJWnpwJy5Q3Km1IHD5TAyAYqtHKF0d0yjXrAgsyinY450ZxXB3izYW1q2CCTBSesZReOwa9PgVc+g4XKccV0drs+tAUqcoLv3eGcHs6FkQvCpj6lNsPFt2UAX7kJdH2O3swEkSTL201cDgqJITETceYxa0ApGJROc8ifKCyhTWs5IrFpOF0IKyaNJJhzQ6aGPsOtXKdCuBxTfBK2ef/xety0uGvw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR20MB2540.namprd20.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(376002)(136003)(346002)(396003)(366004)(39840400004)(66446008)(66476007)(64756008)(66556008)(76116006)(316002)(110136005)(478600001)(66946007)(2906002)(52536014)(6506007)(83380400001)(53546011)(5660300002)(26005)(8676002)(186003)(9686003)(86362001)(7696005)(33656002)(71200400001)(55016002)(8936002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 CDo12MiZrN3DvhFU6C/ULuAHskyKrOXGYUMFDXJBtyBy76ahjh/nNIEbiKPA49lHEq/mm8A6OsaaKHfr9Ig8v+j7bXCnW5jixJj1fpW2kEBm5/EP9ThwHddGrrhQy0LLE7mSHu+mKebLcPXxCd1pOhPNsIrUlGRU/R2MX6KnQCosq3+GQMYBERYyOUxnVBifoqGlSVTJZLhOHxlnCWc8aRMD/tOnl2mkb0owh326sZmhwCUdvfSVSq+AU3QZkUdiV7whXOGPXzmVNFlzcwv/qdtdUEmoMCw1hwhOJSaI4gM0L+xOg/6SdkQeItVtbehQoQoWcP0ziKEy8bbpH/x+UQQvaOjR5EMlCmcaZshvWPkvPIIz5WxOQkopvPWSDfMUeewo4FofSxEYKtGSZeke9qBqtBjazsLodT+8sJzEkuwFNyVtsiZCFGpJOtypyWB+Ss32XJISK5w28LTVkjlbh1QirPF9rm34zmjnRQNf24w=
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0deb89d6-de27-4433-e1c9-08d8066ccb01
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2020 20:46:00.3398
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tjIGj/HDbuz+U82ILNBabxgIzPHu0pNPtM9Eud/aHGaHvhRieg7XqcEesxgyeofgvUHL/Lu3815bSvnULguGLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR20MB2699
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> Behalf Of Bryan Evenson via lists.yoctoproject.org
> Sent: Monday, June 1, 2020 11:16 AM
> To: yocto@lists.yoctoproject.org
> Subject: [yocto] Eclipse GDB setup issues; can't determine cause for SIGS=
EGV
>=20
> All,
>=20
> I have a AT91SAM9G25 system that has been idle for a couple years (runnin=
g
> morty, yocto version 2.2.1) and I am working on updating to the latest Yo=
cto
> production branch.  Before I get there, I'm trying to confirm the old set=
up
> and I'm having problems with remote debugging.  I know there have been
> changes since yocto version 2.7 for debugging support, so I want to make
> sure I can get the old setup to work first prior to changing everything. =
 I'm
> looking for assistance in tracking down my debug issues.
>=20
> My stable production image is based off of core-image-minimal, with a few
> additional packages for our proprietary applications (proprietary applica=
tions
> are written in C).  I also have a development image, based off of our
> production image, with the following additions:
>=20
> IMAGE_FEATURES +=3D "package-management dev-pkgs eclipse-debug allow-
> empty-password empty-root-password"
>=20
> IMAGE_INSTALL +=3D " \
>     #same additional packages as production image  \
>     #"-dbg" version of proprietary applications \
>     gdbserver \
> "
> # Strip python from the image to reduce the image size
> PACKAGE_EXCLUDE =3D "python"
>=20
> I have the Eclipse Yocto plugin installed and it is setup to use the SDK =
that I
> have built based on the development image.  I've confirmed that I can sta=
rt a
> debug session on one of our proprietary applications.  I can set breakpoi=
nts
> and run the debugger.  However, the debugger always stops at the first ca=
ll
> to uuid_compare with a  SIGSEGV.  The last line in the call stack states
> "<symbol is not available> 0x00000000".  From my understanding, the stack
> pointer is getting set to NULL when uuid_compare is getting called.  If I=
 stop
> the debugger and just run the application on the hardware, the applicatio=
n
> runs without errors.  I have confirmed with syslog messages that I do not
> have the same NULL stack pointer issue when I run the application outside=
 of
> the debugger.
>=20
> Any suggestions on where to start looking?  I don't see any obvious possi=
ble
> causes and I don't know where to start looking for the problem.
>=20

On a whim, I changed in my code:
    if(uuid_compare(uuid1, uuid2) =3D=3D 0)

To:
    If(memcmp(uuid1, uuid2, 16) =3D=3D 0)

After this change the problematic line of code worked just fine.  The debug=
ger worked fine until I got to the next spot in my code that called uuid_co=
mpare.  At the next call to uuid_compare I got the same SIGSEGV error I had=
 before.  Something is clearly a problem with calling uuid_compare.  Howeve=
r, I'm using several other functions from the uuid library (uuid_is_null, u=
uid_parse, uuid_unparse for a few) and none of them are causing problems.  =
I don't think it's a problem with the input parameters because I'm passing =
the same UUIDs to memcomp as I did to uuid_compare.  Has anyone ever seen o=
nly one function from a library cause problems like this?

> Thanks,
> Bryan

