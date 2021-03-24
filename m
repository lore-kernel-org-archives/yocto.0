Received: from outbound-ip24a.ess.barracuda.com (outbound-ip24a.ess.barracuda.com [209.222.82.206])
 by mx.groups.io with SMTP id smtpd.web10.641.1616629491829232096
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 16:44:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@digi.com header.s=selector1 header.b=mGneZe81;
 spf=pass (domain: digi.com, ip: 209.222.82.206, mailfrom: lincoln.ramsay@digi.com)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2049.outbound.protection.outlook.com [104.47.66.49]) by mx-outbound12-2.us-east-2a.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Wed, 24 Mar 2021 23:44:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KDtEmp0vAj814AsBt88aAJGoKORIvlH+e1LmkGtMUViafD4w/iv0AaJdlbbCyMMsWQ+qboRF8dKqQLnlqpHlVip5ahqlY+YpBzTwioetLOriJBR+2NaOjawdfdnV+puvyYyMrqL2vBb7P8f6EQrn1Q2YZWILl/lVUsFnXxv8lEt5Ijx8ECT97LT7i9dAR0OVEPf57A4JLJwrw7kqma7ByNq02W+w4C2yfQ9QJ6HOYZ0zJg+fRTpnVQ2M8JdK5IA1g4LaOhdOLZQtBE9q6G4pGTtjSfdh1ks7l/mm66Ok+ijJONkIAAlw0ppjatCc7vR1IRI+a6zXpEsS2DA2UqIt7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h3XosZGgL08G0serFUzGgN05veQEguGS0SSyr78nAWU=;
 b=ImBoVRasNqUXUdx62ihU4GRxGoSiAoZI+FDQ4QYQ3hyiGjb91It7yrKgf/eDSmkaNnzzzqzqpl4PZVTw8tAe8y8em3SucZgW8j3sIrqqNtyWPJP4syBZui5ABsIbqLpc3zph4A6YjuqjcAeObmpf9B4T1K7V0Iiuy5UT+j63odELJgOVThQgsbw+8wxlZ4K/IO7ZorGxtYkfp/lOYB3cUrhXgOpSiCGDZPmYIfJf8DLd7ByDOEreW6zEGXqiOqyP1apevbgU4v+M/sewrN6yAd6uiDdIemQ92bauiQUMLj+INxqUypWQESCVDP64U4eVmPcgB6uDueeHA6t2ndC7Lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=digi.com; dmarc=pass action=none header.from=digi.com;
 dkim=pass header.d=digi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=digi.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h3XosZGgL08G0serFUzGgN05veQEguGS0SSyr78nAWU=;
 b=mGneZe812Q0Oo7l+JVd4EslIORc1MXi/Mgcn+PF8E12YjbMQkO7WyDSqbEV+4sl6KzbDmXKOcJeHtaLc4fhFkUaVrEV/xnUvAhjYOcHaXNSa7xjcsGv+tqddMwiBJ16sP6Bw68sChcoQmT4QZ/LkQI2yuo5DA5+PX07Sa/S9WT8=
Received: from BN8PR10MB3698.namprd10.prod.outlook.com (2603:10b6:408:ae::22)
 by BN6PR10MB1602.namprd10.prod.outlook.com (2603:10b6:405:4::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.24; Wed, 24 Mar
 2021 23:44:48 +0000
Received: from BN8PR10MB3698.namprd10.prod.outlook.com
 ([fe80::e8e5:3b9:fd26:51e]) by BN8PR10MB3698.namprd10.prod.outlook.com
 ([fe80::e8e5:3b9:fd26:51e%6]) with mapi id 15.20.3955.027; Wed, 24 Mar 2021
 23:44:48 +0000
From: "Ramsay, Lincoln" <Lincoln.Ramsay@digi.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Can't build gatesgarth after PSEUDO_IGNORE_PATHS change in poky
Thread-Topic: Can't build gatesgarth after PSEUDO_IGNORE_PATHS change in poky
Thread-Index: AQHXIQXP5IW0bSGPzEaf8WQnUjE1pg==
Date: Wed, 24 Mar 2021 23:44:47 +0000
Message-ID: 
 <BN8PR10MB369860EE1F3B6F3841A40DC0E8639@BN8PR10MB3698.namprd10.prod.outlook.com>
Accept-Language: en-AU, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=digi.com;
x-originating-ip: [158.140.192.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 404ef3f1-4910-498c-00a9-08d8ef1ecf65
x-ms-traffictypediagnostic: BN6PR10MB1602:
x-microsoft-antispam-prvs: 
 <BN6PR10MB160239722EADA5A13C700566E8639@BN6PR10MB1602.namprd10.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 VOZNPC6IKxGHDJ5WAhbt4YhtaWbm4WEZXX8CMiHfGDMpnCoG+MkiMZPClPRHoBPt9tMaA+dX4pD/D88kx++0MOe8cKadecwV5EZd5MIb6+q45RWiFoorsAcMu40YxpUgMJM6kPe43cUATi4ZFf7ntxM2aPi/urgJka7+7b7Yq4qJUNoml1S6fHHw/mJmiSJ/Tq6j3P8YtmcqILQkbsQxBjy1X/O+01ZE/qQLsNAEN+OapJ7hJBFV+afu/BrbK1rJnMqGUXsuQoWSpCqeHTuhsLEIjDj6P0EA7Y1cZ+T/cIifaC02ilnLvKc4P6c1eAV5t8C/kfxs5M6Y3dWs5sUZWuzrAD22rgNw47XV4mX/MOsGBwT5dJogjtF0znYqx9uQNCvOveEdG4kOKGOrIuhEi3hOcR6+7NPp7euCAf/+Il5FC8N+0xaYnBDC0qkCNcpNE6HJ5gXGQQuXi8CoTWMQVCqEVGcNjZkZl0TmriYeFrNbHVyuC2QZGa7hxR0X8K+Hj9pfNsCkIepwcH3rYOA/qCZkiQKykAH1PHhW7RYvEXAwpzkNzbWzAMMMIwWbkMqQeJPSqqoOZzVlXmO75JR2e4eaiChgVxqtpuuVIlJAxsqSSrxOZNgyPYu+NS75AhDqZVajn+VC36gITKukIUTAm+IKkFTL9wbpac1qqTIfQfs=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR10MB3698.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(346002)(366004)(39850400004)(136003)(396003)(91956017)(52536014)(186003)(5660300002)(66476007)(66946007)(38100700001)(66446008)(76116006)(26005)(66556008)(8936002)(8676002)(83380400001)(64756008)(33656002)(2906002)(478600001)(7696005)(71200400001)(6916009)(6506007)(55016002)(9686003)(316002)(86362001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 =?iso-8859-1?Q?ouH+/ZDghPklFK6I8KCoOry/wruP28IFq9AkKcqV0m7QjPCwV6xbbIeEOp?=
 =?iso-8859-1?Q?i3nMEMtTpcr7/j5f98lAI0UkFChBt+uwOHyr/klVc5pJZqVTd/aceZWKH3?=
 =?iso-8859-1?Q?WYEvWOFMQOTqn0sKhsQClTp8bJ0zh+5xGX628IUVJqloOcimJr+7Ym+wmp?=
 =?iso-8859-1?Q?Xzm5XUhgzSgkLWfzlZSF50Fo+O/Zg/vw6DGgvEt8j1TSV9BJWap0d3wdmc?=
 =?iso-8859-1?Q?Bxv1VSm3C6Y5SG6B+Pj2e257Y/AX/FIHrW1wzangwbI6frElLhfLlFdSfi?=
 =?iso-8859-1?Q?uYio4iVqbDmrrN6soGF9u02WkZLZyIApjP6mbMHbqrrpKR9F/6baodcmuG?=
 =?iso-8859-1?Q?aFoSxAzSlnpwIwAUM4Hyo7wja81u9iXTRWfkm70UDIQljs9I1hPBo68Bba?=
 =?iso-8859-1?Q?IicVtXsh7wZeauxWH7XSTiwJtx5dluCuwakfrywH7V3defJb22b2E2Rhoo?=
 =?iso-8859-1?Q?IT2DEXv75yjp5hWyWiRuu6SYwOm/UQIXJtu/PAqBfSK8/OVS0BN0CYXx54?=
 =?iso-8859-1?Q?Bd38wyYLLfOdsAXwx9vZAuWbr55qJQMZsv/juIA2MF8GpPcqOOgVNuxLoB?=
 =?iso-8859-1?Q?SgNEuvLO0ID6gJBvOLWzSZeNlZPmiiWzL8IjFhBG+RSUnuQ6mYwWeOWoiW?=
 =?iso-8859-1?Q?Rn5oTtwIjEscTL0UctRjgGtMXPz5KEwfN0FqNkVenVLZSFprZc/yJhz9e4?=
 =?iso-8859-1?Q?SrCz2YWrIZ7S4OX1BUY3lQqfl44djd0LxfpQIq0yVZdI05WvlPXd4h4pV/?=
 =?iso-8859-1?Q?UJEf034kLYuoUuEOccUvkSPlWLqs27mQmh6nvU44BAYqD1iztf3OdCE5v7?=
 =?iso-8859-1?Q?qYNUQfCEPSRSZbBLNx3AClPpzz0k2Vpc1lcUheKSv4opHs67PMdlhBxOkJ?=
 =?iso-8859-1?Q?qntWF6wZh8ayodVHM1RiObnLd9rxWUUSS/U5YXKH/bcjoMrRIWwPd6n10b?=
 =?iso-8859-1?Q?W68TD+3OUiwHntfDjDwCRv58fwyftdBNPv968j/yKY3hakwA8T6T2D/ZsV?=
 =?iso-8859-1?Q?wVGt1VN4v5ADLMFZTkPROCmKf/cQ7cY0mzPkDBvhhZKI0gXYoTZ8rQQRWO?=
 =?iso-8859-1?Q?8qH7O7+Q9TNFrCqKwziP1pRS5GL3T4L0EUkb1PXa1zH1GDZgcd2oYeVrp5?=
 =?iso-8859-1?Q?kB5L0DWm13I/C13bq2TXbPCYD/25VkgfmQpesMuTqHZyc3UT+emCGRW64x?=
 =?iso-8859-1?Q?t/dEdmmPvhkBNcer9pXgcVlBBge/k3QGR9hpPPqSleep33JlA9VwVqt6sg?=
 =?iso-8859-1?Q?Isalknh3zHCAAWaFaLXGWkH01+7+0JvdC2qIpGdPYhdWxOBmODShao1Ph3?=
 =?iso-8859-1?Q?pvlcxWv3mYRE8kYyWY/IiFN9iWAOFhMaxWmYyHPrHNwj+8mVJ3CPTWfQcZ?=
 =?iso-8859-1?Q?Vr9t8fgLKn?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: digi.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN8PR10MB3698.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 404ef3f1-4910-498c-00a9-08d8ef1ecf65
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2021 23:44:47.8816
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: abb4cdb7-1b7e-483e-a143-7ebfd1184b9e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PFQ3xeZkfSIVq1RLNMWeemt7kak4jVRWDlbxukRjmnNs8f8a/vEH2FjI2sHFL99zSplzRDYgum3VnltmhNI8aw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR10MB1602
X-BESS-ID: 1616629490-103074-5447-80755-1
X-BESS-VER: 2019.1_20210323.1605
X-BESS-Apparent-Source-IP: 104.47.66.49
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.231067 [from 
	cloudscan21-2.us-east-2b.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS112744 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Content-Language: en-AU
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,=0A=
=0A=
The patch to add=A0intercept_scripts to=A0PSEUDO_IGNORE_PATHS breaks all my=
 builds. This is commit=A0edc8051bc09648433ec16a5b6a8ae0b87f50d9d6 on the g=
atesgarth branch.=0A=
=0A=
I get a large number of warnings:=0A=
=0A=
WARNING: og-image-consoleserver-1.0-r0 do_rootfs: copyfile: failed to chown=
/chmod /home/build/work/build/ogpuma/tmp-glibc/work/ogpuma-og-linux/og-imag=
e-consoleserver/1.0-r0/intercept_scripts-5ec94d6f75025284385558de3938c138be=
a2e7e9d09944e9dd41e4719d513fc8/update_udev_hwdb ([Errno 1] Operation not pe=
rmitted: '/home/build/work/build/ogpuma/tmp-glibc/work/ogpuma-og-linux/og-i=
mage-consoleserver/1.0-r0/intercept_scripts-5ec94d6f75025284385558de3938c13=
8bea2e7e9d09944e9dd41e4719d513fc8/update_udev_hwdb')=0A=
=0A=
More significantly, the copy of intercept_scripts are not executable so I g=
et an error.=0A=
=0A=
ERROR: og-image-consoleserver-1.0-r0 do_rootfs: Postinstall scriptlets of [=
'libglib-2.0-0', 'udev-hwdb'] have failed. If the intention is to defer the=
m to first boot, then please place them into pkg_postinst_ontarget_${PN} ()=
.=0A=
Deferring to first boot via 'exit 1' is no longer supported.=0A=
=0A=
The actual failing command looks like this:=0A=
=0A=
+ /home/build/work/build/ogpuma/tmp-glibc/work/ogpuma-og-linux/og-image-con=
soleserver/1.0-r0/intercept_scripts-5ec94d6f75025284385558de3938c138bea2e7e=
9d09944e9dd41e4719d513fc8/postinst_intercept update_udev_hwdb udev-hwdb mlp=
refix=3D binprefix=3D rootlibexecdir=3D/lib PREFERRED_PROVIDER_udev=3Dsyste=
md=0A=
/var/tmp/rpm-tmp.k3LlRZ: line 5: /home/build/work/build/ogpuma/tmp-glibc/wo=
rk/ogpuma-og-linux/og-image-consoleserver/1.0-r0/intercept_scripts-5ec94d6f=
75025284385558de3938c138bea2e7e9d09944e9dd41e4719d513fc8/postinst_intercept=
: Permission denied=0A=
=0A=
If I update PSEUDO_IGNORE_PATHS in image.bbclass, I can once again build.=
=0A=
=0A=
-PSEUDO_IGNORE_PATHS .=3D ",${WORKDIR}/intercept_scripts,${WORKDIR}/oe-root=
fs-repo"=0A=
+PSEUDO_IGNORE_PATHS .=3D ",${WORKDIR}/oe-rootfs-repo"=0A=
=0A=
=0A=
I am not sure if it's possible to work around this using a local.conf mod..=
. I tried=0A=
=0A=
PSEUDO_IGNORE_PATHS_remove =3D ",${WORKDIR}/intercept_scripts"=0A=
=0A=
but it didn't work, so the only options I have right now are changing poky =
(ew) or not updating past this commit.=0A=
=0A=
=0A=
I build under Docker (with an Ubuntu 18.04 base), in case that is relevant.=
=0A=
=0A=
Lincoln=0A=
