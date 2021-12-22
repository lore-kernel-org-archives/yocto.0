Return-Path: <shmuel.h@siklu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951E8C433F5
	for <webhook@archiver.kernel.org>; Wed, 22 Dec 2021 17:54:22 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.106])
 by mx.groups.io with SMTP id smtpd.web09.22482.1640195659493809091
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Dec 2021 09:54:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siklu.com header.s=selector1 header.b=TeUwuCAE;
 spf=pass (domain: siklu.com, ip: 40.107.21.106, mailfrom: shmuel.h@siklu.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HtgObDDLWwl8hJ+bAOB2kDq/xe78pgnRDOGoLxeRjEor/Q6IbHHCkR80OhhI/qLAA6IeI6sgMoqdJo1cSmQBl0zbjE4GxHQgEWZXtf/krPjJ0xbXaTO2bQ3c4g8rvWAAVxKiVv7Nv4xFsLbAg+JORUZJykHqoUZ10m/AHgo0akBol9nO/NKhhEOonKpFjUN7zIVihSNCXqKNfGVXUABR4Pk2GEibesOVpSuR5ckYNY3H73DmHj2HEGjrJ79gD1sMznqK6+btvxeO4YyRN5gctWdI1MVQAX/k/w/Sr8gORJTwwbk1olx/gNCmeN9+5T2h7Gx6BLvAG5ZcBhbj6oCNnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MlxQIIsxcr9vG3hiN5whPjEmXeMRViyZiOhjG2WSWqc=;
 b=C7OgM+VxPve+lCpUQiuioW995wkIA9gvVymj+XlRIQzOV4ZC3NqgUQjpC72iXX7tRdBfhHEMhx3CFb9h/lkhSiHS6I+l0a6DMqRzez7qkbBntRNMgnDLJ13L4kAKqzoEvmODOlskgeSqaa7TnvbvNdXUyF3/2thS70ErWY7eBR3h7eMfj4siD4yvtC0omBkZMackRamScKoOIWl5WNImz+LC7Vu+F7VZdh3LhixOZ9W5EawbnnTkD24RQ+OWWuMRDnwpxizgV9aqTH4ytrBRPbSXgZu2oyEJroe0+xF3XZzDUQKKM94tqSCtOFMJMMjbb72i5Zg+BcRcuJz1eyYwyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siklu.com; dmarc=pass action=none header.from=siklu.com;
 dkim=pass header.d=siklu.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siklu.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MlxQIIsxcr9vG3hiN5whPjEmXeMRViyZiOhjG2WSWqc=;
 b=TeUwuCAEEc0mJmRPwgFH6it2IByN+e3HM1Mmm7R0otVyw4YUchOueXvctAuYNzt0SlPTK8HtMf47PxEYztc35OFcRyK3igYftUcCJwYn/oHUhkWk7mYg9SN3andlzAitI3pKk6akTdK/9RUUBwTTtZ4CSIsZk71PD/iJUzFdwRA=
Received: from VI1PR0102MB3117.eurprd01.prod.exchangelabs.com
 (2603:10a6:803:5::17) by VI1PR01MB6829.eurprd01.prod.exchangelabs.com
 (2603:10a6:800:192::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4823.18; Wed, 22 Dec
 2021 17:54:15 +0000
Received: from VI1PR0102MB3117.eurprd01.prod.exchangelabs.com
 ([fe80::2dfa:27a7:4c5b:df37]) by
 VI1PR0102MB3117.eurprd01.prod.exchangelabs.com
 ([fe80::2dfa:27a7:4c5b:df37%2]) with mapi id 15.20.4801.023; Wed, 22 Dec 2021
 17:54:15 +0000
From: Shmuel Hazan <shmuel.h@siklu.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Bitbake: checksums handling for local directories  
Thread-Topic: Bitbake: checksums handling for local directories  
Thread-Index: AQHX91srIdJJ9wX5skyPPvk/8kRs+Q==
Date: Wed, 22 Dec 2021 17:54:15 +0000
Message-ID: 
 <VI1PR0102MB3117F544CA1EB835757B4A91917D9@VI1PR0102MB3117.eurprd01.prod.exchangelabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 36ff4887-824d-e811-ab91-d0a321efe5e5
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siklu.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 552f98f8-24c1-4f29-e22f-08d9c57411c2
x-ms-traffictypediagnostic: VI1PR01MB6829:EE_
x-microsoft-antispam-prvs: 
 <VI1PR01MB68291B0C7A88BEC80D22C8C2917D9@VI1PR01MB6829.eurprd01.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 im2Vg/yAvfgorC4X1B3uZDKvyU1+lzsVwyfRLKqP5pwIUtPFOB2PwG/HRqxT4XDRBZ8do4qEoq7/fDIsP7Dx032a6RSyJx7lJDeKbhs6Tzh1qw4hmntXD2UBXAwnTipvyNPPgY0SWEX/fDn3jHocDof86x9MAEfg2TtMK/O2bbL/v9qrLbqu+pEbDursFvG7GGCxCJnKM8andaTnEZTOAY8akbKLNyDe/eLYMhRwJLWG9iqiwdS3aSR/vgcLz6Hbj4ciOYBCIqIptrwqBYOXYFnhIZdFabYoyrs/jf84BNaetjbI3ySJRWhRvFuz1oMZqqXdR+ATDcNYTtyH5S6JC8J7V/YBN4DFQxIbqGEsPv8PllfJiJENvilVM/eUiMOSuG1q0lXljUblxWZSnQYMeZZWNS3Gy6lYmUuLUHio+O0iJkwj71HnVYtx9a2zbHYA/aX0EFSpJRTGdvGY9ULabT1WRZmGudKTAVxxbQvTzW9eAm5jELfMSyVDSUVdipd5NGhDrApcYOeiqIqZ+NsRPcWIn6HeMBUHBky0mCHVIFO04EQaMOUdFUg2Vkr9/NKVlSM0fOlDNMk0/qTwWo900T0xUMkCRX70WsnJLk+NvhT16xekVAfZqdt2IUhGvnO6vTGC4Xym6nOiZuBsEMUwpiNbO10jtQ46mZ/copo/F2Wh5JG/f22z1t6W2YglS+szLCui/GpYEdrFtaa4N0Sphw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR0102MB3117.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(33656002)(5660300002)(2906002)(6916009)(91956017)(86362001)(83380400001)(6506007)(26005)(316002)(186003)(8676002)(7696005)(55016003)(8936002)(64756008)(66556008)(66476007)(66446008)(66946007)(71200400001)(52536014)(76116006)(9686003)(122000001)(38070700005)(4744005)(38100700002)(508600001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?T79kwyFiUyJ+N3WLJc9o+I9SByINdQZzFktzCvoXpMaVrRh5WtVPp9nlbz?=
 =?iso-8859-1?Q?k2c4gnTIL7npe2BEXdvQ3c4ECj+EAERyzdDNdtrY+7VAoRmYKxvBTHZEdz?=
 =?iso-8859-1?Q?iT4ahf79alXuC28QYOhinfq2JbUX7fv0UwYsHLJHfx6iDkZPias+91Z+GT?=
 =?iso-8859-1?Q?4w5b/Iy9kN60hYMMrEScfeeDhnunAeS9LU0u7aBtMTUux63Or26OJJKdnK?=
 =?iso-8859-1?Q?Fg3ryn4oVtNIjZ3iOqD3/BQD+5T+NSe1l7koaZHo0iDJOvcRsqD0U/FSuV?=
 =?iso-8859-1?Q?3yRD3v/lZQMHvfoq17RWk1ZvXD3zoYwNT/QN7qVu/3skyAXlHIs6IbkDBc?=
 =?iso-8859-1?Q?UKQOKAoKq6HL/foLcoE1W0tdMMgwxhiWuU8t63K29Jb454oES4Fh8CWM4V?=
 =?iso-8859-1?Q?qMpzuyWlmGNkaT3HNgcgPgbad4pnGLmGw1GtuKbFx4RPMm7ndyy6Fopcc6?=
 =?iso-8859-1?Q?G4uD7wyMf8xdz7N8rdmTcwgRxPOUElffLWTMo5BZmeL5Y/ImbNW+bRF6/D?=
 =?iso-8859-1?Q?qrntfD+XrAFjk95PpnvakBcLdjE7HlvB/4YIYLIjMI+TQH1JD5+5G8EZIR?=
 =?iso-8859-1?Q?FAWNftUgjNzocY2BJNWNUMsDadE7UJzhP3M8xabBBy8LPt0AWxk8PRRXe0?=
 =?iso-8859-1?Q?+AYnBak8yPQd/6HgNnt4/pghEY2kEexzDLFLAxcKopLxcrsYPsUkZ1Qg3h?=
 =?iso-8859-1?Q?Cnq1nJiE+dXQr6e0/hXjw4AeKbMT7ErhdcWZ9B3qJAnIAFn71wGS1dzCUJ?=
 =?iso-8859-1?Q?j5ryCmVFjEILT1U17WkL9SWOWMoTi69FIqLFFvrH+xi3lJNwDSLRSDXM/E?=
 =?iso-8859-1?Q?vjU2nEraI9P3mNGXOtUIqfuV2WNsYIdA9o/qTUtimmVGO2rEiD9qzKNNvE?=
 =?iso-8859-1?Q?FEaPYEy7fqxSD4lXJY1NyaLL4UOIOXV7qu+HnfmzNIzMDrLt38GdrTLqvx?=
 =?iso-8859-1?Q?i0StSIOFxddR7u1FN/b70T2upxp/1f3u2shZSWozCTGm06lkYfHJRQAc3O?=
 =?iso-8859-1?Q?WtudDGmbbhWvXuDfFzZr4bOElCzUDxs25CNq90ucpqRn+JocyyV82EJoo2?=
 =?iso-8859-1?Q?OPH/4jY6dEEuP7jA8s9Ywgp4MGmRwiZWN9xt0gt4JllFQe54TaUYcZF8I+?=
 =?iso-8859-1?Q?XAJOR1g7msfnhOBRvJjsCwKj1j1PN6w6eyHQrax9xHjPd2Jp/cmYjaknRH?=
 =?iso-8859-1?Q?OQo8S4hH21IXzeFrU4XxgYoRhzW0Fj8l7Dmq1cydWAgE0salhQpsL+wrUA?=
 =?iso-8859-1?Q?mOtggY0TM4TfvkxBGSGvByfH2udIxROUJziIbUQSZ2itreRicX2Hklbm0M?=
 =?iso-8859-1?Q?v16ptYEzEUJyw8Ds3Xnf/LRH775Hg3ZOXflmCpRx2cC7i61LMRATVLF1k6?=
 =?iso-8859-1?Q?gfMoMHD771kszRmINcXV11vRFbx2gkRW5/CdWspm1r1u3cnmWOl0+vPfx+?=
 =?iso-8859-1?Q?FMQJfA6+DGsL7ETrnV9vSUdcRYY0NkJ+8EpoxolCGfi8JaqjA+yDz0Rq+E?=
 =?iso-8859-1?Q?4YSa859Wo+tQC61ky4SZb8+Tvqb6JFiNSvcVEgBumHTrEgaDFjlgt1DPCT?=
 =?iso-8859-1?Q?gAdU4LQvWNOR3z+AObbmCNeg5gqeMtEiUjA2HpQGXoVXfJ0ux13Il7Rl82?=
 =?iso-8859-1?Q?kxRe1lGa9umUojO3KJwZZOdmrO5QJpRqW/FbPGxUOawdls9SIaBMq1fw?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siklu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: 
 VI1PR0102MB3117.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 552f98f8-24c1-4f29-e22f-08d9c57411c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Dec 2021 17:54:15.3561
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5841c751-3c9b-43ec-9fa0-b99dbfc9c988
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 dLkHHfjeAHCwGIzyKZbjhNi0D3ctFB+YTvFgKC3c/eqJUvI+igqGRj4/TuDBhjuLPTcdDPuq23RSwes7/FVsOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR01MB6829
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Dec 2021 17:54:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55643

Hi everyone,=0A=
=0A=
I noticed a strange behavior of bitbake, and I am not sure whether it is a =
bug:=0A=
=0A=
Let say that I have a simple recipe that takes the directory `THISDIR/files=
/A` and install all the files inside of it:=0A=
=0A=
...=0A=
SRC_URI =3D "file://A/"=A0=0A=
S =3D "${WORKDIR}/A"=0A=
do_install() {=0A=
=A0 =A0 install -m 644 ${S}/* ${D}=0A=
}=0A=
...=0A=
=0A=
Let say that I have one file called "my_file" inside of that directory. =0A=
=0A=
It will work great, and I will get a package with "/myfile" -- until I will=
 rename a file to "/myfile1" in the directory. Since the file content staye=
d the same, do_fetch won't be triggered and as a result, the package will s=
tay the same and have "/myfile". =0A=
=0A=
The only proper way to workaround it was to mark this recipe's do_fetch as =
nostamp:=0A=
=0A=
do_fetch[nostamp] =3D "1" =0A=
=0A=
I am currently working with bitbake 1.46.0. =0A=
=0A=
Questions:=0A=
1. Is this a known issue?=0A=
2. I could not find any reference to a similar issue / a recent change that=
 could have caused the issue, am I doing something wrong here?=0A=
=0A=
Thanks,=0A=
Shmuel.  =0A=
=0A=

