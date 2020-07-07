Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.123])
 by mx.groups.io with SMTP id smtpd.web11.11607.1594107971397064359
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jul 2020 00:46:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@codewrights.onmicrosoft.com header.s=selector2-codewrights-onmicrosoft-com header.b=aT1fqjCx;
 spf=permerror, err=syntax error for token:  (domain: codewrights.de, ip: 40.107.20.123, mailfrom: hu.schlieben@codewrights.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dYqPA6XhfoEhlfV7MMiSnw85bcKeHaj3X7OCoX+AaGs4O3grofvroaMmfytrto88QjnK9osSymyswvZi99mQ0BfUeUlllU9pAQTHDQuQc/z0DLm/vR3h3IppV5sb3rgCSDX4dJu2KcGsym7GRdeUkJ0CBYuMVFNjY1Iza0xc0DNp6zOPm298aI2CPEiDbCWphI/y5guCDuLHq9o6HYqiC+n2oMKlCOLLrReoPv8eKUTEutfxAYWmG888LYp882qXb9bW5owkc1iTjNCzwAOcR4puG9kq9OsVLk4aJPHHGt0IoQ34NMG04Y06lMMKeND6M80ID3C+FP5xXXk+OfRuUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CzAIb5R2yyAV4f1luVtn7QCQ+prC/jeQTT6TGJ+rL3s=;
 b=eTWLSw6pUlwzBDF3HgiyxK4cKBlLxlhLD1mNv6p37hdrvKrWqyFnauchEA0YVRdBI33KG4WqJtGg1jsq9cfitLmC+awbQsgak1coO2v9u9qrzANooysfU06FhCuZhIPPc1Y8XR15cCh4w0nRC4a5UU6QWpQGOlDh7GDzTrmhtiu1LE1/aHu+KwK5R6mgeWUi66P/qLdDw2H3n7rYHlbo2CcAHgsERfeE5mxD0RBQq6qBcG+ed6B+4OS3G2Sq0S6VvZlD5geZKsoQyGFOIzQxksmKdX9p+gvpJUXCAgqIWVTyx+aiXXLlCmMZEBHRGOqffg7ecSoo67NORG7ILK7lYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=codewrights.de; dmarc=pass action=none
 header.from=codewrights.de; dkim=pass header.d=codewrights.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codewrights.onmicrosoft.com; s=selector2-codewrights-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CzAIb5R2yyAV4f1luVtn7QCQ+prC/jeQTT6TGJ+rL3s=;
 b=aT1fqjCxzZqh24d+lLAN3AFhTl9J/scSxhYJzn8A7fhbAnnCogvLESou4IHvbiK/Tq+ga9e5YpXVt48PfXl6t9V7YFtSrOBzYpeN+0Qc+0qowBLercy/AVrI4miny81Igq3iP79rrlv7zl71C0NRYXlrOyalvtmbZ8UFawtxn14=
Received: from AM0PR03MB3714.eurprd03.prod.outlook.com (2603:10a6:208:44::25)
 by AM0PR03MB5012.eurprd03.prod.outlook.com (2603:10a6:208:106::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.20; Tue, 7 Jul
 2020 07:46:09 +0000
Received: from AM0PR03MB3714.eurprd03.prod.outlook.com
 ([fe80::a135:ccbf:a45b:d11b]) by AM0PR03MB3714.eurprd03.prod.outlook.com
 ([fe80::a135:ccbf:a45b:d11b%7]) with mapi id 15.20.3153.029; Tue, 7 Jul 2020
 07:46:09 +0000
From: "Hans-Ulrich Schlieben" <hu.schlieben@codewrights.de>
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto howto use deltask
Thread-Topic: [yocto] #yocto howto use deltask
Thread-Index: AQHWU4SjJD6GABzzLUuthoqdmZ/6MKj6cEkAgAFHT0A=
Date: Tue, 7 Jul 2020 07:46:08 +0000
Message-ID: 
 <AM0PR03MB371490AE38473CD9A2A5D64BFE660@AM0PR03MB3714.eurprd03.prod.outlook.com>
References: <qZOx.1594033211826466725.wfsG@lists.yoctoproject.org>
 <20200706115036.2uervyzueqjggdpc@qschulz>
In-Reply-To: <20200706115036.2uervyzueqjggdpc@qschulz>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: streamunlimited.com; dkim=none (message not signed)
 header.d=none;streamunlimited.com; dmarc=none action=none
 header.from=codewrights.de;
x-originating-ip: [46.142.64.132]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7fd50c8c-786c-4333-6599-08d82249d00a
x-ms-traffictypediagnostic: AM0PR03MB5012:
x-microsoft-antispam-prvs: 
 <AM0PR03MB501288528076BF8EF0140FDEFE660@AM0PR03MB5012.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 SCiLelMFAZATq7lyycm7mFlpO7ev8txJP7LXRxUDukXBCcMZqnu2CCHV+hHk2NrbkGj46Mh2odxh5KB9GpKLij/BCjB1U1ugh+ERkiucKz010LOz7ZVi+Y+PdmldoqmvKXuJ9RsTtVgVSuWgdJoQ4uyZCHQMmVNfrxpRG3/BDNhKcig6dFy5frDZLx6pT30vLEMM6lSQG9FTBUarg8mbRe6hcMd14HCj2p4J6BpiatAFYNj/FcCMEwL9za1CtGo+jsjRupnsSS+hWfVQKvBwPDk/Zv3N98qENeo3CQmLoIheQTIpRdeyCrQTaJf+D8+V
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR03MB3714.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(376002)(136003)(346002)(366004)(39830400003)(396003)(8936002)(5660300002)(8676002)(86362001)(33656002)(71200400001)(7696005)(52536014)(6916009)(316002)(4326008)(186003)(66476007)(2906002)(64756008)(66446008)(66946007)(66556008)(508600001)(26005)(6506007)(76116006)(55016002)(9686003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 rMNHJ4ilhdQ8c+qvzXF0UNkK2sYfDpEsl8aaqLRU0feLM6vrkqkQkbeaY2Xe1TKTlg/hR3Zys7bu8MIhJs3/EtoK4X2xRtU/339T3CIiu4GklP2iQWP9C0o7YnzfCxQbRCwqpyYLF/cfzI/nycqJCHVsTYVxPM8sgzPP5hd75+fhgMsowv6vDRT7bAwSXkx/jX84VtrcHUUChSiihkfHrTUS9HPT5mxPTc8sJkaCrufK7l4xtFDygfLEH7p49wjx9fNitIYBFkCcZjGt5TlEVXQn21XY2EL5To+UoqnecHSXgqM1aSBsIpINPUZmdbG5pzHMi4St85Y1arBPkRK3OsRyxhcb6RqIxXq9MdGAX4QI+DpVgUs9OR5e3DquQjBIIC4RZAsq3kAzCjcvcJ6LI81SbE/y/0EMFEfno1CC/AM6/ktSNDX42p96uUy6PN94vkDtqT9sJw7tEpNucJwuAAFmo+6L7OY8RK0hJCIQ3pxF4l7Ya9lH+NkKZynhImc0
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: codewrights.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR03MB3714.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7fd50c8c-786c-4333-6599-08d82249d00a
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2020 07:46:09.0215
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0974af9b-352b-437c-b606-e9f242c0c227
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7F4WB4ZKcN5YRiaUmE1inb1poJABAANqGRLvlEkg4kOFkSM0FwHSvaZ6yTuNMMmG3HGO87DEgZ60fsiO3Whl0zXzmyfqqcH4lQAH9ocfR9g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR03MB5012
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Quentin,

thank you, the empty variant "removes" the task and the read-only-rootfs ch=
eck works:
pkg_postinst_ontarget_${PN}() {
}

There are some issues which let me into the wrong direction. First I commen=
ted out the former code in the bbappend file. Apparmor builds, but the read=
-only-rootfs check fails:
pkg_postinst_ontarget_${PN} () {
#if [ ! -d /etc/apparmor.d/cache ] ; then
#    mkdir /etc/apparmor.d/cache
#fi
}

The same result you get with an empty line in the task:
pkg_postinst_ontarget_${PN}() {

}

For the following cases you get a parser errors:
pkg_postinst_ontarget_${PN}() {
 }
pkg_postinst_ontarget_${PN}() { }
pkg_postinst_ontarget_${PN}() {}

Thank you and best regards

hu


-----Urspr=FCngliche Nachricht-----
Von: Quentin Schulz <quentin.schulz@streamunlimited.com>=20
Gesendet: Monday, 6 July 2020 13:51
An: Hans-Ulrich Schlieben <hu.schlieben@codewrights.de>
Cc: yocto@lists.yoctoproject.org
Betreff: Re: [yocto] #yocto howto use deltask

Hi,

On Mon, Jul 06, 2020 at 04:00:11AM -0700, Hans-Ulrich Schlieben wrote:
> Hi,
>=20
> my image build fails with:
> ERROR: ims-image-fieldgate-1.0-r0 do_rootfs: The following packages=20
> could not be configured offline and rootfs is read-only: ['apparmor']
>=20
> The image build succeeds if i remove the task pkg_postinst_ontarget_${PN}=
 from apparmor_2.13.3.bb.
>=20
> I tried to use deltask in my apparmor_2.13.3.bbappend with different sett=
ings:
> deltask postinst_ontarget
> deltask postinst
> deltask pkg_postinst
> deltask pkg_postinst_ontarget_
> deltask pkg_postinst_ontarget_apparmor deltask=20
> pkg_postinst_ontarget_apparmor_2
>=20
> and
>=20
> postinst_ontarget[noexec] =3D "1"
> postinst[noexec] =3D "1"
> pkg_postinst[noexec] =3D "1"
> pkg_postinst_ontarget_[noexec] =3D "1"
> pkg_postinst_ontarget_apparmor[noexec] =3D "1"
> pkg_postinst_ontarget_apparmor_2[noexec] =3D "1"
>=20

What about:

pkg_postinst_ontarget_${PN}() {
	:
}

in your bbappend? This should effectively override the task from a bbappend=
 (except if there are _append for the task).

Can't comment on this being a good solution to your problem but that should=
 work to remove the content of pkg_postinst_ontarget.

Quentin
