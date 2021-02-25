Received: from NAM11-DM6-obe.outbound.protection.outlook.com (NAM11-DM6-obe.outbound.protection.outlook.com [40.107.223.132])
 by mx.groups.io with SMTP id smtpd.web08.6648.1614224245767830723
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Feb 2021 19:37:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@honeywell.com header.s=selector1 header.b=J9hKaVu8;
 spf=pass (domain: honeywell.com, ip: 40.107.223.132, mailfrom: sharmila.d@honeywell.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HeQmDJhzg8HgckePlCyzg25wZsJ/o1FjEYSqUVAf6PJQgpa4KqA5/AXN5uQKNy27HcP01K304F+UN++Xkwo4qaBqm4uYiosBZohLi3ujnNMoURyrXlVnookR6IqRL6dkuJSHiXbrzvamnqjrBgmEgGqBmml1rudpnpJ55jZl0peoHH9ekUqHYLYHtH26XF8oIXenlByk0m4zOyN/3DJ13tURCKmJY1iDynuBm7O2UyK3OPYQ5klML7YyMDOmotiw2Ex4djMitpgSETPnCrhdOTnIV/2RKCsr7Sdpz93GRRQ6YHcrfCh4dNZTq50mgeOF25bG8kUOnzIg6Ormq0A26g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wiK8FgRjYEfeoFrPfQ8JO/xJkPVhWp7gdReWmxqxyfc=;
 b=Vc2RjOvlsZGYAbeX3BW2VNGQAqjtKd1pmEwZyJ2Wizw8DImJrGHeIUKDlpbzSXsB+TSB9PRbPHNFlMaGnpXVvO3IMVUG7gbsgm5Ve/xGAB19jgqHHJmpd0mzjSADRXmeoWQdq0/86SuyfkjsiD1QLltgRS3Gr+8rtsytNmt/PId2NkVv4ozMIY0AJE3r74g0XJxUpLASpsUESDn0mZHdM85hj2v63HtftVpaVekOqvvx50/5WL74s09LfBK/R3kn4ktCKb0Z2/XxxEHG1b31BiWTly48WFdz8a4RlYGPha5VFUo2wqbgsxCHm4qZZcIVVz+9Da819wVVNi2UVL3Uzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=honeywell.com; dmarc=pass action=none
 header.from=honeywell.com; dkim=pass header.d=honeywell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Honeywell.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wiK8FgRjYEfeoFrPfQ8JO/xJkPVhWp7gdReWmxqxyfc=;
 b=J9hKaVu8WhIZVw9qOmHLT/xqd+I4IOkEOZOnKRQAT/66slb0vfziSMQ5FlAuZ4nf0Khxb+ZxweuTyS5QhPSsMbI8Ubfx3mHR4iC/RmSfq3fxfDGgBh91nuuhkZQ3s+h0su7uOOElN/LKbRv9xp+8iu0yrEqH5N+DdVk4tlwLd5Y=
Received: from SN6PR07MB8032.namprd07.prod.outlook.com (2603:10b6:805:ec::11)
 by SN6PR07MB4687.namprd07.prod.outlook.com (2603:10b6:805:34::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.27; Thu, 25 Feb
 2021 03:37:21 +0000
Received: from SN6PR07MB8032.namprd07.prod.outlook.com
 ([fe80::2561:7e06:4959:55c3]) by SN6PR07MB8032.namprd07.prod.outlook.com
 ([fe80::2561:7e06:4959:55c3%5]) with mapi id 15.20.3890.019; Thu, 25 Feb 2021
 03:37:21 +0000
From: "D, Sharmila" <sharmila.d@honeywell.com>
To: Randy MacLeod <randy.macleod@windriver.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [External] Re: [yocto] Yocto- Apache2 build guide
Thread-Topic: [External] Re: [yocto] Yocto- Apache2 build guide
Thread-Index: AdcKlCzGQI8OQdP+Qlaagf86boimowASBCiAABKj+OA=
Date: Thu, 25 Feb 2021 03:37:21 +0000
Message-ID: 
 <SN6PR07MB80320BC75EFA419659E7ED46999E9@SN6PR07MB8032.namprd07.prod.outlook.com>
References: 
 <SN6PR07MB8032F6B8B8873A9FC93F0699999F9@SN6PR07MB8032.namprd07.prod.outlook.com>
 <ebbadb92-bccf-830f-5310-2d4b5ae8d781@windriver.com>
In-Reply-To: <ebbadb92-bccf-830f-5310-2d4b5ae8d781@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.0.60
dlp-reaction: no-action
authentication-results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=Honeywell.com;
x-originating-ip: [2401:4900:3367:9c5a:2978:2507:ce08:c5dc]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8b13594b-47e1-4b62-544a-08d8d93ea894
x-ms-traffictypediagnostic: SN6PR07MB4687:
x-microsoft-antispam-prvs: 
 <SN6PR07MB4687ADF14668881EA819EC05999E9@SN6PR07MB4687.namprd07.prod.outlook.com>
x-antispam: TRUE
x-recptdomain: NotTLSDomain
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 njpssh0wsU9lLYKFCmSHWNP+jIYJrtBiNR9yN7dxpNCjJZmhz65RmMIExpC3Rc7wL4lJ3AFpBfmuyMEaLGI9Ji3XIHUFUwRzZNTx5CgmZs3HZDa3rnX6sAcpENIbwDmkdVn5/L50WUUSBj6HhKGZ/1FmHKnNTAxYWNDRCQyLpUHMTa8jLUi+ghfdcq/hpdQ7duW7qkfFOc9m9iPj3IwCfcuFSW+TqwJ0ZxbnPEq+ts/ekPLdOXx5pn/YYa55WX5vHQ/RTEcDOEiQYcbxPWMeRBy5q1T7rNSwmup7iHax244CK0zB5H4hIMTPNly6NoOzqdPpbwZNtjxtytNrB6Y069EXbUSuUmX8JsR++kdExPezJ6gAim4hW8Xny3D5QyvCDcg5Mskuh6JJcsD3UQddIVe5fxHoFUU+sW1nhYtkGxHJZADaZ6bFLqGxiIAM9kcaCkjMR4s3BpV3uwn+qoB9UFFvnShU6aKfNTEMp2n24NEz/xGgxo4Uqn5h0Hmab01A9TH0havso+7WL+pgnsiSa/xcRes3uvV/xmfmGXDKQ21+vG48G74DHXuC3ZnpVKyqH+ywiFnSnAPKEF1GMS2N8L+DhVUVc1rtK24aHP0Y1rE=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR07MB8032.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(39860400002)(376002)(136003)(346002)(66476007)(86362001)(55016002)(53546011)(66446008)(2906002)(966005)(5660300002)(66556008)(110136005)(478600001)(66946007)(186003)(83380400001)(76116006)(7696005)(6506007)(9686003)(8676002)(8936002)(316002)(64756008)(52536014)(71200400001)(33656002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 =?us-ascii?Q?FsrCkLXlxmXGAgoc4S5Zsg2W+uTZog9lDcRQm6tmPXmJZVgA8ZF5MyZ4JDpn?=
 =?us-ascii?Q?oZX6Hw5w8HGMRaAO5o6piD3YB6wLggGDO9/Fpcsc3tABJMdTRusxy5XJdmgR?=
 =?us-ascii?Q?7R97wLXquCjXv06tv0EmFB0uwPbDA/PWlTcXehGWrjN6JtFl+TN1Ridr5UFr?=
 =?us-ascii?Q?iRn8FAVJ3Aq2kz73PMlqaaCiOOY8ijo+GDD4OIfdyd/BB3Ucv4Qx3uBpTUsx?=
 =?us-ascii?Q?ssuca38F//af7bVW5T9ZslaikEmHzPQsqwaP3vJYrbxtQu2yuS6TQGlhRvI7?=
 =?us-ascii?Q?6jlP95Mi2929P4VMvvVpTGlZMYGWdSVbPUVuAgxghv4dSMzyliOZjVk/5Xcc?=
 =?us-ascii?Q?VCwgAVOSuPZXFlqneGbpw2fqOqvQ6dmxYcbwluvDw+pitpV06cdiudxD6dCg?=
 =?us-ascii?Q?wk0W1PFysHQEW3Ix+WvI5yIOzB0bGvcldr+Cj94FS0EQ9dRMXhTDSB7Ug857?=
 =?us-ascii?Q?KdvvA+2CYUmFOtdLRHJ+5YC0Aao0huY4DhqQlgtjOG1/YvvjvHyIaG9iyPuE?=
 =?us-ascii?Q?i5xKPavZ5EGs5pm03pV7ef0fI8RJl5vBqc4mnKT6Yb+JUjaxU3MNHIvEpZki?=
 =?us-ascii?Q?/uSiLHn3UFNObz06LB/wZkcm6QaUVz77uLgdg9y8eS08vPkubnFzGw1HU3mw?=
 =?us-ascii?Q?WPJvRKsc8YPS8vKtQ2Or/40LGy5e2YRUiZlbNW1KJM0vgYHLb29+uEwh8Eko?=
 =?us-ascii?Q?uM/AfcnB6BU6yR4Z+I+mwl7zn6baVPVZqZ7v732/bQCiWEf22yjvxN/YYHel?=
 =?us-ascii?Q?mNBi8DFM8hL6V0VnBBk59Vreh6DX1h1t9HmVXQvRTz5h1E9PVpHL8/E1rOe8?=
 =?us-ascii?Q?egWd4ja14ygkgybluO2MouWAN8AYqxzDpRlvKPXuOSwtx67KJFrssm6rM/FB?=
 =?us-ascii?Q?7W12sGoMYVYE1kHyGAESzHQgFnF1FyDWYxB8JJ1RIL8uKfROTsnP0kC7Y65R?=
 =?us-ascii?Q?jjq7jxotaqkvKF2qnOxKrk2FR8ol9lrqFyyWoYyTJyBrY8EArcVdfr3yFlF2?=
 =?us-ascii?Q?YEa/TRWt5WK+bP6ETJQhHHPzOO6hBdZ+Wnz/Jlkb1pruI+5c3wb5YIwfDPnA?=
 =?us-ascii?Q?uibKy0BskNOK9n86nVYnDz/sDZ1xZKl9qjPDDOtA6jhu7V90dbrqTMMTPvte?=
 =?us-ascii?Q?venvExTas7pm6UDRxk2+6dzYQ2sZbLiE9nLSNY90QCrut3H2hOEJ91wAEg1D?=
 =?us-ascii?Q?t3Xz5EKqQXCiI2YJAYwB4iVo/y9MsYTzoY7n1QL8/j0r6ubLzUNNqg/7gHst?=
 =?us-ascii?Q?SyfLuHEQYBSqIHjJJO6Hmz1xFKaxQWSSMD2MhAhjT/3RFNh9XuYwiRhFDQPO?=
 =?us-ascii?Q?aH3B1h+SlpLjJjwfi3QoMFZSJmdsiTqNkLhBJoZ+0z8F0n4q7HyS3kNecrrS?=
 =?us-ascii?Q?7URzuNa5snEvJutM2Rr/Q2fwjsax?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: Honeywell.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR07MB8032.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b13594b-47e1-4b62-544a-08d8d93ea894
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2021 03:37:21.0649
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 96ece526-9c7d-48b0-8daf-8b93c90a5d18
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K5r3dWE65hDx2TTP7aHWf+inL6cDkgC86tucgTz8/WOz1EFxcTlZlK/uZio3nZT6bzIBgZfkOiqrzbdSOsydy5xb/eSjdY5nxRRTSmnrqQU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR07MB4687
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi MacLeod,

	Thanks for your e-mail.=20
	Yes, without apach2 I am able to build the core-image-minimal successfull=
y. The issue is only when I add =09apache2 in IMAGE_INSTALL.
	I am using TI processor SDK and I have setup the arago based yocto enviro=
nment based on TI user guide.
	 version is THUD.
	Do you need any further details about the setup?
	Please provide me the steps to include apache2 package into my final imag=
e.

Looking forward to hearing from you at your earliest convenience.

With Best Regards,
Sharmila D

-----Original Message-----
From: Randy MacLeod <randy.macleod@windriver.com>=20
Sent: Thursday, February 25, 2021 12:08 AM
To: D, Sharmila <Sharmila.D@Honeywell.com>; yocto@lists.yoctoproject.org
Subject: [External] Re: [yocto] Yocto- Apache2 build guide

On 2021-02-24 5:04 a.m., D, Sharmila via lists.yoctoproject.org wrote:
> Hi,
>=20
> I am trying to enable httpd package into my yocto build, steps I=20
> followed is as below
>=20
> 1. Added below layer in bblayer.conf file
>=20
> sources/meta-openembedded/meta-webserver
>=20
> 2. Added below line in local.conf file
>=20
> IMAGE_INSTALL_append =3D "apache2"
>=20
> The yocto build using bitbake core-image-minimal gives below error
>=20
> WARNING: core-image-minimal-1.0-r0 do_rootfs: busybox.postinst=20
> returned 1, marking as unpacked only, configuration required on target.
> ERROR: core-image-minimal-1.0-r0 do_rootfs: Postinstall scriptlets of=20
> ['busybox'] have failed. If the intention is to defer them to first=20
> boot, then please place them into pkg_postinst_ontarget_${PN} ().
> Deferring to first boot via 'exit 1' is no longer supported.
> Details of the failure are in
> /home/h440246/Projects/rfid/BSP/tisdk/build/arago-tmp-glibc/work/omapl13=
8_lcdk-oe-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.
> ERROR: core-image-minimal-1.0-r0 do_rootfs: Function failed: do_rootfs
> ERROR: Logfile of failure stored in:=20
> /home/h440246/Projects/rfid/BSP/tisdk/build/arago-tmp-glibc/work/omapl
> 138_lcdk-oe-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs
> .2937
> ERROR: Task
> (/home/h440246/Projects/rfid/BSP/tisdk/sources/oe-core/meta/recipes-co
> re/images/core-image-minimal.bb:do_rootfs)
> failed with exit code '1'
>=20
> Please provide the solution for the same

Hi Sharmila,

This doesn't appear to be related to adding apache.
Are you able to build core-image-minimal without adding apache2?

Can you provide detailed steps wrt what layers and HEAD commits for each l=
ayer you are using? Ideally, you'd reproduce on a supported release or on m=
aster. That's Dunfell/3.1 or later:
   https://wiki.yoctoproject.org/wiki/Releases

../Randy

>=20
> With Best Regards,
>=20
> Sharmila D
>=20
>=20
>=20
>=20
>=20


--
# Randy MacLeod
# Wind River Linux
